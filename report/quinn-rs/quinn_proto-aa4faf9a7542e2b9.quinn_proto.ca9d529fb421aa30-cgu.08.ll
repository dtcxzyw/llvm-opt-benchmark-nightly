Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/quinn_proto-aa4faf9a7542e2b9.quinn_proto.ca9d529fb421aa30-cgu.08?download=true
inline.NumInlined: 710
inline.NumDeleted: 372
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto:bb.a
  %i.a = load ptr, ptr %0, align 8, !dbg !21306, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !21307
  %.val = load ptr, ptr %i.b, align 8, !dbg !21307, !nonnull !2135, !noundef !2135
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !21307
  %.val2 = load i64, ptr %i.c, align 8, !dbg !21307, !noundef !2135
    #dbg_value(ptr poison, !21301, !DIExpression(), !21293)
    #dbg_value(ptr %1, !21304, !DIExpression(), !21293)
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtCsjx2R6KBUtVL_6rustls5error18ExtendedKeyPurposeNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21308
  ret i1 %i.d, !dbg !21309
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21310 {
bb.a:
    #dbg_value(ptr %0, !21317, !DIExpression(), !21320)
    #dbg_value(ptr %1, !21318, !DIExpression(), !21320)
  %i.a = load ptr, ptr %0, align 8, !dbg !21326, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !21327
  %.val = load ptr, ptr %i.b, align 8, !dbg !21327, !nonnull !2135, !noundef !2135
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !21327
  %.val2 = load i64, ptr %i.c, align 8, !dbg !21327, !noundef !2135
    #dbg_value(ptr poison, !21321, !DIExpression(), !21313)
    #dbg_value(ptr %1, !21324, !DIExpression(), !21313)
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake16EchConfigPayloadNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21328
  ret i1 %i.d, !dbg !21329
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21330 {
bb.a:
    #dbg_value(ptr %0, !21337, !DIExpression(), !21340)
    #dbg_value(ptr %1, !21338, !DIExpression(), !21340)
  %i.a = load ptr, ptr %0, align 8, !dbg !21346, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !21347
  %.val = load ptr, ptr %i.b, align 8, !dbg !21347, !nonnull !2135, !noundef !2135
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !21347
  %.val2 = load i64, ptr %i.c, align 8, !dbg !21347, !noundef !2135
    #dbg_value(ptr poison, !21341, !DIExpression(), !21333)
    #dbg_value(ptr %1, !21344, !DIExpression(), !21333)
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake18EchConfigExtensionNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21348
  ret i1 %i.d, !dbg !21349
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21350 {
bb.a:
    #dbg_value(ptr %0, !21357, !DIExpression(), !21360)
    #dbg_value(ptr %1, !21358, !DIExpression(), !21360)
  %i.a = load ptr, ptr %0, align 8, !dbg !21366, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !21367
  %.val = load ptr, ptr %i.b, align 8, !dbg !21367, !nonnull !2135, !noundef !2135
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !21367
  %.val2 = load i64, ptr %i.c, align 8, !dbg !21367, !noundef !2135
    #dbg_value(ptr poison, !21361, !DIExpression(), !21353)
    #dbg_value(ptr %1, !21364, !DIExpression(), !21353)
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSNtNtNtCsjx2R6KBUtVL_6rustls4msgs9handshake24HpkeSymmetricCipherSuiteNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21368
  ret i1 %i.d, !dbg !21369
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VechENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21370 {
bb.a:
    #dbg_value(ptr %0, !21387, !DIExpression(), !21390)
    #dbg_value(ptr %1, !21388, !DIExpression(), !21390)
  %i.a = load ptr, ptr %0, align 8, !dbg !21392, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21391), !dbg !21393
    #dbg_value(ptr %i.a, !7717, !DIExpression(), !21374)
    #dbg_value(ptr %i.a, !7722, !DIExpression(), !21376)
    #dbg_value(ptr %i.a, !7727, !DIExpression(), !21378)
    #dbg_value(ptr %i.a, !7730, !DIExpression(), !21380)
    #dbg_value(ptr %1, !7720, !DIExpression(), !21374)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !21394
  %i.c = load ptr, ptr %i.b, align 8, !dbg !21394, !alias.scope !21391, !nonnull !2135, !noundef !2135
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !21395
  %i.e = load i64, ptr %i.d, align 8, !dbg !21395, !alias.scope !21391, !noundef !2135
  %i.f = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtShNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21396, !noalias !21391
  ret i1 %i.f, !dbg !21397
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRINtNtCsexYYUdYSQU6_5alloc3vec3VecjENtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21398 {
bb.a:
    #dbg_value(ptr %0, !21405, !DIExpression(), !21408)
    #dbg_value(ptr %1, !21406, !DIExpression(), !21408)
  %i.a = load ptr, ptr %0, align 8, !dbg !21414, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !21415
  %.val = load ptr, ptr %i.b, align 8, !dbg !21415, !nonnull !2135, !noundef !2135
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !21415
  %.val2 = load i64, ptr %i.c, align 8, !dbg !21415, !noundef !2135
    #dbg_value(ptr poison, !21409, !DIExpression(), !21401)
    #dbg_value(ptr %1, !21412, !DIExpression(), !21401)
  %i.d = tail call noundef zeroext i1 @_RNvXsr_NtCskKLDkoKarTP_4core3fmtSjNtB5_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21416
  ret i1 %i.d, !dbg !21417
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21418 {
bb.a:
    #dbg_value(ptr %0, !21431, !DIExpression(), !21434)
    #dbg_value(ptr %1, !21432, !DIExpression(), !21434)
  %i.a = load ptr, ptr %0, align 8, !dbg !21436, !nonnull !2135, !align !4083, !noundef !2135 ; 3 uses
    #dbg_value(ptr %i.a, !7739, !DIExpression(), !21420)
    #dbg_value(ptr %1, !7743, !DIExpression(), !21420)
    #dbg_value(ptr %i.a, !7746, !DIExpression(), !21422)
    #dbg_value(ptr %1, !7751, !DIExpression(), !21422)
    #dbg_value(ptr %1, !7753, !DIExpression(), !21424)
    #dbg_value(ptr %1, !7759, !DIExpression(), !21426)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !21437
  %i.c = load i32, ptr %i.b, align 8, !dbg !21437, !alias.scope !21435, !noundef !2135 ; 2 uses
  %i.d = and i32 %i.c, 33554432, !dbg !21437
  %.not.i.i = icmp eq i32 %i.d, 0, !dbg !21437
  br i1 %.not.i.i, label %bb.b, label %bb.c, !dbg !21438

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.c, 67108864, !dbg !21439
  %.not3.i.i = icmp eq i32 %i.e, 0, !dbg !21439
  br i1 %.not3.i.i, label %bb.d, label %bb.e, !dbg !21440

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21441
  br label %_RNvXs6_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit, !dbg !21441

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21442
  br label %_RNvXs6_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit, !dbg !21442

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21443
  br label %_RNvXs6_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit, !dbg !21443

_RNvXs6_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i.i = phi i1 [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.g, %bb.d ]
  ret i1 %.sroa.0.0.in.i.i, !dbg !21444
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21445 {
switch.lookup:
    #dbg_value(ptr %0, !21453, !DIExpression(), !21458)
    #dbg_value(ptr %1, !21454, !DIExpression(), !21458)
  %i.a = load ptr, ptr %0, align 8, !dbg !21467, !nonnull !2135, !noundef !2135
  %.val = load i8, ptr %i.a, align 1, !dbg !21468, !range !21459, !noundef !2135 ; 2 uses
    #dbg_value(ptr poison, !21461, !DIExpression(), !21448)
    #dbg_value(ptr %1, !21465, !DIExpression(), !21448)
  %i.b = zext nneg i8 %.val to i64, !dbg !21469
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto, i64 %i.b, !dbg !21469
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !21469
  %switch.ext = zext i8 %switch.load to i64, !dbg !21469
  %i.c = zext nneg i8 %.val to i64, !dbg !21469
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto.97, i64 %i.c, !dbg !21469
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !21469
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !dbg !21469
  ret i1 %i.d, !dbg !21470
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs4base10PayloadU16NtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21471 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr %0, !21506, !DIExpression(), !21509)
    #dbg_value(ptr %1, !21507, !DIExpression(), !21509)
  %i.c = load ptr, ptr %0, align 8, !dbg !21515, !nonnull !2135, !align !4083, !noundef !2135 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8, !dbg !21516
  %.val = load ptr, ptr %i.d, align 8, !dbg !21516, !nonnull !2135, !noundef !2135 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16, !dbg !21516
  %.val2 = load i64, ptr %i.e, align 8, !dbg !21516, !noundef !2135 ; 2 uses
  %.val3 = load ptr, ptr %1, align 8, !dbg !21516 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21516
  %.val4 = load ptr, ptr %i.f, align 8, !dbg !21516 ; 2 uses
    #dbg_value(ptr poison, !21510, !DIExpression(), !21474)
    #dbg_value(ptr poison, !21513, !DIExpression(), !21474)
    #dbg_value(ptr poison, !4361, !DIExpression(), !21477)
    #dbg_value(ptr poison, !7767, !DIExpression(), !21478)
    #dbg_value(ptr poison, !7792, !DIExpression(), !21480)
    #dbg_value(ptr poison, !7768, !DIExpression(), !21478)
    #dbg_value(ptr poison, !7800, !DIExpression(), !21482)
    #dbg_value(i64 %.val2, !7805, !DIExpression(), !21485)
    #dbg_value(i64 %.val2, !7815, !DIExpression(), !21487)
    #dbg_value(ptr %.val, !7813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21488)
    #dbg_value(ptr %.val, !7809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21489)
    #dbg_value(i64 %.val2, !7813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21488)
    #dbg_value(i64 %.val2, !7809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21489)
    #dbg_value(ptr %.val, !7810, !DIExpression(), !21490)
    #dbg_value(ptr %.val, !7816, !DIExpression(), !21487)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.val2, !dbg !21517
    #dbg_value(ptr %.val, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21491)
    #dbg_value(ptr %i.g, !7769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21491)
    #dbg_value(ptr undef, !4361, !DIExpression(), !21477)
    #dbg_value(i64 1, !4375, !DIExpression(), !21493)
    #dbg_value(ptr %.val, !4371, !DIExpression(), !21494)
    #dbg_value(ptr %.val, !4379, !DIExpression(), !21493)
    #dbg_value(ptr %i.g, !4372, !DIExpression(), !21495)
    #dbg_value(ptr poison, !4382, !DIExpression(), !21497)
    #dbg_value(ptr poison, !4385, !DIExpression(), !21498)
  %i.h = icmp samesign eq i64 %.val2, 0, !dbg !21518
  br i1 %i.h, label %_RNvXs9_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshovLROGBtMy_11quinn_proto.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i.i, !dbg !21519

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3), "nonnull"(ptr %.val4) ]
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !21519

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i.i: ; preds = %bb.c, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
    #dbg_value(ptr %.sroa.0.08.i.i, !7769, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !21491)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !21520
    #dbg_value(ptr %.sroa.0.08.i.i, !7770, !DIExpression(), !21499)
  store ptr %.sroa.0.08.i.i, ptr %i.b, align 8, !dbg !21520, !captures !4188
    #dbg_value(ptr %i.b, !7772, !DIExpression(), !21500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21521
  store ptr %i.b, ptr %i.a, align 8, !dbg !21521
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCshovLROGBtMy_11quinn_proto, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !dbg !21521
    #dbg_value(ptr @30, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21480)
    #dbg_value(ptr %i.a, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21480)
  %i.i = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val4, ptr noundef nonnull @30, ptr noundef nonnull %i.a), !dbg !21522
    #dbg_value(i1 %i.i, !7818, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21502)
  br i1 %i.i, label %bb.b, label %bb.c, !dbg !21523

bb.b:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21525
  br label %_RNvXs9_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshovLROGBtMy_11quinn_proto.exit, !dbg !21526

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1, !dbg !21527 ; 2 uses
    #dbg_value(ptr %i.j, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21491)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !21525
    #dbg_value(ptr undef, !4361, !DIExpression(), !21477)
    #dbg_value(i64 1, !4375, !DIExpression(), !21493)
    #dbg_value(ptr %i.j, !4371, !DIExpression(), !21494)
    #dbg_value(ptr %i.j, !4379, !DIExpression(), !21493)
    #dbg_value(ptr %i.g, !4372, !DIExpression(), !21495)
    #dbg_value(ptr poison, !4382, !DIExpression(), !21497)
    #dbg_value(ptr poison, !4385, !DIExpression(), !21498)
  %i.k = icmp eq ptr %i.j, %i.g, !dbg !21518
  br i1 %i.k, label %_RNvXs9_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshovLROGBtMy_11quinn_proto.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i.i, !dbg !21519

_RNvXs9_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseNtB5_10PayloadU16NtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i.i, !dbg !21528
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCsjx2R6KBUtVL_6rustls4msgs4base7PayloadNtB6_5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21529 {
bb.a:
    #dbg_value(ptr %0, !21533, !DIExpression(), !21536)
    #dbg_value(ptr %1, !21534, !DIExpression(), !21536)
  %i.a = load ptr, ptr %0, align 8, !dbg !21537, !nonnull !2135, !align !4083, !noundef !2135
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseNtB5_7PayloadNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21538
  ret i1 %i.b, !dbg !21539
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !21540 {
bb.a:
    #dbg_value(ptr %0, !21544, !DIExpression(), !21547)
    #dbg_value(ptr %1, !21545, !DIExpression(), !21547)
  %i.a = load ptr, ptr %0, align 8, !dbg !21548, !nonnull !2135, !align !4083, !noundef !2135
    #dbg_value(ptr %i.a, !7837, !DIExpression(), !21542)
    #dbg_value(ptr %1, !7839, !DIExpression(), !21542)
  %i.b = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21549
  ret i1 %i.b, !dbg !21550
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvXs1q_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_11ChunksExacthENtNtNtNtBa_4iter6traits8iterator8Iterator24___iterator_get_uncheckedCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #6 !dbg !21552 {
bb.a:
    #dbg_value(ptr %0, !21557, !DIExpression(), !21561)
    #dbg_value(i64 %1, !21558, !DIExpression(), !21561)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !21570
  %i.b = load i64, ptr %i.a, align 8, !dbg !21570, !noundef !2135 ; 2 uses
  %i.c = mul i64 %i.b, %1, !dbg !21571
    #dbg_value(i64 %i.c, !21559, !DIExpression(), !21562)
    #dbg_value(i64 %i.c, !21563, !DIExpression(), !21569)
  %i.d = load ptr, ptr %0, align 8, !dbg !21572, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.d, !21566, !DIExpression(), !21569)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.c, !dbg !21573
  %i.f = insertvalue { ptr, i64 } poison, ptr %i.e, 0, !dbg !21574
  %i.g = insertvalue { ptr, i64 } %i.f, i64 %i.b, 1, !dbg !21574
  ret { ptr, i64 } %i.g, !dbg !21574
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvXs2_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB5_9BbrConfigNtB7_17ControllerFactory5build(ptr noundef nonnull %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i16 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21575 {
bb.a:
  %i.a = alloca [488 x i8], align 8               ; 5 uses
    #dbg_value(ptr %0, !21617, !DIExpression(), !21621)
    #dbg_value(i64 %1, !21618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21621)
    #dbg_value(i32 %2, !21618, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !21621)
    #dbg_value(i16 %3, !21619, !DIExpression(), !21621)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !21627
  call void @_RNvMNtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB2_3Bbr3new(ptr noalias nofree noundef nonnull sret([488 x i8]) align 8 captures(none) dereferenceable(488) %i.a, ptr noundef nonnull %0, i16 noundef %3), !dbg !21627
    #dbg_declare(ptr %i.a, !7854, !DIExpression(), !21577)
    #dbg_value(i64 8, !7261, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21579)
    #dbg_value(i64 8, !7268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21581)
    #dbg_value(i64 8, !7285, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21583)
    #dbg_value(i64 488, !7261, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21579)
    #dbg_value(i64 488, !7268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21581)
    #dbg_value(i64 488, !7285, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21583)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7283, !DIExpression(), !21581)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !7289, !DIExpression(), !21583)
    #dbg_value(i8 0, !7290, !DIExpression(), !21583)
    #dbg_value(i64 8, !7292, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21585)
    #dbg_value(i64 8, !7314, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !21587)
    #dbg_value(i64 488, !7292, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21585)
    #dbg_value(i64 488, !7314, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !21587)
    #dbg_value(i1 false, !7296, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !21585)
    #dbg_value(i64 488, !7297, !DIExpression(), !21588)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !dbg !21628, !noalias !21622
  %i.b = tail call noundef align 8 dereferenceable_or_null(488) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 1257) 488, i64 noundef range(i64 1, 9) 8) #30, !dbg !21629, !noalias !21622 ; 3 uses
  %i.c = icmp eq ptr %i.b, null, !dbg !21630
  br i1 %i.c, label %bb.b, label %_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrE3newBK_.exit, !dbg !21631, !prof !7316

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 488) #32
          to label %.noexc unwind label %bb.c, !dbg !21632

.noexc:                                           ; preds = %bb.b
  unreachable, !dbg !21632

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21623), !dbg !21633
    #dbg_value(ptr %i.a, !5983, !DIExpression(), !21594)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 304, !dbg !21634 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21624), !dbg !21634
    #dbg_value(ptr %i.e, !5988, !DIExpression(), !21598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21625), !dbg !21635
    #dbg_value(ptr %i.e, !5994, !DIExpression(), !21602)
    #dbg_value(ptr %i.e, !5996, !DIExpression(), !21604)
    #dbg_value(i64 1, !6003, !DIExpression(), !21606)
    #dbg_value(i8 1, !6005, !DIExpression(), !21606)
    #dbg_value(i64 1, !6007, !DIExpression(), !21608)
    #dbg_value(i8 1, !6009, !DIExpression(), !21608)
  %i.f = load ptr, ptr %i.e, align 8, !dbg !21636, !alias.scope !21626, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.f, !6004, !DIExpression(), !21610)
    #dbg_value(ptr %i.f, !6008, !DIExpression(), !21608)
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !21637, !noalias !21626
  %i.h = icmp eq i64 %i.g, 1, !dbg !21638
  br i1 %i.h, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrEBH_.exit, !dbg !21638

bb.d:                                             ; preds = %bb.c
    #dbg_value(i8 2, !4855, !DIExpression(), !21612)
  fence acquire, !dbg !21639
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr9BbrConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e) #29
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrEBH_.exit unwind label %bb.e, !dbg !21640

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !21641
  unreachable, !dbg !21641

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrEBH_.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.d, !dbg !21641

_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr3BbrE3newBK_.exit: ; preds = %bb.a
    #dbg_value(ptr %i.b, !7859, !DIExpression(), !21613)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.b, ptr noundef nonnull align 8 dereferenceable(488) %i.a, i64 488, i1 false), !dbg !21642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !21643
  %i.j = insertvalue { ptr, ptr } poison, ptr %i.b, 0, !dbg !21644
  %i.k = insertvalue { ptr, ptr } %i.j, ptr @93, 1, !dbg !21644
  ret { ptr, ptr } %i.k, !dbg !21644
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4sendNtB5_9ByteSliceNtB5_11BytesSource9pop_chunk(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !21648 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !21689, !DIExpression(), !21695)
    #dbg_value(i64 %2, !21690, !DIExpression(), !21695)
    #dbg_declare(ptr %i.c, !21692, !DIExpression(), !21696)
    #dbg_declare(ptr %i.b, !21697, !DIExpression(), !21706)
    #dbg_value(i64 0, !21714, !DIExpression(), !21723)
    #dbg_declare(ptr poison, !21712, !DIExpression(), !21734)
    #dbg_declare(ptr poison, !21699, !DIExpression(), !21735)
    #dbg_declare(ptr poison, !21736, !DIExpression(), !21740)
    #dbg_declare(ptr poison, !21741, !DIExpression(), !21745)
    #dbg_declare(ptr poison, !21746, !DIExpression(), !21753)
    #dbg_value(i64 0, !21754, !DIExpression(), !21760)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !21836 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !21836, !noundef !2135 ; 6 uses
    #dbg_value(ptr undef, !21761, !DIExpression(DW_OP_deref), !21667)
    #dbg_value(ptr undef, !21762, !DIExpression(DW_OP_deref), !21667)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %2), !dbg !21837 ; 5 uses
    #dbg_value(i64 %..i, !21691, !DIExpression(), !21766)
    #dbg_value(i64 %..i, !21716, !DIExpression(), !21723)
    #dbg_value(i64 %..i, !21700, !DIExpression(), !21767)
    #dbg_value(i64 %..i, !21737, !DIExpression(), !21768)
    #dbg_value(i64 %..i, !21742, !DIExpression(), !21769)
    #dbg_value(i64 %..i, !21770, !DIExpression(), !21775)
    #dbg_value(i64 %..i, !21776, !DIExpression(), !21781)
    #dbg_value(i64 %..i, !21782, !DIExpression(), !21786)
    #dbg_value(i64 %..i, !21747, !DIExpression(), !21787)
    #dbg_value(i64 %..i, !21756, !DIExpression(), !21760)
  %i.f = icmp eq i64 %..i, 0, !dbg !21838
end_hunk_0
begin_hunk_1_@_RNvXs6_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXsC_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21996
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit, !dbg !21996

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21997
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit, !dbg !21997

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXsE_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !21998
  br label %_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit, !dbg !21998

_RNvXsX_NtNtCskKLDkoKarTP_4core3fmt3numyNtB7_5Debug3fmt.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.in.i = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in.i, !dbg !21999
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtCshovLROGBtMy_11quinn_proto10connectionNtB5_15ConnectionErrorNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !22003 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !22008, !DIExpression(), !22014)
    #dbg_value(ptr %1, !22009, !DIExpression(), !22014)
  %i.d = load i64, ptr %0, align 8, !dbg !22018, !range !5463, !noundef !2135 ; 3 uses
  %i.e = icmp ne i64 %i.d, 4, !dbg !22018
  tail call void @llvm.assume(i1 %i.e), !dbg !22018
  %i.f = add nsw i64 %i.d, -2, !dbg !22018
  %.inv = icmp samesign ult i64 %i.d, 2, !dbg !22018
  %i.g = select i1 %.inv, i64 2, i64 %i.f, !dbg !22018
  switch i64 %i.g, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.j
  ], !dbg !22018

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !22018

bb.c:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef 15), !dbg !22018
  br label %bb.k, !dbg !22018

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22019
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22019
    #dbg_value(ptr %i.i, !22010, !DIExpression(), !22015)
  store ptr %i.i, ptr %i.c, align 8, !dbg !22019
    #dbg_value(ptr %i.c, !22010, !DIExpression(DW_OP_deref), !22015)
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef 14, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @98), !dbg !22020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22021
  br label %bb.k, !dbg !22021

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22022
    #dbg_value(ptr %0, !22011, !DIExpression(), !22016)
  store ptr %0, ptr %i.b, align 8, !dbg !22022
    #dbg_value(ptr %i.b, !22011, !DIExpression(DW_OP_deref), !22016)
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef 16, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100), !dbg !22023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22021
  br label %bb.k, !dbg !22021

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22024
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22024
    #dbg_value(ptr %i.l, !22012, !DIExpression(), !22017)
  store ptr %i.l, ptr %i.a, align 8, !dbg !22024
    #dbg_value(ptr %i.a, !22012, !DIExpression(DW_OP_deref), !22017)
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @103, i64 noundef 17, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @102), !dbg !22025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22021
  br label %bb.k, !dbg !22021

bb.g:                                             ; preds = %bb.a
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @104, i64 noundef 5), !dbg !22018
  br label %bb.k, !dbg !22018

bb.h:                                             ; preds = %bb.a
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 8), !dbg !22018
  br label %bb.k, !dbg !22018

bb.i:                                             ; preds = %bb.a
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @106, i64 noundef 13), !dbg !22018
  br label %bb.k, !dbg !22018

bb.j:                                             ; preds = %bb.a
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 13), !dbg !22018
  br label %bb.k, !dbg !22018

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.m, %bb.f ], [ %i.n, %bb.g ], [ %i.o, %bb.h ], [ %i.p, %bb.i ], [ %i.q, %bb.j ]
  ret i1 %.sroa.0.0.in, !dbg !22026
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCshovLROGBtMy_11quinn_proto6codingNtB5_13UnexpectedEndNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !22027 {
bb.a:
    #dbg_value(ptr %0, !22032, !DIExpression(), !22035)
    #dbg_value(ptr %1, !22033, !DIExpression(), !22035)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef 24), !dbg !22036
  ret i1 %i.a, !dbg !22037
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCshovLROGBtMy_11quinn_proto6varintNtB5_6VarIntNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1626 {
bb.a:
    #dbg_value(ptr %0, !7837, !DIExpression(), !22038)
    #dbg_value(ptr %1, !7839, !DIExpression(), !22038)
  %i.a = tail call noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22039
  ret i1 %i.a, !dbg !22040
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtNtNtCshovLROGBtMy_11quinn_proto10connection7streams4recvNtB5_9ReadErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !22045 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !22052, !DIExpression(), !22061)
    #dbg_value(ptr %1, !22053, !DIExpression(), !22061)
    #dbg_value(ptr %1, !22062, !DIExpression(), !22068)
  %i.c = load i64, ptr %0, align 8, !dbg !22072, !range !4062, !noundef !2135
  %i.d = trunc nuw i64 %i.c to i1, !dbg !22072
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !22072

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22072
    #dbg_value(ptr %i.e, !22054, !DIExpression(), !22069)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22073
    #dbg_value(ptr %i.e, !22055, !DIExpression(), !22070)
  store ptr %i.e, ptr %i.b, align 8, !dbg !22073, !captures !4188
    #dbg_value(ptr %i.b, !22057, !DIExpression(), !22071)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22074
  store ptr %i.b, ptr %i.a, align 8, !dbg !22074
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22074
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRNtNtCshovLROGBtMy_11quinn_proto6varint6VarIntNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !22074
    #dbg_value(ptr @109, !22063, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22068)
    #dbg_value(ptr %i.a, !22063, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22068)
  %i.f = load ptr, ptr %1, align 8, !dbg !22075, !nonnull !2135, !noundef !2135
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22075
  %i.h = load ptr, ptr %i.g, align 8, !dbg !22075, !nonnull !2135, !align !4083, !noundef !2135
  %i.i = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @109, ptr noundef nonnull %i.a), !dbg !22076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22077
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22077
  br label %bb.d, !dbg !22078

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef 7), !dbg !22072
  br label %bb.d, !dbg !22072

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.b ], [ %i.j, %bb.c ]
  ret i1 %.sroa.0.0.in, !dbg !22079
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs9_NtNtCsjx2R6KBUtVL_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22080 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
    #dbg_value(ptr %0, !22111, !DIExpression(), !22114)
    #dbg_value(ptr %1, !22112, !DIExpression(), !22114)
  %.val = load ptr, ptr %1, align 8, !dbg !22115  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !22115
  %.val2 = load ptr, ptr %i.c, align 8, !dbg !22115 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22115
  %.val3 = load ptr, ptr %i.d, align 8, !dbg !22115, !nonnull !2135, !noundef !2135 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22115
  %.val4 = load i64, ptr %i.e, align 8, !dbg !22115, !noundef !2135 ; 2 uses
    #dbg_value(ptr poison, !4361, !DIExpression(), !22083)
    #dbg_value(ptr poison, !7767, !DIExpression(), !22084)
    #dbg_value(ptr poison, !7792, !DIExpression(), !22086)
    #dbg_value(ptr poison, !7768, !DIExpression(), !22084)
    #dbg_value(ptr poison, !7800, !DIExpression(), !22088)
    #dbg_value(i64 %.val4, !7805, !DIExpression(), !22091)
    #dbg_value(i64 %.val4, !7815, !DIExpression(), !22093)
    #dbg_value(ptr %.val3, !7813, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22094)
    #dbg_value(ptr %.val3, !7809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22095)
    #dbg_value(i64 %.val4, !7813, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22094)
    #dbg_value(i64 %.val4, !7809, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22095)
    #dbg_value(ptr %.val3, !7810, !DIExpression(), !22096)
    #dbg_value(ptr %.val3, !7816, !DIExpression(), !22093)
  %i.f = getelementptr inbounds nuw i8, ptr %.val3, i64 %.val4, !dbg !22116
    #dbg_value(ptr %.val3, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22097)
    #dbg_value(ptr %i.f, !7769, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22097)
    #dbg_value(ptr undef, !4361, !DIExpression(), !22083)
    #dbg_value(i64 1, !4375, !DIExpression(), !22099)
    #dbg_value(ptr %.val3, !4371, !DIExpression(), !22100)
    #dbg_value(ptr %.val3, !4379, !DIExpression(), !22099)
    #dbg_value(ptr %i.f, !4372, !DIExpression(), !22101)
    #dbg_value(ptr poison, !4382, !DIExpression(), !22103)
    #dbg_value(ptr poison, !4385, !DIExpression(), !22104)
  %i.g = icmp samesign eq i64 %.val4, 0, !dbg !22117
  br i1 %i.g, label %_RINvNtNtCsjx2R6KBUtVL_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i, !dbg !22118

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val), "nonnull"(ptr %.val2) ]
  br label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, !dbg !22118

_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.c, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %.val3, %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.lr.ph.i ], [ %i.i, %bb.c ] ; 2 uses
    #dbg_value(ptr %.sroa.0.08.i, !7769, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22097)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22119
    #dbg_value(ptr %.sroa.0.08.i, !7770, !DIExpression(), !22105)
  store ptr %.sroa.0.08.i, ptr %i.b, align 8, !dbg !22119, !captures !4188
    #dbg_value(ptr %i.b, !7772, !DIExpression(), !22106)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22120
  store ptr %i.b, ptr %i.a, align 8, !dbg !22120
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCshovLROGBtMy_11quinn_proto, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !22120
    #dbg_value(ptr @30, !7796, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22086)
    #dbg_value(ptr %i.a, !7796, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22086)
  %i.h = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val2, ptr noundef nonnull @30, ptr noundef nonnull %i.a), !dbg !22121
    #dbg_value(i1 %i.h, !7818, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22108)
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !22122

bb.b:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22124
  br label %_RINvNtNtCsjx2R6KBUtVL_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit, !dbg !22125

bb.c:                                             ; preds = %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 1, !dbg !22126 ; 2 uses
    #dbg_value(ptr %i.i, !7769, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22097)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22124
    #dbg_value(ptr undef, !4361, !DIExpression(), !22083)
    #dbg_value(i64 1, !4375, !DIExpression(), !22099)
    #dbg_value(ptr %i.i, !4371, !DIExpression(), !22100)
    #dbg_value(ptr %i.i, !4379, !DIExpression(), !22099)
    #dbg_value(ptr %i.f, !4372, !DIExpression(), !22101)
    #dbg_value(ptr poison, !4382, !DIExpression(), !22103)
    #dbg_value(ptr poison, !4385, !DIExpression(), !22104)
  %i.j = icmp eq ptr %i.i, %i.f, !dbg !22117
  br i1 %i.j, label %_RINvNtNtCsjx2R6KBUtVL_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit, label %_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshovLROGBtMy_11quinn_proto.exit.i, !dbg !22118

_RINvNtNtCsjx2R6KBUtVL_6rustls4msgs4base3hexRINtNtCsexYYUdYSQU6_5alloc3vec3VechEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i, !dbg !22127
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !22128 {
bb.a:
    #dbg_value(ptr %0, !22134, !DIExpression(), !22137)
    #dbg_value(ptr %1, !22135, !DIExpression(), !22137)
    #dbg_value(ptr %1, !22138, !DIExpression(), !22141)
    #dbg_value(ptr %1, !22142, !DIExpression(), !22145)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !22146
  %i.b = load i32, ptr %i.a, align 8, !dbg !22146, !noundef !2135 ; 2 uses
  %i.c = and i32 %i.b, 33554432, !dbg !22146
  %.not = icmp eq i32 %i.c, 0, !dbg !22146
  br i1 %.not, label %bb.b, label %bb.c, !dbg !22147

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864, !dbg !22148
  %.not3 = icmp eq i32 %i.d, 0, !dbg !22148
  br i1 %.not3, label %bb.d, label %bb.e, !dbg !22149

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22150
  br label %bb.f, !dbg !22150

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22151
  br label %bb.f, !dbg !22151

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !22152
  br label %bb.f, !dbg !22152

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in, !dbg !22153
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsgb4gPAseikh_12tracing_core8callsiteNtB4_15DefaultCallsiteNtB4_8Callsite8metadata(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #8 !dbg !22154 {
bb.a:
    #dbg_value(ptr %0, !22155, !DIExpression(), !22157)
  %i.a = load ptr, ptr %0, align 8, !dbg !22158, !nonnull !2135, !align !4083, !noundef !2135
  ret ptr %i.a, !dbg !22159
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEEINtB4_10SpecExtendBT_INtNtNtNtB10_4iter8adapters3map3MapINtNtNtB10_5slice4iter7IterMutBT_EINvNtB10_3mem4takeBT_EEE11spec_extendCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22160 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !22233, !DIExpression(), !22238)
    #dbg_value(ptr %1, !22234, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22238)
    #dbg_value(ptr %2, !22234, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22239), !dbg !22308
    #dbg_value(ptr %1, !22240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22173)
    #dbg_value(ptr %2, !22240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22173)
    #dbg_value(ptr %0, !22244, !DIExpression(), !22173)
    #dbg_value(ptr %0, !22260, !DIExpression(), !22176)
    #dbg_value(ptr poison, !22263, !DIExpression(), !22179)
    #dbg_value(ptr poison, !22270, !DIExpression(), !22185)
    #dbg_value(i64 16, !22277, !DIExpression(), !22193)
    #dbg_value(ptr %2, !22275, !DIExpression(), !22194)
    #dbg_value(ptr %2, !22291, !DIExpression(), !22195)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !22292, !DIExpression(), !22195)
    #dbg_value(ptr %2, !22285, !DIExpression(), !22196)
    #dbg_value(ptr %1, !22286, !DIExpression(), !22196)
    #dbg_value(ptr %1, !22281, !DIExpression(), !22197)
    #dbg_value(ptr %2, !22280, !DIExpression(), !22197)
  %i.b = ptrtoint ptr %2 to i64, !dbg !22309
  %i.c = ptrtoint ptr %1 to i64, !dbg !22309
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22309
  %i.e = lshr exact i64 %i.d, 4, !dbg !22309      ; 2 uses
    #dbg_value(i64 poison, !22245, !DIExpression(), !22198)
    #dbg_value(i64 1, !22246, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22198)
    #dbg_value(i64 %i.e, !22246, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22198)
    #dbg_value(i64 %i.e, !22247, !DIExpression(), !22199)
    #dbg_value(ptr %0, !7412, !DIExpression(), !22201)
    #dbg_value(i64 %i.e, !7413, !DIExpression(), !22201)
    #dbg_value(i64 %i.e, !7415, !DIExpression(), !22203)
    #dbg_value(i64 %i.e, !7423, !DIExpression(), !22205)
    #dbg_value(i64 %i.e, !7428, !DIExpression(), !22207)
    #dbg_value(ptr %0, !7420, !DIExpression(), !22208)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22310 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !22310, !alias.scope !22294, !noundef !2135 ; 3 uses
    #dbg_value(i64 %i.g, !7421, !DIExpression(), !22203)
    #dbg_value(i64 %i.g, !7425, !DIExpression(), !22205)
    #dbg_value(i64 %i.g, !7430, !DIExpression(), !22207)
    #dbg_value(i64 %i.g, !7433, !DIExpression(), !22212)
    #dbg_value(ptr %0, !7424, !DIExpression(), !22205)
    #dbg_value(ptr %0, !7429, !DIExpression(), !22207)
    #dbg_value(ptr %0, !7436, !DIExpression(), !22214)
    #dbg_value(i64 8, !7426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22205)
    #dbg_value(i64 8, !7431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22207)
    #dbg_value(i64 16, !7426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22205)
    #dbg_value(i64 16, !7431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22207)
    #dbg_value(i64 16, !7437, !DIExpression(), !22214)
  %i.h = load i64, ptr %0, align 8, !dbg !22311, !range !4644, !alias.scope !22294, !noundef !2135
    #dbg_value(i64 %i.h, !7434, !DIExpression(), !22212)
  %i.i = sub i64 %i.h, %i.g, !dbg !22312
  %i.j = icmp ugt i64 %i.e, %i.i, !dbg !22313
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_5slice4iter7IterMutBG_EINvNtBN_3mem4takeBG_EEECshovLROGBtMy_11quinn_proto.exit, !dbg !22314, !prof !4645

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 8, i64 noundef 16), !dbg !22315
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !22316, !alias.scope !22239
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_5slice4iter7IterMutBG_EINvNtBN_3mem4takeBG_EEECshovLROGBtMy_11quinn_proto.exit, !dbg !22315

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_5slice4iter7IterMutBG_EINvNtBN_3mem4takeBG_EEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre.i, %bb.b ], !dbg !22316
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22317
  %i.m = load ptr, ptr %i.l, align 8, !dbg !22317, !alias.scope !22239, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.m, !22257, !DIExpression(), !22223)
    #dbg_value(ptr %i.f, !22295, !DIExpression(), !22224)
    #dbg_value(ptr %i.f, !22258, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22225)
    #dbg_value(i64 %i.k, !22258, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22225)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22318, !noalias !22239
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22318
  store ptr %i.m, ptr %i.n, align 8, !dbg !22318, !noalias !22239
  store ptr %i.f, ptr %i.a, align 8, !dbg !22318, !noalias !22239
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22318
  store i64 %i.k, ptr %i.o, align 8, !dbg !22318, !noalias !22239
    #dbg_value(ptr %1, !22297, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22229)
    #dbg_value(ptr %2, !22297, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22229)
    #dbg_declare(ptr %i.a, !22303, !DIExpression(), !22230)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutINtNtNtBc_3ops5range5RangeyEEINvNtBc_3mem4takeB1q_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2g_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3w_3VecB1q_E14extend_trustedBN_E0E0ECshovLROGBtMy_11quinn_proto(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !22319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22320, !noalias !22239
  ret void, !dbg !22321
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEEINtB4_10SpecExtendBT_INtNtNtNtB10_4iter8adapters4take4TakeQINtNtB22_3map3MapINtNtNtB10_5slice4iter7IterMutBT_EINvNtB10_3mem4takeBT_EEEE11spec_extendCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22323 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(ptr %0, !22416, !DIExpression(), !22421)
    #dbg_value(ptr %1, !22417, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22421)
    #dbg_value(i64 %2, !22417, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22422), !dbg !22494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %1, ptr %i.d, align 8, !noalias !22423
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %2, ptr %i.e, align 8, !noalias !22423
    #dbg_value(ptr %0, !22424, !DIExpression(), !22337)
    #dbg_value(ptr %0, !22444, !DIExpression(), !22340)
    #dbg_declare(ptr %i.d, !22428, !DIExpression(), !22341)
    #dbg_value(ptr %i.d, !22447, !DIExpression(), !22348)
  %i.f = icmp eq i64 %2, 0, !dbg !22495
  br i1 %i.f, label %bb.c, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeQINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3ops5range5RangeyEEINvNtBa_3mem4takeB1H_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto.exit.i, !dbg !22495

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeQINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3ops5range5RangeyEEINvNtBa_3mem4takeB1H_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22496, !noalias !22457
  call void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtB9_8adapters3map3MapINtNtNtBb_5slice4iter7IterMutINtNtNtBb_3ops5range5RangeyEEINvNtBb_3mem4takeB1K_EENtB5_8Iterator9size_hintCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d), !dbg !22497, !noalias !22458
    #dbg_value(i64 poison, !22450, !DIExpression(), !22352)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22498
  %i.h = load i64, ptr %i.g, align 8, !dbg !22498, !range !4062, !noalias !22457, !noundef !2135
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22498
  %i.j = load i64, ptr %i.i, align 8, !dbg !22498, !noalias !22457
    #dbg_value(i64 %i.h, !22451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22352)
    #dbg_value(i64 %i.j, !22451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22352)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22499, !noalias !22457
    #dbg_value(i64 poison, !22452, !DIExpression(), !22353)
  %i.k = trunc nuw i64 %i.h to i1, !dbg !22500
  %i.l = call i64 @llvm.umin.i64(i64 %i.j, i64 %2), !dbg !22500
  %.sroa.4.0.i.i = select i1 %i.k, i64 %i.l, i64 %2, !dbg !22500 ; 2 uses
    #dbg_value(i64 1, !22451, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22352)
    #dbg_value(i64 %.sroa.4.0.i.i, !22451, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22352)
    #dbg_value(i64 poison, !22429, !DIExpression(), !22354)
    #dbg_value(i64 1, !22430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22354)
    #dbg_value(i64 %.sroa.4.0.i.i, !22430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22354)
    #dbg_value(i64 %.sroa.4.0.i.i, !22431, !DIExpression(), !22355)
    #dbg_value(ptr %0, !7412, !DIExpression(), !22357)
    #dbg_value(i64 %.sroa.4.0.i.i, !7413, !DIExpression(), !22357)
    #dbg_value(i64 %.sroa.4.0.i.i, !7415, !DIExpression(), !22359)
    #dbg_value(i64 %.sroa.4.0.i.i, !7423, !DIExpression(), !22361)
    #dbg_value(i64 %.sroa.4.0.i.i, !7428, !DIExpression(), !22363)
    #dbg_value(ptr %0, !7420, !DIExpression(), !22364)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22501 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !dbg !22501, !alias.scope !22459, !noundef !2135 ; 3 uses
    #dbg_value(i64 %i.n, !7421, !DIExpression(), !22359)
    #dbg_value(i64 %i.n, !7425, !DIExpression(), !22361)
    #dbg_value(i64 %i.n, !7430, !DIExpression(), !22363)
    #dbg_value(i64 %i.n, !7433, !DIExpression(), !22368)
    #dbg_value(ptr %0, !7424, !DIExpression(), !22361)
    #dbg_value(ptr %0, !7429, !DIExpression(), !22363)
    #dbg_value(ptr %0, !7436, !DIExpression(), !22370)
    #dbg_value(i64 8, !7426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22361)
    #dbg_value(i64 8, !7431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22363)
    #dbg_value(i64 16, !7426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22361)
    #dbg_value(i64 16, !7431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22363)
    #dbg_value(i64 16, !7437, !DIExpression(), !22370)
  %i.o = load i64, ptr %0, align 8, !dbg !22502, !range !4644, !alias.scope !22459, !noundef !2135
    #dbg_value(i64 %i.o, !7434, !DIExpression(), !22368)
  %i.p = sub i64 %i.o, %i.n, !dbg !22503
  %i.q = icmp ugt i64 %.sroa.4.0.i.i, %i.p, !dbg !22504
  br i1 %i.q, label %bb.b, label %bb.d, !dbg !22505, !prof !7316

bb.b:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeQINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3ops5range5RangeyEEINvNtBa_3mem4takeB1H_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto.exit.i
  call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.n, i64 noundef %.sroa.4.0.i.i, i64 noundef 8, i64 noundef 16), !dbg !22506
  %.pre.i = load i64, ptr %i.m, align 8, !dbg !22507, !alias.scope !22422
  br label %bb.d, !dbg !22506

bb.c:                                             ; preds = %bb.a
    #dbg_value(i64 poison, !22429, !DIExpression(), !22354)
    #dbg_value(i64 1, !22430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22354)
    #dbg_value(i64 0, !22430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22354)
    #dbg_value(i64 0, !22431, !DIExpression(), !22355)
    #dbg_value(ptr %0, !7412, !DIExpression(), !22357)
    #dbg_value(i64 0, !7413, !DIExpression(), !22357)
    #dbg_value(i64 0, !7415, !DIExpression(), !22359)
    #dbg_value(i64 0, !7423, !DIExpression(), !22361)
    #dbg_value(i64 0, !7428, !DIExpression(), !22363)
    #dbg_value(ptr %0, !7420, !DIExpression(), !22364)
    #dbg_value(i64 poison, !7421, !DIExpression(), !22359)
    #dbg_value(i64 poison, !7425, !DIExpression(), !22361)
    #dbg_value(i64 poison, !7430, !DIExpression(), !22363)
    #dbg_value(i64 poison, !7433, !DIExpression(), !22368)
    #dbg_value(ptr %0, !7424, !DIExpression(), !22361)
    #dbg_value(ptr %0, !7429, !DIExpression(), !22363)
    #dbg_value(ptr %0, !7436, !DIExpression(), !22370)
    #dbg_value(i64 8, !7426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22361)
    #dbg_value(i64 8, !7431, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22363)
    #dbg_value(i64 16, !7426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22361)
    #dbg_value(i64 16, !7431, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22363)
    #dbg_value(i64 16, !7437, !DIExpression(), !22370)
    #dbg_value(i64 poison, !7434, !DIExpression(), !22368)
    #dbg_value(ptr poison, !22441, !DIExpression(), !22373)
    #dbg_value(ptr %0, !22460, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !22374)
    #dbg_value(ptr %0, !22442, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22375)
    #dbg_value(i64 poison, !22442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22375)
    #dbg_value(ptr poison, !22462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22379)
    #dbg_value(ptr poison, !22472, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22383)
    #dbg_value(ptr poison, !22477, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22387)
    #dbg_value(ptr %0, !22462, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22379)
    #dbg_value(ptr %0, !22472, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22383)
    #dbg_value(ptr %0, !22477, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !22387)
    #dbg_value(i64 poison, !22462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22379)
    #dbg_value(i64 poison, !22472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22383)
    #dbg_value(i64 poison, !22477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22387)
    #dbg_value(ptr %1, !22468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22388)
    #dbg_value(i64 %2, !22468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22488
    #dbg_declare(ptr %i.b, !22474, !DIExpression(), !22392)
    #dbg_value(i64 %2, !22475, !DIExpression(), !22393)
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeQINtNtB1K_3map3MapINtNtNtBN_5slice4iter7IterMutBG_EINvNtBN_3mem4takeBG_EEEECshovLROGBtMy_11quinn_proto.exit, !dbg !22508

bb.d:                                             ; preds = %bb.b, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeQINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3ops5range5RangeyEEINvNtBa_3mem4takeB1H_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto.exit.i
  %i.r = phi i64 [ %i.n, %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters4takeINtB4_4TakeQINtNtB6_3map3MapINtNtNtBa_5slice4iter7IterMutINtNtNtBa_3ops5range5RangeyEEINvNtBa_3mem4takeB1H_EEENtNtNtB8_6traits8iterator8Iterator9size_hintCshovLROGBtMy_11quinn_proto.exit.i ], [ %.pre.i, %bb.b ], !dbg !22507
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22509
  %i.t = load ptr, ptr %i.s, align 8, !dbg !22509, !alias.scope !22422, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.t, !22441, !DIExpression(), !22373)
    #dbg_value(ptr %i.m, !22460, !DIExpression(), !22374)
    #dbg_value(ptr %i.m, !22442, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22375)
    #dbg_value(i64 %i.r, !22442, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22375)
    #dbg_value(ptr %i.t, !22462, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22379)
    #dbg_value(ptr %i.t, !22472, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22383)
    #dbg_value(ptr %i.t, !22477, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !22387)
    #dbg_value(ptr %i.m, !22462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22379)
    #dbg_value(ptr %i.m, !22472, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22383)
    #dbg_value(ptr %i.m, !22477, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22387)
    #dbg_value(i64 %i.r, !22462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22379)
    #dbg_value(i64 %i.r, !22472, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22383)
    #dbg_value(i64 %i.r, !22477, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22387)
    #dbg_value(ptr %1, !22468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22388)
    #dbg_value(i64 %2, !22468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22489
  store ptr %1, ptr %i.b, align 8, !noalias !22490
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %i.u, align 8, !noalias !22490
    #dbg_declare(ptr %i.b, !22474, !DIExpression(), !22392)
    #dbg_value(i64 %2, !22475, !DIExpression(), !22393)
  %i.v = add i64 %2, -1, !dbg !22510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22511, !noalias !22491
  store ptr %i.m, ptr %i.a, align 8, !dbg !22512, !noalias !22492
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22512
  store i64 %i.r, ptr %.sroa.512.0..sroa_idx.i, align 8, !dbg !22512, !noalias !22492
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22512
  store ptr %i.t, ptr %.sroa.7.0..sroa_idx.i, align 8, !dbg !22512, !noalias !22492
  %i.w = call { i64, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter6traits8iteratorQINtNtNtBa_8adapters3map3MapINtNtNtBc_5slice4iter7IterMutINtNtNtBc_3ops5range5RangeyEEINvNtBc_3mem4takeB1L_EENtB6_8Iterator8try_foldjNCINvNvXs7_NtBW_4takeINtB3a_4TakepENtB3a_8SpecTake13spec_for_each5checkB1L_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4l_3VecB1L_E14extend_trustedIB3l_BQ_EE0E0INtNtBc_6option6OptionjEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !22513, !noalias !22493 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22514, !noalias !22491
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeQINtNtB1K_3map3MapINtNtNtBN_5slice4iter7IterMutBG_EINvNtBN_3mem4takeBG_EEEECshovLROGBtMy_11quinn_proto.exit, !dbg !22508

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecINtNtNtCskKLDkoKarTP_4core3ops5range5RangeyEE14extend_trustedINtNtNtNtBN_4iter8adapters4take4TakeQINtNtB1K_3map3MapINtNtNtBN_5slice4iter7IterMutBG_EINvNtBN_3mem4takeBG_EEEECshovLROGBtMy_11quinn_proto.exit: ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22515, !noalias !22488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !22516
  ret void, !dbg !22517
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB6_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEINtB4_10SpecExtendBT_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2b_5slice4iter7IterMutBT_EINvNtB2b_3mem4takeBT_EEE11spec_extendBX_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22521 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !22617, !DIExpression(), !22622)
    #dbg_value(ptr %1, !22618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22622)
    #dbg_value(ptr %2, !22618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22622)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22623), !dbg !22735
    #dbg_value(ptr %1, !22624, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22534)
    #dbg_value(ptr %2, !22624, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22534)
    #dbg_value(ptr %0, !22628, !DIExpression(), !22534)
    #dbg_value(ptr %0, !22644, !DIExpression(), !22537)
    #dbg_value(ptr poison, !22650, !DIExpression(), !22540)
    #dbg_value(ptr poison, !22657, !DIExpression(), !22546)
    #dbg_value(i64 32, !22664, !DIExpression(), !22554)
    #dbg_value(ptr %2, !22662, !DIExpression(), !22555)
    #dbg_value(ptr %2, !22678, !DIExpression(), !22556)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !22679, !DIExpression(), !22556)
    #dbg_value(ptr %2, !22672, !DIExpression(), !22557)
    #dbg_value(ptr %1, !22673, !DIExpression(), !22557)
    #dbg_value(ptr %1, !22668, !DIExpression(), !22558)
    #dbg_value(ptr %2, !22667, !DIExpression(), !22558)
  %i.b = ptrtoint ptr %2 to i64, !dbg !22736
  %i.c = ptrtoint ptr %1 to i64, !dbg !22736
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !22736
  %i.e = lshr exact i64 %i.d, 5, !dbg !22736      ; 2 uses
    #dbg_value(i64 poison, !22629, !DIExpression(), !22559)
    #dbg_value(i64 1, !22630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22559)
    #dbg_value(i64 %i.e, !22630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22559)
    #dbg_value(i64 %i.e, !22631, !DIExpression(), !22560)
    #dbg_value(ptr %0, !22681, !DIExpression(), !22563)
    #dbg_value(i64 %i.e, !22685, !DIExpression(), !22563)
    #dbg_value(i64 %i.e, !22687, !DIExpression(), !22566)
    #dbg_value(i64 %i.e, !22694, !DIExpression(), !22569)
    #dbg_value(i64 %i.e, !22699, !DIExpression(), !22572)
    #dbg_value(ptr %0, !22691, !DIExpression(), !22573)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !22737 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !22737, !alias.scope !22704, !noundef !2135 ; 3 uses
    #dbg_value(i64 %i.g, !22692, !DIExpression(), !22566)
    #dbg_value(i64 %i.g, !22696, !DIExpression(), !22569)
    #dbg_value(i64 %i.g, !22701, !DIExpression(), !22572)
    #dbg_value(i64 %i.g, !22705, !DIExpression(), !22578)
    #dbg_value(ptr %0, !22695, !DIExpression(), !22569)
    #dbg_value(ptr %0, !22700, !DIExpression(), !22572)
    #dbg_value(ptr %0, !22708, !DIExpression(), !22581)
    #dbg_value(i64 8, !22697, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22569)
    #dbg_value(i64 8, !22702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22572)
    #dbg_value(i64 32, !22697, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22569)
    #dbg_value(i64 32, !22702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22572)
    #dbg_value(i64 32, !22709, !DIExpression(), !22581)
  %i.h = load i64, ptr %0, align 8, !dbg !22738, !range !4644, !alias.scope !22704, !noundef !2135
    #dbg_value(i64 %i.h, !22706, !DIExpression(), !22578)
  %i.i = sub i64 %i.h, %i.g, !dbg !22739
  %i.j = icmp ugt i64 %i.e, %i.i, !dbg !22740
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter7IterMutBG_EINvNtB1T_3mem4takeBG_EEEBK_.exit, !dbg !22741, !prof !4645

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.g, i64 noundef %i.e, i64 noundef 8, i64 noundef 32), !dbg !22742
  %.pre.i = load i64, ptr %i.f, align 8, !dbg !22743, !alias.scope !22623
  br label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter7IterMutBG_EINvNtB1T_3mem4takeBG_EEEBK_.exit, !dbg !22742

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1T_5slice4iter7IterMutBG_EINvNtB1T_3mem4takeBG_EEEBK_.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %i.g, %bb.a ], [ %.pre.i, %bb.b ], !dbg !22743
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !22744
  %i.m = load ptr, ptr %i.l, align 8, !dbg !22744, !alias.scope !22623, !nonnull !2135, !noundef !2135
    #dbg_value(ptr %i.m, !22641, !DIExpression(), !22590)
    #dbg_value(ptr %i.f, !22711, !DIExpression(), !22591)
    #dbg_value(ptr %i.f, !22642, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22592)
    #dbg_value(i64 %i.k, !22642, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22592)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22745, !noalias !22623
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22745
  store ptr %i.m, ptr %i.n, align 8, !dbg !22745, !noalias !22623
  store ptr %i.f, ptr %i.a, align 8, !dbg !22745, !noalias !22623
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22745
  store i64 %i.k, ptr %i.o, align 8, !dbg !22745, !noalias !22623
    #dbg_value(ptr %1, !22724, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22596)
    #dbg_value(ptr %2, !22724, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22596)
    #dbg_declare(ptr %i.a, !22730, !DIExpression(), !22597)
  call void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter7IterMutNtNtCshovLROGBtMy_11quinn_proto5frame10StreamMetaEINvNtBc_3mem4takeB1q_EENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2B_8for_each4callB1q_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB3R_3VecB1q_E14extend_trustedBN_E0E0EB1u_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a), !dbg !22746
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22747, !noalias !22623
  ret void, !dbg !22748
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecyEINtNtB6_14spec_from_iter12SpecFromIteryINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIteryENvMNtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB2X_6BitVec3newEE9from_iterCshovLROGBtMy_11quinn_proto(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !dbg !22751 {
bb.a:
    #dbg_declare(ptr %1, !22764, !DIExpression(), !22770)
    #dbg_value(ptr @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIteryENvMNtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB2q_6BitVec3newEyECshovLROGBtMy_11quinn_proto, !22766, !DIExpression(), !22771)
  tail call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIteryENvMNtCs7l6voRMtb7S_9fastbloom10bit_vectorNtB2q_6BitVec3newEyECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1), !dbg !22772
  ret void, !dbg !22773
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter4IterB13_ENCNCNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB3Q_10TlsSessionNtB3S_7Session13peer_identity00EE9from_iterB3U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22780 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !22872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22878)
    #dbg_value(ptr %2, !22872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22878)
    #dbg_declare(ptr %i.c, !22873, !DIExpression(), !22879)
    #dbg_declare(ptr poison, !22880, !DIExpression(), !22888)
    #dbg_declare(ptr poison, !22894, !DIExpression(), !22901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !22976
    #dbg_value(ptr poison, !22903, !DIExpression(), !22786)
    #dbg_value(ptr poison, !22910, !DIExpression(), !22792)
    #dbg_value(i64 24, !22917, !DIExpression(), !22800)
    #dbg_value(ptr %2, !22915, !DIExpression(), !22801)
    #dbg_value(ptr %2, !22931, !DIExpression(), !22802)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !22932, !DIExpression(), !22802)
    #dbg_value(ptr %2, !22925, !DIExpression(), !22803)
    #dbg_value(ptr %1, !22926, !DIExpression(), !22803)
    #dbg_value(ptr %1, !22921, !DIExpression(), !22804)
    #dbg_value(ptr %2, !22920, !DIExpression(), !22804)
  %i.d = ptrtoint ptr %2 to i64, !dbg !22977
  %i.e = ptrtoint ptr %1 to i64, !dbg !22977
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !22977
  %i.g = udiv exact i64 %i.f, 24, !dbg !22977     ; 2 uses
    #dbg_value(i64 %i.g, !22874, !DIExpression(), !22934)
    #dbg_value(i64 %i.g, !22892, !DIExpression(), !22935)
    #dbg_value(i64 %i.g, !22884, !DIExpression(), !22936)
    #dbg_value(i64 %i.g, !22898, !DIExpression(), !22937)
    #dbg_value(i64 %i.g, !6813, !DIExpression(), !22806)
    #dbg_value(i64 %i.g, !6832, !DIExpression(), !22808)
    #dbg_declare(ptr poison, !6817, !DIExpression(), !22809)
    #dbg_value(i64 8, !6818, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22806)
    #dbg_value(i64 8, !6835, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22808)
    #dbg_value(i64 24, !6818, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22806)
    #dbg_value(i64 24, !6835, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22808)
    #dbg_value(i64 0, !6834, !DIExpression(), !22808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !22978
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !22978
  %i.h = load i64, ptr %i.b, align 8, !dbg !22978, !range !4062, !noundef !2135
  %i.i = trunc nuw i64 %i.h to i1, !dbg !22979
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !22980
  %i.k = load i64, ptr %i.j, align 8, !dbg !22980, !range !6837, !noundef !2135 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !22980 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterBG_ENCNCNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB3e_10TlsSessionNtB3g_7Session13peer_identity00EEB3i_.exit.i, !dbg !22979, !prof !4645

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !22981
    #dbg_value(i64 %i.k, !6820, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22810)
    #dbg_value(i64 %i.m, !6820, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22810)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #32, !dbg !22982
  unreachable, !dbg !22982

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterBG_ENCNCNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB3e_10TlsSessionNtB3g_7Session13peer_identity00EEB3i_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !22983, !nonnull !2135, !noundef !2135 ; 2 uses
    #dbg_value(i64 %i.k, !6819, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22811)
    #dbg_value(ptr %i.n, !6819, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22811)
    #dbg_value(ptr poison, !6833, !DIExpression(), !22812)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !22984
    #dbg_value(i1 true, !6839, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !22814)
  tail call void @llvm.assume(i1 %i.o), !dbg !22985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !22986
  store i64 %i.k, ptr %i.c, align 8, !dbg !22987
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !22987
  store ptr %i.n, ptr %i.p, align 8, !dbg !22987
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !22987 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !22987
    #dbg_value(ptr %i.c, !22938, !DIExpression(), !22817)
    #dbg_value(ptr %1, !22941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22817)
    #dbg_value(ptr %2, !22941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22817)
    #dbg_value(ptr %1, !22944, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22828)
    #dbg_value(ptr %2, !22944, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22828)
    #dbg_value(ptr %i.c, !22948, !DIExpression(), !22828)
    #dbg_value(ptr poison, !22903, !DIExpression(), !22830)
    #dbg_value(ptr poison, !22910, !DIExpression(), !22832)
    #dbg_value(i64 24, !22917, !DIExpression(), !22836)
    #dbg_value(ptr %2, !22915, !DIExpression(), !22837)
    #dbg_value(ptr %2, !22931, !DIExpression(), !22838)
    #dbg_value(ptr %1, !22932, !DIExpression(), !22838)
    #dbg_value(ptr %2, !22925, !DIExpression(), !22839)
    #dbg_value(ptr %1, !22926, !DIExpression(), !22839)
    #dbg_value(ptr %1, !22921, !DIExpression(), !22840)
    #dbg_value(ptr %2, !22920, !DIExpression(), !22840)
    #dbg_value(i64 poison, !22949, !DIExpression(), !22841)
    #dbg_value(i64 1, !22950, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22841)
    #dbg_value(i64 %i.g, !22950, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22841)
    #dbg_value(i64 %i.g, !22951, !DIExpression(), !22842)
    #dbg_value(ptr %i.n, !22961, !DIExpression(), !22843)
    #dbg_value(ptr %i.q, !22962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22844)
    #dbg_value(i64 0, !22962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22844)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !22988, !noalias !22964
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !22988
  store ptr %i.n, ptr %i.r, align 8, !dbg !22988, !noalias !22964
  store ptr %i.q, ptr %i.a, align 8, !dbg !22988, !noalias !22964
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !22988
  store i64 0, ptr %i.s, align 8, !dbg !22988, !noalias !22964
    #dbg_value(ptr %1, !22965, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !22852)
    #dbg_value(ptr %2, !22965, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !22852)
    #dbg_declare(ptr %i.a, !22971, !DIExpression(), !22853)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerENCNCNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB2m_10TlsSessionNtB2o_7Session13peer_identity00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callB1n_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB59_3VecB1n_E14extend_trustedBN_E0E0EB2q_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !22989

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterBG_ENCNCNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB3e_10TlsSessionNtB3g_7Session13peer_identity00EEB3i_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerEECshovLROGBtMy_11quinn_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #27
          to label %bb.f unwind label %bb.e, !dbg !22990

bb.d:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCseEeXhZwqjpo_16rustls_pki_types14CertificateDerE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterBG_ENCNCNvXs0_NtNtCshovLROGBtMy_11quinn_proto6crypto6rustlsNtB3e_10TlsSessionNtB3g_7Session13peer_identity00EEB3i_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !22991, !noalias !22964
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !22992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !22990
  ret void, !dbg !22993

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #28, !dbg !22994
  unreachable, !dbg !22994

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !22994
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB4_3BbrNtB6_10Controller11on_end_acks(ptr noalias nofree noundef align 8 dereferenceable(488) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2, i64 noundef %3, i1 noundef zeroext %4, i64 noundef range(i64 0, 2) %5, i64 %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !22999 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
    #dbg_value(i64 %5, !23323, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
    #dbg_value(i64 %6, !23323, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23329)
    #dbg_value(ptr %0, !23319, !DIExpression(), !23329)
    #dbg_value(i64 %1, !23320, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23329)
    #dbg_value(i32 %2, !23320, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23329)
    #dbg_value(i64 %3, !23321, !DIExpression(), !23329)
    #dbg_value(i1 %4, !23322, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23329)
    #dbg_value(i1 %4, !23330, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !23338)
    #dbg_value(ptr poison, !23339, !DIExpression(), !23345)
    #dbg_value(i64 2, !23342, !DIExpression(), !23346)
    #dbg_value(ptr %0, !23347, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23351)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144, !dbg !23591 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !23591, !noundef !2135 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232, !dbg !23592 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !dbg !23592, !noundef !2135 ; 2 uses
  %i.g = sub i64 %i.d, %i.f, !dbg !23591          ; 7 uses
    #dbg_value(i64 %i.g, !23324, !DIExpression(), !23352)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !23593 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 416, !dbg !23594 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !23594, !noundef !2135
    #dbg_value(ptr %0, !23353, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23356)
    #dbg_value(ptr %0, !23357, !DIExpression(DW_OP_plus_uconst, 176, DW_OP_stack_value), !23360)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !23595 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !23595, !noundef !2135
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23361), !dbg !23596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
    #dbg_declare(ptr poison, !23362, !DIExpression(DW_OP_LLVM_fragment, 96, 32), !23016)
  store i64 %1, ptr %i.b, align 8, !noalias !23361
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.m, align 8, !noalias !23361
    #dbg_value(ptr %i.h, !23373, !DIExpression(), !23017)
    #dbg_value(i64 %i.g, !23374, !DIExpression(), !23017)
    #dbg_declare(ptr %i.b, !23375, !DIExpression(), !23018)
    #dbg_declare(ptr %i.b, !23366, !DIExpression(), !23019)
    #dbg_value(i64 %i.j, !23376, !DIExpression(), !23017)
    #dbg_value(i64 %i.l, !23377, !DIExpression(), !23017)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 128, !dbg !23597 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !23597 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !dbg !23597, !range !6991, !alias.scope !23361, !noundef !2135 ; 2 uses
    #dbg_value(i64 poison, !23362, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23020)
    #dbg_value(i32 %i.p, !23362, !DIExpression(DW_OP_LLVM_fragment, 64, 32), !23020)
  %.not.i = icmp eq i32 %i.p, -1, !dbg !23598     ; 2 uses
  %i.q = load i64, ptr %i.n, align 8, !dbg !23599, !alias.scope !23361
  %.sroa.5.0.i = select i1 %.not.i, i32 %2, i32 %i.p, !dbg !23599
  %.sroa.02.0.i = select i1 %.not.i, i64 %1, i64 %i.q, !dbg !23599
  %i.r = call { i64, i32 } @_RNvMNtCsG258MDvU3F_3std4timeNtB2_7Instant25saturating_duration_since(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef %.sroa.02.0.i, i32 noundef %.sroa.5.0.i), !dbg !23600, !noalias !23361 ; 2 uses
  %i.s = extractvalue { i64, i32 } %i.r, 0, !dbg !23600
  %i.t = extractvalue { i64, i32 } %i.r, 1, !dbg !23600 ; 2 uses
    #dbg_value(ptr poison, !23381, !DIExpression(), !23023)
  %i.u = mul i64 %i.s, 1000000, !dbg !23601
  %i.v = icmp ult i32 %i.t, 1000000000, !dbg !23602
  call void @llvm.assume(i1 %i.v), !dbg !23602
  %i.w = udiv i32 %i.t, 1000, !dbg !23603
  %i.x = zext nneg i32 %i.w to i64, !dbg !23603
  %i.y = add i64 %i.u, %i.x, !dbg !23601
  %i.z = mul i64 %i.y, %i.l, !dbg !23604
  %i.aa = udiv i64 %i.z, 1000000, !dbg !23604     ; 2 uses
    #dbg_value(i64 %i.aa, !23378, !DIExpression(), !23026)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !23605 ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !23605, !alias.scope !23361, !noundef !2135 ; 2 uses
  %.not14.i = icmp ugt i64 %i.ac, %i.aa, !dbg !23605
  br i1 %.not14.i, label %bb.b, label %bb.c, !dbg !23605

bb.b:                                             ; preds = %bb.a
  %i.ad = add i64 %i.ac, %i.g, !dbg !23606        ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !dbg !23606, !alias.scope !23361
  %i.ae = sub i64 %i.ad, %i.aa, !dbg !23607       ; 2 uses
    #dbg_value(i64 %i.ae, !23379, !DIExpression(), !23027)
  call void @_RNvMNtNtNtCshovLROGBtMy_11quinn_proto10congestion3bbr7min_maxNtB2_6MinMax10update_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef %i.j, i64 noundef %i.ae), !dbg !23608
  br label %_RNvMs3_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB5_19AckAggregationState28update_ack_aggregation_bytes.exit, !dbg !23609

bb.c:                                             ; preds = %bb.a
  store i64 %i.g, ptr %i.ab, align 8, !dbg !23610, !alias.scope !23361
  store i64 %1, ptr %i.n, align 8, !dbg !23611, !alias.scope !23361
  store i32 %2, ptr %i.o, align 8, !dbg !23611, !alias.scope !23361
    #dbg_value(i64 0, !23379, !DIExpression(), !23027)
  br label %_RNvMs3_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB5_19AckAggregationState28update_ack_aggregation_bytes.exit, !dbg !23609

_RNvMs3_NtNtCshovLROGBtMy_11quinn_proto10congestion3bbrNtB5_19AckAggregationState28update_ack_aggregation_bytes.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ %i.ae, %bb.b ], !dbg !23612
    #dbg_value(i64 %.sroa.0.0.i, !23379, !DIExpression(), !23027)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23609
    #dbg_value(i64 %.sroa.0.0.i, !23325, !DIExpression(), !23383)
    #dbg_value(ptr %0, !23334, !DIExpression(DW_OP_plus_uconst, 144, DW_OP_stack_value), !23384)
    #dbg_value(i64 poison, !23335, !DIExpression(), !23338)
  %i.af = load i64, ptr %i.c, align 8, !dbg !23613, !noundef !2135
  store i64 %i.af, ptr %i.e, align 8, !dbg !23614
end_hunk_1
