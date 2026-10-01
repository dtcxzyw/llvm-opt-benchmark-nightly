Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRNtNtCskXtk6F4WjxZ_4just7binding7BindingENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCNvMNtBV_8justfileNtB2l_8Justfile3runs1_0EBV_:bb.a
.loopexit:                                        ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs1_0B6_.exit, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %..i.i, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs1_0B6_.exit ]
  ret i64 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq17serialize_elementINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB3B_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !38, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread, label %bb.b, !prof !101

bb.b:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.e)
  br label %bb.c

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit
  store i8 2, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28946)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !28946, !noalias !28947, !nonnull !28, !noundef !28
  %i.h = tail call fastcc noundef align 8 ptr @_RINvXs0_NtCskXtk6F4WjxZ_4just10expressionNtB6_10ExpressionNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !28946, !inline_history !28945
  br label %bb.c

bb.c:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread, %bb.b
  %.sroa.0.1 = phi ptr [ %i.f, %bb.b ], [ %i.h, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread ]
  ret ptr %.sroa.0.1
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq17serialize_elementINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEEB4d_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !38, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread, label %bb.b, !prof !101

bb.b:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.e)
  br label %bb.d

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit
  store i8 2, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28956)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !28956, !noalias !28957, !align !35, !noundef !28 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit

bb.c:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread
  %i.h = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef 4), !noalias !28956 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread14, !prof !29

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread14: ; preds = %bb.c
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.h), !noalias !28956
  br label %bb.d

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread
  %i.j = tail call fastcc noundef align 8 ptr @_RINvXs0_NtCskXtk6F4WjxZ_4just10expressionNtB6_10ExpressionNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !28958, !inline_history !28955 ; 2 uses
  %.not8 = icmp eq ptr %i.j, null
  br i1 %.not8, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread, label %bb.d

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread: ; preds = %bb.c, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread14, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread, %bb.b
  %.sroa.0.1 = phi ptr [ %i.f, %bb.b ], [ null, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread ], [ %i.j, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit ], [ %i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1Z_.exit.thread14 ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs2_NtCskXtk6F4WjxZ_4just4nameNtB6_4NameNtNtCsfxuqquxiU4q_10serde_core3ser9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28967)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !28967, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !28967, !noundef !28 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !28967, !noundef !28 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !28967, !noundef !28 ; 2 uses
  %i.i = add i64 %i.h, %i.f                       ; 5 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  %i.k = icmp ugt i64 %i.i, %i.d
  %or.cond.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, %i.d
  br i1 %i.l, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = icmp eq i64 %i.i, %i.d
  br i1 %i.n, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !28968, !noalias !28967, !noundef !28
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !28968, !noalias !28967, !noundef !28
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.e, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75, !noalias !28967
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit: ; preds = %bb.b, %bb.d, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i
  %i.u = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !28969 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i, label %bb.f, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i

bb.f:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.w = tail call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.h) ; 2 uses
  %.not5.i.i = icmp eq ptr %i.w, null
  br i1 %.not5.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.f
  %i.x = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1) ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just.exit, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i, %bb.f, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  %.sroa.0.0.i5.i = phi ptr [ %i.x, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i ], [ %i.w, %bb.f ], [ %i.u, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit ]
  %i.y = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i)
  br label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just.exit

_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i
  %.sroa.0.0.i = phi ptr [ %i.y, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i ], [ null, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCsfxuqquxiU4q_10serde_core2deINtNtCsj6eKBz9Db1c_4core6marker11PhantomDataNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathENtB6_15DeserializeSeed11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB2K_4read7StrReadEEB1n_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28984)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !28985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !28985
  call fastcc void @_RINvXs5_NtCshTCYgcDtIbU_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !28984
  %i.e = load i64, ptr %i.c, align 8, !range !37, !noalias !28985, !noundef !28 ; 6 uses
  %i.f = icmp eq i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !noalias !28985 ; 6 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28985
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.i, align 8, !alias.scope !28984, !noalias !28986
  store i64 -1, ptr %0, align 8, !alias.scope !28984, !noalias !28986
  br label %_RINvXs0_NtCskXtk6F4WjxZ_4just10modulepathNtB6_10ModulepathNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1X_4read7StrReadEEB8_.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.59.0.copyload.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !noalias !28985 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !28985
  store i64 %i.e, ptr %i.d, align 8, !noalias !28985
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !28985
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.59.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !28985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !28985
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !28987
  %.not.i.i.i = icmp samesign ult i64 %.sroa.59.0.copyload.i, 2
  br i1 %.not.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.h, i64 %.sroa.59.0.copyload.i
  %i.k = getelementptr i8, ptr %i.j, i64 -2
  %i.l = load i16, ptr %i.k, align 1
  %i.m = icmp ne i16 14906, %i.l
  %i.n = zext i1 %i.m to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.n
  %i.o = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  %i.p = add nsw i64 %.sroa.59.0.copyload.i, -2
  %spec.select.i.i = select i1 %i.o, i64 %i.p, i64 %.sroa.59.0.copyload.i
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.c
  %i.q = phi i64 [ %.sroa.59.0.copyload.i, %bb.c ], [ %spec.select.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ]
  store ptr %i.h, ptr %i.a, align 8, !noalias !28987
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.q, ptr %i.r, align 8, !noalias !28987
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
          to label %bb.f unwind label %bb.d, !noalias !28984

bb.d:                                             ; preds = %bb.g, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.e, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28988
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i

bb.f:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !28987
  %i.u = load i64, ptr %i.b, align 8, !range !37, !noalias !28985, !noundef !28
  %i.v = icmp eq i64 %i.u, -1
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = invoke fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtCskXtk6F4WjxZ_4just10modulepathNtB8_10ModulepathNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1Z_4read7StrReadEE0Ba_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.k unwind label %bb.d, !noalias !28984

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !28986
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !28985
  %i.x = icmp eq i64 %i.e, 0
  br i1 %i.x, label %_RINvXs0_NtCskXtk6F4WjxZ_4just10modulepathNtB6_10ModulepathNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1X_4read7StrReadEEB8_.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !28989
  br label %_RINvXs0_NtCskXtk6F4WjxZ_4just10modulepathNtB6_10ModulepathNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1X_4read7StrReadEEB8_.exit

bb.k:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.y, align 8, !alias.scope !28984, !noalias !28986
  store i64 -1, ptr %0, align 8, !alias.scope !28984, !noalias !28986
  br label %bb.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.s

_RINvXs0_NtCskXtk6F4WjxZ_4just10modulepathNtB6_10ModulepathNtNtCsfxuqquxiU4q_10serde_core2de11Deserialize11deserializeQINtNtCshTCYgcDtIbU_10serde_json2de12DeserializerNtNtB1X_4read7StrReadEEB8_.exit: ; preds = %bb.b, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !28985
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorcE9from_iterNtNtBU_4char13EscapeDefaultECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29014)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29015)
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.4.0.copyload3.i = load i8, ptr %.sroa.4.0..sroa_idx2.i, align 4, !alias.scope !29016, !noalias !29014 ; 4 uses
  %.sroa.5.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %1, i64 13
  %.sroa.5.0.copyload5.i = load i8, ptr %.sroa.5.0..sroa_idx4.i, align 1, !alias.scope !29016, !noalias !29014 ; 4 uses
  %.not = icmp eq i8 %.sroa.5.0.copyload5.i, %.sroa.4.0.copyload3.i
  br i1 %.not, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i, label %bb.b, !prof !29

bb.b:                                             ; preds = %bb.a
  %i.b = sub i8 %.sroa.5.0.copyload5.i, %.sroa.4.0.copyload3.i
  %i.c = zext i8 %i.b to i64
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %i.c, i64 noundef 1, i64 noundef 1)
          to label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i unwind label %.loopexit.split-lp

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29017)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29020)
  %i.d = icmp ult i8 %.sroa.4.0.copyload3.i, %.sroa.5.0.copyload5.i
  br i1 %i.d, label %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendNtNtBU_4char13EscapeDefaultECskXtk6F4WjxZ_4just.exit

_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i
  %i.e = zext i8 %.sroa.4.0.copyload3.i to i64
  %wide.trip.count.i.i.i = zext i8 %.sroa.5.0.copyload5.i to i64
  %.pre.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !29021, !noalias !29022
  %.pre7.i.i.i = load i64, ptr %i.a, align 8, !range !43, !alias.scope !29023, !noalias !29022
  br label %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.i.i.i

_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i, %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i
  %i.f = phi i64 [ %.pre7.i.i.i, %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i ], [ %i.m, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i ] ; 3 uses
  %i.g = phi i64 [ %.pre.i.i.i, %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i ], [ %i.p, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ %i.e, %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i ] ; 3 uses
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.h = icmp samesign ult i64 %indvars.iv.i.i.i, 10
  tail call void @llvm.assume(i1 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i.i.i
  %i.j = load i8, ptr %i.i, align 1, !range !113, !alias.scope !29024, !noalias !29025, !noundef !28
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29026)
  %i.k = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.f, %i.g
  br i1 %i.l, label %bb.c, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

bb.c:                                             ; preds = %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.i.i.i
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.f, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %.noexc3 unwind label %.loopexit

.noexc3:                                          ; preds = %bb.c
  %.pre6.i.i.i = load i64, ptr %i.a, align 8, !range !43, !alias.scope !29023, !noalias !29022
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %.noexc3, %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.i.i.i
  %i.m = phi i64 [ %i.f, %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.i.i.i ], [ %.pre6.i.i.i, %.noexc3 ]
  %i.n = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !29021, !noalias !29022, !nonnull !28, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.g
  store i8 %i.j, ptr %i.o, align 1, !noalias !29027
  %i.p = add nuw i64 %i.g, 1                      ; 2 uses
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !29021, !noalias !29022
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendNtNtBU_4char13EscapeDefaultECskXtk6F4WjxZ_4just.exit, label %_RNvXs4_NtCsj6eKBz9Db1c_4core4charNtB5_13EscapeDefaultNtNtNtNtB7_4iter6traits8iterator8Iterator4next.exit.i.i.i

.loopexit:                                        ; preds = %bb.c
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29029)
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !29030 ; 2 uses
  %i.q = icmp eq i64 %.val.i.i, 0
  br i1 %i.q, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !29030, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !29030
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit

_RINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB6_6StringINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendcE6extendNtNtBU_4char13EscapeDefaultECskXtk6F4WjxZ_4just.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCs4wP2HXfJTCR_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendNtNtBe_4char13EscapeDefaultE0E0CskXtk6F4WjxZ_4just.exit.i.i.i, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCshTCYgcDtIbU_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsfxuqquxiU4q_10serde_core2de12Deserializer18deserialize_stringNtNtB1j_5impls13StringVisitorECskXtk6F4WjxZ_4just(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29061)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29062)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !29063, !noalias !29064, !noundef !28 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !29065, !noalias !29066 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !29063, !noalias !29064, !nonnull !28, !noundef !28
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29067)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29068)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !29069, !noundef !28
  switch i8 %i.l, label %bb.o [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 34, label %bb.d
  ], !prof !77

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables:bb.a
.lr.ph50:                                         ; preds = %bb.g, %.lr.ph50
  %.sroa.020.049 = phi ptr [ %i.bo, %.lr.ph50 ], [ %i.w, %bb.g ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.020.049, i64 232 ; 2 uses
  tail call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables(ptr noalias nofree noundef align 8 dereferenceable(128) %.sroa.020.049, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.bp = icmp eq ptr %i.bo, %i.z
  br i1 %i.bp, label %.loopexit, label %.lr.ph50

bb.r:                                             ; preds = %bb.i
  tail call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !28, !noundef !28
  br label %tailrecurse.backedge

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.sroa.023.048 = phi ptr [ %i.bs, %.lr.ph ], [ %i.ag, %bb.j ] ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.023.048, i64 128 ; 2 uses
  tail call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables(ptr noalias nofree noundef align 8 dereferenceable(128) %.sroa.023.048, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
  %i.bt = icmp eq ptr %i.bs, %i.aj
  br i1 %i.bt, label %.loopexit, label %.lr.ph

bb.t:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34439)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !34440, !noalias !34441, !noundef !28
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load i64, ptr %i.bx, align 8, !alias.scope !34440, !noalias !34441, !noundef !28
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val5.i.i = load i64, ptr %i.by, align 8, !alias.scope !34440, !noalias !34441, !noundef !28
  %i.bz = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECskXtk6F4WjxZ_4just(i64 %.val.i.i, i64 %.val5.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.au), !noalias !34440 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34443)
  %i.ca = lshr i64 %i.bz, 57
  %i.cb = trunc nuw nsw i64 %i.ca to i8
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !alias.scope !34444, !noalias !34445, !noundef !28 ; 2 uses
  %i.ce = load ptr, ptr %1, align 8, !alias.scope !34444, !noalias !34445, !nonnull !28, !noundef !28 ; 2 uses
  %i.cf = insertelement <16 x i8> poison, i8 %i.cb, i64 0
  %i.cg = shufflevector <16 x i8> %i.cf, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.u ], [ %i.cz, %bb.w ]
  %.pn.i.i.i = phi i64 [ %i.bz, %bb.u ], [ %i.da, %bb.w ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.cd ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !34446 ; 2 uses
  %i.ci = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, %i.cg
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.i.not31.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.i.not31.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i
  %.sroa.06.0.i32.i.i.i = phi i16 [ %i.cy, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i ], [ %i.cj, %bb.v ] ; 3 uses
  %i.ck = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i.i, i1 true)
  %i.cl = zext nneg i16 %i.ck to i64
  %i.cm = add i64 %.sroa.01.0.i.i.i.i, %i.cl
  %i.cn = and i64 %i.cm, %i.cd
  %i.co = sub nsw i64 0, %i.cn
  %i.cp = getelementptr inbounds [24 x i8], ptr %i.ce, i64 %i.co ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 -16
  %.val4.i.i.i.i = load i64, ptr %i.cq, align 8, !noalias !34447, !noundef !28
  %i.cr = icmp eq i64 %i.au, %.val4.i.i.i.i
  br i1 %i.cr, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i, !prof !32

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cs = getelementptr inbounds i8, ptr %i.cp, i64 -24
  %.val3.i.i.i.i = load ptr, ptr %i.cs, align 8, !noalias !34447, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %.val3.i.i.i.i, i64 %i.au), !alias.scope !34448, !noalias !34449
  %i.ct = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ct, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i, !prof !33

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i, %bb.v
  %i.cu = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i, splat (i8 -1)
  %i.cv = bitcast <16 x i1> %i.cu to i16
  %i.cw = icmp eq i16 %i.cv, 0
  br i1 %i.cw, label %bb.w, label %.thread, !prof !44

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, %.lr.ph.i.i.i
  %i.cx = add i16 %.sroa.06.0.i32.i.i.i, -1
  %i.cy = and i16 %i.cx, %.sroa.06.0.i32.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.cy, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.w:                                             ; preds = %._crit_edge.i.i.i
  %i.cz = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.da = add i64 %.sroa.01.0.i.i.i.i, %i.cz
  br label %bb.v

.thread:                                          ; preds = %._crit_edge.i.i.i, %bb.t, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34450)
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !34450, !noalias !34451, !noundef !28
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.val.i.i.i = load i64, ptr %i.de, align 8, !alias.scope !34450, !noalias !34451, !noundef !28
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val5.i.i.i = load i64, ptr %i.df, align 8, !alias.scope !34450, !noalias !34451, !noundef !28
  %i.dg = tail call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneReECskXtk6F4WjxZ_4just(i64 %.val.i.i.i, i64 %.val5.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bh, i64 noundef %i.au), !noalias !34452 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34454)
  %i.dh = lshr i64 %i.dg, 57
  %i.di = trunc nuw nsw i64 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !34455, !noalias !34456, !noundef !28 ; 2 uses
  %i.dl = load ptr, ptr %2, align 8, !alias.scope !34455, !noalias !34456, !nonnull !28, !noundef !28 ; 2 uses
  %i.dm = insertelement <16 x i8> poison, i8 %i.di, i64 0
  %i.dn = shufflevector <16 x i8> %i.dm, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.x ], [ %i.eg, %bb.z ]
  %.pn.i.i.i.i = phi i64 [ %i.dg, %bb.x ], [ %i.eh, %bb.z ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dk ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i25.i.i.i.i = load <16 x i8>, ptr %i.do, align 1, !noalias !34457 ; 2 uses
  %i.dp = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, %i.dn
  %i.dq = bitcast <16 x i1> %i.dp to i16          ; 2 uses
  %.not.i.not31.i.i.i.i = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not31.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.y, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i
  %.sroa.06.0.i32.i.i.i.i = phi i16 [ %i.ef, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i ], [ %i.dq, %bb.y ] ; 3 uses
  %i.dr = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i32.i.i.i.i, i1 true)
  %i.ds = zext nneg i16 %i.dr to i64
  %i.dt = add i64 %.sroa.01.0.i.i.i.i.i, %i.ds
  %i.du = and i64 %i.dt, %i.dk
  %i.dv = sub nsw i64 0, %i.du
  %i.dw = getelementptr inbounds [24 x i8], ptr %i.dl, i64 %i.dv ; 3 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 -16
  %.val4.i.i.i.i.i = load i64, ptr %i.dx, align 8, !noalias !34458, !noundef !28
  %i.dy = icmp eq i64 %i.au, %.val4.i.i.i.i.i
  br i1 %i.dy, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, !prof !32

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dw, i64 -24
  %.val3.i.i.i.i.i = load ptr, ptr %i.dz, align 8, !noalias !34458, !nonnull !28, !noundef !28
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.bh, ptr nonnull readonly %.val3.i.i.i.i.i, i64 %i.au), !alias.scope !34459, !noalias !34460
  %i.ea = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ea, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, !prof !33

._crit_edge.i.i.i.i:                              ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i, %bb.y
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i25.i.i.i.i, splat (i8 -1)
  %i.ec = bitcast <16 x i1> %i.eb to i16
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %bb.z, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit, !prof !44

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.thread.i.i.i.i: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ee = add i16 %.sroa.06.0.i32.i.i.i.i, -1
  %i.ef = and i16 %i.ee, %.sroa.06.0.i32.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ef, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.z:                                             ; preds = %._crit_edge.i.i.i.i
  %i.eg = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.eh = add i64 %.sroa.01.0.i.i.i.i.i, %i.eg
  br label %bb.y

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split: ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i
  %.lcssa81.sink = phi ptr [ %i.dw, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i.i ], [ %i.cp, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTReNtNtCskXtk6F4WjxZ_4just6number6NumberEE4findNCINvNtBa_3map14equivalent_keyeBS_BU_E0E0BY_.exit.i.i.i ]
  %i.ei = getelementptr inbounds i8, ptr %.lcssa81.sink, i64 -8
  %i.ej = load i32, ptr %i.ei, align 4, !noalias !28, !noundef !28
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit: ; preds = %._crit_edge.i.i.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split, %.thread
  %.pn4.i = phi i32 [ 0, %.thread ], [ 1, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split ], [ 0, %._crit_edge.i.i.i.i ]
  %.pn2.i = phi i32 [ undef, %.thread ], [ %i.ej, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCskXtk6F4WjxZ_4just6number6NumberE7or_elseNCNvMNtBM_10expressionNtB1x_10Expression17resolve_variabless_0EBM_.exit.sink.split ], [ undef, %._crit_edge.i.i.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.tr, i64 8
  store i32 %.pn4.i, ptr %i.ek, align 8
  %i.el = getelementptr inbounds nuw i8, ptr %.tr, i64 12
  store i32 %.pn2.i, ptr %i.el, align 4
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.not.i = icmp samesign ult i64 %2, 2
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 %2
  %i.c = getelementptr i8, ptr %i.b, i64 -2
  %i.d = load i16, ptr %i.c, align 1
  %i.e = icmp ne i16 14906, %i.d
  %i.f = zext i1 %i.e to i32
  %bcmp.i.i.fr = freeze i32 %i.f
  %i.g = icmp eq i32 %bcmp.i.i.fr, 0
  %i.h = add nsw i64 %2, -2
  %spec.select = select i1 %i.g, i64 %i.h, i64 %2
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.thread: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, %bb.a
  %i.i = phi i64 [ %2, %bb.a ], [ %spec.select, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit ]
  store ptr %1, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.i, ptr %i.j, align 8
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath4join(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !28 ; 6 uses
  %.not.i = icmp slt i64 %3, 0
  br i1 %.not.i, label %bb.d, label %bb.b, !prof !42

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %3, 0                        ; 3 uses
  br i1 %i.g, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34503
  %i.h = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34503 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.a, %bb.c
  %.sroa.416.0.ph = phi i64 [ 1, %bb.c ], [ 0, %bb.a ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.416.0.ph, i64 %3) #71
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.j
  %i.j = phi ptr [ %i.h, %bb.j ], [ inttoptr (i64 1 to ptr), %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !34504
  %.sink22.i.i = add nuw nsw i64 %i.f, 1          ; 2 uses
  %i.k = mul i64 %.sink22.i.i, 24                 ; 2 uses
  %or.cond.i.i.i = icmp ugt i64 %i.f, 384307168202282324
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.e, !prof !117

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !34505
  %i.l = tail call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.k, i64 noundef range(i64 1, 9) 8) #70, !noalias !34505 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i

bb.f:                                             ; preds = %bb.e, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.e ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.k) #71
          to label %.noexc.i unwind label %bb.h, !noalias !34504

.noexc.i:                                         ; preds = %bb.f
  unreachable

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.e
  store i64 %.sink22.i.i, ptr %i.b, align 8, !noalias !34504
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.l, ptr %i.n, align 8, !noalias !34504
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34506)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34507)
  %i.p = icmp eq i64 %i.f, 0
  br i1 %i.p, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader

.preheader:                                       ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i, %.noexc.i.i.i.i.i
  %.val6.i.i.i.i.i = phi i64 [ %i.s, %.noexc.i.i.i.i.i ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.val6.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !34508
  invoke void @_RNvXs4_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.q)
          to label %.noexc.i.i.i.i.i unwind label %bb.g, !noalias !34509

.noexc.i.i.i.i.i:                                 ; preds = %.preheader
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %.val6.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !34510
  %i.s = add nuw nsw i64 %.val6.i.i.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !34508
  %i.t = icmp eq i64 %i.s, %i.f
  br i1 %i.t, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit, label %.preheader

bb.g:                                             ; preds = %.preheader
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.val6.i.i.i.i.i, ptr %i.o, align 8, !alias.scope !34511, !noalias !34512
  br i1 %i.g, label %.body.i, label %.body.sink.split.i.i.i

.body.sink.split.i.i.i:                           ; preds = %bb.g
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34513
  br label %.body.i

.body.i:                                          ; preds = %.body.sink.split.i.i.i, %bb.g
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtBG_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #72, !noalias !34504
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.i, %bb.h, %.body.i
  %.pn7.i = phi { ptr, i32 } [ %i.u, %.body.i ], [ %i.v, %bb.h ], [ %i.v, %bb.i ]
  resume { ptr, i32 } %.pn7.i

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %3, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !34514
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_6cloned6ClonedINtNtNtB4_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtBI_7sources4once4OnceB1Z_EEECskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain5ChainINtNtB1Y_6cloned6ClonedINtNtNtB22_5slice4iter4IterB13_EEINtNtNtB20_7sources4once4OnceB13_EEE9from_iterCskXtk6F4WjxZ_4just.exit: ; preds = %.noexc.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %i.f ; 3 uses
  store i64 %3, ptr %i.w, align 8, !noalias !34515
  %.sroa.417.0..sroa_idx.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.j, ptr %.sroa.417.0..sroa_idx.us.i.i.i.i.i.i, align 8, !noalias !34516
  %.sroa.7.8..sroa.417.0..sroa_idx.us.i.i.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 %3, ptr %.sroa.7.8..sroa.417.0..sroa_idx.us.i.i.i.sroa_idx.i.i.i, align 8, !noalias !34516
  %i.x = add nuw nsw i64 %i.f, 1
  store i64 %i.x, ptr %i.o, align 8, !alias.scope !34511, !noalias !34512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !34504
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load i8, ptr %i.y, align 8, !range !40, !noundef !28
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.z, ptr %i.aa, align 8
  ret void

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %2, i64 %3, i1 false)
  br label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB4_5ChainINtNtB6_6cloned6ClonedINtNtNtBa_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringEEINtNtNtB8_7sources4once4OnceB1L_EENtNtNtB8_6traits8iterator8Iterator9size_hintCskXtk6F4WjxZ_4just.exit.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just10resolutionINtB2_10ResolutionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtB4_6recipe6RecipeEE14resolve_recipe(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  %.not.i = icmp eq i64 %.16.val, 0
  br i1 %.not.i, label %bb.b, label %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @978) #75, !noalias !34599
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul i64 %.16.val, 72                    ; 2 uses
  %i.d = getelementptr i8, ptr %.8.val, i64 %.idx ; 5 uses
  %i.e = getelementptr i8, ptr %i.d, i64 -72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  %i.h = icmp eq i64 %.idx, 72
  br i1 %i.h, label %bb.g, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit, %bb.x
  %i.i = phi i64 [ %i.bl, %bb.x ], [ 0, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ]
  %.sroa.0.0116 = phi ptr [ %i.cl, %bb.x ], [ %1, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.02.0115 = phi ptr [ %i.ck, %bb.x ], [ %3, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 2 uses
  %.sroa.04.0114 = phi ptr [ %i.j, %bb.x ], [ %.8.val, %_RNvMNtCskXtk6F4WjxZ_4just8namepathNtB2_8Namepath10split_last.exit ] ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !34600)
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !34600, !nonnull !28, !noundef !28 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !34600, !noundef !28 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 56
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !34600, !noundef !28 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.0114, i64 40
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !34600, !noundef !28 ; 13 uses
  %i.s = add i64 %i.r, %i.p                       ; 7 uses
  %i.t = icmp ugt i64 %i.p, %i.s
  %i.u = icmp ugt i64 %i.s, %i.n
  %or.cond.i.i = or i1 %i.t, %i.u
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i70.invoke, label %bb.c, !prof !31

bb.c:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %i.p, %i.n
  br i1 %i.v, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = icmp eq i64 %i.p, 0
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.x = icmp eq i64 %i.s, %i.n
  br i1 %i.x, label %bb.l, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !34601, !noalias !34600, !noundef !28
  %i.aa = icmp sgt i8 %i.z, -65
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
  call void @llvm.assume(i1 %i.ld)
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.lc, i64 %i.lb
  %i.lf = load ptr, ptr %i.le, align 8, !noalias !36845, !nonnull !28, !noundef !28 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 274
  %i.lh = load i16, ptr %i.lg, align 2, !noalias !36845, !noundef !28 ; 2 uses
  %i.li = zext nneg i16 %i.lh to i64
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lf, i64 280
  %i.lk = icmp ult i16 %i.lh, 12
  call void @llvm.assume(i1 %i.lk)
  %i.ll = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %i.li
  %i.lm = load ptr, ptr %i.ll, align 8, !noalias !36845, !nonnull !28, !noundef !28 ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 274
  %i.lo = load i16, ptr %i.ln, align 2, !noalias !36845, !noundef !28 ; 2 uses
  %i.lp = zext nneg i16 %i.lo to i64
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lm, i64 280
  %i.lr = icmp ult i16 %i.lo, 12
  call void @llvm.assume(i1 %i.lr)
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %i.lq, i64 %i.lp
  %i.lt = load ptr, ptr %i.ls, align 8, !noalias !36845, !nonnull !28, !noundef !28 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 274
  %i.lv = load i16, ptr %i.lu, align 2, !noalias !36845, !noundef !28 ; 2 uses
  %i.lw = zext nneg i16 %i.lv to i64
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lt, i64 280
  %i.ly = icmp ult i16 %i.lv, 12
  call void @llvm.assume(i1 %i.ly)
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.lx, i64 %i.lw
  %i.ma = load ptr, ptr %i.lz, align 8, !noalias !36845, !nonnull !28, !noundef !28 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 274
  %i.mc = load i16, ptr %i.mb, align 2, !noalias !36845, !noundef !28 ; 2 uses
  %i.md = zext nneg i16 %i.mc to i64
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 280
  %i.mf = icmp ult i16 %i.mc, 12
  call void @llvm.assume(i1 %i.mf)
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.me, i64 %i.md
  %i.mh = load ptr, ptr %i.mg, align 8, !noalias !36845, !nonnull !28, !noundef !28 ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 274
  %i.mj = load i16, ptr %i.mi, align 2, !noalias !36845, !noundef !28 ; 2 uses
  %i.mk = zext nneg i16 %i.mj to i64
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mh, i64 280
  %i.mm = icmp ult i16 %i.mj, 12
  call void @llvm.assume(i1 %i.mm)
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.ml, i64 %i.mk
  %i.mo = load ptr, ptr %i.mn, align 8, !noalias !36845, !nonnull !28, !noundef !28 ; 2 uses
  %i.mp = add i64 %.sroa.05.07.i32.i.i.i, -8      ; 2 uses
  %i.mq = icmp eq i64 %i.mp, 0
  br i1 %i.mq, label %.loopexit.i.i.i, label %.lr.ph.i30.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i30.i.i.i.prol.loopexit, %.lr.ph.i30.i.i.i, %bb.ax, %bb.av
  %.sroa.8.2.i.i = phi i64 [ %.sroa.8.0.i.i, %bb.ax ], [ %.sroa.8.1.i.i, %bb.av ], [ %.sroa.8.1.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.8.1.i.i, %.lr.ph.i30.i.i.i.prol.loopexit ]
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.0.i.i, %bb.ax ], [ %.sroa.0.1.i.i, %bb.av ], [ %.sroa.0.1.i.i, %.lr.ph.i30.i.i.i ], [ %.sroa.0.1.i.i, %.lr.ph.i30.i.i.i.prol.loopexit ]
  %.sroa.0.1.i.i.i = phi ptr [ %.sroa.0.077.i.i.i, %bb.ax ], [ %.sroa.060.0.i.i.i, %bb.av ], [ %.lcssa2873.unr, %.lr.ph.i30.i.i.i.prol.loopexit ], [ %i.mo, %.lr.ph.i30.i.i.i ]
  %i.mr = add i64 %.sroa.014.0.i.i, 1
  br label %bb.aa

.lr.ph.i.i.i255:                                  ; preds = %bb.at, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRejNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit39.i.i.i
  %.sroa.01.0137.i.i.i = phi i64 [ %i.mv, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRejNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit39.i.i.i ], [ 0, %bb.at ]
  %.sroa.067.0135.i.i.i = phi ptr [ %i.ms, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRejNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit39.i.i.i ], [ %i.ji, %bb.at ] ; 3 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36846
  %i.ms = call noalias noundef align 8 dereferenceable_or_null(376) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 376, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36846 ; 7 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %bb.aw, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRejNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit39.i.i.i, !prof !44

bb.aw:                                            ; preds = %.lr.ph.i.i.i255
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 376) #71
          to label %.noexc.i38.i.i.i unwind label %.body.i37.i.i.i, !noalias !36846

.noexc.i38.i.i.i:                                 ; preds = %bb.aw
  unreachable

.body.i37.i.i.i:                                  ; preds = %bb.aw
  %i.mu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedRejNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit39.i.i.i: ; preds = %.lr.ph.i.i.i255
  %i.mv = add nuw i64 %.sroa.01.0137.i.i.i, 1     ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ms, i64 176
  store ptr null, ptr %i.mw, align 8, !noalias !36846
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ms, i64 274
  store i16 0, ptr %i.mx, align 2, !noalias !36846
  %i.my = getelementptr inbounds nuw i8, ptr %i.ms, i64 280
  store ptr %.sroa.067.0135.i.i.i, ptr %i.my, align 8, !noalias !36846
  %i.mz = getelementptr inbounds nuw i8, ptr %.sroa.067.0135.i.i.i, i64 176
  store ptr %i.ms, ptr %i.mz, align 8, !noalias !36847
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.067.0135.i.i.i, i64 272
  store i16 0, ptr %i.na, align 8, !noalias !36848
  %exitcond.not.i.i.i256 = icmp eq i64 %i.mv, %i.jh
  br i1 %exitcond.not.i.i.i256, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i255

bb.ax:                                            ; preds = %.loopexit97.i.i.i
  %i.nb = zext nneg i16 %i.fg to i64              ; 2 uses
  %i.nc = add nuw nsw i16 %i.fg, 1
  store i16 %i.nc, ptr %i.ff, align 2, !noalias !36849
  %i.nd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.077.i.i.i, i64 %i.nb ; 2 uses
  store ptr %.sroa.058.0.ph.i.i.i, ptr %i.nd, align 8, !noalias !36849
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i64 %.sroa.821.sroa.0.0.in.peel.i.sroa.speculated.i.i.i, ptr %i.ne, align 8, !noalias !36849
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.0.077.i.i.i, i64 184
  %i.ng = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.nb
  store i64 %.sroa.10.0.ph.i.i.i, ptr %i.ng, align 8, !noalias !36849
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.077.i.i.i) ]
  br label %.loopexit.i.i.i

.thread.sink.split.i.i:                           ; preds = %bb.ay, %bb.aj
  %.pn32.ph.i.i = phi { ptr, i32 } [ %i.ir, %bb.aj ], [ %i.ni, %bb.ay ]
  %i.nh = mul nuw i64 %.sroa.0.0.copyload8.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload10.i, i64 noundef %i.nh, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36823
  br label %.body257.thread

bb.ay:                                            ; preds = %bb.z
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nj = icmp eq i64 %.sroa.0.0.copyload8.i, 0
  br i1 %i.nj, label %.body257.thread, label %.thread.sink.split.i.i

.loopexit.i:                                      ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextRejE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedIterRejINtNtNtBK_3vec9into_iter8IntoIterTB1X_jEEEECskXtk6F4WjxZ_4just.exit22.i.i.i
  store ptr %.sroa.0.0.i.i, ptr %i.aw, align 8, !alias.scope !36850, !noalias !36851
  %i.nk = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i64 %.sroa.8.0.i.i, ptr %i.nk, align 8, !alias.scope !36850, !noalias !36851
  %.pre1667 = load ptr, ptr %i.da, align 8
  %.pre1668 = load i64, ptr %i.cj, align 8
  br label %bb.eo

bb.az:                                            ; preds = %bb.w
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nl = icmp eq i64 %.sroa.0.0.copyload8.i, 0
  br i1 %i.nl, label %.body257.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.nm = mul nuw i64 %.sroa.0.0.copyload8.i, 24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload10.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload10.i, i64 noundef %i.nm, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36821
  br label %.body257.thread

.loopexit839:                                     ; preds = %bb.f, %bb.e, %.preheader.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  %i.nn = sub nuw i64 %i.bg, %i.bi
  %i.no = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val241 = load ptr, ptr %i.no, align 8, !nonnull !28, !align !35, !noundef !28
  call fastcc void @_RINvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB3_16InvocationParser14resolve_recipeReEB5_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.bb, ptr nonnull %.val241, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bv, i64 noundef %i.nn)
  %i.np = load i64, ptr %i.bb, align 8, !range !116, !noundef !28 ; 2 uses
  %.not218 = icmp eq i64 %i.np, -1
  %i.nq = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.nr = load ptr, ptr %i.nq, align 8            ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.nt = load i64, ptr %i.ns, align 8            ; 2 uses
  br i1 %.not218, label %bb.bc, label %bb.bb

.loopexit838:                                     ; preds = %.lr.ph.i.i.i, %bb.e
  %.sroa.5.0.i.i.i = phi i64 [ %i.cc, %bb.e ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.nu = icmp ult i64 %.sroa.5.0.i.i.i, %i.by
  tail call void @llvm.assume(i1 %i.nu)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  %i.nv = add i64 %i.bi, 1                        ; 2 uses
  %i.nw = icmp eq i64 %i.nv, %i.bg
  br i1 %i.nw, label %bb.be, label %bb.bd

bb.bb:                                            ; preds = %.loopexit839
  %.sroa.6159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %.sroa.6163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6163.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6159.0..sroa_idx, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store i64 %i.np, ptr %0, align 8
  %.sroa.4161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.nr, ptr %.sroa.4161.0..sroa_idx, align 8
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nt, ptr %.sroa.5162.0..sroa_idx, align 8
  br label %bb.mv

bb.bc:                                            ; preds = %.loopexit839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.nx = add i64 %i.nt, %i.bi
  store i64 %i.nx, ptr %i.bh, align 8
  br label %bb.k

bb.bd:                                            ; preds = %.loopexit838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  store ptr %i.bw, ptr %i.bc, align 8
  %i.ny = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i64 %i.by, ptr %i.ny, align 8
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bc, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  br label %bb.bf

bb.be:                                            ; preds = %.loopexit838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !36852
  %.not.i.i = icmp samesign ult i64 %i.by, 2
  br i1 %.not.i.i, label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.be
  %i.nz = getelementptr i8, ptr %i.bw, i64 %i.by
  %i.oa = getelementptr i8, ptr %i.nz, i64 -2
  %i.ob = load i16, ptr %i.oa, align 1
  %i.oc = icmp ne i16 14906, %i.ob
  %i.od = zext i1 %i.oc to i32
  %bcmp.i.i.fr.i = freeze i32 %i.od
  %i.oe = icmp eq i32 %bcmp.i.i.fr.i, 0
  %i.of = add nsw i64 %i.by, -2
  %spec.select.i = select i1 %i.oe, i64 %i.of, i64 %i.by
  br label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit

_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit: ; preds = %bb.be, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i
  %i.og = phi i64 [ 1, %bb.be ], [ %spec.select.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i ]
  store ptr %i.bw, ptr %i.ak, align 8, !noalias !36852
  %i.oh = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 %i.og, ptr %i.oh, align 8, !noalias !36852
  call void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.ak, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !36852
  br label %bb.bf

bb.bf:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit, %bb.bd
  %i.oi = load i64, ptr %i.bd, align 8, !range !37, !noundef !28 ; 6 uses
  %i.oj = icmp eq i64 %i.oi, -1
  br i1 %i.oj, label %bb.bg, label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  %.not.i.i262 = icmp slt i64 %i.by, 0
  br i1 %.not.i.i262, label %bb.bi, label %bb.bh, !prof !42

bb.bh:                                            ; preds = %bb.bg
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36853
  %i.ok = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !36853 ; 3 uses
  %i.ol = icmp eq ptr %i.ok, null
  br i1 %i.ol, label %bb.bi, label %_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocation0B6_.exit

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.bh ], [ 0, %bb.bg ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.by) #71, !noalias !36854
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB4_16InvocationParser16parse_invocation0B6_.exit: ; preds = %bb.bh
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ok, ptr nonnull readonly align 1 %i.bw, i64 %i.by, i1 false), !noalias !36855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 92, ptr %0, align 8
  %.sroa.4138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.by, ptr %.sroa.4138.0..sroa_idx, align 8
  %.sroa.4138.sroa.4.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ok, ptr %.sroa.4138.sroa.4.0..sroa.4138.0..sroa_idx.sroa_idx, align 8
  %.sroa.4138.sroa.5.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.by, ptr %.sroa.4138.sroa.5.0..sroa.4138.0..sroa_idx.sroa_idx, align 8
  %.sroa.4138.sroa.6.0..sroa.4138.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %.sroa.4138.sroa.6.0..sroa.4138.0..sroa_idx.sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_.exit

bb.bj:                                            ; preds = %bb.bf
  %.sroa.4635.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.4635.0.copyload = load ptr, ptr %.sroa.4635.0..sroa_idx, align 8 ; 7 uses
  %.sroa.5636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.5636.0.copyload = load i64, ptr %.sroa.5636.0..sroa_idx, align 8 ; 9 uses
  %.sroa.6637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %.sroa.6637.0.copyload = load ptr, ptr %.sroa.6637.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store i64 %i.oi, ptr %i.be, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.4635.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i64 %.sroa.5636.0.copyload, ptr %.sroa.5651.0..sroa_idx, align 8
  %.sroa.6652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  store ptr %.sroa.6637.0.copyload, ptr %.sroa.6652.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.33.sroa.9)
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val243 = load ptr, ptr %i.om, align 8, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !36857
  store i64 0, ptr %i.aj, align 8, !noalias !36857
  %i.on = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.on, align 8, !noalias !36857
  %i.oo = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 6 uses
  store i64 0, ptr %i.oo, align 8, !noalias !36857
  %.idx.i = mul nuw nsw i64 %.sroa.5636.0.copyload, 24
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.4635.0.copyload, i64 %.idx.i
  %i.oq = icmp eq i64 %.sroa.5636.0.copyload, 0   ; 3 uses
  br i1 %i.oq, label %._crit_edge.i, label %.lr.ph.i

.thread51.loopexit.i:                             ; preds = %bb.cn
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread47.i

.thread51.loopexit.split-lp.i:                    ; preds = %bb.dr, %bb.dp, %bb.cx, %bb.cp, %bb.ca, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread47.i

._crit_edge.i:                                    ; preds = %bb.cm, %bb.bj
  %.sroa.011.0.lcssa.i = phi ptr [ %.val243, %bb.bj ], [ %.sroa.011.1.i, %bb.cm ] ; 2 uses
  %i.or = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 672
  %i.os = load ptr, ptr %i.or, align 8, !noalias !36857, !noundef !28 ; 8 uses
  %.not60.i = icmp eq ptr %i.os, null
  br i1 %.not60.i, label %bb.bt, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !36858)
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 96
  %.val.i.i = load ptr, ptr %i.ou, align 8, !alias.scope !36858, !noalias !36859, !nonnull !28, !noundef !28
  %i.ov = getelementptr inbounds nuw i8, ptr %i.os, i64 104
  %.val1.i.i = load i64, ptr %i.ov, align 8, !alias.scope !36858, !noalias !36859, !noundef !28 ; 3 uses
  %i.ow = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ow, label %bb.bv, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.bk, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i
  %.sroa.04.0.i.i.i.i.i = phi i64 [ %i.pn, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i ], [ 0, %bb.bk ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i = phi i64 [ %i.pm, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i ], [ 0, %bb.bk ]
  %i.ox = getelementptr inbounds nuw [448 x i8], ptr %.val.i.i, i64 %.sroa.04.0.i.i.i.i.i ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 104
  %i.oz = load i64, ptr %i.oy, align 8, !range !39, !alias.scope !36860, !noalias !36861, !noundef !28
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.oz, -1
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 441
  %i.pb = load i8, ptr %i.pa, align 1, !range !40, !alias.scope !36860, !noalias !36861
  %i.pc = trunc nuw i8 %i.pb to i1
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i, i1 true, i1 %i.pc
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i, label %bb.bl

bb.bl:                                            ; preds = %.preheader.i.i.i.i
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 443
  %i.pe = load i8, ptr %i.pd, align 1, !range !38, !alias.scope !36860, !noalias !36861, !noundef !28
  %.not3.i.i.i.i.i.i.i.i = icmp eq i8 %i.pe, 2
  br i1 %.not3.i.i.i.i.i.i.i.i, label %bb.bm, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !range !41, !alias.scope !36860, !noalias !36861, !noundef !28
  %i.ph = trunc nuw i64 %i.pg to i1
  br i1 %i.ph, label %bb.bn, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.pj = load i64, ptr %i.pi, align 8, !alias.scope !36860, !noalias !36861
  %i.pk = icmp ne i64 %i.pj, 0
  %i.pl = zext i1 %i.pk to i64
  br label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i: ; preds = %bb.bn, %bb.bm, %bb.bl, %.preheader.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.bl ], [ 0, %.preheader.i.i.i.i ], [ 0, %bb.bm ], [ %i.pl, %bb.bn ]
  %i.pm = add i64 %.sroa.0.1.i.i.i.i.i.i.i.i, %.sroa.02.0.i.i.i.i.i ; 4 uses
  %i.pn = add nuw i64 %.sroa.04.0.i.i.i.i.i, 1    ; 2 uses
  %i.po = icmp eq i64 %i.pn, %.val1.i.i
  br i1 %i.po, label %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i, label %.preheader.i.i.i.i

_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map8map_foldRNtNtCskXtk6F4WjxZ_4just9parameter9ParameterjjNCINvNvXs1_NtB6_6filterINtB1P_6FilterppENtNtNtB8_6traits8iterator8Iterator5count8to_usizeBU_NCNvMs_NtBZ_6recipeNtB3f_6Recipe13min_arguments0E0NCINvXsK_NtB2m_5accumjNtB45_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1E_EE0E0BZ_.exit.i.i.i.i.i
  %i.pp = icmp ule i64 %i.pm, %.val1.i.i
  call void @llvm.assume(i1 %i.pp)
  %.not.i.i267 = icmp eq i64 %i.pm, 0
  br i1 %.not.i.i267, label %bb.bv, label %bb.bo

bb.bo:                                            ; preds = %_RNvMs_NtCskXtk6F4WjxZ_4just6recipeNtB4_6Recipe13min_arguments.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !36862)
  %i.pq = getelementptr inbounds nuw i8, ptr %i.os, i64 216
  %i.pr = load ptr, ptr %i.pq, align 8, !alias.scope !36863, !noalias !36859, !nonnull !28, !noundef !28 ; 4 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.os, i64 224
  %i.pt = load i64, ptr %i.ps, align 8, !alias.scope !36863, !noalias !36859, !noundef !28 ; 4 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.os, i64 256
  %i.pv = load i64, ptr %i.pu, align 8, !alias.scope !36863, !noalias !36859, !noundef !28 ; 7 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.os, i64 240
  %i.px = load i64, ptr %i.pw, align 8, !alias.scope !36863, !noalias !36859, !noundef !28 ; 2 uses
  %i.py = add i64 %i.px, %i.pv                    ; 5 uses
  %i.pz = icmp ugt i64 %i.pv, %i.py
  %i.qa = icmp ugt i64 %i.py, %i.pt
  %or.cond.i.i.i.i = or i1 %i.pz, %i.qa
  br i1 %or.cond.i.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i, label %bb.bp, !prof !31

bb.bp:                                            ; preds = %bb.bo
  %i.qb = icmp eq i64 %i.pv, %i.pt
  br i1 %i.qb, label %bb.bu, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qc = icmp eq i64 %i.pv, 0
  br i1 %i.qc, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bs, %bb.bq
  %i.qd = icmp eq i64 %i.py, %i.pt
  br i1 %i.qd, label %bb.bu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.pv
  %i.qf = load i8, ptr %i.qe, align 1, !alias.scope !36864, !noalias !36865, !noundef !28
  %i.qg = icmp sgt i8 %i.qf, -65
  br i1 %i.qg, label %bb.br, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i: ; preds = %bb.br
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pr, i64 %i.py
  %i.qi = load i8, ptr %i.qh, align 1, !alias.scope !36864, !noalias !36865, !noundef !28
  %i.qj = icmp sgt i8 %i.qi, -65
  br i1 %i.qj, label %bb.bu, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i.i, %bb.bs, %bb.bo
  invoke void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pr, i64 noundef %i.pt, i64 noundef %i.pv, i64 noundef %i.py, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75
          to label %.noexc.i269 unwind label %.thread51.loopexit.split-lp.i, !noalias !36857

.noexc.i269:                                      ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i.i
  unreachable

bb.bt:                                            ; preds = %._crit_edge.i
  %i.qk = getelementptr inbounds nuw i8, ptr %.sroa.011.0.lcssa.i, i64 840
  %i.ql = load i64, ptr %i.qk, align 8, !noalias !36857, !noundef !28
  %i.qm = icmp eq i64 %i.ql, 0
  %spec.select.i271 = select i1 %i.qm, i64 67, i64 66
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just7keywordNtB2_7Keyword11from_lexeme:bb.a
  %i.hv = xor i32 %i.hu, 100
  %i.hw = or i32 %i.hr, %i.hv
  %i.hx = icmp ne i32 %i.hw, 0
  %i.hy = zext i1 %i.hx to i32
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.aq, label %bb.af

bb.ad:                                            ; preds = %bb.aa
  %i.ia = load i64, ptr %0, align 1
  %i.ib = xor i64 %i.ia, 3275358794819661678
  %i.ic = getelementptr i8, ptr %0, i64 7
  %i.id = load i64, ptr %i.ic, align 1
  %i.ie = xor i64 %i.id, 7306916068917079341
  %i.if = or i64 %i.ib, %i.ie
  %i.ig = icmp ne i64 %i.if, 0
  %i.ih = zext i1 %i.ig to i32
  %i.ii = icmp eq i32 %i.ih, 0
  br i1 %i.ii, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.ae:                                            ; preds = %bb.a
  %i.ij = load i128, ptr %0, align 1
  %i.ik = xor i128 %i.ij, 145495448423279067154666339937937485680
  %i.il = getelementptr i8, ptr %0, i64 16
  %i.im = load i32, ptr %i.il, align 1
  %i.in = zext i32 %i.im to i128
  %i.io = xor i128 %i.in, 1937010277
  %i.ip = or i128 %i.ik, %i.io
  %i.iq = icmp ne i128 %i.ip, 0
  %i.ir = zext i1 %i.iq to i32
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.af:                                            ; preds = %bb.ac
  %i.it = load i32, ptr %0, align 1
  %i.iu = xor i32 %i.it, 1701410161
  %i.iv = getelementptr i8, ptr %0, i64 4
  %i.iw = load i8, ptr %i.iv, align 1
  %i.ix = zext i8 %i.iw to i32
  %i.iy = xor i32 %i.ix, 116
  %i.iz = or i32 %i.iu, %i.iy
  %i.ja = icmp ne i32 %i.iz, 0
  %i.jb = zext i1 %i.ja to i32
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %bb.aq, label %bb.ai

bb.ag:                                            ; preds = %bb.a
  %i.jd = load i128, ptr %0, align 1
  %i.je = xor i128 %i.jd, 154717190597415219194004457727594750835
  %i.jf = getelementptr i8, ptr %0, i64 16
  %i.jg = load i16, ptr %i.jf, align 1
  %i.jh = zext i16 %i.jg to i128
  %i.ji = xor i128 %i.jh, 29285
  %i.jj = or i128 %i.je, %i.ji
  %i.jk = icmp ne i128 %i.jj, 0
  %i.jl = zext i1 %i.jk to i32
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.aq, label %bb.an

bb.ah:                                            ; preds = %bb.ab
  %i.jn = load i16, ptr %0, align 1
  %i.jo = xor i16 %i.jn, 25971
  %i.jp = getelementptr i8, ptr %0, i64 2
  %i.jq = load i8, ptr %i.jp, align 1
  %i.jr = zext i8 %i.jq to i16
  %i.js = xor i16 %i.jr, 116
  %i.jt = or i16 %i.jo, %i.js
  %i.ju = icmp ne i16 %i.jt, 0
  %i.jv = zext i1 %i.ju to i32
  %i.jw = icmp eq i32 %i.jv, 0
  br i1 %i.jw, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.ai:                                            ; preds = %bb.af
  %i.jx = load i32, ptr %0, align 1
  %i.jy = xor i32 %i.jx, 1818585203
  %i.jz = getelementptr i8, ptr %0, i64 4
  %i.ka = load i8, ptr %i.jz, align 1
  %i.kb = zext i8 %i.ka to i32
  %i.kc = xor i32 %i.kb, 108
  %i.kd = or i32 %i.jy, %i.kc
  %i.ke = icmp ne i32 %i.kd, 0
  %i.kf = zext i1 %i.ke to i32
  %i.kg = icmp eq i32 %i.kf, 0
  br i1 %i.kg, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.aj:                                            ; preds = %bb.a
  %i.kh = load i32, ptr %0, align 1
  %i.ki = xor i32 %i.kh, 1886217588
  %i.kj = getelementptr i8, ptr %0, i64 3
  %i.kk = load i32, ptr %i.kj, align 1
  %i.kl = xor i32 %i.kk, 1919509616
  %i.km = or i32 %i.ki, %i.kl
  %i.kn = icmp ne i32 %i.km, 0
  %i.ko = zext i1 %i.kn to i32
  %i.kp = icmp eq i32 %i.ko, 0
  br i1 %i.kp, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.ak:                                            ; preds = %bb.y
  %i.kq = load i32, ptr %0, align 1
  %i.kr = icmp ne i32 %i.kq, 1702195828
  %i.ks = zext i1 %i.kr to i32
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.al:                                            ; preds = %bb.r
  %i.ku = load i64, ptr %0, align 1
  %i.kv = icmp ne i64 %i.ku, 8390891584591588981
  %i.kw = zext i1 %i.kv to i32
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ky = load i64, ptr %0, align 1
  %i.kz = icmp ne i64 %i.ky, 7308324466020544117
  %i.la = zext i1 %i.kz to i32
  %i.lb = icmp eq i32 %i.la, 0
  br i1 %i.lb, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.an:                                            ; preds = %bb.ag
  %i.lc = load i128, ptr %0, align 1
  %i.ld = xor i128 %i.lc, 134794367988081446221364944577881860471
  %i.le = getelementptr i8, ptr %0, i64 16
  %i.lf = load i16, ptr %i.le, align 1
  %i.lg = zext i16 %i.lf to i128
  %i.lh = xor i128 %i.lg, 27756
  %i.li = or i128 %i.ld, %i.lh
  %i.lj = icmp ne i128 %i.li, 0
  %i.lk = zext i1 %i.lj to i32
  %i.ll = icmp eq i32 %i.lk, 0
  br i1 %i.ll, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.ao:                                            ; preds = %bb.a
  %i.lm = load i64, ptr %0, align 1
  %i.ln = xor i64 %i.lm, 3275092674338515319
  %i.lo = getelementptr i8, ptr %0, i64 5
  %i.lp = load i64, ptr %i.lo, align 1
  %i.lq = xor i64 %i.lp, 7812730952864330615
  %i.lr = or i64 %i.ln, %i.lq
  %i.ls = icmp ne i64 %i.lr, 0
  %i.lt = zext i1 %i.ls to i32
  %i.lu = icmp eq i32 %i.lt, 0
  br i1 %i.lu, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

bb.ap:                                            ; preds = %bb.a
  %i.lv = load i128, ptr %0, align 1
  %i.lw = xor i128 %i.lv, 152110697105276189115558223010686201719
  %i.lx = getelementptr i8, ptr %0, i64 16
  %i.ly = load i8, ptr %i.lx, align 1
  %i.lz = zext i8 %i.ly to i128
  %i.ma = xor i128 %i.lz, 121
  %i.mb = or i128 %i.lw, %i.ma
  %i.mc = icmp ne i128 %i.mb, 0
  %i.md = zext i1 %i.mc to i32
  %i.me = icmp eq i32 %i.md, 0
  br i1 %i.me, label %bb.aq, label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

.fold.split:                                      ; preds = %bb.q
  br label %bb.aq

bb.aq:                                            ; preds = %bb.q, %.fold.split, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.01.0.i = phi i8 [ 40, %bb.ap ], [ 0, %bb.b ], [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.e ], [ 4, %bb.f ], [ 5, %bb.g ], [ 6, %bb.h ], [ 7, %bb.i ], [ 8, %bb.j ], [ 9, %bb.k ], [ 10, %bb.l ], [ 11, %bb.m ], [ 12, %bb.n ], [ 13, %bb.o ], [ 14, %bb.p ], [ 15, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 18, %bb.t ], [ 19, %bb.u ], [ 20, %bb.v ], [ 21, %bb.w ], [ 22, %bb.x ], [ 23, %bb.y ], [ 24, %bb.z ], [ 25, %bb.aa ], [ 26, %bb.ab ], [ 27, %bb.ac ], [ 28, %bb.ad ], [ 29, %bb.ae ], [ 30, %bb.af ], [ 31, %bb.ag ], [ 32, %bb.ah ], [ 33, %bb.ai ], [ 34, %bb.aj ], [ 35, %bb.ak ], [ 36, %bb.al ], [ 37, %bb.am ], [ 38, %bb.an ], [ 39, %bb.ao ], [ 41, %.fold.split ]
  br label %_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit

_RNvXsb_NtCskXtk6F4WjxZ_4just7keywordNtB5_7KeywordINtNtCsj6eKBz9Db1c_4core7convert7TryFromReE8try_from.exit: ; preds = %bb.q, %bb.a, %bb.c, %bb.d, %bb.f, %bb.h, %bb.u, %bb.w, %bb.x, %bb.ad, %bb.ae, %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq
  %.sroa.0.0.i = phi i8 [ %.sroa.01.0.i, %bb.aq ], [ -1, %bb.am ], [ -1, %bb.h ], [ -1, %bb.ao ], [ -1, %bb.ah ], [ -1, %bb.ak ], [ -1, %bb.ai ], [ -1, %bb.an ], [ -1, %bb.ae ], [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.aj ], [ -1, %bb.w ], [ -1, %bb.u ], [ -1, %bb.x ], [ -1, %bb.q ], [ -1, %bb.c ], [ -1, %bb.f ], [ -1, %bb.ad ], [ -1, %bb.ap ]
  ret i8 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just7keywordNtB2_7Keyword6lexeme(i8 noundef range(i8 0, 42) %0) unnamed_addr #8 {
switch.lookup:
  %i.a = zext nneg i8 %0 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq, i64 %i.a
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.b = zext nneg i8 %0 to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs_NtCskXtk6F4WjxZ_4just7keywordNtB4_7KeywordINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.5098, i64 %i.b
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.c = insertvalue { ptr, i64 } poison, ptr %switch.load2, 0
  %i.d = insertvalue { ptr, i64 } %i.c, i64 %switch.ext, 1
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just7shebangNtB2_7Shebang3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp samesign ult i64 %2, 2
  br i1 %.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.a = load i16, ptr %1, align 1
  %i.b = icmp ne i16 8483, %i.a
  %i.c = zext i1 %i.b to i32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.split.preheader.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  store ptr null, ptr %0, align 8
  br label %bb.n

.lr.ph.split.preheader.i.i:                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  %i.e = add nsw i64 %2, -2                       ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 5 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.d, %.lr.ph.split.preheader.i.i
  %i.g = phi i64 [ %i.u, %bb.d ], [ 0, %.lr.ph.split.preheader.i.i ] ; 7 uses
  %i.h = sub nuw i64 %i.e, %i.g                   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 16
  br i1 %i.j, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %i.e, %i.g
  br i1 %.not.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i
  %i.k = tail call { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !50085 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.04.011.i.i.i = phi i64 [ %i.r, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.011.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !50086, !noalias !50085, !noundef !28
  %i.q = icmp eq i8 %i.p, 10
  br i1 %i.q, label %.loopexit.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.r = add nuw nsw i64 %.sroa.04.011.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not.i.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.5.0.i.i.i = phi i64 [ %i.m, %bb.b ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ] ; 5 uses
  %i.s = icmp ult i64 %.sroa.5.0.i.i.i, %i.h
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add nuw i64 %i.g, 1
  %i.u = add i64 %i.t, %.sroa.5.0.i.i.i           ; 3 uses
  %.not12.i.i = icmp ugt i64 %i.u, %i.e
  %i.v = add i64 %i.g, %.sroa.5.0.i.i.i
  %or.cond.i.i.not = icmp ult i64 %i.v, %i.e
  br i1 %or.cond.i.i.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.e, %.loopexit.i.i
  br i1 %.not12.i.i, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, label %.lr.ph.split.i.i

bb.e:                                             ; preds = %.loopexit.i.i
  %i.w = getelementptr i8, ptr %i.f, i64 %i.g
  %i.x = getelementptr i8, ptr %i.w, i64 %.sroa.5.0.i.i.i
  %lhsc = load i8, ptr %i.x, align 1
  %i.y = icmp eq i8 %lhsc, 10
  br i1 %i.y, label %bb.f, label %bb.d

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.d, %.preheader.i.i.i, %bb.b, %bb.c
  %.not.i3.i.not = icmp eq i64 %i.e, 0
  br i1 %.not.i3.i.not, label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCskXtk6F4WjxZ_4just.exit, label %.thread

.thread:                                          ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i
  %.pre.i.i55129 = add nsw i64 %2, -3
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

bb.f:                                             ; preds = %bb.e
  %.pre.i.i55 = add i64 %.sroa.5.0.i.i.i, %i.g
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.f, %.thread
  %.pre.i.i55131 = phi i64 [ %.pre.i.i55129, %.thread ], [ %.pre.i.i55, %bb.f ] ; 3 uses
  %.sroa.4.1.i.ph130 = phi i64 [ %i.e, %.thread ], [ %i.u, %bb.f ] ; 3 uses
  %.pn = insertvalue { ptr, i64 } poison, ptr %i.f, 0
  %i.z = insertvalue { ptr, i64 } %.pn, i64 %.sroa.4.1.i.ph130, 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %.pre.i.i55131
  %rhsc.i = load i8, ptr %i.aa, align 1, !alias.scope !50087
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.ab = icmp eq i8 %rhsc.fr.i, 10
  br i1 %i.ab, label %bb.g, label %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i
  %i.ac = insertvalue { ptr, i64 } %i.z, i64 %.pre.i.i55131, 1
  %.not.i.i15.i = icmp eq i64 %.pre.i.i55131, 0
  %.pre.i16.i = add i64 %.sroa.4.1.i.ph130, -2
  br i1 %.not.i.i15.i, label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i: ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 %.sroa.4.1.i.ph130
  %rhsc4.i = load i8, ptr %i.ad, align 1, !alias.scope !50087
  %rhsc4.fr.i = freeze i8 %rhsc4.i
  %i.ae = icmp eq i8 %rhsc4.fr.i, 13
  %spec.select.i20.i = select i1 %i.ae, ptr %i.f, ptr null
  br label %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i

_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i, %bb.g
  %i.af = phi ptr [ %spec.select.i20.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i17.i ], [ null, %bb.g ] ; 2 uses
  %i.ag = insertvalue { ptr, i64 } poison, ptr %i.af, 0
  %i.ah = insertvalue { ptr, i64 } %i.ag, i64 %.pre.i16.i, 1
  %.not14.i = icmp eq ptr %i.af, null
  %..i = select i1 %.not14.i, { ptr, i64 } %i.ac, { ptr, i64 } %i.ah
  br label %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit

_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i
  %.merged.i = phi { ptr, i64 } [ %..i, %_RNvXst_NtNtCsj6eKBz9Db1c_4core3str7patternReNtB5_7Pattern15strip_suffix_of.exit21.i ], [ %i.z, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.ai = extractvalue { ptr, i64 } %.merged.i, 0
  %i.aj = extractvalue { ptr, i64 } %.merged.i, 1
  br label %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCskXtk6F4WjxZ_4just.exit

_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i, %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit
  %.sroa.3.0 = phi i64 [ %i.aj, %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit ], [ 0, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i ]
  %.sroa.0.0 = phi ptr [ %i.ai, %_RNvXs3_NtCsj6eKBz9Db1c_4core3strNtB5_8LinesMapINtNtNtB7_3ops8function2FnTReEE4call.exit ], [ inttoptr (i64 1 to ptr), %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE7get_endCskXtk6F4WjxZ_4just.exit.i ]
  %i.ak = tail call fastcc { ptr, i64 } @_RINvMNtCsj6eKBz9Db1c_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0, i64 noundef %.sroa.3.0) ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.ak, 0      ; 5 uses
  %i.am = extractvalue { ptr, i64 } %i.ak, 1      ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.am ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCskXtk6F4WjxZ_4just.exit
  %i.ao = phi i64 [ %i.ce, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i ], [ 0, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.ap = phi ptr [ %i.ca, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i ], [ %i.al, %_RNvMsf_NtNtCsj6eKBz9Db1c_4core3str4iterINtB5_13SplitInternalcE14next_inclusiveCskXtk6F4WjxZ_4just.exit ] ; 7 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = icmp eq ptr %i.ap, %i.an
  br i1 %i.ar, label %.thread132, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1 ; 3 uses
  %i.at = load i8, ptr %i.ap, align 1, !noalias !50088, !noundef !28 ; 5 uses
  %i.au = icmp sgt i8 %i.at, -1
  br i1 %i.au, label %bb.j, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i: ; preds = %bb.i
  %i.av = and i8 %i.at, 31
  %i.aw = zext nneg i8 %i.av to i32               ; 3 uses
  %i.ax = icmp ne ptr %i.as, %i.an
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 2 ; 3 uses
  %i.az = load i8, ptr %i.as, align 1, !noalias !50088, !noundef !28
  %i.ba = shl nuw nsw i32 %i.aw, 6
  %i.bb = and i8 %i.az, 63
  %i.bc = zext nneg i8 %i.bb to i32               ; 2 uses
  %i.bd = or disjoint i32 %i.ba, %i.bc
  %i.be = icmp samesign ugt i8 %i.at, -33
  br i1 %i.be, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bf = zext nneg i8 %i.at to i32
  br label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.bg = icmp ne ptr %i.ay, %i.an
  tail call void @llvm.assume(i1 %i.bg)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ap, i64 3 ; 3 uses
  %i.bi = load i8, ptr %i.ay, align 1, !noalias !50088, !noundef !28
  %i.bj = shl nuw nsw i32 %i.bc, 6
  %i.bk = and i8 %i.bi, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl            ; 2 uses
  %i.bn = shl nuw nsw i32 %i.aw, 12
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = icmp samesign ugt i8 %i.at, -17
  br i1 %i.bp, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i
  %i.bq = icmp ne ptr %i.bh, %i.an
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.bs = load i8, ptr %i.bh, align 1, !noalias !50088, !noundef !28
  %i.bt = shl nuw nsw i32 %i.aw, 18
  %i.bu = and i32 %i.bt, 1835008
  %i.bv = shl nuw nsw i32 %i.bm, 6
  %i.bw = and i8 %i.bs, 63
  %i.bx = zext nneg i8 %i.bw to i32
  %i.by = or disjoint i32 %i.bv, %i.bx
  %i.bz = or disjoint i32 %i.by, %i.bu
  br label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i, %bb.j, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i
  %i.ca = phi ptr [ %i.bh, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i ], [ %i.ay, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i ], [ %i.as, %bb.j ] ; 2 uses
  %.sroa.4.0.i.ph.i.i.i.i.i = phi i32 [ %i.bo, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i.i.i ], [ %i.bz, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i.i.i ], [ %i.bf, %bb.j ] ; 2 uses
  %i.cb = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cc, %i.aq
  %i.ce = add i64 %i.cd, %i.ao                    ; 3 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i, label %bb.h [
    i32 32, label %bb.k
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str7patternINtB5_19MultiCharEqSearcherAcj2_ENtB5_8Searcher4nextCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.cf = sub nuw i64 %i.am, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ce
  br label %.thread132

.thread132:                                       ; preds = %bb.h, %bb.k
  %.sroa.49.0142 = phi i64 [ %i.ao, %bb.k ], [ %i.am, %bb.h ] ; 2 uses
  %.sroa.3.0.i = phi i64 [ %i.cf, %bb.k ], [ undef, %bb.h ]
  %.sroa.0.0.i84 = phi ptr [ %i.cg, %bb.k ], [ null, %bb.h ]
  %i.ch = icmp eq i64 %.sroa.49.0142, 0
  br i1 %i.ch, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread132
end_hunk_3
begin_hunk_4_@_RNvMNtCskXtk6F4WjxZ_4just8analyzerNtB2_8Analyzer8justfile:bb.a
bb.akm:                                           ; preds = %bb.akl
  %i.dvo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val637 = load ptr, ptr %i.dvo, align 8, !nonnull !28, !noundef !28
  %i.dvp = shl nuw i64 %.val636, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val637, i64 noundef %i.dvp, i64 noundef range(i64 1, -9223372036854775807) 8) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1e_21unresolved_dependency20UnresolvedDependencyEEEB1e_.exit1528

bb.akn:                                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableNtNtBG_3set3SetEEBG_.exit5857, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1e_21unresolved_dependency20UnresolvedDependencyEEEB1e_.exit1528
  %cond = icmp eq i8 %.sroa.0190.36, 0
  br i1 %cond, label %bb.ajm, label %bb.akq

bb.ako:                                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1e_21unresolved_dependency20UnresolvedDependencyEEEB1e_.exit1528
  %i.dvq = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.experimental.noalias.scope.decl(metadata !52358)
  call void @llvm.experimental.noalias.scope.decl(metadata !52359)
  call void @llvm.experimental.noalias.scope.decl(metadata !52360)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52361
  %.sroa.06.0.copyload.i.i.i5841 = load ptr, ptr %i.dvq, align 8, !alias.scope !52361 ; 3 uses
  %.not.i.i.i5842 = icmp eq ptr %.sroa.06.0.copyload.i.i.i5841, null
  br i1 %.not.i.i.i5842, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReNtNtCskXtk6F4WjxZ_4just3set3SetEEB1G_.exit.i5853, label %bb.akp

bb.akp:                                           ; preds = %bb.ako
  %.sroa.58.0..sroa_idx.i.i.i5843 = getelementptr inbounds nuw i8, ptr %1, i64 160
  %.sroa.58.0.copyload.i.i.i5844 = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i5843, align 8, !alias.scope !52361
  %.sroa.47.0..sroa_idx.i.i.i5845 = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.47.0.copyload.i.i.i5846 = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i5845, align 8, !alias.scope !52361 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i5847 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i5847, align 8, !noalias !52361
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5848 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i5841, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5848, align 8, !noalias !52361
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5849 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i5846, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5849, align 8, !noalias !52361
  %.sroa.616.0..sroa_idx.i.i.i5850 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i5850, align 8, !noalias !52361
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5851 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i5841, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5851, align 8, !noalias !52361
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5852 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i5846, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5852, align 8, !noalias !52361
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReNtNtCskXtk6F4WjxZ_4just3set3SetEEB1G_.exit.i5853

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReNtNtCskXtk6F4WjxZ_4just3set3SetEEB1G_.exit.i5853: ; preds = %bb.akp, %bb.ako
  %.sink31.i.i.i5854 = phi i64 [ 1, %bb.akp ], [ 0, %bb.ako ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i5855 = phi i64 [ %.sroa.58.0.copyload.i.i.i5844, %bb.akp ], [ 0, %bb.ako ]
  store i64 %.sink31.i.i.i5854, ptr %i.c, align 8, !noalias !52361
  %i.dvr = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sink31.i.i.i5854, ptr %i.dvr, align 8, !noalias !52361
  %i.dvs = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i5855, ptr %i.dvs, align 8, !noalias !52361
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8IntoIterReNtNtCskXtk6F4WjxZ_4just3set3SetEEB1G_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.c)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableNtNtBG_3set3SetEEBG_.exit5857 unwind label %.loopexit.split-lp5938.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCskXtk6F4WjxZ_4just5table5TableNtNtBG_3set3SetEEBG_.exit5857: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReNtNtCskXtk6F4WjxZ_4just3set3SetEEB1G_.exit.i5853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52361
  br label %bb.akn

bb.akq:                                           ; preds = %bb.akn
  %i.dvt = getelementptr inbounds nuw i8, ptr %1, i64 168
  call void @llvm.experimental.noalias.scope.decl(metadata !52362)
  call void @llvm.experimental.noalias.scope.decl(metadata !52363)
  call void @llvm.experimental.noalias.scope.decl(metadata !52364)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52365
  %.sroa.06.0.copyload.i.i.i5858 = load ptr, ptr %i.dvt, align 8, !alias.scope !52365 ; 3 uses
  %.not.i.i.i5859 = icmp eq ptr %.sroa.06.0.copyload.i.i.i5858, null
  br i1 %.not.i.i.i5859, label %bb.aks, label %bb.akr

bb.akr:                                           ; preds = %bb.akq
  %.sroa.58.0..sroa_idx.i.i.i5860 = getelementptr inbounds nuw i8, ptr %1, i64 184
  %.sroa.58.0.copyload.i.i.i5861 = load i64, ptr %.sroa.58.0..sroa_idx.i.i.i5860, align 8, !alias.scope !52365
  %.sroa.47.0..sroa_idx.i.i.i5862 = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.47.0.copyload.i.i.i5863 = load i64, ptr %.sroa.47.0..sroa_idx.i.i.i5862, align 8, !alias.scope !52365 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i.i5864 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i5864, align 8, !noalias !52365
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5865 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.06.0.copyload.i.i.i5858, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5865, align 8, !noalias !52365
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5866 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.47.0.copyload.i.i.i5863, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i5866, align 8, !noalias !52365
  %.sroa.616.0..sroa_idx.i.i.i5867 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i5867, align 8, !noalias !52365
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5868 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.06.0.copyload.i.i.i5858, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5868, align 8, !noalias !52365
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5869 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.47.0.copyload.i.i.i5863, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i5869, align 8, !noalias !52365
  br label %bb.aks

bb.aks:                                           ; preds = %bb.akr, %bb.akq
  %.sink31.i.i.i5870 = phi i64 [ 1, %bb.akr ], [ 0, %bb.akq ] ; 2 uses
  %.sroa.58.0.copyload.sink.i.i.i5871 = phi i64 [ %.sroa.58.0.copyload.i.i.i5861, %bb.akr ], [ 0, %bb.akq ]
  store i64 %.sink31.i.i.i5870, ptr %i.b, align 8, !noalias !52365
  %i.dvu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sink31.i.i.i5870, ptr %i.dvu, align 8, !noalias !52365
  %i.dvv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %.sroa.58.0.copyload.sink.i.i.i5871, ptr %i.dvv, align 8, !noalias !52365
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52366
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc5880 unwind label %.loopexit.split-lp5938.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5880:                                       ; preds = %bb.aks
  %i.dvw = load ptr, ptr %i.a, align 8, !noalias !52366, !noundef !28 ; 2 uses
  %.not5.i.i.i.i.i5872 = icmp eq ptr %i.dvw, null
  br i1 %.not5.i.i.i.i.i5872, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just.exit5882, label %.lr.ph.i.i.i.i.i5873

.lr.ph.i.i.i.i.i5873:                             ; preds = %.noexc5880
  %.sroa.43.0..sroa_idx.i.i.i.i.i5874 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.akt

bb.akt:                                           ; preds = %.noexc5881, %.lr.ph.i.i.i.i.i5873
  %i.dvx = phi ptr [ %i.dvw, %.lr.ph.i.i.i.i.i5873 ], [ %i.dwc, %.noexc5881 ]
  %.sroa.43.0.copyload.i.i.i.i.i5875 = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i5874, align 8, !noalias !52366
  %i.dvy = getelementptr inbounds nuw i8, ptr %i.dvx, i64 8
  %i.dvz = getelementptr inbounds nuw [24 x i8], ptr %i.dvy, i64 %.sroa.43.0.copyload.i.i.i.i.i5875 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52367)
  call void @llvm.experimental.noalias.scope.decl(metadata !52368)
  %.val.i.i.i.i.i.i.i.i5876 = load i64, ptr %i.dvz, align 8, !alias.scope !52369, !noalias !52366 ; 2 uses
  %i.dwa = icmp eq i64 %.val.i.i.i.i.i.i.i.i5876, 0
  br i1 %i.dwa, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i5878, label %bb.aku

bb.aku:                                           ; preds = %bb.akt
  %i.dwb = getelementptr inbounds nuw i8, ptr %i.dvz, i64 8
  %.val1.i.i.i.i.i.i.i.i5877 = load ptr, ptr %i.dwb, align 8, !alias.scope !52369, !noalias !52366, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i5877, i64 noundef %.val.i.i.i.i.i.i.i.i5876, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !52370
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i5878

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i5878: ; preds = %bb.aku, %bb.akt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52366
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52366
  invoke fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.noexc5881 unwind label %.loopexit.split-lp5938.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5881:                                       ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i5878
  %i.dwc = load ptr, ptr %i.a, align 8, !noalias !52366, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i5879 = icmp eq ptr %i.dwc, null
  br i1 %.not.i.i.i.i.i5879, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just.exit5882, label %bb.akt

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtBK_6string6StringEECskXtk6F4WjxZ_4just.exit5882: ; preds = %.noexc5881, %.noexc5880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52365
  br label %bb.ajm
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8compilerNtB2_8Compiler12expand_tilde(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.not.i = icmp samesign ult i64 %2, 2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.d = load i16, ptr %1, align 1
  %i.e = icmp ne i16 12158, %i.d
  %i.f = zext i1 %i.e to i32
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %.thread68

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %.thread74, label %.thread68

.thread68:                                        ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit, %bb.b
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !52395
  %i.i = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !52395 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, label %bb.d

bb.c:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvCsdvFltuGLW3z_4dirs8home_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 52, ptr %i.a, align 8
  %i.k = load i64, ptr %i.b, align 8, !range !37, !noundef !28 ; 5 uses
  %.not37 = icmp eq i64 %i.k, -1
  br i1 %.not37, label %bb.i, label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %.thread68
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %2) #71
  unreachable

.thread74:                                        ; preds = %bb.b, %bb.d
  %i.l = phi ptr [ %i.i, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  store i64 %2, ptr %i.c, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %2, ptr %.sroa.533.0..sroa_idx, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit42

bb.d:                                             ; preds = %.thread68
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %.thread74

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit42: ; preds = %bb.n, %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinReECskXtk6F4WjxZ_4just.exit, %.thread74
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.o = add nsw i64 %2, -2                       ; 4 uses
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.461.0.copyload = load ptr, ptr %.sroa.461.0..sroa_idx, align 8 ; 4 uses
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.562.0.copyload = load i64, ptr %.sroa.562.0..sroa_idx, align 8
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.461.0.copyload) ]
  %i.p = getelementptr i8, ptr %1, i64 %2
  %i.q = ptrtoint ptr %i.p to i64
  %invariant.op.i.i = sub i64 %i.o, %i.q
  %i.r = add nsw i64 %2, -3
  %i.s = add nsw i64 %2, -4
  %i.t = add nsw i64 %2, -5
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i, %bb.e
  %.reass5.i.i = phi i64 [ %.reass.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ 0, %bb.e ] ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass5.i.i ; 5 uses
  %i.v = icmp samesign eq i64 %.reass5.i.i, %i.o
  br i1 %i.v, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.u, align 1, !alias.scope !52396, !noalias !52397, !noundef !28 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.h, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i: ; preds = %bb.g
  %i.z = and i8 %i.x, 31
  %i.aa = zext nneg i8 %i.z to i32                ; 3 uses
  %i.ab = icmp ne i64 %.reass5.i.i, %i.r
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 2 ; 2 uses
  %i.ad = load i8, ptr %i.w, align 1, !alias.scope !52396, !noalias !52397, !noundef !28
  %i.ae = shl nuw nsw i32 %i.aa, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = icmp samesign ugt i8 %i.x, -33
  br i1 %i.ai, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.aj = zext nneg i8 %i.x to i32
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i
  %i.ak = icmp ne i64 %.reass5.i.i, %i.s
  call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 3 ; 2 uses
  %i.am = load i8, ptr %i.ac, align 1, !alias.scope !52396, !noalias !52397, !noundef !28
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.aa, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.x, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i
  %i.au = icmp ne i64 %.reass5.i.i, %i.t
  call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aw = load i8, ptr %i.al, align 1, !alias.scope !52396, !noalias !52397, !noundef !28
  %i.ax = shl nuw nsw i32 %i.aa, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.aq, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i, %bb.h, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.ac, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i ], [ %i.al, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i ], [ %i.av, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i ], [ %i.w, %bb.h ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.ah, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12.i.i.i.i ], [ %i.as, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit14.i.i.i.i ], [ %i.bd, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit16.i.i.i.i ], [ %i.aj, %bb.h ] ; 2 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  call void @llvm.assume(i1 %i.be)
  %i.bf = ptrtoint ptr %.sroa.0.0.ph.i.i.i to i64
  %.reass.i.i = add i64 %invariant.op.i.i, %i.bf
  %.not.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i, 47
  br i1 %.not.i.i, label %bb.f, label %bb.m

bb.i:                                             ; preds = %bb.c
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.414.sroa.0.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.414.sroa.4.0.copyload = load ptr, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.414.sroa.5.0.copyload = load i64, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 52, ptr %0, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.414.sroa.0.0.copyload, ptr %.sroa.423.0..sroa_idx, align 8
  %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.414.sroa.4.0.copyload, ptr %.sroa.423.sroa.4.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.414.sroa.5.0.copyload, ptr %.sroa.423.sroa.5.0..sroa.423.0..sroa_idx.sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.k:                                             ; preds = %bb.m
  %i.bg = landingpad { ptr, i32 }
          cleanup
  %i.bh = icmp eq i64 %i.k, 0
  br i1 %i.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.461.0.copyload, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !52398
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.m:                                             ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i, %bb.f
  %.sroa.0.0.i39 = phi i64 [ %.reass5.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ %i.o, %bb.f ] ; 2 uses
  %i.bi = sub nuw i64 %i.o, %.sroa.0.0.i39
  %i.bj = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.0.0.i39
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.461.0.copyload, i64 noundef %.sroa.562.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bj, i64 noundef %i.bi)
          to label %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinReECskXtk6F4WjxZ_4just.exit unwind label %bb.k

_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinReECskXtk6F4WjxZ_4just.exit: ; preds = %bb.m
  %i.bk = icmp eq i64 %i.k, 0
  br i1 %i.bk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit42, label %bb.n

bb.n:                                             ; preds = %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinReECskXtk6F4WjxZ_4just.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.461.0.copyload, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !52399
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit42

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %bb.l, %bb.k
  resume { ptr, i32 } %i.bg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8compilerNtB2_8Compiler7compile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(1024) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr nofree noundef nonnull align 8 captures(none) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [64 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [208 x i8], align 8               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [56 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [80 x i8], align 8                ; 12 uses
  %i.r = alloca [24 x i8], align 8                ; 14 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 4 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 4 uses
  %i.w = alloca [64 x i8], align 8                ; 4 uses
  %i.x = alloca [64 x i8], align 8                ; 4 uses
  %i.y = alloca [64 x i8], align 8                ; 4 uses
  %i.z = alloca [64 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 7 uses
  %i.ae = alloca [40 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 8 uses
  %i.ah = alloca [40 x i8], align 8               ; 13 uses
  %i.ai = alloca [48 x i8], align 8               ; 10 uses
  %i.aj = alloca [16 x i8], align 8               ; 12 uses
  %i.ak = alloca [8 x i8], align 8                ; 5 uses
  %i.al = alloca [24 x i8], align 8               ; 13 uses
  %i.am = alloca [72 x i8], align 8               ; 16 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [32 x i8], align 8               ; 11 uses
  %i.ar = alloca [24 x i8], align 8               ; 10 uses
  %i.as = alloca [16 x i8], align 8               ; 9 uses
  %i.at = alloca [16 x i8], align 8               ; 5 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [24 x i8], align 8               ; 6 uses
  %i.ax = alloca [24 x i8], align 8               ; 10 uses
  %i.ay = alloca [24 x i8], align 8               ; 6 uses
  %i.az = alloca [104 x i8], align 8              ; 11 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [24 x i8], align 8               ; 10 uses
  %i.bc = alloca [24 x i8], align 8               ; 20 uses
  %i.bd = alloca [16 x i8], align 8               ; 8 uses
  %i.be = alloca [24 x i8], align 8               ; 6 uses
  %i.bf = alloca [32 x i8], align 8               ; 8 uses
  %i.bg = alloca [56 x i8], align 8               ; 7 uses
  %i.bh = alloca [24 x i8], align 8               ; 8 uses
  %i.bi = alloca [64 x i8], align 8               ; 4 uses
  %i.bj = alloca [64 x i8], align 8               ; 4 uses
end_hunk_4
begin_hunk_5_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand3run:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ah = icmp eq i64 %6, 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.aj = shl nuw nsw i64 %6, 4                   ; 5 uses
  %.sroa.421.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.al = trunc nuw i8 %.val46 to i1
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 976
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 544
  %i.ao = load i8, ptr %i.an, align 8, !range !103
  %i.ap = icmp samesign ugt i8 %i.ao, 1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.3.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %4, i64 112 ; 2 uses
  %xtraiter = and i64 %6, 1
  %i.av = icmp eq i64 %6, 1
  %unroll_iter = and i64 %6, 576460752303423486
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod340 = trunc i64 %6 to i1
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1222) #71
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.bl, %bb.e
  unreachable

bb.g:                                             ; preds = %.preheader, %bb.bw
  %i.aw = load i8, ptr %i.aa, align 8, !range !40, !noundef !28
  %i.ax = trunc nuw i8 %i.aw to i1
  %.sroa.01.0 = select i1 %i.ax, i1 %switch107, i1 false
  call void @llvm.experimental.noalias.scope.decl(metadata !66107)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !66108
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i64 0, ptr %i.h, align 8, !noalias !66108
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66108
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66108
  store i8 0, ptr %i.ak, align 8, !noalias !66108
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ay = load ptr, ptr %i.af, align 8, !alias.scope !66107, !noalias !66109, !nonnull !28, !noundef !28 ; 4 uses
  %i.az = load i64, ptr %i.ag, align 8, !alias.scope !66107, !noalias !66109, !noundef !28 ; 9 uses
  %i.ba = icmp samesign ult i64 %i.az, 16
  br i1 %i.ba, label %.preheader.i.i.i.i, label %bb.j

.preheader.i.i.i.i:                               ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.bb = invoke { i64, i64 } @_RNvNtNtCsj6eKBz9Db1c_4core5slice6memchr14memchr_aligned(i8 noundef 58, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ay, i64 noundef range(i64 0, -9223372036854775808) %i.az)
          to label %.noexc49 unwind label %.loopexit109 ; 2 uses

.noexc49:                                         ; preds = %bb.j
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = trunc nuw i64 %i.bc to i1
  br i1 %i.be, label %.loopexit.i, label %.loopexit35.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.k
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.bi, %bb.k ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %.sroa.04.011.i.i.i.i
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !66110, !noalias !66108, !noundef !28
  %i.bh = icmp eq i8 %i.bg, 58
  br i1 %i.bh, label %.loopexit.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bi = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bi, %i.az
  br i1 %exitcond.not.i.i.i.i, label %.loopexit35.i, label %.lr.ph.i.i.i.i

bb.l:                                             ; preds = %bb.r, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i, %bb.h
  %i.bj = phi i64 [ %i.ch, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i ], [ %i.cr, %bb.r ], [ 0, %bb.h ] ; 7 uses
  %i.bk = invoke fastcc noundef align 8 ptr @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile9submodule(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(904) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.h)
          to label %bb.s unwind label %bb.ac, !noalias !66111 ; 2 uses

.loopexit35.i:                                    ; preds = %bb.k, %.noexc49, %.preheader.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !66108
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !66112
  %i.bl = call noundef align 8 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.aj, i64 noundef range(i64 1, 9) 8) #70, !noalias !66112 ; 8 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.m, label %.preheader.i.i.i38.i.preheader

.preheader.i.i.i38.i.preheader:                   ; preds = %.loopexit35.i
  br i1 %i.av, label %.preheader.i.i.i38.i.epil.preheader, label %.preheader.i.i.i38.i

bb.m:                                             ; preds = %.loopexit35.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.aj) #71
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.m
  unreachable

.preheader.i.i.i38.i:                             ; preds = %.preheader.i.i.i38.i.preheader, %.preheader.i.i.i38.i
  %i.bn = phi i64 [ %i.bz, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i.i.i38.i ], [ 0, %.preheader.i.i.i38.i.preheader ]
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bn ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val15.i.i.i.i.i.i.i = load ptr, ptr %i.bp, align 8, !alias.scope !66107, !noalias !66113, !nonnull !28, !noundef !28
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %.val16.i.i.i.i.i.i.i = load i64, ptr %i.bq, align 8, !alias.scope !66107, !noalias !66113, !noundef !28
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bn ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i, ptr %i.br, align 8, !noalias !66114, !captures !36
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %.val16.i.i.i.i.i.i.i, ptr %i.bs, align 8, !noalias !66115
  %i.bt = or disjoint i64 %i.bn, 1                ; 2 uses
  %i.bu = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %i.bt ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %.val15.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bv, align 8, !alias.scope !66107, !noalias !66113, !nonnull !28, !noundef !28
  %i.bw = getelementptr i8, ptr %i.bu, i64 16
  %.val16.i.i.i.i.i.i.i.1 = load i64, ptr %i.bw, align 8, !alias.scope !66107, !noalias !66113, !noundef !28
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bt ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.1, ptr %i.bx, align 8, !noalias !66114, !captures !36
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.1, ptr %i.by, align 8, !noalias !66115
  %i.bz = add nuw i64 %i.bn, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, label %.preheader.i.i.i38.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa: ; preds = %.preheader.i.i.i38.i
  br i1 %lcmp.mod.not, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i, label %.preheader.i.i.i38.i.epil.preheader

.preheader.i.i.i38.i.epil.preheader:              ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i38.i.preheader ], [ %i.bz, %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod340)
  %i.ca = getelementptr inbounds nuw [24 x i8], ptr %5, i64 %.epil.init ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %.val15.i.i.i.i.i.i.i.epil = load ptr, ptr %i.cb, align 8, !alias.scope !66107, !noalias !66113, !nonnull !28, !noundef !28
  %i.cc = getelementptr i8, ptr %i.ca, i64 16
  %.val16.i.i.i.i.i.i.i.epil = load i64, ptr %i.cc, align 8, !alias.scope !66107, !noalias !66113, !noundef !28
  %i.cd = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.epil.init ; 2 uses
  store ptr %.val15.i.i.i.i.i.i.i.epil, ptr %i.cd, align 8, !noalias !66114, !captures !36
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 %.val16.i.i.i.i.i.i.i.epil, ptr %i.ce, align 8, !noalias !66115
  br label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i.unr-lcssa, %.preheader.i.i.i38.i.epil.preheader
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.bl, i64 noundef range(i64 0, 384307168202282326) %6)
          to label %bb.o unwind label %bb.n, !noalias !66108

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i, %.noexc49
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.bd, %.noexc49 ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.cf = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.az
  call void @llvm.assume(i1 %i.cf)
  br i1 %i.ah, label %bb.p, label %bb.ae

bb.n:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66108
  br label %.body

bb.o:                                             ; preds = %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtB8_6string6StringENvMB2R_B2P_6as_strEE9from_iterCskXtk6F4WjxZ_4just.exit.i
  %i.ch = load i64, ptr %i.f, align 8, !range !37, !noalias !66108, !noundef !28 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, -1
  br i1 %i.ci, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66108
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66108
  br label %bb.ae

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit39.i: ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.421.0..sroa_idx.i, i64 24, i1 false), !noalias !66108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !66108
  store i64 %i.ch, ptr %i.h, align 8, !noalias !66108
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bl, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66108
  br label %bb.l

bb.p:                                             ; preds = %.loopexit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !66108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !66116
  %.not.i.i.i = icmp samesign ult i64 %i.az, 2
  br i1 %.not.i.i.i, label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.p
  %i.cj = getelementptr i8, ptr %i.ay, i64 %i.az
  %i.ck = getelementptr i8, ptr %i.cj, i64 -2
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = icmp ne i16 14906, %i.cl
  %i.cn = zext i1 %i.cm to i32
  %bcmp.i.i.fr.i.i = freeze i32 %i.cn
  %i.co = icmp eq i32 %bcmp.i.i.fr.i.i, 0
  %i.cp = add nsw i64 %i.az, -2
  %spec.select.i.i = select i1 %i.co, i64 %i.cp, i64 %i.az
  br label %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i

_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.p
  %i.cq = phi i64 [ 1, %bb.p ], [ %spec.select.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ]
  store ptr %i.ay, ptr %i.e, align 8, !noalias !66116
  store i64 %i.cq, ptr %i.ai, align 8, !noalias !66116
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathINtNtCsj6eKBz9Db1c_4core7convert7TryFromRSReE8try_from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.e, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit109

.noexc51:                                         ; preds = %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !66116
  %i.cr = load i64, ptr %i.g, align 8, !range !37, !noalias !66108, !noundef !28 ; 3 uses
  %i.cs = icmp eq i64 %i.cr, -1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66108
  br label %bb.ae

bb.r:                                             ; preds = %.noexc51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.419.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.413.0..sroa_idx.i, i64 24, i1 false), !noalias !66108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !66108
  store i64 %i.cr, ptr %i.h, align 8, !noalias !66108
  br label %bb.l

bb.s:                                             ; preds = %bb.l
  %.not30.i = icmp eq ptr %i.bk, null
  br i1 %.not30.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  br i1 %i.al, label %bb.y, label %bb.x

bb.u:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !66117)
  call void @llvm.experimental.noalias.scope.decl(metadata !66118)
  %.val.i.i.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !alias.scope !66119, !noalias !66108, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !66119, !noalias !66108, !noundef !28 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66120)
  %i.ct = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ct, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.u, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i = phi i64 [ %i.cv, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ 0, %bb.u ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.0.010.i.i.i.i.i ; 2 uses
  %i.cv = add nuw nsw i64 %.sroa.0.010.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66121)
  call void @llvm.experimental.noalias.scope.decl(metadata !66122)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.cu, align 8, !alias.scope !66123, !noalias !66124 ; 2 uses
  %i.cw = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !66123, !noalias !66124, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66125
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i.i.i.i.i
  %i.cy = icmp eq i64 %i.cv, %.val1.i.i.i
  br i1 %i.cy, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.u
  %i.cz = icmp eq i64 %i.bj, 0
  br i1 %i.cz, label %bb.ae, label %bb.w

bb.w:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.da = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.da, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66124
  br label %bb.ae

bb.x:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.bk, i64 386
  %i.dc = load i8, ptr %i.db, align 2, !range !40, !noalias !66111, !noundef !28
  %i.dd = trunc nuw i8 %i.dc to i1
  %.sroa.77.0.copyload.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66108 ; 4 uses
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66108 ; 3 uses
  br i1 %i.dd, label %.loopexit110, label %bb.z

bb.y:                                             ; preds = %bb.t
  %.sroa.77.0.copyload9.i = load ptr, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !66108
  %.sroa.8.0.copyload13.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !66108
  br label %.loopexit110

bb.z:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.77.0.copyload.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !66126)
  %i.de = icmp eq i64 %.sroa.8.0.copyload.i, 0
  br i1 %i.de, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

.lr.ph.i.i.i.i53.i:                               ; preds = %bb.z, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i
  %.sroa.0.010.i.i.i.i54.i = phi i64 [ %i.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i ], [ 0, %bb.z ] ; 2 uses
  %i.df = getelementptr inbounds nuw [24 x i8], ptr %.sroa.77.0.copyload.i, i64 %.sroa.0.010.i.i.i.i54.i ; 2 uses
  %i.dg = add nuw nsw i64 %.sroa.0.010.i.i.i.i54.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66127)
  call void @llvm.experimental.noalias.scope.decl(metadata !66128)
  %.val.i.i.i.i.i.i55.i = load i64, ptr %i.df, align 8, !alias.scope !66129, !noalias !66130 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i.i.i.i.i55.i, 0
  br i1 %i.dh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i.i.i53.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.val1.i.i.i.i.i.i56.i = load ptr, ptr %i.di, align 8, !alias.scope !66129, !noalias !66130, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i56.i, i64 noundef %.val.i.i.i.i.i.i55.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66131
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i: ; preds = %bb.aa, %.lr.ph.i.i.i.i53.i
  %i.dj = icmp eq i64 %i.dg, %.sroa.8.0.copyload.i
  br i1 %i.dj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, label %.lr.ph.i.i.i.i53.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i57.i, %bb.z
  %i.dk = icmp eq i64 %i.bj, 0
  br i1 %i.dk, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i
  %i.dl = mul nuw i64 %i.bj, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.77.0.copyload.i, i64 noundef %i.dl, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !66130
  br label %bb.ae

bb.ac:                                            ; preds = %bb.l
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h) #72, !noalias !66111
  br label %.body

.body:                                            ; preds = %.loopexit109, %.loopexit.split-lp, %bb.af, %bb.ax, %bb.ac, %bb.n, %.thread99
  %.pn36 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ax ], [ %i.do, %bb.af ], [ %.pn3198, %.thread99 ], [ %i.cg, %bb.n ], [ %i.dm, %bb.ac ], [ %lpad.loopexit, %.loopexit109 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66132)
  call void @llvm.experimental.noalias.scope.decl(metadata !66133)
  %.val.i.i = load i64, ptr %i.r, align 8, !alias.scope !66134 ; 2 uses
  %i.dn = icmp eq i64 %.val.i.i, 0
  br i1 %i.dn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, label %bb.ad

bb.ad:                                            ; preds = %.body
  %.val1.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !66135, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66136
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit

.loopexit109:                                     ; preds = %bb.ae, %bb.bv, %bb.j, %_RNvMNtCskXtk6F4WjxZ_4just10modulepathNtB2_10Modulepath13from_argument.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bx, %bb.ce, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit110:                                     ; preds = %bb.x, %bb.y
  %.sroa.12.0 = phi i64 [ %.sroa.8.0.copyload13.i, %bb.y ], [ %.sroa.8.0.copyload.i, %bb.x ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %.sroa.77.0.copyload9.i, %bb.y ], [ %.sroa.77.0.copyload.i, %bb.x ] ; 3 uses
  %.sroa.9.0.copyload.i = load i64, ptr %i.ak, align 8, !noalias !66108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !66108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 %i.bj, ptr %i.q, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %.sroa.9.0.copyload.i, ptr %.sroa.13.0..sroa_idx, align 8
  invoke fastcc void @_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand4list(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.q)
          to label %bb.ag unwind label %bb.af

bb.ae:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i.i, %bb.w, %.loopexit.i, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i58.i, %bb.ab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecReEECskXtk6F4WjxZ_4just.exit40.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !66108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just8justfileNtB2_8Justfile3run(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(904) %4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am)
          to label %bb.am unwind label %.loopexit109

bb.af:                                            ; preds = %.loopexit110
  %i.do = landingpad { ptr, i32 }
          cleanup
  call void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q) #72
  br label %.body

bb.ag:                                            ; preds = %.loopexit110
  call void @llvm.experimental.noalias.scope.decl(metadata !66137)
  %i.dp = icmp eq i64 %.sroa.12.0, 0
  br i1 %i.dp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i.i.i54

.lr.ph.i.i.i.i54:                                 ; preds = %bb.ag, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i
  %.sroa.0.010.i.i.i.i = phi i64 [ %i.dr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ 0, %bb.ag ] ; 2 uses
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %.sroa.11.0, i64 %.sroa.0.010.i.i.i.i ; 2 uses
  %i.dr = add nuw nsw i64 %.sroa.0.010.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !66138)
  call void @llvm.experimental.noalias.scope.decl(metadata !66139)
  %.val.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !alias.scope !66140, !noalias !66141 ; 2 uses
  %i.ds = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i54
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !66140, !noalias !66141, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !66142
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i54
  %i.du = icmp eq i64 %i.dr, %.sroa.12.0
  br i1 %i.du, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCskXtk6F4WjxZ_4just.exit.i.i, label %.lr.ph.i.i.i.i54
end_hunk_5
begin_hunk_6_@_RNvNtCskXtk6F4WjxZ_4just8function3env:bb.a
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.be, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 1, ptr %.sroa.568.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit58

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit58: ; preds = %bb.w, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit55, %_RNvXs3_NtCskXtk6F4WjxZ_4just5valueNtB5_5ValueINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4wP2HXfJTCR_5alloc6string6StringE4from.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.i

bb.o:                                             ; preds = %bb.j
  %.sroa.570.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.570.0.copyload = load ptr, ptr %.sroa.570.0..sroa_idx, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.570.0.copyload, i64 noundef %.sroa.8.0.copyload)
          to label %bb.s unwind label %bb.r

bb.p:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bj = icmp eq ptr %i.t, %i.n
  br i1 %i.bj, label %._crit_edge, label %bb.b

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.u, %bb.t, %bb.r
  %.pn = phi { ptr, i32 } [ %i.bl, %bb.r ], [ %i.bn, %bb.t ], [ %i.bn, %bb.u ] ; 2 uses
  %i.bk = icmp eq i64 %i.bd, 0
  br i1 %i.bk, label %common.resume, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.570.0.copyload, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !77436
  br label %common.resume

bb.r:                                             ; preds = %bb.o
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.i, ptr %i.e, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCs4wP2HXfJTCR_5alloc6string6StringNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.48.0..sroa_idx, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.bm, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsb_NtCs4wP2HXfJTCR_5alloc6borrowINtB5_3CoweENtNtCsj6eKBz9Db1c_4core3fmt7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @1335, ptr noundef nonnull %i.e)
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val41 = load i64, ptr %i.f, align 8, !range !37, !noundef !28 ; 2 uses
  %i.bo = icmp sgt i64 %.val41, 0
  br i1 %i.bo, label %bb.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit

bb.u:                                             ; preds = %bb.t
  %i.bp = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val42 = load ptr, ptr %i.bp, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val42, i64 noundef %.val41, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !77437
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit: ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.val39 = load i64, ptr %i.f, align 8, !range !37, !noundef !28 ; 2 uses
  %i.bq = icmp sgt i64 %.val39, 0
  br i1 %i.bq, label %bb.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit55

bb.v:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val40 = load ptr, ptr %i.br, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val40, i64 noundef %.val39, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !77438
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit55

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit55: ; preds = %bb.v, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %i.bt = icmp eq i64 %i.bd, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit58, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECskXtk6F4WjxZ_4just.exit55
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.570.0.copyload, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !77439
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit58

bb.x:                                             ; preds = %bb.aa, %.split, %bb.y, %bb.i
  ret void

bb.y:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.bu = getelementptr i8, ptr %3, i64 8
  %.val43 = load ptr, ptr %i.bu, align 8, !nonnull !28, !noundef !28
  %i.bv = getelementptr i8, ptr %3, i64 16
  %.val44 = load i64, ptr %i.bv, align 8, !noundef !28
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bw, ptr nonnull %.val43, i64 %.val44)
  store i64 0, ptr %0, align 8
  br label %bb.x

.split:                                           ; preds = %._crit_edge
  %i.bx = icmp ult i64 %i.m, 384307168202282326
  tail call void @llvm.assume(i1 %i.bx)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.m, ptr %i.by, align 8, !alias.scope !77440, !noalias !77441
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.bz, align 8, !alias.scope !77440, !noalias !77441
  store ptr @1336, ptr %i.d, align 8, !alias.scope !77440, !noalias !77441
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 20, ptr %i.ca, align 8, !alias.scope !77440, !noalias !77441
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i8 0, ptr %i.cb, align 8, !alias.scope !77440, !noalias !77441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @12, ptr %i.c, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 3, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.k, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.n, ptr %i.ce, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtCskXtk6F4WjxZ_4just5countNtB4_5CountNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt, ptr %.sroa.422.0..sroa_idx, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.cf, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs_NtCskXtk6F4WjxZ_4just4listINtB4_4ListINtNtB6_9enclosure9EnclosureRNtNtCs4wP2HXfJTCR_5alloc6string6StringEINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterB18_ENvMBI_BF_4tickEENtNtB1U_3fmt7Display3fmtB6_, ptr %.sroa.426.0..sroa_idx, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.cg, ptr noundef nonnull @1337, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 1, ptr %0, align 8
  br label %bb.x

.thread:                                          ; preds = %._crit_edge.thread
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !77442
  %i.ch = tail call noundef dereferenceable_or_null(47) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 47, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !77442 ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.thread
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 47) #71
  unreachable

bb.aa:                                            ; preds = %.thread
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.ch, ptr noundef nonnull align 1 dereferenceable(47) @1338, i64 47, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 47, ptr %i.cj, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ch, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 47, ptr %.sroa.518.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.x
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvNtCskXtk6F4WjxZ_4just8function3get(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %.not.i = icmp samesign ult i64 %1, 4
  br i1 %.not.i, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -4
  %i.i = load i32, ptr %i.h, align 1
  %i.j = icmp ne i32 1919509599, %i.i
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.split21, label %bb.b

bb.b:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit
  %.not.i110 = icmp samesign ult i64 %1, 11
  br i1 %.not.i110, label %.thread135, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit113

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit113: ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 -11      ; 2 uses
  %i.n = load i64, ptr %i.m, align 1
  %i.o = xor i64 8386105337361032287, %i.n
  %i.p = getelementptr i8, ptr %i.m, i64 3
  %i.q = load i64, ptr %i.p, align 1
  %i.r = xor i64 7311146993654325106, %i.q
  %i.s = or i64 %i.o, %i.r
  %i.t = icmp ne i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split, label %.thread135

.split21:                                         ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit
  %i.w = add nsw i64 %1, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %0, ptr %i.f, align 8, !captures !36
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.w, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.47.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @1340, ptr noundef nonnull %i.d), !noalias !77449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.0.0.copyload118 = load i64, ptr %i.e, align 8
  %.sroa.8.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.8.0.copyload120 = load ptr, ptr %.sroa.8.0..sroa_idx119, align 8
  %.sroa.12.0..sroa_idx121 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.12.0.copyload122 = load i64, ptr %.sroa.12.0..sroa_idx121, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.y = icmp eq i64 %1, 0
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit, label %.thread135

.thread135:                                       ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit113, %bb.b, %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !77450
  %i.z = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !77450 ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, label %bb.d

.split:                                           ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit113
  %i.ab = add nsw i64 %1, -11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8, !captures !36
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.ab, ptr %i.ac, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.413.0..sroa_idx, align 8
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @1339, ptr noundef nonnull %i.a), !noalias !77451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.12.0.copyload = load i64, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit: ; preds = %.thread135
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 %1) #71
  unreachable

bb.d:                                             ; preds = %.thread135
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr nonnull align 1 %0, i64 %1, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.split21, %.split
  %.sroa.12.0 = phi i64 [ %.sroa.12.0.copyload122, %.split21 ], [ %.sroa.12.0.copyload, %.split ], [ %1, %bb.d ]
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload120, %.split21 ], [ %.sroa.8.0.copyload, %.split ], [ %i.z, %bb.d ] ; 148 uses
  %.sroa.0.0128 = phi i64 [ %.sroa.0.0.copyload118, %.split21 ], [ %.sroa.0.0.copyload, %.split ], [ %1, %bb.d ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  switch i64 %.sroa.12.0, label %bb.ck [
    i64 13, label %bb.f
    i64 6, label %bb.g
    i64 4, label %bb.h
    i64 11, label %bb.j
    i64 15, label %bb.l
    i64 12, label %bb.m
    i64 10, label %bb.n
    i64 5, label %bb.p
    i64 16, label %bb.q
    i64 22, label %bb.r
    i64 14, label %bb.s
    i64 20, label %bb.t
    i64 8, label %bb.u
    i64 3, label %bb.x
    i64 7, label %bb.y
    i64 18, label %bb.z
    i64 9, label %bb.ac
    i64 27, label %bb.ah
    i64 2, label %bb.az
    i64 17, label %bb.bk
  ]

bb.f:                                             ; preds = %bb.e
  %i.ad = load i64, ptr %.sroa.8.0, align 1
  %i.ae = xor i64 %i.ad, 7310597203715908193
  %i.af = getelementptr i8, ptr %.sroa.8.0, i64 5
  %i.ag = load i64, ptr %i.af, align 1
  %i.ah = xor i64 %i.ag, 7526748012507657333
  %i.ai = or i64 %i.ae, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = zext i1 %i.aj to i32
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.cl, label %bb.ai

bb.g:                                             ; preds = %bb.e
  %i.am = load i32, ptr %.sroa.8.0, align 1
  %i.an = xor i32 %i.am, 1701867617
  %i.ao = getelementptr i8, ptr %.sroa.8.0, i64 4
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = xor i32 %i.aq, 25710
  %i.as = or i32 %i.an, %i.ar
  %i.at = icmp ne i32 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.cl, label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.aw = load i32, ptr %.sroa.8.0, align 1
  %i.ax = icmp ne i32 %i.aw, 1751347809
  %i.ay = zext i1 %i.ax to i32
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.cl, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ba = load i32, ptr %.sroa.8.0, align 1
  %i.bb = xor i32 %i.ba, 1801546850
  %i.bc = getelementptr i8, ptr %.sroa.8.0, i64 4
  %i.bd = load i16, ptr %i.bc, align 1
  %i.be = zext i16 %i.bd to i32
  %i.bf = xor i32 %i.be, 13157
  %i.bg = or i32 %i.bb, %i.bf
  %i.bh = icmp ne i32 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.cl, label %bb.o

bb.j:                                             ; preds = %bb.e
  %i.bk = load i64, ptr %.sroa.8.0, align 1
  %i.bl = xor i64 %i.bk, 7376671225342422114
  %i.bm = getelementptr i8, ptr %.sroa.8.0, i64 3
  %i.bn = load i64, ptr %i.bm, align 1
  %i.bo = xor i64 %i.bn, 7308332183720256875
  %i.bp = or i64 %i.bl, %i.bo
  %i.bq = icmp ne i64 %i.bp, 0
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %bb.cl, label %bb.av

bb.k:                                             ; preds = %bb.h
  %i.bt = load i32, ptr %.sroa.8.0, align 1
  %i.bu = icmp ne i32 %i.bt, 1819242338
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.cl, label %bb.aj

bb.l:                                             ; preds = %bb.e
  %i.bx = load i64, ptr %.sroa.8.0, align 1
  %i.by = xor i64 %i.bx, 7594299760801177955
  %i.bz = getelementptr i8, ptr %.sroa.8.0, i64 7
  %i.ca = load i64, ptr %i.bz, align 1
  %i.cb = xor i64 %i.ca, 8751179571608777321
  %i.cc = or i64 %i.by, %i.cb
  %i.cd = icmp ne i64 %i.cc, 0
  %i.ce = zext i1 %i.cd to i32
  %i.cf = icmp eq i32 %i.ce, 0
  br i1 %i.cf, label %bb.cl, label %bb.al

bb.m:                                             ; preds = %bb.e
  %i.cg = load i64, ptr %.sroa.8.0, align 1
  %i.ch = xor i64 %i.cg, 7017568567410188643
  %i.ci = getelementptr i8, ptr %.sroa.8.0, i64 8
  %i.cj = load i32, ptr %i.ci, align 1
  %i.ck = zext i32 %i.cj to i64
  %i.cl = xor i64 %i.ck, 1702521196
  %i.cm = or i64 %i.ch, %i.cl
  %i.cn = icmp ne i64 %i.cm, 0
  %i.co = zext i1 %i.cn to i32
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %bb.cl, label %bb.v

bb.n:                                             ; preds = %bb.e
  %i.cq = load i64, ptr %.sroa.8.0, align 1
  %i.cr = xor i64 %i.cq, 7596553824080257379
  %i.cs = getelementptr i8, ptr %.sroa.8.0, i64 8
  %i.ct = load i16, ptr %i.cs, align 1
  %i.cu = zext i16 %i.ct to i64
  %i.cv = xor i64 %i.cu, 25978
  %i.cw = or i64 %i.cr, %i.cv
  %i.cx = icmp ne i64 %i.cw, 0
  %i.cy = zext i1 %i.cx to i32
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.cl, label %bb.cc

bb.o:                                             ; preds = %bb.i
  %i.da = load i32, ptr %.sroa.8.0, align 1
  %i.db = xor i32 %i.da, 1869572195
  %i.dc = getelementptr i8, ptr %.sroa.8.0, i64 4
  %i.dd = load i16, ptr %i.dc, align 1
  %i.de = zext i16 %i.dd to i32
  %i.df = xor i32 %i.de, 25971
  %i.dg = or i32 %i.db, %i.df
  %i.dh = icmp ne i32 %i.dg, 0
  %i.di = zext i1 %i.dh to i32
end_hunk_6
begin_hunk_7_@_RNvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB2_10CommandExt12status_guard:bb.a
  store atomic i8 1, ptr %i.ce monotonic, align 1, !noalias !79113
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i47.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i47.i: ; preds = %bb.aj, %.noexc48.i, %bb.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just.exit.i
  %i.cj = atomicrmw xchg ptr %i.m, i32 0 release, align 4, !noalias !79113
  %i.ck = icmp eq i32 %i.cj, 2
  br i1 %i.ck, label %bb.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCskXtk6F4WjxZ_4just14signal_handler13SignalHandlerEEB1A_.exit50.i, !prof !44

bb.ak:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i47.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCskXtk6F4WjxZ_4just14signal_handler13SignalHandlerEEB1A_.exit50.i unwind label %.thread86.i, !noalias !79113

.thread100.i:                                     ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs4wP2HXfJTCR_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskXtk6F4WjxZ_4just.exit.i, %bb.j, %bb.g, %bb.f
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 4 dereferenceable(28) %i.j) #72, !noalias !79113
  br label %bb.al

.thread103.i:                                     ; preds = %bb.n, %bb.l
  %lpad.thr_comm.split-lp99.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread96.sink.split.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCskXtk6F4WjxZ_4just14signal_handler13SignalHandlerEEB1A_.exit50.i: ; preds = %bb.ak, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i47.i
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1), !noalias !79113
  br label %_RINvMNtCskXtk6F4WjxZ_4just14signal_handlerNtB3_13SignalHandler5spawnNtNtCsaKJjC64KgbL_3std7process10ExitStatusNCNvXNtB5_11command_extNtB16_7CommandNtB1P_10CommandExt12status_guard0EB5_.exit

bb.al:                                            ; preds = %.thread100.i, %.thread.i
  %.pn2165.i = phi { ptr, i32 } [ %i.p, %.thread.i ], [ %lpad.thr_comm.i, %.thread100.i ] ; 2 uses
  %.sroa.010.064.i = phi i1 [ true, %.thread.i ], [ %i.y, %.thread100.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCskXtk6F4WjxZ_4just14signal_handler13SignalHandlerEEB1A_(ptr nonnull %i.m, i8 %i.o) #72
          to label %bb.am unwind label %bb.ab, !noalias !79113

bb.am:                                            ; preds = %bb.al
  br i1 %.sroa.010.064.i, label %bb.an, label %.thread96.i

.thread96.sink.split.i:                           ; preds = %.thread103.i, %bb.h
  %.sink.i = phi ptr [ %i.j, %.thread103.i ], [ %i.b, %bb.h ]
  %.pn2389.ph.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp99.i, %.thread103.i ], [ %i.aa, %bb.h ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process5ChildECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 4 dereferenceable(28) %.sink.i) #72, !noalias !79113
  br label %.thread96.i

.thread96.i:                                      ; preds = %bb.an, %.thread96.sink.split.i, %bb.am, %.thread77.i
  %.pn2389.i = phi { ptr, i32 } [ %.pn2390.i, %bb.an ], [ %.pn2165.i, %bb.am ], [ %.pn81.i, %.thread77.i ], [ %.pn2389.ph.i, %.thread96.sink.split.i ]
  resume { ptr, i32 } %.pn2389.i

bb.an:                                            ; preds = %bb.am, %.thread86.i
  %.pn2390.i = phi { ptr, i32 } [ %i.l, %.thread86.i ], [ %.pn2165.i, %bb.am ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1) #72
          to label %.thread96.i unwind label %bb.ab, !noalias !79113

_RINvMNtCskXtk6F4WjxZ_4just14signal_handlerNtB3_13SignalHandler5spawnNtNtCsaKJjC64KgbL_3std7process10ExitStatusNCNvXNtB5_11command_extNtB16_7CommandNtB1P_10CommandExt12status_guard0EB5_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCskXtk6F4WjxZ_4just14signal_handler13SignalHandlerEEB1A_.exit46.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCskXtk6F4WjxZ_4just14signal_handler13SignalHandlerEEB1A_.exit50.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB2_10CommandExt19output_guard_stdout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(200) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %.sroa.7.sroa.5 = alloca [32 x i8], align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB2_10CommandExt12output_guard(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(200) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.5)
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 8 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load i32, ptr %i.d, align 8, !range !102, !noundef !28 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %i.g, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.475.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.sroa.5, i64 32, i1 false)
  store i64 %.sroa.0.0.copyload, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.7.sroa.0.0.copyload, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.i = load i32, ptr %i.h, align 8, !noundef !28 ; 2 uses
  %i.j = and i32 %i.i, 127                        ; 2 uses
  switch i32 %i.j, label %.sink.split.i [
    i32 0, label %bb.d
    i32 127, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.i, 8
  %i.l = and i32 %i.k, 255                        ; 2 uses
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RNvMNtCskXtk6F4WjxZ_4just12output_errorNtB2_11OutputError23result_from_exit_status.exit, label %bb.f

.sink.split.i:                                    ; preds = %bb.c
  br label %bb.f

bb.e:                                             ; preds = %bb.t, %_RNvMNtCskXtk6F4WjxZ_4just12output_errorNtB2_11OutputError23result_from_exit_status.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #72
  resume { ptr, i32 } %i.n

bb.f:                                             ; preds = %bb.d, %bb.c, %.sink.split.i
  %.sroa.0.0.ph = phi i32 [ undef, %bb.c ], [ %i.l, %bb.d ], [ %i.j, %.sink.split.i ]
  %.sink.i.ph = phi i8 [ 6, %bb.c ], [ 2, %bb.d ], [ 5, %.sink.split.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.ph, ptr %i.o, align 8
  %.sroa.5130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink.i.ph, ptr %.sroa.5130.0..sroa_idx, align 8
  br label %bb.l

_RNvMNtCskXtk6F4WjxZ_4just12output_errorNtB2_11OutputError23result_from_exit_status.exit: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0.copyload, i64 noundef %.sroa.7.sroa.0.0.copyload)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %_RNvMNtCskXtk6F4WjxZ_4just12output_errorNtB2_11OutputError23result_from_exit_status.exit
  %i.p = load i64, ptr %i.a, align 8, !range !41, !noundef !28
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.078.0.copyload = load ptr, ptr %i.r, align 8 ; 6 uses
  %.sroa.479.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.479.0.copyload = load i64, ptr %.sroa.479.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.q, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.078.0.copyload, ptr %i.s, align 8
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.479.0.copyload, ptr %.sroa.485.0..sroa_idx, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %.not95 = icmp eq i32 %i.e, 0
  br i1 %.not95, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.e, ptr %i.t, align 8
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 3, ptr %.sroa.442.0..sroa_idx, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %.not.i = icmp samesign ult i64 %.sroa.479.0.copyload, 2
  br i1 %.not.i, label %bb.p, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit

bb.l:                                             ; preds = %bb.j, %bb.h, %bb.f
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79143)
  %i.u = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.u, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !79144
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.m, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79145)
  %.val.i4.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79146 ; 2 uses
  %i.v = icmp eq i64 %.val.i4.i, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i5.i = load ptr, ptr %i.w, align 8, !alias.scope !79146, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %.val.i4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !79146
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit: ; preds = %bb.k
  %i.x = getelementptr i8, ptr %.sroa.078.0.copyload, i64 %.sroa.479.0.copyload
  %i.y = getelementptr i8, ptr %i.x, i64 -2
  %i.z = load i16, ptr %i.y, align 1
  %i.aa = icmp ne i16 2573, %i.z
  %i.ab = zext i1 %i.aa to i32
  %bcmp.i.i.fr = freeze i32 %i.ab
  %i.ac = icmp eq i32 %bcmp.i.i.fr, 0
  br i1 %i.ac, label %bb.o, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

bb.o:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit
  %i.ad = add nsw i64 %.sroa.479.0.copyload, -2
  br label %bb.q

bb.p:                                             ; preds = %bb.k
  %.not.i.i.i = icmp eq i64 %.sroa.479.0.copyload, 0
  br i1 %.not.i.i.i, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit, %bb.p
  %i.ae = getelementptr i8, ptr %.sroa.078.0.copyload, i64 %.sroa.479.0.copyload
  %i.af = getelementptr i8, ptr %i.ae, i64 -1
  %rhsc.i.i = load i8, ptr %i.af, align 1, !alias.scope !79147, !noalias !79148
  %rhsc.fr.i.i = freeze i8 %rhsc.i.i
  %i.ag = icmp eq i8 %rhsc.fr.i.i, 10
  %i.ah = add i64 %.sroa.479.0.copyload, -1
  %spec.select.i.i = select i1 %i.ag, ptr %.sroa.078.0.copyload, ptr null
  br label %bb.q

bb.q:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i, %bb.p, %bb.o
  %.pn4.i = phi ptr [ %.sroa.078.0.copyload, %bb.o ], [ %spec.select.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ], [ null, %bb.p ] ; 2 uses
  %.pn2.i = phi i64 [ %i.ad, %bb.o ], [ %i.ah, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCskXtk6F4WjxZ_4just.exit.i.i ], [ -1, %bb.p ]
  %.not96 = icmp eq ptr %.pn4.i, null             ; 2 uses
  %spec.select = select i1 %.not96, i64 %.sroa.479.0.copyload, i64 %.pn2.i ; 7 uses
  %spec.select98 = select i1 %.not96, ptr %.sroa.078.0.copyload, ptr %.pn4.i
  %.not.i100 = icmp slt i64 %spec.select, 0
  br i1 %.not.i100, label %bb.t, label %bb.r, !prof !42

bb.r:                                             ; preds = %bb.q
  %i.ai = icmp eq i64 %spec.select, 0
  br i1 %i.ai, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread150, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !79149
  %i.aj = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %spec.select, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !79149 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.q, %bb.s
  %.sroa.4133.0.ph = phi i64 [ 1, %bb.s ], [ 0, %bb.q ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4133.0.ph, i64 %spec.select) #71
          to label %bb.x unwind label %bb.e

_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread150: ; preds = %bb.r, %bb.w
  %i.al = phi ptr [ %i.aj, %bb.w ], [ inttoptr (i64 1 to ptr), %bb.r ]
  store i64 %spec.select, ptr %0, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %spec.select, ptr %.sroa.591.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79150)
  %i.am = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i104, label %bb.u

bb.u:                                             ; preds = %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread150
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !79151
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i104

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i104: ; preds = %bb.u, %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79152)
  %.val.i4.i105 = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79153 ; 2 uses
  %i.an = icmp eq i64 %.val.i4.i105, 0
  br i1 %i.an, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i104
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.val1.i5.i106 = load ptr, ptr %i.ao, align 8, !alias.scope !79153, !nonnull !28, !noundef !28
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i106, i64 noundef %.val.i4.i105, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !79153
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit

bb.w:                                             ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %spec.select98, i64 %spec.select, i1 false)
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit.thread150

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std7process6OutputECskXtk6F4WjxZ_4just.exit: ; preds = %bb.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i104, %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.5)
  ret void

bb.x:                                             ; preds = %bb.t
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCskXtk6F4WjxZ_4just13color_displayNtB2_7WrapperNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !28, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !28, !align !35, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !invariant.load !28, !nonnull !28
  %i.h = call noundef zeroext i1 %i.g(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a) #76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.h
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCskXtk6F4WjxZ_4just14string_literalNtB2_13StringLiteralNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(104) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 98
  %i.d = load i8, ptr %i.c, align 2, !range !40, !noundef !28
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 99
  %i.g = load i8, ptr %i.f, align 1, !range !111, !noundef !28
  %i.h = and i8 %i.g, -2
  %switch = icmp eq i8 %i.h, 2
  br i1 %switch, label %bb.i, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !28, !align !35, !noundef !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !28, !nonnull !28
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1447, i64 noundef 1) #76
  br i1 %i.n, label %bb.j, label %bb.b

bb.d:                                             ; preds = %bb.b, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79158)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !79158, !nonnull !28, !noundef !28 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !79158, !noundef !28 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !79158, !noundef !28 ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !79158, !noundef !28 ; 2 uses
  %i.w = add i64 %i.v, %i.t                       ; 5 uses
  %i.x = icmp ugt i64 %i.t, %i.w
  %i.y = icmp ugt i64 %i.w, %i.r
  %or.cond.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, label %bb.e, !prof !31

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i64 %i.t, %i.r
  br i1 %i.z, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.t, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.ab = icmp eq i64 %i.w, %i.r
  br i1 %i.ab, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  %i.ad = load i8, ptr %i.ac, align 1, !alias.scope !79159, !noalias !79158, !noundef !28
  %i.ae = icmp sgt i8 %i.ad, -65
  br i1 %i.ae, label %bb.g, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i: ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.w
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !79159, !noalias !79158, !noundef !28
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i, %bb.h, %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r, i64 noundef %i.t, i64 noundef %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75, !noalias !79158
  unreachable

_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit: ; preds = %bb.e, %bb.g, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t
  store ptr %i.ai, ptr %i.b, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.v, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCskXtk6F4WjxZ_4just, ptr %.sroa.428.0..sroa_idx, align 8
  %i.ak = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !28, !align !35, !noundef !28
  %i.an = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.am, ptr noundef nonnull @85, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.b
  %i.ao = load ptr, ptr %1, align 8, !nonnull !28, !noundef !28
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !28, !align !35, !noundef !28
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !28, !nonnull !28
  %i.at = tail call noundef zeroext i1 %i.as(ptr noundef nonnull %i.ao, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1448, i64 noundef 1) #76
  br i1 %i.at, label %bb.j, label %bb.d

bb.j:                                             ; preds = %bb.i, %bb.c, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit
  %.sroa.0.0 = phi i1 [ true, %bb.c ], [ %i.an, %_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme.exit ], [ true, %bb.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
end_hunk_7
