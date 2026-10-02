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
begin_hunk_1_@_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB38_6string6StringEECskXtk6F4WjxZ_4just:bb.a
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.i
  %i.ap = zext i16 %i.as to i64
  br label %bb.k

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.aq = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i, i64 272
  %i.as = load i16, ptr %i.ar, align 8, !noalias !30376 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 274
  %i.au = load i16, ptr %i.at, align 2, !noalias !30375, !noundef !28
  %i.av = icmp ult i16 %i.as, %i.au
  br i1 %i.av, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !30377

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ap, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ao, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aw = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ax = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ay = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, i64 288
  %i.ba = getelementptr [8 x i8], ptr %i.az, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter7 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod8.not = icmp eq i64 %xtraiter7, 0
  br i1 %lcmp.mod8.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.m, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bb, %.prol.preheader ], [ %i.ba, %bb.m ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, %bb.m ]
  %prol.iter9 = phi i64 [ %prol.iter9.next, %.prol.preheader ], [ 0, %bb.m ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !30378, !nonnull !28, !noundef !28 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.prol, i64 280 ; 2 uses
  %prol.iter9.next = add i64 %prol.iter9, 1       ; 2 uses
  %prol.iter9.cmp.not = icmp eq i64 %prol.iter9.next, %xtraiter7
  br i1 %prol.iter9.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30350

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.m
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.m ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ba, %bb.m ], [ %i.bb, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, %bb.m ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bc = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.bc, label %.loopexit.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.new ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i, i64 280
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.bd, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.1, i64 280
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.be, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.2, i64 280
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.bf, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.3, i64 280
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.bg, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.4, i64 280
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.bh, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.5, i64 280
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.bi, align 8, !noalias !30378, !nonnull !28, !noundef !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.6, i64 280
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.bj, align 8, !noalias !30378, !nonnull !28, !noundef !28 ; 2 uses
  %i.bk = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.7, i64 280
  br i1 %i.bk, label %.loopexit.i.i.i.i.i.i, label %.new

bb.n:                                             ; preds = %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i:                            ; preds = %.prol.loopexit, %.new, %bb.l
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ax, %bb.l ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.7, %.new ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.bo = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val7.i.i.i.i.i.i = load ptr, ptr %i.bq, align 8, !noalias !30379 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 16
  %.val8.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !30379
  br i1 %i.t, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i
  %i.bs = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1), !noalias !30380 ; 2 uses
  %.not.i.i.i9.i.i.i.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i9.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i, !prof !101

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i.i.i) ]
  %i.bt = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30381 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i

bb.o:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.bu = tail call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i), !noalias !30380 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o
  %i.bv = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30380 ; 2 uses
  %.not.i.i.i.i.i.i10.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i10.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i, !prof !33

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i._crit_edge.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bw = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 1), !noalias !30382 ; 2 uses
  %.not.i9.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i9.i.i.i.i, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB30_6string6StringEECskXtk6F4WjxZ_4just.exit, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i, !prof !29

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.o, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i._crit_edge.i.i.i.i, %bb.f, %bb.d, %bb.c, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.b, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i
  %.sink14.i.sink.i.i.sink.i.sink.i = phi ptr [ %i.f, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i ], [ %i.e, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i ], [ %i.h, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.g, %bb.b ], [ %i.i, %bb.c ], [ %i.bw, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i._crit_edge.i.i.i.i ], [ %i.q, %bb.f ], [ %i.o, %bb.d ], [ %i.bt, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i ], [ %i.bs, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i ], [ %i.bv, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bu, %bb.o ]
  %i.bx = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink14.i.sink.i.i.sink.i.sink.i), !noalias !30383
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB30_6string6StringEECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB30_6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.f, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i._crit_edge.i.i.i.i, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i
  %.sroa.0.0.i = phi ptr [ null, %bb.f ], [ null, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtB1p_11collections5btree3set8BTreeSetB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i._crit_edge.i.i.i.i ], [ %i.bx, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtB35_6string6StringEECskXtk6F4WjxZ_4just.exit.sink.split.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtBX_4path7PathBufECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30397)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30398)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !30399, !noalias !30400, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !38, !alias.scope !30399, !noalias !30400, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.e = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1), !noalias !30401 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, !prof !101

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i, %bb.a
  store i8 2, ptr %i.b, align 8, !alias.scope !30399, !noalias !30400
  %i.f = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30402 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

bb.b:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.g = tail call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @442, i64 noundef 6), !noalias !30399 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not5.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30399 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, !prof !33

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.b, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.0.0.i5.i.i.i.sink.i.i = phi ptr [ %i.e, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i ], [ %i.h, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.g, %bb.b ], [ %i.f, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i ]
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i.i.sink.i.i), !noalias !30399
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.j = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1), !noalias !30397 ; 2 uses
  %.not.i5.i = icmp eq ptr %i.j, null
  br i1 %.not.i5.i, label %bb.e, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j), !noalias !30397
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_4path7PathBufECskXtk6F4WjxZ_4just.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.l = tail call fastcc noundef align 8 ptr @_RINvXsu_NtNtCsfxuqquxiU4q_10serde_core3ser5implsNtNtCsaKJjC64KgbL_3std4path7PathBufNtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtBO_2io5stdio6StdoutEECskXtk6F4WjxZ_4just(ptr readonly %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !30397
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_4path7PathBufECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_4path7PathBufECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, %bb.d, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.i, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB33_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 16               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30702)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30704)
  %i.h = load ptr, ptr %0, align 8, !alias.scope !30705, !noalias !30706, !nonnull !28, !align !35, !noundef !28 ; 129 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !38, !alias.scope !30705, !noalias !30706, !noundef !28
  %i.k = icmp eq i8 %i.j, 1
  br i1 %i.k, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.l = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1), !noalias !30707 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, !prof !101

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i, %bb.a
  store i8 2, ptr %i.i, align 8, !alias.scope !30705, !noalias !30706
  %i.m = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30708 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

bb.b:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i
  %i.n = tail call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @409, i64 noundef 10), !noalias !30709 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not5.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.b
  %i.o = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30709 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, !prof !33

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.b, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i
  %.sroa.0.0.i5.i.i.i.sink.i.i = phi ptr [ %i.l, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i ], [ %i.o, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.n, %bb.b ], [ %i.m, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i ]
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i.i.sink.i.i), !noalias !30709
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.c:                                             ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30710)
  %i.q = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1), !noalias !30711 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.q, null
  br i1 %.not.i3.i, label %bb.e, label %bb.d, !prof !29

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.q), !noalias !30711
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30712)
  %i.s = load ptr, ptr %1, align 8, !alias.scope !30713, !noalias !30714, !noundef !28 ; 4 uses
  %.not.not.i.i.i = icmp eq ptr %i.s, null        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !30713, !noalias !30714 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !30713, !noalias !30714
  %.sroa.5.0.i.i.i = select i1 %.not.not.i.i.i, i64 0, i64 %i.w ; 2 uses
  %i.x = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 1), !noalias !30715 ; 2 uses
  %.not.i.i.i.i5.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i5.i, label %bb.f, label %bb.h, !prof !29

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i64 %.sroa.5.0.i.i.i, 0
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 1), !noalias !30715 ; 2 uses
  %.not10.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not10.i.i.i.i.i, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit, label %bb.h, !prof !29

bb.h:                                             ; preds = %bb.g, %bb.e
  %.sink14.i.i.i.i.i = phi ptr [ %i.x, %bb.e ], [ %i.z, %bb.g ]
  %i.aa = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink14.i.i.i.i.i), !noalias !30715
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.i:                                             ; preds = %bb.f
  br i1 %.not.not.i.i.i, label %.critedge.i13.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.u, 0
  br i1 %i.ab, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i.preheader

.lr.ph.i.i44.i.i.i.i.preheader:                   ; preds = %bb.j
  %xtraiter = and i64 %i.u, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i44.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i44.i.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.i.prol
  %.sroa.013.017.i.i45.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i47.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.prol ], [ %i.s, %.lr.ph.i.i44.i.i.i.i.preheader ]
  %.sroa.011.016.i.i46.i.i.i.i.prol = phi i64 [ %i.ad, %.lr.ph.i.i44.i.i.i.i.prol ], [ %i.u, %.lr.ph.i.i44.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i44.i.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i45.i.i.i.i.prol, i64 15680
  %i.ad = add i64 %.sroa.011.016.i.i46.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i47.i.i.i.i.prol = load ptr, ptr %i.ac, align 8, !noalias !30716, !nonnull !28, !noundef !28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i44.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.prol, !llvm.loop !30434

.lr.ph.i.i44.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i44.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.preheader
  %.sroa.013.0.i.i47.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i44.i.i.i.i.preheader ], [ %.sroa.013.0.i.i47.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.prol ]
  %.sroa.013.017.i.i45.i.i.i.i.unr = phi ptr [ %i.s, %.lr.ph.i.i44.i.i.i.i.preheader ], [ %.sroa.013.0.i.i47.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.prol ]
  %.sroa.011.016.i.i46.i.i.i.i.unr = phi i64 [ %i.u, %.lr.ph.i.i44.i.i.i.i.preheader ], [ %i.ad, %.lr.ph.i.i44.i.i.i.i.prol ]
  %i.ae = icmp ult i64 %i.u, 8
  br i1 %i.ae, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i

.lr.ph.i.i44.i.i.i.i:                             ; preds = %.lr.ph.i.i44.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i
  %.sroa.013.017.i.i45.i.i.i.i = phi ptr [ %.sroa.013.0.i.i47.i.i.i.i.7, %.lr.ph.i.i44.i.i.i.i ], [ %.sroa.013.017.i.i45.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i46.i.i.i.i = phi i64 [ %i.an, %.lr.ph.i.i44.i.i.i.i ], [ %.sroa.011.016.i.i46.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.prol.loopexit ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i45.i.i.i.i, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i = load ptr, ptr %i.af, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i.1 = load ptr, ptr %i.ag, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.1, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i.2 = load ptr, ptr %i.ah, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.2, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i.3 = load ptr, ptr %i.ai, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.3, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i.4 = load ptr, ptr %i.aj, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.4, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i.5 = load ptr, ptr %i.ak, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.5, i64 15680
  %.sroa.013.0.i.i47.i.i.i.i.6 = load ptr, ptr %i.al, align 8, !noalias !30716, !nonnull !28, !noundef !28
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.6, i64 15680
  %i.an = add i64 %.sroa.011.016.i.i46.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i47.i.i.i.i.7 = load ptr, ptr %i.am, align 8, !noalias !30716, !nonnull !28, !noundef !28 ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i: ; preds = %.lr.ph.i.i44.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i, %bb.j
  %.sroa.07.0.copyload.i.i22.i.i.i.i = phi ptr [ %i.s, %bb.j ], [ %.sroa.013.0.i.i47.i.i.i.i.lcssa.unr, %.lr.ph.i.i44.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i47.i.i.i.i.7, %.lr.ph.i.i44.i.i.i.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i22.i.i.i.i, i64 15674
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !30717, !noundef !28
  %.not.i.i.i = icmp eq i16 %i.aq, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i, label %.thread.i.i.i

.lr.ph.i.i.i.i25.i.i.i.i:                         ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i, %bb.k
  %.sroa.0.022.i.i.i.i26.i.i.i.i = phi ptr [ %i.ar, %bb.k ], [ %.sroa.07.0.copyload.i.i22.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i27.i.i.i.i = phi i64 [ %i.as, %bb.k ], [ 0, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i ] ; 2 uses
  %i.ar = load ptr, ptr %.sroa.0.022.i.i.i.i26.i.i.i.i, align 8, !noalias !30718, !noundef !28 ; 7 uses
  %.not.i.i.i.i.i28.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i.i28.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i.i25.i.i.i.i
  %i.as = add i64 %.sroa.5.021.i.i.i.i27.i.i.i.i, 1 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i26.i.i.i.i, i64 15672
  %i.au = load i16, ptr %i.at, align 8, !noalias !30718 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 15674
  %i.aw = load i16, ptr %i.av, align 2, !noalias !30717, !noundef !28
  %i.ax = icmp ult i16 %i.au, %i.aw
  br i1 %i.ax, label %bb.m, label %.lr.ph.i.i.i.i25.i.i.i.i

bb.l:                                             ; preds = %.lr.ph.i.i.i.i25.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i42.i.i.i.i unwind label %bb.o, !noalias !30719

.noexc.i.i42.i.i.i.i:                             ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.ay = zext i16 %i.au to i64                   ; 4 uses
  %i.az = icmp eq i64 %i.as, 0
  br i1 %i.az, label %.thread.i.i.i, label %bb.n

.thread.i.i.i:                                    ; preds = %bb.m, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i
  %.sroa.06.0.ph.i.i.i32.i36.i.i.i = phi ptr [ %i.ar, %bb.m ], [ %.sroa.07.0.copyload.i.i22.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i30.i34.i.i.i = phi i64 [ %i.ay, %bb.m ], [ 0, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB1N_4name4NameE10init_frontB1N_.exit.i19.i.i.i.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.10.0.ph.i.i.i30.i34.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.bb = icmp ult i16 %i.au, 11
  tail call void @llvm.assume(i1 %i.bb), !noalias !30720
  %i.bc = getelementptr i8, ptr %i.ar, i64 15688
  %i.bd = getelementptr [8 x i8], ptr %i.bc, i64 %i.ay ; 2 uses
  %xtraiter128 = and i64 %i.as, 7                 ; 2 uses
  %lcmp.mod129.not = icmp eq i64 %xtraiter128, 0
  br i1 %lcmp.mod129.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.n, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i33.i.i.i.i.prol = phi ptr [ %i.be, %.prol.preheader ], [ %i.bd, %bb.n ]
  %.sroa.019.0.in.i.i.i.i34.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i35.i.i.i.i.prol, %.prol.preheader ], [ %i.as, %bb.n ]
  %prol.iter130 = phi i64 [ %prol.iter130.next, %.prol.preheader ], [ 0, %bb.n ]
  %.sroa.019.0.i.i.i.i35.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i34.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i36.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i33.i.i.i.i.prol, align 8, !noalias !30721, !nonnull !28, !noundef !28 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.prol, i64 15680 ; 2 uses
  %prol.iter130.next = add i64 %prol.iter130, 1   ; 2 uses
  %prol.iter130.cmp.not = icmp eq i64 %prol.iter130.next, %xtraiter128
  br i1 %prol.iter130.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !30448

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.n
  %.sroa.017.0.i.i.i.i36.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.n ], [ %.sroa.017.0.i.i.i.i36.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i33.i.i.i.i.unr = phi ptr [ %i.bd, %bb.n ], [ %i.be, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i34.i.i.i.i.unr = phi i64 [ %i.as, %bb.n ], [ %.sroa.019.0.i.i.i.i35.i.i.i.i.prol, %.prol.preheader ]
  %i.bf = icmp ult i64 %.sroa.5.021.i.i.i.i27.i.i.i.i, 7
  br i1 %i.bf, label %.lr.ph.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i33.i.i.i.i = phi ptr [ %i.bo, %.new ], [ %.sroa.017.0.in.i.i.i.i33.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i34.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i35.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i34.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i36.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i33.i.i.i.i, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i, i64 15680
  %.sroa.017.0.i.i.i.i36.i.i.i.i.1 = load ptr, ptr %i.bg, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.1, i64 15680
  %.sroa.017.0.i.i.i.i36.i.i.i.i.2 = load ptr, ptr %i.bh, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.2, i64 15680
  %.sroa.017.0.i.i.i.i36.i.i.i.i.3 = load ptr, ptr %i.bi, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.3, i64 15680
  %.sroa.017.0.i.i.i.i36.i.i.i.i.4 = load ptr, ptr %i.bj, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.4, i64 15680
  %.sroa.017.0.i.i.i.i36.i.i.i.i.5 = load ptr, ptr %i.bk, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.5, i64 15680
  %.sroa.017.0.i.i.i.i36.i.i.i.i.6 = load ptr, ptr %i.bl, align 8, !noalias !30721, !nonnull !28, !noundef !28
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.6, i64 15680
  %.sroa.019.0.i.i.i.i35.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i34.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i36.i.i.i.i.7 = load ptr, ptr %i.bm, align 8, !noalias !30721, !nonnull !28, !noundef !28 ; 2 uses
  %i.bn = icmp eq i64 %.sroa.019.0.i.i.i.i35.i.i.i.i.7, 0
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.7, i64 15680
  br i1 %i.bn, label %.lr.ph.i.i.i.i.i.i, label %.new

bb.o:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !30720
  unreachable

.critedge.i13.i.i.i.i:                            ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2870) #75, !noalias !30722
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.prol.loopexit, %.new, %.thread.i.i.i
  %.sroa.06.0.ph.i.i.i32.i35.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i32.i36.i.i.i, %.thread.i.i.i ], [ %i.ar, %.new ], [ %i.ar, %.prol.loopexit ]
  %.sroa.10.0.ph.i.i.i30.i33.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i30.i34.i.i.i, %.thread.i.i.i ], [ %i.ay, %.new ], [ %i.ay, %.prol.loopexit ] ; 2 uses
  %.sroa.78.0.i.i.i38.i.i.i.i = phi i64 [ %i.ba, %.thread.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i39.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i32.i36.i.i.i, %.thread.i.i.i ], [ %.sroa.017.0.i.i.i.i36.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.sroa.017.0.i.i.i.i36.i.i.i.i.7, %.new ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i32.i35.i.i.i, i64 8
  %i.br = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i30.i33.i.i.i, 11
  tail call void @llvm.assume(i1 %i.br), !noalias !30720
  %i.bs = getelementptr inbounds nuw [1352 x i8], ptr %i.bq, i64 %.sroa.10.0.ph.i.i.i30.i33.i.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %i.h, <2 x i64> <i64 0, i64 8>
  br label %bb.p

bb.p:                                             ; preds = %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.22.0.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i38.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.78.0.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_.exit.i.i.i.i ] ; 2 uses
  %.sroa.2854.0.in.i.i.i.i = phi i64 [ %.sroa.5.0.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.2854.0.i.i.i.i, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_.exit.i.i.i.i ]
  %.sroa.8.0.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i39.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.07.0.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_.exit.i.i.i.i ] ; 4 uses
  %i.by = phi i1 [ true, %.lr.ph.i.i.i.i.i.i ], [ false, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_.exit.i.i.i.i ]
  %i.bz = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i ], [ %i.on, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_.exit.i.i.i.i ] ; 34 uses
  %.sroa.2854.0.i.i.i.i = add i64 %.sroa.2854.0.in.i.i.i.i, -1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30723)
  call void @llvm.experimental.noalias.scope.decl(metadata !30724)
  br i1 %i.by, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.ca = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1), !noalias !30725 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ca, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !101

bb.q:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %i.cb = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ca), !noalias !30725
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !30726)
  %i.cc = load i64, ptr %i.bz, align 8, !range !97, !alias.scope !30727, !noalias !30728, !noundef !28 ; 4 uses
  %i.cd = icmp ne i64 %i.cc, 3
  call void @llvm.assume(i1 %i.cd)
  %i.ce = add nsw i64 %i.cc, -2
  %i.cf = icmp samesign ugt i64 %i.cc, 1
  %i.cg = select i1 %i.cf, i64 %i.ce, i64 1
  switch i64 %i.cg, label %bb.r [
    i64 0, label %bb.s
    i64 1, label %bb.u
    i64 2, label %bb.z
    i64 3, label %bb.ae
    i64 4, label %bb.af
    i64 5, label %bb.bp
    i64 6, label %bb.br
    i64 7, label %bb.bs
    i64 8, label %bb.bu
    i64 9, label %bb.bz
    i64 10, label %bb.cb
    i64 11, label %bb.cc
    i64 12, label %bb.ce
    i64 13, label %bb.cf
    i64 14, label %bb.ch
    i64 15, label %bb.cj
    i64 16, label %bb.cp
    i64 17, label %bb.cr
    i64 18, label %bb.ct
    i64 19, label %bb.cv
    i64 20, label %bb.cx
    i64 21, label %bb.cz
    i64 22, label %bb.db
    i64 23, label %bb.dd
    i64 24, label %bb.df
    i64 25, label %bb.ds
    i64 26, label %bb.du
    i64 27, label %bb.dv
    i64 28, label %bb.dx
    i64 29, label %bb.dz
  ]

bb.r:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  unreachable

bb.s:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ch = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30729 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.s
  %i.ci = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @470, i64 noundef 7), !noalias !30730 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.cj = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30730 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.t, %bb.s
  %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cj, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ci, %bb.t ], [ %i.ch, %bb.s ]
  %i.ck = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !30730
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.u:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bz, i64 160
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  %i.co = getelementptr inbounds nuw i8, ptr %i.bz, i64 288
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !30731
  %i.cq = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1), !noalias !30732 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.ef, !prof !29

bb.v:                                             ; preds = %bb.u
  %i.cr = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30733 ; 2 uses
  %.not.i.i76.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null
  br i1 %.not.i.i76.i.i.i.i.i.i.i.i.i.i.i, label %bb.w, label %bb.ef

bb.w:                                             ; preds = %bb.v
  %i.cs = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @471, i64 noundef 3), !noalias !30734 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cs, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ef

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.w
  %i.ct = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30734 ; 2 uses
  %.not16.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not16.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %bb.ef, !prof !33

bb.x:                                             ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1), !noalias !30734 ; 2 uses
  %.not17.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cu, null
  br i1 %.not17.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.y, label %bb.ef, !prof !29

bb.y:                                             ; preds = %bb.x
  %i.cv = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1), !noalias !30735 ; 2 uses
  %.not.i18.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i18.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer24serialize_struct_variantCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ef, !prof !29

bb.z:                                             ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bz, i64 264
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !30731
  %i.cy = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1), !noalias !30736 ; 2 uses
  %.not.i77.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i77.i.i.i.i.i.i.i.i.i.i.i, label %bb.aa, label %bb.eq, !prof !29

bb.aa:                                            ; preds = %bb.z
  %i.cz = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30737 ; 2 uses
  %.not.i.i82.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i82.i.i.i.i.i.i.i.i.i.i.i, label %bb.ab, label %bb.eq

bb.ab:                                            ; preds = %bb.aa
  %i.da = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @478, i64 noundef 5), !noalias !30738 ; 2 uses
  %.not5.i.i83.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not5.i.i83.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i84.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i84.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ab
  %i.db = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30738 ; 2 uses
  %.not16.i85.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not16.i85.i.i.i.i.i.i.i.i.i.i.i, label %bb.ac, label %bb.eq, !prof !33

bb.ac:                                            ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i84.i.i.i.i.i.i.i.i.i.i.i
  %i.dc = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1), !noalias !30738 ; 2 uses
  %.not17.i86.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not17.i86.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad, label %bb.eq, !prof !29

bb.ad:                                            ; preds = %bb.ac
  %i.dd = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1), !noalias !30739 ; 2 uses
  %.not.i18.i87.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i18.i87.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer24serialize_struct_variantCskXtk6F4WjxZ_4just.exit88.i.i.i.i.i.i.i.i.i.i.i, label %bb.eq, !prof !29

bb.ae:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.df = call fastcc noundef align 8 ptr @_RINvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB6_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer25serialize_newtype_variantINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB3r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @482, i64 noundef 7, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.de) #76
  br label %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.i.i.i.i.i.i.i.i.i

bb.af:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !30740)
  %i.dh = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1), !noalias !30741 ; 2 uses
  %.not.i89.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i89.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag, !prof !29

bb.ag:                                            ; preds = %bb.af
  %i.di = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.dh), !noalias !30741
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.ah:                                            ; preds = %bb.af
  %i.dj = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30742 ; 2 uses
  %.not.i.i90.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i90.i.i.i.i.i.i.i.i.i.i.i, label %bb.ai, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.dk = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @483, i64 noundef 8), !noalias !30741 ; 2 uses
  %.not5.i.i91.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dk, null
  br i1 %.not5.i.i91.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i92.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i92.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.dl = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30741 ; 2 uses
  %.not24.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dl, null
  br i1 %.not24.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aj, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i92.i.i.i.i.i.i.i.i.i.i.i, %bb.ai, %bb.ah
  %.sroa.0.0.i3.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.dl, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i92.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dk, %bb.ai ], [ %i.dj, %bb.ah ]
  %i.dm = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i3.i.i.i.i.i.i.i.i.i.i.i.i), !noalias !30741
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.aj:                                            ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i92.i.i.i.i.i.i.i.i.i.i.i
  %i.dn = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1), !noalias !30741 ; 2 uses
  %.not25.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not25.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.al, label %bb.ak, !prof !29

bb.ak:                                            ; preds = %bb.aj
  %i.do = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.dn), !noalias !30741
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

end_hunk_1
begin_hunk_2_@_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB33_:bb.a
bb.ap:                                            ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just6signal6SignalINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetB1l_EE0E0B1p_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dy = icmp eq i64 %i.eb, 0
  br i1 %i.dy, label %_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4IterNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtB6_8BTreeSetBY_EE0INtNtB1I_6result6ResultuNtNtB2V_5error5ErrorEEB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.ap, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i
  %i.dz = phi i64 [ %i.eb, %bb.ap ], [ %i.dt, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ]
  %.sroa.013.0.lcssa.i.i25.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ null, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ea = phi i1 [ false, %bb.ap ], [ true, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ]
  %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ap ], [ %i.dr, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 6 uses
  %.sroa.10.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.ap ], [ %i.dv, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.eb = add i64 %i.dz, -1                       ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.013.0.lcssa.i.i25.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.aq, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.aq:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = inttoptr i64 %.sroa.10.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.ed = icmp eq i64 %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ed, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.aq
  %xtraiter131 = and i64 %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 56
  %i.ef = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %i.ee, align 8, !noalias !30748, !nonnull !28, !noundef !28 ; 3 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !30509

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ec, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ef, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.eg = icmp ult i64 %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.eg, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ep, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eh, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ei, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ej, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ek, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.el, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.em, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 56
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.en, align 8, !noalias !30748, !nonnull !28, !noundef !28
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 56
  %i.ep = add i64 %.sroa.011.016.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.eo, align 8, !noalias !30748, !nonnull !28, !noundef !28 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.aq, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.15.050.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aq ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.10.049.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.aq ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.lcssa.i.i25.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ec, %bb.aq ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 54
  %i.es = load i16, ptr %i.er, align 2, !noalias !30749, !noundef !28
  %i.et = zext i16 %i.es to i64
  %i.eu = icmp ult i64 %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.et
  br i1 %i.eu, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ar
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ev, %bb.ar ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ex, %bb.ar ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ev = load ptr, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30750, !noundef !28 ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.as, label %bb.ar

._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ar
  %i.ew = zext i16 %i.ez to i64
  br label %bb.at

bb.ar:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ex = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 52
  %i.ez = load i16, ptr %i.ey, align 4, !noalias !30750 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 54
  %i.fb = load i16, ptr %i.fa, align 2, !noalias !30749, !noundef !28
  %i.fc = icmp ult i16 %i.ez, %i.fb
  br i1 %i.fc, label %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aw, !noalias !30751

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.as
  unreachable

bb.at:                                            ; preds = %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ew, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.59.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ex, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.48.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ev, %._crit_edge.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.07.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtCskXtk6F4WjxZ_4just6signal6SignalNtNtB7_7set_val9SetValZSTE10init_frontB1N_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.fd = icmp eq i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fd, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.fe = add nuw nsw i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.ff = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 64
  %i.fh = getelementptr [8 x i8], ptr %i.fg, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %xtraiter137 = and i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 7 ; 2 uses
  %lcmp.mod138.not = icmp eq i64 %xtraiter137, 0
  br i1 %lcmp.mod138.not, label %.prol.loopexit135, label %.prol.preheader134

.prol.preheader134:                               ; preds = %bb.av, %.prol.preheader134
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.fi, %.prol.preheader134 ], [ %i.fh, %bb.av ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader134 ], [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ]
  %prol.iter139 = phi i64 [ %prol.iter139.next, %.prol.preheader134 ], [ 0, %bb.av ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !30752, !nonnull !28, !noundef !28 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, i64 56 ; 2 uses
  %prol.iter139.next = add i64 %prol.iter139, 1   ; 2 uses
  %prol.iter139.cmp.not = icmp eq i64 %prol.iter139.next, %xtraiter137
  br i1 %prol.iter139.cmp.not, label %.prol.loopexit135, label %.prol.preheader134, !llvm.loop !30523

.prol.loopexit135:                                ; preds = %.prol.preheader134, %bb.av
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.av ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader134 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.fh, %bb.av ], [ %i.fi, %.prol.preheader134 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.av ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader134 ]
  %i.fj = icmp ult i64 %.sroa.7.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %i.fj, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new136

.new136:                                          ; preds = %.prol.loopexit135, %.new136
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fs, %.new136 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit135 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new136 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit135 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 56
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.fk, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, i64 56
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.fl, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, i64 56
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.fm, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, i64 56
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.fn, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.4, i64 56
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.fo, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.5, i64 56
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.fp, align 8, !noalias !30752, !nonnull !28, !noundef !28
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.6, i64 56
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.fq, align 8, !noalias !30752, !nonnull !28, !noundef !28 ; 2 uses
  %i.fr = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, i64 56
  br i1 %i.fr, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.new136

bb.aw:                                            ; preds = %bb.as
  %i.ft = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %.prol.loopexit135, %.new136, %bb.au
  %.sroa.78.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fe, %bb.au ], [ 0, %.new136 ], [ 0, %.prol.loopexit135 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.au ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit135 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.7, %.new136 ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.fv = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.fv)
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %.sroa.10.0.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ea, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef 1), !noalias !30753 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, !prof !101

bb.ax:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fy = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.fx), !noalias !30753
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !30754
  store ptr %i.fw, ptr %i.e, align 8, !noalias !30755
  %i.fz = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30756 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.az, label %bb.ay, !prof !29

bb.ay:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ga = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.fz), !noalias !30756
  br label %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just6signal6SignalNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.az:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !30755
  store <2 x ptr> %2, ptr %i.d, align 16, !noalias !30755
  store ptr null, ptr %i.bu, align 16, !noalias !30755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !30755
  store ptr %i.e, ptr %i.c, align 8, !noalias !30755
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRNtNtCskXtk6F4WjxZ_4just6signal6SignalNtB6_7Display3fmtBA_, ptr %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !30755
  %i.gb = invoke noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @529, ptr noundef nonnull @85, ptr noundef nonnull %i.c)
          to label %bb.ba unwind label %bb.bl, !noalias !30756

bb.ba:                                            ; preds = %bb.az
  br i1 %i.gb, label %bb.bb, label %bb.bc, !prof !44

bb.bb:                                            ; preds = %bb.ba
  %i.gc = load ptr, ptr %i.bu, align 16, !noalias !30755, !noundef !28 ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gc, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bj, label %bb.bi

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30755
  %i.gd = invoke noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1)
          to label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.bl, !noalias !30756 ; 2 uses

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bc
  %.not26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gd, null
  br i1 %.not26.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.be, label %bb.bd, !prof !29

bb.bd:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = invoke noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.gd)
          to label %bb.be unwind label %bb.bl, !noalias !30756

bb.be:                                            ; preds = %bb.bd, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ null, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter10end_stringNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ge, %bb.bd ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !30757)
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 16, !alias.scope !30757, !noalias !30755, !noundef !28 ; 4 uses
  %i.gf = icmp eq ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %i.gf, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just6signal6SignalINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetB1l_EE0E0B1p_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !30758
  %i.gg = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64 ; 2 uses
  %i.gh = and i64 %i.gg, 3
  switch i64 %i.gh, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 3, label %bb.bg
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %bb.bh
  ], !prof !69

default.unreachable:                              ; preds = %bb.bf
  unreachable

bb.bg:                                            ; preds = %bb.bf
  %i.gi = icmp ult ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.gj = and i64 %i.gg, 1095216660480
  %i.gk = icmp ne i64 %i.gj, 1095216660480
  call void @llvm.assume(i1 %i.gi)
  call void @llvm.assume(i1 %i.gk)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %i.gl = getelementptr i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gl) ]
  store ptr %i.gl, ptr %i.bv, align 8, !alias.scope !30759, !noalias !30758
  store i8 3, ptr %i.b, align 8, !alias.scope !30759, !noalias !30758
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bv), !noalias !30760
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !30758
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just6signal6SignalINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetB1l_EE0E0B1p_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bb
  %i.gm = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.gc), !noalias !30756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !30755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30755
  br label %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just6signal6SignalNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %bb.bb
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @530, i64 noundef 24, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @531) #71, !noalias !30756
  unreachable

bb.bk:                                            ; preds = %bb.bl
  resume { ptr, i32 } %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.bl:                                            ; preds = %bb.bd, %bb.bc, %bb.az
  %lpad.thr_comm.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bu, align 16, !noalias !30755, !noundef !28
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #72
          to label %bb.bk unwind label %bb.bm, !noalias !30756

bb.bm:                                            ; preds = %bb.bl
  %i.gn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !30756
  unreachable

_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just6signal6SignalNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bi, %bb.ay
  %.sroa.0.1.i.i.i.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gm, %bb.bi ], [ %i.ga, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30754
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just6signal6SignalINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2n_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetB1l_EE0E0B1p_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !30755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !30754
  %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ap, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4IterNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtB6_8BTreeSetBY_EE0INtNtB1I_6result6ResultuNtNtB2V_5error5ErrorEEB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ap
  %i.go = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef 1), !noalias !30761 ; 2 uses
  %.not.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.go, null
  br i1 %.not.i9.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs1n_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1O_.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.bn, !prof !29

bb.bn:                                            ; preds = %_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4IterNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtB6_8BTreeSetBY_EE0INtNtB1I_6result6ResultuNtNtB2V_5error5ErrorEEB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gp = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.go), !noalias !30761
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

_RINvXs1n_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1O_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvYINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set4IterNtNtCskXtk6F4WjxZ_4just6signal6SignalENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtB6_8BTreeSetBY_EE0INtNtB1I_6result6ResultuNtNtB2V_5error5ErrorEEB12_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.an
  %i.gq = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef 1), !noalias !30741 ; 2 uses
  %.not27.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not27.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %bb.bo, !prof !29

bb.bo:                                            ; preds = %_RINvXs1n_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCskXtk6F4WjxZ_4just6signal6SignalENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEB1O_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.gq), !noalias !30741
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.bp:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.gs = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30762 ; 2 uses
  %.not.i.i.i93.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gs, null
  br i1 %.not.i.i.i93.i.i.i.i.i.i.i.i.i.i.i, label %bb.bq, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i94.i.i.i.i.i.i.i.i.i.i.i

bb.bq:                                            ; preds = %bb.bp
  %i.gt = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @484, i64 noundef 7), !noalias !30730 ; 2 uses
  %.not5.i.i.i97.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gt, null
  br i1 %.not5.i.i.i97.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i98.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i94.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i98.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.gu = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30730 ; 2 uses
  %.not.i.i99.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gu, null
  br i1 %.not.i.i99.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i94.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i94.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i98.i.i.i.i.i.i.i.i.i.i.i, %bb.bq, %bb.bp
  %.sroa.0.0.i5.i.i95.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.gu, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i98.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gt, %bb.bq ], [ %i.gs, %bb.bp ]
  %i.gv = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i95.i.i.i.i.i.i.i.i.i.i.i), !noalias !30730
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.br:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.gx = call fastcc noundef align 8 ptr @_RINvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB6_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer25serialize_newtype_variantINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEB3r_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @415, i64 noundef 3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.gw) #76
  br label %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.i.i.i.i.i.i.i.i.i

bb.bs:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.gy = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30763 ; 2 uses
  %.not.i.i.i101.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gy, null
  br i1 %.not.i.i.i101.i.i.i.i.i.i.i.i.i.i.i, label %bb.bt, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i102.i.i.i.i.i.i.i.i.i.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.gz = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @485, i64 noundef 9), !noalias !30730 ; 2 uses
  %.not5.i.i.i105.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gz, null
  br i1 %.not5.i.i.i105.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i106.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i102.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i106.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bt
  %i.ha = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30730 ; 2 uses
  %.not.i.i107.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ha, null
  br i1 %.not.i.i107.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i102.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i102.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i106.i.i.i.i.i.i.i.i.i.i.i, %bb.bt, %bb.bs
  %.sroa.0.0.i5.i.i103.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ha, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i106.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gz, %bb.bt ], [ %i.gy, %bb.bs ]
  %i.hb = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i103.i.i.i.i.i.i.i.i.i.i.i), !noalias !30730
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.bu:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %i.bz, i64 136
  %i.hd = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef 1), !noalias !30764 ; 2 uses
  %.not.i109.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not.i109.i.i.i.i.i.i.i.i.i.i.i, label %bb.bv, label %bb.ew, !prof !29

bb.bv:                                            ; preds = %bb.bu
  %i.he = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30765 ; 2 uses
  %.not.i.i113.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.he, null
  br i1 %.not.i.i113.i.i.i.i.i.i.i.i.i.i.i, label %bb.bw, label %bb.ew

bb.bw:                                            ; preds = %bb.bv
  %i.hf = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @486, i64 noundef 3), !noalias !30764 ; 2 uses
  %.not5.i.i114.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hf, null
  br i1 %.not5.i.i114.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i115.i.i.i.i.i.i.i.i.i.i.i, label %bb.ew

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i115.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.bw
  %i.hg = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30764 ; 2 uses
  %.not16.i116.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not16.i116.i.i.i.i.i.i.i.i.i.i.i, label %bb.bx, label %bb.ew, !prof !33

bb.bx:                                            ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i115.i.i.i.i.i.i.i.i.i.i.i
  %i.hh = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef 1), !noalias !30764 ; 2 uses
  %.not17.i117.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hh, null
  br i1 %.not17.i117.i.i.i.i.i.i.i.i.i.i.i, label %bb.by, label %bb.ew, !prof !29

bb.by:                                            ; preds = %bb.bx
  %i.hi = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef 1), !noalias !30766 ; 2 uses
  %.not.i18.i118.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i18.i118.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs5_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser21SerializeTupleVariant15serialize_fieldNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEB39_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.ew, !prof !29

bb.bz:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.hj = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30767 ; 2 uses
  %.not.i.i.i119.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i.i.i119.i.i.i.i.i.i.i.i.i.i.i, label %bb.ca, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i120.i.i.i.i.i.i.i.i.i.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.hk = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @487, i64 noundef 12), !noalias !30730 ; 2 uses
  %.not5.i.i.i123.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not5.i.i.i123.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i124.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i120.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i124.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ca
  %i.hl = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30730 ; 2 uses
  %.not.i.i125.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i125.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i120.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i120.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i124.i.i.i.i.i.i.i.i.i.i.i, %bb.ca, %bb.bz
  %.sroa.0.0.i5.i.i121.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hl, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i124.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hk, %bb.ca ], [ %i.hj, %bb.bz ]
  %i.hm = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i121.i.i.i.i.i.i.i.i.i.i.i), !noalias !30730
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.cb:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.val66.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hn, align 8, !alias.scope !30727, !noalias !30728
  %i.ho = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.val67.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ho, align 8, !alias.scope !30727, !noalias !30728
  %i.hp = call fastcc noundef align 8 ptr @_RINvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB6_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer25serialize_newtype_variantNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @488, i64 noundef 9, ptr %.val66.i.i.i.i.i.i.i.i.i.i.i, i64 %.val67.i.i.i.i.i.i.i.i.i.i.i) #76
  br label %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.i.i.i.i.i.i.i.i.i

bb.cc:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.hq = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30768 ; 2 uses
  %.not.i.i.i127.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not.i.i.i127.i.i.i.i.i.i.i.i.i.i.i, label %bb.cd, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i128.i.i.i.i.i.i.i.i.i.i.i

bb.cd:                                            ; preds = %bb.cc
  %i.hr = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @489, i64 noundef 7), !noalias !30730 ; 2 uses
  %.not5.i.i.i131.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not5.i.i.i131.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i128.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cd
  %i.hs = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30730 ; 2 uses
  %.not.i.i133.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i133.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i128.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i128.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i, %bb.cd, %bb.cc
  %.sroa.0.0.i5.i.i129.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hs, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i132.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hr, %bb.cd ], [ %i.hq, %bb.cc ]
  %i.ht = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i129.i.i.i.i.i.i.i.i.i.i.i), !noalias !30730
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.ce:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.hu, align 8, !alias.scope !30727, !noalias !30728
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %.val65.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.hv, align 8, !alias.scope !30727, !noalias !30728
  %i.hw = call fastcc noundef align 8 ptr @_RINvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB6_10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer25serialize_newtype_variantNtNtCskXtk6F4WjxZ_4just14string_literal13StringLiteralEB2P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @490, i64 noundef 5, ptr %.val.i.i.i.i.i.i.i.i.i.i.i, i64 %.val65.i.i.i.i.i.i.i.i.i.i.i) #76
  br label %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutEEBQ_.exit.i.i.i.i.i.i.i.i.i

bb.cf:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.hx = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30769 ; 2 uses
  %.not.i.i.i135.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i135.i.i.i.i.i.i.i.i.i.i.i, label %bb.cg, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i136.i.i.i.i.i.i.i.i.i.i.i

bb.cg:                                            ; preds = %bb.cf
  %i.hy = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @491, i64 noundef 5), !noalias !30730 ; 2 uses
  %.not5.i.i.i139.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not5.i.i.i139.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i140.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i136.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i140.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.cg
  %i.hz = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30730 ; 2 uses
  %.not.i.i141.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hz, null
  br i1 %.not.i.i141.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCskXtk6F4WjxZ_4just9attribute9AttributeINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysB1l_NtNtB1p_4name4NameEE0E0B1p_.exit.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i136.i.i.i.i.i.i.i.i.i.i.i, !prof !33

_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i136.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i140.i.i.i.i.i.i.i.i.i.i.i, %bb.cg, %bb.cf
  %.sroa.0.0.i5.i.i137.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.hz, %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i140.i.i.i.i.i.i.i.i.i.i.i ], [ %i.hy, %bb.cg ], [ %i.hx, %bb.cf ]
  %i.ia = call noundef nonnull align 8 ptr @_RNvMs0_NtCshTCYgcDtIbU_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i.i137.i.i.i.i.i.i.i.i.i.i.i), !noalias !30730
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeNtNtCskXtk6F4WjxZ_4just13attribute_set12AttributeSetEB2V_.exit

bb.ch:                                            ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i
  %i.ib = call noundef ptr @_RNvXse_NtNtCsaKJjC64KgbL_3std2io5stdioNtB5_6StdoutNtNtNtCsj6eKBz9Db1c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @547, i64 noundef 1), !noalias !30770 ; 2 uses
  %.not.i.i.i143.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ib, null
  br i1 %.not.i.i.i143.i.i.i.i.i.i.i.i.i.i.i, label %bb.ci, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i144.i.i.i.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.ch
  %i.ic = call fastcc noundef ptr @_RINvNtCshTCYgcDtIbU_10serde_json3ser27format_escaped_str_contentsNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @492, i64 noundef 5), !noalias !30730 ; 2 uses
  %.not5.i.i.i147.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ic, null
  br i1 %.not5.i.i.i147.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.i.i148.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCshTCYgcDtIbU_10serde_json3ser18format_escaped_strNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB2_16CompactFormatterECskXtk6F4WjxZ_4just.exit.thread.i.i144.i.i.i.i.i.i.i.i.i.i.i

end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just10expressionNtB2_10Expression17resolve_variables:bb.a
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
end_hunk_3
begin_hunk_4_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
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
end_hunk_4
begin_hunk_5_@_RNvMNtCskXtk6F4WjxZ_4just6searchNtB2_6Search6search:bb.a
  br i1 %.not, label %bb.fh, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %.sroa.0.0.copyload = load i64, ptr %i.ac, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 368
  %i.mp = load ptr, ptr %i.mo, align 8, !nonnull !28, !noundef !28
  %i.mq = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.mr = load i64, ptr %i.mq, align 8, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !49595
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val176, i64 noundef %.val177, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mp, i64 noundef %i.mr)
          to label %.noexc266 unwind label %.body267.thread421

.body267.thread421:                               ; preds = %bb.fc
  %i.ms = landingpad { ptr, i32 }
          cleanup
  br label %.body267.thread

.noexc266:                                        ; preds = %bb.fc
  %i.mt = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8, !noalias !49595, !nonnull !28, !noundef !28 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mw = load i64, ptr %i.mv, align 8, !noalias !49595, !noundef !28
  invoke void @_RNvXNtCskXtk6F4WjxZ_4just5cleanRNtNtCsaKJjC64KgbL_3std4path4PathNtB2_5Clean5clean(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mu, i64 noundef %i.mw)
          to label %bb.ff unwind label %bb.fd

bb.fd:                                            ; preds = %.noexc266
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49596)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49597)
  %.val.i.i.i263 = load i64, ptr %i.a, align 8, !alias.scope !49598, !noalias !49595 ; 2 uses
  %i.my = icmp eq i64 %.val.i.i.i263, 0
  br i1 %i.my, label %.body267.thread, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mu, i64 noundef %.val.i.i.i263, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49599
  br label %.body267.thread

bb.ff:                                            ; preds = %.noexc266
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49601)
  %.val.i.i1.i265 = load i64, ptr %i.a, align 8, !alias.scope !49602, !noalias !49595 ; 2 uses
  %i.mz = icmp eq i64 %.val.i.i1.i265, 0
  br i1 %i.mz, label %bb.fm, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.mu, i64 noundef %.val.i.i1.i265, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49603
  br label %bb.fm

bb.fh:                                            ; preds = %bb.fb
  %i.na = icmp eq i64 %i.ke, 0
  br i1 %i.na, label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit272, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !49604
  %i.nb = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ke, i64 noundef range(i64 1, 9) 1) #70, !noalias !49604 ; 3 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.fj, label %bb.fk

bb.fj:                                            ; preds = %bb.fi
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %i.ke) #71
          to label %.noexc271 unwind label %bb.fo

.noexc271:                                        ; preds = %bb.fj
  unreachable

bb.fk:                                            ; preds = %bb.fi
  %i.nd = ptrtoint ptr %i.nb to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull readonly align 1 %i.kc, i64 range(i64 0, -9223372036854775808) %i.ke, i1 false), !noalias !49605
  br label %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit272

_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit272: ; preds = %bb.fk, %bb.fh
  %.sroa.5371.0 = phi i64 [ %i.nd, %bb.fk ], [ 1, %bb.fh ]
  %i.ne = inttoptr i64 %i.ke to ptr
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775805, ptr %i.nf, align 8
  %.sroa.4155.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ne, ptr %.sroa.4155.0..sroa_idx, align 8
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.5371.0, ptr %.sroa.5156.0..sroa_idx, align 8
  %.sroa.6157.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ke, ptr %.sroa.6157.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49607)
  %.val.i.i273 = load i64, ptr %i.ac, align 8, !alias.scope !49608 ; 2 uses
  %i.ng = icmp eq i64 %.val.i.i273, 0
  br i1 %i.ng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit276, label %bb.fl

bb.fl:                                            ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit272
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kc, i64 noundef %.val.i.i273, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49609
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit276

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit276: ; preds = %_RNvXsb_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VechENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneCskXtk6F4WjxZ_4just.exit272, %bb.fl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit236

bb.fm:                                            ; preds = %bb.fg, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !49595
  call fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6searchNtB2_6Search13with_justfile(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(552) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit236

.body267.thread:                                  ; preds = %bb.fd, %bb.fe, %.body267.thread421
  %eh.lpad-body268420 = phi { ptr, i32 } [ %i.ms, %.body267.thread421 ], [ %i.mx, %bb.fe ], [ %i.mx, %bb.fd ] ; 2 uses
  %i.nh = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.nh, label %common.resume, label %bb.fn

bb.fn:                                            ; preds = %.body267.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49610
  br label %common.resume

bb.fo:                                            ; preds = %bb.fj, %_RNvMNtCskXtk6F4WjxZ_4just6searchNtB2_6Search5clean.exit195
  %i.ni = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49612)
  %.val.i.i281 = load i64, ptr %i.ac, align 8, !alias.scope !49613 ; 2 uses
  %i.nj = icmp eq i64 %.val.i.i281, 0
  br i1 %i.nj, label %common.resume, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.kc, i64 noundef %.val.i.i281, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49614
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCskXtk6F4WjxZ_4just6searchNtB2_6Search8justfile(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(552) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 15 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  %i.h = alloca [72 x i8], align 8                ; 13 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [64 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [1 x i8], align 1                 ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.637.sroa.7.sroa.0 = alloca [16 x i8], align 8 ; 5 uses
  %.sroa.633.sroa.7.sroa.0 = alloca [16 x i8], align 8 ; 5 uses
  %i.t = alloca [40 x i8], align 8                ; 12 uses
  %i.u = alloca [48 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 12 uses
  %i.w = alloca [24 x i8], align 8                ; 17 uses
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %.sroa.440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %.sroa.440.sroa.4.sroa.4.0..sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.af = load i64, ptr %i.ae, align 8, !range !37
  %.not103 = icmp eq i64 %i.af, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !28 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ah, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.ap = load i64, ptr %i.ao, align 8, !range !37
  %.not102 = icmp eq i64 %i.ap, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.val = load ptr, ptr %i.aq, align 8, !nonnull !28
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val113 = load i64, ptr %i.ar, align 8
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.616.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %4 = insertelement <2 x ptr> poison, ptr %i.ah, i64 0
  %5 = insertelement <2 x ptr> %4, ptr %i.ak, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit
  %.sroa.454.0594 = phi i64 [ %3, %bb.a ], [ %i.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit ] ; 5 uses
  %.sroa.053.0593 = phi ptr [ %2, %bb.a ], [ %i.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit ] ; 5 uses
  %i.au = call { ptr, i64 } @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.053.0593, i64 noundef %.sroa.454.0594) ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 0      ; 2 uses
  %i.aw = extractvalue { ptr, i64 } %i.au, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store ptr null, ptr %i.w, align 8
  store i64 0, ptr %.sroa.557.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !49888
  invoke void @_RNvNtNtCsaKJjC64KgbL_3std3sys2fs8read_dir(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.053.0593, i64 noundef %.sroa.454.0594)
          to label %bb.c unwind label %.loopexit212

.loopexit211:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit, %bb.ad
  store i64 -9223372036854775803, ptr %0, align 8
  br label %bb.ae

.body118:                                         ; preds = %.loopexit212, %.loopexit.split-lp213, %bb.u, %bb.v, %.body128, %bb.i, %bb.e
  %.pn111 = phi { ptr, i32 } [ %i.az, %bb.e ], [ %.pn109, %.body128 ], [ %i.cp, %bb.u ], [ %.pn109, %bb.i ], [ %i.cp, %bb.v ], [ %lpad.loopexit214, %.loopexit212 ], [ %lpad.loopexit.split-lp215, %.loopexit.split-lp213 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w) #72
          to label %bb.ej unwind label %bb.eb

.loopexit212:                                     ; preds = %bb.b, %bb.n, %bb.x, %.noexc125, %.noexc126
  %lpad.loopexit214 = landingpad { ptr, i32 }
          cleanup
  br label %.body118

.loopexit.split-lp213:                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit.thread, %_RINvMNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB5_7set_val9SetValZSTNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3G_13OccupiedEntryB1J_B2i_E9remove_kv0NtNtB9_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i, %bb.ed
  %lpad.loopexit.split-lp215 = landingpad { ptr, i32 }
          cleanup
  br label %.body118

bb.c:                                             ; preds = %bb.b
  %i.ax = load i8, ptr %i.x, align 8, !range !38, !noalias !49888, !noundef !28 ; 2 uses
  %.sink2.i = load ptr, ptr %i.p, align 8, !noalias !49888, !nonnull !28, !noundef !28 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !49888
  %i.ay = icmp eq i8 %i.ax, 2
  br i1 %i.ay, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !49889
  store ptr %.sink2.i, ptr %i.o, align 8, !noalias !49889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !49889
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.053.0593, i64 noundef %.sroa.454.0594)
          to label %.thread unwind label %bb.e, !noalias !49890

bb.e:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #72
          to label %.body118 unwind label %bb.f, !noalias !49890

bb.f:                                             ; preds = %bb.e
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !49890
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %.sink2.i, ptr %i.v, align 8
  store i8 %i.ax, ptr %i.y, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs8DirEntryECskXtk6F4WjxZ_4just.exit, %bb.g
  %.sroa.557.0..sroa_idx.promoted = phi i64 [ %.sroa.557.0..sroa_idx.promoted892, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs8DirEntryECskXtk6F4WjxZ_4just.exit ], [ 0, %bb.g ] ; 5 uses
  %i.bb = phi i64 [ %i.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs8DirEntryECskXtk6F4WjxZ_4just.exit ], [ 0, %bb.g ] ; 3 uses
  invoke void @_RNvXsz_NtCsaKJjC64KgbL_3std2fsNtB5_7ReadDirNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %bb.k unwind label %bb.j

.body128:                                         ; preds = %bb.bh, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i, %bb.ai, %bb.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit
  %.pn109 = phi { ptr, i32 } [ %.pn107, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit ], [ %i.dd, %bb.ai ], [ %i.bf, %bb.j ], [ %i.eq, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i ], [ %i.eq, %bb.bh ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49891)
  call void @llvm.experimental.noalias.scope.decl(metadata !49892)
  call void @llvm.experimental.noalias.scope.decl(metadata !49893)
  call void @llvm.experimental.noalias.scope.decl(metadata !49894)
  %i.bc = load ptr, ptr %i.v, align 8, !alias.scope !49895, !nonnull !28, !noundef !28
  %i.bd = atomicrmw sub ptr %i.bc, i64 1 release, align 8, !noalias !49895
  %i.be = icmp eq i64 %i.bd, 1
  br i1 %i.be, label %bb.i, label %.body118

bb.i:                                             ; preds = %.body128
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #74
          to label %.body118 unwind label %bb.eb

bb.j:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.body128

bb.k:                                             ; preds = %bb.h
  %i.bg = load i64, ptr %i.u, align 8, !range !41, !noundef !28
  %i.bh = trunc nuw i64 %i.bg to i1
  br i1 %i.bh, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.025.0.copyload = load ptr, ptr %i.z, align 8 ; 2 uses
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.5.0.copyload = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.633.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.637.sroa.7.sroa.0)
  %i.bi = icmp eq ptr %.sroa.025.0.copyload, null
  br i1 %i.bi, label %bb.ah, label %bb.ak

bb.m:                                             ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !49896)
  call void @llvm.experimental.noalias.scope.decl(metadata !49897)
  call void @llvm.experimental.noalias.scope.decl(metadata !49898)
  call void @llvm.experimental.noalias.scope.decl(metadata !49899)
  %i.bj = load ptr, ptr %i.v, align 8, !alias.scope !49900, !nonnull !28, !noundef !28
  %i.bk = atomicrmw sub ptr %i.bj, i64 1 release, align 8, !noalias !49900
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs7ReadDirECskXtk6F4WjxZ_4just.exit121

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v) #74
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs7ReadDirECskXtk6F4WjxZ_4just.exit121 unwind label %.loopexit212

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs7ReadDirECskXtk6F4WjxZ_4just.exit121: ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  switch i64 %i.bb, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.q
  ]

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs7ReadDirECskXtk6F4WjxZ_4just.exit121
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.450.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  store i64 -9223372036854775804, ptr %0, align 8
  br label %bb.ag

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs7ReadDirECskXtk6F4WjxZ_4just.exit121
  br i1 %.not102, label %bb.y, label %bb.x

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs7ReadDirECskXtk6F4WjxZ_4just.exit121
  call void @llvm.experimental.noalias.scope.decl(metadata !49901)
  call void @llvm.experimental.noalias.scope.decl(metadata !49902)
  %i.bm = load ptr, ptr %i.w, align 8, !alias.scope !49903, !noalias !49904, !noundef !28 ; 7 uses
  %.not.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load i64, ptr %i.al, align 8, !alias.scope !49903, !noalias !49904, !noundef !28 ; 6 uses
  %i.bo = icmp eq i64 %i.bn, 0                    ; 2 uses
  br i1 %i.bo, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.r
  %xtraiter2066 = and i64 %i.bn, 7                ; 2 uses
  %lcmp.mod2067.not = icmp eq i64 %xtraiter2066, 0
  br i1 %lcmp.mod2067.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.023.040.i.i.prol = phi ptr [ %i.bq, %.lr.ph.i.i.prol ], [ %i.bm, %.lr.ph.i.i.preheader ]
  %.sroa.021.039.i.i.prol = phi i64 [ %i.br, %.lr.ph.i.i.prol ], [ %i.bn, %.lr.ph.i.i.preheader ]
  %prol.iter2068 = phi i64 [ %prol.iter2068.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i.i.prol, i64 280
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !49905, !nonnull !28, !noundef !28 ; 3 uses
  %i.br = add i64 %.sroa.021.039.i.i.prol, -1     ; 2 uses
  %prol.iter2068.next = add i64 %prol.iter2068, 1 ; 2 uses
  %prol.iter2068.cmp.not = icmp eq i64 %prol.iter2068.next, %xtraiter2066
  br i1 %prol.iter2068.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !49643

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %.sroa.023.040.i.i.unr = phi ptr [ %i.bm, %.lr.ph.i.i.preheader ], [ %i.bq, %.lr.ph.i.i.prol ]
  %.sroa.021.039.i.i.unr = phi i64 [ %i.bn, %.lr.ph.i.i.preheader ], [ %i.br, %.lr.ph.i.i.prol ]
  %i.bs = icmp ult i64 %i.bn, 8
  br i1 %i.bs, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.r
  %.sroa.023.0.lcssa.i.i = phi ptr [ %i.bm, %bb.r ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.ck, %.lr.ph.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.023.0.lcssa.i.i, i64 274
  %i.bu = load i16, ptr %i.bt, align 2, !noalias !49905, !noundef !28
  %.not38.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not38.i.i, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit.thread, label %_RINvMNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB5_7set_val9SetValZSTNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3G_13OccupiedEntryB1J_B2i_E9remove_kv0NtNtB9_5alloc6GlobalECskXtk6F4WjxZ_4just.exit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.023.040.i.i = phi ptr [ %i.ck, %.lr.ph.i.i ], [ %.sroa.023.040.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.021.039.i.i = phi i64 [ %i.cl, %.lr.ph.i.i ], [ %.sroa.021.039.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.023.040.i.i, i64 280
  %i.bw = load ptr, ptr %i.bv, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 280
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 280
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 280
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 280
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 280
  %i.cg = load ptr, ptr %i.cf, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 280
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !49905, !nonnull !28, !noundef !28
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 280
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !49905, !nonnull !28, !noundef !28 ; 2 uses
end_hunk_5
begin_hunk_6_@_RNvMNtCskXtk6F4WjxZ_4just6searchNtB2_6Search8justfile:bb.a
  %i.cu = invoke fastcc noundef zeroext i1 @_RNvXsl_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i) #76
          to label %bb.ac unwind label %.loopexit212

bb.y:                                             ; preds = %bb.ac, %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !49915)
  call void @llvm.experimental.noalias.scope.decl(metadata !49916)
  call void @llvm.experimental.noalias.scope.decl(metadata !49917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !49918
  %.sroa.06.0.copyload.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !49918 ; 3 uses
  %.not.i.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i.i, null
  br i1 %.not.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.sroa.47.0.copyload.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !49918 ; 2 uses
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !49918
  store ptr %.sroa.06.0.copyload.i.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !49918
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !49918
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i.i, align 8, !noalias !49918
  store ptr %.sroa.06.0.copyload.i.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !49918
  store i64 %.sroa.47.0.copyload.i.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !49918
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sink31.i.i.i = phi i64 [ 1, %bb.z ], [ 0, %bb.y ] ; 2 uses
  store i64 %.sink31.i.i.i, ptr %i.h, align 8, !noalias !49918
  store i64 %.sink31.i.i.i, ptr %i.as, align 8, !noalias !49918
  store i64 0, ptr %i.at, align 8, !noalias !49918
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !49919
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !49918
  %i.cv = load ptr, ptr %i.g, align 8, !noalias !49919, !noundef !28 ; 2 uses
  %.not5.i.i.i.i.i = icmp eq ptr %i.cv, null
  br i1 %.not5.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.aa, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %i.cw = phi ptr [ %i.db, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %i.cv, %bb.aa ]
  %.sroa.43.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !49919
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = getelementptr inbounds nuw [24 x i8], ptr %i.cx, i64 %.sroa.43.0.copyload.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49920)
  call void @llvm.experimental.noalias.scope.decl(metadata !49921)
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !49922, !noalias !49919 ; 2 uses
  %i.cz = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.cz, label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %i.da, align 8, !alias.scope !49923, !noalias !49919, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49924
  br label %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %bb.ab, %.lr.ph.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !49919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !49919
  call fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE10dying_nextCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.h), !noalias !49918
  %i.db = load ptr, ptr %i.g, align 8, !noalias !49919, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !49919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !49918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %.loopexit211, label %bb.b

bb.ac:                                            ; preds = %.noexc126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !49914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !49914
  br i1 %i.cu, label %bb.ad, label %bb.y

bb.ad:                                            ; preds = %bb.ac
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %.loopexit211

bb.ae:                                            ; preds = %bb.ag, %.loopexit211
  ret void

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit: ; preds = %.noexc122, %bb.w
  %.sroa.06.0.copyload.i.i.i152896 = phi ptr [ %i.bm, %.noexc122 ], [ %i.cs, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !49906
  %.not101 = icmp eq i64 %.sroa.0.0.copyload.pre.i.i, -1
  br i1 %.not101, label %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit.thread, label %.thread938, !prof !47

.thread938:                                       ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.copyload.pre.i.i, ptr %i.dc, align 8
  %.sroa.4201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.0.copyload.pre.i.i, ptr %.sroa.4201.0..sroa_idx, align 8
  %.sroa.5202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.8.0.copyload.pre.i.i, ptr %.sroa.5202.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49925
  br label %bb.ef

_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.q, %._crit_edge.i.i, %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @916) #71
          to label %bb.af unwind label %.loopexit.split-lp213

bb.af:                                            ; preds = %_RNvMsi_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCsaKJjC64KgbL_3std4path7PathBufNtNtB7_7set_val9SetValZSTE9pop_firstCskXtk6F4WjxZ_4just.exit.thread
  unreachable

bb.ag:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3set8BTreeSetNtNtCsaKJjC64KgbL_3std4path7PathBufEECskXtk6F4WjxZ_4just.exit174, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.627.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !49926
  store ptr %.sroa.627.0.copyload, ptr %i.f, align 8, !noalias !49926
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49926
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.053.0593, i64 noundef %.sroa.454.0594)
          to label %bb.ec unwind label %bb.ai, !noalias !49927

bb.ai:                                            ; preds = %bb.ah
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) #72
          to label %.body128 unwind label %bb.aj, !noalias !49927

bb.aj:                                            ; preds = %bb.ai
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73, !noalias !49927
  unreachable

bb.ak:                                            ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.637.sroa.7.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  store ptr %.sroa.025.0.copyload, ptr %i.t, align 8
  store ptr %.sroa.627.0.copyload, ptr %.sroa.440.0..sroa_idx, align 8
  store ptr %.sroa.7.sroa.5.0.copyload, ptr %.sroa.440.sroa.4.sroa.4.0..sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.633.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke void @_RNvMsA_NtCsaKJjC64KgbL_3std2fsNtB5_8DirEntry9file_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.t)
          to label %bb.am unwind label %bb.al

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit: ; preds = %bb.an, %.body, %bb.al
  %.pn107 = phi { ptr, i32 } [ %i.df, %bb.al ], [ %.pn, %.body ], [ %.pn, %bb.an ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs8DirEntryECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(40) %i.t) #72
          to label %.body128 unwind label %bb.eb

bb.al:                                            ; preds = %bb.ak
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit

bb.am:                                            ; preds = %bb.ak
  %i.dg = load ptr, ptr %i.aa, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.dh = load i64, ptr %i.ab, align 8, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dg, i64 noundef %i.dh)
          to label %bb.ao unwind label %.loopexit

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.be, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.aw, %.body148
  %.pn = phi { ptr, i32 } [ %eh.lpad-body149, %.body148 ], [ %i.ds, %bb.aw ], [ %i.ef, %bb.be ], [ %i.ef, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49928)
  %.val.i = load i64, ptr %i.s, align 8, !alias.scope !49929 ; 2 uses
  %i.di = icmp eq i64 %.val.i, 0
  br i1 %i.di, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit, label %bb.an

bb.an:                                            ; preds = %.body
  %.val1.i = load ptr, ptr %i.aa, align 8, !alias.scope !49928, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49930
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit

.loopexit:                                        ; preds = %bb.am
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.at
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ao:                                            ; preds = %bb.am
  %i.dj = load i64, ptr %i.q, align 8, !range !41, !noundef !28
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !49931)
  %.val.i130 = load i64, ptr %i.s, align 8, !alias.scope !49932 ; 2 uses
  %i.dl = icmp eq i64 %.val.i130, 0
  br i1 %i.dl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dg, i64 noundef %.val.i130, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49933
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132

bb.ar:                                            ; preds = %bb.ao
  %i.dm = load ptr, ptr %i.ac, align 8, !nonnull !28, !noundef !28 ; 2 uses
  %i.dn = load i64, ptr %i.ad, align 8, !noundef !28 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70
  br i1 %.not103, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.do = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef range(i64 1, -9223372036854775807) 8) #70 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.at, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtB4_6string6StringENvMB1U_B1S_6as_strEE3newCskXtk6F4WjxZ_4just.exit, !prof !26

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #71
          to label %.noexc133 unwind label %.loopexit.split-lp

.noexc133:                                        ; preds = %bb.at
  unreachable

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtB4_6string6StringENvMB1U_B1S_6as_strEE3newCskXtk6F4WjxZ_4just.exit: ; preds = %bb.as
  store <2 x ptr> %5, ptr %i.do, align 8
  br label %bb.ax

bb.au:                                            ; preds = %bb.ar
  %i.dq = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !49934 ; 5 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.av, label %bb.ay, !prof !26

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #71
          to label %.noexc134 unwind label %bb.aw

.noexc134:                                        ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ax:                                            ; preds = %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtB4_6string6StringENvMB1U_B1S_6as_strEE3newCskXtk6F4WjxZ_4just.exit, %bb.ay
  %.sroa.3.0 = phi ptr [ @918, %bb.ay ], [ @917, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtB4_6string6StringENvMB1U_B1S_6as_strEE3newCskXtk6F4WjxZ_4just.exit ] ; 7 uses
  %.sroa.043.0 = phi ptr [ %i.dq, %bb.ay ], [ %i.do, %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtBN_5slice4iter4IterNtNtB4_6string6StringENvMB1U_B1S_6as_strEE3newCskXtk6F4WjxZ_4just.exit ] ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !invariant.load !28, !nonnull !28
  %.promoted = load ptr, ptr %i.w, align 8
  %i.dv = icmp ugt i64 %i.dn, 15
  %.not15.i1672 = icmp eq i64 %i.dn, 0
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.outer

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.outer: ; preds = %bb.ea, %bb.ax
  %.sroa.557.0..sroa_idx.promoted893.ph = phi i64 [ %.sroa.557.0..sroa_idx.promoted891, %bb.ea ], [ %.sroa.557.0..sroa_idx.promoted, %bb.ax ] ; 6 uses
  %.ph = phi i64 [ %i.pa, %bb.ea ], [ %.sroa.557.0..sroa_idx.promoted, %bb.ax ] ; 7 uses
  %.ph1682 = phi ptr [ %i.pb, %bb.ea ], [ %.promoted, %bb.ax ] ; 14 uses
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208

bb.ay:                                            ; preds = %bb.au
  store i64 0, ptr %i.dq, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @915, i64 32, i1 false)
  br label %bb.ax

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208: ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.backedge, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.outer
  %i.dw = invoke { ptr, i64 } %i.du(ptr noundef nonnull %.sroa.043.0)
          to label %bb.az unwind label %.loopexit1683 ; 2 uses

.loopexit1683:                                    ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208
  %lpad.loopexit1685 = landingpad { ptr, i32 }
          cleanup
  br label %.body148

.loopexit.split-lp1684:                           ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread
  %lpad.loopexit.split-lp1686 = landingpad { ptr, i32 }
          cleanup
  br label %.body148

.body148:                                         ; preds = %.loopexit1683, %.loopexit.split-lp1684, %bb.br, %bb.bs, %bb.cm, %bb.cn, %bb.cv, %bb.cw, %bb.dv, %bb.dw, %bb.dy, %bb.dz
  %eh.lpad-body149 = phi { ptr, i32 } [ %.pn.ph.i.i.i.i, %bb.cn ], [ %i.gb, %bb.br ], [ %i.gb, %bb.bs ], [ %i.ow, %bb.dz ], [ %i.ow, %bb.dy ], [ %.pn.ph.i26.i.i.i, %bb.dw ], [ %i.ih, %bb.cw ], [ %i.ih, %bb.cv ], [ %.pn.ph.i.i.i.i, %bb.cm ], [ %.pn.ph.i26.i.i.i, %bb.dv ], [ %lpad.loopexit1685, %.loopexit1683 ], [ %lpad.loopexit.split-lp1686, %.loopexit.split-lp1684 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just(ptr nonnull %.sroa.043.0, ptr nonnull %.sroa.3.0) #72
          to label %.body unwind label %bb.eb

bb.az:                                            ; preds = %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208
  %i.dx = extractvalue { ptr, i64 } %i.dw, 0      ; 3 uses
  %.not104 = icmp eq ptr %i.dx, null
  br i1 %.not104, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dy = extractvalue { ptr, i64 } %i.dw, 1
  %.not105 = icmp eq i64 %i.dn, %i.dy
  br i1 %.not105, label %bb.bi, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.backedge

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.backedge: ; preds = %.lr.ph, %bb.ba, %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit
  br label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208

bb.bb:                                            ; preds = %bb.az
  %i.dz = load ptr, ptr %.sroa.3.0, align 8, !invariant.load !28 ; 2 uses
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  invoke void %i.dz(ptr noundef nonnull %.sroa.043.0)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !range !43, !invariant.load !28 ; 2 uses
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.bd
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 16
  %i.ee = load i64, ptr %i.ed, align 8, !range !48, !invariant.load !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.0, i64 noundef %i.eb, i64 noundef range(i64 1, -9223372036854775807) %i.ee) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit

bb.be:                                            ; preds = %bb.bc
  %i.ef = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !43, !invariant.load !28 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %.body, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.be
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.3.0, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !range !48, !invariant.load !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.043.0, i64 noundef %i.eh, i64 noundef range(i64 1, -9223372036854775807) %i.ek) #70
  br label %.body

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit: ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i, %bb.bd
  call void @llvm.experimental.noalias.scope.decl(metadata !49935)
  %.val.i138 = load i64, ptr %i.s, align 8, !alias.scope !49936 ; 2 uses
  %i.el = icmp eq i64 %.val.i138, 0
  br i1 %i.el, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132, label %bb.bf

bb.bf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit
  %.val1.i139 = load ptr, ptr %i.aa, align 8, !alias.scope !49935, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i139, i64 noundef %.val.i138, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !49937
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit, %bb.bf, %bb.ap, %bb.aq
  %.sroa.557.0..sroa_idx.promoted892 = phi i64 [ %.sroa.557.0..sroa_idx.promoted, %bb.ap ], [ %.sroa.557.0..sroa_idx.promoted, %bb.aq ], [ %.sroa.557.0..sroa_idx.promoted893.ph, %bb.bf ], [ %.sroa.557.0..sroa_idx.promoted893.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit ]
  %i.em = phi i64 [ %i.bb, %bb.ap ], [ %i.bb, %bb.aq ], [ %.ph, %bb.bf ], [ %.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemReEL_EECskXtk6F4WjxZ_4just.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !49938)
  call void @llvm.experimental.noalias.scope.decl(metadata !49939)
  call void @llvm.experimental.noalias.scope.decl(metadata !49940)
  call void @llvm.experimental.noalias.scope.decl(metadata !49941)
  %i.en = load ptr, ptr %i.t, align 8, !alias.scope !49942, !nonnull !28, !noundef !28
  %i.eo = atomicrmw sub ptr %i.en, i64 1 release, align 8, !noalias !49942
  %i.ep = icmp eq i64 %i.eo, 1
  br i1 %i.ep, label %bb.bg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirEECskXtk6F4WjxZ_4just.exit.i.i

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.t) #74
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirEECskXtk6F4WjxZ_4just.exit.i.i unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.eq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load ptr, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !49943, !nonnull !28, !noundef !28 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx, align 8, !alias.scope !49943 ; 2 uses
  store i8 0, ptr %.val2.i.i, align 1
  %i.er = icmp eq i64 %.val3.i.i, 0
  br i1 %i.er, label %.body128, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i5.i.i.i: ; preds = %bb.bh
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %.val3.i.i, i64 noundef 1) #70
  br label %.body128

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.bg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECskXtk6F4WjxZ_4just.exit132
  %.val.i.i = load ptr, ptr %.sroa.440.0..sroa_idx, align 8, !alias.scope !49943, !nonnull !28, !noundef !28 ; 2 uses
  %.val1.i.i = load i64, ptr %.sroa.440.sroa.4.0..sroa.440.0..sroa_idx.sroa_idx, align 8, !alias.scope !49943 ; 2 uses
  store i8 0, ptr %.val.i.i, align 1
  %i.es = icmp eq i64 %.val1.i.i, 0
  br i1 %i.es, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs8DirEntryECskXtk6F4WjxZ_4just.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i5.i4.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtNtCsaKJjC64KgbL_3std3sys2fs4unix12InnerReadDirEECskXtk6F4WjxZ_4just.exit.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #70
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std2fs8DirEntryECskXtk6F4WjxZ_4just.exit

bb.bi:                                            ; preds = %bb.ba
  br i1 %i.dv, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !49944)
  call void @llvm.experimental.noalias.scope.decl(metadata !49945)
  br i1 %.not15.i1672, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %.lr.ph

bb.bk:                                            ; preds = %.lr.ph
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1676, i64 1
  %i.eu = add nsw i64 %.sroa.5.0.i1675, -1        ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i1674, i64 1
  %i.ew = add nsw i64 %.sroa.58.0.i1673, -1       ; 2 uses
  %.not.i143 = icmp eq i64 %i.eu, 0
  %.not15.i = icmp eq i64 %i.ew, 0
  %or.cond.i = select i1 %.not.i143, i1 true, i1 %.not15.i
  br i1 %or.cond.i, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bj, %bb.bk
  %.sroa.0.0.i1676 = phi ptr [ %i.et, %bb.bk ], [ %i.dm, %bb.bj ] ; 2 uses
  %.sroa.5.0.i1675 = phi i64 [ %i.eu, %bb.bk ], [ %i.dn, %bb.bj ]
  %.sroa.05.0.i1674 = phi ptr [ %i.ev, %bb.bk ], [ %i.dx, %bb.bj ] ; 2 uses
  %.sroa.58.0.i1673 = phi i64 [ %i.ew, %bb.bk ], [ %i.dn, %bb.bj ]
  %i.ex = load i8, ptr %.sroa.0.0.i1676, align 1, !alias.scope !49944, !noalias !49945, !noundef !28 ; 2 uses
  %i.ey = add i8 %i.ex, -65
  %i.ez = icmp ult i8 %i.ey, 26
  %i.fa = select i1 %i.ez, i8 32, i8 0
  %.sroa.012.0.i = or i8 %i.fa, %i.ex
  %i.fb = load i8, ptr %.sroa.05.0.i1674, align 1, !alias.scope !49945, !noalias !49944, !noundef !28 ; 2 uses
  %i.fc = add i8 %i.fb, -65
  %i.fd = icmp ult i8 %i.fc, 26
  %i.fe = select i1 %i.fd, i8 32, i8 0
  %.sroa.013.0.i = or i8 %i.fe, %i.fb
  %i.ff = icmp eq i8 %.sroa.012.0.i, %.sroa.013.0.i
  br i1 %i.ff, label %bb.bk, label %_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit.thread208.backedge

_RNvMNtNtCsj6eKBz9Db1c_4core5slice5asciiSh27eq_ignore_ascii_case_simple.exit: ; preds = %bb.bi
end_hunk_6
begin_hunk_7_@_RNvMNtCskXtk6F4WjxZ_4just7keywordNtB2_7Keyword11from_lexeme:bb.a
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
end_hunk_7
begin_hunk_8_@_RNvMNtCskXtk6F4WjxZ_4just8analyzerNtB2_8Analyzer8justfile:bb.a
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
end_hunk_8
begin_hunk_9_@_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser14make_code_spanCskXtk6F4WjxZ_4just:bb.a
.lr.ph.i:                                         ; preds = %bb.bs
  %.idx.i = shl nuw nsw i64 %i.jz, 3
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jy, i64 %.idx.i
  %i.kc = load i64, ptr %i.h, align 8, !alias.scope !62536, !noundef !28 ; 2 uses
  %i.kd = load ptr, ptr %i.f, align 8, !alias.scope !62536, !nonnull !28
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bw, %.lr.ph.i
  %.sroa.5.013.i = phi ptr [ %i.kb, %.lr.ph.i ], [ %i.ke, %bb.bw ]
  %i.ke = getelementptr inbounds i8, ptr %.sroa.5.013.i, i64 -8 ; 3 uses
  %i.kf = load i64, ptr %i.ke, align 8, !range !58, !noalias !62536, !noundef !28 ; 3 uses
  %i.kg = icmp ult i64 %i.kf, %i.kc
  br i1 %i.kg, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.kh = getelementptr inbounds nuw [48 x i8], ptr %i.kd, i64 %i.kf
  %i.ki = load i8, ptr %i.kh, align 8, !range !130, !noalias !62536, !noundef !28
  switch i8 %i.ki, label %.critedge [
    i8 44, label %_RNvMs3_NtCse6cJcrsIENc_14pulldown_cmark5parseINtNtB7_4tree4TreeNtB5_4ItemE11is_in_table.exit
    i8 0, label %bb.bw
    i8 1, label %bb.bw
    i8 2, label %bb.bw
    i8 3, label %bb.bw
    i8 4, label %bb.bw
    i8 5, label %bb.bw
    i8 6, label %bb.bw
    i8 7, label %bb.bw
    i8 8, label %bb.bw
    i8 9, label %bb.bw
    i8 10, label %bb.bw
    i8 13, label %bb.bw
    i8 14, label %bb.bw
    i8 15, label %bb.bw
    i8 16, label %bb.bw
    i8 17, label %bb.bw
    i8 18, label %bb.bw
    i8 19, label %bb.bw
    i8 20, label %bb.bw
    i8 21, label %bb.bw
    i8 22, label %bb.bw
    i8 23, label %bb.bw
    i8 24, label %bb.bw
    i8 25, label %bb.bw
    i8 26, label %bb.bw
    i8 45, label %bb.bw
    i8 46, label %bb.bw
    i8 47, label %bb.bw
  ]

bb.bv:                                            ; preds = %bb.bt
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.kf, i64 noundef %i.kc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1193) #75
          to label %.noexc124 unwind label %.loopexit.split-lp

.noexc124:                                        ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu, %bb.bu
  %i.kj = icmp eq ptr %i.jy, %i.ke
  br i1 %i.kj, label %.critedge, label %bb.bt

_RNvMs3_NtCse6cJcrsIENc_14pulldown_cmark5parseINtNtB7_4tree4TreeNtB5_4ItemE11is_in_table.exit: ; preds = %bb.bu
  %i.kk = load i64, ptr %i.c, align 8, !range !37, !noundef !28 ; 2 uses
  %.not.i125 = icmp eq i64 %i.kk, -1
  br i1 %.not.i125, label %bb.bx, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringE18get_or_insert_withNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB1N_6Parser14make_code_spans_0ECskXtk6F4WjxZ_4just.exit

bb.bx:                                            ; preds = %_RNvMs3_NtCse6cJcrsIENc_14pulldown_cmark5parseINtNtB7_4tree4TreeNtB5_4ItemE11is_in_table.exit
  br i1 %.not.i.i.i126, label %.invoke, label %bb.by, !prof !42

bb.by:                                            ; preds = %bb.bx
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !62537
  %i.kl = tail call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !62537 ; 2 uses
  %i.km = icmp eq ptr %i.kl, null
  br i1 %i.km, label %.invoke, label %_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser14make_code_spans_0CskXtk6F4WjxZ_4just.exit.i

_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser14make_code_spans_0CskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.by
  store i64 %i.ao, ptr %i.c, align 8
  store ptr %i.kl, ptr %.sroa.42.0..sroa_idx.i128, align 8
  store i64 0, ptr %.sroa.53.0..sroa_idx.i129, align 8
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringE18get_or_insert_withNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB1N_6Parser14make_code_spans_0ECskXtk6F4WjxZ_4just.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringE18get_or_insert_withNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB1N_6Parser14make_code_spans_0ECskXtk6F4WjxZ_4just.exit: ; preds = %_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser14make_code_spans_0CskXtk6F4WjxZ_4just.exit.i, %_RNvMs3_NtCse6cJcrsIENc_14pulldown_cmark5parseINtNtB7_4tree4TreeNtB5_4ItemE11is_in_table.exit
  %i.kn = phi i64 [ %i.ao, %_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser14make_code_spans_0CskXtk6F4WjxZ_4just.exit.i ], [ %i.kk, %_RNvMs3_NtCse6cJcrsIENc_14pulldown_cmark5parseINtNtB7_4tree4TreeNtB5_4ItemE11is_in_table.exit ] ; 3 uses
  %i.ko = icmp ugt i64 %.sroa.019.0212, %.sroa.0.0214
  br i1 %i.ko, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit103.thread161.invoke, label %bb.bz, !prof !31

bb.bz:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringE18get_or_insert_withNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB1N_6Parser14make_code_spans_0ECskXtk6F4WjxZ_4just.exit
  %i.kp = icmp eq i64 %.sroa.019.0212, 0
  br i1 %i.kp, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit, label %bb.ca

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit: ; preds = %bb.ca, %bb.bz
  %i.kq = load i8, ptr %i.ig, align 1, !alias.scope !62538, !noundef !28
  %i.kr = icmp sgt i8 %i.kq, -65
  br i1 %i.kr, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit103.thread161.invoke, !prof !33

bb.ca:                                            ; preds = %bb.bz
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.019.0212
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !62538, !noundef !28
  %i.ku = icmp sgt i8 %i.kt, -65
  br i1 %i.ku, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit103.thread161.invoke, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.019.0212
  %gepdiff = sub nuw nsw i64 %.sroa.0.0214, %.sroa.019.0212 ; 4 uses
  %i.kw = load i64, ptr %.sroa.53.0..sroa_idx.i129, align 8, !noundef !28 ; 5 uses
  %i.kx = sub i64 %i.kn, %i.kw
  %i.ky = icmp ugt i64 %gepdiff, %i.kx
  br i1 %i.ky, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i134, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i134: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.kw, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc135 unwind label %.loopexit

.noexc135:                                        ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i134
  %i.kz = load i64, ptr %.sroa.53.0..sroa_idx.i129, align 8, !noundef !28 ; 2 uses
  %i.la = icmp sgt i64 %i.kz, -1
  tail call void @llvm.assume(i1 %i.la)
  %.pre.pre = load i64, ptr %i.c, align 8, !range !37
  br label %bb.cb

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread
  %i.lb = icmp sgt i64 %i.kw, -1
  tail call void @llvm.assume(i1 %i.lb)
  %.not.i133 = icmp eq i64 %.sroa.0.0214, %.sroa.019.0212
  br i1 %.not.i133, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132, %.noexc135
  %.pre = phi i64 [ %.pre.pre, %.noexc135 ], [ %i.kn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132 ]
  %i.lc = phi i64 [ %i.kz, %.noexc135 ], [ %i.kw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132 ] ; 2 uses
  %i.ld = load ptr, ptr %.sroa.42.0..sroa_idx.i128, align 8, !nonnull !28, !noundef !28
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.le, ptr nonnull readonly align 1 %i.kv, i64 %gepdiff, i1 false), !noalias !62539
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132
  %i.lf = phi i64 [ %.pre, %bb.cb ], [ %i.kn, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132 ] ; 2 uses
  %i.lg = phi i64 [ %i.lc, %bb.cb ], [ %i.kw, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.i132 ]
  %i.lh = add i64 %i.lg, %gepdiff                 ; 5 uses
  store i64 %i.lh, ptr %.sroa.53.0..sroa_idx.i129, align 8
  %i.li = icmp sgt i64 %i.lh, -1
  tail call void @llvm.assume(i1 %i.li)
  %i.lj = icmp eq i64 %i.lf, %i.lh
  br i1 %i.lj, label %bb.cd, label %bb.ce, !prof !44

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.lf, i64 noundef 1, i64 noundef 1, i64 noundef 1)
          to label %bb.ce unwind label %.loopexit

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.lk = load ptr, ptr %.sroa.42.0..sroa_idx.i128, align 8, !nonnull !28, !noundef !28
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 %i.lh
  store i8 124, ptr %i.ll, align 1, !noalias !62540
  %i.lm = add nuw i64 %i.lh, 1
  store i64 %i.lm, ptr %.sroa.53.0..sroa_idx.i129, align 8
  %i.ln = add i64 %.sroa.0.0214, 2                ; 2 uses
  br label %.critedge

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit143: ; preds = %bb.cf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit
  resume { ptr, i32 } %.pn

bb.cf:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit
  %i.lo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i.i142 = load ptr, ptr %i.lo, align 8, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i142, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !62541
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit143
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser19handle_inline_pass1CskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(576) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.16.i = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.9.i = alloca [7 x i8], align 1           ; 6 uses
  %.sroa.54.i = alloca [31 x i8], align 1         ; 4 uses
  %.sroa.5.i = alloca [7 x i8], align 1           ; 7 uses
  %i.e = alloca [56 x i8], align 8                ; 15 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 24 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  %i.l = alloca [24 x i8], align 8                ; 20 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %i.n = alloca [32 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 15 uses
  %.sroa.13.i = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.7.i = alloca [7 x i8], align 1           ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [8 x i8], align 8                 ; 14 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [40 x i8], align 8                ; 7 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 16               ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 9 uses
  %i.ac = alloca [24 x i8], align 8               ; 7 uses
  %i.ad = alloca [24 x i8], align 8               ; 16 uses
  %i.ae = alloca [24 x i8], align 8               ; 8 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 12 uses
  %.sroa.10 = alloca [31 x i8], align 1           ; 5 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 5 uses
  %i.ak = alloca [40 x i8], align 8               ; 10 uses
  %.sroa.6614 = alloca [7 x i8], align 1          ; 5 uses
  %i.al = alloca [40 x i8], align 8               ; 14 uses
  %i.am = alloca [32 x i8], align 8               ; 10 uses
  %i.an = alloca [24 x i8], align 8               ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.13 = alloca [7 x i8], align 1            ; 2 uses
  %.sroa.9600.sroa.0 = alloca [7 x i8], align 1   ; 2 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  %i.ar = alloca [24 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 7 uses
  %i.av = alloca [40 x i8], align 8               ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !28 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.ba = load i64, ptr %i.az, align 8, !noundef !28 ; 2 uses
  %.not345 = icmp eq i64 %i.ba, 0
  br i1 %.not345, label %bb.b, label %bb.c, !prof !44

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1105) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.bb = load ptr, ptr %i.ay, align 8, !nonnull !28, !noundef !28
  %i.bc = getelementptr [8 x i8], ptr %i.bb, i64 %i.ba
  %i.bd = getelementptr i8, ptr %i.bc, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !range !58, !noundef !28 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 71 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 72 uses
  %i.bh = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.bi = icmp ult i64 %i.be, %i.bh
  br i1 %i.bi, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bj = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.bk = getelementptr inbounds nuw [48 x i8], ptr %i.bj, i64 %i.be
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !28 ; 37 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !28, !noundef !28 ; 36 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.bq = load i64, ptr %i.bp, align 8, !noundef !28 ; 3 uses
  %i.br = icmp eq i64 %i.bm, 0
  br i1 %i.br, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not.i = icmp ult i64 %i.bm, %i.bq
  br i1 %.not.i, label %bb.f, label %.split.i

.split.i:                                         ; preds = %bb.e
  %i.bs = icmp eq i64 %i.bm, %i.bq
  br i1 %i.bs, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.split, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !62804, !noundef !28
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.split, label %bb.h

_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.split: ; preds = %bb.f, %.split.i, %bb.d
  %i.bw = icmp eq i64 %i.ax, 0
  br i1 %i.bw, label %._crit_edge, label %.lr.ph2279

.lr.ph2279:                                       ; preds = %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.split
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 8 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 6 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.514.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i453 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 9 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 13 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.k, i64 1 ; 2 uses
  %.sroa.4.0..sroa_idx78.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 11 uses
  %.sroa.579.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 14 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.4.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.4.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  %.sroa.9600.0..sroa_idx601 = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.5605.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %.sroa.6606.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %.sroa.5608.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %.sroa.6609.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.8610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.4624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 17
  %.sroa.6626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.sroa.7627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %.sroa.514.0..sroa_idx.i501 = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %.sroa.4.0..sroa_idx.i502 = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 7 uses
  %.sroa.6.0..sroa_idx.i503 = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 3 uses
  %.sroa.715.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.sroa.5.0..sroa_idx.i.i516 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.69.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.sroa.642.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 33 ; 2 uses
  %.sroa.4.0..sroa_idx39.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.7.0..sroa_idx.i519 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.843.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 5 uses
  %.sroa.8.0..sroa_idx.i522 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 5 uses
  %.sroa.9.0..sroa_idx.i523 = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.11.0..sroa_idx.i524 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 572
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 573
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.510.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.513.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.614.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.715.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.917.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.1018.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.816.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 25
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.250.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.351.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.452.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.54.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.54.i, i64 7
  %.sroa.8620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10, i64 7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 1
  %.sroa.5562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.5.0..sroa_idx561 = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  %.sroa.5562.0..sroa_idx563 = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6.0..sroa_idx565 = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %.sroa.14.0..sroa_idx574 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.16.0..sroa_idx576 = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.6582.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.6582.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %.sroa.42.0..sroa_idx.i105.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 6 uses
  %.sroa.53.0..sroa_idx.i106.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 9 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %i.ei = getelementptr inbounds nuw i8, ptr %i.al, i64 9
  %1 = insertelement <2 x ptr> poison, ptr %i.bx, i64 0
  %2 = insertelement <2 x ptr> %1, ptr %0, i64 1
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.be, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1106) #75
  unreachable

bb.h:                                             ; preds = %bb.f, %.split.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bq, i64 noundef 0, i64 noundef %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1107) #75
  unreachable

bb.i:                                             ; preds = %.lr.ph2279, %.backedge
  %.sroa.0169.02278 = phi i64 [ 0, %.lr.ph2279 ], [ %.sroa.0169.0.be, %.backedge ] ; 16 uses
  %.sroa.0180.02276 = phi i64 [ %i.ax, %.lr.ph2279 ], [ %.sroa.0180.0.be, %.backedge ] ; 119 uses
  %i.ej = load i64, ptr %i.bg, align 8, !noundef !28 ; 12 uses
  %i.ek = icmp ult i64 %.sroa.0180.02276, %i.ej
  br i1 %i.ek, label %bb.j, label %bb.k

._crit_edge:                                      ; preds = %.backedge, %_RNvXs8_NtNtCsj6eKBz9Db1c_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.split
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.el, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.em, i8 0, i64 16, i1 false)
  call void @_RNvMs7_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_10CodeDelims5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.en)
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @_RNvMs8_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_10MathDelims5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eo)
  ret void

bb.j:                                             ; preds = %bb.i
  %i.ep = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28 ; 7 uses
  %i.eq = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %.sroa.0180.02276 ; 16 uses
  %i.er = load i8, ptr %i.eq, align 8, !range !130, !noundef !28
  switch i8 %i.er, label %bb.l [
    i8 1, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.dz
    i8 5, label %bb.gi
    i8 6, label %bb.gq
    i8 7, label %bb.tf
  ]

bb.k:                                             ; preds = %bb.i
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0180.02276, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1108) #75
  unreachable

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit507, %bb.pe, %bb.pb, %bb.dq, %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser15handle_wikilinkCskXtk6F4WjxZ_4just.exit.thread, %bb.dv, %bb.dx, %bb.dt, %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser14make_math_spanCskXtk6F4WjxZ_4just.exit, %bb.db, %bb.tj, %bb.gm, %bb.gg, %bb.j
  %.sroa.017.0 = phi i64 [ %.sroa.0180.02276, %bb.j ], [ %.sroa.0180.02276, %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser14make_math_spanCskXtk6F4WjxZ_4just.exit ], [ %.sroa.0180.02276, %bb.db ], [ %.sroa.0180.02276, %bb.tj ], [ %.sroa.0180.02276, %bb.dt ], [ %.sroa.0180.02276, %bb.dq ], [ %.sroa.0180.02276, %bb.gg ], [ %.sroa.0180.02276, %bb.gm ], [ %.sroa.0180.02276, %bb.dv ], [ %.sroa.0180.02276, %bb.dx ], [ %.sroa.0180.02276, %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser15handle_wikilinkCskXtk6F4WjxZ_4just.exit.thread ], [ %.sroa.017.3, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit507 ], [ %i.vk, %bb.pe ], [ %i.vk, %bb.pb ] ; 4 uses
  %i.es = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.et = icmp ult i64 %.sroa.017.0, %i.es
  br i1 %i.et, label %bb.tn, label %bb.to

bb.m:                                             ; preds = %bb.j
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 2
  %i.ev = load i8, ptr %i.eu, align 2, !range !40, !noundef !28
  %i.ew = trunc nuw i8 %i.ev to i1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !28 ; 2 uses
  br i1 %i.ew, label %bb.r, label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fa = load i64, ptr %i.ez, align 8, !noundef !28 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 1 ; 2 uses
  %i.fc = load i8, ptr %i.fb, align 1, !range !40, !noundef !28
  %i.fd = trunc nuw i8 %i.fc to i1                ; 3 uses
  br i1 %i.fd, label %bb.de, label %bb.dd

bb.o:                                             ; preds = %bb.m
  store i8 24, ptr %i.eq, align 8
  store i8 0, ptr %i.ex, align 1
  %i.fe = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.ff = icmp ult i64 %.sroa.0180.02276, %i.fe
  br i1 %i.ff, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.fg = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.fh = getelementptr inbounds nuw [48 x i8], ptr %i.fg, i64 %.sroa.0180.02276
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.fj = load i64, ptr %i.fi, align 8, !noundef !28
  br label %.backedge

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0180.02276, i64 noundef %i.fe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1109) #75
  unreachable

.backedge:                                        ; preds = %bb.fm, %bb.fo, %bb.ge, %bb.ga, %bb.p, %bb.dg, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit498, %bb.is, %bb.im, %bb.tn
  %.sroa.0180.0.be = phi i64 [ %i.bdj, %bb.tn ], [ %i.fj, %bb.p ], [ %i.ou, %bb.dg ], [ %.sroa.0180.8, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit498 ], [ %i.zl, %bb.im ], [ %.sroa.0180.02276, %bb.is ], [ %.sroa.0.0.lcssa.i422, %bb.fo ], [ %.sroa.0.0.lcssa.i422, %bb.fm ], [ %.sroa.0.0.lcssa.i, %bb.ge ], [ %.sroa.0.0.lcssa.i, %bb.ga ] ; 2 uses
  %.sroa.0169.0.be = phi i64 [ %.sroa.017.0, %bb.tn ], [ %.sroa.0180.02276, %bb.p ], [ %.sroa.0180.02276, %bb.dg ], [ %.sroa.0169.5, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCse6cJcrsIENc_14pulldown_cmark7strings6CowStrECskXtk6F4WjxZ_4just.exit498 ], [ %.sroa.0169.02278, %bb.im ], [ %.sroa.0169.02278, %bb.is ], [ %.sroa.0180.02276, %bb.fo ], [ %.sroa.0180.02276, %bb.fm ], [ %.sroa.0180.02276, %bb.ge ], [ %.sroa.0180.02276, %bb.ga ]
  %i.fk = icmp eq i64 %.sroa.0180.0.be, 0
  br i1 %i.fk, label %._crit_edge, label %bb.i

bb.r:                                             ; preds = %bb.m
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.fm = load i64, ptr %i.fl, align 8, !noundef !28 ; 5 uses
  %.not.i407 = icmp eq i64 %i.fm, 0
  br i1 %.not.i407, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s_0ECskXtk6F4WjxZ_4just.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fn = icmp ult i64 %i.fm, %i.ej
  br i1 %i.fn, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s_0ECskXtk6F4WjxZ_4just.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef range(i64 1, 0) %i.fm, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #75
  unreachable

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s_0ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.s
  %i.fo = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %i.fm ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 8, !range !130, !noundef !28
  %i.fq = icmp eq i8 %i.fp, 1                     ; 3 uses
  %i.fr = load i64, ptr %i.ec, align 8, !noundef !28
  %.not385 = icmp eq i64 %i.fr, 0
  br i1 %.not385, label %bb.u, label %bb.ah

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s_0ECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.r
  %i.fs = load i64, ptr %i.ec, align 8, !noundef !28
  %.not385636 = icmp eq i64 %i.fs, 0
  br i1 %.not385636, label %.thread641, label %bb.ah

bb.u:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s_0ECskXtk6F4WjxZ_4just.exit
  br i1 %i.fq, label %.thread, label %.lr.ph2275.preheader

.thread:                                          ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fo, i64 40
  %i.fu = load i64, ptr %i.ft, align 8, !noundef !28 ; 2 uses
  %.not3872272 = icmp eq i64 %i.fu, 0
  br i1 %.not3872272, label %.thread641, label %.lr.ph2275.preheader

.lr.ph2275.preheader:                             ; preds = %bb.u, %.thread
  %.sroa.087.12273.ph = phi i64 [ %i.fu, %.thread ], [ %i.fm, %bb.u ]
  br label %.lr.ph2275

.lr.ph2275:                                       ; preds = %.lr.ph2275.preheader, %bb.af
  %i.fv = phi i64 [ %i.gn, %bb.af ], [ %i.ej, %.lr.ph2275.preheader ] ; 5 uses
  %i.fw = phi ptr [ %i.gp, %bb.af ], [ %i.ep, %.lr.ph2275.preheader ] ; 2 uses
  %.sroa.086.02274 = phi i1 [ %.sroa.086.1, %bb.af ], [ false, %.lr.ph2275.preheader ] ; 3 uses
  %.sroa.087.12273 = phi i64 [ %i.gs, %bb.af ], [ %.sroa.087.12273.ph, %.lr.ph2275.preheader ] ; 8 uses
  %i.fx = icmp ult i64 %.sroa.087.12273, %i.fv
  br i1 %i.fx, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph2275
  %i.fy = getelementptr inbounds nuw [48 x i8], ptr %i.fw, i64 %.sroa.087.12273 ; 4 uses
  %i.fz = load i8, ptr %i.fy, align 8, !range !130, !noundef !28
  %i.ga = icmp eq i8 %i.fz, 1
  br i1 %i.ga, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %.lr.ph2275
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.087.12273, i64 noundef %i.fv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1110) #75
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 3
  %i.gc = load i8, ptr %i.gb, align 1, !range !40, !noundef !28
  %i.gd = trunc nuw i8 %i.gc to i1                ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !noundef !28 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.gh = load i64, ptr %i.gg, align 8, !noundef !28 ; 4 uses
  %.not.i408 = icmp eq i64 %i.gh, 0
  br i1 %.not.i408, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s0_0ECskXtk6F4WjxZ_4just.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gi = icmp ult i64 %i.gh, %i.fv
  br i1 %i.gi, label %_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser19handle_inline_pass1s0_0CskXtk6F4WjxZ_4just.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef range(i64 1, 0) %i.gh, i64 noundef %i.fv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @604) #75
  unreachable

_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser19handle_inline_pass1s0_0CskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.y
  %i.gj = getelementptr inbounds nuw [48 x i8], ptr %i.fw, i64 %i.gh
  %i.gk = load i8, ptr %i.gj, align 8, !range !130, !noundef !28
  %i.gl = icmp eq i8 %i.gk, 1
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s0_0ECskXtk6F4WjxZ_4just.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s0_0ECskXtk6F4WjxZ_4just.exit: ; preds = %bb.x, %_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser19handle_inline_pass1s0_0CskXtk6F4WjxZ_4just.exit.i
  %.sroa.02.0.i409 = phi i1 [ %i.gl, %_RNCNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB7_6Parser19handle_inline_pass1s0_0CskXtk6F4WjxZ_4just.exit.i ], [ false, %bb.x ] ; 2 uses
  %i.gm = icmp ne i8 %i.gf, %i.ey
  %or.cond.not = or i1 %.sroa.086.02274, %i.gm
  br i1 %or.cond.not, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %bb.ab, %bb.v
  %i.gn = phi i64 [ %.pre3629, %bb.ab ], [ %i.fv, %bb.v ] ; 4 uses
  %.sroa.086.1 = phi i1 [ %.sroa.086.2, %bb.ab ], [ %.sroa.086.02274, %bb.v ]
  %i.go = icmp ult i64 %.sroa.087.12273, %i.gn
  br i1 %i.go, label %bb.af, label %bb.ag

bb.ab:                                            ; preds = %bb.ad, %bb.ae, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s0_0ECskXtk6F4WjxZ_4just.exit
  %.sroa.086.2 = phi i1 [ %.sroa.086.02274, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s0_0ECskXtk6F4WjxZ_4just.exit ], [ true, %bb.ae ], [ true, %bb.ad ]
  call void @_RNvMs8_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_10MathDelims6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.eb, i1 noundef zeroext %.sroa.02.0.i409, i8 noundef %i.gf, i64 noundef %.sroa.087.12273, i1 noundef zeroext %i.gd)
  %.pre3629 = load i64, ptr %i.bg, align 8
  br label %bb.aa

bb.ac:                                            ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtCse6cJcrsIENc_14pulldown_cmark4tree9TreeIndexE6map_orbNCNvMs2_NtBM_5parseNtB1M_6Parser19handle_inline_pass1s0_0ECskXtk6F4WjxZ_4just.exit
  br i1 %i.fq, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.gd, label %.thread644, label %bb.ab

bb.ae:                                            ; preds = %bb.ac
  br i1 %.sroa.02.0.i409, label %.thread644, label %bb.ab
end_hunk_9
begin_hunk_10_@_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser19handle_inline_pass1CskXtk6F4WjxZ_4just:bb.a
  %i.pa = icmp ult i64 %.sroa.0109.12271, %i.oy
  br i1 %i.pa, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %.lr.ph
  %i.pb = getelementptr inbounds nuw [48 x i8], ptr %i.oz, i64 %.sroa.0109.12271 ; 2 uses
  %i.pc = load i8, ptr %i.pb, align 8, !range !130, !noundef !28
  %i.pd = icmp eq i8 %i.pc, 3
  br i1 %i.pd, label %bb.dn, label %bb.do

bb.dm:                                            ; preds = %.lr.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0109.12271, i64 noundef %i.oy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1114) #75
  unreachable

bb.dn:                                            ; preds = %bb.dl
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !noundef !28 ; 2 uses
  %i.pg = icmp eq i64 %.sroa.096.0, %i.pf
  br i1 %i.pg, label %bb.dq, label %bb.dp

bb.do:                                            ; preds = %bb.dp, %bb.dl
  %i.ph = phi i64 [ %.pre3628, %bb.dp ], [ %i.oy, %bb.dl ] ; 4 uses
  %i.pi = icmp ult i64 %.sroa.0109.12271, %i.ph
  br i1 %i.pi, label %bb.dr, label %bb.ds

bb.dp:                                            ; preds = %bb.dn
  call void @_RNvMs7_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_10CodeDelims6insert(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dz, i64 noundef %i.pf, i64 noundef %.sroa.0109.12271)
  %.pre3628 = load i64, ptr %i.bg, align 8
  br label %bb.do

bb.dq:                                            ; preds = %bb.dn
  call fastcc void @_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser14make_code_spanCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(576) %0, i64 noundef %.sroa.0180.02276, i64 noundef %.sroa.0109.12271, i1 noundef zeroext %i.fd)
  call void @_RNvMs7_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_10CodeDelims5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dz)
  br label %bb.l

bb.dr:                                            ; preds = %bb.do
  %i.pj = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28 ; 3 uses
  %i.pk = getelementptr inbounds nuw [48 x i8], ptr %i.pj, i64 %.sroa.0109.12271
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 40
  %i.pm = load i64, ptr %i.pl, align 8, !noundef !28 ; 2 uses
  %.not383 = icmp eq i64 %i.pm, 0
  br i1 %.not383, label %.critedge, label %.lr.ph

bb.ds:                                            ; preds = %bb.do
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0109.12271, i64 noundef %i.ph, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1115) #75
  unreachable

.critedge:                                        ; preds = %bb.dr, %bb.di, %bb.dk
  %i.pn = phi ptr [ %i.ep, %bb.di ], [ %i.ep, %bb.dk ], [ %i.pj, %bb.dr ]
  %i.po = phi i64 [ %i.ej, %bb.di ], [ %i.ej, %bb.dk ], [ %i.ph, %bb.dr ] ; 2 uses
  %i.pp = icmp ult i64 %.sroa.0180.02276, %i.po
  br i1 %i.pp, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.critedge
  %i.pq = getelementptr inbounds nuw [48 x i8], ptr %i.pn, i64 %.sroa.0180.02276 ; 2 uses
  store i8 24, ptr %i.pq, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pq, i64 1
  store i8 0, ptr %.sroa.4113.0..sroa_idx, align 1
  br label %bb.l

bb.du:                                            ; preds = %.critedge
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0180.02276, i64 noundef %i.po, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1116) #75
  unreachable

bb.dv:                                            ; preds = %bb.dj
  call fastcc void @_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser14make_code_spanCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(576) %0, i64 noundef %.sroa.0180.02276, i64 noundef %i.ov, i1 noundef zeroext %i.fd)
  br label %bb.l

bb.dw:                                            ; preds = %bb.dj
  %i.pr = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.ps = icmp ult i64 %.sroa.0180.02276, %i.pr
  br i1 %i.ps, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.pt = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.pu = getelementptr inbounds nuw [48 x i8], ptr %i.pt, i64 %.sroa.0180.02276 ; 2 uses
  store i8 24, ptr %i.pu, align 8
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.pu, i64 1
  store i8 0, ptr %.sroa.4107.0..sroa_idx, align 1
  br label %bb.l

bb.dy:                                            ; preds = %bb.dw
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0180.02276, i64 noundef %i.pr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1117) #75
  unreachable

bb.dz:                                            ; preds = %bb.j
  %i.pv = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.pw = load i64, ptr %i.pv, align 8, !noundef !28 ; 9 uses
  %.not374 = icmp eq i64 %i.pw, 0
  br i1 %.not374, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.px = icmp ult i64 %i.pw, %i.ej
  br i1 %i.px, label %bb.ec, label %bb.ed

bb.eb:                                            ; preds = %bb.dz
  store i8 -1, ptr %i.av, align 8
  br label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit.thread

bb.ec:                                            ; preds = %bb.ea
  %i.py = getelementptr inbounds nuw [48 x i8], ptr %i.ep, i64 %i.pw
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qa = load i64, ptr %i.pz, align 8, !noundef !28
  call void @_RNvNtCse6cJcrsIENc_14pulldown_cmark8scanners13scan_autolink(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.av, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef %i.bm, i64 noundef %i.qa)
  %i.qb = load i8, ptr %i.av, align 8, !range !54, !noundef !28 ; 3 uses
  %.not375 = icmp eq i8 %i.qb, -1
  br i1 %.not375, label %bb.ei, label %bb.ee

bb.ed:                                            ; preds = %bb.ea
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pw, i64 noundef %i.ej, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1118) #75
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.qc = load i64, ptr %i.ds, align 8, !noundef !28 ; 4 uses
  %.sroa.5562.0.copyload = load ptr, ptr %.sroa.5562.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.qd = load i8, ptr %i.dt, align 8, !range !62827, !noundef !28
  %.val401 = load ptr, ptr %i.bf, align 8         ; 4 uses
  %.val402 = load i64, ptr %i.bg, align 8         ; 9 uses
  br label %.lr.ph.i412

.lr.ph.i412:                                      ; preds = %bb.ee, %bb.eh
  %.sroa.0.03.i = phi i64 [ %i.qj, %bb.eh ], [ %i.pw, %bb.ee ] ; 4 uses
  %i.qe = icmp ult i64 %.sroa.0.03.i, %.val402
  br i1 %i.qe, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %.lr.ph.i412
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val401) ]
  %i.qf = getelementptr inbounds nuw [48 x i8], ptr %.val401, i64 %.sroa.0.03.i ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 24
  %i.qh = load i64, ptr %i.qg, align 8, !noundef !28
  %.not3.i = icmp ugt i64 %i.qh, %i.qc
  br i1 %.not3.i, label %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit, label %bb.eh

bb.eg:                                            ; preds = %.lr.ph.i412
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.03.i, i64 noundef %.val402, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1319) #75
          to label %.noexc unwind label %.loopexit.split-lp784

.noexc:                                           ; preds = %bb.eg
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 40
  %i.qj = load i64, ptr %i.qi, align 8, !noundef !28 ; 2 uses
  %.not.i413 = icmp eq i64 %i.qj, 0
  br i1 %.not.i413, label %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit, label %.lr.ph.i412

bb.ei:                                            ; preds = %bb.ec
  %i.qk = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.ql = icmp ult i64 %i.pw, %i.qk
  br i1 %i.ql, label %bb.ej, label %bb.eu

bb.ej:                                            ; preds = %bb.ei
  %i.qm = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.qn = getelementptr inbounds nuw [48 x i8], ptr %i.qm, i64 %i.pw
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 16
  %i.qp = load i64, ptr %i.qo, align 8, !noundef !28 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62828)
  %i.qq = icmp ult i64 %i.qp, %i.bm
  br i1 %i.qq, label %bb.ek, label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit.thread

bb.ek:                                            ; preds = %bb.ej
  %i.qr = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.qp
  %i.qs = load i8, ptr %i.qr, align 1, !alias.scope !62828, !noalias !62829, !noundef !28
  switch i8 %i.qs, label %bb.eo [
    i8 33, label %bb.el
    i8 63, label %bb.en
  ]

bb.el:                                            ; preds = %bb.ek
  %i.qt = add nuw nsw i64 %i.qp, 1
  %i.qu = call { i64, i64 } @_RNvNtCse6cJcrsIENc_14pulldown_cmark8scanners24scan_inline_html_comment(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef range(i64 0, -9223372036854775808) %i.bm, i64 noundef %i.qt, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dy), !noalias !62830 ; 2 uses
  %i.qv = extractvalue { i64, i64 } %i.qu, 0
  %i.qw = trunc nuw i64 %i.qv to i1
  br i1 %i.qw, label %bb.em, label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit.thread

bb.em:                                            ; preds = %bb.el
  %i.qx = extractvalue { i64, i64 } %i.qu, 1
  br label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit

bb.en:                                            ; preds = %bb.ek
  %i.qy = add nuw nsw i64 %i.qp, 1
  %i.qz = call { i64, i64 } @_RNvNtCse6cJcrsIENc_14pulldown_cmark8scanners27scan_inline_html_processing(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bo, i64 noundef range(i64 0, -9223372036854775808) %i.bm, i64 noundef %i.qy, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.dy), !noalias !62830 ; 2 uses
  %i.ra = extractvalue { i64, i64 } %i.qz, 0
  %i.rb = trunc nuw i64 %i.ra to i1
  br i1 %i.rb, label %bb.ep, label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit.thread

bb.eo:                                            ; preds = %bb.ek
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !62831
  %i.rc = add nsw i64 %i.qp, -1                   ; 5 uses
  %i.rd = icmp ugt i64 %i.rc, %i.bm
  br i1 %i.rd, label %bb.er, label %bb.eq, !prof !44

bb.ep:                                            ; preds = %bb.en
  %i.re = extractvalue { i64, i64 } %i.qz, 1
  br label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit

bb.eq:                                            ; preds = %bb.eo
  %i.rf = sub nuw nsw i64 %i.bm, %i.rc
  %i.rg = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.rc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !62831
  store <2 x ptr> %2, ptr %i.z, align 16, !noalias !62831
  call void @_RNvNtCse6cJcrsIENc_14pulldown_cmark8scanners21scan_html_block_inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.rg, i64 noundef %i.rf, ptr noundef nonnull %i.z, ptr nonnull @1103), !noalias !62830
  %i.rh = load i64, ptr %i.aa, align 8, !range !37, !noalias !62831, !noundef !28 ; 2 uses
  %.not.i415 = icmp eq i64 %i.rh, -1
  br i1 %.not.i415, label %bb.et, label %bb.es

bb.er:                                            ; preds = %bb.eo
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %i.rc, i64 noundef range(i64 0, -9223372036854775808) %i.bm, i64 noundef range(i64 0, -9223372036854775808) %i.bm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1104) #75, !noalias !62831
  unreachable

bb.es:                                            ; preds = %bb.eq
  %.sroa.14.0.copyload575 = load ptr, ptr %.sroa.14.0..sroa_idx574, align 8, !noalias !62832
  %.sroa.16.0.copyload577 = load i64, ptr %.sroa.16.0..sroa_idx576, align 8, !noalias !62832
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8, !noalias !62831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !62831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !62831
  %i.ri = add i64 %.sroa.419.0.copyload.i, %i.rc
  br label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit

bb.et:                                            ; preds = %bb.eq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !62831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !62831
  br label %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit.thread

bb.eu:                                            ; preds = %bb.ei
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.pw, i64 noundef %i.qk, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1119) #75
  unreachable

_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit: ; preds = %bb.es, %bb.ep, %bb.em
  %.sroa.18.0 = phi i64 [ %i.re, %bb.ep ], [ %i.ri, %bb.es ], [ %i.qx, %bb.em ] ; 3 uses
  %.sroa.16.0 = phi i64 [ 0, %bb.ep ], [ %.sroa.16.0.copyload577, %bb.es ], [ 0, %bb.em ] ; 5 uses
  %.sroa.14.0 = phi ptr [ inttoptr (i64 1 to ptr), %bb.ep ], [ %.sroa.14.0.copyload575, %bb.es ], [ inttoptr (i64 1 to ptr), %bb.em ] ; 9 uses
  %.sroa.0572.0 = phi i64 [ 0, %bb.ep ], [ %i.rh, %bb.es ], [ 0, %bb.em ] ; 8 uses
  %.val399 = load ptr, ptr %i.bf, align 8         ; 2 uses
  %.val400 = load i64, ptr %i.bg, align 8         ; 3 uses
  br label %.lr.ph.i417

.lr.ph.i417:                                      ; preds = %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit, %bb.ex
  %.sroa.0.03.i418 = phi i64 [ %i.ro, %bb.ex ], [ %i.pw, %_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit ] ; 4 uses
  %i.rj = icmp ult i64 %.sroa.0.03.i418, %.val400
  br i1 %i.rj, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.lr.ph.i417
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val399) ]
  %i.rk = getelementptr inbounds nuw [48 x i8], ptr %.val399, i64 %.sroa.0.03.i418 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 24
  %i.rm = load i64, ptr %i.rl, align 8, !noundef !28
  %.not3.i419 = icmp ugt i64 %i.rm, %.sroa.18.0
  br i1 %.not3.i419, label %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424, label %bb.ex

bb.ew:                                            ; preds = %.lr.ph.i417
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.03.i418, i64 noundef %.val400, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1319) #75
          to label %.noexc423 unwind label %.body.thread665

.body.thread665:                                  ; preds = %bb.ew
  %lpad.thr_comm.split-lp667 = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

.noexc423:                                        ; preds = %bb.ew
  unreachable

bb.ex:                                            ; preds = %bb.ev
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rk, i64 40
  %i.ro = load i64, ptr %i.rn, align 8, !noundef !28 ; 2 uses
  %.not.i420 = icmp eq i64 %i.ro, 0
  br i1 %.not.i420, label %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424, label %.lr.ph.i417

_RNvMs2_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_6Parser16scan_inline_htmlCskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.en, %bb.el, %bb.ej, %bb.et, %bb.eb
  %i.rp = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.rq = icmp ult i64 %.sroa.0180.02276, %i.rp
  br i1 %i.rq, label %bb.gg, label %bb.gh

.body:                                            ; preds = %.invoke6528
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.rs, label %common.resume, label %bb.fp

_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424: ; preds = %bb.ex, %bb.ev
  %.sroa.0.0.lcssa.i422 = phi i64 [ 0, %bb.ex ], [ %.sroa.0.03.i418, %bb.ev ] ; 7 uses
  %i.rr = icmp sgt i64 %.sroa.16.0, -1
  call void @llvm.assume(i1 %i.rr)
  %i.rs = icmp ne i64 %.sroa.16.0, 0              ; 3 uses
  br i1 %i.rs, label %bb.ey, label %bb.fg

bb.ey:                                            ; preds = %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !62833
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0) ]
  invoke void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.14.0, i64 noundef %.sroa.16.0)
          to label %bb.fb unwind label %bb.ez, !noalias !62833

bb.ez:                                            ; preds = %bb.ey
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = icmp eq i64 %.sroa.0572.0, 0
  br i1 %i.ru, label %common.resume, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0, i64 noundef %.sroa.0572.0, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !62834
  br label %common.resume

bb.fb:                                            ; preds = %bb.ey
  %i.rv = load i64, ptr %i.y, align 8, !range !41, !noalias !62833, !noundef !28
  %i.rw = trunc nuw i64 %i.rv to i1
  br i1 %i.rw, label %bb.fc, label %.thread669

.thread669:                                       ; preds = %bb.fb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !62833
  store i64 %.sroa.0572.0, ptr %i.ar, align 8, !alias.scope !62835
  store ptr %.sroa.14.0, ptr %.sroa.6582.sroa.6.0..sroa_idx, align 8, !alias.scope !62835
  store i64 %.sroa.16.0, ptr %.sroa.6582.sroa.7.0..sroa_idx, align 8, !alias.scope !62835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_RNvXsa_NtCse6cJcrsIENc_14pulldown_cmark7stringsNtB5_6CowStrINtNtCsj6eKBz9Db1c_4core7convert4FromNtNtCs4wP2HXfJTCR_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.ar)
  %i.rx = call noundef i64 @_RNvMsb_NtCse6cJcrsIENc_14pulldown_cmark5parseNtB5_11Allocations12allocate_cow(ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.cc, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %.pre3627 = load i64, ptr %i.bg, align 8
  br label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  %i.ry = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.rz = inttoptr i64 %.sroa.16.0 to ptr
  %i.sa = ptrtoint ptr %.sroa.14.0 to i64
  %.sroa.6582.0..sroa_idx583 = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sroa.6582.sroa.6.0..sroa.6582.0..sroa_idx583.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.6582.sroa.7.0..sroa.6582.0..sroa_idx583.sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.sb = load <2 x i64>, ptr %i.ry, align 8, !noalias !62833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !62833
  call void @llvm.experimental.noalias.scope.decl(metadata !62836)
  call void @llvm.experimental.noalias.scope.decl(metadata !62837)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !62835
  store i64 %.sroa.0572.0, ptr %i.x, align 8, !noalias !62836
  store i64 %i.sa, ptr %.sroa.6582.0..sroa_idx583, align 8, !noalias !62836
  store ptr %i.rz, ptr %.sroa.6582.sroa.6.0..sroa.6582.0..sroa_idx583.sroa_idx, align 8, !noalias !62836
  store <2 x i64> %i.sb, ptr %.sroa.6582.sroa.7.0..sroa.6582.0..sroa_idx583.sroa_idx, align 8, !noalias !62836
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1120, i64 noundef 12, ptr noundef nonnull %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @793, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1121) #71
          to label %bb.ff unwind label %bb.fd, !noalias !62835

bb.fd:                                            ; preds = %bb.fc
  %i.sc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62838)
  call void @llvm.experimental.noalias.scope.decl(metadata !62839)
  %.val.i.i.i426 = load i64, ptr %i.x, align 8, !alias.scope !62840, !noalias !62835 ; 2 uses
  %i.sd = icmp eq i64 %.val.i.i.i426, 0
  br i1 %i.sd, label %common.resume, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  %.val1.i.i.i427 = load ptr, ptr %.sroa.6582.0..sroa_idx583, align 8, !alias.scope !62840, !noalias !62835, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i427, i64 noundef %.val.i.i.i426, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !62841
  br label %common.resume

bb.ff:                                            ; preds = %bb.fc
  unreachable

bb.fg:                                            ; preds = %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424, %.thread669
  %i.se = phi i64 [ %.pre3627, %.thread669 ], [ %.val400, %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424 ] ; 2 uses
  %.sroa.579.0 = phi i64 [ %i.rx, %.thread669 ], [ undef, %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424 ]
  %.sroa.077.0 = phi i8 [ 20, %.thread669 ], [ 19, %_RNvNtCse6cJcrsIENc_14pulldown_cmark5parse16scan_nodes_to_ix.exit424 ]
  %i.sf = icmp ult i64 %.sroa.0180.02276, %i.se
  br i1 %i.sf, label %bb.fh, label %.invoke6528

bb.fh:                                            ; preds = %bb.fg
  %i.sg = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.sh = getelementptr inbounds nuw [48 x i8], ptr %i.sg, i64 %.sroa.0180.02276 ; 2 uses
  store i8 %.sroa.077.0, ptr %i.sh, align 8
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sh, i64 8
  store i64 %.sroa.579.0, ptr %.sroa.579.0..sroa_idx, align 8
  %i.si = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.sj = icmp ult i64 %.sroa.0180.02276, %i.si
  br i1 %i.sj, label %bb.fj, label %.invoke6528

.invoke6528:                                      ; preds = %bb.fl, %bb.fj, %bb.fh, %bb.fg
  %i.sk = phi i64 [ %.sroa.0180.02276, %bb.fj ], [ %.sroa.0180.02276, %bb.fg ], [ %.sroa.0180.02276, %bb.fh ], [ %.sroa.0.0.lcssa.i422, %bb.fl ]
  %i.sl = phi i64 [ %i.sq, %bb.fj ], [ %i.se, %bb.fg ], [ %i.si, %bb.fh ], [ %i.sv, %bb.fl ]
  %i.sm = phi ptr [ @1124, %bb.fj ], [ @1122, %bb.fg ], [ @1123, %bb.fh ], [ @1125, %bb.fl ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %i.sk, i64 noundef %i.sl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.sm) #71
          to label %.cont6529 unwind label %.body

.cont6529:                                        ; preds = %.invoke6528
  unreachable

bb.fi:                                            ; preds = %bb.sf, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread713, %bb.or, %bb.ft
  unreachable

bb.fj:                                            ; preds = %bb.fh
  %i.sn = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.so = getelementptr inbounds nuw [48 x i8], ptr %i.sn, i64 %.sroa.0180.02276
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  store i64 %.sroa.18.0, ptr %i.sp, align 8
  %i.sq = load i64, ptr %i.bg, align 8, !noundef !28 ; 2 uses
  %i.sr = icmp ult i64 %.sroa.0180.02276, %i.sq
  br i1 %i.sr, label %bb.fk, label %.invoke6528

bb.fk:                                            ; preds = %bb.fj
  %i.ss = load ptr, ptr %i.bf, align 8, !nonnull !28, !noundef !28
  %i.st = getelementptr inbounds nuw [48 x i8], ptr %i.ss, i64 %.sroa.0180.02276
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 40
  store i64 %.sroa.0.0.lcssa.i422, ptr %i.su, align 8
  %.not377 = icmp eq i64 %.sroa.0.0.lcssa.i422, 0
end_hunk_10
begin_hunk_11_@_RNvMs_NtCskXtk6F4WjxZ_4just10subcommandNtB4_10Subcommand3run:bb.a
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
end_hunk_11
begin_hunk_12_@_RNvNtCskXtk6F4WjxZ_4just8function3env:bb.a
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
end_hunk_12
begin_hunk_13_@_RNvXNtCskXtk6F4WjxZ_4just11command_extNtNtCsaKJjC64KgbL_3std7process7CommandNtB2_10CommandExt12status_guard:bb.a
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
end_hunk_13
