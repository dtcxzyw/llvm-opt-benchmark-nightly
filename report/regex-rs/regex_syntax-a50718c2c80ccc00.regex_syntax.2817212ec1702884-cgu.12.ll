Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_syntax-a50718c2c80ccc00.regex_syntax.2817212ec1702884-cgu.12?download=true
inline.NumInlined: 76
inline.NumDeleted: 51
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvCs3roNzt6HBWW_12regex_syntax11escape_into:bb.a
  br i1 %i.at, label %bb.h, label %bb.i, !dbg !1136

bb.g:                                             ; preds = %.thread, %bb.e
  %i.bl = phi i64 [ %i.ar, %.thread ], [ %i.an, %bb.e ] ; 2 uses
    #dbg_value(i64 1, !523, !DIExpression(), !1098)
    #dbg_value(i64 1, !575, !DIExpression(), !1028)
  tail call void @_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VechE7reserveCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef 1), !dbg !1099
    #dbg_value(ptr %2, !595, !DIExpression(), !1100)
  %i.bm = load ptr, ptr %i.d, align 8, !dbg !1102, !alias.scope !1106, !nonnull !17, !noundef !17
    #dbg_value(ptr %i.bm, !588, !DIExpression(), !1037)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bl, !dbg !1109
    #dbg_value(i32 %.sroa.4.0.i.ph, !624, !DIExpression(), !1110)
    #dbg_value(ptr %i.bn, !632, !DIExpression(), !1110)
    #dbg_value(ptr %i.bn, !645, !DIExpression(), !1112)
    #dbg_value(ptr %i.bn, !645, !DIExpression(), !1114)
    #dbg_value(ptr %i.bn, !645, !DIExpression(), !1116)
    #dbg_value(ptr %i.bn, !645, !DIExpression(), !1118)
    #dbg_value(ptr %i.bn, !645, !DIExpression(), !1120)
    #dbg_value(ptr %i.bn, !645, !DIExpression(), !1122)
    #dbg_value(i64 1, !648, !DIExpression(), !1112)
    #dbg_value(i64 1, !648, !DIExpression(), !1114)
    #dbg_value(i64 1, !648, !DIExpression(), !1116)
    #dbg_value(i64 2, !648, !DIExpression(), !1118)
    #dbg_value(i64 2, !648, !DIExpression(), !1120)
    #dbg_value(i64 3, !648, !DIExpression(), !1122)
    #dbg_value(i64 1, !633, !DIExpression(), !1124)
  %i.bo = trunc nuw nsw i32 %.sroa.4.0.i.ph to i8, !dbg !1137
  store i8 %i.bo, ptr %i.bn, align 1, !dbg !1137
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !1138

bb.h:                                             ; preds = %bb.f
  %i.bp = or disjoint i8 %i.bb, -64, !dbg !1140
  store i8 %i.bp, ptr %i.aw, align 1, !dbg !1140
  %i.bq = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !1141
  store i8 %i.az, ptr %i.bq, align 1, !dbg !1142
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !1143

bb.i:                                             ; preds = %bb.f
  br i1 %i.au, label %bb.j, label %bb.k, !dbg !1145

bb.j:                                             ; preds = %bb.i
  %i.br = or disjoint i8 %i.bf, -32, !dbg !1146
  store i8 %i.br, ptr %i.aw, align 1, !dbg !1146
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !1147
  store i8 %i.bd, ptr %i.bs, align 1, !dbg !1148
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !1149
  store i8 %i.az, ptr %i.bt, align 1, !dbg !1150
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !1143

bb.k:                                             ; preds = %bb.i
  store i8 %i.bk, ptr %i.aw, align 1, !dbg !1151
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 1, !dbg !1152
  store i8 %i.bh, ptr %i.bu, align 1, !dbg !1153
  %i.bv = getelementptr inbounds nuw i8, ptr %i.aw, i64 2, !dbg !1154
  store i8 %i.bd, ptr %i.bv, align 1, !dbg !1155
  %i.bw = getelementptr inbounds nuw i8, ptr %i.aw, i64 3, !dbg !1156
  store i8 %i.az, ptr %i.bw, align 1, !dbg !1157
  br label %_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit, !dbg !1158

_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %i.bx = phi i64 [ %i.bl, %bb.g ], [ %i.an, %bb.h ], [ %i.an, %bb.j ], [ %i.an, %bb.k ]
  %.sroa.0.011.i = phi i64 [ 1, %bb.g ], [ 2, %bb.h ], [ 3, %bb.j ], [ 4, %bb.k ]
    #dbg_value(ptr %2, !663, !DIExpression(), !1159)
  %i.by = add nuw i64 %.sroa.0.011.i, %i.bx, !dbg !1161
    #dbg_value(i64 %i.by, !669, !DIExpression(), !1162)
  store i64 %i.by, ptr %i.c, align 8, !dbg !1163, !alias.scope !1106
    #dbg_value(ptr %.sroa.0.1.ph, !707, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !875)
    #dbg_value(ptr undef, !814, !DIExpression(), !824)
    #dbg_value(ptr undef, !778, !DIExpression(), !823)
    #dbg_value(i32 2, !876, !DIExpression(), !882)
    #dbg_value(ptr undef, !726, !DIExpression(), !821)
    #dbg_value(i64 1, !884, !DIExpression(), !892)
    #dbg_value(ptr %.sroa.0.1.ph, !745, !DIExpression(), !894)
    #dbg_value(ptr %.sroa.0.1.ph, !891, !DIExpression(), !892)
    #dbg_value(ptr %i.a, !747, !DIExpression(), !895)
    #dbg_value(ptr poison, !896, !DIExpression(), !905)
    #dbg_value(ptr poison, !904, !DIExpression(), !907)
  %i.bz = icmp eq ptr %.sroa.0.1.ph, %i.a, !dbg !908
  br i1 %i.bz, label %._crit_edge, label %bb.b, !dbg !909
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvCs3roNzt6HBWW_12regex_syntax17is_word_character(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1164 {
bb.a:
  %i.a = alloca [0 x i8], align 1
    #dbg_value(i32 %0, !1166, !DIExpression(), !1167)
    #dbg_value(i32 %0, !1168, !DIExpression(), !1190)
  %i.b = tail call noundef range(i8 0, 3) i8 @_RNvNtCs3roNzt6HBWW_12regex_syntax7unicode17is_word_character(i32 noundef range(i32 0, 1114112) %0), !dbg !1192 ; 2 uses
    #dbg_value(i8 %i.b, !1193, !DIExpression(), !1206)
    #dbg_value(ptr @0, !1201, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1206)
    #dbg_value(i64 36, !1201, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1206)
    #dbg_declare(ptr %i.a, !1204, !DIExpression(), !1208)
  %i.c = icmp eq i8 %i.b, 2, !dbg !1209
  br i1 %i.c, label %bb.b, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectBM_.exit, !dbg !1210, !prof !1211

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 36, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #19, !dbg !1212
  unreachable, !dbg !1212

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultbNtNtCs3roNzt6HBWW_12regex_syntax7unicode16UnicodeWordErrorE6expectBM_.exit: ; preds = %bb.a
  %i.d = trunc nuw i8 %i.b to i1, !dbg !1213
  ret i1 %i.d, !dbg !1214
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 3) i8 @_RNvCs3roNzt6HBWW_12regex_syntax21try_is_word_character(i32 noundef range(i32 0, 1114112) %0) unnamed_addr #0 !dbg !1169 {
bb.a:
    #dbg_value(i32 %0, !1168, !DIExpression(), !1215)
  %i.a = tail call noundef i8 @_RNvNtCs3roNzt6HBWW_12regex_syntax7unicode17is_word_character(i32 noundef %0), !dbg !1216
  ret i8 %i.a, !dbg !1217
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs3roNzt6HBWW_12regex_syntax6escape(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1218 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !1222, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1225)
    #dbg_value(i64 %2, !1222, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1225)
    #dbg_declare(ptr %i.a, !1223, !DIExpression(), !1226)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1227
  store i64 0, ptr %i.a, align 8, !dbg !1228
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !1228
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !1228
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1228
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !1228
  invoke void @_RNvCs3roNzt6HBWW_12regex_syntax11escape_into(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !1231

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #20
          to label %bb.e unwind label %bb.d, !dbg !1232

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !1233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1232
  ret void, !dbg !1234

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #18, !dbg !1235
  unreachable, !dbg !1235

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !1235
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence7matches(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(9) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1236 {
switch.lookup:
    #dbg_value(ptr poison, !1310, !DIExpression(), !1337)
    #dbg_value(ptr poison, !1342, !DIExpression(), !1345)
  %i.a = alloca [48 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !1278, !DIExpression(), !1346)
    #dbg_value(ptr %0, !1347, !DIExpression(), !1353)
    #dbg_value(ptr %0, !1355, !DIExpression(), !1377)
    #dbg_value(ptr %1, !1279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1346)
    #dbg_value(ptr %1, !1379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1382)
    #dbg_value(ptr %1, !1384, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1393)
    #dbg_value(i64 %2, !1279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1346)
    #dbg_value(i64 %2, !1379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1382)
    #dbg_value(i64 %2, !1384, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1393)
    #dbg_value(i64 %2, !1387, !DIExpression(), !1395)
    #dbg_value(i64 %2, !1396, !DIExpression(), !1400)
  %i.b = load i8, ptr %0, align 1, !dbg !1402, !range !1403, !noundef !17 ; 2 uses
  %narrow = add nuw nsw i8 %i.b, 1, !dbg !1404
  %switch.offset = zext nneg i8 %narrow to i64, !dbg !1404
  %i.c = icmp samesign ult i64 %2, %switch.offset, !dbg !1405
  br i1 %i.c, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.thread, label %bb.a, !dbg !1405

bb.a:                                             ; preds = %switch.lookup
    #dbg_value(ptr %1, !1389, !DIExpression(), !1406)
    #dbg_value(ptr %1, !1399, !DIExpression(), !1400)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !1407
    #dbg_value(ptr %1, !1408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1417)
    #dbg_value(ptr %i.d, !1408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1417)
    #dbg_value(ptr %0, !1413, !DIExpression(), !1417)
    #dbg_value(ptr %1, !1419, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1426)
    #dbg_value(ptr %i.d, !1419, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1426)
    #dbg_value(ptr %0, !1428, !DIExpression(), !1434)
    #dbg_value(ptr %0, !1436, !DIExpression(), !1447)
  %.sroa.0.0.i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1447 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.i.i, !1449, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1461)
    #dbg_value(ptr %.sroa.0.0.i.i, !1465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1467)
    #dbg_value(i8 %i.b, !1449, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1461)
    #dbg_value(i8 %i.b, !1465, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !1467)
    #dbg_value(i8 %i.b, !1455, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !1468)
    #dbg_value(i8 %i.b, !1469, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !1476)
    #dbg_value(ptr %.sroa.0.0.i.i, !1457, !DIExpression(), !1478)
    #dbg_value(ptr %.sroa.0.0.i.i, !1475, !DIExpression(), !1476)
  %i.e = zext nneg i8 %i.b to i64, !dbg !1479
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.0.i.i, i64 %i.e, !dbg !1479
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2, !dbg !1479
    #dbg_value(ptr %.sroa.0.0.i.i, !1425, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1426)
    #dbg_value(ptr %i.g, !1425, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1426)
  call void @_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E3newB1w_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull %1, ptr noundef nonnull %i.d, ptr noundef nonnull readonly %.sroa.0.0.i.i, ptr noundef nonnull readonly %i.g), !dbg !1480
  %.sroa.0.0.copyload = load ptr, ptr %i.a, align 8, !dbg !1481 ; 2 uses
    #dbg_value(ptr %.sroa.0.0.copyload, !1280, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1482)
    #dbg_value(i64 poison, !1280, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1482)
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !1481
  %.sroa.523.0.copyload = load ptr, ptr %.sroa.523.0..sroa_idx, align 8, !dbg !1481 ; 2 uses
    #dbg_value(ptr %.sroa.523.0.copyload, !1280, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !1482)
    #dbg_value(i64 poison, !1280, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !1482)
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !1481
  %.sroa.624.0.copyload = load i64, ptr %.sroa.624.0..sroa_idx, align 8, !dbg !1481 ; 3 uses
    #dbg_value(i64 %.sroa.624.0.copyload, !1280, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1482)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !1481
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !1481 ; 2 uses
    #dbg_value(i64 %.sroa.8.0.copyload, !1280, !DIExpression(DW_OP_LLVM_fragment, 320, 64), !1482)
  %umax = tail call i64 @llvm.umax.i64(i64 %.sroa.624.0.copyload, i64 %.sroa.8.0.copyload), !dbg !1483
    #dbg_value(i64 %.sroa.624.0.copyload, !1280, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1482)
    #dbg_value(ptr undef, !1342, !DIExpression(), !1345)
    #dbg_value(ptr undef, !1310, !DIExpression(), !1337)
  %exitcond.not31.not = icmp ult i64 %.sroa.624.0.copyload, %.sroa.8.0.copyload, !dbg !1484
  br i1 %exitcond.not31.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.preheader, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.thread, !dbg !1484

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.preheader: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.523.0.copyload) ]
  br label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit, !dbg !1485

bb.b:                                             ; preds = %bb.c
  %i.h = add i64 %.sroa.624.032, 1, !dbg !1494    ; 2 uses
    #dbg_value(i64 %i.h, !1280, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1482)
    #dbg_value(i64 %i.h, !1280, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1482)
    #dbg_value(ptr undef, !1342, !DIExpression(), !1345)
    #dbg_value(ptr undef, !1310, !DIExpression(), !1337)
  %exitcond.not = icmp eq i64 %i.h, %umax, !dbg !1484
  br i1 %exitcond.not, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.thread, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit, !dbg !1484

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.preheader, %bb.b
  %.sroa.624.032 = phi i64 [ %i.h, %bb.b ], [ %.sroa.624.0.copyload, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.preheader ] ; 3 uses
    #dbg_value(i64 %.sroa.624.032, !1280, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !1482)
    #dbg_value(i64 %.sroa.624.032, !1335, !DIExpression(), !1495)
    #dbg_value(i64 %.sroa.624.032, !1280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !1482)
    #dbg_value(ptr poison, !1496, !DIExpression(), !1502)
    #dbg_value(i64 %.sroa.624.032, !1501, !DIExpression(), !1502)
    #dbg_value(ptr poison, !1504, !DIExpression(), !1511)
    #dbg_value(i64 %.sroa.624.032, !1510, !DIExpression(), !1511)
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %.sroa.523.0.copyload, i64 %.sroa.624.032, !dbg !1513 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 %.sroa.624.032, !dbg !1516
  %i.k = load i8, ptr %i.j, align 1, !dbg !1519, !noundef !17 ; 2 uses
    #dbg_value(i8 %i.k, !1307, !DIExpression(), !1520)
    #dbg_value(i8 %i.k, !1492, !DIExpression(), !1521)
    #dbg_value(ptr %i.i, !1309, !DIExpression(), !1520)
    #dbg_value(ptr %i.i, !1491, !DIExpression(), !1521)
  %i.l = load i8, ptr %i.i, align 1, !dbg !1485, !noundef !17
  %.not21 = icmp ugt i8 %i.l, %i.k, !dbg !1485
  br i1 %.not21, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.thread, label %bb.c, !dbg !1485

_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.thread: ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit, %bb.c, %bb.b, %bb.a, %switch.lookup
  %.sroa.0.0 = phi i1 [ false, %switch.lookup ], [ true, %bb.a ], [ true, %bb.b ], [ false, %bb.c ], [ false, %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit ], !dbg !1346
  ret i1 %.sroa.0.0, !dbg !1522

bb.c:                                             ; preds = %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit
    #dbg_value(i64 %.sroa.624.032, !1280, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64), !1482)
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1, !dbg !1523
  %i.n = load i8, ptr %i.m, align 1, !dbg !1523, !noundef !17
  %.not22 = icmp ugt i8 %i.k, %i.n, !dbg !1524
  br i1 %.not22, label %_RNvXs3_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBX_NtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEEINtB5_7ZipImplBW_B1o_E4nextB1w_.exit.thread, label %bb.b, !dbg !1525
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_RNvMNtCs3roNzt6HBWW_12regex_syntax4utf8NtB2_12Utf8Sequence7reverse(ptr noalias nofree noundef captures(none) dereferenceable(9) %0) unnamed_addr #1 !dbg !1526 {
bb.a:
    #dbg_value(ptr %0, !1532, !DIExpression(), !1542)
  %i.a = load i8, ptr %0, align 1, !dbg !1543, !range !1403, !noundef !17
  switch i8 %i.a, label %default.unreachable45 [
    i8 0, label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit
    i8 1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i
    i8 2, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i33
    i8 3, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i37
  ], !dbg !1544

default.unreachable45:                            ; preds = %bb.a
  unreachable

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit.sink.split: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i33, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i37
  %.sink47 = phi i64 [ 6, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i37 ], [ 6, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i33 ], [ 4, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i ]
  %.sink = phi i8 [ %i.y, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i37 ], [ %i.m, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i33 ], [ %i.g, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink47, !dbg !1545
  store i8 %.sink, ptr %i.b, align 1, !dbg !1545, !noalias !17
  br label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit, !dbg !1603

_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit: ; preds = %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit.sink.split, %bb.a
  ret void, !dbg !1603

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1604 ; 2 uses
    #dbg_value(ptr %i.c, !1533, !DIExpression(), !1605)
    #dbg_value(ptr %i.c, !1578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1606)
    #dbg_value(i64 2, !1578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1606)
    #dbg_value(i64 1, !1595, !DIExpression(), !1608)
    #dbg_value(ptr %i.c, !1597, !DIExpression(), !1609)
    #dbg_value(ptr %0, !1599, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value), !1609)
    #dbg_value(ptr %i.c, !1600, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1610)
    #dbg_value(i64 1, !1600, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1610)
    #dbg_value(ptr %0, !1602, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1610)
    #dbg_value(i64 1, !1602, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611), !dbg !1614
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1615), !dbg !1614
    #dbg_value(ptr %i.c, !1567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1617)
    #dbg_value(i64 1, !1567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1617)
    #dbg_value(ptr %0, !1568, !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1617)
    #dbg_value(i64 1, !1568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1617)
    #dbg_value(i64 1, !1569, !DIExpression(), !1617)
    #dbg_value(ptr %i.c, !1570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1619)
    #dbg_value(i64 1, !1570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1619)
    #dbg_value(i64 0, !1572, !DIExpression(), !1620)
    #dbg_value(!DIArgList(ptr %i.c, i64 0), !1552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1621)
    #dbg_value(ptr %i.c, !1552, !DIExpression(), !1621)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3, !dbg !1623 ; 2 uses
    #dbg_value(ptr %i.d, !1553, !DIExpression(), !1621)
  %i.e = load i8, ptr %i.c, align 1, !dbg !1624, !alias.scope !1611, !noalias !1615, !noundef !17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !1624
  %i.g = load i8, ptr %i.f, align 1, !dbg !1624, !alias.scope !1611, !noalias !1615, !noundef !17
  %i.h = load i16, ptr %i.d, align 1, !dbg !1624, !alias.scope !1615, !noalias !1611
  store i16 %i.h, ptr %i.c, align 1, !dbg !1624, !alias.scope !1611, !noalias !1615
  store i8 %i.e, ptr %i.d, align 1, !dbg !1624, !alias.scope !1615, !noalias !1611
    #dbg_value(i64 1, !1572, !DIExpression(), !1620)
  br label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit.sink.split, !dbg !1603

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i33: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1625 ; 2 uses
    #dbg_value(ptr %i.i, !1536, !DIExpression(), !1626)
    #dbg_value(ptr %i.i, !1578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1627)
    #dbg_value(i64 3, !1578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1627)
    #dbg_value(i64 1, !1587, !DIExpression(), !1629)
    #dbg_value(ptr %i.i, !1589, !DIExpression(), !1630)
    #dbg_value(ptr %0, !1591, !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value), !1630)
    #dbg_value(ptr %i.i, !1592, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1631)
    #dbg_value(i64 1, !1592, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1631)
    #dbg_value(ptr %0, !1594, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1631)
    #dbg_value(i64 1, !1594, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1631)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1632), !dbg !1635
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1636), !dbg !1635
    #dbg_value(ptr %i.i, !1567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1638)
    #dbg_value(i64 1, !1567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1638)
    #dbg_value(ptr %0, !1568, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1638)
    #dbg_value(i64 1, !1568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1638)
    #dbg_value(i64 1, !1569, !DIExpression(), !1638)
    #dbg_value(ptr %i.i, !1570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1640)
    #dbg_value(i64 1, !1570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1640)
    #dbg_value(i64 0, !1572, !DIExpression(), !1641)
    #dbg_value(!DIArgList(ptr %i.i, i64 0), !1552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1642)
    #dbg_value(ptr %i.i, !1552, !DIExpression(), !1642)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 5, !dbg !1644 ; 2 uses
    #dbg_value(ptr %i.j, !1553, !DIExpression(), !1642)
  %i.k = load i8, ptr %i.i, align 1, !dbg !1645, !alias.scope !1632, !noalias !1636, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !1645
  %i.m = load i8, ptr %i.l, align 1, !dbg !1645, !alias.scope !1632, !noalias !1636, !noundef !17
  %i.n = load i16, ptr %i.j, align 1, !dbg !1645, !alias.scope !1636, !noalias !1632
  store i16 %i.n, ptr %i.i, align 1, !dbg !1645, !alias.scope !1632, !noalias !1636
  store i8 %i.k, ptr %i.j, align 1, !dbg !1645, !alias.scope !1636, !noalias !1632
    #dbg_value(i64 1, !1572, !DIExpression(), !1641)
  br label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit.sink.split, !dbg !1603

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8Range12split_at_mutBy_.exit21.i37: ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !1646 ; 2 uses
    #dbg_value(ptr %i.o, !1539, !DIExpression(), !1647)
    #dbg_value(ptr %i.o, !1578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1648)
    #dbg_value(i64 4, !1578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1648)
    #dbg_value(i64 2, !1579, !DIExpression(), !1650)
    #dbg_value(ptr %i.o, !1581, !DIExpression(), !1651)
    #dbg_value(ptr %0, !1583, !DIExpression(DW_OP_plus_uconst, 9, DW_OP_stack_value), !1651)
    #dbg_value(ptr %i.o, !1584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1652)
    #dbg_value(i64 2, !1584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1652)
    #dbg_value(ptr %0, !1586, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1652)
    #dbg_value(i64 2, !1586, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1653), !dbg !1656
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1657), !dbg !1656
    #dbg_value(ptr %i.o, !1567, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1659)
    #dbg_value(i64 2, !1567, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1659)
    #dbg_value(ptr %0, !1568, !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !1659)
    #dbg_value(i64 2, !1568, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1659)
    #dbg_value(i64 2, !1569, !DIExpression(), !1659)
    #dbg_value(ptr %i.o, !1570, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1661)
    #dbg_value(i64 2, !1570, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1661)
    #dbg_value(i64 0, !1572, !DIExpression(), !1662)
    #dbg_value(!DIArgList(ptr %i.o, i64 0), !1552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1663)
    #dbg_value(ptr %i.o, !1552, !DIExpression(), !1663)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 7, !dbg !1665
    #dbg_value(ptr %i.p, !1553, !DIExpression(), !1663)
  %i.q = load i8, ptr %i.o, align 1, !dbg !1666, !alias.scope !1653, !noalias !1657, !noundef !17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2, !dbg !1666
  %i.s = load i8, ptr %i.r, align 1, !dbg !1666, !alias.scope !1653, !noalias !1657, !noundef !17
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1666
    #dbg_value(i64 1, !1572, !DIExpression(), !1662)
    #dbg_value(!DIArgList(ptr %i.o, i64 1), !1552, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 2, DW_OP_mul, DW_OP_plus, DW_OP_stack_value), !1663)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3, !dbg !1667
    #dbg_value(ptr %i.u, !1552, !DIExpression(), !1663)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 5, !dbg !1665 ; 2 uses
    #dbg_value(ptr %i.v, !1553, !DIExpression(), !1663)
  %i.w = load i8, ptr %i.u, align 1, !dbg !1666, !alias.scope !1653, !noalias !1657, !noundef !17
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !1666
  %i.y = load i8, ptr %i.x, align 1, !dbg !1666, !alias.scope !1653, !noalias !1657, !noundef !17
  %i.z = load <2 x i16>, ptr %i.v, align 1, !dbg !1666, !alias.scope !1657, !noalias !1653
  store i8 %i.q, ptr %i.p, align 1, !dbg !1666, !alias.scope !1657, !noalias !1653
  store i8 %i.s, ptr %i.t, align 1, !dbg !1666, !alias.scope !1657, !noalias !1653
  %i.aa = shufflevector <2 x i16> %i.z, <2 x i16> poison, <2 x i32> <i32 1, i32 0>, !dbg !1666
  store <2 x i16> %i.aa, ptr %i.o, align 1, !dbg !1666, !alias.scope !1653, !noalias !1657
  store i8 %i.w, ptr %i.v, align 1, !dbg !1666, !alias.scope !1657, !noalias !1653
    #dbg_value(i64 2, !1572, !DIExpression(), !1662)
  br label %_RINvNvMNtCsj6eKBz9Db1c_4core5sliceSp7reverse7revswapNtNtCs3roNzt6HBWW_12regex_syntax4utf89Utf8RangeEBS_.exit.sink.split, !dbg !1603
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 !dbg !1668 {
bb.a:
    #dbg_value(ptr %0, !1672, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1676)
    #dbg_value(i64 %1, !1672, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1676)
    #dbg_value(ptr %2, !1673, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1676)
    #dbg_value(ptr %2, !1677, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1692)
    #dbg_value(i64 %3, !1673, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1676)
    #dbg_value(i64 %3, !1677, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1692)
    #dbg_value(i64 %3, !1674, !DIExpression(), !1709)
    #dbg_value(i64 %3, !1688, !DIExpression(), !1710)
  %.not = icmp samesign ult i64 %1, %3, !dbg !1711
  br i1 %.not, label %bb.b, label %bb.c, !dbg !1711

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ], !dbg !1712
  ret i1 %.sroa.0.0, !dbg !1713

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !1703, !DIExpression(), !1714)
    #dbg_value(ptr %0, !1683, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1692)
    #dbg_value(i64 %3, !1683, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1692)
    #dbg_value(ptr poison, !1704, !DIExpression(), !1715)
    #dbg_value(ptr %2, !1716, !DIExpression(), !1729)
    #dbg_value(ptr %0, !1722, !DIExpression(), !1729)
    #dbg_value(i64 %3, !1723, !DIExpression(), !1729)
    #dbg_value(i64 %3, !1724, !DIExpression(), !1731)
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3), !dbg !1732
  %i.a = icmp eq i32 %bcmp.i, 0, !dbg !1732
  br label %bb.b, !dbg !1711
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCs3roNzt6HBWW_12regex_syntax(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #2 !dbg !1733 {
bb.a:
    #dbg_value(ptr %0, !1735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1740)
    #dbg_value(ptr %0, !1741, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1759)
    #dbg_value(ptr %0, !1761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1770)
    #dbg_value(ptr %0, !1772, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1779)
    #dbg_value(i64 %1, !1735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1740)
    #dbg_value(i64 %1, !1741, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1759)
    #dbg_value(i64 %1, !1761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1770)
    #dbg_value(i64 %1, !1772, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1779)
    #dbg_value(ptr %2, !1736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1740)
    #dbg_value(ptr %2, !1781, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !1787)
    #dbg_value(i64 %3, !1736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !1740)
end_hunk_0
