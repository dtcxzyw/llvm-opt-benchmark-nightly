Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.15?download=true
inline.NumInlined: 498
inline.NumDeleted: 174
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXNvNtNtCs7IHJO2Xhr2x_4qlog6events5qpacksw_1__NtB5_22QpackInstructionParsedNtNtCsbwMSWOJol8F_10serde_core3ser9Serialize9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB30_6marker4SendNtB3A_4SyncEL_NtB2a_15PrettyFormatterEECshovLROGBtMy_11quinn_proto:bb.a
  %.not9.i.i.i = icmp eq ptr %i.ag, null, !dbg !13056
  br i1 %.not9.i.i.i, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i, !dbg !13054

_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %bb.h, %bb.f
  %.val11.i.i.i = load ptr, ptr %i.p, align 8, !dbg !13057, !alias.scope !13044, !noalias !13032, !nonnull !27, !noundef !27
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !13057
  %.val12.i.i.i = load ptr, ptr %i.ah, align 8, !dbg !13057, !alias.scope !13044, !noalias !13032, !nonnull !27, !align !3605, !noundef !27
    #dbg_value(ptr poison, !3619, !DIExpression(), !13058)
    #dbg_value(ptr @78, !3627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13058)
    #dbg_value(i64 1, !3627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13058)
  %i.ai = getelementptr inbounds nuw i8, ptr %.val12.i.i.i, i64 56, !dbg !13060
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !13060, !invariant.load !27, !noalias !13061, !nonnull !27
  %i.ak = call noundef ptr %i.aj(ptr noundef nonnull %.val11.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 1) #21, !dbg !13064, !noalias !13032, !inline_history !4082 ; 2 uses
    #dbg_value(ptr %i.ak, !4038, !DIExpression(), !13065)
  %.not.i.i34 = icmp eq ptr %i.ak, null, !dbg !13066
  br i1 %.not.i.i34, label %_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCshovLROGBtMy_11quinn_proto.exit, label %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i, !dbg !13067, !prof !4099

_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i: ; preds = %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i, %bb.h, %bb.g
  %.sroa.0.0.i9.i.i = phi ptr [ %i.ak, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i ], [ %i.ag, %bb.h ], [ %i.ac, %bb.g ]
    #dbg_value(ptr %.sroa.0.0.i9.i.i, !4041, !DIExpression(), !13068)
  %i.al = call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i9.i.i), !dbg !13069
  br label %_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCshovLROGBtMy_11quinn_proto.exit, !dbg !13071

_RNvXs7_NtCscFTfv2TGtgR_10serde_json3serINtB5_8CompoundQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtBY_6marker4SendNtB1y_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser15SerializeStruct3endCshovLROGBtMy_11quinn_proto.exit: ; preds = %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i, %bb.e, %bb.b, %_RNvXs1_NtCscFTfv2TGtgR_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer16serialize_structCshovLROGBtMy_11quinn_proto.exit, %bb.d
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ %i.k, %bb.b ], [ %i.n, %_RNvXs1_NtCscFTfv2TGtgR_10serde_json3serQINtB5_10SerializerQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB12_6marker4SendNtB1C_4SyncEL_NtB5_15PrettyFormatterENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer16serialize_structCshovLROGBtMy_11quinn_proto.exit ], [ null, %bb.e ], [ %i.al, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.thread.i.i ], [ null, %_RINvXsd_NtCscFTfv2TGtgR_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQDNtNtNtCskKLDkoKarTP_4core2io5write5WriteNtNtB1x_6marker4SendNtB27_4SyncEL_ECshovLROGBtMy_11quinn_proto.exit.i.i ], !dbg !12906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13072
  ret ptr %.sroa.0.0, !dbg !13073
}

; Function Attrs: nonlazybind uwtable
define hidden range(i40 0, -254) i40 @_RINvXs2_NtCshovLROGBtMy_11quinn_proto6codingNtNtNtCskKLDkoKarTP_4core3net7ip_addr8Ipv4AddrNtB6_5Codec6decodeINtNtNtCsdIYt8sV98we_5bytes3buf4take4TakeQINtNtNtBM_2io6cursor6CursorRShEEEB8_(ptr noalias nofree noundef align 8 dereferenceable(16) %0) unnamed_addr #0 !dbg !13074 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
    #dbg_value(ptr %0, !13110, !DIExpression(), !13115)
    #dbg_declare(ptr %i.a, !13111, !DIExpression(), !13116)
    #dbg_value(ptr poison, !13117, !DIExpression(), !13125)
  %i.b = tail call noundef i64 @_RNvXs_NtNtCsdIYt8sV98we_5bytes3buf4takeINtB4_4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEENtNtB6_8buf_impl3Buf9remainingCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0), !dbg !13127
  %i.c = icmp ult i64 %i.b, 4, !dbg !13128
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !13128

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13129
  store i32 0, ptr %i.a, align 4, !dbg !13130
  call void @_RNvYINtNtNtCsdIYt8sV98we_5bytes3buf4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEENtNtB7_8buf_impl3Buf13copy_to_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull %i.a, i64 noundef 4), !dbg !13131
  %.sroa.02.0.copyload = load i32, ptr %i.a, align 4, !dbg !13132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13133
  br label %bb.c, !dbg !13134

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi i32 [ %.sroa.02.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ], !dbg !13115
  %.sroa.3.0.insert.ext = zext i32 %.sroa.3.0 to i40, !dbg !13134
  %.sroa.3.0.insert.shift = shl nuw i40 %.sroa.3.0.insert.ext, 8, !dbg !13134
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i40, !dbg !13134
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext, !dbg !13134
  ret i40 %.sroa.0.0.insert.insert, !dbg !13134
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtCshovLROGBtMy_11quinn_proto6codingNtNtNtCskKLDkoKarTP_4core3net7ip_addr8Ipv4AddrNtB6_5Codec6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13135 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
    #dbg_value(ptr %0, !13140, !DIExpression(), !13144)
    #dbg_value(ptr %0, !13145, !DIExpression(), !13152)
    #dbg_value(ptr %1, !13141, !DIExpression(), !13144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13154
  %i.b = load i32, ptr %0, align 1, !dbg !13155
  store i32 %i.b, ptr %i.a, align 4, !dbg !13155
    #dbg_value(ptr %1, !1135, !DIExpression(), !13156)
    #dbg_value(ptr %i.a, !1144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13156)
    #dbg_value(i64 4, !1144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13156)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4), !dbg !13158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13159
  ret void, !dbg !13160
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshovLROGBtMy_11quinn_proto6codingNtNtNtCskKLDkoKarTP_4core3net7ip_addr8Ipv6AddrNtB6_5Codec6decodeINtNtNtCsdIYt8sV98we_5bytes3buf4take4TakeQINtNtNtBM_2io6cursor6CursorRShEEEB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([17 x i8]) align 1 captures(none) dereferenceable(17) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1) unnamed_addr #0 !dbg !13161 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 5 uses
    #dbg_value(ptr %1, !13184, !DIExpression(), !13187)
    #dbg_declare(ptr %i.a, !13185, !DIExpression(), !13188)
    #dbg_declare(ptr poison, !13189, !DIExpression(), !13200)
    #dbg_declare(ptr poison, !13202, !DIExpression(), !13208)
    #dbg_value(ptr poison, !13210, !DIExpression(), !13213)
  %i.b = tail call noundef i64 @_RNvXs_NtNtCsdIYt8sV98we_5bytes3buf4takeINtB4_4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEENtNtB6_8buf_impl3Buf9remainingCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !13215
  %i.c = icmp ult i64 %i.b, 16, !dbg !13216
  br i1 %i.c, label %bb.c, label %bb.b, !dbg !13216

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13217
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, i8 0, i64 16, i1 false), !dbg !13218
  call void @_RNvYINtNtNtCsdIYt8sV98we_5bytes3buf4take4TakeQINtNtNtCskKLDkoKarTP_4core2io6cursor6CursorRShEENtNtB7_8buf_impl3Buf13copy_to_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %1, ptr noalias nofree noundef nonnull %i.a, i64 noundef 16), !dbg !13219
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !13220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 1 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !13221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13222
  br label %bb.c, !dbg !13223

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i8 [ 0, %bb.b ], [ 1, %bb.a ], !dbg !13187
  store i8 %.sink, ptr %0, align 1, !dbg !13187
  ret void, !dbg !13223
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs3_NtCshovLROGBtMy_11quinn_proto6codingNtNtNtCskKLDkoKarTP_4core3net7ip_addr8Ipv6AddrNtB6_5Codec6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr noalias nofree noundef readonly captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13224 {
bb.a:
  %i.a = alloca [16 x i8], align 1                ; 4 uses
    #dbg_value(ptr %0, !13229, !DIExpression(), !13231)
    #dbg_value(ptr %0, !13232, !DIExpression(), !13238)
    #dbg_value(ptr %1, !13230, !DIExpression(), !13231)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %0, i64 16, i1 false), !dbg !13241
    #dbg_value(ptr %1, !1135, !DIExpression(), !13242)
    #dbg_value(ptr %i.a, !1144, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13242)
    #dbg_value(i64 16, !1144, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13242)
  call void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16), !dbg !13244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13245
  ret void, !dbg !13246
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_CshovLROGBtMy_11quinn_protoNtB6_8StreamIdNtNtB6_6coding5Codec6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB6_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13247 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !13253, !DIExpression(), !13255)
    #dbg_value(ptr %1, !13254, !DIExpression(), !13255)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13256
  %i.c = load i64, ptr %0, align 8, !dbg !13257, !noundef !27
  %i.d = tail call { i64, i64 } @_RNvMNtCshovLROGBtMy_11quinn_proto6varintNtB2_6VarInt8from_u64(i64 noundef %i.c), !dbg !13256 ; 2 uses
  %i.e = extractvalue { i64, i64 } %i.d, 0, !dbg !13256
    #dbg_value(i64 %i.e, !1062, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13258)
    #dbg_value(i64 poison, !1062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13258)
    #dbg_declare(ptr %i.a, !1087, !DIExpression(), !13260)
  %i.f = trunc nuw i64 %i.e to i1, !dbg !13261
  br i1 %i.f, label %bb.b, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtBJ_20VarIntBoundsExceededE6unwrapBL_.exit, !dbg !13261, !prof !1093

bb.b:                                             ; preds = %bb.a
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @83, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #20, !dbg !13262
  unreachable, !dbg !13262

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtBJ_20VarIntBoundsExceededE6unwrapBL_.exit: ; preds = %bb.a
  %i.g = extractvalue { i64, i64 } %i.d, 1, !dbg !13256
    #dbg_value(i64 %i.g, !1062, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13258)
  store i64 %i.g, ptr %i.b, align 8, !dbg !13263
  call void @_RINvXs8_NtCshovLROGBtMy_11quinn_proto6varintNtB6_6VarIntNtNtB8_6coding5Codec6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !13264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13265
  ret void, !dbg !13266
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsjqcU1oJFKXj_9hashbrown3setINtB6_7HashSetNtCshovLROGBtMy_11quinn_proto8StreamIdNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2f_8adapters6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBO_EEEBQ_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 !dbg !13267 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !13367, !DIExpression(), !13371)
    #dbg_declare(ptr %1, !13368, !DIExpression(), !13372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13373
    #dbg_declare(ptr %1, !13374, !DIExpression(), !13392)
    #dbg_declare(ptr poison, !13388, !DIExpression(), !13394)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !13395, !alias.scope !13400
  call void @_RINvXs1i_NtCsjqcU1oJFKXj_9hashbrown3mapINtB7_7HashMapNtCshovLROGBtMy_11quinn_proto8StreamIduNtCs1fPtKw3lI00_10rustc_hash13FxBuildHasherEINtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2h_8adapters3map3MapINtNtB3m_6cloned6ClonedINtNtNtNtCsG258MDvU3F_3std11collections4hash3set4IterBP_EENCINvXs8_NtB9_3setINtB5b_7HashSetBP_B1s_EIB2b_BP_E6extendB3J_E0EEBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !13404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13405
  ret void, !dbg !13406
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCshovLROGBtMy_11quinn_proto5frameNtB5_9FrameTypeNtNtB7_6coding5Codec6encodeINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB7_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !13407 {
bb.a:
    #dbg_value(ptr %0, !13412, !DIExpression(), !13414)
    #dbg_value(ptr %1, !13413, !DIExpression(), !13414)
  %i.a = load i64, ptr %0, align 8, !dbg !13415, !noundef !27
  tail call void @_RNvXs5_NtCshovLROGBtMy_11quinn_proto6codingINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB5_9BufMutExt9write_varB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.a), !dbg !13416
  ret void, !dbg !13417
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define noundef zeroext i1 @_RNvMNtCshovLROGBtMy_11quinn_proto6sharedNtB2_13EndpointEvent10is_drained(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 !dbg !13418 {
bb.a:
    #dbg_value(ptr %0, !13480, !DIExpression(), !13481)
  %.val = load i16, ptr %0, align 8, !dbg !13482, !range !13483, !noundef !27 ; 2 uses
    #dbg_value(ptr poison, !13484, !DIExpression(), !13515)
    #dbg_value(ptr poison, !13491, !DIExpression(), !13515)
  %i.a = icmp ne i16 %.val, 3, !dbg !13517
  tail call void @llvm.assume(i1 %i.a), !dbg !13517
    #dbg_value(i16 poison, !13492, !DIExpression(DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !13518)
    #dbg_value(i64 0, !13494, !DIExpression(), !13519)
  %i.b = icmp eq i16 %.val, 2, !dbg !13520
  ret i1 %i.b, !dbg !13521
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_13IncomingToken11from_header(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([44 x i8]) align 1 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(184) %2, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13522 {
bb.a:
  %i.a = alloca [21 x i8], align 1                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 5 uses
    #dbg_declare(ptr poison, !14121, !DIExpression(DW_OP_LLVM_fragment, 32, 96), !14133)
  %i.d = alloca [16 x i8], align 4                ; 9 uses
  %i.e = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.032.i = alloca i64, align 8              ; 7 uses
    #dbg_declare(ptr %.sroa.032.i, !14246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14283)
  %i.f = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !14285, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !14309)
  %.sroa.1217.sroa.0.i = alloca [3 x i8], align 1 ; 5 uses
    #dbg_declare(ptr %.sroa.1217.sroa.0.i, !14282, !DIExpression(DW_OP_LLVM_fragment, 40, 24), !14311)
    #dbg_declare(ptr poison, !14285, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !14312)
  %.sroa.225.i = alloca [20 x i8], align 1        ; 5 uses
  %.sroa.7.sroa.7.sroa.3.i = alloca [20 x i8], align 1 ; 5 uses
    #dbg_declare(ptr %.sroa.7.sroa.7.sroa.3.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 392, 160), !14314)
  %i.g = alloca [16 x i8], align 8                ; 22 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %.sroa.13 = alloca [23 x i8], align 1           ; 2 uses
    #dbg_declare(ptr %.sroa.13, !14078, !DIExpression(DW_OP_LLVM_fragment, 520, 184), !14315)
    #dbg_value(ptr poison, !14316, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14334)
    #dbg_value(ptr poison, !14316, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !14334)
    #dbg_value(ptr poison, !14340, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14345)
    #dbg_value(ptr poison, !14340, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !14345)
    #dbg_value(ptr poison, !14323, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14334)
    #dbg_value(ptr poison, !14323, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !14334)
    #dbg_value(ptr poison, !14339, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14346)
    #dbg_value(ptr poison, !14339, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !14346)
    #dbg_declare(ptr %.sroa.13, !14116, !DIExpression(DW_OP_LLVM_fragment, 8, 160), !14347)
  %i.i = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.23 = alloca [21 x i8], align 8           ; 9 uses
  %.sroa.32 = alloca [23 x i8], align 1           ; 5 uses
  %.sroa.10 = alloca [21 x i8], align 1           ; 7 uses
    #dbg_declare(ptr %.sroa.10, !14076, !DIExpression(DW_OP_LLVM_fragment, 184, 168), !14348)
    #dbg_value(ptr %1, !14073, !DIExpression(), !14349)
    #dbg_value(ptr %2, !14074, !DIExpression(), !14349)
    #dbg_declare(ptr %3, !14075, !DIExpression(), !14350)
    #dbg_declare(ptr %i.i, !14114, !DIExpression(), !14351)
    #dbg_declare(ptr poison, !14352, !DIExpression(), !14381)
    #dbg_declare(ptr poison, !14352, !DIExpression(), !14395)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10), !dbg !14399
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44, !dbg !14400 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %.sroa.10, ptr noundef nonnull align 4 dereferenceable(21) %i.j, i64 21, i1 false), !dbg !14400
    #dbg_value(i8 0, !14076, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !14401)
    #dbg_value(i8 0, !14076, !DIExpression(DW_OP_LLVM_fragment, 176, 8), !14401)
    #dbg_value(ptr %1, !14402, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14408)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14410
  %i.l = load i64, ptr %i.k, align 8, !dbg !14410, !noundef !27 ; 3 uses
  %i.m = icmp eq i64 %i.l, 0, !dbg !14410
  br i1 %i.m, label %bb.av, label %bb.b, !dbg !14411

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23), !dbg !14412
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.32), !dbg !14412
    #dbg_value(ptr %2, !14413, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14421)
    #dbg_value(ptr %2, !14423, !DIExpression(DW_OP_plus_uconst, 120, DW_OP_stack_value), !14433)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 120, !dbg !14435
  %i.o = load ptr, ptr %i.n, align 8, !dbg !14435, !nonnull !27, !noundef !27
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 128, !dbg !14435
  %i.q = load ptr, ptr %i.p, align 8, !dbg !14435, !nonnull !27, !align !3605, !noundef !27 ; 2 uses
    #dbg_value(ptr %1, !14442, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14445)
    #dbg_value(ptr %1, !14447, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !14450)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14452
  %i.s = load ptr, ptr %i.r, align 8, !dbg !14452, !noundef !27 ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 24, !dbg !14412
  %.val = load ptr, ptr %i.t, align 8, !dbg !14412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14453), !dbg !14412
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14456), !dbg !14412
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.225.i), !dbg !14458
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.7.sroa.3.i), !dbg !14458
    #dbg_value(!DIArgList(ptr poison, i64 poison), !14197, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14464)
    #dbg_value(ptr poison, !14197, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14464)
    #dbg_value(ptr %i.s, !14198, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14464)
    #dbg_value(i64 %i.l, !14198, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14464)
    #dbg_declare(ptr %i.h, !14208, !DIExpression(), !14465)
    #dbg_declare(ptr %i.h, !14466, !DIExpression(), !14481)
    #dbg_declare(ptr %i.g, !14214, !DIExpression(), !14494)
    #dbg_value(i64 16, !14462, !DIExpression(), !14495)
    #dbg_declare(ptr poison, !14486, !DIExpression(), !14496)
    #dbg_declare(ptr poison, !14479, !DIExpression(), !14497)
    #dbg_declare(ptr poison, !14498, !DIExpression(), !14505)
    #dbg_declare(ptr poison, !14507, !DIExpression(), !14515)
    #dbg_declare(ptr poison, !14517, !DIExpression(), !14545)
    #dbg_value(i64 0, !14547, !DIExpression(), !14557)
    #dbg_value(i64 %i.l, !14461, !DIExpression(), !14495)
  %i.u = icmp samesign ult i64 %i.l, 16, !dbg !14458
  br i1 %i.u, label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCshovLROGBtMy_11quinn_proto.exit.i, !dbg !14458

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !14559
  %i.w = load i64, ptr %i.v, align 8, !dbg !14559, !range !2451, !invariant.load !27
    #dbg_value(!DIArgList(ptr %i.o, i64 %i.w), !14197, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14464)
  %i.x = add nsw i64 %i.w, -1, !dbg !14559
    #dbg_value(!DIArgList(ptr %i.o, i64 %i.x), !14197, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551600, DW_OP_and, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14464)
  %i.y = and i64 %i.x, -16, !dbg !14559
    #dbg_value(!DIArgList(ptr %i.o, i64 %i.y), !14197, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14464)
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.y, !dbg !14559
    #dbg_value(ptr %i.z, !14197, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14464)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !14559
    #dbg_value(ptr %i.aa, !14197, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14464)
  %i.ab = add nsw i64 %i.l, -16, !dbg !14560      ; 7 uses
    #dbg_value(i64 %i.ab, !14199, !DIExpression(), !14561)
    #dbg_value(ptr %i.s, !14562, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14576)
    #dbg_value(ptr %i.s, !14578, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14597)
    #dbg_value(i64 %i.l, !14562, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14576)
    #dbg_value(i64 %i.l, !14578, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14597)
    #dbg_value(i64 %i.ab, !14573, !DIExpression(), !14576)
    #dbg_value(i64 %i.ab, !14596, !DIExpression(), !14597)
    #dbg_value(ptr %i.s, !14599, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14607)
    #dbg_value(i64 %i.l, !14599, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14607)
    #dbg_value(i64 %i.ab, !14602, !DIExpression(), !14607)
    #dbg_value(i64 %i.ab, !14609, !DIExpression(), !14618)
    #dbg_value(i64 %i.l, !14603, !DIExpression(), !14620)
    #dbg_value(ptr %i.s, !14605, !DIExpression(), !14621)
    #dbg_value(ptr %i.s, !14617, !DIExpression(), !14618)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab, !dbg !14622 ; 2 uses
    #dbg_value(ptr %i.s, !14204, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14623)
    #dbg_value(ptr %i.s, !14492, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14624)
    #dbg_value(ptr %i.s, !14485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14625)
    #dbg_value(ptr %i.s, !14478, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14626)
    #dbg_value(i64 %i.ab, !14204, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14623)
    #dbg_value(i64 %i.ab, !14492, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14624)
    #dbg_value(i64 %i.ab, !14485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14625)
    #dbg_value(i64 %i.ab, !14478, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14626)
    #dbg_value(ptr %i.ac, !14205, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14623)
    #dbg_value(ptr %i.ac, !14627, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14650)
    #dbg_value(ptr %i.ac, !14652, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14656)
    #dbg_value(i64 16, !14205, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14623)
    #dbg_value(i64 16, !14627, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14650)
    #dbg_value(i64 16, !14652, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14656)
    #dbg_value(ptr %i.ac, !14658, !DIExpression(), !14683)
  %.sroa.018.0.copyload.i = load i128, ptr %i.ac, align 1, !dbg !14685, !alias.scope !14456, !noalias !14453
    #dbg_value(i128 %.sroa.018.0.copyload.i, !14206, !DIExpression(), !14686)
  %i.ad = tail call { ptr, ptr } %.val(ptr noundef nonnull %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef 16) #21, !dbg !14687, !noalias !14453, !inline_history !14688 ; 2 uses
  %i.ae = extractvalue { ptr, ptr } %i.ad, 0, !dbg !14687 ; 7 uses
  %i.af = extractvalue { ptr, ptr } %i.ad, 1, !dbg !14687 ; 10 uses
    #dbg_value(ptr %i.ae, !14207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14689)
    #dbg_value(ptr %i.af, !14207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14690, !noalias !14691
    #dbg_value(i64 %i.ab, !14480, !DIExpression(), !14692)
    #dbg_value(i64 %i.ab, !14504, !DIExpression(), !14693)
    #dbg_value(i64 %i.ab, !14514, !DIExpression(), !14694)
    #dbg_value(i64 %i.ab, !14695, !DIExpression(), !14702)
    #dbg_value(i64 %i.ab, !14704, !DIExpression(), !14711)
    #dbg_value(i64 %i.ab, !14713, !DIExpression(), !14720)
    #dbg_value(i64 %i.ab, !14523, !DIExpression(), !14722)
    #dbg_value(i64 %i.ab, !14555, !DIExpression(), !14557)
    #dbg_value(i64 1, !14524, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14722)
    #dbg_value(i64 1, !14556, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14557)
    #dbg_value(i64 1, !14524, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14722)
    #dbg_value(i64 1, !14556, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14557)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14723, !noalias !14691
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.ab, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.d unwind label %bb.c, !dbg !14723, !noalias !14453

.body.i:                                          ; preds = %bb.al, %bb.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.au, %bb.i ], [ %i.ag, %bb.c ], [ %i.dh, %bb.al ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCshovLROGBtMy_11quinn_proto6crypto7AeadKeyEL_EEB1f_(ptr %i.ae, ptr nonnull %i.af) #24
          to label %common.resume.i unwind label %bb.at, !dbg !14724, !noalias !14453

bb.c:                                             ; preds = %bb.am, %bb.aj, %bb.e, %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCshovLROGBtMy_11quinn_proto.exit.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultAhj10_NtNtB4_5array17TryFromSliceErrorE6unwrapCshovLROGBtMy_11quinn_proto.exit.i
  %i.ah = load i64, ptr %i.f, align 8, !dbg !14723, !range !1687, !noalias !14691, !noundef !27
  %i.ai = trunc nuw i64 %i.ah to i1, !dbg !14725
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14722
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !14722, !range !14726, !noalias !14691, !noundef !27 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !14722 ; 2 uses
  br i1 %i.ai, label %bb.e, label %bb.f, !dbg !14725, !prof !1093

bb.e:                                             ; preds = %bb.d
  %i.am = load i64, ptr %i.al, align 8, !dbg !14727, !noalias !14691
    #dbg_value(i64 %i.ak, !14527, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14728)
    #dbg_value(i64 %i.am, !14527, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14728)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ak, i64 %i.am) #25
          to label %bb.au unwind label %bb.c, !dbg !14729, !noalias !14453

bb.f:                                             ; preds = %bb.d
  %i.an = load ptr, ptr %i.al, align 8, !dbg !14730, !noalias !14691, !nonnull !27, !noundef !27 ; 3 uses
    #dbg_value(i64 %i.ak, !14525, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14731)
    #dbg_value(ptr %i.an, !14525, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14731)
    #dbg_value(ptr poison, !14554, !DIExpression(), !14732)
  %i.ao = icmp samesign ule i64 %i.ab, %i.ak, !dbg !14733
    #dbg_value(i1 true, !14734, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14741)
  tail call void @llvm.assume(i1 %i.ao), !dbg !14743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14744, !noalias !14691
  store i64 %i.ak, ptr %i.h, align 8, !dbg !14745, !noalias !14691
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !14745
  store ptr %i.an, ptr %i.ap, align 8, !dbg !14745, !noalias !14691
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !14745 ; 2 uses
  store i64 0, ptr %i.aq, align 8, !dbg !14745, !noalias !14691
  %.not.i = icmp eq i64 %i.ab, 0, !dbg !14746
  br i1 %.not.i, label %bb.g, label %bb.h, !dbg !14746

bb.g:                                             ; preds = %bb.h, %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.af) ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 32, !dbg !14747
  %i.as = load ptr, ptr %i.ar, align 8, !dbg !14747, !invariant.load !27, !noalias !14453, !nonnull !27
  %i.at = invoke { ptr, i64 } %i.as(ptr noundef nonnull %i.ae, ptr noalias nofree noundef nonnull %i.an, i64 noundef %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.j unwind label %bb.i, !dbg !14748, !noalias !14453 ; 2 uses

bb.h:                                             ; preds = %bb.f
end_hunk_0
begin_hunk_1_@_RNvMs0_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_13IncomingToken11from_header:bb.a
  %i.bx = add i64 %.val.i21.i.i.i, -16, !dbg !15435
    #dbg_value(i64 %i.bx, !15219, !DIExpression(), !15436)
    #dbg_value(i64 %i.bx, !15229, !DIExpression(), !15433)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16, !dbg !15437
  store ptr %i.by, ptr %i.g, align 8, !dbg !15438, !alias.scope !15439, !noalias !15424, !captures !14797
  store i64 %i.bx, ptr %i.ay, align 8, !dbg !15438, !alias.scope !15439, !noalias !15424
  %.sroa.10.1.copyload.i.i = load i32, ptr %i.b, align 4, !dbg !15442, !noalias !15443
  %.sroa.13.1..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4, !dbg !15442
  %.sroa.13.i.sroa.0.0.copyload.i = load i32, ptr %.sroa.13.1..sroa_idx.i.i, align 4, !dbg !15442, !noalias !15444
    #dbg_value(i32 %.sroa.13.i.sroa.0.0.copyload.i, !14155, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !15445)
    #dbg_value(i32 %.sroa.13.i.sroa.0.0.copyload.i, !14129, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !15446)
  %.sroa.13.i.sroa.4.0..sroa.13.1..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !15442
  %.sroa.13.i.sroa.4.0.copyload.i = load i64, ptr %.sroa.13.i.sroa.4.0..sroa.13.1..sroa_idx.i.sroa_idx.i, align 4, !dbg !15442, !noalias !15444
    #dbg_value(i64 %.sroa.13.i.sroa.4.0.copyload.i, !14155, !DIExpression(DW_OP_LLVM_fragment, 72, 64), !15445)
    #dbg_value(i64 %.sroa.13.i.sroa.4.0.copyload.i, !14129, !DIExpression(DW_OP_LLVM_fragment, 72, 64), !15446)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15447, !noalias !15414
    #dbg_value(i8 1, !15038, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15448)
  br label %_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i.i, !dbg !15449

_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i.i: ; preds = %.noexc129.i, %.noexc128.i
  %.sroa.13.i.sroa.0.0.i = phi i32 [ undef, %.noexc128.i ], [ %.sroa.13.i.sroa.0.0.copyload.i, %.noexc129.i ], !dbg !15332
  %.sroa.13.i.sroa.4.0.i = phi i64 [ undef, %.noexc128.i ], [ %.sroa.13.i.sroa.4.0.copyload.i, %.noexc129.i ], !dbg !15332
  %.sroa.10.1.i.i = phi i32 [ %.sroa.02.0.copyload.i.i.i.i, %.noexc128.i ], [ %.sroa.10.1.copyload.i.i, %.noexc129.i ], !dbg !15332 ; 3 uses
    #dbg_value(i64 %.sroa.13.i.sroa.4.0.i, !14129, !DIExpression(DW_OP_LLVM_fragment, 72, 64), !15446)
    #dbg_value(i64 %.sroa.13.i.sroa.4.0.i, !14155, !DIExpression(DW_OP_LLVM_fragment, 72, 64), !15445)
    #dbg_value(i32 %.sroa.13.i.sroa.0.0.i, !14129, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !15446)
    #dbg_value(i32 %.sroa.13.i.sroa.0.0.i, !14155, !DIExpression(DW_OP_LLVM_fragment, 40, 32), !15445)
    #dbg_value(i8 %i.bq, !14155, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15445)
    #dbg_value(i8 %i.bq, !14129, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15446)
    #dbg_value(i32 %.sroa.10.1.i.i, !14129, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !15446)
    #dbg_value(i32 %.sroa.10.1.i.i, !14155, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !15445)
  %i.bz = invoke { i16, i16 } @_RINvXs_NtCshovLROGBtMy_11quinn_proto6codingtNtB5_5Codec6decodeRShEB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc130.i unwind label %bb.i, !dbg !15450, !noalias !14453 ; 2 uses

.noexc130.i:                                      ; preds = %_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i.i
  %i.ca = extractvalue { i16, i16 } %i.bz, 0, !dbg !15450
  %i.cb = extractvalue { i16, i16 } %i.bz, 1, !dbg !15450 ; 2 uses
    #dbg_value(i16 %i.ca, !15451, !DIExpression(DW_OP_LLVM_fragment, 0, 16), !15471)
    #dbg_value(i16 %i.cb, !15451, !DIExpression(DW_OP_LLVM_fragment, 16, 16), !15471)
  %i.cc = trunc i16 %i.ca to i1, !dbg !15473
  br i1 %i.cc, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.x, !dbg !15473

bb.x:                                             ; preds = %.noexc130.i
    #dbg_value(i16 %i.cb, !14160, !DIExpression(), !15474)
    #dbg_value(i16 %i.cb, !14130, !DIExpression(), !15446)
  %i.cd = trunc nuw i8 %i.bq to i1, !dbg !15475
  br i1 %i.cd, label %bb.y, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.i, !dbg !15476

bb.y:                                             ; preds = %bb.x
    #dbg_value(i32 %.sroa.10.1.i.i, !14121, !DIExpression(DW_OP_LLVM_fragment, 0, 32), !15477)
  %.sroa.59.sroa.0.2.insert.ext.i.i = shl i32 %.sroa.10.1.i.i, 16, !dbg !15478
  %.sroa.019.2.extract.shift.i.i = lshr i32 %.sroa.10.1.i.i, 16, !dbg !15478
  %.sroa.019.2.extract.trunc.i.i = trunc nuw i32 %.sroa.019.2.extract.shift.i.i to i16, !dbg !15478
  br label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.i, !dbg !15479

_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.i: ; preds = %bb.y, %bb.x
  %.sroa.59.sroa.6.sroa.0.i.sroa.0.0.i = phi i32 [ %.sroa.13.i.sroa.0.0.i, %bb.y ], [ undef, %bb.x ], !dbg !15480
  %.sroa.59.sroa.6.sroa.0.i.sroa.4.0.i = phi i64 [ %.sroa.13.i.sroa.4.0.i, %bb.y ], [ undef, %bb.x ], !dbg !15480
  %.sroa.59.sroa.5.0.i.i = phi i16 [ %.sroa.019.2.extract.trunc.i.i, %bb.y ], [ %i.cb, %bb.x ], !dbg !15446
  %.sroa.59.sroa.0.0.i.i = phi i32 [ %.sroa.59.sroa.0.2.insert.ext.i.i, %bb.y ], [ %.sroa.10.1.i.i, %bb.x ], !dbg !15446
  %.sroa.59.sroa.6.sroa.6.0.i.i = phi i16 [ %i.cb, %bb.y ], [ undef, %bb.x ], !dbg !15480
  %.sroa.08.0.i.i = phi i64 [ 1, %bb.y ], [ 0, %bb.x ], !dbg !15446
  %.sroa.05.2.insert.ext.i = zext i32 %.sroa.59.sroa.0.0.i.i to i64, !dbg !15481
  %.sroa.05.2.insert.shift.i = shl nuw nsw i64 %.sroa.05.2.insert.ext.i, 16, !dbg !15481
  %.sroa.05.6.insert.ext.i = zext i16 %.sroa.59.sroa.5.0.i.i to i64, !dbg !15481
  %.sroa.05.6.insert.shift.i = shl nuw i64 %.sroa.05.6.insert.ext.i, 48, !dbg !15481
  %i.ce = or disjoint i64 %.sroa.05.2.insert.shift.i, %.sroa.05.6.insert.shift.i, !dbg !15481
  %.sroa.05.6.insert.insert.i = or disjoint i64 %i.ce, %.sroa.08.0.i.i, !dbg !15481
  call void @llvm.experimental.noalias.scope.decl(metadata !15482), !dbg !15485
    #dbg_value(ptr %i.g, !15486, !DIExpression(), !15500)
    #dbg_value(ptr %i.g, !15502, !DIExpression(), !15505)
  %i.cf = invoke { i1, i8 } @_RINvXNtCshovLROGBtMy_11quinn_proto6codinghNtB3_5Codec6decodeRShEB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc131.i unwind label %bb.i, !dbg !15507, !noalias !14453 ; 2 uses

.noexc131.i:                                      ; preds = %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.i
  %i.cg = extractvalue { i1, i8 } %i.cf, 0, !dbg !15507
    #dbg_value(i1 %i.cg, !15508, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !15513)
    #dbg_value(i8 poison, !15508, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15513)
  br i1 %i.cg, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.z, !dbg !15515

bb.z:                                             ; preds = %.noexc131.i
  %i.ch = extractvalue { i1, i8 } %i.cf, 1, !dbg !15507 ; 3 uses
    #dbg_value(i8 %i.ch, !15508, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !15513)
  %i.ci = zext i8 %i.ch to i64, !dbg !15516       ; 5 uses
    #dbg_value(i64 %i.ci, !15494, !DIExpression(), !15517)
  %i.cj = icmp ugt i8 %i.ch, 20, !dbg !15518
  br i1 %i.cj, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.aa, !dbg !15518

bb.aa:                                            ; preds = %bb.z
    #dbg_value(ptr poison, !15519, !DIExpression(), !15522)
  %.val.i.i = load i64, ptr %i.ay, align 8, !dbg !15524, !alias.scope !15482, !noalias !15525, !noundef !27 ; 2 uses
  %i.ck = icmp ult i64 %.val.i.i, %i.ci, !dbg !15527
  br i1 %i.ck, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId8from_bufRShEB7_.exit.i.i, !dbg !15528

_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId8from_bufRShEB7_.exit.i.i: ; preds = %bb.aa
  call void @llvm.experimental.noalias.scope.decl(metadata !15529), !dbg !15532
    #dbg_value(ptr %i.g, !15533, !DIExpression(), !15544)
    #dbg_value(i64 %i.ci, !15541, !DIExpression(), !15544)
    #dbg_declare(ptr %i.a, !15542, !DIExpression(), !15546)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !15547, !noalias !15548
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.a, i8 0, i64 20, i1 false), !dbg !15550, !noalias !15548
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 20, !dbg !15551
  store i8 %i.ch, ptr %i.cl, align 1, !dbg !15551, !noalias !15548
    #dbg_value(ptr %i.g, !15167, !DIExpression(), !15552)
    #dbg_value(ptr %i.a, !15173, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15552)
    #dbg_value(ptr %i.a, !15176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15554)
    #dbg_value(i64 %i.ci, !15173, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15552)
    #dbg_value(i64 %i.ci, !15176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15554)
  %i.cm = load ptr, ptr %i.g, align 8, !dbg !15556, !alias.scope !15557, !noalias !15560, !nonnull !27, !noundef !27 ; 2 uses
    #dbg_value(ptr %i.cm, !15181, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15554)
    #dbg_value(i64 %i.ci, !15181, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15554)
  invoke void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, 21) %i.ci, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cm, i64 noundef range(i64 0, 21) %i.ci, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101)
          to label %bb.ab unwind label %bb.i, !dbg !15562, !noalias !14453

bb.ab:                                            ; preds = %_RINvMs_NtCshovLROGBtMy_11quinn_proto6sharedNtB5_12ConnectionId8from_bufRShEB7_.exit.i.i
    #dbg_value(ptr %i.g, !15191, !DIExpression(), !15563)
    #dbg_value(i64 %i.ci, !15196, !DIExpression(), !15563)
    #dbg_value(i64 %i.ci, !15199, !DIExpression(), !15565)
    #dbg_value(i64 %i.ci, !15212, !DIExpression(), !15567)
    #dbg_value(i64 %i.ci, !15223, !DIExpression(), !15569)
    #dbg_value(i64 %.val.i.i, !15207, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15565)
    #dbg_value(i64 %.val.i.i, !15218, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15567)
    #dbg_value(i64 %.val.i.i, !15228, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15569)
    #dbg_value(ptr %i.cm, !15207, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15565)
    #dbg_value(ptr %i.cm, !15218, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15567)
    #dbg_value(ptr %i.cm, !15228, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15569)
  %i.cn = sub nuw i64 %.val.i.i, %i.ci, !dbg !15571
    #dbg_value(i64 %i.cn, !15219, !DIExpression(), !15572)
    #dbg_value(i64 %i.cn, !15229, !DIExpression(), !15569)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.ci, !dbg !15573
  store ptr %i.co, ptr %i.g, align 8, !dbg !15574, !alias.scope !15575, !noalias !15560, !captures !14797
  store i64 %i.cn, ptr %i.ay, align 8, !dbg !15574, !alias.scope !15575, !noalias !15560
  %.sroa.714.sroa.0.0.copyload.i = load i8, ptr %i.a, align 1, !dbg !15578, !noalias !15579
  %.sroa.714.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1, !dbg !15578
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.225.i, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.714.sroa.5.0..sroa_idx.i, i64 20, i1 false), !dbg !15578, !noalias !14691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !15580, !noalias !15548
  %i.cp = invoke fastcc { i64, i32 } @_RINvNtCshovLROGBtMy_11quinn_proto5token16decode_unix_secsRShEB4_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g)
          to label %bb.ac unwind label %bb.i, !dbg !15581, !noalias !14453 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cq = extractvalue { i64, i32 } %i.cp, 1, !dbg !15581 ; 2 uses
    #dbg_value(i64 poison, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15582)
    #dbg_value(i32 %i.cq, !14285, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15582)
  %.not116.i = icmp eq i32 %i.cq, -1, !dbg !15583
  br i1 %.not116.i, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.ad, !dbg !15584

bb.ad:                                            ; preds = %bb.ac
  %i.cr = extractvalue { i64, i32 } %i.cp, 0, !dbg !15581
    #dbg_value(i64 %i.cr, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15582)
    #dbg_value(!DIArgList(i64 %.sroa.08.0.i.i, i64 %.sroa.05.6.insert.shift.i, i64 %.sroa.05.2.insert.shift.i), !14215, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_or, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !15585)
    #dbg_value(i32 %.sroa.59.sroa.6.sroa.0.i.sroa.0.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !15585)
    #dbg_value(i64 %.sroa.59.sroa.6.sroa.0.i.sroa.4.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 224, 64), !15585)
    #dbg_value(i32 0, !14215, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !15585)
    #dbg_value(i32 0, !14215, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !15585)
    #dbg_value(i16 %.sroa.59.sroa.6.sroa.6.0.i.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 352, 16), !15585)
    #dbg_value(i8 %.sroa.714.sroa.0.0.copyload.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !15585)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.7.sroa.7.sroa.3.i, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.225.i, i64 20, i1 false), !dbg !15586, !noalias !14691
    #dbg_value(i64 %i.cr, !14215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15585)
    #dbg_value(i32 %i.cq, !14215, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15585)
  %i.cs = insertelement <2 x i16> <i16 poison, i16 undef>, i16 %.sroa.59.sroa.6.sroa.6.0.i.i, i64 0, !dbg !15587
  br label %bb.ae, !dbg !15588

bb.ae:                                            ; preds = %bb.ai, %bb.ad
  %.sroa.7.sroa.7.sroa.0.0.i = phi i8 [ %.sroa.1217.sroa.8.1.i, %bb.ai ], [ %.sroa.714.sroa.0.0.copyload.i, %bb.ad ], !dbg !15587
  %.sroa.7.sroa.0.0.i = phi i64 [ %.sroa.7.sroa.0.4.insert.shift.i, %bb.ai ], [ %.sroa.59.sroa.6.sroa.0.i.sroa.4.0.i, %bb.ad ], !dbg !15587 ; 3 uses
  %.sroa.7.sroa.4.0.i = phi i32 [ %.sroa.1217.sroa.5.1.i, %bb.ai ], [ 0, %bb.ad ], !dbg !15587
  %.sroa.7.sroa.3.0.i = phi i32 [ %.sroa.032.i.4..sroa.032.i.4..sroa.032.i.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.527.0.copyload.i, %bb.ai ], [ 0, %bb.ad ], !dbg !15587
  %.sroa.612.0.i = phi i32 [ %i.dc, %bb.ai ], [ %.sroa.59.sroa.6.sroa.0.i.sroa.0.0.i, %bb.ad ], !dbg !15587 ; 3 uses
  %.sroa.411.0.i = phi i64 [ %i.dd, %bb.ai ], [ %.sroa.05.6.insert.insert.i, %bb.ad ], !dbg !15587 ; 7 uses
  %.sroa.2.0.i = phi i32 [ -1, %bb.ai ], [ %i.cq, %bb.ad ], !dbg !15587 ; 3 uses
  %.sroa.09.0.i = phi i64 [ undef, %bb.ai ], [ %i.cr, %bb.ad ]
  %i.ct = phi <2 x i16> [ %i.cw, %bb.ai ], [ %i.cs, %bb.ad ], !dbg !15587
    #dbg_value(i32 %.sroa.7.sroa.3.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !15585)
    #dbg_value(i32 %.sroa.7.sroa.4.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !15585)
    #dbg_value(i16 poison, !14215, !DIExpression(DW_OP_LLVM_fragment, 352, 16), !15585)
    #dbg_value(i16 poison, !14215, !DIExpression(DW_OP_LLVM_fragment, 368, 16), !15585)
    #dbg_value(i64 %.sroa.7.sroa.0.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 224, 64), !15585)
    #dbg_value(i8 %.sroa.7.sroa.7.sroa.0.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !15585)
    #dbg_value(i64 %.sroa.09.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15585)
    #dbg_value(i32 %.sroa.2.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15585)
    #dbg_value(i64 %.sroa.411.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15585)
    #dbg_value(i32 %.sroa.612.0.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !15585)
  %i.cu = load i64, ptr %i.ay, align 8, !dbg !15589, !noalias !14691, !noundef !27
    #dbg_value(ptr poison, !15590, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15595)
    #dbg_value(i64 %i.cu, !15590, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15595)
  %i.cv = icmp eq i64 %i.cu, 0, !dbg !15597
  br i1 %i.cv, label %bb.aj, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, !dbg !15589

_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i: ; preds = %.noexc126.i, %.noexc125.i
  %.sroa.1217.sroa.5.1.i = phi i32 [ %.sroa.1217.sroa.5.0.copyload.i, %.noexc126.i ], [ undef, %.noexc125.i ], !dbg !15034
  %.sroa.1217.sroa.8.1.i = phi i8 [ %.sroa.1217.sroa.8.0.copyload.i, %.noexc126.i ], [ undef, %.noexc125.i ], !dbg !15034
  %.sroa.1016.1.i = phi i32 [ %.sroa.1016.1.copyload.i, %.noexc126.i ], [ %.sroa.02.0.copyload.i.i.i, %.noexc125.i ], !dbg !15034
  %i.cw = phi <2 x i16> [ %i.bn, %.noexc126.i ], [ undef, %.noexc125.i ], !dbg !15034
    #dbg_value(i8 %i.be, !14282, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15242)
    #dbg_value(i32 %.sroa.1016.1.i, !14282, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !15242)
    #dbg_value(i8 %.sroa.1217.sroa.8.1.i, !14282, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15242)
    #dbg_value(i16 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !15242)
    #dbg_value(i16 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !15242)
    #dbg_value(i32 %.sroa.1217.sroa.5.1.i, !14282, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15242)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.i), !dbg !15598
  store i8 %i.be, ptr %.sroa.032.i, align 8, !dbg !15598, !noalias !14691
  %.sroa.032.i.1.i.1.i.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.i, i64 1, !dbg !15598
  store i32 %.sroa.1016.1.i, ptr %.sroa.032.i.1.i.1.i.1..sroa_idx, align 1, !dbg !15598, !noalias !14691
  %.sroa.032.5..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.032.i, i64 5, !dbg !15598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.032.5..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.1217.sroa.0.i, i64 3, i1 false), !dbg !15598, !noalias !14691
    #dbg_value(i32 %.sroa.1217.sroa.5.1.i, !14246, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15599)
    #dbg_value(i16 poison, !14246, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !15599)
    #dbg_value(i16 poison, !14246, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !15599)
    #dbg_value(i8 %.sroa.1217.sroa.8.1.i, !14246, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15599)
  %.sroa.032.i.0..sroa.032.i.0..sroa.032.i.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.026.0.copyload.i = load i32, ptr %.sroa.032.i, align 8, !dbg !15600, !noalias !14691
  %.sroa.032.i.4.i.4.i.4..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.i, i64 4, !dbg !15600
  %.sroa.032.i.4..sroa.032.i.4..sroa.032.i.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.527.0.copyload.i = load i32, ptr %.sroa.032.i.4.i.4.i.4..sroa_idx, align 4, !dbg !15600, !noalias !14691
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.032.i), !dbg !15601
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1217.sroa.0.i), !dbg !15602
    #dbg_value(ptr %i.g, !2271, !DIExpression(), !15603)
    #dbg_value(ptr %i.g, !2279, !DIExpression(), !15605)
  %i.cx = invoke { i64, i64 } @_RINvXs1_NtCshovLROGBtMy_11quinn_proto6codingyNtB6_5Codec6decodeRShEB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %.noexc133.i unwind label %bb.i, !dbg !15607, !noalias !14453 ; 2 uses

.noexc133.i:                                      ; preds = %_RINvNtCshovLROGBtMy_11quinn_proto5token9decode_ipRShEB4_.exit.i
  %i.cy = extractvalue { i64, i64 } %i.cx, 0, !dbg !15607
    #dbg_value(i64 %i.cy, !2303, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15608)
    #dbg_value(i64 poison, !2303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15608)
  %i.cz = trunc nuw i64 %i.cy to i1, !dbg !15610
  br i1 %i.cz, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.af, !dbg !15610

bb.af:                                            ; preds = %.noexc133.i
  %i.da = extractvalue { i64, i64 } %i.cx, 1, !dbg !15607
    #dbg_value(i64 %i.da, !2303, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15608)
  %i.db = invoke { i64, i32 } @_RNvXs6_NtCsG258MDvU3F_3std4timeNtB5_10SystemTimeINtNtNtCskKLDkoKarTP_4core3ops5arith3AddNtNtBR_4time8DurationE3add(i64 noundef 0, i32 noundef 0, i64 noundef %i.da, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %bb.ah unwind label %bb.i, !dbg !15611, !noalias !14453 ; 2 uses

bb.ag:                                            ; preds = %bb.q, %bb.p, %bb.o, %.noexc.i
    #dbg_value(i8 2, !14282, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !15242)
    #dbg_value(i32 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 8, 32), !15242)
    #dbg_value(i8 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !15242)
    #dbg_value(i16 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 112, 16), !15242)
    #dbg_value(i16 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 96, 16), !15242)
    #dbg_value(i32 poison, !14282, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15242)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1217.sroa.0.i), !dbg !15602
  br label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, !dbg !15612

bb.ah:                                            ; preds = %bb.af
  %i.dc = extractvalue { i64, i32 } %i.db, 1, !dbg !15611 ; 2 uses
    #dbg_value(i64 poison, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15614)
    #dbg_value(i32 %i.dc, !14285, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15614)
  %.not118.i = icmp eq i32 %i.dc, -1, !dbg !15615
  br i1 %.not118.i, label %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i, label %bb.ai, !dbg !15616

bb.ai:                                            ; preds = %bb.ah
  %i.dd = extractvalue { i64, i32 } %i.db, 0, !dbg !15611
    #dbg_value(i64 %i.dd, !14285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15614)
  %.sroa.7.sroa.0.4.insert.ext.i = zext i32 %.sroa.032.i.0..sroa.032.i.0..sroa.032.i.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.032.0..sroa.026.0.copyload.i to i64, !dbg !15617
  %.sroa.7.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.7.sroa.0.4.insert.ext.i, 32, !dbg !15617
    #dbg_value(i64 %.sroa.7.sroa.0.4.insert.shift.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 224, 64), !15585)
    #dbg_value(i32 %.sroa.032.i.4..sroa.032.i.4..sroa.032.i.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.032.4..sroa.527.0.copyload.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 288, 32), !15585)
    #dbg_value(i32 %.sroa.1217.sroa.5.1.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 320, 32), !15585)
    #dbg_value(i16 poison, !14215, !DIExpression(DW_OP_LLVM_fragment, 352, 16), !15585)
    #dbg_value(i16 poison, !14215, !DIExpression(DW_OP_LLVM_fragment, 368, 16), !15585)
    #dbg_value(i8 %.sroa.1217.sroa.8.1.i, !14215, !DIExpression(DW_OP_LLVM_fragment, 384, 8), !15585)
    #dbg_value(i64 %i.dd, !14215, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !15585)
    #dbg_value(i32 %i.dc, !14215, !DIExpression(DW_OP_LLVM_fragment, 192, 32), !15585)
    #dbg_value(i32 -1, !14215, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !15585)
  br label %bb.ae, !dbg !15618

bb.aj:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.32, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.7.sroa.7.sroa.3.i, i64 20, i1 false), !dbg !15619, !noalias !14456
  store i64 %.sroa.7.sroa.0.0.i, ptr %.sroa.23, align 8, !dbg !15620, !alias.scope !14453, !noalias !14456
  %.sroa.23.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 8, !dbg !15620
  store i32 %.sroa.7.sroa.3.0.i, ptr %.sroa.23.8..sroa_idx, align 8, !dbg !15620, !alias.scope !14453, !noalias !14456
  %.sroa.23.12..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 12, !dbg !15620
  store i32 %.sroa.7.sroa.4.0.i, ptr %.sroa.23.12..sroa_idx, align 4, !dbg !15620, !alias.scope !14453, !noalias !14456
  %.sroa.23.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 16, !dbg !15620
  store <2 x i16> %i.ct, ptr %.sroa.23.16..sroa_idx, align 8, !dbg !15620, !alias.scope !14453, !noalias !14456
  %.sroa.23.20..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.23, i64 20, !dbg !15620
  store i8 %.sroa.7.sroa.7.sroa.0.0.i, ptr %.sroa.23.20..sroa_idx, align 4, !dbg !15620, !alias.scope !14453, !noalias !14456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15621, !noalias !14691
  %i.de = trunc i64 %.sroa.7.sroa.0.0.i to i32, !dbg !14753
  %i.df = lshr i64 %.sroa.7.sroa.0.0.i, 32, !dbg !14753 ; 2 uses
  %i.dg = trunc i64 %i.df to i8, !dbg !14753      ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h)
          to label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit unwind label %bb.c, !dbg !14753, !noalias !14453

_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i: ; preds = %bb.ae, %.noexc133.i, %bb.ah, %bb.ac, %bb.aa, %bb.z, %.noexc131.i, %.noexc127.i, %bb.t, %bb.u, %bb.v, %.noexc130.i, %bb.m, %bb.l, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !15621, !noalias !14691
  br label %bb.ak, !dbg !15622

bb.ak:                                            ; preds = %bb.j, %_RINvNtCshovLROGBtMy_11quinn_proto5token11decode_addrRShEB4_.exit.thread.i
    #dbg_value(ptr %i.h, !2334, !DIExpression(), !15624)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.am unwind label %bb.al, !dbg !15626, !noalias !14453

bb.al:                                            ; preds = %bb.ak
  %i.dh = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.h, !2339, !DIExpression(), !15627)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.an, !dbg !15629, !noalias !14453

bb.am:                                            ; preds = %bb.ak
    #dbg_value(ptr %i.h, !2339, !DIExpression(), !15630)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i unwind label %bb.c, !dbg !15632, !noalias !14453

bb.an:                                            ; preds = %bb.al
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #22, !dbg !15626, !noalias !14453
  unreachable, !dbg !15626

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14753, !noalias !14691
    #dbg_value(ptr poison, !2368, !DIExpression(), !15633)
  %i.dj = load ptr, ptr %i.af, align 8, !dbg !15635, !invariant.load !27, !noalias !14453 ; 2 uses
  %.not.i136.i = icmp eq ptr %i.dj, null, !dbg !15635
  br i1 %.not.i136.i, label %bb.ap, label %bb.ao, !dbg !15635

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i
  invoke void %i.dj(ptr noundef nonnull %i.ae)
          to label %bb.ap unwind label %bb.ar, !dbg !15635, !noalias !14453

bb.ap:                                            ; preds = %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit.i
    #dbg_value(ptr poison, !2373, !DIExpression(), !15636)
    #dbg_value(ptr poison, !2379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15638)
    #dbg_value(ptr %i.af, !2379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15638)
    #dbg_value(ptr poison, !2410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15639)
    #dbg_value(ptr poison, !2422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15641)
    #dbg_value(ptr poison, !2430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15643)
    #dbg_value(ptr poison, !2441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15645)
    #dbg_value(ptr %i.af, !2410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15639)
    #dbg_value(ptr %i.af, !2422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15641)
    #dbg_value(ptr %i.af, !2430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15643)
    #dbg_value(ptr %i.af, !2441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15645)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !15647
  %i.dl = load i64, ptr %i.dk, align 8, !dbg !15647, !range !2447, !invariant.load !27, !noalias !14453 ; 2 uses
    #dbg_value(i64 poison, !2395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15648)
    #dbg_value(i64 %i.dl, !2395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15648)
  %i.dm = icmp eq i64 %i.dl, 0, !dbg !15649
  br i1 %i.dm, label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, label %bb.aq, !dbg !15649

bb.aq:                                            ; preds = %bb.ap
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !15647
  %i.do = load i64, ptr %i.dn, align 8, !dbg !15650, !range !2451, !invariant.load !27, !noalias !14453
    #dbg_value(i64 %i.do, !2395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15648)
    #dbg_value(ptr %i.ae, !2410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15639)
    #dbg_value(ptr %i.ae, !2422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15641)
    #dbg_value(ptr %i.ae, !2430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15643)
    #dbg_value(ptr %i.ae, !2441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15645)
    #dbg_value(ptr %i.ae, !2379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15638)
    #dbg_value(ptr poison, !2452, !DIExpression(), !15651)
    #dbg_value(ptr poison, !2464, !DIExpression(), !15653)
    #dbg_value(ptr %i.ae, !2460, !DIExpression(), !15651)
    #dbg_value(ptr %i.ae, !2469, !DIExpression(), !15653)
    #dbg_value(ptr %i.ae, !2473, !DIExpression(), !15655)
    #dbg_value(ptr %i.ae, !2482, !DIExpression(), !15657)
    #dbg_value(i64 %i.do, !2461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15651)
    #dbg_value(i64 %i.do, !2470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15653)
    #dbg_value(i64 %i.do, !2479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15655)
    #dbg_value(i64 %i.do, !2485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15657)
    #dbg_value(i64 %i.dl, !2461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15651)
    #dbg_value(i64 %i.dl, !2470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15653)
    #dbg_value(i64 %i.dl, !2479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15655)
    #dbg_value(i64 %i.dl, !2485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15657)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef range(i64 1, -9223372036854775808) %i.dl, i64 noundef range(i64 1, 536870913) %i.do) #23, !dbg !15659, !noalias !14453
  br label %_RNvMs1_NtCshovLROGBtMy_11quinn_proto5tokenNtB5_5Token6decode.exit.thread, !dbg !15660

bb.ar:                                            ; preds = %bb.ao
  %i.dp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr poison, !2373, !DIExpression(), !15661)
    #dbg_value(ptr poison, !2379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15663)
    #dbg_value(ptr %i.af, !2379, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15663)
    #dbg_value(ptr poison, !2410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15664)
    #dbg_value(ptr poison, !2422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15666)
    #dbg_value(ptr poison, !2430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15668)
    #dbg_value(ptr poison, !2441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15670)
    #dbg_value(ptr %i.af, !2410, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15664)
    #dbg_value(ptr %i.af, !2422, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15666)
    #dbg_value(ptr %i.af, !2430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15668)
    #dbg_value(ptr %i.af, !2441, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15670)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !15672
  %i.dr = load i64, ptr %i.dq, align 8, !dbg !15672, !range !2447, !invariant.load !27, !noalias !14453 ; 2 uses
    #dbg_value(i64 poison, !2395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15673)
    #dbg_value(i64 %i.dr, !2395, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15673)
  %i.ds = icmp eq i64 %i.dr, 0, !dbg !15674
  br i1 %i.ds, label %common.resume.i, label %bb.as, !dbg !15674

bb.as:                                            ; preds = %bb.ar
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !15672
  %i.du = load i64, ptr %i.dt, align 8, !dbg !15675, !range !2451, !invariant.load !27, !noalias !14453
    #dbg_value(i64 %i.du, !2395, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15673)
    #dbg_value(ptr %i.ae, !2410, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15664)
    #dbg_value(ptr %i.ae, !2422, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15666)
    #dbg_value(ptr %i.ae, !2430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15668)
    #dbg_value(ptr %i.ae, !2441, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15670)
    #dbg_value(ptr %i.ae, !2379, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15663)
    #dbg_value(ptr poison, !2452, !DIExpression(), !15676)
    #dbg_value(ptr poison, !2464, !DIExpression(), !15678)
    #dbg_value(ptr %i.ae, !2460, !DIExpression(), !15676)
    #dbg_value(ptr %i.ae, !2469, !DIExpression(), !15678)
    #dbg_value(ptr %i.ae, !2473, !DIExpression(), !15680)
    #dbg_value(ptr %i.ae, !2482, !DIExpression(), !15682)
    #dbg_value(i64 %i.du, !2461, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15676)
    #dbg_value(i64 %i.du, !2470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15678)
    #dbg_value(i64 %i.du, !2479, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15680)
    #dbg_value(i64 %i.du, !2485, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15682)
    #dbg_value(i64 %i.dr, !2461, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15676)
    #dbg_value(i64 %i.dr, !2470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15678)
    #dbg_value(i64 %i.dr, !2479, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15680)
    #dbg_value(i64 %i.dr, !2485, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15682)
end_hunk_1
