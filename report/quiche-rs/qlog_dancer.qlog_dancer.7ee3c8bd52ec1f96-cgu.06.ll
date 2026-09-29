Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/qlog_dancer.qlog_dancer.7ee3c8bd52ec1f96-cgu.06?download=true
inline.NumInlined: 1777
inline.NumDeleted: 892
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryetECsaTqK2fWTXJW_11qlog_dancer:bb.a
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49957)
    #dbg_value(ptr %.val.i, !2528, !DIExpression(), !49959)
    #dbg_value(ptr @58, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49959)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49959)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !50041, !noalias !50024
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50042

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !dbg !50043, !alias.scope !50022, !noalias !50023
    #dbg_value(ptr %1, !6771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49961)
    #dbg_value(i64 %2, !6771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49961)
    #dbg_value(ptr %i.b, !6774, !DIExpression(), !49961)
    #dbg_value(ptr %i.b, !6384, !DIExpression(), !49963)
    #dbg_value(ptr %1, !6388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49963)
    #dbg_value(i64 %2, !6388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49963)
    #dbg_value(ptr %i.b, !6044, !DIExpression(), !49965)
    #dbg_value(ptr %1, !6047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49965)
    #dbg_value(i64 %2, !6047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49965)
  %i.f = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !50044, !noalias !50022 ; 0 uses
  %.val7 = load i16, ptr %3, align 2, !dbg !50045
    #dbg_value(ptr poison, !50025, !DIExpression(), !49973)
    #dbg_value(ptr poison, !50028, !DIExpression(), !49973)
    #dbg_value(ptr poison, !50029, !DIExpression(), !49974)
  %.val.i8 = load ptr, ptr %i.b, align 8, !dbg !50046, !nonnull !2067, !align !2511, !noundef !2067
    #dbg_value(ptr poison, !6390, !DIExpression(), !49976)
    #dbg_value(ptr poison, !6391, !DIExpression(), !49976)
    #dbg_value(ptr poison, !2518, !DIExpression(), !49978)
    #dbg_value(ptr @59, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49978)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49978)
    #dbg_value(ptr %.val.i8, !2528, !DIExpression(), !49980)
    #dbg_value(ptr @59, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49980)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49980)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !50047
  %.val15.i = load ptr, ptr %i.b, align 8, !dbg !50048 ; 2 uses
    #dbg_value(ptr poison, !7448, !DIExpression(), !49982)
    #dbg_value(ptr poison, !7451, !DIExpression(), !49982)
    #dbg_value(ptr poison, !7453, !DIExpression(), !49984)
    #dbg_value(i16 %.val7, !7456, !DIExpression(), !49984)
    #dbg_value(ptr poison, !7458, !DIExpression(), !49986)
    #dbg_value(ptr poison, !7461, !DIExpression(), !49986)
    #dbg_value(i16 %.val7, !7462, !DIExpression(), !49986)
    #dbg_value(i16 %.val7, !7466, !DIExpression(), !49988)
    #dbg_value(i16 %.val7, !7480, !DIExpression(), !49990)
    #dbg_declare(ptr %i.a, !7463, !DIExpression(), !49991)
    #dbg_value(i64 5, !7488, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49996)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50049
    #dbg_value(ptr %i.a, !7472, !DIExpression(), !49997)
    #dbg_value(ptr %i.a, !7477, !DIExpression(), !49998)
    #dbg_value(ptr %i.a, !7485, !DIExpression(), !49990)
  %i.g = call noundef i64 @_RNvXss_Cs81LOaKauIia_4itoatNtB5_8Unsigned3fmt(i16 noundef %.val7, ptr noalias nofree noundef nonnull dereferenceable(5) %i.a), !dbg !50050 ; 2 uses
    #dbg_value(i64 %i.g, !7486, !DIExpression(), !49999)
    #dbg_value(i64 %i.g, !7499, !DIExpression(), !50000)
    #dbg_value(i64 %i.g, !7496, !DIExpression(), !50001)
    #dbg_value(i64 %i.g, !7492, !DIExpression(), !50002)
    #dbg_value(i64 %i.g, !7488, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49996)
    #dbg_value(i64 %i.g, !7502, !DIExpression(), !50004)
    #dbg_value(ptr %i.a, !7498, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50000)
    #dbg_value(ptr %i.a, !7495, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50001)
    #dbg_value(ptr %i.a, !7493, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50002)
    #dbg_value(ptr %i.a, !7489, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !49996)
    #dbg_value(ptr %i.a, !7503, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50004)
    #dbg_value(i64 5, !7498, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50000)
    #dbg_value(i64 5, !7495, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50001)
    #dbg_value(i64 5, !7493, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50002)
    #dbg_value(i64 5, !7489, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !49996)
    #dbg_value(i64 5, !7503, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50004)
  %i.h = sub nuw i64 5, %i.g, !dbg !50051
    #dbg_value(i64 %i.h, !7490, !DIExpression(), !50005)
    #dbg_value(i64 %i.h, !7504, !DIExpression(), !50004)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g, !dbg !50052
    #dbg_value(ptr %i.i, !7464, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50006)
    #dbg_value(i64 %i.h, !7464, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50006)
    #dbg_value(ptr poison, !2518, !DIExpression(), !50008)
    #dbg_value(ptr %i.i, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50008)
    #dbg_value(i64 %i.h, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50008)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
    #dbg_value(ptr %.val15.i, !2528, !DIExpression(), !50010)
    #dbg_value(ptr %i.i, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50010)
    #dbg_value(i64 %i.h, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50010)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val15.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !dbg !50053
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50054
  ret ptr null, !dbg !50055
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap15serialize_entryeyECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #0 !dbg !50058 {
bb.a:
  %i.a = alloca [40 x i8], align 1                ; 4 uses
    #dbg_value(ptr %0, !50130, !DIExpression(), !50137)
    #dbg_value(ptr %1, !50131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50137)
    #dbg_value(i64 %2, !50131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50137)
    #dbg_value(ptr %3, !50132, !DIExpression(), !50137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50138), !dbg !50151
    #dbg_value(ptr %0, !6739, !DIExpression(), !50062)
    #dbg_value(ptr %1, !6740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50062)
    #dbg_value(i64 %2, !6740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50062)
    #dbg_value(ptr poison, !7207, !DIExpression(), !50064)
    #dbg_value(i64 1, !7210, !DIExpression(), !50065)
    #dbg_value(ptr %0, !6736, !DIExpression(), !50066)
    #dbg_value(ptr %0, !6741, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !50067)
    #dbg_value(ptr %0, !7208, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !50068)
  %i.b = load ptr, ptr %0, align 8, !dbg !50152, !alias.scope !50138, !noalias !50139, !nonnull !2067, !align !2511, !noundef !2067 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50153 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8, !dbg !50153, !range !3266, !alias.scope !50138, !noalias !50139, !noundef !2067
    #dbg_value(i8 %i.d, !7209, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !50070)
  %i.e = icmp eq i8 %i.d, 1, !dbg !50154
    #dbg_value(ptr poison, !6371, !DIExpression(), !50072)
    #dbg_value(ptr poison, !6372, !DIExpression(), !50072)
    #dbg_value(i1 %i.e, !6373, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50072)
  br i1 %i.e, label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.b, !dbg !50155

bb.b:                                             ; preds = %bb.a
  %.val.i = load ptr, ptr %i.b, align 8, !dbg !50156, !noalias !50140, !nonnull !2067, !noundef !2067
    #dbg_value(ptr poison, !2518, !DIExpression(), !50074)
    #dbg_value(ptr @58, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50074)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50074)
    #dbg_value(ptr %.val.i, !2528, !DIExpression(), !50076)
    #dbg_value(ptr @58, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50076)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50076)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !50157, !noalias !50140
  br label %_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50158

_RINvXs6_NtCsenfyI6F4F2A_10serde_json3serINtB6_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeMap13serialize_keyeECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.a, %bb.b
  store i8 2, ptr %i.c, align 8, !dbg !50159, !alias.scope !50138, !noalias !50139
    #dbg_value(ptr %1, !6771, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50078)
    #dbg_value(i64 %2, !6771, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50078)
    #dbg_value(ptr %i.b, !6774, !DIExpression(), !50078)
    #dbg_value(ptr %i.b, !6384, !DIExpression(), !50080)
    #dbg_value(ptr %1, !6388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50080)
    #dbg_value(i64 %2, !6388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50080)
    #dbg_value(ptr %i.b, !6044, !DIExpression(), !50082)
    #dbg_value(ptr %1, !6047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50082)
    #dbg_value(i64 %2, !6047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50082)
  %i.f = tail call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !50160, !noalias !50138 ; 0 uses
  %.val7 = load i64, ptr %3, align 8, !dbg !50161
    #dbg_value(ptr poison, !50141, !DIExpression(), !50090)
    #dbg_value(ptr poison, !50144, !DIExpression(), !50090)
    #dbg_value(ptr poison, !50145, !DIExpression(), !50091)
  %.val.i8 = load ptr, ptr %i.b, align 8, !dbg !50162, !nonnull !2067, !align !2511, !noundef !2067
    #dbg_value(ptr poison, !6390, !DIExpression(), !50093)
    #dbg_value(ptr poison, !6391, !DIExpression(), !50093)
    #dbg_value(ptr poison, !2518, !DIExpression(), !50095)
    #dbg_value(ptr @59, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50095)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50095)
    #dbg_value(ptr %.val.i8, !2528, !DIExpression(), !50097)
    #dbg_value(ptr @59, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50097)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50097)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !50163
  %.val15.i = load ptr, ptr %i.b, align 8, !dbg !50164 ; 2 uses
    #dbg_value(ptr poison, !7424, !DIExpression(), !50099)
    #dbg_value(ptr poison, !7427, !DIExpression(), !50099)
    #dbg_value(ptr poison, !6990, !DIExpression(), !50101)
    #dbg_value(i64 %.val7, !6993, !DIExpression(), !50101)
    #dbg_value(ptr poison, !6995, !DIExpression(), !50103)
    #dbg_value(ptr poison, !6998, !DIExpression(), !50103)
    #dbg_value(i64 %.val7, !6999, !DIExpression(), !50103)
    #dbg_value(i64 %.val7, !7010, !DIExpression(), !50105)
    #dbg_value(i64 %.val7, !7025, !DIExpression(), !50107)
    #dbg_declare(ptr %i.a, !7000, !DIExpression(), !50108)
    #dbg_value(i64 20, !7034, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50113)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50165
    #dbg_value(ptr %i.a, !7017, !DIExpression(), !50114)
    #dbg_value(ptr %i.a, !7022, !DIExpression(), !50115)
    #dbg_value(ptr %i.a, !7030, !DIExpression(), !50107)
  %i.g = call noundef i64 @_RNvXsu_Cs81LOaKauIia_4itoayNtB5_8Unsigned3fmt(i64 noundef %.val7, ptr noalias nofree noundef nonnull dereferenceable(20) %i.a), !dbg !50166 ; 2 uses
    #dbg_value(i64 %i.g, !7031, !DIExpression(), !50116)
    #dbg_value(i64 %i.g, !7068, !DIExpression(), !50117)
    #dbg_value(i64 %i.g, !7061, !DIExpression(), !50118)
    #dbg_value(i64 %i.g, !7055, !DIExpression(), !50119)
    #dbg_value(i64 %i.g, !7034, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50113)
    #dbg_value(i64 %i.g, !7071, !DIExpression(), !50121)
    #dbg_value(ptr %i.a, !7067, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50117)
    #dbg_value(ptr %i.a, !7060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50118)
    #dbg_value(ptr %i.a, !7056, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50119)
    #dbg_value(ptr %i.a, !7042, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50113)
    #dbg_value(ptr %i.a, !7074, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50121)
    #dbg_value(i64 20, !7067, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50117)
    #dbg_value(i64 20, !7060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50118)
    #dbg_value(i64 20, !7056, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50119)
    #dbg_value(i64 20, !7042, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50113)
    #dbg_value(i64 20, !7074, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50121)
  %i.h = sub nuw i64 20, %i.g, !dbg !50167
    #dbg_value(i64 %i.h, !7043, !DIExpression(), !50122)
    #dbg_value(i64 %i.h, !7075, !DIExpression(), !50121)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g, !dbg !50168
    #dbg_value(ptr %i.i, !7001, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50123)
    #dbg_value(i64 %i.h, !7001, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50123)
    #dbg_value(ptr poison, !2518, !DIExpression(), !50125)
    #dbg_value(ptr %i.i, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50125)
    #dbg_value(i64 %i.h, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50125)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val15.i) ]
    #dbg_value(ptr %.val15.i, !2528, !DIExpression(), !50127)
    #dbg_value(ptr %i.i, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50127)
    #dbg_value(i64 %i.h, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50127)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val15.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !dbg !50169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50170
  ret ptr null, !dbg !50171
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtCsenfyI6F4F2A_10serde_json3ser8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB12_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapRNtNtB1N_6string6StringRNtNtB14_5value5ValueRINtNtNtNtB1N_11collections5btree3map8BTreeMapB3F_B42_EECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !50180 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 13 uses
    #dbg_value(ptr %0, !50297, !DIExpression(), !50310)
    #dbg_value(ptr %1, !50298, !DIExpression(), !50310)
    #dbg_declare(ptr %i.a, !50299, !DIExpression(), !50311)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50312), !dbg !50417
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50313), !dbg !50417
    #dbg_value(ptr %1, !7574, !DIExpression(), !50185)
    #dbg_value(ptr %1, !7579, !DIExpression(), !50187)
  %i.b = load ptr, ptr %1, align 8, !dbg !50418, !alias.scope !50313, !noalias !50312, !noundef !2067 ; 3 uses
  %.not.i = icmp eq ptr %i.b, null, !dbg !50418
  br i1 %.not.i, label %.peel.begin, label %bb.b, !dbg !50419

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50418
    #dbg_value(ptr %1, !7582, !DIExpression(), !50188)
    #dbg_value(ptr %1, !7586, !DIExpression(), !50190)
  %i.d = load i64, ptr %i.c, align 8, !dbg !50420, !alias.scope !50313, !noalias !50312, !noundef !2067 ; 2 uses
    #dbg_value(i64 1, !7583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50191)
    #dbg_value(ptr null, !7583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50191)
    #dbg_value(ptr %i.b, !7583, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !50191)
    #dbg_value(i64 %i.d, !7583, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !50191)
    #dbg_value(i64 1, !7583, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !50191)
    #dbg_value(ptr null, !7583, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !50191)
    #dbg_value(ptr %i.b, !7583, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !50191)
    #dbg_value(i64 %i.d, !7583, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !50191)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50421
  %i.f = load i64, ptr %i.e, align 8, !dbg !50421, !alias.scope !50313, !noalias !50312, !noundef !2067
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !50422
  store ptr null, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !50422, !alias.scope !50312, !noalias !50313
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !50422
  store ptr %i.b, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !50422, !alias.scope !50312, !noalias !50313
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !50422
  store i64 %i.d, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !dbg !50422, !alias.scope !50312, !noalias !50313
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !50422
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !50422, !alias.scope !50312, !noalias !50313
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48, !dbg !50422
  store ptr %i.b, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !dbg !50422, !alias.scope !50312, !noalias !50313
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56, !dbg !50422
  store i64 %i.d, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !dbg !50422, !alias.scope !50312, !noalias !50313
  br label %.peel.begin, !dbg !50423

.peel.begin:                                      ; preds = %bb.a, %bb.b
  %.sink21.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ], !dbg !50424 ; 2 uses
  %.sink.i = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ], !dbg !50424
  store i64 %.sink21.i, ptr %i.a, align 8, !dbg !50424, !alias.scope !50312, !noalias !50313
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !50424
  store i64 %.sink21.i, ptr %i.g, align 8, !dbg !50424, !alias.scope !50312, !noalias !50313
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64, !dbg !50424
  store i64 %.sink.i, ptr %i.h, align 8, !dbg !50424, !alias.scope !50312, !noalias !50313
    #dbg_value(ptr %0, !50300, !DIExpression(), !50314)
    #dbg_value(ptr %i.a, !50315, !DIExpression(), !50195)
    #dbg_value(ptr poison, !50321, !DIExpression(), !50195)
    #dbg_value(ptr poison, !50325, !DIExpression(), !50203)
    #dbg_value(ptr %i.a, !50330, !DIExpression(), !50203)
    #dbg_declare(ptr poison, !50331, !DIExpression(), !50204)
    #dbg_declare(ptr poison, !50332, !DIExpression(), !50205)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted = load i8, ptr %i.i, align 8
  %i.j = load ptr, ptr %0, align 8, !nonnull !2067, !align !2511 ; 8 uses
  %i.k = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !dbg !50425, !noalias !50339 ; 2 uses
  %i.l = extractvalue { ptr, ptr } %i.k, 0, !dbg !50425 ; 3 uses
  %.not.i.i.peel = icmp eq ptr %i.l, null, !dbg !50426
  br i1 %.not.i.i.peel, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB1n_3ser8CompoundQINtNtBc_3vec3VechENtB4e_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapRBY_RB1j_RINtB6_8BTreeMapBY_B1j_EE0INtNtB28_6result6ResultuNtNtB1n_5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer.exit, label %bb.c, !dbg !50427

bb.c:                                             ; preds = %.peel.begin
  %i.m = icmp eq i8 %.promoted, 1, !dbg !50428
  %i.n = extractvalue { ptr, ptr } %i.k, 1, !dbg !50425 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.n) ]
    #dbg_value(ptr %i.l, !50333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50230)
    #dbg_value(ptr %i.n, !50333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50230)
  %i.o = getelementptr i8, ptr %i.l, i64 8, !dbg !50429
  %.val11.i.i.peel = load ptr, ptr %i.o, align 8, !dbg !50429, !noalias !50339 ; 2 uses
  %i.p = getelementptr i8, ptr %i.l, i64 16, !dbg !50429
  %.val12.i.i.peel = load i64, ptr %i.p, align 8, !dbg !50429, !noalias !50339
    #dbg_value(ptr poison, !50382, !DIExpression(DW_OP_deref), !50231)
    #dbg_declare(ptr poison, !50383, !DIExpression(), !50232)
    #dbg_value(ptr poison, !50381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50231)
    #dbg_value(ptr %i.n, !50381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50231)
    #dbg_value(ptr poison, !50373, !DIExpression(DW_OP_deref, DW_OP_deref), !50233)
    #dbg_value(ptr poison, !50376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50233)
    #dbg_value(ptr %i.n, !50376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50233)
    #dbg_value(ptr undef, !50374, !DIExpression(DW_OP_deref), !50234)
    #dbg_value(ptr undef, !50375, !DIExpression(DW_OP_deref), !50234)
    #dbg_value(ptr poison, !50365, !DIExpression(), !50235)
    #dbg_value(ptr poison, !50366, !DIExpression(), !50235)
    #dbg_value(ptr poison, !50367, !DIExpression(), !50235)
  call void @llvm.experimental.noalias.scope.decl(metadata !50387), !dbg !50430
    #dbg_value(ptr %0, !50356, !DIExpression(), !50238)
    #dbg_value(ptr poison, !50357, !DIExpression(), !50238)
    #dbg_value(ptr poison, !50358, !DIExpression(), !50238)
  call void @llvm.experimental.noalias.scope.decl(metadata !50388), !dbg !50431
    #dbg_value(ptr %0, !50345, !DIExpression(), !50241)
    #dbg_value(ptr poison, !50346, !DIExpression(), !50241)
    #dbg_value(ptr poison, !50341, !DIExpression(), !50242)
    #dbg_value(i64 1, !50343, !DIExpression(), !50243)
    #dbg_value(ptr %0, !50347, !DIExpression(), !50244)
    #dbg_value(ptr %0, !50348, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !50245)
    #dbg_value(ptr %0, !50340, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !50246)
    #dbg_value(i1 %i.m, !50342, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_stack_value), !50247)
    #dbg_value(ptr poison, !6371, !DIExpression(), !50249)
    #dbg_value(ptr poison, !6372, !DIExpression(), !50249)
    #dbg_value(i1 %i.m, !6373, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50249)
  br i1 %i.m, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.peel, label %bb.d, !dbg !50432

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i.i.peel = load ptr, ptr %i.j, align 8, !dbg !50433, !noalias !50390, !nonnull !2067, !noundef !2067
    #dbg_value(ptr poison, !2518, !DIExpression(), !50256)
    #dbg_value(ptr @58, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50256)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50256)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i.peel, !2528, !DIExpression(), !50258)
    #dbg_value(ptr @58, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50258)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50258)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i.i.i.i.i.i.i.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !50434, !noalias !50390
  br label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.peel, !dbg !50435

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.peel: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.i, align 8, !dbg !50436, !alias.scope !50391, !noalias !50392
    #dbg_value(ptr poison, !50393, !DIExpression(), !50263)
    #dbg_value(ptr %i.j, !50396, !DIExpression(), !50263)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i.i.peel) ]
    #dbg_value(ptr poison, !6375, !DIExpression(), !50265)
    #dbg_value(ptr %i.j, !6380, !DIExpression(), !50265)
    #dbg_value(ptr %i.j, !6384, !DIExpression(), !50267)
    #dbg_value(ptr %.val11.i.i.peel, !6388, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50267)
    #dbg_value(i64 %.val12.i.i.peel, !6388, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50267)
    #dbg_value(ptr %i.j, !6044, !DIExpression(), !50269)
    #dbg_value(ptr %.val11.i.i.peel, !6047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50269)
    #dbg_value(i64 %.val12.i.i.peel, !6047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50269)
  %i.q = call noundef ptr @_RINvNtCsenfyI6F4F2A_10serde_json3ser18format_escaped_strQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB2_16CompactFormatterECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val11.i.i.peel, i64 noundef %.val12.i.i.peel), !dbg !50437, !noalias !50390 ; 0 uses
    #dbg_value(ptr poison, !50399, !DIExpression(), !50277)
    #dbg_value(ptr poison, !50401, !DIExpression(), !50277)
    #dbg_value(ptr poison, !50402, !DIExpression(), !50278)
  %.val.i9.i.i.i.i.i.i.peel = load ptr, ptr %i.j, align 8, !dbg !50438, !noalias !50408, !nonnull !2067, !align !2511, !noundef !2067
    #dbg_value(ptr poison, !6390, !DIExpression(), !50280)
    #dbg_value(ptr poison, !6391, !DIExpression(), !50280)
    #dbg_value(ptr poison, !2518, !DIExpression(), !50282)
    #dbg_value(ptr @59, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50282)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50282)
    #dbg_value(ptr %.val.i9.i.i.i.i.i.i.peel, !2528, !DIExpression(), !50284)
    #dbg_value(ptr @59, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50284)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50284)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i9.i.i.i.i.i.i.peel, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !50439, !noalias !50408
    #dbg_value(ptr poison, !6049, !DIExpression(), !50286)
    #dbg_value(ptr %i.j, !6052, !DIExpression(), !50286)
  %i.r = call fastcc noalias noundef align 8 ptr @_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.n, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.j) #26, !dbg !50440, !noalias !50409, !inline_history !50287 ; 2 uses
  %.not10.i.i.peel = icmp eq ptr %i.r, null, !dbg !50429
  br i1 %.not10.i.i.peel, label %.peel.next, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB1n_3ser8CompoundQINtNtBc_3vec3VechENtB4e_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapRBY_RB1j_RINtB6_8BTreeMapBY_B1j_EE0INtNtB28_6result6ResultuNtNtB1n_5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50429

.peel.next:                                       ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i.peel, %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i
  %i.s = call { ptr, ptr } @_RNvXsk_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a), !dbg !50425, !noalias !50339 ; 2 uses
  %i.t = extractvalue { ptr, ptr } %i.s, 0, !dbg !50425 ; 3 uses
  %.not.i.i = icmp eq ptr %i.t, null, !dbg !50426
  br i1 %.not.i.i, label %_RINvYINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3map4IterNtNtBc_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_eachNCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB1n_3ser8CompoundQINtNtBc_3vec3VechENtB4e_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapRBY_RB1j_RINtB6_8BTreeMapBY_B1j_EE0INtNtB28_6result6ResultuNtNtB1n_5error5ErrorEECsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i, !dbg !50427

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callTRNtNtCsexYYUdYSQU6_5alloc6string6StringRNtNtCsenfyI6F4F2A_10serde_json5value5ValueEINtNtBe_6result6ResultuNtNtB23_5error5ErrorENCINvYINtNtNtCsbmN5fM2HLz5_5serde7private3ser17FlatMapSerializerINtNtB23_3ser8CompoundQINtNtB1q_3vec3VechENtB4t_16CompactFormatterEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_mapB1l_B1Y_RINtNtNtNtB1q_11collections5btree3map8BTreeMapB1m_B1Z_EE0E0CsaTqK2fWTXJW_11qlog_dancer.exit.i.i: ; preds = %.peel.next
  %i.u = extractvalue { ptr, ptr } %i.s, 1, !dbg !50425 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
    #dbg_value(ptr %i.t, !50333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50230)
    #dbg_value(ptr %i.u, !50333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50230)
  %i.v = getelementptr i8, ptr %i.t, i64 8, !dbg !50429
  %.val11.i.i = load ptr, ptr %i.v, align 8, !dbg !50429, !noalias !50339 ; 2 uses
  %i.w = getelementptr i8, ptr %i.t, i64 16, !dbg !50429
  %.val12.i.i = load i64, ptr %i.w, align 8, !dbg !50429, !noalias !50339
    #dbg_value(ptr poison, !50382, !DIExpression(DW_OP_deref), !50231)
    #dbg_declare(ptr poison, !50383, !DIExpression(), !50232)
    #dbg_value(ptr poison, !50381, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50231)
    #dbg_value(ptr %i.u, !50381, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50231)
    #dbg_value(ptr poison, !50373, !DIExpression(DW_OP_deref, DW_OP_deref), !50233)
    #dbg_value(ptr poison, !50376, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50233)
    #dbg_value(ptr %i.u, !50376, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50233)
    #dbg_value(ptr undef, !50374, !DIExpression(DW_OP_deref), !50234)
    #dbg_value(ptr undef, !50375, !DIExpression(DW_OP_deref), !50234)
    #dbg_value(ptr poison, !50365, !DIExpression(), !50235)
    #dbg_value(ptr poison, !50366, !DIExpression(), !50235)
    #dbg_value(ptr poison, !50367, !DIExpression(), !50235)
  call void @llvm.experimental.noalias.scope.decl(metadata !50410), !dbg !50430
    #dbg_value(ptr %0, !50356, !DIExpression(), !50238)
    #dbg_value(ptr poison, !50357, !DIExpression(), !50238)
    #dbg_value(ptr poison, !50358, !DIExpression(), !50238)
  call void @llvm.experimental.noalias.scope.decl(metadata !50411), !dbg !50431
    #dbg_value(ptr %0, !50345, !DIExpression(), !50241)
    #dbg_value(ptr poison, !50346, !DIExpression(), !50241)
    #dbg_value(ptr poison, !50341, !DIExpression(), !50242)
    #dbg_value(i64 1, !50343, !DIExpression(), !50243)
    #dbg_value(ptr %0, !50347, !DIExpression(), !50244)
    #dbg_value(ptr %0, !50348, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !50245)
    #dbg_value(ptr %0, !50340, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !50246)
    #dbg_value(i1 false, !50342, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_signed, DW_OP_LLVM_convert, 8, DW_ATE_signed, DW_OP_stack_value), !50247)
    #dbg_value(ptr poison, !6371, !DIExpression(), !50249)
    #dbg_value(ptr poison, !6372, !DIExpression(), !50249)
    #dbg_value(i1 false, !6373, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !50249)
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !dbg !50433, !noalias !50412, !nonnull !2067, !noundef !2067
    #dbg_value(ptr poison, !2518, !DIExpression(), !50256)
    #dbg_value(ptr @58, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50256)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50256)
    #dbg_value(ptr %.val.i.i.i.i.i.i.i, !2528, !DIExpression(), !50258)
    #dbg_value(ptr @58, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50258)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50258)
end_hunk_0
begin_hunk_1_@_RINvYNtNvXNvCs3JBf551F2Kj_4qlogsh_1__NtBa_9TokenTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtBQ_7Visitor14visit_byte_bufNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.c
    #dbg_value(ptr %1, !4637, !DIExpression(), !50864)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !50894
  ret void, !dbg !50895

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !50896
  unreachable, !dbg !50896
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvCs3JBf551F2Kj_4qlogsh_1__NtBa_9TokenTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtBQ_7Visitor8visit_u8NtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i8 noundef %1) unnamed_addr #0 !dbg !50897 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
    #dbg_declare(ptr poison, !50905, !DIExpression(), !50908)
    #dbg_value(i8 %1, !50906, !DIExpression(), !50909)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50910), !dbg !50911
    #dbg_declare(ptr poison, !6952, !DIExpression(), !50901)
    #dbg_value(i8 %1, !6951, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !50902)
    #dbg_declare(ptr poison, !6950, !DIExpression(), !50901)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
  ], !dbg !50912, !prof !6521

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64, !dbg !50913
    #dbg_value(i64 %i.b, !6951, !DIExpression(), !50902)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50912, !noalias !50910
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !50912
  store i64 %i.b, ptr %i.c, align 8, !dbg !50912, !noalias !50910
  store i8 1, ptr %i.a, align 8, !dbg !50912, !noalias !50910
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @50), !dbg !50912, !noalias !50910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50914, !noalias !50910
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50912
  store ptr %i.d, ptr %i.e, align 8, !dbg !50912, !alias.scope !50910
  br label %_RINvXNvXNvCs3JBf551F2Kj_4qlogsh_1__NtB8_9TokenTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBO_7Visitor9visit_u64NtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50914

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !50912
  store i8 0, ptr %i.f, align 1, !dbg !50912, !alias.scope !50910
  br label %_RINvXNvXNvCs3JBf551F2Kj_4qlogsh_1__NtB8_9TokenTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBO_7Visitor9visit_u64NtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50914

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !50912
  store i8 1, ptr %i.g, align 1, !dbg !50912, !alias.scope !50910
  br label %_RINvXNvXNvCs3JBf551F2Kj_4qlogsh_1__NtB8_9TokenTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBO_7Visitor9visit_u64NtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !50914

_RINvXNvXNvCs3JBf551F2Kj_4qlogsh_1__NtB8_9TokenTypeNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBO_7Visitor9visit_u64NtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink.i = phi i8 [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !dbg !50912, !alias.scope !50910
  ret void, !dbg !50915
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvCs3JBf551F2Kj_4qlogsj_1__NtBa_5TokenNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtBM_7Visitor14visit_byte_bufNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !50916 {
bb.a:
    #dbg_declare(ptr poison, !50938, !DIExpression(), !50941)
    #dbg_declare(ptr %1, !50939, !DIExpression(), !50942)
    #dbg_value(ptr %1, !50943, !DIExpression(), !50946)
    #dbg_value(ptr %1, !50947, !DIExpression(), !50950)
    #dbg_value(ptr %1, !50951, !DIExpression(), !50954)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50966
  %i.b = load ptr, ptr %i.a, align 8, !dbg !50966, !nonnull !2067, !noundef !2067 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50967
  %i.d = load i64, ptr %i.c, align 8, !dbg !50967, !noundef !2067
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50958), !dbg !50968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50959), !dbg !50968
    #dbg_declare(ptr poison, !50960, !DIExpression(), !50928)
    #dbg_value(ptr %i.b, !50964, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !50929)
    #dbg_value(i64 %i.d, !50964, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !50929)
    #dbg_declare(ptr poison, !50963, !DIExpression(), !50928)
  switch i64 %i.d, label %bb.d [
    i64 2, label %bb.b
    i64 7, label %bb.e
    i64 3, label %bb.l
  ], !dbg !50969

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.b, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.f = icmp eq i8 %i.e, 116, !dbg !50969
  br i1 %i.f, label %bb.c, label %bb.d, !dbg !50969

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !50969
  %i.h = load i8, ptr %i.g, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.i = icmp eq i8 %i.h, 121, !dbg !50969
  br i1 %i.i, label %bb.o, label %bb.d, !dbg !50969

bb.d:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.c, %bb.b, %bb.a
  br label %bb.o, !dbg !50970

bb.e:                                             ; preds = %bb.a
  %i.j = load i8, ptr %i.b, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.k = icmp eq i8 %i.j, 100, !dbg !50969
  br i1 %i.k, label %bb.f, label %bb.d, !dbg !50969

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !50969
  %i.m = load i8, ptr %i.l, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.n = icmp eq i8 %i.m, 101, !dbg !50969
  br i1 %i.n, label %bb.g, label %bb.d, !dbg !50969

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !50969
  %i.p = load i8, ptr %i.o, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.q = icmp eq i8 %i.p, 116, !dbg !50969
  br i1 %i.q, label %bb.h, label %bb.d, !dbg !50969

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3, !dbg !50969
  %i.s = load i8, ptr %i.r, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.t = icmp eq i8 %i.s, 97, !dbg !50969
  br i1 %i.t, label %bb.i, label %bb.d, !dbg !50969

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !50969
  %i.v = load i8, ptr %i.u, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.w = icmp eq i8 %i.v, 105, !dbg !50969
  br i1 %i.w, label %bb.j, label %bb.d, !dbg !50969

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 5, !dbg !50969
  %i.y = load i8, ptr %i.x, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.z = icmp eq i8 %i.y, 108, !dbg !50969
  br i1 %i.z, label %bb.k, label %bb.d, !dbg !50969

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 6, !dbg !50969
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.ac = icmp eq i8 %i.ab, 115, !dbg !50969
  br i1 %i.ac, label %bb.o, label %bb.d, !dbg !50969

bb.l:                                             ; preds = %bb.a
  %i.ad = load i8, ptr %i.b, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.ae = icmp eq i8 %i.ad, 114, !dbg !50969
  br i1 %i.ae, label %bb.m, label %bb.d, !dbg !50969

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !50969
  %i.ag = load i8, ptr %i.af, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.ah = icmp eq i8 %i.ag, 97, !dbg !50969
  br i1 %i.ah, label %bb.n, label %bb.d, !dbg !50969

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 2, !dbg !50969
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !50969, !alias.scope !50959, !noalias !50958, !noundef !2067
  %i.ak = icmp eq i8 %i.aj, 119, !dbg !50969
  br i1 %i.ak, label %bb.o, label %bb.d, !dbg !50969

bb.o:                                             ; preds = %bb.n, %bb.k, %bb.d, %bb.c
  %.sink.i = phi i8 [ 1, %bb.k ], [ 3, %bb.d ], [ 2, %bb.n ], [ 0, %bb.c ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !50969
  store i8 %.sink.i, ptr %i.al, align 1, !dbg !50969, !alias.scope !50958, !noalias !50959
  store i8 0, ptr %0, align 8, !dbg !50969, !alias.scope !50958, !noalias !50959
    #dbg_value(ptr %1, !4630, !DIExpression(), !50931)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit unwind label %bb.p, !dbg !50971

bb.p:                                             ; preds = %bb.o
  %i.am = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %1, !4637, !DIExpression(), !50933)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.q, !dbg !50972

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !50971
  unreachable, !dbg !50971

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.p
  resume { ptr, i32 } %i.am, !dbg !50971

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %bb.o
    #dbg_value(ptr %1, !4637, !DIExpression(), !50935)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !50973
  ret void, !dbg !50974
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RINvYNtNvXNvCs3JBf551F2Kj_4qlogsj_1__NtBa_5TokenNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtBM_7Visitor8visit_u8NtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 2)) %0, i8 noundef %1) unnamed_addr #10 !dbg !50975 {
bb.a:
    #dbg_declare(ptr poison, !50984, !DIExpression(), !50987)
    #dbg_value(i8 %1, !50985, !DIExpression(), !50988)
    #dbg_declare(ptr poison, !50989, !DIExpression(), !50978)
    #dbg_value(i8 %1, !50993, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !50979)
    #dbg_declare(ptr poison, !50992, !DIExpression(), !50978)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !50996
  %trunc..i = tail call i8 @llvm.umin.i8(i8 %1, i8 3), !dbg !50997
  store i8 %trunc..i, ptr %i.a, align 1, !dbg !50996, !alias.scope !50995
  store i8 0, ptr %0, align 8, !dbg !50996, !alias.scope !50995
  ret void, !dbg !50998
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBR_NtNtB9_5value5ValueEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1116 {
bb.a:
    #dbg_value(ptr poison, !6049, !DIExpression(), !51005)
    #dbg_value(ptr poison, !6058, !DIExpression(), !51006)
    #dbg_declare(ptr poison, !6143, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !51066)
    #dbg_value(ptr poison, !6059, !DIExpression(), !51007)
    #dbg_value(ptr poison, !6057, !DIExpression(), !51006)
    #dbg_value(ptr poison, !6110, !DIExpression(), !51067)
    #dbg_value(ptr poison, !6134, !DIExpression(), !51008)
    #dbg_value(ptr poison, !6149, !DIExpression(), !51010)
    #dbg_value(ptr poison, !6108, !DIExpression(), !51011)
    #dbg_value(ptr poison, !6133, !DIExpression(), !51008)
    #dbg_value(ptr %0, !6140, !DIExpression(), !51068)
    #dbg_value(ptr %1, !6141, !DIExpression(), !51068)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51077
  %.val = load ptr, ptr %i.a, align 8, !dbg !51077, !nonnull !2067, !noundef !2067 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51077
  %.val16 = load i64, ptr %i.b, align 8, !dbg !51077, !noundef !2067 ; 3 uses
    #dbg_value(ptr poison, !6163, !DIExpression(), !51013)
    #dbg_value(i64 %.val16, !6168, !DIExpression(), !51016)
    #dbg_value(i64 %.val16, !6185, !DIExpression(), !51018)
    #dbg_value(ptr %.val, !6183, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51019)
    #dbg_value(ptr %.val, !6176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51020)
    #dbg_value(i64 %.val16, !6183, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51019)
    #dbg_value(i64 %.val16, !6176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51020)
    #dbg_value(ptr %.val, !6177, !DIExpression(), !51021)
    #dbg_value(ptr %.val, !6189, !DIExpression(), !51018)
  %.idx = mul nuw nsw i64 %.val16, 72, !dbg !51078
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx, !dbg !51078
    #dbg_value(ptr %.val, !6142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51069)
    #dbg_value(ptr %i.c, !6142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51069)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51070), !dbg !51079
    #dbg_value(ptr poison, !6192, !DIExpression(), !51026)
    #dbg_value(i64 1, !6214, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51027)
    #dbg_value(i64 %.val16, !6214, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51027)
    #dbg_value(ptr %0, !6213, !DIExpression(), !51027)
    #dbg_value(ptr poison, !6196, !DIExpression(), !51028)
  %.val.i = load ptr, ptr %0, align 8, !dbg !51080, !alias.scope !51070, !noalias !51071, !nonnull !2067, !align !2511, !noundef !2067 ; 3 uses
    #dbg_value(ptr poison, !6220, !DIExpression(), !51031)
    #dbg_value(ptr poison, !6221, !DIExpression(), !51031)
    #dbg_value(ptr poison, !2518, !DIExpression(), !51033)
    #dbg_value(ptr @56, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51033)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51033)
    #dbg_value(ptr %.val.i, !2528, !DIExpression(), !51035)
    #dbg_value(ptr @56, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51035)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51035)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !51081, !noalias !51072
    #dbg_value(ptr undef, !6192, !DIExpression(), !51026)
  %.not = icmp eq i64 %.val16, 0
  br i1 %.not, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, label %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.peel, !dbg !51082

_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.peel: ; preds = %bb.a
    #dbg_value(i8 2, !6143, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !51073)
    #dbg_value(ptr undef, !6049, !DIExpression(), !51005)
    #dbg_value(ptr %0, !6052, !DIExpression(), !51005)
  %i.d = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26, !dbg !51083, !noalias !51074, !inline_history !51044 ; 2 uses
  %.not.i.i.peel = icmp eq ptr %i.d, null, !dbg !51084
  br i1 %.not.i.i.peel, label %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51085

_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader: ; preds = %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.peel
  %i.e = icmp eq i64 %.val16, 1, !dbg !51086
  br i1 %i.e, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, label %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.lr.ph, !dbg !51087

_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.lr.ph: ; preds = %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader
  %.sroa.0.02649 = getelementptr inbounds nuw i8, ptr %.val, i64 72, !dbg !51088
  br label %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !51087

_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i
  %.sroa.0.026 = getelementptr inbounds nuw i8, ptr %.sroa.0.02650, i64 72, !dbg !51088 ; 2 uses
    #dbg_value(i8 2, !6143, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !51073)
    #dbg_value(ptr %.sroa.0.026, !6142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51069)
    #dbg_value(ptr undef, !6149, !DIExpression(), !51010)
    #dbg_value(i64 1, !6233, !DIExpression(), !51047)
    #dbg_value(ptr %.sroa.0.026, !6159, !DIExpression(), !51048)
    #dbg_value(ptr %.sroa.0.026, !6232, !DIExpression(), !51047)
    #dbg_value(ptr %i.c, !6160, !DIExpression(), !51049)
    #dbg_value(ptr poison, !6226, !DIExpression(), !51050)
    #dbg_value(ptr poison, !6227, !DIExpression(), !51051)
  %i.f = icmp eq ptr %.sroa.0.026, %i.c, !dbg !51086
  br i1 %i.f, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, label %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i, !dbg !51087, !llvm.loop !51052

_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.lr.ph, %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit
  %.sroa.0.02650 = phi ptr [ %.sroa.0.02649, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.lr.ph ], [ %.sroa.0.026, %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit ] ; 2 uses
    #dbg_value(ptr %.sroa.0.02650, !6142, !DIExpression(DW_OP_plus_uconst, 72, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !51069)
    #dbg_value(ptr %.sroa.0.02650, !6112, !DIExpression(), !51053)
    #dbg_value(ptr undef, !6092, !DIExpression(DW_OP_deref), !51054)
    #dbg_declare(ptr poison, !6093, !DIExpression(), !51055)
    #dbg_value(ptr %.sroa.0.02650, !6091, !DIExpression(), !51054)
    #dbg_value(ptr poison, !6075, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !51056)
    #dbg_value(ptr undef, !6074, !DIExpression(DW_OP_deref), !51056)
    #dbg_value(ptr undef, !6057, !DIExpression(), !51006)
    #dbg_value(ptr undef, !6058, !DIExpression(), !51006)
    #dbg_value(ptr undef, !6059, !DIExpression(), !51007)
    #dbg_value(ptr undef, !6060, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !51057)
    #dbg_value(ptr poison, !6237, !DIExpression(), !51059)
    #dbg_value(ptr poison, !6238, !DIExpression(), !51059)
    #dbg_value(i1 false, !6239, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51059)
    #dbg_value(ptr poison, !2518, !DIExpression(), !51061)
    #dbg_value(ptr @58, !2523, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51061)
    #dbg_value(i64 1, !2523, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51061)
    #dbg_value(ptr %.val.i, !2528, !DIExpression(), !51063)
    #dbg_value(ptr @58, !2534, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51063)
    #dbg_value(i64 1, !2534, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51063)
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @58, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !51089, !noalias !51076, !inline_history !51065
    #dbg_value(i8 2, !6143, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !51073)
    #dbg_value(ptr undef, !6049, !DIExpression(), !51005)
    #dbg_value(ptr %0, !6052, !DIExpression(), !51005)
  %i.g = tail call fastcc noundef align 8 ptr @_RINvXNtNtCsenfyI6F4F2A_10serde_json5value3serNtB5_5ValueNtNtCs9xKKqPmwf7Y_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEEECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.02650, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #26, !dbg !51083, !noalias !51074, !inline_history !51044 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null, !dbg !51084
  br i1 %.not.i.i, label %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit, label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51085, !llvm.loop !51052

_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split: ; preds = %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit, %_RNCINvYQINtNtCsenfyI6F4F2A_10serde_json3ser10SerializerQINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtCs9xKKqPmwf7Y_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0CsaTqK2fWTXJW_11qlog_dancer.exit.preheader, %bb.a
  tail call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !51069
  br label %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51090

_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit: ; preds = %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.peel
  %.sroa.0.0 = phi ptr [ %i.d, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i.peel ], [ null, %_RNvXs2_NtCsenfyI6F4F2A_10serde_json3serINtB5_8CompoundQINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs9xKKqPmwf7Y_10serde_core3ser12SerializeSeq3endCsaTqK2fWTXJW_11qlog_dancer.exit.sink.split ], [ %i.g, %_RINvYNtNtCsenfyI6F4F2A_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsaTqK2fWTXJW_11qlog_dancer.exit.i ], !dbg !51091
  ret ptr %.sroa.0.0, !dbg !51090
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtCs83oNeXj4HCJ_8indexmap3mapINtB5_8IndexMapNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE11insert_fullCsaTqK2fWTXJW_11qlog_dancer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 dereferenceable(72) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !51094 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  %i.b = alloca [72 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !51361, !DIExpression(), !51366)
    #dbg_value(ptr %1, !51367, !DIExpression(), !51377)
    #dbg_declare(ptr %2, !51362, !DIExpression(), !51378)
    #dbg_declare(ptr %3, !51363, !DIExpression(), !51379)
    #dbg_value(ptr %2, !51373, !DIExpression(), !51377)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !51664
  %i.i = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.b unwind label %bb.w, !dbg !51665 ; 2 uses

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %i.i, !51364, !DIExpression(), !51380)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !51666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !51666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !51667
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !dbg !51667
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51381), !dbg !51668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51382), !dbg !51668
    #dbg_value(ptr %1, !51383, !DIExpression(), !51117)
    #dbg_value(i64 %i.i, !51387, !DIExpression(), !51117)
    #dbg_declare(ptr %i.g, !51388, !DIExpression(), !51118)
    #dbg_declare(ptr %i.f, !51389, !DIExpression(), !51119)
    #dbg_declare(ptr %i.e, !51390, !DIExpression(), !51120)
    #dbg_declare(ptr poison, !51426, !DIExpression(), !51123)
    #dbg_value(i64 1, !51431, !DIExpression(), !51132)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !51669, !noalias !51454
    #dbg_value(ptr %i.g, !51455, !DIExpression(), !51137)
    #dbg_value(ptr %1, !51461, !DIExpression(), !51140)
    #dbg_value(ptr %1, !51463, !DIExpression(), !51143)
    #dbg_value(ptr %1, !51465, !DIExpression(), !51146)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51670 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !dbg !51670, !alias.scope !51382, !noalias !51467, !nonnull !2067, !noundef !2067 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51671 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !dbg !51671, !alias.scope !51382, !noalias !51467, !noundef !2067 ; 2 uses
    #dbg_value(ptr %i.k, !51458, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51137)
    #dbg_value(i64 %i.m, !51458, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51137)
  store ptr %i.g, ptr %i.e, align 8, !dbg !51672, !noalias !51454
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !51672
  store ptr %i.k, ptr %i.n, align 8, !dbg !51672, !noalias !51454
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !51672
  store i64 %i.m, ptr %i.o, align 8, !dbg !51672, !noalias !51454
    #dbg_value(ptr %1, !51461, !DIExpression(), !51154)
    #dbg_value(ptr %1, !51463, !DIExpression(), !51156)
    #dbg_value(ptr %1, !51465, !DIExpression(), !51158)
    #dbg_value(ptr %i.k, !51391, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51159)
    #dbg_value(i64 %i.m, !51391, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51159)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !51673, !noalias !51454
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !51673
  invoke void @_RINvMs_NtCs6Hru1xGhrwY_9hashbrown5tableINtB5_9HashTablejE5entryNCINvNtCs83oNeXj4HCJ_8indexmap5inner10equivalentNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueB1L_E0NCINvB14_8get_hashB1L_B2n_E0ECsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.k, i64 noundef %i.m)
          to label %bb.c unwind label %bb.t, !dbg !51674, !noalias !51470

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.d, align 8, !dbg !51673, !noalias !51454, !noundef !2067 ; 4 uses
  %.not.i = icmp eq ptr %i.q, null, !dbg !51673
  %i.r = load i64, ptr %i.l, align 8, !dbg !51675, !alias.scope !51382, !noalias !51467, !noundef !2067 ; 5 uses
  br i1 %.not.i, label %bb.d, label %bb.j, !dbg !51676

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !51677
  %i.t = load ptr, ptr %i.s, align 8, !dbg !51677, !noalias !51454, !nonnull !2067, !noundef !2067
    #dbg_value(ptr %i.t, !51392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51160)
    #dbg_value(ptr poison, !51392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51160)
    #dbg_value(ptr poison, !51452, !DIExpression(), !51161)
    #dbg_value(ptr poison, !51446, !DIExpression(), !51162)
    #dbg_value(ptr poison, !51441, !DIExpression(), !51163)
    #dbg_value(ptr %i.t, !51435, !DIExpression(), !51132)
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -8, !dbg !51678
  %i.v = load i64, ptr %i.u, align 8, !dbg !51679, !noalias !51470, !noundef !2067 ; 4 uses
    #dbg_value(i64 %i.v, !51393, !DIExpression(), !51164)
    #dbg_value(i64 %i.v, !51471, !DIExpression(), !51167)
    #dbg_value(i64 %i.v, !51478, !DIExpression(), !51171)
    #dbg_value(i64 %i.v, !51488, !DIExpression(), !51174)
    #dbg_value(ptr %1, !51475, !DIExpression(), !51175)
    #dbg_value(ptr %1, !51493, !DIExpression(), !51178)
    #dbg_value(ptr %1, !51497, !DIExpression(), !51181)
    #dbg_value(ptr %1, !51500, !DIExpression(), !51184)
    #dbg_value(ptr poison, !51485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51171)
    #dbg_value(ptr poison, !51491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51174)
    #dbg_value(i64 %i.r, !51485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51171)
    #dbg_value(i64 %i.r, !51491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51174)
  %i.w = icmp ult i64 %i.v, %i.r, !dbg !51680
  br i1 %i.w, label %bb.e, label %bb.h, !dbg !51680

bb.e:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.j, align 8, !dbg !51681, !alias.scope !51382, !noalias !51467, !nonnull !2067, !noundef !2067
    #dbg_value(ptr %i.x, !51485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51171)
    #dbg_value(ptr %i.x, !51491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51174)
  %i.y = getelementptr inbounds nuw [104 x i8], ptr %i.x, i64 %i.v, !dbg !51682
    #dbg_value(ptr %i.y, !51429, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !51188)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24, !dbg !51683 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.aa, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !dbg !51683, !noalias !51507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %3, i64 72, i1 false), !dbg !51685
  store i64 %i.v, ptr %0, align 8, !dbg !51684, !alias.scope !51381, !noalias !51508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !51686, !noalias !51454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !51687, !noalias !51454
    #dbg_value(ptr %i.g, !4626, !DIExpression(), !51190)
    #dbg_value(ptr %i.g, !4630, !DIExpression(), !51192)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit.i unwind label %bb.f, !dbg !51688, !noalias !51470

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.g, !4637, !DIExpression(), !51194)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.critedge unwind label %bb.g, !dbg !51689, !noalias !51470

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !dbg !51688, !noalias !51470
  unreachable, !dbg !51688

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsaTqK2fWTXJW_11qlog_dancer.exit.i: ; preds = %bb.e
    #dbg_value(ptr %i.g, !4637, !DIExpression(), !51196)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsaTqK2fWTXJW_11qlog_dancer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !dbg !51690
  br label %_RNvMs_NtCs83oNeXj4HCJ_8indexmap5innerINtB4_4CoreNtNtCsexYYUdYSQU6_5alloc6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueE11insert_fullCsaTqK2fWTXJW_11qlog_dancer.exit, !dbg !51690

bb.h:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.v, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #23
          to label %bb.i unwind label %bb.t, !dbg !51680, !noalias !51470

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !51691
  %i.ae = load i8, ptr %i.ad, align 8, !dbg !51691, !noalias !51454, !noundef !2067 ; 2 uses
    #dbg_value(i8 %i.ae, !51394, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !51197)
    #dbg_value(i8 %i.ae, !51510, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !51201)
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !51691
  %i.ag = load i64, ptr %i.af, align 8, !dbg !51691, !noalias !51454, !noundef !2067 ; 3 uses
    #dbg_value(i64 %i.ag, !51394, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51197)
    #dbg_value(i64 %i.ag, !51510, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !51201)
    #dbg_value(ptr %i.q, !51394, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51197)
    #dbg_value(ptr %i.q, !51510, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !51201)
    #dbg_value(ptr %1, !51517, !DIExpression(), !51204)
    #dbg_value(i64 %i.r, !51395, !DIExpression(), !51205)
    #dbg_value(i64 %i.r, !51514, !DIExpression(), !51201)
  %i.ah = icmp ult i64 %i.r, 88686269585142076, !dbg !51692
  call void @llvm.assume(i1 %i.ah), !dbg !51693
  call void @llvm.experimental.noalias.scope.decl(metadata !51519), !dbg !51694
    #dbg_value(ptr %i.q, !51520, !DIExpression(), !51212)
    #dbg_value(ptr %i.q, !51530, !DIExpression(), !51217)
    #dbg_value(i8 %i.ae, !51524, !DIExpression(), !51212)
    #dbg_value(i8 %i.ae, !51541, !DIExpression(), !51220)
    #dbg_value(i8 %i.ae, !51550, !DIExpression(), !51224)
    #dbg_value(i64 %i.ag, !51525, !DIExpression(), !51212)
    #dbg_value(i64 %i.ag, !51558, !DIExpression(), !51227)
    #dbg_value(i64 %i.ag, !51566, !DIExpression(), !51230)
    #dbg_value(i64 %i.ag, !51547, !DIExpression(), !51220)
    #dbg_value(i64 %i.ag, !51555, !DIExpression(), !51224)
    #dbg_value(i64 %i.ag, !51571, !DIExpression(), !51233)
    #dbg_value(i64 %i.ag, !51558, !DIExpression(), !51235)
    #dbg_value(i64 %i.ag, !51566, !DIExpression(), !51237)
    #dbg_value(i64 %i.ag, !51534, !DIExpression(), !51217)
    #dbg_value(i64 %i.ag, !51575, !DIExpression(), !51241)
    #dbg_value(i64 %i.ag, !51582, !DIExpression(), !51244)
    #dbg_value(i64 %i.r, !51526, !DIExpression(), !51212)
    #dbg_value(i64 %i.r, !51586, !DIExpression(), !51247)
    #dbg_value(i64 %i.r, !51592, !DIExpression(), !51250)
    #dbg_value(i64 16, !51572, !DIExpression(), !51233)
    #dbg_value(i64 1, !51584, !DIExpression(), !51254)
    #dbg_value(ptr %i.q, !51564, !DIExpression(), !51255)
  %i.ai = load ptr, ptr %i.q, align 8, !dbg !51695, !alias.scope !51519, !noalias !51470, !nonnull !2067, !noundef !2067 ; 3 uses
    #dbg_value(ptr %i.ai, !51569, !DIExpression(), !51230)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag, !dbg !51696 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !51697, !noalias !51599, !noundef !2067
    #dbg_value(i8 %i.ak, !51527, !DIExpression(), !51256)
    #dbg_value(i8 %i.ak, !51548, !DIExpression(), !51220)
    #dbg_value(ptr %i.q, !51546, !DIExpression(), !51257)
    #dbg_value(ptr %i.q, !51554, !DIExpression(), !51258)
    #dbg_value(ptr %i.q, !51564, !DIExpression(), !51259)
    #dbg_value(ptr %i.q, !51564, !DIExpression(), !51261)
  %i.al = and i8 %i.ak, 1, !dbg !51698
  %i.am = zext nneg i8 %i.al to i64, !dbg !51698
    #dbg_value(i8 %i.ak, !51605, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !51264)
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !51699 ; 2 uses
  %i.ao = add i64 %i.ag, -16, !dbg !51700
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !51701
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !51701, !alias.scope !51519, !noalias !51470, !noundef !2067
  %i.ar = and i64 %i.aq, %i.ao, !dbg !51702
    #dbg_value(i64 %i.ar, !51556, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !51265)
end_hunk_1
