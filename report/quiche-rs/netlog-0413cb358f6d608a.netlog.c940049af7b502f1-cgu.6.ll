Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/netlog-0413cb358f6d608a.netlog.c940049af7b502f1-cgu.6?download=true
inline.NumInlined: 267
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs0_NtNtNtNtCsG258MDvU3F_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECshhfsHpF03Qr_6netlog:bb.a
  store i64 %.sroa.03.0, ptr %0, align 8, !dbg !492
    #dbg_value(ptr %0, !493, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !500)
    #dbg_value(i8 1, !499, !DIExpression(), !502)
  store i8 1, ptr %i.a, align 8, !dbg !503
  br label %bb.g, !dbg !509

bb.g:                                             ; preds = %bb.f, %bb.a
  ret ptr %0, !dbg !510
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE3get0jECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !511 {
bb.a:
    #dbg_value(ptr %0, !532, !DIExpression(), !539)
    #dbg_declare(ptr poison, !533, !DIExpression(), !540)
    #dbg_declare(ptr poison, !536, !DIExpression(), !541)
  %.val = load ptr, ptr %0, align 8, !dbg !542, !nonnull !206, !noundef !206
    #dbg_value(ptr poison, !543, !DIExpression(), !588)
    #dbg_declare(ptr poison, !566, !DIExpression(), !590)
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !dbg !591, !inline_history !592 ; 2 uses
    #dbg_value(ptr %i.a, !593, !DIExpression(), !614)
    #dbg_value(ptr %i.a, !616, !DIExpression(), !622)
  %i.b = icmp eq ptr %i.a, null, !dbg !624
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !634

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !dbg !635
  unreachable, !dbg !635

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !567, !DIExpression(), !636)
  %.val.i = load i64, ptr %i.a, align 8, !dbg !637, !noundef !206
  ret i64 %.val.i, !dbg !638
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5innerINtB18_4PoolNtNtNtB1e_4meta5regex5CacheINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDINtNtNtCskKLDkoKarTP_4core3ops8function2FnuEp6OutputB2a_NtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtNtB3i_6marker4SendNtB4P_4SyncNtB47_10UnwindSafeEL_EE9put_value0jECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !639 {
bb.a:
    #dbg_value(ptr %0, !648, !DIExpression(), !654)
    #dbg_declare(ptr poison, !649, !DIExpression(), !655)
    #dbg_declare(ptr poison, !652, !DIExpression(), !656)
  %.val = load ptr, ptr %0, align 8, !dbg !657, !nonnull !206, !noundef !206
    #dbg_value(ptr poison, !658, !DIExpression(), !672)
    #dbg_declare(ptr poison, !665, !DIExpression(), !674)
  %i.a = tail call noundef ptr %.val(ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !dbg !675, !inline_history !676 ; 2 uses
    #dbg_value(ptr %i.a, !677, !DIExpression(), !680)
    #dbg_value(ptr %i.a, !682, !DIExpression(), !685)
  %i.b = icmp eq ptr %i.a, null, !dbg !687
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !692

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsG258MDvU3F_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #25, !dbg !693
  unreachable, !dbg !693

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %i.a, !666, !DIExpression(), !694)
  %.val.i = load i64, ptr %i.a, align 8, !dbg !695, !noundef !206
  ret i64 %.val.i, !dbg !696
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i1 noundef zeroext %1, i8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !697 {
bb.a:
    #dbg_value(i8 %2, !761, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !873)
    #dbg_value(ptr %0, !760, !DIExpression(), !873)
    #dbg_value(ptr %0, !874, !DIExpression(), !880)
    #dbg_value(ptr poison, !882, !DIExpression(), !889)
  %i.a = zext i1 %1 to i64, !dbg !891             ; 2 uses
    #dbg_value(i64 %i.a, !761, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !873)
    #dbg_value(i64 poison, !762, !DIExpression(), !904)
    #dbg_value(i64 1, !764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !904)
    #dbg_value(i64 %i.a, !764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !904)
    #dbg_value(i64 %i.a, !765, !DIExpression(), !905)
    #dbg_value(ptr %0, !906, !DIExpression(), !913)
    #dbg_value(i64 %i.a, !912, !DIExpression(), !913)
    #dbg_value(i64 %i.a, !915, !DIExpression(), !925)
    #dbg_value(i64 %i.a, !927, !DIExpression(), !946)
    #dbg_value(i64 %i.a, !948, !DIExpression(), !958)
    #dbg_value(ptr %0, !923, !DIExpression(), !960)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !961 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !961, !alias.scope !962, !noundef !206 ; 3 uses
    #dbg_value(i64 %i.c, !924, !DIExpression(), !925)
    #dbg_value(i64 %i.c, !944, !DIExpression(), !946)
    #dbg_value(i64 %i.c, !956, !DIExpression(), !958)
    #dbg_value(i64 %i.c, !965, !DIExpression(), !973)
    #dbg_value(ptr %0, !943, !DIExpression(), !946)
    #dbg_value(ptr %0, !955, !DIExpression(), !958)
    #dbg_value(ptr %0, !975, !DIExpression(), !982)
    #dbg_value(i64 1, !945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !946)
    #dbg_value(i64 1, !957, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !958)
    #dbg_value(i64 1, !945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !946)
    #dbg_value(i64 1, !957, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !958)
    #dbg_value(i64 1, !981, !DIExpression(), !982)
  %i.d = load i64, ptr %0, align 8, !dbg !984, !range !985, !alias.scope !962, !noundef !206
    #dbg_value(i64 %i.d, !972, !DIExpression(), !973)
  %i.e = sub i64 %i.d, %i.c, !dbg !986
  %i.f = icmp ult i64 %i.e, %i.a, !dbg !987
  br i1 %i.f, label %bb.b, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshhfsHpF03Qr_6netlog.exit, !dbg !988, !prof !458

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.c, i64 noundef %i.a), !dbg !989
  %.pre = load i64, ptr %i.b, align 8, !dbg !990
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshhfsHpF03Qr_6netlog.exit, !dbg !989

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %i.c, %bb.a ], [ %.pre, %bb.b ], !dbg !990 ; 3 uses
    #dbg_value(ptr poison, !862, !DIExpression(), !999)
    #dbg_value(ptr %i.b, !997, !DIExpression(), !1000)
    #dbg_value(ptr %i.b, !865, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1001)
    #dbg_value(i64 %i.g, !865, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1001)
    #dbg_value(ptr poison, !1002, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1022)
    #dbg_value(ptr %i.b, !1002, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1022)
    #dbg_value(i64 %i.g, !1002, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1022)
    #dbg_value(i1 %1, !1018, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !1022)
    #dbg_value(i8 %2, !1018, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1022)
    #dbg_value(ptr %i.b, !1024, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1043)
    #dbg_value(i64 %i.g, !1024, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1043)
    #dbg_value(ptr poison, !1024, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1043)
    #dbg_value(i8 %2, !1034, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !1043)
    #dbg_declare(ptr poison, !1035, !DIExpression(), !1045)
    #dbg_declare(ptr poison, !1036, !DIExpression(), !1046)
    #dbg_value(i8 0, !1034, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1043)
  br i1 %1, label %.lr.ph.i.i, label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECshhfsHpF03Qr_6netlog.exit, !dbg !1047

.lr.ph.i.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshhfsHpF03Qr_6netlog.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1048
  %i.i = load ptr, ptr %i.h, align 8, !dbg !1048, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.i, !862, !DIExpression(), !999)
    #dbg_value(ptr %i.i, !1002, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1022)
    #dbg_value(ptr %i.i, !1024, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1043)
    #dbg_value(i8 %2, !1038, !DIExpression(), !1066)
    #dbg_value(ptr poison, !1067, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !1077)
    #dbg_declare(ptr poison, !1074, !DIExpression(), !1079)
    #dbg_value(i8 %2, !1073, !DIExpression(), !1077)
    #dbg_value(ptr poison, !1080, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !1088)
    #dbg_value(ptr poison, !1087, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !1088)
    #dbg_value(i8 %2, !1086, !DIExpression(), !1088)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g, !dbg !1090
  store i8 %2, ptr %i.j, align 1, !dbg !1095, !noalias !1100
  %i.k = add i64 %i.g, 1, !dbg !1109
    #dbg_value(i8 0, !1034, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !1043)
  br label %_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECshhfsHpF03Qr_6netlog.exit, !dbg !1047

_RINvYINtNtCskKLDkoKarTP_4core6option8IntoIterhENtNtNtNtB8_4iter6traits8iterator8Iterator8for_eachNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB1G_3VechE14extend_trustedB3_E0ECshhfsHpF03Qr_6netlog.exit: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshhfsHpF03Qr_6netlog.exit, %.lr.ph.i.i
  %.val7.i.i = phi i64 [ %i.k, %.lr.ph.i.i ], [ %i.g, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCshhfsHpF03Qr_6netlog.exit ], !dbg !1116
    #dbg_value(ptr poison, !1117, !DIExpression(), !1124)
    #dbg_value(ptr poison, !1126, !DIExpression(), !1133)
    #dbg_value(ptr poison, !1135, !DIExpression(), !1142)
    #dbg_value(ptr poison, !1144, !DIExpression(), !1148)
  store i64 %.val7.i.i, ptr %i.b, align 8, !dbg !1150, !noalias !1151
  ret void, !dbg !1152
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsixltGIj4kJ4_3log13___private_api3loguNtB2_12GlobalLoggerECshhfsHpF03Qr_6netlog(ptr noundef nonnull %0, ptr noundef nonnull %1, i64 noundef range(i64 1, 6) %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1153 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [96 x i8], align 8                ; 16 uses
    #dbg_declare(ptr poison, !1176, !DIExpression(), !1184)
    #dbg_value(ptr %0, !1177, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1185)
    #dbg_value(ptr %1, !1177, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1185)
    #dbg_value(i64 %2, !1178, !DIExpression(), !1185)
    #dbg_value(ptr %3, !1179, !DIExpression(), !1185)
    #dbg_declare(ptr poison, !1180, !DIExpression(), !1186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1187), !dbg !1190
    #dbg_value(ptr poison, !1191, !DIExpression(), !1252)
    #dbg_value(ptr poison, !1293, !DIExpression(), !1300)
    #dbg_value(ptr undef, !1293, !DIExpression(), !1300)
    #dbg_value(ptr undef, !1191, !DIExpression(), !1252)
    #dbg_declare(ptr %i.a, !1282, !DIExpression(), !1302)
    #dbg_value(ptr %0, !1283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1303)
    #dbg_value(ptr %1, !1283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1303)
    #dbg_value(i64 %2, !1284, !DIExpression(), !1303)
    #dbg_value(ptr %3, !1290, !DIExpression(), !1303)
    #dbg_value(ptr null, !1285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1303)
    #dbg_value(i64 undef, !1285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1303)
    #dbg_value(ptr poison, !1286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1304)
    #dbg_value(i64 poison, !1286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1304)
    #dbg_value(ptr poison, !1287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1304)
    #dbg_value(i64 poison, !1287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1304)
    #dbg_value(ptr poison, !1288, !DIExpression(), !1304)
    #dbg_value(ptr poison, !1305, !DIExpression(), !1312)
    #dbg_value(ptr poison, !1314, !DIExpression(), !1320)
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !1322
  %i.d = load ptr, ptr %i.c, align 8, !dbg !1322, !alias.scope !1187, !nonnull !206, !align !1323, !noundef !206 ; 3 uses
    #dbg_value(ptr %i.d, !1288, !DIExpression(), !1304)
    #dbg_value(ptr %i.d, !1305, !DIExpression(), !1312)
    #dbg_value(ptr %i.d, !1314, !DIExpression(), !1320)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !1324
  %i.f = load i64, ptr %i.e, align 8, !dbg !1324, !alias.scope !1187, !noundef !206
    #dbg_value(i64 %i.f, !1287, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1304)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !1324
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1324, !alias.scope !1187, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.h, !1287, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1304)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !1325
  %i.j = load i64, ptr %i.i, align 8, !dbg !1325, !alias.scope !1187, !noundef !206
    #dbg_value(i64 %i.j, !1286, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1304)
  %i.k = load ptr, ptr %3, align 8, !dbg !1325, !alias.scope !1187, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.k, !1286, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1304)
    #dbg_value(i64 2, !1289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1326)
    #dbg_value(i64 2, !1289, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1326)
    #dbg_value(ptr undef, !1289, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1326)
    #dbg_value(i64 undef, !1289, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1326)
    #dbg_value(i64 3, !1289, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1326)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1289, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !1326)
    #dbg_value(i64 0, !1289, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !1326)
    #dbg_value(i32 poison, !1289, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !1326)
    #dbg_value(i32 poison, !1289, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !1326)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1289, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !1326)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !1289, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !1326)
    #dbg_value(ptr %0, !1289, !DIExpression(DW_OP_LLVM_fragment, 640, 64), !1326)
    #dbg_value(ptr %1, !1289, !DIExpression(DW_OP_LLVM_fragment, 704, 64), !1326)
    #dbg_value(i64 %2, !1289, !DIExpression(DW_OP_LLVM_fragment, 384, 64), !1326)
    #dbg_value(ptr %i.k, !1289, !DIExpression(DW_OP_LLVM_fragment, 448, 64), !1326)
    #dbg_value(i64 %i.j, !1289, !DIExpression(DW_OP_LLVM_fragment, 512, 64), !1326)
    #dbg_value(i64 0, !1289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1326)
    #dbg_value(ptr %i.h, !1289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1326)
    #dbg_value(i64 %i.f, !1289, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1326)
  %i.l = load ptr, ptr %i.d, align 8, !dbg !1327, !noalias !1187, !nonnull !206, !noundef !206
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !1327
  %i.n = load i64, ptr %i.m, align 8, !dbg !1327, !noalias !1187, !noundef !206
    #dbg_value(i64 0, !1289, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1326)
    #dbg_value(ptr %i.l, !1289, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1326)
    #dbg_value(i64 %i.n, !1289, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1326)
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !1335
  %i.p = load i32, ptr %i.o, align 8, !dbg !1335, !noalias !1187, !noundef !206
    #dbg_value(i32 1, !1289, !DIExpression(DW_OP_LLVM_fragment, 576, 32), !1326)
    #dbg_value(i32 %i.p, !1289, !DIExpression(DW_OP_LLVM_fragment, 608, 32), !1326)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1336, !noalias !1187
    #dbg_value(ptr undef, !1191, !DIExpression(), !1252)
    #dbg_value(ptr undef, !1293, !DIExpression(), !1300)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !1300
  store i64 %2, ptr %i.q, align 8, !dbg !1300, !noalias !1187
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !1300
  store ptr %i.k, ptr %.sroa.429.0..sroa_idx.i, align 8, !dbg !1300, !noalias !1187
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !1300
  store i64 %i.j, ptr %.sroa.530.0..sroa_idx.i, align 8, !dbg !1300, !noalias !1187
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 80, !dbg !1300
  store ptr %0, ptr %i.r, align 8, !dbg !1300, !noalias !1187
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88, !dbg !1300
  store ptr %1, ptr %i.s, align 8, !dbg !1300, !noalias !1187
  store i64 0, ptr %i.b, align 8, !dbg !1300, !noalias !1187
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !1300
  store ptr %i.h, ptr %.sroa.435.0..sroa_idx.i, align 8, !dbg !1300, !noalias !1187
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !1300
  store i64 %i.f, ptr %.sroa.536.0..sroa_idx.i, align 8, !dbg !1300, !noalias !1187
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !1300
  store i64 0, ptr %i.t, align 8, !dbg !1300, !noalias !1187
  %.sroa.441.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !1300
  store ptr %i.l, ptr %.sroa.441.0..sroa_idx.i, align 8, !dbg !1300, !noalias !1187
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !1300
  store i64 %i.n, ptr %.sroa.542.0..sroa_idx.i, align 8, !dbg !1300, !noalias !1187
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72, !dbg !1300
  store i32 1, ptr %i.u, align 8, !dbg !1300, !noalias !1187
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 76, !dbg !1300
  store i32 %i.p, ptr %i.v, align 4, !dbg !1300, !noalias !1187
  call void @_RNvXs0_NtCsixltGIj4kJ4_3log13___private_apiNtB5_12GlobalLoggerNtB7_3Log3log(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.b), !dbg !1337, !noalias !1187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1338, !noalias !1187
  ret void, !dbg !1339
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateEECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1340 {
bb.a:
    #dbg_value(ptr %0, !1385, !DIExpression(), !1388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1389), !dbg !1392
    #dbg_value(ptr %0, !1393, !DIExpression(), !1397)
    #dbg_value(ptr %0, !1399, !DIExpression(), !1406)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1408
  %i.b = load ptr, ptr %i.a, align 8, !dbg !1408, !alias.scope !1389, !nonnull !206, !noundef !206 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1430
  %i.d = load i64, ptr %i.c, align 8, !dbg !1430, !alias.scope !1389, !noundef !206 ; 4 uses
    #dbg_value(ptr %i.b, !1431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1444)
    #dbg_value(ptr %i.b, !1446, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1449)
    #dbg_value(i64 %i.d, !1431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1444)
    #dbg_value(i64 %i.d, !1446, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1449)
    #dbg_value(ptr %i.b, !1451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1460)
    #dbg_value(i64 %i.d, !1451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1460)
  %i.e = icmp eq i64 %i.d, 0, !dbg !1462
  br i1 %i.e, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog.exit, label %.lr.ph.i.i, !dbg !1462

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit.i.i
  %.sroa.0.010.i.i = phi i64 [ %i.g, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i.i, !dbg !1462 ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i.i, 1, !dbg !1462 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1463), !dbg !1462
    #dbg_value(ptr %i.f, !1466, !DIExpression(), !1472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1474), !dbg !1477
    #dbg_value(ptr %i.f, !1478, !DIExpression(), !1486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1488), !dbg !1491
    #dbg_value(ptr %i.f, !1492, !DIExpression(), !1497)
    #dbg_value(ptr %i.f, !1499, !DIExpression(), !1510)
    #dbg_value(i64 1, !1512, !DIExpression(), !1518)
    #dbg_value(i8 1, !1517, !DIExpression(), !1518)
    #dbg_value(i64 1, !1520, !DIExpression(), !1525)
    #dbg_value(i8 1, !1524, !DIExpression(), !1525)
  %i.h = load ptr, ptr %i.f, align 8, !dbg !1527, !alias.scope !1534, !noalias !1389, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.h, !1516, !DIExpression(), !1537)
    #dbg_value(ptr %i.h, !1523, !DIExpression(), !1525)
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !dbg !1538, !noalias !1539
  %i.j = icmp eq i64 %i.i, 1, !dbg !1540
  br i1 %i.j, label %bb.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit.i.i, !dbg !1540

bb.b:                                             ; preds = %.lr.ph.i.i
    #dbg_value(i8 2, !1541, !DIExpression(), !1546)
  fence acquire, !dbg !1548
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCseN4S6VTYCs1_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit.i.i unwind label %bb.c, !dbg !1549, !noalias !1389

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.k = icmp eq i64 %i.g, %i.d, !dbg !1462
  br i1 %i.k, label %_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog.exit, label %.lr.ph.i.i, !dbg !1462

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.g, %i.d, !dbg !1462
  br i1 %i.m, label %.body, label %.lr.ph13.i.i, !dbg !1462

.lr.ph13.i.i:                                     ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit9.i.i
  %.sroa.0.111.i.i = phi i64 [ %i.o, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit9.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.111.i.i, !dbg !1462 ; 2 uses
  %i.o = add i64 %.sroa.0.111.i.i, 1, !dbg !1462  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1550), !dbg !1462
    #dbg_value(ptr %i.n, !1466, !DIExpression(), !1553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1555), !dbg !1558
    #dbg_value(ptr %i.n, !1478, !DIExpression(), !1559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1561), !dbg !1564
    #dbg_value(ptr %i.n, !1492, !DIExpression(), !1565)
    #dbg_value(ptr %i.n, !1499, !DIExpression(), !1567)
    #dbg_value(i64 1, !1512, !DIExpression(), !1569)
    #dbg_value(i8 1, !1517, !DIExpression(), !1569)
    #dbg_value(i64 1, !1520, !DIExpression(), !1571)
    #dbg_value(i8 1, !1524, !DIExpression(), !1571)
  %i.p = load ptr, ptr %i.n, align 8, !dbg !1573, !alias.scope !1575, !noalias !1389, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.p, !1516, !DIExpression(), !1576)
    #dbg_value(ptr %i.p, !1523, !DIExpression(), !1571)
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !dbg !1577, !noalias !1578
  %i.r = icmp eq i64 %i.q, 1, !dbg !1579
  br i1 %i.r, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit9.i.i, !dbg !1579

bb.d:                                             ; preds = %.lr.ph13.i.i
    #dbg_value(i8 2, !1541, !DIExpression(), !1580)
  fence acquire, !dbg !1582
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcShE9drop_slowCseN4S6VTYCs1_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n) #26
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit9.i.i unwind label %bb.e, !dbg !1583, !noalias !1389

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit9.i.i: ; preds = %bb.d, %.lr.ph13.i.i
  %i.s = icmp eq i64 %i.o, %i.d, !dbg !1462
  br i1 %i.s, label %.body, label %.lr.ph13.i.i, !dbg !1462

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #27, !dbg !1462, !noalias !1389
  unreachable, !dbg !1462

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit9.i.i, %bb.c
  %.val3 = load i64, ptr %0, align 8, !dbg !1392, !range !985, !alias.scope !1584, !noundef !206 ; 2 uses
    #dbg_value(ptr poison, !1587, !DIExpression(), !1595)
    #dbg_value(ptr poison, !1597, !DIExpression(), !1602)
    #dbg_value(ptr poison, !1604, !DIExpression(), !1615)
    #dbg_value(i64 8, !1611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1615)
    #dbg_value(i64 16, !1611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1615)
    #dbg_value(ptr poison, !1617, !DIExpression(), !1646)
    #dbg_value(i64 8, !1641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1646)
    #dbg_value(i64 16, !1641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1646)
    #dbg_value(i64 16, !1648, !DIExpression(), !1654)
  %i.u = icmp eq i64 %.val3, 0, !dbg !1656
  br i1 %i.u, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateEECshhfsHpF03Qr_6netlog.exit, label %bb.f, !dbg !1656

bb.f:                                             ; preds = %.body
    #dbg_value(i64 %.val3, !1653, !DIExpression(), !1654)
  %i.v = shl nuw i64 %.val3, 4, !dbg !1657
    #dbg_value(ptr %i.b, !1612, !DIExpression(), !1658)
    #dbg_value(i64 8, !1614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1658)
    #dbg_value(i64 %i.v, !1614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1658)
    #dbg_value(ptr poison, !1659, !DIExpression(), !1669)
    #dbg_value(ptr poison, !1671, !DIExpression(), !1678)
    #dbg_value(ptr %i.b, !1667, !DIExpression(), !1669)
    #dbg_value(ptr %i.b, !1676, !DIExpression(), !1678)
    #dbg_value(ptr %i.b, !1680, !DIExpression(), !1687)
    #dbg_value(ptr %i.b, !1689, !DIExpression(), !1693)
    #dbg_value(i64 8, !1668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1669)
    #dbg_value(i64 8, !1677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1678)
    #dbg_value(i64 8, !1686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1687)
    #dbg_value(i64 8, !1692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1693)
    #dbg_value(i64 %i.v, !1668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1669)
    #dbg_value(i64 %i.v, !1677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1678)
    #dbg_value(i64 %i.v, !1686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1687)
    #dbg_value(i64 %i.v, !1692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1693)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !1695, !noalias !1696
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateEECshhfsHpF03Qr_6netlog.exit, !dbg !1699

_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCseN4S6VTYCs1_14regex_automata4util11determinize5state5StateECshhfsHpF03Qr_6netlog.exit.i.i, %bb.a
  %.val = load i64, ptr %0, align 8, !dbg !1392, !range !985, !alias.scope !1584, !noundef !206 ; 2 uses
    #dbg_value(ptr poison, !1587, !DIExpression(), !1700)
    #dbg_value(ptr poison, !1597, !DIExpression(), !1702)
    #dbg_value(ptr poison, !1604, !DIExpression(), !1704)
    #dbg_value(i64 8, !1611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1704)
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(i64 %i.b, !9132, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9133)
    #dbg_value(i64 %i.b, !9143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9145)
    #dbg_value(i8 0, !9144, !DIExpression(), !9145)
    #dbg_value(ptr poison, !9147, !DIExpression(), !9177)
    #dbg_value(ptr %.8.val, !9152, !DIExpression(), !9177)
    #dbg_value(ptr %.8.val, !9179, !DIExpression(), !9186)
    #dbg_value(i64 %2, !9153, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9177)
    #dbg_value(i64 %2, !9184, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9186)
    #dbg_value(i64 %i.f, !9153, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9177)
    #dbg_value(i64 %i.f, !9184, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9186)
    #dbg_value(i64 %2, !9154, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9177)
    #dbg_value(i64 %i.b, !9154, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9177)
    #dbg_value(i1 false, !9155, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9177)
    #dbg_value(i64 %i.f, !9156, !DIExpression(), !9188)
    #dbg_value(ptr poison, !9158, !DIExpression(), !9189)
    #dbg_value(i64 %i.b, !9159, !DIExpression(), !9190)
    #dbg_value(i64 %i.b, !9185, !DIExpression(), !9186)
  %i.g = icmp uge i64 %i.b, %i.f, !dbg !9191
    #dbg_value(i1 true, !9192, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9195)
  tail call void @llvm.assume(i1 %i.g), !dbg !9197
  %i.h = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #28, !dbg !9198
    #dbg_value(ptr poison, !9006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9199)
    #dbg_value(ptr poison, !9100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9200)
    #dbg_value(i64 poison, !9006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9199)
    #dbg_value(i64 poison, !9100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9200)
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9201

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !9202, !DIExpression(), !9207)
    #dbg_value(ptr poison, !9209, !DIExpression(), !9214)
    #dbg_value(i64 %2, !9206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9207)
    #dbg_value(i64 %2, !9212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9214)
    #dbg_value(i64 %i.b, !9206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9207)
    #dbg_value(i64 %i.b, !9212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9214)
    #dbg_value(i8 0, !9213, !DIExpression(), !9214)
    #dbg_value(i64 %2, !8740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9216)
    #dbg_value(i64 %2, !8772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9218)
    #dbg_value(i64 %i.b, !8740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9216)
    #dbg_value(i64 %i.b, !8772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9218)
    #dbg_value(i1 false, !8746, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9216)
    #dbg_value(i64 0, !9220, !DIExpression(), !9228)
    #dbg_value(i64 0, !9230, !DIExpression(), !9236)
    #dbg_value(i64 %i.b, !8747, !DIExpression(), !9238)
    #dbg_value(i64 %i.b, !9227, !DIExpression(), !9239)
    #dbg_value(i64 %i.b, !9235, !DIExpression(), !9241)
  %i.i = icmp eq i64 %i.b, 0, !dbg !9244
  br i1 %i.i, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d, !dbg !9244

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
    #dbg_value(i64 %2, !9226, !DIExpression(), !9228)
    #dbg_value(i64 %2, !9234, !DIExpression(), !9236)
    #dbg_value(i64 %2, !9245, !DIExpression(), !9251)
  %i.j = inttoptr i64 %2 to ptr, !dbg !9253
    #dbg_value(ptr %i.j, !9100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9200)
    #dbg_value(ptr %i.j, !9006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9199)
    #dbg_value(i64 poison, !9100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9200)
    #dbg_value(i64 poison, !9006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9199)
    #dbg_value(ptr poison, !9101, !DIExpression(), !9254)
  br label %bb.f, !dbg !9255

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !9256
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %2) #28, !dbg !9257
  br label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9258

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
    #dbg_value(ptr %.pn8, !9100, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9200)
    #dbg_value(ptr %.pn8, !9006, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9199)
    #dbg_value(i64 poison, !9100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9200)
    #dbg_value(i64 poison, !9006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9199)
    #dbg_value(ptr poison, !9101, !DIExpression(), !9254)
  %i.l = icmp eq ptr %.pn8, null, !dbg !9259
  br i1 %i.l, label %bb.e, label %bb.f, !dbg !9255

bb.e:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9260
  store i64 %2, ptr %i.m, align 8, !dbg !9260
  br label %bb.g, !dbg !9261

bb.f:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ]
    #dbg_value(i64 %i.b, !9006, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9199)
    #dbg_value(i64 %i.b, !9100, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9200)
    #dbg_value(ptr %.pn810, !9102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9262)
    #dbg_value(i64 %i.b, !9102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9262)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9263
  store ptr %.pn810, ptr %i.n, align 8, !dbg !9263
  br label %bb.g, !dbg !9264

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13, !dbg !9011
  store i64 %.sink11, ptr %i.o, align 8, !dbg !9011
  store i64 %.sink, ptr %0, align 8, !dbg !9011
  ret void, !dbg !9265
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef range(i64 1, -9223372036854775807) %3, i64 noundef %4) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !9266 {
bb.a:
    #dbg_value(i64 %1, !9286, !DIExpression(), !9300)
    #dbg_value(i64 %1, !9301, !DIExpression(), !9305)
    #dbg_value(i64 %1, !9307, !DIExpression(), !9313)
    #dbg_value(i64 %1, !9315, !DIExpression(), !9322)
    #dbg_value(i64 %1, !9324, !DIExpression(), !9328)
    #dbg_value(i64 %1, !9330, !DIExpression(), !9333)
    #dbg_value(i1 %2, !9287, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9300)
    #dbg_declare(ptr poison, !9288, !DIExpression(), !9335)
    #dbg_value(i64 %3, !9289, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9300)
    #dbg_value(i64 %4, !9289, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9300)
    #dbg_declare(ptr poison, !9336, !DIExpression(), !9343)
    #dbg_value(i64 %4, !9304, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9305)
    #dbg_value(i64 %4, !9318, !DIExpression(), !9322)
    #dbg_value(i64 %4, !9327, !DIExpression(), !9328)
    #dbg_value(i64 %3, !9304, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9305)
    #dbg_value(i64 %3, !9342, !DIExpression(), !9345)
    #dbg_value(ptr poison, !9310, !DIExpression(), !9346)
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %1), !dbg !9347 ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0, !dbg !9347 ; 5 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1, !dbg !9347
    #dbg_value(i1 %i.c, !9321, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9348)
    #dbg_value(i1 %i.c, !9349, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9352)
    #dbg_value(i64 %i.b, !9311, !DIExpression(), !9354)
    #dbg_value(i64 %i.b, !9319, !DIExpression(), !9348)
  %i.d = sub nuw i64 -9223372036854775808, %3
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !dbg !9355, !prof !9116
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !9355, !prof !9116

bb.b:                                             ; preds = %bb.a
    #dbg_value(i64 %3, !9290, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9356)
    #dbg_value(i64 %i.b, !9290, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9356)
  %i.e = icmp eq i64 %i.b, 0, !dbg !9357
  br i1 %i.e, label %bb.d, label %bb.e, !dbg !9357

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9358
  store i64 0, ptr %i.f, align 8, !dbg !9358
  br label %bb.f, !dbg !9359

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr, !dbg !9361
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9367
  store i64 0, ptr %i.h, align 8, !dbg !9367
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9367
  store ptr %i.g, ptr %i.i, align 8, !dbg !9367
  br label %bb.f, !dbg !9368

bb.e:                                             ; preds = %bb.b
    #dbg_value(i64 %3, !8740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9369)
    #dbg_value(i64 %3, !8740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9382)
    #dbg_value(i64 %i.b, !8740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9369)
    #dbg_value(i64 %i.b, !8740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9382)
    #dbg_value(i64 %i.b, !8747, !DIExpression(), !9386)
    #dbg_value(i64 %i.b, !8747, !DIExpression(), !9387)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !9356
    #dbg_value(ptr poison, !9294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9388)
    #dbg_value(ptr poison, !9294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9388)
    #dbg_value(i64 poison, !9294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9388)
    #dbg_value(i64 poison, !9294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9388)
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit, !dbg !9389

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8, !dbg !9300
  ret void, !dbg !9390

bb.g:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !9379, !DIExpression(), !9391)
    #dbg_value(ptr poison, !9373, !DIExpression(), !9392)
    #dbg_value(i64 %3, !9380, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9391)
    #dbg_value(i64 %3, !9374, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9392)
    #dbg_value(i64 %i.b, !9380, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9391)
    #dbg_value(i64 %i.b, !9374, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9392)
    #dbg_value(i8 1, !9375, !DIExpression(), !9392)
    #dbg_value(i64 %3, !9393, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9396)
    #dbg_value(i64 %i.b, !9393, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9396)
    #dbg_value(i1 true, !8746, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9369)
  %i.j = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28, !dbg !9398
  br label %bb.h, !dbg !9399

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
    #dbg_value(ptr poison, !9202, !DIExpression(), !9400)
    #dbg_value(ptr poison, !9209, !DIExpression(), !9401)
    #dbg_value(i64 %3, !9206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9400)
    #dbg_value(i64 %3, !9212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9401)
    #dbg_value(i64 %i.b, !9206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9400)
    #dbg_value(i64 %i.b, !9212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9401)
    #dbg_value(i8 0, !9213, !DIExpression(), !9401)
    #dbg_value(i64 %3, !8772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9402)
    #dbg_value(i64 %i.b, !8772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9402)
    #dbg_value(i1 false, !8746, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9382)
  %i.k = tail call noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #28, !dbg !9404
  br label %bb.h, !dbg !9405

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit
  %.pn29 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit ] ; 2 uses
    #dbg_value(ptr %.pn29, !9294, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9388)
    #dbg_value(i64 poison, !9294, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9388)
  %i.l = icmp eq ptr %.pn29, null, !dbg !9406
  br i1 %i.l, label %bb.i, label %bb.j, !dbg !9407

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9408
  store i64 %3, ptr %i.m, align 8, !dbg !9408
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9408
  store i64 %i.b, ptr %i.n, align 8, !dbg !9408
  br label %bb.f, !dbg !9409

bb.j:                                             ; preds = %bb.h
    #dbg_value(ptr %.pn29, !9296, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9411)
    #dbg_value(i64 poison, !9296, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9411)
  %i.o = icmp sgt i64 %1, -1, !dbg !9412
  tail call void @llvm.assume(i1 %i.o), !dbg !9412
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9413
  store i64 %1, ptr %i.p, align 8, !dbg !9413
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9413
  store ptr %.pn29, ptr %i.q, align 8, !dbg !9413
  br label %bb.f, !dbg !9368
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtCsG258MDvU3F_3std4sync6poison5mutexINtB5_5MutexINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB11_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEE8try_lockCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8), (16, 17)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 !dbg !8237 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !8236, !DIExpression(), !9414)
    #dbg_value(ptr %1, !8262, !DIExpression(), !9415)
    #dbg_declare(ptr %i.a, !8284, !DIExpression(), !9417)
    #dbg_value(i32 0, !8312, !DIExpression(), !9419)
    #dbg_value(i32 1, !8335, !DIExpression(), !9419)
    #dbg_value(i8 2, !8336, !DIExpression(), !9419)
    #dbg_value(i8 0, !8337, !DIExpression(), !9419)
    #dbg_value(ptr %1, !8347, !DIExpression(), !9422)
    #dbg_value(ptr %1, !8334, !DIExpression(), !9423)
    #dbg_value(ptr %1, !8351, !DIExpression(), !9424)
    #dbg_value(i32 0, !8357, !DIExpression(), !9424)
    #dbg_value(i32 1, !8358, !DIExpression(), !9424)
    #dbg_value(i8 2, !8359, !DIExpression(), !9424)
    #dbg_value(i8 0, !8360, !DIExpression(), !9424)
  %i.b = cmpxchg ptr %1, i32 0, i32 1 acquire monotonic, align 4, !dbg !9426
  %i.c = extractvalue { i32, i1 } %i.b, 1, !dbg !9426
  br i1 %i.c, label %bb.b, label %bb.d, !dbg !9427

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9416
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !9428
    #dbg_value(ptr %i.d, !8373, !DIExpression(), !9429)
    #dbg_value(ptr %i.d, !8405, !DIExpression(), !9431)
    #dbg_value(i8 0, !8413, !DIExpression(), !9433)
    #dbg_value(i8 0, !8435, !DIExpression(), !9438)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !8419, !DIExpression(), !9433)
    #dbg_value(ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT, !8445, !DIExpression(), !9440)
    #dbg_value(i8 0, !8450, !DIExpression(), !9440)
  %i.e = load atomic i64, ptr @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !dbg !9442
  %i.f = and i64 %i.e, 9223372036854775807, !dbg !9443
  %i.g = icmp eq i64 %i.f, 0, !dbg !9443
  br i1 %i.g, label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, label %bb.c, !dbg !9443, !prof !5632

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsG258MDvU3F_3std9panicking11panic_count17is_zero_slow_path() #26, !dbg !9444
  %i.i = xor i1 %i.h, true, !dbg !9445
  %i.j = zext i1 %i.i to i8, !dbg !9446
  br label %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit, !dbg !9444

_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit: ; preds = %bb.b, %bb.c
  %.sroa.01.0.i = phi i8 [ %i.j, %bb.c ], [ 0, %bb.b ], !dbg !9447
    #dbg_value(i8 %.sroa.01.0.i, !8401, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9448)
    #dbg_value(ptr %i.d, !8442, !DIExpression(), !9449)
    #dbg_value(ptr %i.d, !8461, !DIExpression(), !9450)
    #dbg_value(i8 0, !8466, !DIExpression(), !9450)
  %i.k = load atomic i8, ptr %i.d monotonic, align 4, !dbg !9452
  %.not.i = icmp ne i8 %i.k, 0, !dbg !9453
  call void @_RINvNtNtCsG258MDvU3F_3std4sync6poison10map_resultNtB2_5GuardINtNtB2_5mutex10MutexGuardINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB1r_5boxed3BoxNtNtNtCseN4S6VTYCs1_14regex_automata4meta5regex5CacheEEENCNvMs9_BZ_BW_3new0ECshhfsHpF03Qr_6netlog(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i1 noundef zeroext %.not.i, i8 noundef %.sroa.01.0.i, ptr noundef nonnull align 8 %1), !dbg !9454
  %i.l = load i64, ptr %i.a, align 8, !dbg !9455, !range !392, !noundef !206
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9456
  %i.n = load ptr, ptr %i.m, align 8, !dbg !9456, !nonnull !206, !align !1323, !noundef !206
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9456
  %i.p = load i8, ptr %i.o, align 8, !dbg !9456, !range !356, !noundef !206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9457
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9458
  store ptr %i.n, ptr %i.q, align 8, !dbg !9458
  br label %bb.d, !dbg !9414

bb.d:                                             ; preds = %bb.a, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit
  %.sink17 = phi i8 [ %i.p, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 2, %bb.a ]
  %.sink = phi i64 [ %i.l, %_RNvMNtNtCsG258MDvU3F_3std4sync6poisonNtB2_4Flag5guard.exit ], [ 1, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9414
  store i8 %.sink17, ptr %i.r, align 8, !dbg !9414
  store i64 %.sink, ptr %0, align 8, !dbg !9414
  ret void, !dbg !9459
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringB1u_EE13new_uninit_inCshhfsHpF03Qr_6netlog() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9460 {
bb.a:
    #dbg_declare(ptr poison, !9563, !DIExpression(), !9569)
    #dbg_value(i64 8, !9564, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9570)
    #dbg_value(i64 640, !9564, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9570)
    #dbg_declare(ptr poison, !9571, !DIExpression(), !9605)
    #dbg_value(i64 8, !9599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9607)
    #dbg_value(i64 640, !9599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9607)
    #dbg_value(ptr poison, !9202, !DIExpression(), !9608)
    #dbg_value(ptr poison, !9209, !DIExpression(), !9610)
    #dbg_value(i64 8, !9206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9608)
    #dbg_value(i64 8, !9212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9610)
    #dbg_value(i64 640, !9206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9608)
    #dbg_value(i64 640, !9212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9610)
    #dbg_value(i8 0, !9213, !DIExpression(), !9610)
    #dbg_value(i64 8, !8740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9612)
    #dbg_value(i64 8, !8772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9614)
    #dbg_value(i64 640, !8740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9612)
    #dbg_value(i64 640, !8772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9614)
    #dbg_value(i1 false, !8746, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9612)
    #dbg_value(i64 640, !8747, !DIExpression(), !9616)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !9617
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(640) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 640, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !9618 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !9619
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !9620, !prof !458

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 640) #30, !dbg !9621
  unreachable, !dbg !9621

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !9622
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs_NtCsexYYUdYSQU6_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringB1p_EE13new_uninit_inCshhfsHpF03Qr_6netlog() unnamed_addr #1 personality ptr @rust_eh_personality !dbg !9623 {
bb.a:
    #dbg_declare(ptr poison, !9640, !DIExpression(), !9646)
    #dbg_value(i64 8, !9641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9647)
    #dbg_value(i64 544, !9641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9647)
    #dbg_declare(ptr poison, !9648, !DIExpression(), !9682)
    #dbg_value(i64 8, !9676, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9684)
    #dbg_value(i64 544, !9676, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9684)
    #dbg_value(ptr poison, !9202, !DIExpression(), !9685)
    #dbg_value(ptr poison, !9209, !DIExpression(), !9687)
    #dbg_value(i64 8, !9206, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9685)
    #dbg_value(i64 8, !9212, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9687)
    #dbg_value(i64 544, !9206, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9685)
    #dbg_value(i64 544, !9212, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9687)
    #dbg_value(i8 0, !9213, !DIExpression(), !9687)
    #dbg_value(i64 8, !8740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9689)
    #dbg_value(i64 8, !8772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9691)
    #dbg_value(i64 544, !8740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9689)
    #dbg_value(i64 544, !8772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9691)
    #dbg_value(i1 false, !8746, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9689)
    #dbg_value(i64 544, !8747, !DIExpression(), !9693)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #28, !dbg !9694
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(544) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 544, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !9695 ; 2 uses
  %i.b = icmp eq ptr %i.a, null, !dbg !9696
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !9697, !prof !458

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #30, !dbg !9698
  unreachable, !dbg !9698

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a, !dbg !9699
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10take_frontCshhfsHpF03Qr_6netlog(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #7 !dbg !9700 {
bb.a:
    #dbg_value(ptr %1, !9805, !DIExpression(), !9825)
    #dbg_declare(ptr poison, !9806, !DIExpression(), !9826)
    #dbg_value(i64 0, !9827, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9863)
    #dbg_value(ptr %1, !9878, !DIExpression(), !9885)
    #dbg_value(ptr %1, !9887, !DIExpression(), !9894)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8, !dbg !9896
    #dbg_value(i64 %.sroa.01.0.copyload, !9897, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9921)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9896
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !9896 ; 2 uses
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload, !9897, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9921)
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9896
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !9896 ; 5 uses
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload, !9897, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9921)
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !9896
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8, !dbg !9896 ; 6 uses
    #dbg_value(i64 %.sroa.5.sroa.6.0.copyload, !9897, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !9921)
  store i64 0, ptr %1, align 8, !dbg !9923
  %i.a = trunc nuw i64 %.sroa.01.0.copyload to i1, !dbg !9924
  br i1 %i.a, label %bb.b, label %bb.c, !dbg !9924

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %.sroa.5.sroa.0.0.copyload, null, !dbg !9922
  br i1 %.not, label %bb.f, label %bb.e, !dbg !9925

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !9926
  br label %bb.d, !dbg !9933

bb.d:                                             ; preds = %bb.e, %._crit_edge, %bb.c
  ret void, !dbg !9933

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %.sroa.5.sroa.0.0.copyload, !9823, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9934)
    #dbg_value(ptr %.sroa.5.sroa.5.0.copyload, !9823, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9934)
end_hunk_1
begin_hunk_2_@_RNvMsb_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10take_frontCshhfsHpF03Qr_6netlog:bb.a
    #dbg_value(ptr %i.h, !9858, !DIExpression(), !9967)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 544, !dbg !9968
    #dbg_value(ptr %i.i, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.i, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.i, !9988, !DIExpression(), !9991)
  %i.j = load ptr, ptr %i.i, align 8, !dbg !9993, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.j, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.j, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.j, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.j, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.j, !9861, !DIExpression(), !9964)
    #dbg_value(i64 %.sroa.020.036, !9873, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %.sroa.020.036, !9872, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %.sroa.020.036, !9821, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(i64 %.sroa.020.036, !9940, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %.sroa.020.036, !9876, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %.sroa.020.036, !9827, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(ptr %i.j, !9876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(ptr %i.j, !9827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %i.j, !9858, !DIExpression(), !9967)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 544, !dbg !9968
    #dbg_value(ptr %i.k, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.k, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.k, !9988, !DIExpression(), !9991)
  %i.l = load ptr, ptr %i.k, align 8, !dbg !9993, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.l, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.l, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.l, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.l, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.l, !9861, !DIExpression(), !9964)
    #dbg_value(i64 %.sroa.020.036, !9873, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %.sroa.020.036, !9872, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %.sroa.020.036, !9821, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(i64 %.sroa.020.036, !9940, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %.sroa.020.036, !9876, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %.sroa.020.036, !9827, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(ptr %i.l, !9876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(ptr %i.l, !9827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %i.l, !9858, !DIExpression(), !9967)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 544, !dbg !9968
    #dbg_value(ptr %i.m, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.m, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.m, !9988, !DIExpression(), !9991)
  %i.n = load ptr, ptr %i.m, align 8, !dbg !9993, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.n, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.n, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.n, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.n, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.n, !9861, !DIExpression(), !9964)
    #dbg_value(i64 %.sroa.020.036, !9873, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %.sroa.020.036, !9872, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %.sroa.020.036, !9821, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(i64 %.sroa.020.036, !9940, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %.sroa.020.036, !9876, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %.sroa.020.036, !9827, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(ptr %i.n, !9876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(ptr %i.n, !9827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %i.n, !9858, !DIExpression(), !9967)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 544, !dbg !9968
    #dbg_value(ptr %i.o, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.o, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.o, !9988, !DIExpression(), !9991)
  %i.p = load ptr, ptr %i.o, align 8, !dbg !9993, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.p, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.p, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.p, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.p, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.p, !9861, !DIExpression(), !9964)
    #dbg_value(i64 %.sroa.020.036, !9873, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %.sroa.020.036, !9872, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %.sroa.020.036, !9821, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(i64 %.sroa.020.036, !9940, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %.sroa.020.036, !9876, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %.sroa.020.036, !9827, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(ptr %i.p, !9876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(ptr %i.p, !9827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %i.p, !9858, !DIExpression(), !9967)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 544, !dbg !9968
    #dbg_value(ptr %i.q, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.q, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.q, !9988, !DIExpression(), !9991)
  %i.r = load ptr, ptr %i.q, align 8, !dbg !9993, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.r, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.r, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.r, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.r, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.r, !9861, !DIExpression(), !9964)
    #dbg_value(i64 %.sroa.020.036, !9873, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %.sroa.020.036, !9872, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %.sroa.020.036, !9821, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(i64 %.sroa.020.036, !9940, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %.sroa.020.036, !9876, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %.sroa.020.036, !9827, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(ptr %i.r, !9876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(ptr %i.r, !9827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %i.r, !9858, !DIExpression(), !9967)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 544, !dbg !9968
    #dbg_value(ptr %i.s, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.s, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.s, !9988, !DIExpression(), !9991)
  %i.t = load ptr, ptr %i.s, align 8, !dbg !9993, !nonnull !206, !noundef !206
    #dbg_value(ptr %i.t, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.t, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.t, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.t, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.t, !9861, !DIExpression(), !9964)
    #dbg_value(i64 %.sroa.020.036, !9873, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %.sroa.020.036, !9872, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %.sroa.020.036, !9821, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9937)
    #dbg_value(i64 %.sroa.020.036, !9940, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %.sroa.020.036, !9876, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9966)
    #dbg_value(i64 %.sroa.020.036, !9827, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(ptr %i.t, !9876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9966)
    #dbg_value(ptr %i.t, !9827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(ptr %i.t, !9858, !DIExpression(), !9967)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 544, !dbg !9968
    #dbg_value(ptr %i.u, !9969, !DIExpression(), !9978)
    #dbg_value(ptr %i.u, !9980, !DIExpression(), !9986)
    #dbg_value(ptr %i.u, !9988, !DIExpression(), !9991)
  %i.v = load ptr, ptr %i.u, align 8, !dbg !9993, !nonnull !206, !noundef !206 ; 2 uses
    #dbg_value(ptr %i.v, !9821, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9937)
    #dbg_value(ptr %i.v, !9872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9938)
    #dbg_value(ptr %i.v, !9873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9939)
    #dbg_value(ptr %i.v, !9940, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9962)
    #dbg_value(ptr %i.v, !9861, !DIExpression(), !9964)
  %i.w = add i64 %.sroa.020.036, -8, !dbg !9994   ; 2 uses
    #dbg_value(i64 %i.w, !9940, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9962)
    #dbg_value(i64 %i.w, !9873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9939)
    #dbg_value(i64 %i.w, !9872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9938)
    #dbg_value(i64 %i.w, !9821, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9937)
  %i.x = icmp eq i64 %i.w, 0, !dbg !9965
  br i1 %i.x, label %._crit_edge, label %.lr.ph, !dbg !9965
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef align 8 ptr @_RNvMsc_NtNtNtCsexYYUdYSQU6_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingNtNtBb_6string6StringB1J_E10init_frontCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef align 8 captures(ret: address, provenance) dereferenceable(64) %0) unnamed_addr #8 !dbg !10000 {
bb.a:
    #dbg_value(ptr %0, !10019, !DIExpression(), !10025)
    #dbg_value(i64 0, !10026, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10033)
  %i.a = load i64, ptr %0, align 8, !dbg !10045, !range !392, !noundef !206
  %i.b = trunc nuw i64 %i.a to i1, !dbg !10046    ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !10046

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10045 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !dbg !10045, !noundef !206
  %.not = icmp eq ptr %i.d, null, !dbg !10045
  br i1 %.not, label %bb.d, label %bb.c, !dbg !10046

bb.c:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10047
  %.sroa.0.0 = select i1 %i.b, ptr %i.e, ptr null, !dbg !10047
  ret ptr %.sroa.0.0, !dbg !10048

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !10020, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10049)
    #dbg_value(ptr %i.c, !10050, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10058)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10060 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !10060
  %i.h = load i64, ptr %i.g, align 8, !dbg !10060, !noundef !206 ; 5 uses
    #dbg_value(i64 %i.h, !10039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %i.h, !10040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %i.h, !10063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
  %.sroa.013.029 = load ptr, ptr %i.f, align 8, !dbg !10069, !nonnull !206, !noundef !206 ; 3 uses
  %i.i = icmp eq i64 %i.h, 0, !dbg !10070
  br i1 %i.i, label %._crit_edge, label %.lr.ph.preheader, !dbg !10070

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter = and i64 %i.h, 7, !dbg !10070        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !10070
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !10070

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.013.031.prol = phi ptr [ %.sroa.013.0.prol, %.lr.ph.prol ], [ %.sroa.013.029, %.lr.ph.preheader ]
  %.sroa.011.030.prol = phi i64 [ %i.k, %.lr.ph.prol ], [ %i.h, %.lr.ph.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
    #dbg_value(i64 %.sroa.011.030.prol, !10063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030.prol, !10043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030.prol, !10026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.031.prol, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.031.prol, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.031.prol, !10029, !DIExpression(), !10072)
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.013.031.prol, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
  %i.k = add i64 %.sroa.011.030.prol, -1, !dbg !10074 ; 2 uses
    #dbg_value(i64 %i.k, !10039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %i.k, !10040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %i.k, !10063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.prol = load ptr, ptr %i.j, align 8, !dbg !10069, !nonnull !206, !noundef !206 ; 3 uses
    #dbg_value(ptr %.sroa.013.0.prol, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.prol, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.prol, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.prol, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
  %prol.iter.next = add i64 %prol.iter, 1, !dbg !10070 ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter, !dbg !10070
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !dbg !10070, !llvm.loop !10075

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.sroa.013.0.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.013.031.unr = phi ptr [ %.sroa.013.029, %.lr.ph.preheader ], [ %.sroa.013.0.prol, %.lr.ph.prol ]
  %.sroa.011.030.unr = phi i64 [ %i.h, %.lr.ph.preheader ], [ %i.k, %.lr.ph.prol ]
  %i.l = icmp ult i64 %i.h, 8, !dbg !10070
  br i1 %i.l, label %._crit_edge, label %.lr.ph, !dbg !10070

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.d
  %.sroa.013.0.lcssa = phi ptr [ %.sroa.013.029, %bb.d ], [ %.sroa.013.0.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %.sroa.013.0.7, %.lr.ph ], !dbg !10069
  store i64 1, ptr %0, align 8, !dbg !10076
  store ptr %.sroa.013.0.lcssa, ptr %i.c, align 8, !dbg !10076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !dbg !10076
  br label %bb.c, !dbg !10077

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.013.031 = phi ptr [ %.sroa.013.0.7, %.lr.ph ], [ %.sroa.013.031.unr, %.lr.ph.prol.loopexit ]
  %.sroa.011.030 = phi i64 [ %i.u, %.lr.ph ], [ %.sroa.011.030.unr, %.lr.ph.prol.loopexit ]
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.031, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.031, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.031, !10029, !DIExpression(), !10072)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.013.031, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0 = load ptr, ptr %i.m, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0, !10029, !DIExpression(), !10072)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.013.0, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.1 = load ptr, ptr %i.n, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0.1, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.1, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.1, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.1, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 2, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.1, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0.1, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.1, !10029, !DIExpression(), !10072)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.013.0.1, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.2 = load ptr, ptr %i.o, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0.2, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.2, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.2, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.2, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 3, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.2, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0.2, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.2, !10029, !DIExpression(), !10072)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.013.0.2, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.3 = load ptr, ptr %i.p, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0.3, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.3, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.3, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.3, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 4, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.3, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0.3, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.3, !10029, !DIExpression(), !10072)
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.013.0.3, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.4 = load ptr, ptr %i.q, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0.4, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.4, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.4, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.4, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 5, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.4, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0.4, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.4, !10029, !DIExpression(), !10072)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.013.0.4, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.5 = load ptr, ptr %i.r, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0.5, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.5, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.5, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.5, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 6, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.5, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0.5, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.5, !10029, !DIExpression(), !10072)
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.013.0.5, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
    #dbg_value(i64 %.sroa.011.030, !10039, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10040, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.6 = load ptr, ptr %i.s, align 8, !dbg !10069, !nonnull !206, !noundef !206
    #dbg_value(ptr %.sroa.013.0.6, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.6, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.6, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.6, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(i64 %.sroa.011.030, !10063, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10066)
    #dbg_value(i64 %.sroa.011.030, !10043, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10071)
    #dbg_value(i64 %.sroa.011.030, !10026, !DIExpression(DW_OP_constu, 7, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.6, !10043, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10071)
    #dbg_value(ptr %.sroa.013.0.6, !10026, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10033)
    #dbg_value(ptr %.sroa.013.0.6, !10029, !DIExpression(), !10072)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.013.0.6, i64 544, !dbg !10073
    #dbg_value(ptr poison, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr poison, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr poison, !10031, !DIExpression(), !10068)
  %i.u = add i64 %.sroa.011.030, -8, !dbg !10074  ; 2 uses
    #dbg_value(i64 %i.u, !10039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10061)
    #dbg_value(i64 %i.u, !10040, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10062)
    #dbg_value(i64 %i.u, !10063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10066)
  %.sroa.013.0.7 = load ptr, ptr %i.t, align 8, !dbg !10069, !nonnull !206, !noundef !206 ; 2 uses
    #dbg_value(ptr %.sroa.013.0.7, !10031, !DIExpression(), !10068)
    #dbg_value(ptr %.sroa.013.0.7, !10063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10066)
    #dbg_value(ptr %.sroa.013.0.7, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10062)
    #dbg_value(ptr %.sroa.013.0.7, !10039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10061)
  %i.v = icmp eq i64 %i.u, 0, !dbg !10070
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !dbg !10070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownxINtB2_10EquivalentxE10equivalentCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #4 !dbg !10078 {
bb.a:
    #dbg_value(ptr %0, !10084, !DIExpression(), !10088)
    #dbg_value(ptr %1, !10085, !DIExpression(), !10088)
    #dbg_value(ptr poison, !10089, !DIExpression(), !10099)
    #dbg_value(ptr poison, !10095, !DIExpression(), !10101)
  %.val = load i64, ptr %0, align 8, !dbg !10102, !noundef !206
  %.val2 = load i64, ptr %1, align 8, !dbg !10102, !noundef !206
    #dbg_value(ptr poison, !10103, !DIExpression(), !10109)
    #dbg_value(ptr poison, !10108, !DIExpression(), !10109)
  %i.a = icmp eq i64 %.val, %.val2, !dbg !10111
  ret i1 %i.a, !dbg !10112
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCshhfsHpF03Qr_6netlog9constants1__NtB7_10ClientInfoNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB10_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !10113 {
bb.a:
    #dbg_value(ptr %0, !10123, !DIExpression(), !10125)
    #dbg_value(ptr %1, !10124, !DIExpression(), !10125)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 16), !dbg !10126
  ret i1 %i.a, !dbg !10127
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCshhfsHpF03Qr_6netlog9constantss0_1__NtB7_13ConstantsLineNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB16_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !10128 {
bb.a:
    #dbg_value(ptr %0, !10134, !DIExpression(), !10136)
    #dbg_value(ptr %1, !10135, !DIExpression(), !10136)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 16), !dbg !10137
  ret i1 %i.a, !dbg !10138
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXNvNtCshhfsHpF03Qr_6netlog9constantss_1__NtB7_9ConstantsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB2_14___FieldVisitorNtB10_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !10139 {
bb.a:
    #dbg_value(ptr %0, !10145, !DIExpression(), !10147)
    #dbg_value(ptr %1, !10146, !DIExpression(), !10147)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 16), !dbg !10148
  ret i1 %i.a, !dbg !10149
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCshhfsHpF03Qr_6netlog9constants1__NtBa_10ClientInfoNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB13_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !10150 {
bb.a:
    #dbg_value(ptr %0, !10163, !DIExpression(), !10165)
    #dbg_value(ptr %1, !10164, !DIExpression(), !10165)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 17), !dbg !10166
  ret i1 %i.a, !dbg !10167
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCshhfsHpF03Qr_6netlog9constantss0_1__NtBa_13ConstantsLineNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB19_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !10168 {
bb.a:
    #dbg_value(ptr %0, !10183, !DIExpression(), !10185)
    #dbg_value(ptr %1, !10184, !DIExpression(), !10185)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 20), !dbg !10186
  ret i1 %i.a, !dbg !10187
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCshhfsHpF03Qr_6netlog9constantss_1__NtBa_9ConstantsNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB13_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 !dbg !10188 {
bb.a:
    #dbg_value(ptr %0, !10200, !DIExpression(), !10202)
    #dbg_value(ptr %1, !10201, !DIExpression(), !10202)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 16), !dbg !10203
  ret i1 %i.a, !dbg !10204
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionNtNtNtCseN4S6VTYCs1_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBR_3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !2667 {
bb.a:
    #dbg_value(ptr %0, !2666, !DIExpression(), !10205)
  %.val = load i64, ptr %0, align 8, !dbg !10206, !range !985, !noundef !206 ; 2 uses
    #dbg_value(ptr poison, !1604, !DIExpression(), !10207)
    #dbg_value(i64 8, !1611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10207)
    #dbg_value(i64 8, !1611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10207)
    #dbg_value(ptr poison, !1617, !DIExpression(), !10209)
    #dbg_value(i64 8, !1641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10209)
    #dbg_value(i64 8, !1641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10209)
    #dbg_value(i64 8, !1648, !DIExpression(), !10211)
  %i.a = icmp eq i64 %.val, 0, !dbg !10213
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit, label %bb.b, !dbg !10213

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10206
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !10206, !nonnull !206, !noundef !206
    #dbg_value(i64 %.val, !1653, !DIExpression(), !10211)
  %i.c = shl nuw i64 %.val, 3, !dbg !10214
    #dbg_value(ptr %.val1, !1612, !DIExpression(), !10215)
    #dbg_value(i64 8, !1614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10215)
    #dbg_value(i64 %i.c, !1614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10215)
    #dbg_value(ptr poison, !1659, !DIExpression(), !10216)
    #dbg_value(ptr poison, !1671, !DIExpression(), !10218)
    #dbg_value(ptr %.val1, !1667, !DIExpression(), !10216)
    #dbg_value(ptr %.val1, !1676, !DIExpression(), !10218)
    #dbg_value(ptr %.val1, !1680, !DIExpression(), !10220)
    #dbg_value(ptr %.val1, !1689, !DIExpression(), !10222)
    #dbg_value(i64 8, !1668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10216)
    #dbg_value(i64 8, !1677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10218)
    #dbg_value(i64 8, !1686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10220)
    #dbg_value(i64 8, !1692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10222)
    #dbg_value(i64 %i.c, !1668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10216)
    #dbg_value(i64 %i.c, !1677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10218)
    #dbg_value(i64 %i.c, !1686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10220)
    #dbg_value(i64 %i.c, !1692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10222)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !10224
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit, !dbg !10225

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !10226
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCseN4S6VTYCs1_14regex_automata4util4pool5inner9CacheLineINtNtNtNtCsG258MDvU3F_3std4sync6poison5mutex5MutexINtNtB7_3vec3VecINtNtB7_5boxed3BoxNtNtNtBV_4meta5regex5CacheEEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !10227 {
bb.a:
    #dbg_value(ptr %0, !10232, !DIExpression(), !10233)
  %.val = load i64, ptr %0, align 8, !dbg !10234, !range !985, !noundef !206 ; 2 uses
    #dbg_value(ptr poison, !1604, !DIExpression(), !10235)
    #dbg_value(i64 64, !1611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10235)
    #dbg_value(i64 64, !1611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10235)
    #dbg_value(ptr poison, !1617, !DIExpression(), !10237)
    #dbg_value(i64 64, !1641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10237)
    #dbg_value(i64 64, !1641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10237)
    #dbg_value(i64 64, !1648, !DIExpression(), !10239)
  %i.a = icmp eq i64 %.val, 0, !dbg !10241
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit, label %bb.b, !dbg !10241

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10234
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !10234, !nonnull !206, !noundef !206
    #dbg_value(i64 %.val, !1653, !DIExpression(), !10239)
  %i.c = shl nuw i64 %.val, 6, !dbg !10242
    #dbg_value(ptr %.val1, !1612, !DIExpression(), !10243)
    #dbg_value(i64 64, !1614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10243)
    #dbg_value(i64 %i.c, !1614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10243)
    #dbg_value(ptr poison, !1659, !DIExpression(), !10244)
    #dbg_value(ptr poison, !1671, !DIExpression(), !10246)
    #dbg_value(ptr %.val1, !1667, !DIExpression(), !10244)
    #dbg_value(ptr %.val1, !1676, !DIExpression(), !10246)
    #dbg_value(ptr %.val1, !1680, !DIExpression(), !10248)
    #dbg_value(ptr %.val1, !1689, !DIExpression(), !10250)
    #dbg_value(i64 64, !1668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10244)
    #dbg_value(i64 64, !1677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10246)
    #dbg_value(i64 64, !1686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10248)
    #dbg_value(i64 64, !1692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10250)
    #dbg_value(i64 %i.c, !1668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10244)
    #dbg_value(i64 %i.c, !1677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10246)
    #dbg_value(i64 %i.c, !1686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10248)
    #dbg_value(i64 %i.c, !1692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10250)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 64) #28, !dbg !10252
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit, !dbg !10253

_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit: ; preds = %bb.a, %bb.b
  ret void, !dbg !10254
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshhfsHpF03Qr_6netlog(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #2 !dbg !10255 {
bb.a:
    #dbg_value(ptr %0, !10260, !DIExpression(), !10261)
  %.val = load i64, ptr %0, align 8, !dbg !10262, !range !985, !noundef !206 ; 2 uses
    #dbg_value(ptr poison, !1604, !DIExpression(), !10263)
    #dbg_value(i64 8, !1611, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10263)
    #dbg_value(i64 24, !1611, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10263)
    #dbg_value(ptr poison, !1617, !DIExpression(), !10265)
    #dbg_value(i64 8, !1641, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10265)
    #dbg_value(i64 24, !1641, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10265)
    #dbg_value(i64 24, !1648, !DIExpression(), !10267)
  %i.a = icmp eq i64 %.val, 0, !dbg !10269
  br i1 %i.a, label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit, label %bb.b, !dbg !10269

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10262
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !10262, !nonnull !206, !noundef !206
    #dbg_value(i64 %.val, !1653, !DIExpression(), !10267)
  %i.c = mul nuw i64 %.val, 24, !dbg !10270
    #dbg_value(ptr %.val1, !1612, !DIExpression(), !10271)
    #dbg_value(i64 8, !1614, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10271)
    #dbg_value(i64 %i.c, !1614, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10271)
    #dbg_value(ptr poison, !1659, !DIExpression(), !10272)
    #dbg_value(ptr poison, !1671, !DIExpression(), !10274)
    #dbg_value(ptr %.val1, !1667, !DIExpression(), !10272)
    #dbg_value(ptr %.val1, !1676, !DIExpression(), !10274)
    #dbg_value(ptr %.val1, !1680, !DIExpression(), !10276)
    #dbg_value(ptr %.val1, !1689, !DIExpression(), !10278)
    #dbg_value(i64 8, !1668, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10272)
    #dbg_value(i64 8, !1677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10274)
    #dbg_value(i64 8, !1686, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10276)
    #dbg_value(i64 8, !1692, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10278)
    #dbg_value(i64 %i.c, !1668, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10272)
    #dbg_value(i64 %i.c, !1677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10274)
    #dbg_value(i64 %i.c, !1686, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10276)
    #dbg_value(i64 %i.c, !1692, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10278)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #28, !dbg !10280
  br label %_RNvMs3_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner10deallocateCshhfsHpF03Qr_6netlog.exit, !dbg !10281
end_hunk_2
