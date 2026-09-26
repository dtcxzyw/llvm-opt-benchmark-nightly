Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldbECskXtk6F4WjxZ_4just:bb.a
_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryebECskXtk6F4WjxZ_4just.exit: ; preds = %bb.d, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valuebECskXtk6F4WjxZ_4just.exit.sink.split.i
  %.sroa.0.0.i = phi ptr [ null, %bb.d ], [ %i.l, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundNtNtNtCsaKJjC64KgbL_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_valuebECskXtk6F4WjxZ_4just.exit.sink.split.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(address, read_provenance) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30991)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30992)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !30993, !noalias !30994, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !38, !alias.scope !30993, !noalias !30994, !noundef !28
  %i.f = icmp eq i8 %i.e, 1
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !30995
  tail call fastcc void @_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c, ptr %.val.i.i, i1 noundef zeroext %i.f) #76
  store i8 2, ptr %i.d, align 8, !alias.scope !30993, !noalias !30994
  %.val8.i.i = load ptr, ptr %i.b, align 8, !noalias !30995, !nonnull !28, !align !35, !noundef !28
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val8.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17) #76
  %.val.i5.i = load ptr, ptr %i.b, align 8, !noalias !30991, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30996)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30998)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30999)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !31000, !noalias !31001, !noundef !28 ; 3 uses
  %i.i = load i64, ptr %.val.i5.i, align 8, !range !43, !alias.scope !31000, !noalias !31001, !noundef !28
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.h, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !31001
  %i.l = load i64, ptr %i.g, align 8, !alias.scope !31002, !noalias !31001, !noundef !28
  br label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i

_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i, %bb.a
  %.sink1.i.i.i = phi i64 [ %i.l, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %i.m = icmp sgt i64 %.sink1.i.i.i, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !31002, !noalias !31001, !nonnull !28, !noundef !28
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sink1.i.i.i
  store i16 8250, ptr %i.p, align 1, !noalias !31003
  %i.q = add nuw i64 %.sink1.i.i.i, 2
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !31002, !noalias !31001
  %.val10.i.i = load ptr, ptr %i.b, align 8, !noalias !30991 ; 7 uses
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31004
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val), !noalias !30991
  %i.r = load i64, ptr %i.a, align 8, !range !41, !noalias !31004, !noundef !28
  %i.s = trunc nuw i64 %i.r to i1
  br i1 %i.s, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB2n_15PrettyFormatterEECskXtk6F4WjxZ_4just.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !31004, !nonnull !28, !noundef !28
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noalias !31004, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31004
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val10.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.u, i64 noundef %i.w) #76
  br label %bb.e

bb.d:                                             ; preds = %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31005)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31006)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31008)
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !31009, !noalias !31010, !noundef !28 ; 3 uses
  %i.z = load i64, ptr %.val10.i.i, align 8, !range !43, !alias.scope !31009, !noalias !31010, !noundef !28
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ult i64 %i.aa, 4
  br i1 %i.ab, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.d
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i.i, i64 noundef %i.y, i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef 1, i64 noundef 1), !noalias !31010
  %i.ac = load i64, ptr %i.x, align 8, !alias.scope !31011, !noalias !31010, !noundef !28
  br label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.d
  %.sink1.i.i.i.i.i.i = phi i64 [ %i.ac, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.y, %bb.d ] ; 3 uses
  %i.ad = icmp sgt i64 %.sink1.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !31011, !noalias !31010, !nonnull !28, !noundef !28
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink1.i.i.i.i.i.i
  store i32 1819047278, ptr %i.ag, align 1, !noalias !31012
  %i.ah = add nuw i64 %.sink1.i.i.i.i.i.i, 4
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !31011, !noalias !31010
  br label %bb.e

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB2n_15PrettyFormatterEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31004
  %i.ai = tail call fastcc noundef nonnull align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5ErrorNtNtCsfxuqquxiU4q_10serde_core3ser5Error6customReECskXtk6F4WjxZ_4just()
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit

bb.e:                                             ; preds = %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i8 1, ptr %i.aj, align 8, !alias.scope !31013, !noalias !30991
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB2n_15PrettyFormatterEECskXtk6F4WjxZ_4just.exit.i.i, %bb.e
  %.sroa.0.1.i.i = phi ptr [ null, %bb.e ], [ %i.ai, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB2n_15PrettyFormatterEECskXtk6F4WjxZ_4just.exit.i.i ]
  ret ptr %.sroa.0.1.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 8, 10) %2, ptr nofree readonly captures(address_is_null) %.0.val, i64 %.8.val) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31050)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31051)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !31052, !noalias !31053, !nonnull !28, !align !35, !noundef !28 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !38, !alias.scope !31052, !noalias !31053, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !31054
  tail call fastcc void @_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, ptr %.val.i.i, i1 noundef zeroext %i.e) #76
  store i8 2, ptr %i.c, align 8, !alias.scope !31052, !noalias !31053
  %.val8.i.i = load ptr, ptr %i.a, align 8, !noalias !31054, !nonnull !28, !align !35, !noundef !28
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val8.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 8, 10) %2) #76
  %.val.i5.i = load ptr, ptr %i.a, align 8, !noalias !31055, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31057)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31059)
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 16 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !31060, !noalias !31061, !noundef !28 ; 3 uses
  %i.h = load i64, ptr %.val.i5.i, align 8, !range !43, !alias.scope !31060, !noalias !31061, !noundef !28
  %i.i = sub i64 %i.h, %i.g
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i, label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i5.i, i64 noundef %i.g, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !31061
  %i.k = load i64, ptr %i.f, align 8, !alias.scope !31062, !noalias !31061, !noundef !28
  br label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i

_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i, %bb.a
  %.sink1.i.i.i = phi i64 [ %i.k, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i ], [ %i.g, %bb.a ] ; 3 uses
  %i.l = icmp sgt i64 %.sink1.i.i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i5.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !31062, !noalias !31061, !nonnull !28, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink1.i.i.i
  store i16 8250, ptr %i.o, align 1, !noalias !31063
  %i.p = add nuw i64 %.sink1.i.i.i, 2
  store i64 %i.p, ptr %i.f, align 8, !alias.scope !31062, !noalias !31061
  %.val10.i.i = load ptr, ptr %i.a, align 8, !noalias !31055, !nonnull !28, !noundef !28 ; 5 uses
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val10.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val) #76
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter18begin_object_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31065)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31067)
  %i.q = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !31068, !noalias !31069, !noundef !28 ; 3 uses
  %i.s = load i64, ptr %.val10.i.i, align 8, !range !43, !alias.scope !31068, !noalias !31069, !noundef !28
  %i.t = sub i64 %i.s, %i.r
  %i.u = icmp ult i64 %i.t, 4
  br i1 %i.u, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val10.i.i, i64 noundef %i.r, i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef 1, i64 noundef 1), !noalias !31069
  %i.v = load i64, ptr %i.q, align 8, !alias.scope !31070, !noalias !31069, !noundef !28
  br label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i

_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.c
  %.sink1.i.i.i.i.i.i = phi i64 [ %i.v, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.w = icmp sgt i64 %.sink1.i.i.i.i.i.i, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !31070, !noalias !31069, !nonnull !28, !noundef !28
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sink1.i.i.i.i.i.i
  store i32 1819047278, ptr %i.z, align 1, !noalias !31071
  %i.aa = add nuw i64 %.sink1.i.i.i.i.i.i, 4
  store i64 %i.aa, ptr %i.q, align 8, !alias.scope !31070, !noalias !31069
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB6_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit: ; preds = %bb.b, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer14serialize_noneCskXtk6F4WjxZ_4just.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i8 1, ptr %i.ab, align 8, !alias.scope !31072, !noalias !31055
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3B_6string6StringNtBU_4HashEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31169)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !31170, !noalias !31171, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !38, !alias.scope !31170, !noalias !31171, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !31172, !nonnull !28, !noundef !28
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31172 ; 0 uses
  br label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.a
  store i8 2, ptr %i.c, align 8, !alias.scope !31170, !noalias !31171
  %.val9.i.i = load ptr, ptr %i.b, align 8, !noalias !31172, !nonnull !28, !align !35, !noundef !28
  %i.g = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @480, i64 noundef 6) #76, !noalias !31173 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3t_6string6StringNtBO_4HashEEECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31174)
  %.val.i3.i = load ptr, ptr %i.b, align 8, !noalias !31175, !nonnull !28, !align !35, !noundef !28
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i3.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31175 ; 0 uses
  %.val9.i4.i = load ptr, ptr %i.b, align 8, !noalias !31175 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31176)
  %i.i = load i64, ptr %1, align 8, !range !41, !alias.scope !31177, !noalias !31167, !noundef !28
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.s

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31180)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !31181, !noalias !31182, !noundef !28 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !31183, !noalias !31184 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !31183, !noalias !31184 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i4.i) ]
  %i.q = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31185 ; 0 uses
  %i.r = icmp eq i64 %i.p, 0
  %i.s = select i1 %.not.i.not.i.i.i.i.i.i, i1 true, i1 %i.r
  br i1 %i.s, label %.thread104.i.i.i.i.i.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_mapCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.thread104.i.i.i.i.i.i:                           ; preds = %bb.d
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31185 ; 0 uses
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3t_6string6StringNtBO_4HashEEECskXtk6F4WjxZ_4just.exit

_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_mapCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = icmp eq i64 %i.n, 0
  br i1 %i.u, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i.i.i.preheader

.lr.ph.i.i44.i.i.i.i.i.i.preheader:               ; preds = %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_mapCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %xtraiter = and i64 %i.n, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.prol

.lr.ph.i.i44.i.i.i.i.i.i.prol:                    ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.preheader, %.lr.ph.i.i44.i.i.i.i.i.i.prol
  %.sroa.013.017.i.i45.i.i.i.i.i.i.prol = phi ptr [ %.sroa.013.0.i.i47.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.prol ], [ %i.l, %.lr.ph.i.i44.i.i.i.i.i.i.preheader ]
  %.sroa.011.016.i.i46.i.i.i.i.i.i.prol = phi i64 [ %i.w, %.lr.ph.i.i44.i.i.i.i.i.i.prol ], [ %i.n, %.lr.ph.i.i44.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i44.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i44.i.i.i.i.i.i.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i45.i.i.i.i.i.i.prol, i64 632
  %i.w = add i64 %.sroa.011.016.i.i46.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.013.0.i.i47.i.i.i.i.i.i.prol = load ptr, ptr %i.v, align 8, !noalias !31186, !nonnull !28, !noundef !28 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i44.i.i.i.i.i.i.prol, !llvm.loop !31104

.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.preheader
  %.sroa.013.0.i.i47.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i44.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i47.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.prol ]
  %.sroa.013.017.i.i45.i.i.i.i.i.i.unr = phi ptr [ %i.l, %.lr.ph.i.i44.i.i.i.i.i.i.preheader ], [ %.sroa.013.0.i.i47.i.i.i.i.i.i.prol, %.lr.ph.i.i44.i.i.i.i.i.i.prol ]
  %.sroa.011.016.i.i46.i.i.i.i.i.i.unr = phi i64 [ %i.n, %.lr.ph.i.i44.i.i.i.i.i.i.preheader ], [ %i.w, %.lr.ph.i.i44.i.i.i.i.i.i.prol ]
  %i.x = icmp ult i64 %i.n, 8
  br i1 %i.x, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i.i.i

.lr.ph.i.i44.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i
  %.sroa.013.017.i.i45.i.i.i.i.i.i = phi ptr [ %.sroa.013.0.i.i47.i.i.i.i.i.i.7, %.lr.ph.i.i44.i.i.i.i.i.i ], [ %.sroa.013.017.i.i45.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.011.016.i.i46.i.i.i.i.i.i = phi i64 [ %i.ag, %.lr.ph.i.i44.i.i.i.i.i.i ], [ %.sroa.011.016.i.i46.i.i.i.i.i.i.unr, %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i45.i.i.i.i.i.i, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i.1 = load ptr, ptr %i.z, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i.1, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i.2 = load ptr, ptr %i.aa, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i.2, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i.3 = load ptr, ptr %i.ab, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i.3, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i.4 = load ptr, ptr %i.ac, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i.4, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i.5 = load ptr, ptr %i.ad, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i.5, i64 632
  %.sroa.013.0.i.i47.i.i.i.i.i.i.6 = load ptr, ptr %i.ae, align 8, !noalias !31186, !nonnull !28, !noundef !28
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i47.i.i.i.i.i.i.6, i64 632
  %i.ag = add i64 %.sroa.011.016.i.i46.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.013.0.i.i47.i.i.i.i.i.i.7 = load ptr, ptr %i.af, align 8, !noalias !31186, !nonnull !28, !noundef !28 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i, label %.lr.ph.i.i44.i.i.i.i.i.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i: ; preds = %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i44.i.i.i.i.i.i, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_mapCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %.sroa.013.0.lcssa.i.i49.i.i.i.i.i.i = phi ptr [ %i.l, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_mapCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ], [ %.sroa.013.0.i.i47.i.i.i.i.i.i.lcssa.unr, %.lr.ph.i.i44.i.i.i.i.i.i.prol.loopexit ], [ %.sroa.013.0.i.i47.i.i.i.i.i.i.7, %.lr.ph.i.i44.i.i.i.i.i.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.0.lcssa.i.i49.i.i.i.i.i.i, i64 626
  %i.aj = load i16, ptr %i.ai, align 2, !noalias !31187, !noundef !28
  %.not.i.i.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i

.lr.ph.i.i.i.i25.i.i.i.i.i.i:                     ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i, %bb.e
  %.sroa.0.022.i.i.i.i26.i.i.i.i.i.i = phi ptr [ %i.al, %bb.e ], [ %.sroa.013.0.lcssa.i.i49.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i27.i.i.i.i.i.i = phi i64 [ %i.am, %bb.e ], [ 0, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i26.i.i.i.i.i.i, i64 352
  %i.al = load ptr, ptr %i.ak, align 8, !noalias !31188, !noundef !28 ; 7 uses
  %.not.i.i.i.i.i28.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i28.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  %i.am = add i64 %.sroa.5.021.i.i.i.i27.i.i.i.i.i.i, 1 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i26.i.i.i.i.i.i, i64 624
  %i.ao = load i16, ptr %i.an, align 8, !noalias !31188 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 626
  %i.aq = load i16, ptr %i.ap, align 2, !noalias !31187, !noundef !28
  %i.ar = icmp ult i16 %i.ao, %i.aq
  br i1 %i.ar, label %bb.g, label %.lr.ph.i.i.i.i25.i.i.i.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i.i25.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i42.i.i.i.i.i.i unwind label %bb.i, !noalias !31189

.noexc.i.i42.i.i.i.i.i.i:                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.as = zext i16 %i.ao to i64                   ; 4 uses
  %i.at = icmp eq i64 %i.am, 0
  br i1 %i.at, label %.thread.i.i.i.i.i.i, label %bb.h

.thread.i.i.i.i.i.i:                              ; preds = %bb.g, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i
  %.sroa.06.0.ph.i.i.i3280.i.i.i.i.i.i = phi ptr [ %i.al, %bb.g ], [ %.sroa.013.0.lcssa.i.i49.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i3078.i.i.i.i.i.i = phi i64 [ %i.as, %bb.g ], [ 0, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i19.i.i.i.i.i.i ] ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.10.0.ph.i.i.i3078.i.i.i.i.i.i, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = icmp ult i16 %i.ao, 11
  tail call void @llvm.assume(i1 %i.av), !noalias !31190
  %i.aw = getelementptr i8, ptr %i.al, i64 640
  %i.ax = getelementptr [8 x i8], ptr %i.aw, i64 %i.as ; 2 uses
  %xtraiter20 = and i64 %i.am, 7                  ; 2 uses
  %lcmp.mod21.not = icmp eq i64 %xtraiter20, 0
  br i1 %lcmp.mod21.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.sroa.017.0.in.i.i.i.i33.i.i.i.i.i.i.prol = phi ptr [ %i.ay, %.prol.preheader ], [ %i.ax, %bb.h ]
  %.sroa.019.0.in.i.i.i.i34.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader ], [ %i.am, %bb.h ]
  %prol.iter22 = phi i64 [ %prol.iter22.next, %.prol.preheader ], [ 0, %bb.h ]
  %.sroa.019.0.i.i.i.i35.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i34.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i33.i.i.i.i.i.i.prol, align 8, !noalias !31191, !nonnull !28, !noundef !28 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter22.next = add i64 %prol.iter22, 1     ; 2 uses
  %prol.iter22.cmp.not = icmp eq i64 %prol.iter22.next, %xtraiter20
  br i1 %prol.iter22.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !31118

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.prol, %.prol.preheader ]
  %.sroa.017.0.in.i.i.i.i33.i.i.i.i.i.i.unr = phi ptr [ %i.ax, %bb.h ], [ %i.ay, %.prol.preheader ]
  %.sroa.019.0.in.i.i.i.i34.i.i.i.i.i.i.unr = phi i64 [ %i.am, %bb.h ], [ %.sroa.019.0.i.i.i.i35.i.i.i.i.i.i.prol, %.prol.preheader ]
  %i.az = icmp ult i64 %.sroa.5.021.i.i.i.i27.i.i.i.i.i.i, 7
  br i1 %i.az, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.sroa.017.0.in.i.i.i.i33.i.i.i.i.i.i = phi ptr [ %i.bi, %.new ], [ %.sroa.017.0.in.i.i.i.i33.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.019.0.in.i.i.i.i34.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i35.i.i.i.i.i.i.7, %.new ], [ %.sroa.019.0.in.i.i.i.i34.i.i.i.i.i.i.unr, %.prol.loopexit ]
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i33.i.i.i.i.i.i, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i, i64 632
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.1 = load ptr, ptr %i.ba, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.2 = load ptr, ptr %i.bb, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.3 = load ptr, ptr %i.bc, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.4 = load ptr, ptr %i.bd, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.5 = load ptr, ptr %i.be, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.6 = load ptr, ptr %i.bf, align 8, !noalias !31191, !nonnull !28, !noundef !28
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.i35.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i34.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.7 = load ptr, ptr %i.bg, align 8, !noalias !31191, !nonnull !28, !noundef !28 ; 2 uses
  %i.bh = icmp eq i64 %.sroa.019.0.i.i.i.i35.i.i.i.i.i.i.7, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i36.i.i.i.i.i.i.7, i64 632
  br i1 %i.bh, label %.lr.ph.i.i.i.i.i.i.i.i, label %.new

bb.i:                                             ; preds = %bb.f
  %i.bj = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap(), !noalias !31190
end_hunk_0
begin_hunk_1_@_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3B_6string6StringNtBU_4HashEEECskXtk6F4WjxZ_4just:bb.a
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !31205, !noundef !28
  store i8 %i.cj, ptr %.sroa.0.0.i.i5.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !31204, !noalias !31203
  %.not.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l
  %.sroa.0.0.i.i5.sroa.phi.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.a, %.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i5.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %.sroa.0.0.i.i5.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %bb.l ]
  %.sroa.06.0.i.i4.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.cb, %.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.0.ptr.val.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.l ]
  %i.ck = add nuw nsw i8 %.sroa.06.0.i.i4.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 48
  store i8 %i.ck, ptr %.sroa.0.0.i.i5.sroa.phi.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !31204, !noalias !31203
  br label %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i2.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i5.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cl = xor i64 %.sroa.0.1.i2.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i2.i.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef range(i64 1, -9223372036854775808) %i.cl), !noalias !31203 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31203
  br label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.idx14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.peel.next.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.0.add.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 2 uses
  %.sroa.06.0.ptr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn114.i.i.i.i.i.i, i64 %.sroa.06.0.idx14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.06.0.ptr.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.06.0.ptr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !31201, !noalias !31202 ; 3 uses
  %i.co = call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31203 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31203
  call void @llvm.experimental.noalias.scope.decl(metadata !31206)
  %i.cp = icmp ult i8 %.sroa.06.0.ptr.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 10
  br i1 %i.cp, label %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cq = zext i8 %.sroa.06.0.ptr.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i32 ; 2 uses
  %i.cr = mul nuw nsw i32 %i.cq, 5243
  %i.cs = lshr i32 %i.cr, 19                      ; 3 uses
  %i.ct = trunc nuw nsw i32 %i.cs to i8
  %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nsw i32 %i.cs, -100
  %i.cu = add nsw i32 %.neg.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cq ; 2 uses
  %i.cv = shl nuw nsw i32 %i.cu, 1
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = icmp ult i32 %i.cu, 100
  call void @llvm.assume(i1 %i.cx)
  %i.cy = getelementptr inbounds nuw i8, ptr @_RNvCsb7keUx5WSfn_4itoa13DECIMAL_PAIRS, i64 %i.cw ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !31207, !noundef !28
  store i8 %i.cz, ptr %i.bo, align 1, !alias.scope !31206, !noalias !31203
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 1
  %i.db = load i8, ptr %i.da, align 1, !noalias !31207, !noundef !28
  store i8 %i.db, ptr %.sroa.0.0.i.i5.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !31206, !noalias !31203
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i5.sroa.phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.a, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i5.sroa.gep8.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 2, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.06.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.ct, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.06.0.ptr.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dc = add nuw nsw i8 %.sroa.06.0.i.i4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 48
  store i8 %i.dc, ptr %.sroa.0.0.i.i5.sroa.phi.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !31206, !noalias !31203
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsr_Csb7keUx5WSfn_4itoahNtB5_8Unsigned3fmt.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 1, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dd = xor i64 %.sroa.0.1.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.0.1.i2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.df = call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef range(i64 1, -9223372036854775808) %i.dd), !noalias !31203 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31203
  %.sroa.06.0.add.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nuw nsw i64 %.sroa.06.0.idx14.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.dg = icmp eq i64 %.sroa.06.0.add.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 32
  br i1 %i.dg, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs4wP2HXfJTCR_5alloc6string6StringRNtCs7q5LCsEFjLc_6blake34HashEINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2T_3ser10SerializerQNtB21_6HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %_RINvYNtNtCshTCYgcDtIbU_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !31150

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs4wP2HXfJTCR_5alloc6string6StringRNtCs7q5LCsEFjLc_6blake34HashEINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2T_3ser10SerializerQNtB21_6HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.dh = call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31208 ; 0 uses
  %i.di = icmp eq i64 %.sroa.35.0.i.i.i.i.i.i, 0
  br i1 %i.di, label %.thread102.i.i.i.i.i.i, label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs4wP2HXfJTCR_5alloc6string6StringRNtCs7q5LCsEFjLc_6blake34HashEINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2T_3ser10SerializerQNtB21_6HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.1.i.i.i.i.i.i) ]
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.8.1.i.i.i.i.i.i, i64 626
  %i.dk = load i16, ptr %i.dj, align 2, !noalias !31209, !noundef !28
  %i.dl = zext i16 %i.dk to i64
  %i.dm = icmp ult i64 %.sroa.24.1.i.i.i.i.i.i, %i.dl
  br i1 %i.dm, label %.thread106.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %bb.n
  %.sroa.0.022.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.do, %bb.n ], [ %.sroa.8.1.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.021.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dp, %bb.n ], [ 0, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, i64 352
  %i.do = load ptr, ptr %i.dn, align 8, !noalias !31210, !noundef !28 ; 7 uses
  %.not.i.i.i.i.i11.i.i.i.i.i.i = icmp eq ptr %i.do, null
  br i1 %.not.i.i.i.i.i11.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.dp = add i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i, 1 ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.0.022.i.i.i.i.i.i.i.i.i.i, i64 624
  %i.dr = load i16, ptr %i.dq, align 8, !noalias !31210 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 626
  %i.dt = load i16, ptr %i.ds, align 2, !noalias !31209, !noundef !28
  %i.du = icmp ult i16 %i.dr, %i.dt
  br i1 %i.du, label %bb.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @610) #75
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.r, !noalias !31211

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.dv = zext i16 %i.dr to i64                   ; 4 uses
  %i.dw = icmp eq i64 %i.dp, 0
  br i1 %i.dw, label %.thread106.i.i.i.i.i.i, label %bb.q

.thread106.i.i.i.i.i.i:                           ; preds = %bb.p, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %.sroa.06.0.ph.i.i.i113.i.i.i.i.i.i = phi ptr [ %i.do, %bb.p ], [ %.sroa.8.1.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.10.0.ph.i.i.i111.i.i.i.i.i.i = phi i64 [ %i.dv, %bb.p ], [ %.sroa.24.1.i.i.i.i.i.i, %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5ImmutNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashE10init_frontCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.dx = add nuw nsw i64 %.sroa.10.0.ph.i.i.i111.i.i.i.i.i.i, 1
  br label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.dy = icmp ult i16 %i.dr, 11
  call void @llvm.assume(i1 %i.dy), !noalias !31190
  %i.dz = getelementptr i8, ptr %i.do, i64 640
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %i.dv ; 2 uses
  %xtraiter27 = and i64 %i.dp, 7                  ; 2 uses
  %lcmp.mod28.not = icmp eq i64 %xtraiter27, 0
  br i1 %lcmp.mod28.not, label %.prol.loopexit24, label %.prol.preheader23

.prol.preheader23:                                ; preds = %bb.q, %.prol.preheader23
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.eb, %.prol.preheader23 ], [ %i.ea, %bb.q ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader23 ], [ %i.dp, %bb.q ]
  %prol.iter29 = phi i64 [ %prol.iter29.next, %.prol.preheader23 ], [ 0, %bb.q ]
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.prol, align 8, !noalias !31212, !nonnull !28, !noundef !28 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter29.next = add i64 %prol.iter29, 1     ; 2 uses
  %prol.iter29.cmp.not = icmp eq i64 %prol.iter29.next, %xtraiter27
  br i1 %prol.iter29.cmp.not, label %.prol.loopexit24, label %.prol.preheader23, !llvm.loop !31166

.prol.loopexit24:                                 ; preds = %.prol.preheader23, %bb.q
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.q ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader23 ]
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ea, %bb.q ], [ %i.eb, %.prol.preheader23 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.dp, %bb.q ], [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.prol, %.prol.preheader23 ]
  %i.ec = icmp ult i64 %.sroa.5.021.i.i.i.i.i.i.i.i.i.i, 7
  br i1 %i.ec, label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %.new25

.new25:                                           ; preds = %.prol.loopexit24, %.new25
  %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.el, %.new25 ], [ %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit24 ]
  %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7, %.new25 ], [ %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i.unr, %.prol.loopexit24 ]
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.017.0.in.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i, i64 632
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ed, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.1, i64 632
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.ee, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.2, i64 632
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ef, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.3, i64 632
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.4 = load ptr, ptr %i.eg, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.4, i64 632
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.5 = load ptr, ptr %i.eh, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.5, i64 632
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.6 = load ptr, ptr %i.ei, align 8, !noalias !31212, !nonnull !28, !noundef !28
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.6, i64 632
  %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7 = add i64 %.sroa.019.0.in.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7 = load ptr, ptr %i.ej, align 8, !noalias !31212, !nonnull !28, !noundef !28 ; 2 uses
  %i.ek = icmp eq i64 %.sroa.019.0.i.i.i.i.i.i.i.i.i.i.7, 0
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7, i64 632
  br i1 %i.ek, label %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %.new25

bb.r:                                             ; preds = %bb.o
  %i.em = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap(), !noalias !31190
  unreachable

_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtCs7q5LCsEFjLc_6blake34HashENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.prol.loopexit24, %.new25, %.thread106.i.i.i.i.i.i
  %.sroa.06.0.ph.i.i.i112.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i113.i.i.i.i.i.i, %.thread106.i.i.i.i.i.i ], [ %i.do, %.new25 ], [ %i.do, %.prol.loopexit24 ] ; 2 uses
  %.sroa.10.0.ph.i.i.i110.i.i.i.i.i.i = phi i64 [ %.sroa.10.0.ph.i.i.i111.i.i.i.i.i.i, %.thread106.i.i.i.i.i.i ], [ %i.dv, %.new25 ], [ %i.dv, %.prol.loopexit24 ] ; 3 uses
  %.sroa.78.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dx, %.thread106.i.i.i.i.i.i ], [ 0, %.new25 ], [ 0, %.prol.loopexit24 ]
  %.sroa.07.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.06.0.ph.i.i.i113.i.i.i.i.i.i, %.thread106.i.i.i.i.i.i ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.lcssa.unr, %.prol.loopexit24 ], [ %.sroa.017.0.i.i.i.i.i.i.i.i.i.i.7, %.new25 ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.06.0.ph.i.i.i112.i.i.i.i.i.i, i64 360
  %i.eo = icmp samesign ult i64 %.sroa.10.0.ph.i.i.i110.i.i.i.i.i.i, 11
  call void @llvm.assume(i1 %i.eo), !noalias !31190
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %.sroa.10.0.ph.i.i.i110.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw [32 x i8], ptr %.sroa.06.0.ph.i.i.i112.i.i.i.i.i.i, i64 %.sroa.10.0.ph.i.i.i110.i.i.i.i.i.i
  br label %bb.j

.thread102.i.i.i.i.i.i:                           ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCs4wP2HXfJTCR_5alloc6string6StringRNtCs7q5LCsEFjLc_6blake34HashEINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2T_3ser10SerializerQNtB21_6HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  %i.er = call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31213 ; 0 uses
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3t_6string6StringNtBO_4HashEEECskXtk6F4WjxZ_4just.exit

bb.s:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9.i4.i) ]
  %i.es = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val9.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef range(i64 1, -9223372036854775808) 4), !noalias !31214 ; 0 uses
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3t_6string6StringNtBO_4HashEEECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3t_6string6StringNtBO_4HashEEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, %.thread104.i.i.i.i.i.i, %.thread102.i.i.i.i.i.i, %bb.s
  %.sroa.0.0.i = phi ptr [ %i.g, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i ], [ null, %.thread104.i.i.i.i.i.i ], [ null, %bb.s ], [ null, %.thread102.i.i.i.i.i.i ], [ %i.bu, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyRNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueEEB3w_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31226)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31228)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !31229, !noalias !31230, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !38, !alias.scope !31229, !noalias !31230, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !31231, !nonnull !28, !noundef !28
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31231 ; 0 uses
  br label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.a
  store i8 2, ptr %i.b, align 8, !alias.scope !31229, !noalias !31230
  %.val9.i.i = load ptr, ptr %i.a, align 8, !noalias !31231, !nonnull !28, !align !35, !noundef !28
  %i.f = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @479, i64 noundef 5) #76, !noalias !31232 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueEEB3o_.exit

bb.c:                                             ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31233)
  %.val.i3.i = load ptr, ptr %i.a, align 8, !noalias !31234, !nonnull !28, !align !35, !noundef !28
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i3.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31234 ; 0 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31236)
  %i.h = load i64, ptr %1, align 8, !range !37, !alias.scope !31237, !noalias !31238, !noundef !28
  %.not.i.i.i = icmp eq i64 %i.h, -1
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.thread.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.i.i

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.thread.i.i: ; preds = %bb.c
  %.val.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !31236, !noalias !31239, !nonnull !28, !align !35, !noundef !28
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef range(i64 1, -9223372036854775808) 4), !noalias !31240 ; 0 uses
  br label %bb.d

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.i.i: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !31237, !noalias !31238, !nonnull !28, !noundef !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !31237, !noalias !31238, !noundef !28
  %i.l = tail call fastcc noalias noundef align 8 ptr @_RINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2o_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.a, ptr nonnull readonly %.val1.i.i.i, i64 %.val2.i.i.i), !noalias !31239 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.l, null
  br i1 %.not8.i.i, label %bb.d, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueEEB3o_.exit

bb.d:                                             ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.thread.i.i
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueEEB3o_.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueEEB3o_.exit: ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.i.i, %bb.d
  %.sroa.0.0.i = phi ptr [ %i.f, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i ], [ %i.l, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEEB1q_.exit.i.i ], [ null, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(address, read_provenance) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31249)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !31250, !noalias !31251, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !38, !alias.scope !31250, !noalias !31251, !noundef !28
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.b, align 8, !noalias !31252, !nonnull !28, !noundef !28
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31252 ; 0 uses
  br label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.a
  store i8 2, ptr %i.c, align 8, !alias.scope !31250, !noalias !31251
  %.val9.i.i = load ptr, ptr %i.b, align 8, !noalias !31252, !nonnull !28, !align !35, !noundef !28
  %i.g = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 17) #76, !noalias !31250 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i
  %.val.i5.i = load ptr, ptr %i.b, align 8, !noalias !31248, !nonnull !28, !align !35, !noundef !28
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i5.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31248 ; 0 uses
  %.val11.i.i = load ptr, ptr %i.b, align 8, !noalias !31248 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !31253
  call void @_RNvNtNtCsj6eKBz9Db1c_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val), !noalias !31248
  %i.i = load i64, ptr %i.a, align 8, !range !41, !noalias !31253, !noundef !28
  %i.j = trunc nuw i64 %i.i to i1
  br i1 %i.j, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread5.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread5.i.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31253
  %i.k = tail call fastcc noundef nonnull align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5ErrorNtNtCsfxuqquxiU4q_10serde_core3ser5Error6customReECskXtk6F4WjxZ_4just()
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i: ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %i.l = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef range(i64 1, -9223372036854775808) 4), !noalias !31248 ; 0 uses
  br label %bb.e

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !noalias !31253, !nonnull !28, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !31253, !noundef !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !31253
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %i.q = tail call fastcc noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p) #76, !noalias !31248 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.q, null
  br i1 %.not8.i.i, label %bb.e, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit

bb.e:                                             ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread5.i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.g, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i ], [ %i.q, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i ], [ null, %bb.e ], [ %i.k, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread5.i.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(address) %.0.val, i64 %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31279)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !31280, !noalias !31281, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !range !38, !alias.scope !31280, !noalias !31281, !noundef !28
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.a, align 8, !noalias !31282, !nonnull !28, !noundef !28
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31282 ; 0 uses
  br label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.a
  store i8 2, ptr %i.b, align 8, !alias.scope !31280, !noalias !31281
  %.val9.i.i = load ptr, ptr %i.a, align 8, !noalias !31282, !nonnull !28, !align !35, !noundef !28
  %i.f = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @508, i64 noundef 10) #76, !noalias !31280 ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

bb.c:                                             ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i
  %.val.i5.i = load ptr, ptr %i.a, align 8, !noalias !31278, !nonnull !28, !align !35, !noundef !28
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i5.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31278 ; 0 uses
  %.val11.i.i = load ptr, ptr %i.a, align 8, !noalias !31278 ; 8 uses
  %.not.i.i.i = icmp eq ptr %.0.val, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31283)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31284)
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.8.val, 24
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.idx.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31285 ; 0 uses
  %i.j = icmp eq i64 %.8.val, 0
  br i1 %i.j, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i

_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.d
  %i.k = getelementptr i8, ptr %.0.val, i64 8
  %.val7.peel.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !31286, !noalias !31287, !nonnull !28, !noundef !28
  %i.l = getelementptr i8, ptr %.0.val, i64 16
  %.val8.peel.i.i.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !31286, !noalias !31287
  %i.m = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.peel.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.peel.i.i.i.i.i.i.i.i.i) #76, !noalias !31288 ; 2 uses
  %.not6.peel.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not6.peel.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i.preheader, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

.peel.next.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  %i.n = icmp eq i64 %.8.val, 1
  br i1 %i.n, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.lr.ph

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.lr.ph: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i

.peel.next.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.h
  br i1 %i.q, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, !llvm.loop !9

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.lr.ph, %.peel.next.i.i.i.i.i.i.i.i.i
  %i.r = phi ptr [ %i.o, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.p, %.peel.next.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pn.i.i.i.i.i.i.i1 = phi ptr [ %.0.val, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.lr.ph ], [ %i.r, %.peel.next.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.s = getelementptr i8, ptr %.pn.i.i.i.i.i.i.i1, i64 32
  %.val7.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !31286, !noalias !31287 ; 2 uses
  %i.t = getelementptr i8, ptr %.pn.i.i.i.i.i.i.i1, i64 40
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !alias.scope !31286, !noalias !31287
  %i.u = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31289 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.i.i.i.i.i.i.i) ]
  %i.v = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i) #76, !noalias !31289 ; 2 uses
  %.not6.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i, label %.peel.next.i.i.i.i.i.i.i.i.i, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, !llvm.loop !9

_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i: ; preds = %.peel.next.i.i.i.i.i.i.i.i.i, %.peel.next.i.i.i.i.i.i.i.i.i.preheader, %bb.d
  %i.w = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31290 ; 0 uses
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i) ]
  %i.x = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val11.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef range(i64 1, -9223372036854775808) 4), !noalias !31278 ; 0 uses
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i, %bb.e
  %.sroa.0.0.i = phi ptr [ %i.f, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i ], [ %i.m, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i ], [ null, %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split.i.i.i.i.i.i.i ], [ null, %bb.e ], [ %i.v, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldRNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEB2V_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(none) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31314)
  %i.d = load ptr, ptr %0, align 8, !alias.scope !31315, !noalias !31316, !nonnull !28, !align !35, !noundef !28 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !38, !alias.scope !31315, !noalias !31316, !noundef !28
  %i.g = icmp eq i8 %i.f, 1
  br i1 %i.g, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val.i.i = load ptr, ptr %i.d, align 8, !noalias !31317, !nonnull !28, !noundef !28
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31317 ; 0 uses
  br label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.b, %bb.a
  store i8 2, ptr %i.e, align 8, !alias.scope !31315, !noalias !31316
  %.val9.i.i = load ptr, ptr %i.d, align 8, !noalias !31317, !nonnull !28, !align !35, !noundef !28
  %i.i = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @402, i64 noundef 6) #76, !noalias !31315 ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %bb.c, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeRNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEB2N_.exit

bb.c:                                             ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i
  %.val.i4.i = load ptr, ptr %i.d, align 8, !noalias !31313, !nonnull !28, !align !35, !noundef !28
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i4.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !31313 ; 0 uses
  %.val10.i.i = load ptr, ptr %i.d, align 8, !noalias !31313 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !31318
  store i64 0, ptr %i.c, align 8, !noalias !31318
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31318
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31318
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !31318
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.k, align 8, !noalias !31318
  store ptr %i.c, ptr %i.b, align 8, !noalias !31318
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @2613, ptr %i.l, align 8, !noalias !31318
  %i.m = invoke noundef zeroext i1 @_RNvXs3_NtCskXtk6F4WjxZ_4just10modulepathNtB5_10ModulepathNtNtCsj6eKBz9Db1c_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.0.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.d, !noalias !31319

bb.d:                                             ; preds = %bb.g, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !31320)
  call void @llvm.experimental.noalias.scope.decl(metadata !31321)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !31322, !noalias !31318 ; 2 uses
  %i.o = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.o, label %common.resume.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !31322, !noalias !31318, !nonnull !28, !noundef !28
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !31323
  br label %common.resume.i.i.i.i

bb.f:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.g, label %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtB5_12SpecToString14spec_to_stringBC_.exit.i.i.i.i, !prof !44

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2614, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @801, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2616) #75
          to label %.noexc.i.i.i.i.i unwind label %bb.d, !noalias !31318

.noexc.i.i.i.i.i:                                 ; preds = %bb.g
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.i, %bb.h, %bb.e, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.n, %bb.e ], [ %i.q, %bb.i ], [ %i.q, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtB5_12SpecToString14spec_to_stringBC_.exit.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !31324 ; 4 uses
  %.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31324, !nonnull !28, !noundef !28 ; 3 uses
  %.sroa.8.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !31324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !31318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !31318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i.i) ]
  %i.p = invoke fastcc noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val10.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.8.0.copyload.i.i.i.i)
          to label %bb.j unwind label %bb.h, !noalias !31325 ; 2 uses

bb.h:                                             ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtB5_12SpecToString14spec_to_stringBC_.exit.i.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.r, label %common.resume.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !31326
  br label %common.resume.i.i.i.i

bb.j:                                             ; preds = %_RNvXsC_NtCs4wP2HXfJTCR_5alloc6stringNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathNtB5_12SpecToString14spec_to_stringBC_.exit.i.i.i.i
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, 0
  br i1 %i.s, label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeRNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEB2N_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #70, !noalias !31327
  br label %_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeRNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEB2N_.exit

_RINvYINtNtCshTCYgcDtIbU_10serde_json3ser8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap15serialize_entryeRNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEB2N_.exit: ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi ptr [ %i.i, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i ], [ %i.p, %bb.j ], [ %i.p, %bb.k ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json5errorNtB6_5ErrorNtNtCsfxuqquxiU4q_10serde_core3ser5Error6customReECskXtk6F4WjxZ_4just() unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !31338)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !31339
  %i.b = tail call noundef dereferenceable_or_null(38) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 38, i64 noundef range(i64 1, 9) 1) #70, !noalias !31339 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvXsB_NtCs4wP2HXfJTCR_5alloc6stringReNtB5_8ToString9to_stringCskXtk6F4WjxZ_4just.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) 38) #71, !noalias !31340
  unreachable

_RNvXsB_NtCs4wP2HXfJTCR_5alloc6stringReNtB5_8ToString9to_stringCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(38) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(38) @545, i64 range(i64 0, -9223372036854775808) 38, i1 false), !noalias !31341
  store i64 38, ptr %i.a, align 8, !alias.scope !31342
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !31342
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 38, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !31342
  %i.d = call noundef nonnull align 8 ptr @_RNvNtCshTCYgcDtIbU_10serde_json5error10make_error(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs7_NtNtNtCsaKJjC64KgbL_3std11collections4hash3setINtB6_7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect12FromIteratorB14_E9from_iterAB14_j1_EB18_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, i32 noundef %1) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !range !40, !noalias !31353, !noundef !28
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i: ; preds = %bb.a
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !noalias !31354
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !31354
  br label %.noexc.i.i

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.a
  %i.f = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !31355 ; 2 uses
  %i.g = extractvalue { i64, i64 } %i.f, 0
  %i.h = extractvalue { i64, i64 } %i.f, 1        ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8, !noalias !31355
  store i8 1, ptr %i.c, align 8, !noalias !31355
  br label %.noexc.i.i

.noexc.i.i:                                       ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i
  %.pre-phi15 = phi i64 [ %.pre1.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i ], [ %i.h, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i ]
  %i.j = phi i64 [ %.pre.i.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i ], [ %i.g, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i ] ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.b, align 8, !noalias !31354
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  store i64 %i.j, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.pre-phi15, ptr %.sroa.58.0..sroa_idx, align 8
  %i.l = invoke { i64, i64 } @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTNtNtCskXtk6F4WjxZ_4just6number6NumberuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0EBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.47.0..sroa_idx, i1 noundef zeroext true) #74
          to label %_RINvXs1i_NtCs37Y8JGf013z_9hashbrown3mapINtB7_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5array4iter8IntoIterBP_Kj1_ENCINvXs8_NtB9_3setINtB4A_7HashSetBP_B1r_EIB2g_BP_E6extendABP_B4n_E0EEBT_.exit.i unwind label %bb.b ; 0 uses

_RINvXs1i_NtCs37Y8JGf013z_9hashbrown3mapINtB7_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5array4iter8IntoIterBP_Kj1_ENCINvXs8_NtB9_3setINtB4A_7HashSetBP_B1r_EIB2g_BP_E6extendABP_B4n_E0EEBT_.exit.i: ; preds = %.noexc.i.i
  %i.m = invoke fastcc noundef zeroext i1 @_RNvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB5_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6insertBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %1)
          to label %_RINvXs8_NtCs37Y8JGf013z_9hashbrown3setINtB6_7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBO_E6extendABO_j1_EBS_.exit unwind label %bb.b ; 0 uses

bb.b:                                             ; preds = %_RINvXs1i_NtCs37Y8JGf013z_9hashbrown3mapINtB7_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5array4iter8IntoIterBP_Kj1_ENCINvXs8_NtB9_3setINtB4A_7HashSetBP_B1r_EIB2g_BP_E6extendABP_B4n_E0EEBT_.exit.i, %.noexc.i.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val12 = load i64, ptr %i.o, align 8, !noundef !28
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3set7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberEEB1A_(ptr %.val, i64 %.val12) #72
  resume { ptr, i32 } %i.n

_RINvXs8_NtCs37Y8JGf013z_9hashbrown3setINtB6_7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBO_E6extendABO_j1_EBS_.exit: ; preds = %_RINvXs1i_NtCs37Y8JGf013z_9hashbrown3mapINtB7_7HashMapNtNtCskXtk6F4WjxZ_4just6number6NumberuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2m_8adapters3map3MapINtNtNtB2o_5array4iter8IntoIterBP_Kj1_ENCINvXs8_NtB9_3setINtB4A_7HashSetBP_B1r_EIB2g_BP_E6extendABP_B4n_E0EEBT_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvXs8_NtCs37Y8JGf013z_9hashbrown3setINtB6_7HashSetNtNtCskXtk6F4WjxZ_4just6number6NumberNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2k_8adapters6cloned6ClonedINtNtNtNtB1v_11collections4hash3set4IterBO_EEEBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !alias.scope !31401
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load ptr, ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !31401
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.66.0.copyload = load i16, ptr %.sroa.66.0..sroa_idx, align 8, !alias.scope !31401
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_1
begin_hunk_2_@_RINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB7_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRIBR_NtNtBV_6string6StringEECskXtk6F4WjxZ_4just:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32416)
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 14 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !32417, !noalias !32418, !noundef !28 ; 3 uses
  %i.i = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !32417, !noalias !32418, !noundef !28
  %i.j = icmp eq i64 %i.i, %i.h
  br i1 %i.j, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i, label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter11begin_arrayQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i: ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.h, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef 1, i64 noundef 1), !noalias !32418
  %i.k = load i64, ptr %i.g, align 8, !alias.scope !32419, !noalias !32418, !noundef !28
  br label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter11begin_arrayQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i

_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter11begin_arrayQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i, %bb.a
  %.sink1.i.i = phi i64 [ %i.k, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i ], [ %i.h, %bb.a ] ; 3 uses
  %i.l = icmp sgt i64 %.sink1.i.i, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !32419, !noalias !32418, !nonnull !28, !noundef !28
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sink1.i.i
  store i8 91, ptr %i.o, align 1, !noalias !32420
  %i.p = add nuw i64 %.sink1.i.i, 1
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !32419, !noalias !32418
  %cond = icmp eq i64 %.16.val, 0
  br i1 %cond, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter11begin_arrayQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i
  %i.q = getelementptr i8, ptr %.8.val, i64 8
  %.val7.peel.i.i = load ptr, ptr %i.q, align 8, !noalias !32421 ; 2 uses
  %i.r = getelementptr i8, ptr %.8.val, i64 16
  %.val8.peel.i.i = load i64, ptr %i.r, align 8, !noalias !32421
  tail call fastcc void @_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, ptr nonnull %.val.i, i1 noundef zeroext true) #76
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.peel.i.i) ]
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.peel.i.i, i64 noundef %.val8.peel.i.i) #76
  store i8 1, ptr %i.f, align 8, !alias.scope !32422, !noalias !32423
  %i.s = icmp eq i64 %.16.val, 1
  br i1 %i.s, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.8.val, i64 24 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.b, align 8, !nonnull !28
  %i.w = load i64, ptr %i.u, align 8
  %.fr18 = freeze i64 %i.w                        ; 5 uses
  %.not.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.i.i, label %.peel.next.i.i.us, label %.peel.next.i.preheader.i.split

.peel.next.i.i.us:                                ; preds = %.peel.next.i.preheader.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us
  %i.x = phi ptr [ %i.y, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us ], [ %i.t, %.peel.next.i.preheader.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 8
  %.val7.i.i.us = load ptr, ptr %i.z, align 8, !noalias !32421 ; 2 uses
  %i.aa = getelementptr i8, ptr %i.x, i64 16
  %.val8.i.i.us = load i64, ptr %i.aa, align 8, !noalias !32421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32424), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32426), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32427), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32428), !noalias !32425
  %i.ab = load i64, ptr %i.g, align 8, !alias.scope !32429, !noalias !32430, !noundef !28 ; 3 uses
  %i.ac = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !32429, !noalias !32430, !noundef !28
  %i.ad = sub i64 %i.ac, %i.ab
  %i.ae = icmp ult i64 %i.ad, 2
  br i1 %i.ae, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us: ; preds = %.peel.next.i.i.us
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.ab, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !32430
  %i.af = load i64, ptr %i.g, align 8, !alias.scope !32431, !noalias !32430, !noundef !28
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us

_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us, %.peel.next.i.i.us
  %.sink9.i.i.us = phi i64 [ %i.af, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us ], [ %i.ab, %.peel.next.i.i.us ] ; 3 uses
  %i.ag = icmp sgt i64 %.sink9.i.i.us, -1
  tail call void @llvm.assume(i1 %i.ag), !noalias !32425
  %i.ah = load ptr, ptr %i.m, align 8, !alias.scope !32431, !noalias !32430, !nonnull !28, !noundef !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %.sink9.i.i.us
  store i16 2604, ptr %i.ai, align 1, !noalias !32432
  %i.aj = add nuw i64 %.sink9.i.i.us, 2
  store i64 %i.aj, ptr %i.g, align 8, !noalias !32433
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.us) ]
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i.us, i64 noundef %.val8.i.i.us) #76
  store i8 1, ptr %i.f, align 8, !alias.scope !32422, !noalias !32434
  %i.ak = icmp eq ptr %i.y, %i.a
  br i1 %i.ak, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit, label %.peel.next.i.i.us, !llvm.loop !32394

.peel.next.i.preheader.i.split:                   ; preds = %.peel.next.i.preheader.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.fr18, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.peel.next.i.i.us11, label %.peel.next.i.i

.peel.next.i.i.us11:                              ; preds = %.peel.next.i.preheader.i.split, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us15
  %i.al = phi ptr [ %i.am, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us15 ], [ %i.t, %.peel.next.i.preheader.i.split ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val7.i.i.us12 = load ptr, ptr %i.an, align 8, !noalias !32421 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 16
  %.val8.i.i.us13 = load i64, ptr %i.ao, align 8, !noalias !32421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32424), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32426), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32427), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32428), !noalias !32425
  %i.ap = load i64, ptr %i.g, align 8, !alias.scope !32429, !noalias !32430, !noundef !28 ; 3 uses
  %i.aq = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !32429, !noalias !32430, !noundef !28
  %i.ar = sub i64 %i.aq, %i.ap
  %i.as = icmp ult i64 %i.ar, 2
  br i1 %i.as, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us14, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us15, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us14: ; preds = %.peel.next.i.i.us11
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.ap, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !32430
  %i.at = load i64, ptr %i.g, align 8, !alias.scope !32431, !noalias !32430, !noundef !28
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us15

_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us15: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us14, %.peel.next.i.i.us11
  %.sink9.i.i.us16 = phi i64 [ %i.at, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11.us14 ], [ %i.ap, %.peel.next.i.i.us11 ] ; 3 uses
  %i.au = icmp sgt i64 %.sink9.i.i.us16, -1
  tail call void @llvm.assume(i1 %i.au), !noalias !32425
  %i.av = load ptr, ptr %i.m, align 8, !alias.scope !32431, !noalias !32430, !nonnull !28, !noundef !28
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 %.sink9.i.i.us16
  store i16 2604, ptr %i.aw, align 1, !noalias !32432
  %i.ax = add nuw nsw i64 %.sink9.i.i.us16, 2
  store i64 %i.ax, ptr %i.g, align 8, !noalias !32433
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i.us12) ]
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i.us12, i64 noundef %.val8.i.i.us13) #76
  store i8 1, ptr %i.f, align 8, !alias.scope !32422, !noalias !32434
  %i.ay = icmp eq ptr %i.am, %i.a
  br i1 %i.ay, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit, label %.peel.next.i.i.us11, !llvm.loop !32394

.peel.next.i.i:                                   ; preds = %.peel.next.i.preheader.i.split, %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.loopexit
  %i.az = phi ptr [ %i.ba, %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.loopexit ], [ %i.t, %.peel.next.i.preheader.i.split ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val7.i.i = load ptr, ptr %i.bb, align 8, !noalias !32421 ; 2 uses
  %i.bc = getelementptr i8, ptr %i.az, i64 16
  %.val8.i.i = load i64, ptr %i.bc, align 8, !noalias !32421
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32424), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32426), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32427), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32428), !noalias !32425
  %i.bd = load i64, ptr %i.g, align 8, !alias.scope !32429, !noalias !32430, !noundef !28 ; 3 uses
  %i.be = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !32429, !noalias !32430, !noundef !28
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = icmp ult i64 %i.bf, 2
  br i1 %i.bg, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11: ; preds = %.peel.next.i.i
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.bd, i64 noundef range(i64 0, -9223372036854775808) 2, i64 noundef 1, i64 noundef 1), !noalias !32430
  %i.bh = load i64, ptr %i.g, align 8, !alias.scope !32431, !noalias !32430, !noundef !28
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11, %.peel.next.i.i
  %.sink9.i.i = phi i64 [ %i.bh, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i11 ], [ %i.bd, %.peel.next.i.i ] ; 3 uses
  %i.bi = icmp sgt i64 %.sink9.i.i, -1
  tail call void @llvm.assume(i1 %i.bi), !noalias !32425
  %i.bj = load ptr, ptr %i.m, align 8, !alias.scope !32431, !noalias !32430, !nonnull !28, !noundef !28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.sink9.i.i
  store i16 2604, ptr %i.bk, align 1, !noalias !32432
  %i.bl = add nuw i64 %.sink9.i.i, 2              ; 2 uses
  store i64 %i.bl, ptr %i.g, align 8, !noalias !32433
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i
  %i.bm = phi i64 [ %i.bv, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i ], [ %i.bl, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i ] ; 3 uses
  %.sroa.05.01.i.i = phi i64 [ %i.bn, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i ], [ 0, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.bn = add nuw i64 %.sroa.05.01.i.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32435), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32436), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32437), !noalias !32425
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32438), !noalias !32425
  %i.bo = load i64, ptr %.val.i, align 8, !range !43, !alias.scope !32439, !noalias !32440, !noundef !28
  %i.bp = sub i64 %i.bo, %i.bm
  %i.bq = icmp ugt i64 %.fr18, %i.bp
  br i1 %i.bq, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i15.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i, !prof !44

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i15.i.i: ; preds = %.lr.ph.split.i.i
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, i64 noundef %i.bm, i64 noundef range(i64 0, -9223372036854775808) %.fr18, i64 noundef 1, i64 noundef 1), !noalias !32440
  %i.br = load i64, ptr %i.g, align 8, !alias.scope !32441, !noalias !32440, !noundef !28
  br label %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i

_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i15.i.i, %.lr.ph.split.i.i
  %.sink12.i.i = phi i64 [ %i.br, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i15.i.i ], [ %i.bm, %.lr.ph.split.i.i ] ; 3 uses
  %i.bs = icmp sgt i64 %.sink12.i.i, -1
  tail call void @llvm.assume(i1 %i.bs), !noalias !32425
  %i.bt = load ptr, ptr %i.m, align 8, !alias.scope !32441, !noalias !32440, !nonnull !28, !noundef !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sink12.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr nonnull readonly align 1 %i.v, i64 range(i64 0, -9223372036854775808) %.fr18, i1 false), !noalias !32442
  %i.bv = add nuw i64 %.sink12.i.i, %.fr18        ; 2 uses
  store i64 %i.bv, ptr %i.g, align 8, !alias.scope !32441, !noalias !32440
  %exitcond.not.i.i = icmp eq i64 %.sroa.05.01.i.i, %i.d
  br i1 %exitcond.not.i.i, label %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.loopexit, label %.lr.ph.split.i.i

_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.loopexit: ; preds = %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit16.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  tail call fastcc void @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr nonnull %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i, i64 noundef %.val8.i.i) #76
  store i8 1, ptr %i.f, align 8, !alias.scope !32422, !noalias !32434
  %i.bw = icmp eq ptr %i.ba, %i.a
  br i1 %i.bw, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit, label %.peel.next.i.i, !llvm.loop !32394

_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtB5_15PrettyFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit: ; preds = %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter17begin_array_valueQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i.loopexit, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us15, %_RNvXs_NtNtCsj6eKBz9Db1c_4core2io5implsQINtNtCs4wP2HXfJTCR_5alloc3vec3VechENtNtB6_5write5Write9write_allCskXtk6F4WjxZ_4just.exit.i.i.us, %.lr.ph.i.i, %_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter11begin_arrayQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just.exit.i
  tail call fastcc void @_RINvXsd_NtCshTCYgcDtIbU_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter9end_arrayQINtNtCs4wP2HXfJTCR_5alloc3vec3VechEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b, ptr nonnull %.val.i) #76
  ret ptr null
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef align 8 ptr @_RINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2o_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %.16.val, 24
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32458)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !32458, !noalias !32459, !nonnull !28, !align !35, !noundef !28 ; 5 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @540, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !32460 ; 0 uses
  %i.c = icmp eq i64 %.16.val, 0
  br i1 %i.c, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split, label %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit

_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit: ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.8.val, i64 8
  %.val7.peel.i.i = load ptr, ptr %i.d, align 8, !noalias !32461, !nonnull !28, !noundef !28
  %i.e = getelementptr i8, ptr %.8.val, i64 16
  %.val8.peel.i.i = load i64, ptr %i.e, align 8, !noalias !32461
  %i.f = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.peel.i.i, i64 noundef %.val8.peel.i.i) #76, !noalias !32462 ; 2 uses
  %.not6.peel.i.i = icmp eq ptr %i.f, null
  br i1 %.not6.peel.i.i, label %.peel.next.i.i.preheader, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit

.peel.next.i.i.preheader:                         ; preds = %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit
  %i.g = icmp eq i64 %.16.val, 1
  br i1 %i.g, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.lr.ph

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.lr.ph: ; preds = %.peel.next.i.i.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  br label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i

.peel.next.i.i:                                   ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split, label %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i, !llvm.loop !32456

_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.lr.ph, %.peel.next.i.i
  %i.k = phi ptr [ %i.h, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.lr.ph ], [ %i.i, %.peel.next.i.i ] ; 2 uses
  %.pn27 = phi ptr [ %.8.val, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i.lr.ph ], [ %i.k, %.peel.next.i.i ] ; 2 uses
  %i.l = getelementptr i8, ptr %.pn27, i64 32
  %.val7.i.i = load ptr, ptr %i.l, align 8, !noalias !32461 ; 2 uses
  %i.m = getelementptr i8, ptr %.pn27, i64 40
  %.val8.i.i = load i64, ptr %i.m, align 8, !noalias !32461
  %i.n = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1), !noalias !32463 ; 0 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7.i.i) ]
  %i.o = tail call fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7.i.i, i64 noundef %.val8.i.i) #76, !noalias !32463 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.o, null
  br i1 %.not6.i.i, label %.peel.next.i.i, label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit, !llvm.loop !32456

_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split: ; preds = %.peel.next.i.i, %.peel.next.i.i.preheader, %bb.a
  %i.p = tail call noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @542, i64 noundef range(i64 1, -9223372036854775808) 1) ; 0 uses
  br label %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit

_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit: ; preds = %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i, %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit
  %.sroa.0.0 = phi ptr [ %i.f, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit ], [ null, %_RNvXs2_NtCshTCYgcDtIbU_10serde_json3serINtB5_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB5_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeSeq3endCskXtk6F4WjxZ_4just.exit.sink.split ], [ %i.o, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtB1p_3vec3VecB1l_EE0E0CskXtk6F4WjxZ_4just.exit.i.i ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just7binding7Binding11sort_by_keyReNCNvMNtBD_8justfileNtB1w_8Justfile3runs0_0E0BD_(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.0.val1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32481)
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !32481, !nonnull !28, !noundef !28 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !32481, !noundef !28 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !32481, !noundef !28 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 64
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !32481, !noundef !28 ; 3 uses
  %i.i = add i64 %i.h, %i.f                       ; 5 uses
  %i.j = icmp ugt i64 %i.f, %i.i
  %i.k = icmp ugt i64 %i.i, %i.d
  %or.cond.i.i.i = or i1 %i.j, %i.k
  br i1 %or.cond.i.i.i, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, label %bb.b, !prof !31

bb.b:                                             ; preds = %bb.a
  %i.l = icmp eq i64 %i.f, %i.d
  br i1 %i.l, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.f, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = icmp eq i64 %i.i, %i.d
  br i1 %i.n, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !32482, !noalias !32481, !noundef !28
  %i.q = icmp sgt i8 %i.p, -65
  br i1 %i.q, label %bb.d, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !32482, !noalias !32481, !noundef !28
  %i.t = icmp sgt i8 %i.s, -65
  br i1 %i.t, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i, %bb.e, %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75, !noalias !32481
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit: ; preds = %bb.b, %bb.d, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val1) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32483)
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val1, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !32483, !nonnull !28, !noundef !28 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.val1, i64 48
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !32483, !noundef !28 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0.val1, i64 80
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !32483, !noundef !28 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val1, i64 64
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !32483, !noundef !28 ; 3 uses
  %i.ac = add i64 %i.ab, %i.z                     ; 5 uses
  %i.ad = icmp ugt i64 %i.z, %i.ac
  %i.ae = icmp ugt i64 %i.ac, %i.x
  %or.cond.i.i.i6 = or i1 %i.ad, %i.ae
  br i1 %or.cond.i.i.i6, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7, label %bb.f, !prof !31

bb.f:                                             ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit
  %i.af = icmp eq i64 %i.z, %i.x
  br i1 %i.af, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit9, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq i64 %i.z, 0
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.ah = icmp eq i64 %i.ac, %i.x
  br i1 %i.ah, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit9, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8

bb.i:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %i.aj = load i8, ptr %i.ai, align 1, !alias.scope !32484, !noalias !32483, !noundef !28
  %i.ak = icmp sgt i8 %i.aj, -65
  br i1 %i.ak, label %bb.h, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7, !prof !32

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8: ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ac
  %i.am = load i8, ptr %i.al, align 1, !alias.scope !32484, !noalias !32483, !noundef !28
  %i.an = icmp sgt i8 %i.am, -65
  br i1 %i.an, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit9, label %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7, !prof !33

_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.thread3.i.i7: ; preds = %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8, %bb.i, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.x, i64 noundef %i.z, i64 noundef %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @869) #75, !noalias !32483
  unreachable

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile3runs0_0B6_.exit9: ; preds = %bb.f, %bb.h, %_RNvNtNtCsj6eKBz9Db1c_4core3str6traits11check_range.exit.i.i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.z
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.h, i64 %i.ab)
  %i.aq = tail call i32 @memcmp(ptr nonnull readonly %i.ao, ptr nonnull readonly %i.ap, i64 %spec.store.select.i.i.i.i), !alias.scope !32485 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = sub i64 %i.h, %i.ab
  %spec.select.i.i.i.i = select i1 %i.as, i64 %i.at, i64 %i.ar
  %i.au = icmp slt i64 %spec.select.i.i.i.i, 0
  ret i1 %i.au
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtCskXtk6F4WjxZ_4just11interpreter11InterpreterNtNtCs4wP2HXfJTCR_5alloc6string6StringEE5force0E0B1K_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !35, !noundef !28 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !44

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !40, !noundef !28
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCsaKJjC64KgbL_3std4sync9lazy_lockINtB4_8LazyLockINtNtCskXtk6F4WjxZ_4just11interpreter11InterpreterNtNtCs4wP2HXfJTCR_5alloc6string6StringEE5force0BZ_.exit, !prof !44

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsaKJjC64KgbL_3std4sync9lazy_lock14panic_poisoned() #75
  unreachable

_RNCNvMNtNtCsaKJjC64KgbL_3std4sync9lazy_lockINtB4_8LazyLockINtNtCskXtk6F4WjxZ_4just11interpreter11InterpreterNtNtCs4wP2HXfJTCR_5alloc6string6StringEE5force0BZ_.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a), !inline_history !32486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @555) #75
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCsaKJjC64KgbL_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReB2E_EE5force0E0CskXtk6F4WjxZ_4just(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !28, !align !35, !noundef !28 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !35, !noundef !28 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just5cacheNtB2_5Cache6status:bb.a
          to label %.noexc392 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc392:                                        ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i59.i.i
  %i.hj = getelementptr inbounds nuw i8, ptr %3, i64 80
  %.val44.i.i = load ptr, ptr %i.hj, align 8, !alias.scope !39729, !noalias !39730 ; 19 uses
  %.val.i.i.i58.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39765, !nonnull !28, !noundef !28
  %i.hk = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i58.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc393 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc393:                                        ; preds = %.noexc392
  %.val9.i.i.i60.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39765, !nonnull !28, !align !35, !noundef !28
  %i.hl = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i.i60.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @507, i64 noundef 8) #76
          to label %.noexc394 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc394:                                        ; preds = %.noexc393
  %.not.i.i61.i.i = icmp eq ptr %i.hl, null
  br i1 %.not.i.i61.i.i, label %bb.v, label %.loopexit849

bb.v:                                             ; preds = %.noexc394
  %.val.i4.i.i63.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39766, !nonnull !28, !align !35, !noundef !28
  %i.hm = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i4.i.i63.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc395 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc395:                                        ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !39767)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val44.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !39768)
  call void @llvm.experimental.noalias.scope.decl(metadata !39769)
  %i.hn = load i64, ptr %.val44.i.i, align 8, !range !37, !alias.scope !39768, !noalias !39770, !noundef !28
  %i.ho = icmp eq i64 %i.hn, -1
  br i1 %i.ho, label %bb.w, label %bb.y

bb.w:                                             ; preds = %.noexc395
  %i.hp = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !39771)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39772, !noalias !39773, !nonnull !28, !align !35, !noundef !28 ; 14 uses
  %i.hq = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc396 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc396:                                        ; preds = %bb.w
  %i.hr = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @433, i64 noundef 4) #76
          to label %.noexc397 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc397:                                        ; preds = %.noexc396
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %.noexc397
  %i.hs = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc398 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc398:                                        ; preds = %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i
  %i.ht = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @421, i64 noundef 7) #76
          to label %.noexc399 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc399:                                        ; preds = %.noexc398
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ht, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc399
  %i.hu = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.hu, align 8, !alias.scope !39774, !noalias !39775 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 32
  %.val11.i.i.i.i.i.i.i.i = load i64, ptr %i.hv, align 8, !alias.scope !39774, !noalias !39775
  %i.hw = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc400 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc400:                                        ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  %i.hx = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @429, i64 noundef range(i64 8, 10) 8) #76
          to label %.noexc401 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc401:                                        ; preds = %.noexc400
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.x, label %.loopexit849

bb.x:                                             ; preds = %.noexc401
  %i.hy = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc402 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc402:                                        ; preds = %bb.x
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc402
  %i.hz = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef range(i64 1, -9223372036854775808) 4)
          to label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc402
  %i.ia = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i.i.i, i64 noundef %.val11.i.i.i.i.i.i.i.i) #76
          to label %.noexc404 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc404:                                        ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  %.not8.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not8.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i.i.i.i.i.i.i.i: ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %.noexc404
  %.val12.i.i.i.i.i.i.i.i = load ptr, ptr %i.hp, align 8, !alias.scope !39774, !noalias !39775 ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 16
  %.val13.i.i.i.i.i.i.i.i = load i64, ptr %i.ib, align 8, !alias.scope !39774, !noalias !39775
  %i.ic = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc405 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc405:                                        ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i.i.i.i.i.i.i.i
  %i.id = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @430, i64 noundef 11) #76
          to label %.noexc406 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc406:                                        ; preds = %.noexc405
  %.not.i.i19.i.i.i.i.i.i.i.i = icmp eq ptr %i.id, null
  br i1 %.not.i.i19.i.i.i.i.i.i.i.i, label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldReECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldReECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc406
  %i.ie = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc407 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc407:                                        ; preds = %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldReECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val12.i.i.i.i.i.i.i.i) ]
  %i.if = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val12.i.i.i.i.i.i.i.i, i64 noundef %.val13.i.i.i.i.i.i.i.i) #76
          to label %.noexc408 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc408:                                        ; preds = %.noexc407
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.if, null
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i66.i.i, label %.loopexit849

bb.y:                                             ; preds = %.noexc395
  call void @llvm.experimental.noalias.scope.decl(metadata !39776)
  %.val.i.i.i.i1.i.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39777, !noalias !39778, !nonnull !28, !align !35, !noundef !28 ; 12 uses
  %i.ig = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @541, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc409 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc409:                                        ; preds = %bb.y
  %i.ih = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @433, i64 noundef 4) #76
          to label %.noexc410 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc410:                                        ; preds = %.noexc409
  %.not.i.i.i.i3.i.i.i.i.i.i.i = icmp eq ptr %i.ih, null
  br i1 %.not.i.i.i.i3.i.i.i.i.i.i.i, label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i5.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i5.i.i.i.i.i.i.i: ; preds = %.noexc410
  %i.ii = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc411 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc411:                                        ; preds = %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i5.i.i.i.i.i.i.i
  %i.ij = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 7) #76
          to label %.noexc412 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc412:                                        ; preds = %.noexc411
  %.not.i.i8.i.i.i.i.i.i.i = icmp eq ptr %i.ij, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i9.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i9.i.i.i.i.i.i.i: ; preds = %.noexc412
  %i.ik = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 8
  %.val11.i10.i.i.i.i.i.i.i = load ptr, ptr %i.ik, align 8, !alias.scope !39779, !noalias !39780 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 16
  %.val12.i11.i.i.i.i.i.i.i = load i64, ptr %i.il, align 8, !alias.scope !39779, !noalias !39780
  %i.im = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc413 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc413:                                        ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i9.i.i.i.i.i.i.i
  %i.in = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @404, i64 noundef 7) #76
          to label %.noexc414 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc414:                                        ; preds = %.noexc413
  %.not.i.i.i14.i.i.i.i.i.i.i = icmp eq ptr %i.in, null
  br i1 %.not.i.i.i14.i.i.i.i.i.i.i, label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc414
  %i.io = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc415 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc415:                                        ; preds = %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i10.i.i.i.i.i.i.i) ]
  %i.ip = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i10.i.i.i.i.i.i.i, i64 noundef %.val12.i11.i.i.i.i.i.i.i) #76
          to label %.noexc416 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc416:                                        ; preds = %.noexc415
  %.not.i.i.i.i.i.i64.i.i = icmp eq ptr %i.ip, null
  br i1 %.not.i.i.i.i.i.i64.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i17.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i17.i.i.i.i.i.i.i: ; preds = %.noexc416
  %i.iq = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 32
  %.val13.i18.i.i.i.i.i.i.i = load ptr, ptr %i.iq, align 8, !alias.scope !39779, !noalias !39780 ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.val44.i.i, i64 40
  %.val14.i19.i.i.i.i.i.i.i = load i64, ptr %i.ir, align 8, !alias.scope !39779, !noalias !39780
  %i.is = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc417 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc417:                                        ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i17.i.i.i.i.i.i.i
  %i.it = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @405, i64 noundef 9) #76
          to label %.noexc418 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc418:                                        ; preds = %.noexc417
  %.not.i.i19.i22.i.i.i.i.i.i.i = icmp eq ptr %i.it, null
  br i1 %.not.i.i19.i22.i.i.i.i.i.i.i, label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2V_6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, label %.loopexit849

_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2V_6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i: ; preds = %.noexc418
  %i.iu = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc419 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc419:                                        ; preds = %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2V_6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13.i18.i.i.i.i.i.i.i) ]
  %i.iv = invoke fastcc noalias noundef align 8 ptr @_RINvYQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2o_6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.v, ptr nonnull readonly %.val13.i18.i.i.i.i.i.i.i, i64 %.val14.i19.i.i.i.i.i.i.i)
          to label %.noexc420 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc420:                                        ; preds = %.noexc419
  %.not10.i24.i.i.i.i.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not10.i24.i.i.i.i.i.i.i, label %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i66.i.i, label %.loopexit849

_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i66.i.i: ; preds = %.noexc420, %.noexc408
  %.val.i.i.i.i1.sink.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i.i.i.i.i.i.i.i.i, %.noexc408 ], [ %.val.i.i.i.i1.i.i.i.i.i.i.i, %.noexc420 ]
  %i.iw = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i.i1.sink.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc421 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc421:                                        ; preds = %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i66.i.i
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.val41.i.i = load ptr, ptr %i.ix, align 8, !alias.scope !39729, !noalias !39730 ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.val42.i.i = load i64, ptr %i.iy, align 8, !alias.scope !39729, !noalias !39730 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !39781)
  call void @llvm.experimental.noalias.scope.decl(metadata !39782)
  call void @llvm.experimental.noalias.scope.decl(metadata !39783)
  %.val.i.i.i65.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39784, !nonnull !28, !noundef !28
  %i.iz = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i.i.i65.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @551, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc422 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc422:                                        ; preds = %.noexc421
  store i8 2, ptr %i.aq, align 8, !alias.scope !39785, !noalias !39786
  %.val9.i.i.i67.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39784, !nonnull !28, !align !35, !noundef !28
  %i.ja = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val9.i.i.i67.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @488, i64 noundef range(i64 8, 10) 9) #76
          to label %.noexc423 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc423:                                        ; preds = %.noexc422
  %.not.i.i68.i.i = icmp eq ptr %i.ja, null
  br i1 %.not.i.i68.i.i, label %bb.z, label %.loopexit849

bb.z:                                             ; preds = %.noexc423
  %.val.i5.i.i70.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39787, !nonnull !28, !align !35, !noundef !28
  %i.jb = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val.i5.i.i70.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @552, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %.noexc424 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.noexc424:                                        ; preds = %bb.z
  %.val11.i.i.i71.i.i = load ptr, ptr %i.v, align 8, !alias.scope !39727, !noalias !39787, !nonnull !28, !noundef !28 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val41.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, label %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i: ; preds = %.noexc424
  %i.jc = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val11.i.i.i71.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @548, i64 noundef range(i64 1, -9223372036854775808) 4)
          to label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit.i.i unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %.noexc424
  %i.jd = invoke fastcc noalias noundef align 8 ptr @_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_strCskXtk6F4WjxZ_4just(ptr %.val11.i.i.i71.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val41.i.i, i64 noundef %.val42.i.i) #76
          to label %.noexc426 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc426:                                        ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i
  %.not8.i.i.i.i.i = icmp eq ptr %i.jd, null
  br i1 %.not8.i.i.i.i.i, label %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit.i.i, label %.loopexit849

_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, %.noexc426
  %i.je = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.jf = invoke fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCskXtk6F4WjxZ_4just5value5ValueEEB3w_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.je) #76
          to label %.noexc427 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc427:                                        ; preds = %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit.i.i
  %.not34.i.i = icmp eq ptr %i.jf, null
  br i1 %.not34.i.i, label %bb.aa, label %.loopexit849

bb.aa:                                            ; preds = %.noexc427
  %i.jg = invoke fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtB3B_6string6StringNtBU_4HashEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %3) #76
          to label %.noexc428 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc428:                                        ; preds = %bb.aa
  %.not35.i.i = icmp eq ptr %i.jg, null
  br i1 %.not35.i.i, label %bb.ab, label %.loopexit849

bb.ab:                                            ; preds = %.noexc428
  %i.jh = getelementptr inbounds nuw i8, ptr %3, i64 112 ; 2 uses
  %.val45.i.i = load ptr, ptr %i.jh, align 8, !alias.scope !39729, !noalias !39730
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %.val46.i.i = load i64, ptr %i.ji, align 8, !alias.scope !39729, !noalias !39730
  %i.jj = invoke fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionRSNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u, ptr %.val45.i.i, i64 %.val46.i.i) #76
          to label %.noexc429 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc429:                                        ; preds = %bb.ab
  %.not36.i.i = icmp eq ptr %i.jj, null
  br i1 %.not36.i.i, label %bb.ac, label %.loopexit849

bb.ac:                                            ; preds = %.noexc429
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 88 ; 2 uses
  %.val47.i.i = load ptr, ptr %i.jk, align 8, !alias.scope !39729, !noalias !39730 ; 2 uses
  %i.jl = invoke fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldRNtNtCskXtk6F4WjxZ_4just10modulepath10ModulepathEB2V_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u, ptr %.val47.i.i) #76
          to label %.noexc430 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc430:                                        ; preds = %bb.ac
  %.not37.i.i = icmp eq ptr %i.jl, null
  br i1 %.not37.i.i, label %bb.ad, label %.loopexit849

bb.ad:                                            ; preds = %.noexc430
  %i.jm = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 2 uses
  %.val48.i.i = load ptr, ptr %i.jm, align 8, !alias.scope !39729, !noalias !39730
  %i.jn = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %.val49.i.i = load i64, ptr %i.jn, align 8, !alias.scope !39729, !noalias !39730
  %i.jo = invoke fastcc noundef align 8 ptr @_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionRNtNtCsaKJjC64KgbL_3std4path4PathEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(16) %i.u, ptr %.val48.i.i, i64 %.val49.i.i) #76
          to label %.noexc431 unwind label %.loopexit.split-lp845.loopexit.split-lp ; 2 uses

.noexc431:                                        ; preds = %bb.ad
  %.not38.i.i = icmp eq ptr %i.jo, null
  br i1 %.not38.i.i, label %bb.ae, label %.loopexit849

bb.ae:                                            ; preds = %.noexc431
  %i.jp = load i8, ptr %i.aq, align 8, !range !38, !noalias !39728, !noundef !28
  %i.jq = icmp eq i8 %i.jp, 0
  br i1 %i.jq, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jr = load ptr, ptr %i.u, align 8, !noalias !39728, !nonnull !28, !align !35, !noundef !28
  %.val43.i.i = load ptr, ptr %i.jr, align 8, !noalias !39729, !nonnull !28, !noundef !28
  %i.js = invoke noundef nonnull align 8 ptr @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher6update(ptr noalias nofree noundef nonnull align 8 dereferenceable(1920) %.val43.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @539, i64 noundef range(i64 1, -9223372036854775808) 1)
          to label %bb.ah unwind label %.loopexit.split-lp845.loopexit.split-lp ; 0 uses

.body:                                            ; preds = %.loopexit844, %.loopexit.split-lp845.loopexit.split-lp, %.loopexit.split-lp845.loopexit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit573, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, %bb.go, %bb.gn, %bb.am, %.body.i
  %.pn359 = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn357.ph, %bb.go ], [ %i.ant, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit ], [ %i.kg, %bb.am ], [ %.pn357.ph, %bb.gn ], [ %i.aqn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit573 ], [ %lpad.loopexit846, %.loopexit844 ], [ %lpad.loopexit850, %.loopexit.split-lp845.loopexit ], [ %lpad.loopexit.split-lp851, %.loopexit.split-lp845.loopexit.split-lp ] ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.an, i64 152 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.jt, align 8, !alias.scope !39788, !noundef !28
  %.not.i.i.i.i433 = icmp eq i32 %.val.i.i.i.i, 0
  br i1 %.not.i.i.i.i433, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit, label %bb.ag

bb.ag:                                            ; preds = %.body
  store i32 0, ptr %i.jt, align 8, !alias.scope !39789
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs7q5LCsEFjLc_6blake36HasherECskXtk6F4WjxZ_4just.exit

.loopexit844:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringINtNtCsj6eKBz9Db1c_4core6option6OptionB13_EENtNtNtNtB1t_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.noexc390
  %lpad.loopexit846 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp845.loopexit:                   ; preds = %.noexc374, %_RNCINvNvNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs4wP2HXfJTCR_5alloc6string6StringINtNtBe_6result6ResultuNtNtCshTCYgcDtIbU_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer11collect_seqRSB1l_E0E0CskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit850 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp845.loopexit.split-lp:          ; preds = %bb.ac, %bb.ab, %bb.ad, %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCsj6eKBz9Db1c_4core6option6OptionReEECskXtk6F4WjxZ_4just.exit.i.i, %bb.aa, %bb.bj, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEECskXtk6F4WjxZ_4just.exit.sink.split.i, %bb.bc, %bb.ak, %bb.aj, %bb.af, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i, %bb.z, %.noexc422, %.noexc421, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i66.i.i, %.noexc419, %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB2V_6string6StringEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.noexc417, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i17.i.i.i.i.i.i.i, %.noexc415, %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.noexc413, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i9.i.i.i.i.i.i.i, %.noexc411, %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i5.i.i.i.i.i.i.i, %.noexc409, %bb.y, %.noexc407, %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldReECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.noexc405, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i17.i.i.i.i.i.i.i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtNtCsfxuqquxiU4q_10serde_core3ser5implsINtNtCsj6eKBz9Db1c_4core6option6OptionReENtB8_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.i.i.i.i.i.i.i, %bb.x, %.noexc400, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i.i, %.noexc398, %_RINvXs7_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser15SerializeStruct15serialize_fieldeECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i.i, %.noexc396, %bb.w, %bb.v, %.noexc393, %.noexc392, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i59.i.i, %.noexc385, %_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringINtNtCsj6eKBz9Db1c_4core6option6OptionB13_EENtNtNtNtB1t_4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit50.i.i.i.i.i.i.i.i, %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.thread.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %_RINvXs1J_NtNtCsfxuqquxiU4q_10serde_core3ser5implsRINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringENtB9_9Serialize9serializeQINtNtCshTCYgcDtIbU_10serde_json3ser10SerializerQNtCs7q5LCsEFjLc_6blake36HasherEECskXtk6F4WjxZ_4just.exit.i.i.i.i.peel.i.i.i.i.i.i.i.i.i.i, %bb.k, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc379, %bb.e, %.noexc377, %.noexc376, %_RINvXs6_NtCshTCYgcDtIbU_10serde_json3serINtB6_8CompoundQNtCs7q5LCsEFjLc_6blake36HasherNtB6_16CompactFormatterENtNtCsfxuqquxiU4q_10serde_core3ser12SerializeMap13serialize_keyeECskXtk6F4WjxZ_4just.exit.i.i51.i.i, %_RNvXs1_NtCshTCYgcDtIbU_10serde_json3serQINtB5_10SerializerQNtCs7q5LCsEFjLc_6blake36HasherENtNtCsfxuqquxiU4q_10serde_core3ser10Serializer13serialize_seqCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i.i, %.noexc371, %bb.d, %.noexc, %bb.c, %bb.ah
  %lpad.loopexit.split-lp851 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !39728
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !39725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  invoke void @_RNvMsd_Cs7q5LCsEFjLc_6blake3NtB5_6Hasher8finalize(ptr noalias nofree noundef nonnull sret([32 x i8]) align 1 captures(address) dereferenceable(32) %i.am, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1920) %i.an)
          to label %bb.ai unwind label %.loopexit.split-lp845.loopexit.split-lp

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.w, ptr noundef nonnull align 1 dereferenceable(32) %i.am, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ju = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 7 uses
  %i.jv = cmpxchg ptr %i.ju, i32 0, i32 1 acquire monotonic, align 4, !noalias !39790
  %i.jw = extractvalue { i32, i1 } %i.jv, 1
  br i1 %i.jw, label %.noexc436, label %bb.aj, !prof !29

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 4 %i.ju)
          to label %.noexc436 unwind label %.loopexit.split-lp845.loopexit.split-lp

.noexc436:                                        ; preds = %bb.aj, %bb.ai
  %i.jx = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !39790
  %i.jy = and i64 %i.jx, 9223372036854775807
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCskXtk6F4WjxZ_4just.exit.i, label %bb.ak, !prof !29

bb.ak:                                            ; preds = %.noexc436
  %i.ka = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #74
          to label %.noexc437 unwind label %.loopexit.split-lp845.loopexit.split-lp

.noexc437:                                        ; preds = %bb.ak
  %i.kb = xor i1 %i.ka, true
  %i.kc = zext i1 %i.kb to i8
  br label %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCskXtk6F4WjxZ_4just.exit.i

_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCskXtk6F4WjxZ_4just.exit.i: ; preds = %.noexc437, %.noexc436
  %.sroa.01.0.i.i.i = phi i8 [ %i.kc, %.noexc437 ], [ 0, %.noexc436 ] ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 3 uses
  %i.ke = load atomic i8, ptr %i.kd monotonic, align 4, !noalias !39790
  %.not.i.i.not.i = icmp eq i8 %i.ke, 0
  br i1 %.not.i.i.not.i, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardbEINtBM_11PoisonErrorBH_EE6unwrapCskXtk6F4WjxZ_4just.exit.i, label %bb.al, !prof !29

bb.al:                                            ; preds = %_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexbE4lockCskXtk6F4WjxZ_4just.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !39791
  store ptr %i.ju, ptr %i.q, align 8, !noalias !39791
  %i.kf = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 %.sroa.01.0.i.i.i, ptr %i.kf, align 8, !noalias !39791
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @790, i64 noundef 43, ptr noundef nonnull %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @791, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @836) #71
          to label %bb.an unwind label %bb.am, !noalias !39792

bb.am:                                            ; preds = %bb.al
  %i.kg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardbEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.q) #72
          to label %.body unwind label %bb.ao, !noalias !39792

end_hunk_3
