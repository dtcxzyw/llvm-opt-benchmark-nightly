Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.05?download=true
inline.NumInlined: 982
inline.NumDeleted: 369
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3so_1__NtB5_15PriorityUpdatedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer:bb.a
  %i.f = load i64, ptr %i.e, align 8, !dbg !22187, !range !6280, !noundef !2798
  %.not84 = icmp eq i64 %i.f, -1, !dbg !22187
    #dbg_value(ptr %0, !22068, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22072)
    #dbg_value(ptr %0, !22073, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22077)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !22188 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !dbg !22188, !range !7478, !noundef !2798
  %.not85 = icmp eq i8 %i.h, -1, !dbg !22188
    #dbg_value(ptr %0, !22078, !DIExpression(DW_OP_plus_uconst, 81, DW_OP_stack_value), !22082)
    #dbg_value(ptr %0, !22083, !DIExpression(DW_OP_plus_uconst, 81, DW_OP_stack_value), !22087)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 81, !dbg !22189 ; 2 uses
  %i.j = load i8, ptr %i.i, align 1, !dbg !22189, !range !7485, !noundef !2798
  %.not86 = icmp eq i8 %i.j, -1, !dbg !22189
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22088), !dbg !22182
    #dbg_value(ptr %1, !7093, !DIExpression(), !21950)
    #dbg_value(ptr poison, !7107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21950)
    #dbg_value(i64 15, !7107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21950)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7108, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !21950)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22089), !dbg !22190
    #dbg_value(i64 1, !7131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21954)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !21954)
    #dbg_value(ptr %1, !7130, !DIExpression(), !21954)
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !22191, !alias.scope !22090, !noalias !22091, !nonnull !2798, !align !3706, !noundef !2798
    #dbg_value(ptr poison, !7140, !DIExpression(), !21958)
    #dbg_value(ptr poison, !7145, !DIExpression(), !21958)
    #dbg_value(ptr poison, !7150, !DIExpression(), !21960)
    #dbg_value(ptr @101, !7155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21960)
    #dbg_value(i64 1, !7155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21960)
    #dbg_value(ptr %.val.i.i, !7160, !DIExpression(), !21962)
    #dbg_value(ptr @101, !7166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21962)
    #dbg_value(i64 1, !7166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21962)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 1), !dbg !22192, !noalias !22092
    #dbg_value(ptr %1, !22017, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22093)
    #dbg_value(i8 1, !22017, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22093)
  store ptr %1, ptr %i.a, align 8, !dbg !22193
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22193 ; 2 uses
  store i8 1, ptr %i.k, align 8, !dbg !22193
    #dbg_value(ptr %0, !22043, !DIExpression(), !22096)
    #dbg_value(ptr %0, !22047, !DIExpression(), !22099)
  br i1 %.not, label %bb.c, label %bb.b, !dbg !22194

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !7200, !DIExpression(), !21964)
    #dbg_value(ptr @38, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21964)
    #dbg_value(i64 9, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21964)
    #dbg_value(ptr %0, !7204, !DIExpression(), !21964)
  %i.l = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !22195 ; 2 uses
    #dbg_value(ptr %i.l, !22100, !DIExpression(), !22126)
  %.not88 = icmp eq ptr %i.l, null, !dbg !22196
  br i1 %.not88, label %bb.c, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22197

bb.c:                                             ; preds = %bb.a, %bb.b
    #dbg_value(ptr %0, !22043, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22129)
    #dbg_value(ptr %0, !22047, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22132)
  br i1 %.not83, label %bb.e, label %bb.d, !dbg !22194

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !7200, !DIExpression(), !21989)
    #dbg_value(ptr @31, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21989)
    #dbg_value(i64 7, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21989)
    #dbg_value(ptr %i.c, !7204, !DIExpression(), !21989)
  %i.m = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !22198 ; 2 uses
    #dbg_value(ptr %i.m, !22100, !DIExpression(), !22135)
  %.not90 = icmp eq ptr %i.m, null, !dbg !22199
  br i1 %.not90, label %bb.e, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22200

bb.e:                                             ; preds = %bb.c, %bb.d
    #dbg_value(ptr %0, !22058, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !22138)
    #dbg_value(ptr %0, !22063, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value), !22141)
  br i1 %.not84, label %bb.g, label %bb.f, !dbg !22194

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.a, !7173, !DIExpression(), !21991)
    #dbg_value(ptr @69, !7177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21991)
    #dbg_value(i64 3, !7177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21991)
    #dbg_value(ptr %i.e, !7178, !DIExpression(), !21991)
  %i.n = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtBR_6string6StringEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e), !dbg !22201 ; 2 uses
    #dbg_value(ptr %i.n, !22100, !DIExpression(), !22144)
  %.not92 = icmp eq ptr %i.n, null, !dbg !22202
  br i1 %.not92, label %bb.g, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22203

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !22042
    #dbg_value(ptr %i.a, !7247, !DIExpression(), !21993)
    #dbg_value(ptr @70, !7250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21993)
    #dbg_value(i64 3, !7250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21993)
    #dbg_value(ptr %i.o, !7251, !DIExpression(), !21993)
  %i.p = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeNtNtBR_6string6StringECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o), !dbg !22204 ; 2 uses
    #dbg_value(ptr %i.p, !22100, !DIExpression(), !22147)
  %.not93 = icmp eq ptr %i.p, null, !dbg !22205
  br i1 %.not93, label %bb.h, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22206

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %0, !22068, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22150)
    #dbg_value(ptr %0, !22073, !DIExpression(DW_OP_plus_uconst, 80, DW_OP_stack_value), !22153)
  br i1 %.not85, label %bb.j, label %bb.i, !dbg !22194

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.a, !22154, !DIExpression(), !21996)
    #dbg_value(ptr @71, !22157, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21996)
    #dbg_value(i64 7, !22157, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21996)
    #dbg_value(ptr %i.g, !22158, !DIExpression(), !21996)
  %i.q = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs3JBf551F2Kj_4qlog6events5http322PriorityUpdatedTriggerEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.g), !dbg !22207 ; 2 uses
    #dbg_value(ptr %i.q, !22100, !DIExpression(), !22164)
  %.not95 = icmp eq ptr %i.q, null, !dbg !22208
  br i1 %.not95, label %bb.j, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22209

bb.j:                                             ; preds = %bb.h, %bb.i
    #dbg_value(ptr %0, !22078, !DIExpression(DW_OP_plus_uconst, 81, DW_OP_stack_value), !22167)
    #dbg_value(ptr %0, !22083, !DIExpression(DW_OP_plus_uconst, 81, DW_OP_stack_value), !22170)
  br i1 %.not86, label %bb.l, label %bb.k, !dbg !22194

bb.k:                                             ; preds = %bb.j
    #dbg_value(ptr %i.a, !22171, !DIExpression(), !21999)
    #dbg_value(ptr @72, !22174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21999)
    #dbg_value(i64 6, !22174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21999)
    #dbg_value(ptr %i.i, !22175, !DIExpression(), !21999)
  %i.r = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCs3JBf551F2Kj_4qlog6events5http321PriorityUpdatedReasonEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.i), !dbg !22210 ; 2 uses
    #dbg_value(ptr %i.r, !22100, !DIExpression(), !22181)
  %.not97 = icmp eq ptr %i.r, null, !dbg !22211
  br i1 %.not97, label %bb.l, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22212

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.s = load i8, ptr %i.k, align 8, !dbg !22042, !range !7181, !noundef !2798
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22001)
    #dbg_value(i8 %i.s, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22001)
    #dbg_value(ptr poison, !7186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22003)
    #dbg_value(i8 %i.s, !7186, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22003)
    #dbg_value(ptr poison, !7188, !DIExpression(), !22004)
    #dbg_value(i8 %i.s, !7189, !DIExpression(), !22004)
  %i.t = icmp eq i8 %i.s, 0, !dbg !22213
  br i1 %i.t, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.m, !dbg !22213

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr %i.a, align 8, !dbg !22042, !nonnull !2798, !align !3706, !noundef !2798
  %.val = load ptr, ptr %i.u, align 8, !dbg !22042, !nonnull !2798, !noundef !2798
    #dbg_value(ptr poison, !7168, !DIExpression(), !22006)
    #dbg_value(ptr poison, !7169, !DIExpression(), !22006)
    #dbg_value(ptr poison, !7150, !DIExpression(), !22008)
    #dbg_value(ptr @100, !7155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22008)
    #dbg_value(i64 1, !7155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22008)
    #dbg_value(ptr %.val, !7160, !DIExpression(), !22010)
    #dbg_value(ptr @100, !7166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22010)
    #dbg_value(i64 1, !7166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22010)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 1), !dbg !22214
  br label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22215

_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.m, %bb.l, %bb.b, %bb.d, %bb.f, %bb.g, %bb.i, %bb.k
  %.sroa.0.0 = phi ptr [ %i.p, %bb.g ], [ %i.r, %bb.k ], [ %i.q, %bb.i ], [ %i.l, %bb.b ], [ %i.m, %bb.d ], [ %i.n, %bb.f ], [ null, %bb.l ], [ null, %bb.m ], !dbg !22182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22216
  ret ptr %.sroa.0.0, !dbg !22217
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sp_1__NtB5_15PriorityUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 !dbg !22218 {
bb.a:
    #dbg_declare(ptr %1, !22221, !DIExpression(), !22223)
  tail call void @_RINvXsr_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sp_1__NtB39_15PriorityUpdatedNtB1Z_11Deserialize11deserialize9___VisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @73, i64 noundef 6), !dbg !22223
  ret void, !dbg !22224
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sp_1__NtB5_15PriorityUpdatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !22225 {
bb.a:
    #dbg_value(ptr %1, !22242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22244)
    #dbg_value(i64 %2, !22242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22245), !dbg !22263
    #dbg_value(ptr %1, !22246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22230)
    #dbg_value(i64 %2, !22246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22230)
    #dbg_value(ptr poison, !22249, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22230)
    #dbg_value(i64 15, !22249, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22230)
    #dbg_value(ptr poison, !22250, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22230)
    #dbg_value(i64 6, !22250, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22230)
    #dbg_declare(ptr poison, !22251, !DIExpression(), !22231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22255), !dbg !22264
    #dbg_value(ptr %1, !22256, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22236)
    #dbg_value(i64 %2, !22256, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22236)
    #dbg_declare(ptr poison, !22259, !DIExpression(), !22237)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error13missing_fieldCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22265, !noalias !22261
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22266
  store ptr %i.a, ptr %i.b, align 8, !dbg !22266, !alias.scope !22261, !noalias !22262
  store i64 2, ptr %0, align 8, !dbg !22266, !alias.scope !22261, !noalias !22262
  ret void, !dbg !22267
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sq_1__NtB5_12FrameCreatedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22283 {
bb.a:
    #dbg_declare(ptr poison, !22332, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !22337)
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !22318, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !22338)
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 12 uses
    #dbg_value(ptr %1, !22314, !DIExpression(), !22339)
    #dbg_declare(ptr poison, !22315, !DIExpression(), !22336)
    #dbg_declare(ptr %i.c, !22316, !DIExpression(), !22340)
    #dbg_declare(ptr %i.b, !22333, !DIExpression(), !22341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22336
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22336
    #dbg_value(ptr %1, !22342, !DIExpression(), !22345)
    #dbg_value(ptr %1, !22346, !DIExpression(), !22349)
  %i.d = load i64, ptr %1, align 8, !dbg !22416, !range !6917, !noundef !2798 ; 2 uses
  %.not = icmp eq i64 %i.d, 0, !dbg !22417
  %. = or disjoint i64 %i.d, 2, !dbg !22336
    #dbg_value(ptr %1, !22351, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22355)
    #dbg_value(ptr %1, !22356, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22360)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22418 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !22418, !range !7236, !noundef !2798
  %.not55 = icmp ne i64 %i.f, 2, !dbg !22418      ; 2 uses
  %.sroa.06.0 = zext i1 %.not55 to i64, !dbg !22344
  %i.g = add nuw nsw i64 %., %.sroa.06.0, !dbg !22336
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 12, i64 noundef %i.g), !dbg !22336
  %i.h = load i64, ptr %i.b, align 8, !dbg !22419, !range !6280, !noundef !2798 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1, !dbg !22419
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22420
  %i.k = load ptr, ptr %i.j, align 8, !dbg !22420 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !22421

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22422
    #dbg_value(ptr %i.k, !22317, !DIExpression(), !22361)
    #dbg_value(ptr %i.k, !22362, !DIExpression(), !22373)
    #dbg_value(ptr %i.k, !22363, !DIExpression(), !22374)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22423
  store ptr %i.k, ptr %i.l, align 8, !dbg !22423
  store i64 -1, ptr %0, align 8, !dbg !22423
  br label %bb.n, !dbg !22424

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.h, !22332, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22376)
    #dbg_value(ptr %i.k, !22332, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22376)
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22425
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.529.0..sroa_idx, i64 80, i1 false), !dbg !22425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22422
    #dbg_value(i64 %i.h, !22318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22377)
    #dbg_value(ptr %i.k, !22318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22377)
  store i64 %i.h, ptr %i.c, align 8, !dbg !22338
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22338
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22338
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !22340
  %i.n = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldyECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.d unwind label %bb.q, !dbg !22340 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.n, !22378, !DIExpression(), !22394)
  %.not56 = icmp eq ptr %i.n, null, !dbg !22426
  br i1 %.not56, label %bb.e, label %bb.o, !dbg !22427

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !22342, !DIExpression(), !22396)
    #dbg_value(ptr %1, !22346, !DIExpression(), !22399)
  br i1 %.not, label %bb.h, label %bb.f, !dbg !22428

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.g unwind label %bb.q, !dbg !22428 ; 2 uses

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.o, !22378, !DIExpression(), !22402)
  %.not58 = icmp eq ptr %i.o, null, !dbg !22429
  br i1 %.not58, label %bb.h, label %bb.o, !dbg !22430

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !22340
  %i.q = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs3JBf551F2Kj_4qlog6events5http310Http3FrameECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p)
          to label %bb.i unwind label %bb.q, !dbg !22340 ; 2 uses

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.q, !22378, !DIExpression(), !22405)
  %.not59 = icmp eq ptr %i.q, null, !dbg !22431
  br i1 %.not59, label %bb.j, label %bb.o, !dbg !22432

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %1, !22351, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22408)
    #dbg_value(ptr %1, !22356, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22411)
  br i1 %.not55, label %bb.k, label %bb.m, !dbg !22428

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs3JBf551F2Kj_4qlog6events7RawInfoEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.l unwind label %bb.q, !dbg !22428 ; 2 uses

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.r, !22378, !DIExpression(), !22414)
  %.not61 = icmp eq ptr %i.r, null, !dbg !22433
  br i1 %.not61, label %bb.m, label %bb.o, !dbg !22434

bb.m:                                             ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22340
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !22340
  call void @_RNvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a), !dbg !22340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22435
  br label %bb.n, !dbg !22422

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22422
  ret void, !dbg !22436

bb.o:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.d
  %.sink = phi ptr [ %i.q, %bb.i ], [ %i.n, %bb.d ], [ %i.o, %bb.g ], [ %i.r, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22437
  store ptr %.sink, ptr %i.s, align 8, !dbg !22437
  store i64 -1, ptr %0, align 8, !dbg !22437
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c), !dbg !22422
  br label %bb.n, !dbg !22422

bb.p:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm, !dbg !22336

bb.q:                                             ; preds = %bb.f, %bb.k, %bb.h, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #16
          to label %bb.p unwind label %bb.r, !dbg !22422

bb.r:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !22336
  unreachable, !dbg !22336
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sq_1__NtB5_12FrameCreatedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22453 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
    #dbg_value(ptr %0, !22508, !DIExpression(), !22526)
    #dbg_value(ptr %1, !22509, !DIExpression(), !22526)
    #dbg_declare(ptr %i.a, !22510, !DIExpression(), !22527)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22590
    #dbg_value(ptr %0, !22528, !DIExpression(), !22531)
    #dbg_value(ptr %0, !22532, !DIExpression(), !22535)
  %i.b = load i64, ptr %0, align 8, !dbg !22591, !range !6917, !noundef !2798
    #dbg_value(ptr %0, !22536, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22540)
    #dbg_value(ptr %0, !22541, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22545)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22592 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !22592, !range !7236, !noundef !2798
  %.not50 = icmp eq i64 %i.d, 2, !dbg !22592
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22546), !dbg !22590
    #dbg_value(ptr %1, !7093, !DIExpression(), !22461)
    #dbg_value(ptr poison, !7107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22461)
    #dbg_value(i64 12, !7107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22461)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7108, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !22461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22547), !dbg !22593
    #dbg_value(i64 1, !7131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22465)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22465)
    #dbg_value(ptr %1, !7130, !DIExpression(), !22465)
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !22594, !alias.scope !22548, !noalias !22549, !nonnull !2798, !align !3706, !noundef !2798
    #dbg_value(ptr poison, !7140, !DIExpression(), !22469)
    #dbg_value(ptr poison, !7145, !DIExpression(), !22469)
    #dbg_value(ptr poison, !7150, !DIExpression(), !22471)
    #dbg_value(ptr @101, !7155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22471)
    #dbg_value(i64 1, !7155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22471)
    #dbg_value(ptr %.val.i.i, !7160, !DIExpression(), !22473)
    #dbg_value(ptr @101, !7166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22473)
    #dbg_value(i64 1, !7166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22473)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 1), !dbg !22595, !noalias !22550
    #dbg_value(ptr %1, !22512, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22551)
    #dbg_value(i8 1, !22512, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22551)
  store ptr %1, ptr %i.a, align 8, !dbg !22596
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22596 ; 2 uses
  store i8 1, ptr %i.e, align 8, !dbg !22596
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !22527
    #dbg_value(ptr %i.a, !7208, !DIExpression(), !22475)
    #dbg_value(ptr @38, !7211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22475)
    #dbg_value(i64 9, !7211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22475)
    #dbg_value(ptr %i.f, !7212, !DIExpression(), !22475)
  %i.g = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeyECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !dbg !22597 ; 2 uses
    #dbg_value(ptr %i.g, !22552, !DIExpression(), !22568)
  %.not51 = icmp eq ptr %i.g, null, !dbg !22598
  br i1 %.not51, label %bb.b, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22599

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0, !dbg !22600
    #dbg_value(ptr %0, !22528, !DIExpression(), !22571)
    #dbg_value(ptr %0, !22532, !DIExpression(), !22574)
  br i1 %.not, label %bb.d, label %bb.c, !dbg !22601

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.a, !7200, !DIExpression(), !22490)
    #dbg_value(ptr @75, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22490)
    #dbg_value(i64 6, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22490)
    #dbg_value(ptr %0, !7204, !DIExpression(), !22490)
  %i.h = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !22602 ; 2 uses
    #dbg_value(ptr %i.h, !22552, !DIExpression(), !22577)
  %.not53 = icmp eq ptr %i.h, null, !dbg !22603
  br i1 %.not53, label %bb.d, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22604

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22527
    #dbg_value(ptr %i.a, !7507, !DIExpression(), !22492)
    #dbg_value(ptr @76, !7510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22492)
    #dbg_value(i64 5, !7510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22492)
    #dbg_value(ptr %i.i, !7511, !DIExpression(), !22492)
  %i.j = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs3JBf551F2Kj_4qlog6events5http310Http3FrameECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i), !dbg !22605 ; 2 uses
    #dbg_value(ptr %i.j, !22552, !DIExpression(), !22580)
  %.not54 = icmp eq ptr %i.j, null, !dbg !22606
  br i1 %.not54, label %bb.e, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22607

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !22536, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22583)
    #dbg_value(ptr %0, !22541, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22586)
  br i1 %.not50, label %bb.g, label %bb.f, !dbg !22601

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.a, !7237, !DIExpression(), !22494)
    #dbg_value(ptr @28, !7240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22494)
    #dbg_value(i64 3, !7240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22494)
    #dbg_value(ptr %i.c, !7241, !DIExpression(), !22494)
  %i.k = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs3JBf551F2Kj_4qlog6events7RawInfoEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c), !dbg !22608 ; 2 uses
    #dbg_value(ptr %i.k, !22552, !DIExpression(), !22589)
  %.not56 = icmp eq ptr %i.k, null, !dbg !22609
  br i1 %.not56, label %bb.g, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22610

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = load i8, ptr %i.e, align 8, !dbg !22527, !range !7181, !noundef !2798
    #dbg_value(ptr poison, !7182, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22496)
    #dbg_value(i8 %i.l, !7182, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22496)
    #dbg_value(ptr poison, !7186, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22498)
    #dbg_value(i8 %i.l, !7186, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22498)
    #dbg_value(ptr poison, !7188, !DIExpression(), !22499)
    #dbg_value(i8 %i.l, !7189, !DIExpression(), !22499)
  %i.m = icmp eq i8 %i.l, 0, !dbg !22611
  br i1 %i.m, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.h, !dbg !22611

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.a, align 8, !dbg !22527, !nonnull !2798, !align !3706, !noundef !2798
  %.val = load ptr, ptr %i.n, align 8, !dbg !22527, !nonnull !2798, !noundef !2798
    #dbg_value(ptr poison, !7168, !DIExpression(), !22501)
    #dbg_value(ptr poison, !7169, !DIExpression(), !22501)
    #dbg_value(ptr poison, !7150, !DIExpression(), !22503)
    #dbg_value(ptr @100, !7155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22503)
    #dbg_value(i64 1, !7155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22503)
    #dbg_value(ptr %.val, !7160, !DIExpression(), !22505)
    #dbg_value(ptr @100, !7166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22505)
    #dbg_value(i64 1, !7166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22505)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @100, i64 noundef 1), !dbg !22612
  br label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22613

_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.h, %bb.g, %bb.a, %bb.c, %bb.d, %bb.f
  %.sroa.0.0 = phi ptr [ %i.h, %bb.c ], [ %i.k, %bb.f ], [ %i.j, %bb.d ], [ %i.g, %bb.a ], [ null, %bb.g ], [ null, %bb.h ], !dbg !22590
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22614
  ret ptr %.sroa.0.0, !dbg !22615
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sr_1__NtB5_12FrameCreatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #1 !dbg !22616 {
bb.a:
    #dbg_declare(ptr %1, !22619, !DIExpression(), !22621)
  tail call void @_RINvXsr_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentINtB6_19ContentDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sr_1__NtB39_12FrameCreatedNtB1Z_11Deserialize11deserialize9___VisitorECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @77, i64 noundef 4), !dbg !22621
  ret void, !dbg !22622
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3sr_1__NtB5_12FrameCreatedNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_field24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !22623 {
bb.a:
    #dbg_value(ptr %1, !22640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22642)
    #dbg_value(i64 %2, !22640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22643), !dbg !22661
    #dbg_value(ptr %1, !22644, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22628)
    #dbg_value(i64 %2, !22644, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22628)
    #dbg_value(ptr poison, !22647, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22628)
    #dbg_value(i64 12, !22647, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22628)
    #dbg_value(ptr poison, !22648, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22628)
    #dbg_value(i64 4, !22648, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22628)
    #dbg_declare(ptr poison, !22649, !DIExpression(), !22629)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22653), !dbg !22662
    #dbg_value(ptr %1, !22654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22634)
    #dbg_value(i64 %2, !22654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22634)
    #dbg_declare(ptr poison, !22657, !DIExpression(), !22635)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error13missing_fieldCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !22663, !noalias !22659
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22664
  store ptr %i.a, ptr %i.b, align 8, !dbg !22664, !alias.scope !22659, !noalias !22660
  store i64 2, ptr %0, align 8, !dbg !22664, !alias.scope !22659, !noalias !22660
  ret void, !dbg !22665
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3ss_1__NtB5_11FrameParsedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeNtNtNtCsenfyI6F4F2A_10serde_json5value3ser10SerializerECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22681 {
bb.a:
    #dbg_declare(ptr poison, !22730, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !22735)
  %i.a = alloca [96 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !22716, !DIExpression(DW_OP_LLVM_fragment, 128, 640), !22736)
  %i.b = alloca [96 x i8], align 8                ; 7 uses
  %i.c = alloca [96 x i8], align 8                ; 12 uses
    #dbg_value(ptr %1, !22712, !DIExpression(), !22737)
    #dbg_declare(ptr poison, !22713, !DIExpression(), !22734)
    #dbg_declare(ptr %i.c, !22714, !DIExpression(), !22738)
    #dbg_declare(ptr %i.b, !22731, !DIExpression(), !22739)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22734
    #dbg_value(ptr %1, !22740, !DIExpression(), !22743)
    #dbg_value(ptr %1, !22744, !DIExpression(), !22747)
  %i.d = load i64, ptr %1, align 8, !dbg !22814, !range !6917, !noundef !2798 ; 2 uses
  %.not = icmp eq i64 %i.d, 0, !dbg !22815
  %. = or disjoint i64 %i.d, 2, !dbg !22734
    #dbg_value(ptr %1, !22749, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22753)
    #dbg_value(ptr %1, !22754, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22758)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22816 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !22816, !range !7236, !noundef !2798
  %.not55 = icmp ne i64 %i.f, 2, !dbg !22816      ; 2 uses
  %.sroa.06.0 = zext i1 %.not55 to i64, !dbg !22742
  %i.g = add nuw nsw i64 %., %.sroa.06.0, !dbg !22734
  call void @_RNvXs_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB4_10SerializerNtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer16serialize_struct(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 11, i64 noundef %i.g), !dbg !22734
  %i.h = load i64, ptr %i.b, align 8, !dbg !22817, !range !6280, !noundef !2798 ; 2 uses
  %i.i = icmp eq i64 %i.h, -1, !dbg !22817
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22818
  %i.k = load ptr, ptr %i.j, align 8, !dbg !22818 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !22819

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22820
    #dbg_value(ptr %i.k, !22715, !DIExpression(), !22759)
    #dbg_value(ptr %i.k, !22760, !DIExpression(), !22771)
    #dbg_value(ptr %i.k, !22761, !DIExpression(), !22772)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22821
  store ptr %i.k, ptr %i.l, align 8, !dbg !22821
  store i64 -1, ptr %0, align 8, !dbg !22821
  br label %bb.n, !dbg !22822

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 %i.h, !22730, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22774)
    #dbg_value(ptr %i.k, !22730, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22774)
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22823
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22736
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.529.0..sroa_idx, i64 80, i1 false), !dbg !22823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22820
    #dbg_value(i64 %i.h, !22716, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22775)
    #dbg_value(ptr %i.k, !22716, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22775)
  store i64 %i.h, ptr %i.c, align 8, !dbg !22736
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22736
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !22736
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 152, !dbg !22738
  %i.n = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldyECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m)
          to label %bb.d unwind label %bb.q, !dbg !22738 ; 2 uses

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.n, !22776, !DIExpression(), !22792)
  %.not56 = icmp eq ptr %i.n, null, !dbg !22824
  br i1 %.not56, label %bb.e, label %bb.o, !dbg !22825

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !22740, !DIExpression(), !22794)
    #dbg_value(ptr %1, !22744, !DIExpression(), !22797)
  br i1 %.not, label %bb.h, label %bb.f, !dbg !22826

bb.f:                                             ; preds = %bb.e
  %i.o = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
          to label %bb.g unwind label %bb.q, !dbg !22826 ; 2 uses

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.o, !22776, !DIExpression(), !22800)
  %.not58 = icmp eq ptr %i.o, null, !dbg !22827
  br i1 %.not58, label %bb.h, label %bb.o, !dbg !22828

bb.h:                                             ; preds = %bb.e, %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !22738
  %i.q = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldNtNtNtCs3JBf551F2Kj_4qlog6events5http310Http3FrameECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.p)
          to label %bb.i unwind label %bb.q, !dbg !22738 ; 2 uses

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.q, !22776, !DIExpression(), !22803)
  %.not59 = icmp eq ptr %i.q, null, !dbg !22829
  br i1 %.not59, label %bb.j, label %bb.o, !dbg !22830

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %1, !22749, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22806)
    #dbg_value(ptr %1, !22754, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22809)
  br i1 %.not55, label %bb.k, label %bb.m, !dbg !22826

bb.k:                                             ; preds = %bb.j
  %i.r = invoke noundef align 8 ptr @_RINvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB6_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct15serialize_fieldINtNtCskKLDkoKarTP_4core6option6OptionNtNtCs3JBf551F2Kj_4qlog6events7RawInfoEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.e)
          to label %bb.l unwind label %bb.q, !dbg !22826 ; 2 uses

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.r, !22776, !DIExpression(), !22812)
  %.not61 = icmp eq ptr %i.r, null, !dbg !22831
  br i1 %.not61, label %bb.m, label %bb.o, !dbg !22832

bb.m:                                             ; preds = %bb.j, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %i.c, i64 96, i1 false), !dbg !22738
  call void @_RNvXs6_NtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_12SerializeMapNtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3end(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(96) %i.a), !dbg !22738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22833
  br label %bb.n, !dbg !22820

bb.n:                                             ; preds = %bb.b, %bb.o, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22820
  ret void, !dbg !22834

bb.o:                                             ; preds = %bb.l, %bb.i, %bb.g, %bb.d
  %.sink = phi ptr [ %i.q, %bb.i ], [ %i.n, %bb.d ], [ %i.o, %bb.g ], [ %i.r, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22835
  store ptr %.sink, ptr %i.s, align 8, !dbg !22835
  store i64 -1, ptr %0, align 8, !dbg !22835
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c), !dbg !22820
  br label %bb.n, !dbg !22820

bb.p:                                             ; preds = %bb.q
  resume { ptr, i32 } %lpad.thr_comm, !dbg !22734

bb.q:                                             ; preds = %bb.f, %bb.k, %bb.h, %bb.c
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsenfyI6F4F2A_10serde_json5value3ser12SerializeMapECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 dereferenceable(96) %i.c) #16
          to label %bb.p unwind label %bb.r, !dbg !22820

bb.r:                                             ; preds = %bb.q
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !22734
  unreachable, !dbg !22734
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXNvNtNtCs3JBf551F2Kj_4qlog6events5http3ss_1__NtB5_11FrameParsedNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !22851 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
    #dbg_value(ptr %0, !22906, !DIExpression(), !22924)
    #dbg_value(ptr %1, !22907, !DIExpression(), !22924)
    #dbg_declare(ptr %i.a, !22908, !DIExpression(), !22925)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22988
    #dbg_value(ptr %0, !22926, !DIExpression(), !22929)
    #dbg_value(ptr %0, !22930, !DIExpression(), !22933)
  %i.b = load i64, ptr %0, align 8, !dbg !22989, !range !6917, !noundef !2798
    #dbg_value(ptr %0, !22934, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22938)
    #dbg_value(ptr %0, !22939, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22943)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22990 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !22990, !range !7236, !noundef !2798
  %.not50 = icmp eq i64 %i.d, 2, !dbg !22990
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22944), !dbg !22988
    #dbg_value(ptr %1, !7093, !DIExpression(), !22859)
    #dbg_value(ptr poison, !7107, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22859)
    #dbg_value(i64 11, !7107, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22859)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7108, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value), !22859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22945), !dbg !22991
    #dbg_value(i64 1, !7131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22863)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !7131, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !22863)
    #dbg_value(ptr %1, !7130, !DIExpression(), !22863)
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !22992, !alias.scope !22946, !noalias !22947, !nonnull !2798, !align !3706, !noundef !2798
    #dbg_value(ptr poison, !7140, !DIExpression(), !22867)
    #dbg_value(ptr poison, !7145, !DIExpression(), !22867)
    #dbg_value(ptr poison, !7150, !DIExpression(), !22869)
    #dbg_value(ptr @101, !7155, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22869)
    #dbg_value(i64 1, !7155, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22869)
    #dbg_value(ptr %.val.i.i, !7160, !DIExpression(), !22871)
    #dbg_value(ptr @101, !7166, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22871)
    #dbg_value(i64 1, !7166, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22871)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 1), !dbg !22993, !noalias !22948
    #dbg_value(ptr %1, !22910, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22949)
    #dbg_value(i8 1, !22910, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !22949)
  store ptr %1, ptr %i.a, align 8, !dbg !22994
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22994 ; 2 uses
  store i8 1, ptr %i.e, align 8, !dbg !22994
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152, !dbg !22925
    #dbg_value(ptr %i.a, !7208, !DIExpression(), !22873)
    #dbg_value(ptr @38, !7211, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22873)
    #dbg_value(i64 9, !7211, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22873)
    #dbg_value(ptr %i.f, !7212, !DIExpression(), !22873)
  %i.g = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeyECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f), !dbg !22995 ; 2 uses
    #dbg_value(ptr %i.g, !22950, !DIExpression(), !22966)
  %.not51 = icmp eq ptr %i.g, null, !dbg !22996
  br i1 %.not51, label %bb.b, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !22997

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %i.b, 0, !dbg !22998
    #dbg_value(ptr %0, !22926, !DIExpression(), !22969)
    #dbg_value(ptr %0, !22930, !DIExpression(), !22972)
  br i1 %.not, label %bb.d, label %bb.c, !dbg !22999

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr %i.a, !7200, !DIExpression(), !22888)
    #dbg_value(ptr @75, !7203, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22888)
    #dbg_value(i64 6, !7203, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22888)
    #dbg_value(ptr %0, !7204, !DIExpression(), !22888)
  %i.h = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeINtNtCskKLDkoKarTP_4core6option6OptionyEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @75, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !23000 ; 2 uses
    #dbg_value(ptr %i.h, !22950, !DIExpression(), !22975)
  %.not53 = icmp eq ptr %i.h, null, !dbg !23001
  br i1 %.not53, label %bb.d, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23002

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !22925
    #dbg_value(ptr %i.a, !7507, !DIExpression(), !22890)
    #dbg_value(ptr @76, !7510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22890)
    #dbg_value(i64 5, !7510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22890)
    #dbg_value(ptr %i.i, !7511, !DIExpression(), !22890)
  %i.j = call noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeNtNtNtCs3JBf551F2Kj_4qlog6events5http310Http3FrameECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @76, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.i), !dbg !23003 ; 2 uses
    #dbg_value(ptr %i.j, !22950, !DIExpression(), !22978)
  %.not54 = icmp eq ptr %i.j, null, !dbg !23004
  br i1 %.not54, label %bb.e, label %_RNvXs7_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser15SerializeStruct3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !23005

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %0, !22934, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22981)
    #dbg_value(ptr %0, !22939, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22984)
  br i1 %.not50, label %bb.g, label %bb.f, !dbg !22999

end_hunk_0
