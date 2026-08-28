Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.10?download=true
inline.NumInlined: 262
inline.NumDeleted: 158
begin_hunk_0_@_RINvMsb_CscbFFjjIlwRm_5rcgenNtB6_11KeyIdMethod6deriveRShECs7OITKvp9Irj_4perf:bb.a
  %.not = icmp eq i64 %i.k, 0, !dbg !9926
  br i1 %.not, label %bb.i, label %bb.l, !dbg !9926

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.i, !9845, !DIExpression(), !9847)
    #dbg_value(ptr %i.i, !9852, !DIExpression(), !9854)
    #dbg_value(ptr %i.af, !9846, !DIExpression(), !9847)
    #dbg_value(ptr %i.af, !9853, !DIExpression(), !9854)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.i, i64 %i.k, i1 false), !dbg !9927
    #dbg_value(ptr %0, !9859, !DIExpression(), !9928)
  store i64 %i.k, ptr %i.ai, align 8, !dbg !9929
  br label %bb.i, !dbg !9930
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9652 {
bb.a:
    #dbg_value(ptr %0, !9651, !DIExpression(), !9931)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b, !dbg !9932

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %0, !9659, !DIExpression(), !9933)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit unwind label %bb.d, !dbg !9935

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !9659, !DIExpression(), !9936)
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0), !dbg !9938
  ret void, !dbg !9932

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #14, !dbg !9932
  unreachable, !dbg !9932

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECs7OITKvp9Irj_4perf.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a, !dbg !9932
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB6_8CompoundNtNtCsG258MDvU3F_3std2fs4FileNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap13serialize_keyeECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !dbg !9939 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
    #dbg_value(ptr %0, !10112, !DIExpression(), !10129)
    #dbg_value(ptr %1, !10113, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10129)
    #dbg_value(i64 %2, !10113, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10129)
    #dbg_value(ptr poison, !10130, !DIExpression(), !10143)
    #dbg_value(i64 1, !10141, !DIExpression(), !10145)
    #dbg_declare(ptr poison, !10146, !DIExpression(), !10183)
    #dbg_declare(ptr poison, !10146, !DIExpression(), !10185)
    #dbg_value(ptr %0, !10114, !DIExpression(), !10187)
    #dbg_value(ptr %0, !10117, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10188)
    #dbg_value(ptr %0, !10137, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10189)
  %i.c = load ptr, ptr %0, align 8, !dbg !10190, !nonnull !51, !align !10191, !noundef !51 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10189 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !dbg !10189, !range !10192, !noundef !51
    #dbg_value(i8 %i.e, !10138, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !10193)
  %i.f = icmp eq i8 %i.e, 1, !dbg !10194
    #dbg_value(ptr poison, !10195, !DIExpression(), !10207)
    #dbg_value(ptr %i.c, !10203, !DIExpression(), !10207)
    #dbg_value(i1 %i.f, !10204, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10207)
  br i1 %i.f, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit, !dbg !10209

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit: ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1), !dbg !10210 ; 2 uses
    #dbg_value(ptr %i.g, !10174, !DIExpression(), !10211)
  %.not = icmp eq ptr %i.g, null, !dbg !10212
  br i1 %.not, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread, label %bb.b, !dbg !10213, !prof !10214

bb.b:                                             ; preds = %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit
    #dbg_value(ptr %i.g, !10177, !DIExpression(), !10215)
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.g), !dbg !10216
  br label %bb.j, !dbg !10230

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread: ; preds = %bb.a, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit
  store i8 2, ptr %i.d, align 8, !dbg !10232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10233), !dbg !10236
    #dbg_value(ptr %1, !10237, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10253)
    #dbg_value(i64 %2, !10237, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10253)
    #dbg_value(ptr %i.c, !10250, !DIExpression(), !10253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10255), !dbg !10258
    #dbg_value(ptr %i.c, !10259, !DIExpression(), !10266)
    #dbg_value(ptr %1, !10265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10266)
    #dbg_value(i64 %2, !10265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10268), !dbg !10271
    #dbg_value(ptr %i.c, !10272, !DIExpression(), !10279)
    #dbg_value(ptr %1, !10278, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10279)
    #dbg_value(i64 %2, !10278, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10279)
    #dbg_declare(ptr poison, !10281, !DIExpression(), !10289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10291), !dbg !10294
    #dbg_value(ptr %i.c, !10295, !DIExpression(), !10310)
    #dbg_value(ptr poison, !10300, !DIExpression(), !10310)
    #dbg_value(ptr %1, !10301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10310)
    #dbg_value(i64 %2, !10301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10310)
    #dbg_value(ptr poison, !10312, !DIExpression(), !10318)
    #dbg_value(ptr %i.c, !10317, !DIExpression(), !10318)
  %i.i = tail call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !10320, !noalias !10321 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null, !dbg !10322
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10323

bb.c:                                             ; preds = %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10325), !dbg !10328
    #dbg_value(ptr %i.c, !10329, !DIExpression(), !10385)
    #dbg_value(ptr poison, !10332, !DIExpression(), !10385)
    #dbg_value(ptr %1, !10333, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10385)
    #dbg_value(i64 %2, !10333, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10385)
    #dbg_value(ptr %1, !10334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10387)
    #dbg_value(i64 %2, !10334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10387)
    #dbg_value(i64 0, !10336, !DIExpression(), !10388)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i.i.i.i.i, !dbg !10389

.outer.i.i.i.i.i:                                 ; preds = %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, %bb.c
  %.sroa.5.0.ph.i.i.i.i.i = phi i64 [ %i.w, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %2, %bb.c ] ; 4 uses
  %.sroa.05.0.ph.i.i.i.i.i = phi ptr [ %i.u, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %1, %bb.c ] ; 4 uses
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10387)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10387)
    #dbg_value(i64 0, !10336, !DIExpression(), !10388)
  %cond = icmp eq i64 %.sroa.5.0.ph.i.i.i.i.i, 0, !dbg !10390
  br i1 %cond, label %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10390

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i
  %i.m = add i64 %.sroa.010.0.i.i.i.i.i46, 1, !dbg !10391 ; 2 uses
    #dbg_value(i64 %i.m, !10336, !DIExpression(), !10388)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10387)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10387)
    #dbg_value(i64 %i.m, !10336, !DIExpression(), !10388)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.m, %.sroa.5.0.ph.i.i.i.i.i, !dbg !10390
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10390

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i: ; preds = %.outer.i.i.i.i.i, %bb.d
  %.sroa.010.0.i.i.i.i.i46 = phi i64 [ %i.m, %bb.d ], [ 0, %.outer.i.i.i.i.i ] ; 6 uses
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10336, !DIExpression(), !10388)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10407)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10428)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10407)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10428)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10404, !DIExpression(), !10407)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10427, !DIExpression(), !10428)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10439)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10439)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10434, !DIExpression(), !10439)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10441, !DIExpression(), !10447)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10435, !DIExpression(), !10449)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10437, !DIExpression(), !10450)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10446, !DIExpression(), !10447)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10338, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10451)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10338, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10451)
    #dbg_value(!DIArgList(ptr %.sroa.05.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46), !10340, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10451)
    #dbg_value(!DIArgList(i64 %.sroa.5.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46), !10340, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10451)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46, !dbg !10452
    #dbg_value(ptr %i.n, !10340, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10451)
    #dbg_value(ptr %i.n, !10343, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10453)
    #dbg_value(!DIArgList(i64 %.sroa.5.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46), !10343, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10453)
  %i.o = load i8, ptr %i.n, align 1, !dbg !10454, !alias.scope !10455, !noalias !10456, !noundef !51 ; 3 uses
    #dbg_value(i8 %i.o, !10341, !DIExpression(), !10453)
  %i.p = zext i8 %i.o to i64, !dbg !10462
  %i.q = getelementptr inbounds nuw i8, ptr @_RNvNtCscFTfv2TGtgR_10serde_json3ser6ESCAPE, i64 %i.p, !dbg !10463
  %i.r = load i8, ptr %i.q, align 1, !dbg !10463, !noalias !10464, !noundef !51 ; 3 uses
    #dbg_value(i8 %i.r, !10344, !DIExpression(), !10465)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10336, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10388)
  %i.s = icmp eq i8 %i.r, 0, !dbg !10466
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !10466

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = xor i64 %.sroa.010.0.i.i.i.i.i46, -1
  %i.w = add i64 %.sroa.5.0.ph.i.i.i.i.i, %i.v
    #dbg_value(ptr %i.u, !10334, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10387)
    #dbg_value(i64 %i.w, !10334, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10387)
    #dbg_value(i64 0, !10336, !DIExpression(), !10388)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10346, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10467)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10476)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10346, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10467)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10476)
  %i.x = icmp eq i64 %.sroa.010.0.i.i.i.i.i46, 0, !dbg !10478
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !10479

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !10480, !DIExpression(), !10487)
    #dbg_value(ptr %i.c, !10485, !DIExpression(), !10487)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10487)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10487)
  %i.y = call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.010.0.i.i.i.i.i46), !dbg !10489 ; 2 uses
  %.not41.i.i.i.i.i = icmp eq ptr %i.y, null, !dbg !10490
  br i1 %.not41.i.i.i.i.i, label %bb.g, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10491

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = icmp eq i8 %i.r, 117, !dbg !10493
  br i1 %i.z, label %bb.h, label %bb.i, !dbg !10493

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 8, !10352, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10494)
    #dbg_value(i8 %i.o, !10352, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10494)
    #dbg_value(i8 8, !10495, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10510)
    #dbg_value(i8 %i.o, !10495, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10510)
    #dbg_value(ptr poison, !10500, !DIExpression(), !10510)
    #dbg_value(ptr %i.c, !10501, !DIExpression(), !10510)
    #dbg_value(i8 117, !10502, !DIExpression(), !10512)
    #dbg_value(i8 %i.o, !10504, !DIExpression(), !10513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10514, !noalias !10515
  %i.aa = and i8 %i.o, 15, !dbg !10518
  %i.ab = zext nneg i8 %i.aa to i64, !dbg !10518
  %i.ac = lshr i8 %i.o, 4, !dbg !10519
  %i.ad = zext nneg i8 %i.ac to i64, !dbg !10519
  %i.ae = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscFTfv2TGtgR_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ad, !dbg !10520
  %i.af = load i8, ptr %i.ae, align 1, !dbg !10520, !noalias !10515, !noundef !51
  %i.ag = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscFTfv2TGtgR_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ab, !dbg !10521
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !10521, !noalias !10515, !noundef !51
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !10514, !noalias !10515
  store i8 %i.af, ptr %i.k, align 4, !dbg !10514, !noalias !10515
  store i8 %i.ah, ptr %i.l, align 1, !dbg !10514, !noalias !10515
    #dbg_value(ptr %i.b, !10506, !DIExpression(), !10522)
  %i.ai = call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 6), !dbg !10523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10524, !noalias !10515
  br label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10525

bb.i:                                             ; preds = %bb.g
    #dbg_value(i8 %i.r, !10502, !DIExpression(), !10512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10526, !noalias !10515
  store i8 92, ptr %i.a, align 1, !dbg !10526, !noalias !10515
  store i8 %i.r, ptr %i.j, align 1, !dbg !10526, !noalias !10515
  %i.aj = call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2), !dbg !10527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10528, !noalias !10515
  br label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10528

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ai, %bb.h ], !dbg !10512 ; 2 uses
  %.not42.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i, null, !dbg !10529
  br i1 %.not42.i.i.i.i.i, label %.outer.i.i.i.i.i, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10530

_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i: ; preds = %bb.d
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10383, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10532)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10533)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10383, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10532)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10533)
    #dbg_value(ptr poison, !10480, !DIExpression(), !10535)
    #dbg_value(ptr %i.c, !10485, !DIExpression(), !10535)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10535)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10535)
  %i.ak = call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.5.0.ph.i.i.i.i.i), !dbg !10537 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ak, null, !dbg !10328
  br i1 %.not10.i.i.i.i, label %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10323

_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i: ; preds = %.outer.i.i.i.i.i, %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i
    #dbg_value(ptr poison, !10538, !DIExpression(), !10542)
    #dbg_value(ptr %i.c, !10541, !DIExpression(), !10542)
  %i.al = call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !10544 ; 2 uses
    #dbg_value(ptr %i.al, !10284, !DIExpression(), !10545)
  %.not.i.i.i = icmp eq ptr %i.al, null, !dbg !10546
  br i1 %.not.i.i.i, label %bb.j, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10547, !prof !10548

_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit: ; preds = %bb.f, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread, %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i, %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.al, %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i ], [ %i.ak, %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i ], [ %i.i, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread ], [ %i.y, %bb.f ], [ %.sroa.02.0.i.i.i.i.i.i, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
    #dbg_value(ptr %.sroa.0.0.i8.i.i.i, !10287, !DIExpression(), !10549)
  %i.am = call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i8.i.i.i), !dbg !10550
  br label %bb.j, !dbg !10553

bb.j:                                             ; preds = %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i, %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, %bb.b
  %.sroa.0.1 = phi ptr [ %i.h, %bb.b ], [ %i.am, %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtCsG258MDvU3F_3std2fs4FileNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit ], [ null, %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtCsG258MDvU3F_3std2fs4FileNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i ], !dbg !10555
  ret ptr %.sroa.0.1, !dbg !10556
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB6_8CompoundNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap13serialize_keyeECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 !dbg !10557 {
bb.a:
  %i.a = alloca [2 x i8], align 1                 ; 5 uses
  %i.b = alloca [6 x i8], align 4                 ; 6 uses
    #dbg_value(ptr %0, !10636, !DIExpression(), !10651)
    #dbg_value(ptr %1, !10637, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10651)
    #dbg_value(i64 %2, !10637, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10651)
    #dbg_value(ptr poison, !10652, !DIExpression(), !10660)
    #dbg_value(i64 1, !10658, !DIExpression(), !10662)
    #dbg_declare(ptr poison, !10663, !DIExpression(), !10675)
    #dbg_declare(ptr poison, !10663, !DIExpression(), !10677)
    #dbg_value(ptr %0, !10638, !DIExpression(), !10679)
    #dbg_value(ptr %0, !10641, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10680)
    #dbg_value(ptr %0, !10655, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !10681)
  %i.c = load ptr, ptr %0, align 8, !dbg !10682, !nonnull !51, !align !10683, !noundef !51 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10681 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !dbg !10681, !range !10192, !noundef !51
    #dbg_value(i8 %i.e, !10656, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_stack_value), !10684)
  %i.f = icmp eq i8 %i.e, 1, !dbg !10685
    #dbg_value(ptr poison, !10686, !DIExpression(), !10695)
    #dbg_value(ptr %i.c, !10692, !DIExpression(), !10695)
    #dbg_value(i1 %i.f, !10693, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10695)
  br i1 %i.f, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.thread, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit, !dbg !10697

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit: ; preds = %bb.a
  %i.g = tail call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 1), !dbg !10698 ; 2 uses
    #dbg_value(ptr %i.g, !10666, !DIExpression(), !10699)
  %.not = icmp eq ptr %i.g, null, !dbg !10700
  br i1 %.not, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.thread, label %bb.b, !dbg !10701, !prof !10214

bb.b:                                             ; preds = %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit
    #dbg_value(ptr %i.g, !10669, !DIExpression(), !10702)
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.g), !dbg !10703
  br label %bb.j, !dbg !10706

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.thread: ; preds = %bb.a, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit
  store i8 2, ptr %i.d, align 8, !dbg !10708
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10709), !dbg !10712
    #dbg_value(ptr %1, !10713, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10724)
    #dbg_value(i64 %2, !10713, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10724)
    #dbg_value(ptr %i.c, !10721, !DIExpression(), !10724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10726), !dbg !10729
    #dbg_value(ptr %i.c, !10730, !DIExpression(), !10736)
    #dbg_value(ptr %1, !10735, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10736)
    #dbg_value(i64 %2, !10735, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10738), !dbg !10741
    #dbg_value(ptr %i.c, !10742, !DIExpression(), !10748)
    #dbg_value(ptr %1, !10747, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10748)
    #dbg_value(i64 %2, !10747, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10748)
    #dbg_declare(ptr poison, !10750, !DIExpression(), !10758)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10760), !dbg !10763
    #dbg_value(ptr %i.c, !10764, !DIExpression(), !10779)
    #dbg_value(ptr poison, !10769, !DIExpression(), !10779)
    #dbg_value(ptr %1, !10770, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10779)
    #dbg_value(i64 %2, !10770, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10779)
    #dbg_value(ptr poison, !10781, !DIExpression(), !10787)
    #dbg_value(ptr %i.c, !10786, !DIExpression(), !10787)
  %i.i = tail call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !10789, !noalias !10790 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null, !dbg !10791
  br i1 %.not.i.i.i.i, label %bb.c, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10792

bb.c:                                             ; preds = %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.thread
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10794), !dbg !10797
    #dbg_value(ptr %i.c, !10798, !DIExpression(), !10829)
    #dbg_value(ptr poison, !10801, !DIExpression(), !10829)
    #dbg_value(ptr %1, !10802, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10829)
    #dbg_value(i64 %2, !10802, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10829)
    #dbg_value(ptr %1, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10831)
    #dbg_value(i64 %2, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10831)
    #dbg_value(i64 0, !10805, !DIExpression(), !10832)
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  br label %.outer.i.i.i.i.i, !dbg !10833

.outer.i.i.i.i.i:                                 ; preds = %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, %bb.c
  %.sroa.5.0.ph.i.i.i.i.i = phi i64 [ %i.w, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %2, %bb.c ] ; 4 uses
  %.sroa.05.0.ph.i.i.i.i.i = phi ptr [ %i.u, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ], [ %1, %bb.c ] ; 4 uses
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10831)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10831)
    #dbg_value(i64 0, !10805, !DIExpression(), !10832)
  %cond = icmp eq i64 %.sroa.5.0.ph.i.i.i.i.i, 0, !dbg !10834
  br i1 %cond, label %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10834

bb.d:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i
  %i.m = add i64 %.sroa.010.0.i.i.i.i.i46, 1, !dbg !10835 ; 2 uses
    #dbg_value(i64 %i.m, !10805, !DIExpression(), !10832)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10831)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10831)
    #dbg_value(i64 %i.m, !10805, !DIExpression(), !10832)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.m, %.sroa.5.0.ph.i.i.i.i.i, !dbg !10834
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i, label %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10834

_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i: ; preds = %.outer.i.i.i.i.i, %bb.d
  %.sroa.010.0.i.i.i.i.i46 = phi i64 [ %i.m, %bb.d ], [ 0, %.outer.i.i.i.i.i ] ; 6 uses
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10805, !DIExpression(), !10832)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10392, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10836)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10409, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10838)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10392, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10836)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10409, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10838)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10404, !DIExpression(), !10836)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10427, !DIExpression(), !10838)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10430, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10840)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10430, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10840)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10434, !DIExpression(), !10840)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10441, !DIExpression(), !10842)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10435, !DIExpression(), !10844)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10437, !DIExpression(), !10845)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10446, !DIExpression(), !10842)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10807, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10846)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10807, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10846)
    #dbg_value(!DIArgList(ptr %.sroa.05.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46), !10809, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10846)
    #dbg_value(!DIArgList(i64 %.sroa.5.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46), !10809, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10846)
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46, !dbg !10847
    #dbg_value(ptr %i.n, !10809, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10846)
    #dbg_value(ptr %i.n, !10812, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !10848)
    #dbg_value(!DIArgList(i64 %.sroa.5.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46), !10812, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 18446744073709551615, DW_OP_xor, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !10848)
  %i.o = load i8, ptr %i.n, align 1, !dbg !10849, !alias.scope !10850, !noalias !10851, !noundef !51 ; 3 uses
    #dbg_value(i8 %i.o, !10810, !DIExpression(), !10848)
  %i.p = zext i8 %i.o to i64, !dbg !10857
  %i.q = getelementptr inbounds nuw i8, ptr @_RNvNtCscFTfv2TGtgR_10serde_json3ser6ESCAPE, i64 %i.p, !dbg !10858
  %i.r = load i8, ptr %i.q, align 1, !dbg !10858, !noalias !10859, !noundef !51 ; 3 uses
    #dbg_value(i8 %i.r, !10813, !DIExpression(), !10860)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10805, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value), !10832)
  %i.s = icmp eq i8 %i.r, 0, !dbg !10861
  br i1 %i.s, label %bb.d, label %bb.e, !dbg !10861

bb.e:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core5sliceSh8split_atCs7OITKvp9Irj_4perf.exit.i.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.0.ph.i.i.i.i.i, i64 %.sroa.010.0.i.i.i.i.i46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = xor i64 %.sroa.010.0.i.i.i.i.i46, -1
  %i.w = add i64 %.sroa.5.0.ph.i.i.i.i.i, %i.v
    #dbg_value(ptr %i.u, !10803, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10831)
    #dbg_value(i64 %i.w, !10803, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10831)
    #dbg_value(i64 0, !10805, !DIExpression(), !10832)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10815, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10862)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10866)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10815, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10862)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10866)
  %i.x = icmp eq i64 %.sroa.010.0.i.i.i.i.i46, 0, !dbg !10868
  br i1 %i.x, label %bb.g, label %bb.f, !dbg !10869

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !10870, !DIExpression(), !10877)
    #dbg_value(ptr %i.c, !10875, !DIExpression(), !10877)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10877)
    #dbg_value(i64 %.sroa.010.0.i.i.i.i.i46, !10876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10877)
  %i.y = call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.010.0.i.i.i.i.i46), !dbg !10879 ; 2 uses
  %.not41.i.i.i.i.i = icmp eq ptr %i.y, null, !dbg !10880
  br i1 %.not41.i.i.i.i.i, label %bb.g, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10881

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.z = icmp eq i8 %i.r, 117, !dbg !10883
  br i1 %i.z, label %bb.h, label %bb.i, !dbg !10883

bb.h:                                             ; preds = %bb.g
    #dbg_value(i8 8, !10821, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10884)
    #dbg_value(i8 %i.o, !10821, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10884)
    #dbg_value(i8 8, !10885, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10898)
    #dbg_value(i8 %i.o, !10885, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10898)
    #dbg_value(ptr poison, !10890, !DIExpression(), !10898)
    #dbg_value(ptr %i.c, !10891, !DIExpression(), !10898)
    #dbg_value(i8 117, !10892, !DIExpression(), !10900)
    #dbg_value(i8 %i.o, !10894, !DIExpression(), !10901)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10902, !noalias !10903
  %i.aa = and i8 %i.o, 15, !dbg !10906
  %i.ab = zext nneg i8 %i.aa to i64, !dbg !10906
  %i.ac = lshr i8 %i.o, 4, !dbg !10907
  %i.ad = zext nneg i8 %i.ac to i64, !dbg !10907
  %i.ae = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscFTfv2TGtgR_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ad, !dbg !10908
  %i.af = load i8, ptr %i.ae, align 1, !dbg !10908, !noalias !10903, !noundef !51
  %i.ag = getelementptr inbounds nuw i8, ptr @_RNvNvNtNtCscFTfv2TGtgR_10serde_json3ser9Formatter17write_char_escape10HEX_DIGITS, i64 %i.ab, !dbg !10909
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !10909, !noalias !10903, !noundef !51
  store <4 x i8> <i8 92, i8 117, i8 48, i8 48>, ptr %i.b, align 4, !dbg !10902, !noalias !10903
  store i8 %i.af, ptr %i.k, align 4, !dbg !10902, !noalias !10903
  store i8 %i.ah, ptr %i.l, align 1, !dbg !10902, !noalias !10903
    #dbg_value(ptr %i.b, !10896, !DIExpression(), !10910)
  %i.ai = call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 6), !dbg !10911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10912, !noalias !10903
  br label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10913

bb.i:                                             ; preds = %bb.g
    #dbg_value(i8 %i.r, !10892, !DIExpression(), !10900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10914, !noalias !10903
  store i8 92, ptr %i.a, align 1, !dbg !10914, !noalias !10903
  store i8 %i.r, ptr %i.j, align 1, !dbg !10914, !noalias !10903
  %i.aj = call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 2), !dbg !10915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10916, !noalias !10903
  br label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, !dbg !10916

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %.sroa.02.0.i.i.i.i.i.i = phi ptr [ %i.aj, %bb.i ], [ %i.ai, %bb.h ], !dbg !10900 ; 2 uses
  %.not42.i.i.i.i.i = icmp eq ptr %.sroa.02.0.i.i.i.i.i.i, null, !dbg !10917
  br i1 %.not42.i.i.i.i.i, label %.outer.i.i.i.i.i, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10918

_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i: ; preds = %bb.d
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10827, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10920)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10863, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10921)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10827, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10920)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10863, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10921)
    #dbg_value(ptr poison, !10870, !DIExpression(), !10923)
    #dbg_value(ptr %i.c, !10875, !DIExpression(), !10923)
    #dbg_value(ptr %.sroa.05.0.ph.i.i.i.i.i, !10876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10923)
    #dbg_value(i64 %.sroa.5.0.ph.i.i.i.i.i, !10876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10923)
  %i.ak = call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.05.0.ph.i.i.i.i.i, i64 noundef range(i64 1, 0) %.sroa.5.0.ph.i.i.i.i.i), !dbg !10925 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ak, null, !dbg !10797
  br i1 %.not10.i.i.i.i, label %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10792

_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i: ; preds = %.outer.i.i.i.i.i, %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i
    #dbg_value(ptr poison, !10926, !DIExpression(), !10930)
    #dbg_value(ptr %i.c, !10929, !DIExpression(), !10930)
  %i.al = call noundef ptr @_RNvXse_NtNtCsG258MDvU3F_3std2io5stdioNtB5_6StdoutNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !dbg !10932 ; 2 uses
    #dbg_value(ptr %i.al, !10753, !DIExpression(), !10933)
  %.not.i.i.i = icmp eq ptr %i.al, null, !dbg !10934
  br i1 %.not.i.i.i, label %bb.j, label %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, !dbg !10935, !prof !10548

_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit: ; preds = %bb.f, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.thread, %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i, %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i
  %.sroa.0.0.i8.i.i.i = phi ptr [ %i.al, %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i ], [ %i.ak, %_RINvNtCscFTfv2TGtgR_10serde_json3ser27format_escaped_str_contentsNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i.i ], [ %i.i, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.thread ], [ %i.y, %bb.f ], [ %.sroa.02.0.i.i.i.i.i.i, %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17write_char_escapeNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutECs7OITKvp9Irj_4perf.exit.i.i.i.i.i ]
    #dbg_value(ptr %.sroa.0.0.i8.i.i.i, !10756, !DIExpression(), !10936)
  %i.am = call noundef nonnull align 8 ptr @_RNvMs0_NtCscFTfv2TGtgR_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i8.i.i.i), !dbg !10937
  br label %bb.j, !dbg !10940

bb.j:                                             ; preds = %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i, %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit, %bb.b
  %.sroa.0.1 = phi ptr [ %i.h, %bb.b ], [ %i.am, %_RINvXNtNtCsbwMSWOJol8F_10serde_core3ser5implseNtB5_9Serialize9serializeINtNtCscFTfv2TGtgR_10serde_json3ser16MapKeySerializerNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB1a_16CompactFormatterEECs7OITKvp9Irj_4perf.exit ], [ null, %_RINvNtCscFTfv2TGtgR_10serde_json3ser18format_escaped_strNtNtNtCsG258MDvU3F_3std2io5stdio6StdoutNtB2_16CompactFormatterECs7OITKvp9Irj_4perf.exit.i.i.i ], !dbg !10942
  ret ptr %.sroa.0.1, !dbg !10943
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCscFTfv2TGtgR_10serde_json3ser8CompoundNtNtCsG258MDvU3F_3std2fs4FileNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap15serialize_entryeINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEEB3j_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10944 {
bb.a:
    #dbg_value(ptr %0, !10973, !DIExpression(), !10985)
    #dbg_value(ptr %1, !10974, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10985)
    #dbg_value(i64 %2, !10974, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10985)
    #dbg_value(ptr %3, !10975, !DIExpression(), !10985)
  %i.a = tail call fastcc noundef align 8 ptr @_RINvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB6_8CompoundNtNtCsG258MDvU3F_3std2fs4FileNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap13serialize_keyeECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #17, !dbg !10986 ; 2 uses
  %.not = icmp eq ptr %i.a, null, !dbg !10987
  br i1 %.not, label %bb.b, label %_RINvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB6_8CompoundNtNtCsG258MDvU3F_3std2fs4FileNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap15serialize_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEEB3o_.exit, !dbg !10988

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !dbg !10990, !nonnull !51, !align !10191, !noundef !51 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !10990
  %.val7 = load ptr, ptr %i.b, align 8, !dbg !10990 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !10990
  %.val8 = load i64, ptr %i.c, align 8, !dbg !10990 ; 3 uses
    #dbg_value(ptr poison, !10991, !DIExpression(), !11009)
    #dbg_value(ptr poison, !10996, !DIExpression(), !11009)
    #dbg_declare(ptr poison, !11011, !DIExpression(), !11023)
    #dbg_declare(ptr poison, !11011, !DIExpression(), !11025)
    #dbg_value(ptr poison, !10997, !DIExpression(), !11027)
    #dbg_value(ptr poison, !11028, !DIExpression(), !11032)
    #dbg_value(ptr %.val, !11031, !DIExpression(), !11032)
  %i.d = tail call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 1), !dbg !11034 ; 2 uses
    #dbg_value(ptr %i.d, !11014, !DIExpression(), !11035)
  %.not.i = icmp eq ptr %i.d, null, !dbg !11036
  br i1 %.not.i, label %bb.c, label %_RINvXs1o_NtNtCsbwMSWOJol8F_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamENtB9_9Serialize9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileEEB1o_.exit.sink.split.i, !dbg !11037, !prof !11038

bb.c:                                             ; preds = %bb.b
    #dbg_value(ptr poison, !11039, !DIExpression(), !11048)
    #dbg_value(ptr %.val, !11045, !DIExpression(), !11048)
    #dbg_declare(ptr poison, !11050, !DIExpression(DW_OP_LLVM_fragment, 72, 56), !11086)
    #dbg_value(ptr poison, !11088, !DIExpression(), !11108)
    #dbg_value(ptr poison, !11096, !DIExpression(), !11189)
    #dbg_value(ptr poison, !11153, !DIExpression(), !11190)
    #dbg_value(ptr poison, !11185, !DIExpression(), !11191)
    #dbg_value(ptr poison, !11192, !DIExpression(), !11216)
    #dbg_value(ptr poison, !11151, !DIExpression(), !11190)
    #dbg_value(ptr poison, !11184, !DIExpression(), !11191)
    #dbg_value(ptr %.val, !11058, !DIExpression(), !11218)
    #dbg_value(ptr poison, !11059, !DIExpression(), !11218)
    #dbg_value(ptr poison, !11219, !DIExpression(), !11225)
    #dbg_value(i64 %.val8, !11227, !DIExpression(), !11249)
    #dbg_value(i64 %.val8, !11255, !DIExpression(), !11265)
    #dbg_value(ptr %.val7, !11253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11267)
    #dbg_value(ptr %.val7, !11240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11268)
    #dbg_value(i64 %.val8, !11253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11267)
    #dbg_value(i64 %.val8, !11240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11268)
    #dbg_value(ptr %.val7, !11245, !DIExpression(), !11269)
    #dbg_value(ptr %.val7, !11264, !DIExpression(), !11265)
  %.idx.i.i.i = mul nuw nsw i64 %.val8, 56, !dbg !11270
  %i.e = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i.i.i, !dbg !11270
    #dbg_value(ptr %.val7, !11060, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11271)
    #dbg_value(ptr %i.e, !11060, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11271)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val7) ]
    #dbg_value(ptr poison, !11272, !DIExpression(), !11285)
    #dbg_value(i64 1, !11307, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11317)
    #dbg_value(i64 poison, !11307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11317)
    #dbg_value(ptr %.val, !11306, !DIExpression(), !11317)
    #dbg_declare(ptr poison, !11318, !DIExpression(), !11330)
    #dbg_value(ptr poison, !11280, !DIExpression(), !11332)
    #dbg_declare(ptr poison, !11318, !DIExpression(), !11333)
    #dbg_value(ptr poison, !11335, !DIExpression(), !11339)
    #dbg_value(ptr %.val, !11338, !DIExpression(), !11339)
  %i.f = tail call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 1), !dbg !11341, !noalias !11342 ; 2 uses
    #dbg_value(ptr %i.f, !11321, !DIExpression(), !11345)
  %.not.i.i.i.i = icmp eq ptr %i.f, null, !dbg !11346
  br i1 %.not.i.i.i.i, label %bb.d, label %_RINvXs1o_NtNtCsbwMSWOJol8F_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamENtB9_9Serialize9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileEEB1o_.exit.sink.split.i, !dbg !11347, !prof !11038

bb.d:                                             ; preds = %bb.c
    #dbg_value(i64 %.val8, !11307, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11317)
    #dbg_value(ptr undef, !11272, !DIExpression(), !11285)
  %i.g = icmp eq i64 %.val8, 0
  br i1 %i.g, label %bb.e, label %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamINtNtBe_6result6ResultuNtNtCscFTfv2TGtgR_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0B1r_.exit.peel.i.i.i.i.i, !dbg !11348

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr poison, !11349, !DIExpression(), !11353)
    #dbg_value(ptr %.val, !11352, !DIExpression(), !11353)
  %i.h = tail call noundef ptr @_RNvYNtNtCsG258MDvU3F_3std2fs4FileNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1), !dbg !11355, !noalias !11342 ; 2 uses
    #dbg_value(ptr %i.h, !11321, !DIExpression(), !11356)
  %.not16.i.i.i.i = icmp eq ptr %i.h, null, !dbg !11357
  br i1 %.not16.i.i.i.i, label %_RINvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB6_8CompoundNtNtCsG258MDvU3F_3std2fs4FileNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap15serialize_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEEB3o_.exit, label %_RINvXs1o_NtNtCsbwMSWOJol8F_10serde_core3ser5implsINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamENtB9_9Serialize9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileEEB1o_.exit.sink.split.i, !dbg !11358, !prof !11038

_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamINtNtBe_6result6ResultuNtNtCscFTfv2TGtgR_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0B1r_.exit.peel.i.i.i.i.i: ; preds = %bb.d
    #dbg_value(ptr %.val, !11050, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11359)
    #dbg_value(ptr undef, !11184, !DIExpression(), !11191)
    #dbg_value(ptr undef, !11185, !DIExpression(), !11191)
    #dbg_value(ptr undef, !11153, !DIExpression(), !11190)
    #dbg_value(ptr undef, !11151, !DIExpression(), !11190)
    #dbg_declare(ptr poison, !11152, !DIExpression(), !11360)
    #dbg_declare(ptr poison, !11154, !DIExpression(), !11361)
    #dbg_value(ptr undef, !11192, !DIExpression(), !11216)
    #dbg_value(i64 1, !11362, !DIExpression(), !11369)
    #dbg_value(ptr %.val7, !11210, !DIExpression(), !11371)
    #dbg_value(ptr %.val7, !11368, !DIExpression(), !11369)
    #dbg_value(ptr %i.e, !11212, !DIExpression(), !11372)
    #dbg_value(ptr poison, !11373, !DIExpression(), !11381)
    #dbg_value(ptr poison, !11380, !DIExpression(), !11383)
    #dbg_value(ptr %.val7, !11060, !DIExpression(DW_OP_plus_uconst, 56, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11271)
    #dbg_value(ptr %.val7, !11155, !DIExpression(), !11384)
    #dbg_value(ptr poison, !11138, !DIExpression(DW_OP_deref), !11385)
    #dbg_declare(ptr poison, !11139, !DIExpression(), !11386)
    #dbg_value(ptr %.val7, !11137, !DIExpression(), !11385)
    #dbg_value(ptr poison, !11120, !DIExpression(DW_OP_deref, DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !11387)
    #dbg_value(ptr undef, !11119, !DIExpression(DW_OP_deref), !11387)
    #dbg_value(ptr undef, !11096, !DIExpression(), !11189)
    #dbg_value(ptr poison, !11097, !DIExpression(), !11189)
    #dbg_declare(ptr poison, !11388, !DIExpression(), !11400)
    #dbg_declare(ptr poison, !11388, !DIExpression(), !11402)
    #dbg_value(ptr undef, !11088, !DIExpression(), !11108)
    #dbg_value(ptr undef, !11098, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11404)
    #dbg_value(ptr poison, !11405, !DIExpression(), !11410)
    #dbg_value(ptr %.val, !11408, !DIExpression(), !11410)
    #dbg_value(i1 true, !11409, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11410)
    #dbg_value(i8 2, !11050, !DIExpression(DW_OP_LLVM_fragment, 64, 8), !11359)
    #dbg_value(ptr poison, !11412, !DIExpression(), !11419)
    #dbg_value(ptr %.val, !11418, !DIExpression(), !11419)
  %i.i = tail call noundef align 8 ptr @_RINvXNvNtNtCs7OITKvp9Irj_4perf5stats4jsons0_1__NtB5_6StreamNtNtCsbwMSWOJol8F_10serde_core3ser9Serialize9serializeQINtNtCscFTfv2TGtgR_10serde_json3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileEEB9_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.val7, ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %.val), !dbg !11421, !noalias !11422 ; 2 uses
  %.not9.peel.i.i.i.i.i = icmp eq ptr %i.i, null, !dbg !11431
  br i1 %.not9.peel.i.i.i.i.i, label %.peel.next.i.i.i.i.i.preheader, label %_RINvXs6_NtCscFTfv2TGtgR_10serde_json3serINtB6_8CompoundNtNtCsG258MDvU3F_3std2fs4FileNtB6_16CompactFormatterENtNtCsbwMSWOJol8F_10serde_core3ser12SerializeMap15serialize_valueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEEB3o_.exit, !dbg !11431

.peel.next.i.i.i.i.i.preheader:                   ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamINtNtBe_6result6ResultuNtNtCscFTfv2TGtgR_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0B1r_.exit.peel.i.i.i.i.i
  %i.j = icmp eq i64 %.val8, 1, !dbg !11432
  br i1 %i.j, label %.peel.next.i.i.i.i.i._crit_edge, label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i.i.i.i.lr.ph, !dbg !11433

_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i.i.i.i.lr.ph: ; preds = %.peel.next.i.i.i.i.i.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.val7, i64 56, !dbg !11434
  br label %_RINvYNtNtCscFTfv2TGtgR_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.i.i.i.i.i.i.i.i, !dbg !11433

.peel.next.i.i.i.i.i:                             ; preds = %_RNCINvNvNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamINtNtBe_6result6ResultuNtNtCscFTfv2TGtgR_10serde_json5error5ErrorENCINvYQINtNtB2t_3ser10SerializerNtNtCsG258MDvU3F_3std2fs4FileENtNtCsbwMSWOJol8F_10serde_core3ser10Serializer11collect_seqRINtNtCsexYYUdYSQU6_5alloc3vec3VecB1l_EE0E0B1r_.exit.i.i.i.i.i
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read4readCs7OITKvp9Irj_4perf:bb.a
    #dbg_value(i64 %i.p, !16941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16948)
  br label %bb.f, !dbg !16951

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit: ; preds = %bb.b
    #dbg_value(ptr %.pre.i, !16078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16952)
    #dbg_value(ptr %.pre.i, !16084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16954)
    #dbg_value(ptr %.pre.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16956)
    #dbg_value(i64 poison, !16078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16952)
    #dbg_value(i64 poison, !16084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16954)
    #dbg_value(i64 poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16956)
    #dbg_value(i64 %i.c, !16081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16952)
    #dbg_value(i64 %i.c, !16087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16954)
    #dbg_value(i64 %i.c, !16095, !DIExpression(), !16956)
    #dbg_value(i64 %i.e, !16081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16952)
    #dbg_value(i64 %i.e, !16087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16954)
  %i.s = sub nuw i64 %i.e, %i.c, !dbg !16959      ; 2 uses
    #dbg_value(i64 %i.s, !16088, !DIExpression(), !16958)
    #dbg_value(i64 %i.s, !16096, !DIExpression(), !16956)
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.c, !dbg !16960
    #dbg_value(ptr %i.t, !16941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16948)
    #dbg_value(i64 %i.s, !16941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16948)
  %i.u = icmp eq ptr %.pre.i, null, !dbg !16961
  br i1 %i.u, label %bb.e, label %bb.f, !dbg !16951

bb.d:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16962
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !dbg !16963
  %i.w = tail call { i64, ptr } @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v, ptr noalias nofree noundef nonnull %1, i64 noundef %2), !dbg !16966
  br label %bb.i, !dbg !16967

bb.e:                                             ; preds = %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit
  %.sroa.625.028 = phi i64 [ %i.r, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread ], [ %i.s, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
  %i.x = inttoptr i64 %.sroa.625.028 to ptr, !dbg !16969
  %i.y = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.x, 1, !dbg !16967
  br label %bb.i, !dbg !16967

bb.f:                                             ; preds = %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread33, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit
  %i.z = phi ptr [ %.pre.i, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread33 ], [ %i.t, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ] ; 2 uses
  %i.aa = phi i64 [ %i.p, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread33 ], [ %i.s, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
  %i.ab = phi i64 [ 0, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread33 ], [ %i.c, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
  %i.ac = phi i64 [ %i.p, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread33 ], [ %i.e, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
    #dbg_value(ptr %i.z, !16852, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16970)
    #dbg_value(i64 %i.aa, !16852, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16970)
  call void @llvm.experimental.noalias.scope.decl(metadata !16971), !dbg !16974
    #dbg_value(ptr undef, !15609, !DIExpression(), !16864)
    #dbg_value(ptr %1, !15618, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16864)
    #dbg_value(i64 %2, !15618, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16864)
    #dbg_value(i64 %2, !16191, !DIExpression(), !16975)
    #dbg_value(i64 %i.aa, !16198, !DIExpression(), !16975)
    #dbg_value(ptr undef, !16201, !DIExpression(DW_OP_deref), !16977)
    #dbg_value(ptr undef, !16205, !DIExpression(DW_OP_deref), !16977)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.aa, i64 range(i64 0, -9223372036854775808) %2), !dbg !16979 ; 5 uses
    #dbg_value(i64 %..i.i, !15619, !DIExpression(), !16980)
    #dbg_value(ptr %i.z, !15621, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16981)
    #dbg_value(ptr %i.z, !16223, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16982)
    #dbg_value(i64 %..i.i, !15621, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16981)
    #dbg_value(i64 %..i.i, !16223, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16982)
    #dbg_value(!DIArgList(ptr %i.z, i64 %..i.i), !15623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16981)
    #dbg_value(!DIArgList(i64 %i.aa, i64 %..i.i), !15623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16981)
  %i.ad = icmp eq i64 %..i.i, 1, !dbg !16984
  br i1 %i.ad, label %bb.g, label %bb.h, !dbg !16984

bb.g:                                             ; preds = %bb.f
  %i.ae = load i8, ptr %i.z, align 1, !dbg !16985, !noalias !16986, !noundef !51
  store i8 %i.ae, ptr %1, align 1, !dbg !16988, !alias.scope !16971, !noalias !16989
  br label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit, !dbg !16990

bb.h:                                             ; preds = %bb.f
    #dbg_value(ptr %1, !16226, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16982)
    #dbg_value(i64 %..i.i, !16226, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16982)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implhECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull %1, i64 noundef %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17), !dbg !16991, !noalias !16989
  %.pre = load i64, ptr %i.b, align 8, !dbg !16992
  %.pre29 = load i64, ptr %i.d, align 8, !dbg !16998
  br label %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit, !dbg !16990

_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit: ; preds = %bb.g, %bb.h
  %i.af = phi i64 [ %i.ac, %bb.g ], [ %.pre29, %bb.h ], !dbg !16998
  %i.ag = phi i64 [ %i.ab, %bb.g ], [ %.pre, %bb.h ], !dbg !16992
    #dbg_value(!DIArgList(i64 poison, i64 poison), !15623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16981)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !15623, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16981)
    #dbg_value(!DIArgList(ptr poison, i64 poison), !16852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16970)
    #dbg_value(!DIArgList(i64 poison, i64 poison), !16852, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !16970)
  %i.ah = inttoptr i64 %..i.i to ptr, !dbg !16999
  %i.ai = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.ah, 1, !dbg !17000
    #dbg_value(i64 %..i.i, !16858, !DIExpression(), !17001)
    #dbg_value(i64 %..i.i, !16880, !DIExpression(), !16881)
    #dbg_value(i64 %..i.i, !16996, !DIExpression(), !17002)
    #dbg_value(ptr %0, !16995, !DIExpression(), !17003)
  %i.aj = add i64 %i.ag, %..i.i, !dbg !16992
    #dbg_value(i64 %i.aj, !17004, !DIExpression(), !17008)
    #dbg_value(i64 %i.af, !17007, !DIExpression(), !17008)
    #dbg_value(ptr undef, !16201, !DIExpression(DW_OP_deref), !17010)
    #dbg_value(ptr undef, !16205, !DIExpression(DW_OP_deref), !17010)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.af, i64 %i.aj), !dbg !17012
  store i64 %..i, ptr %i.b, align 8, !dbg !17013
  br label %bb.i, !dbg !17014

bb.i:                                             ; preds = %bb.e, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit, %bb.d
  %.merged = phi { i64, ptr } [ %i.w, %bb.d ], [ %i.y, %bb.e ], [ %i.ai, %_RNvXs5_NtNtCsexYYUdYSQU6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit ], !dbg !17014
  ret { i64, ptr } %.merged, !dbg !17014
}

; Function Attrs: nonlazybind uwtable
define hidden noundef ptr @_RNvXs4_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_4read4Read8read_bufCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17015 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr poison, !17031, !DIExpression(), !17042)
    #dbg_value(ptr %0, !17017, !DIExpression(), !17044)
    #dbg_value(ptr %0, !17045, !DIExpression(), !17051)
    #dbg_value(ptr %0, !17053, !DIExpression(), !17056)
    #dbg_value(ptr %0, !17058, !DIExpression(), !17061)
    #dbg_value(ptr %0, !17063, !DIExpression(), !17067)
    #dbg_value(ptr %1, !17018, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17044)
    #dbg_value(ptr %2, !17018, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17044)
    #dbg_value(ptr %0, !17069, !DIExpression(), !17072)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17074 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !17074, !noundef !51 ; 4 uses
    #dbg_value(ptr %0, !17075, !DIExpression(), !17078)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17080 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !17080, !noundef !51 ; 3 uses
  %i.f = icmp eq i64 %i.c, %i.e, !dbg !17081
  br i1 %i.f, label %bb.b, label %._crit_edge, !dbg !17081

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !dbg !17082
  br label %bb.c, !dbg !17081

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !17092, !DIExpression(), !17095)
    #dbg_value(ptr poison, !17097, !DIExpression(), !17100)
    #dbg_value(ptr poison, !17085, !DIExpression(), !17102)
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !17104
  %i.h = load i64, ptr %i.g, align 8, !dbg !17104, !noundef !51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !17105
  %i.j = load i64, ptr %i.i, align 8, !dbg !17105, !noundef !51 ; 2 uses
  %i.k = sub i64 %i.h, %i.j, !dbg !17106
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17107
  %i.m = load i64, ptr %i.l, align 8, !dbg !17107, !noundef !51
  %.not = icmp ult i64 %i.k, %i.m, !dbg !17111
  br i1 %.not, label %bb.c, label %bb.e, !dbg !17111

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %i.n = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %bb.b ], !dbg !17082
    #dbg_value(ptr poison, !17090, !DIExpression(), !17112)
    #dbg_value(ptr poison, !17085, !DIExpression(), !17113)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !17082 ; 3 uses
    #dbg_value(i64 %i.n, !17019, !DIExpression(), !17114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17115), !dbg !17118
    #dbg_value(ptr %0, !15906, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !17119)
    #dbg_value(ptr %0, !15914, !DIExpression(), !17119)
    #dbg_value(ptr %0, !15931, !DIExpression(), !17121)
    #dbg_declare(ptr %i.a, !15915, !DIExpression(), !17123)
  %.not.i = icmp ult i64 %i.c, %i.e, !dbg !17124
  %.pre.i = load ptr, ptr %0, align 8, !dbg !17125, !alias.scope !17115, !noalias !17126 ; 4 uses
  br i1 %.not.i, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit, label %bb.d, !dbg !17124

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17129
    #dbg_value(ptr %i.p, !15906, !DIExpression(), !17119)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17130, !noalias !17131
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !17132
  %i.r = load i64, ptr %i.q, align 8, !dbg !17132, !alias.scope !17115, !noalias !17126, !noundef !51
    #dbg_value(ptr %.pre.i, !15945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17133)
    #dbg_value(i64 %i.r, !15945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17133)
  store ptr %.pre.i, ptr %i.a, align 8, !dbg !17135, !noalias !17131
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17135
  store i64 %i.r, ptr %i.s, align 8, !dbg !17135, !noalias !17131
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17135 ; 2 uses
  store i64 0, ptr %i.t, align 8, !dbg !17135, !noalias !17131
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17135 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !17136 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8, !dbg !17136, !range !15956, !alias.scope !17115, !noalias !17126, !noundef !51
  store i8 %i.w, ptr %i.u, align 8, !dbg !17137, !noalias !17131
    #dbg_value(ptr undef, !15906, !DIExpression(DW_OP_deref), !17119)
    #dbg_value(ptr poison, !15958, !DIExpression(), !17138)
    #dbg_value(ptr %.pre.i, !15979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17138)
    #dbg_value(ptr %i.a, !15979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17138)
  %i.x = call noundef ptr @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.p, ptr noundef nonnull %.pre.i, ptr noundef nonnull %i.a), !dbg !17140, !noalias !17141 ; 2 uses
    #dbg_value(ptr %i.x, !15923, !DIExpression(), !17142)
    #dbg_value(ptr %i.x, !15985, !DIExpression(), !17143)
  store i64 0, ptr %i.b, align 8, !dbg !17145, !alias.scope !17115, !noalias !17126
    #dbg_value(ptr %i.a, !16011, !DIExpression(), !17146)
  %i.y = load i64, ptr %i.t, align 8, !dbg !17148, !noalias !17131, !noundef !51 ; 2 uses
  store i64 %i.y, ptr %i.d, align 8, !dbg !17149, !alias.scope !17115, !noalias !17126
    #dbg_value(ptr %i.a, !16022, !DIExpression(), !17150)
  %i.z = load i8, ptr %i.u, align 8, !dbg !17152, !range !15956, !noalias !17131, !noundef !51
  store i8 %i.z, ptr %i.v, align 8, !dbg !17153, !alias.scope !17115, !noalias !17126
  %.not15.i = icmp eq ptr %i.x, null, !dbg !17154
  br i1 %.not15.i, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread28, label %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread, !dbg !17155

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread: ; preds = %bb.d
    #dbg_value(ptr %i.x, !15925, !DIExpression(), !17156)
    #dbg_value(ptr %i.x, !16035, !DIExpression(), !17157)
    #dbg_value(ptr %i.x, !16041, !DIExpression(), !17159)
  %i.aa = ptrtoint ptr %i.x to i64, !dbg !17160
    #dbg_value(i64 %i.aa, !17161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17168)
    #dbg_value(ptr null, !17161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17168)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17170, !noalias !17131
    #dbg_value(i64 %i.aa, !17161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17168)
  br label %bb.f, !dbg !17171

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread28: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !17170, !noalias !17131
    #dbg_value(ptr %.pre.i, !16078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17172)
    #dbg_value(ptr %.pre.i, !16084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17174)
    #dbg_value(ptr %.pre.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17176)
    #dbg_value(i64 poison, !16078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17172)
    #dbg_value(i64 poison, !16084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17174)
    #dbg_value(i64 poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17176)
    #dbg_value(i64 0, !16081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17172)
    #dbg_value(i64 0, !16087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17174)
    #dbg_value(i64 0, !16095, !DIExpression(), !17176)
    #dbg_value(i64 %i.y, !16081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17172)
    #dbg_value(i64 %i.y, !16087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17174)
    #dbg_value(i64 %i.y, !16088, !DIExpression(), !17178)
    #dbg_value(i64 %i.y, !16096, !DIExpression(), !17176)
    #dbg_value(!DIArgList(ptr %.pre.i, i64 0), !17161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17168)
    #dbg_value(i64 %i.y, !17161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17168)
  br label %bb.g, !dbg !17171

_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit: ; preds = %bb.c
    #dbg_value(ptr %.pre.i, !16078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17172)
    #dbg_value(ptr %.pre.i, !16084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17174)
    #dbg_value(ptr %.pre.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17176)
    #dbg_value(i64 poison, !16078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17172)
    #dbg_value(i64 poison, !16084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17174)
    #dbg_value(i64 poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17176)
    #dbg_value(i64 %i.c, !16081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17172)
    #dbg_value(i64 %i.c, !16087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17174)
    #dbg_value(i64 %i.c, !16095, !DIExpression(), !17176)
    #dbg_value(i64 %i.e, !16081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17172)
    #dbg_value(i64 %i.e, !16087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17174)
  %i.ab = sub nuw i64 %i.e, %i.c, !dbg !17179     ; 2 uses
    #dbg_value(i64 %i.ab, !16088, !DIExpression(), !17178)
    #dbg_value(i64 %i.ab, !16096, !DIExpression(), !17176)
    #dbg_value(!DIArgList(ptr %.pre.i, i64 %i.c), !17161, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17168)
    #dbg_value(i64 %i.ab, !17161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17168)
  %i.ac = icmp eq ptr %.pre.i, null, !dbg !17180
  br i1 %i.ac, label %bb.f, label %bb.g, !dbg !17171

bb.e:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !17181
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false), !dbg !17182
  %i.ae = tail call noundef ptr @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ad, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !17185
  br label %bb.h, !dbg !17186

bb.f:                                             ; preds = %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit
  %.sroa.622.025 = phi i64 [ %i.aa, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread ], [ %i.ab, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
  %i.af = inttoptr i64 %.sroa.622.025 to ptr, !dbg !17188
  br label %bb.h, !dbg !17186

bb.g:                                             ; preds = %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread28, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit
  %i.ag = phi i64 [ %i.y, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread28 ], [ %i.ab, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
  %i.ah = phi i64 [ 0, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit.thread28 ], [ %i.c, %_RINvMNtNtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCsG258MDvU3F_3std2fs4FileECs7OITKvp9Irj_4perf.exit ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.ah, !dbg !17189
    #dbg_value(ptr %i.ai, !17161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17168)
    #dbg_value(ptr %i.ai, !17021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17190)
    #dbg_value(i64 %i.ag, !17021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17190)
    #dbg_value(ptr %1, !17036, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17042)
    #dbg_value(ptr %2, !17036, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17042)
    #dbg_value(ptr undef, !17031, !DIExpression(), !17042)
    #dbg_value(ptr undef, !17191, !DIExpression(), !17194)
    #dbg_value(ptr undef, !17196, !DIExpression(), !17199)
    #dbg_value(ptr undef, !17201, !DIExpression(), !17204)
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !17206
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !17206, !noalias !17207, !noundef !51
  %i.al = load i64, ptr %i.o, align 8, !dbg !17210, !noalias !17207, !noundef !51 ; 2 uses
  %i.am = sub i64 %i.ak, %i.al, !dbg !17211
    #dbg_value(i64 %i.am, !17212, !DIExpression(), !17216)
    #dbg_value(i64 %i.ag, !17215, !DIExpression(), !17216)
    #dbg_value(ptr undef, !16201, !DIExpression(DW_OP_deref), !17218)
    #dbg_value(ptr undef, !16205, !DIExpression(DW_OP_deref), !17218)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.ag, i64 %i.am), !dbg !17220 ; 3 uses
    #dbg_value(i64 %..i.i, !17037, !DIExpression(), !17221)
    #dbg_value(ptr %i.ai, !17039, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17222)
    #dbg_value(i64 %..i.i, !17039, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17222)
    #dbg_value(!DIArgList(ptr %i.ai, i64 %..i.i), !17041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17222)
    #dbg_value(!DIArgList(i64 %i.ag, i64 %..i.i), !17041, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17222)
    #dbg_value(ptr poison, !16394, !DIExpression(), !17223)
    #dbg_value(ptr poison, !16404, !DIExpression(), !17225)
    #dbg_value(ptr poison, !16412, !DIExpression(), !17227)
    #dbg_value(ptr %i.ai, !16401, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17223)
    #dbg_value(ptr %i.ai, !16421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17229)
    #dbg_value(i64 %..i.i, !16401, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17223)
    #dbg_value(i64 %..i.i, !16421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17229)
    #dbg_value(i64 %..i.i, !16418, !DIExpression(), !17227)
    #dbg_value(ptr poison, !16435, !DIExpression(), !17231)
    #dbg_value(i64 %i.al, !16440, !DIExpression(), !17233)
    #dbg_value(i64 %i.al, !16445, !DIExpression(), !17234)
    #dbg_value(i64 %i.al, !16457, !DIExpression(), !17236)
    #dbg_value(i64 %i.al, !16465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17238)
    #dbg_value(i64 %i.al, !16475, !DIExpression(), !17240)
    #dbg_value(i64 %i.ak, !16465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17238)
    #dbg_value(ptr %1, !16450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17234)
    #dbg_value(i64 %i.ak, !16450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17234)
    #dbg_value(ptr %1, !16462, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17236)
    #dbg_value(ptr %1, !16470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17238)
    #dbg_value(ptr %1, !16480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17240)
    #dbg_value(i64 %i.ak, !16462, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17236)
    #dbg_value(i64 %i.ak, !16470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17238)
    #dbg_value(i64 %i.ak, !16480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17240)
    #dbg_value(i64 %i.am, !16471, !DIExpression(), !17242)
    #dbg_value(i64 %i.am, !16481, !DIExpression(), !17240)
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %i.al, !dbg !17243
    #dbg_value(ptr %i.an, !16428, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17229)
    #dbg_value(ptr %i.an, !16486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17244)
    #dbg_value(i64 %..i.i, !16428, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17229)
    #dbg_value(i64 %..i.i, !16486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17244)
    #dbg_value(ptr %i.ai, !16429, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17246)
    #dbg_value(ptr %i.ai, !16491, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17244)
    #dbg_value(i64 %..i.i, !16429, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17246)
    #dbg_value(i64 %..i.i, !16491, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17244)
  call void @_RINvNtCskKLDkoKarTP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull %i.an, i64 noundef range(i64 0, -9223372036854775808) %..i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ai, i64 noundef range(i64 0, -9223372036854775808) %..i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11), !dbg !17247, !noalias !17207
  %i.ao = load i64, ptr %i.o, align 8, !dbg !17248, !noalias !17250, !noundef !51
  %i.ap = add i64 %i.ao, %..i.i, !dbg !17248      ; 2 uses
  store i64 %i.ap, ptr %i.o, align 8, !dbg !17248, !noalias !17250
    #dbg_value(!DIArgList(ptr %i.ai, i64 %..i.i), !17021, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !17190)
    #dbg_value(!DIArgList(i64 %i.ag, i64 %..i.i), !17021, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 64), !17190)
    #dbg_value(ptr poison, !17090, !DIExpression(), !17253)
    #dbg_value(ptr poison, !17085, !DIExpression(), !17255)
  %i.aq = sub i64 %i.ap, %i.n, !dbg !17258
    #dbg_value(i64 %i.aq, !17066, !DIExpression(), !17067)
    #dbg_value(i64 %i.aq, !17259, !DIExpression(), !17263)
    #dbg_value(ptr %0, !17262, !DIExpression(), !17265)
  %i.ar = load i64, ptr %i.b, align 8, !dbg !17266, !noundef !51
  %i.as = add i64 %i.aq, %i.ar, !dbg !17266
    #dbg_value(i64 %i.as, !17267, !DIExpression(), !17271)
  %i.at = load i64, ptr %i.d, align 8, !dbg !17273, !noundef !51
    #dbg_value(i64 %i.at, !17270, !DIExpression(), !17271)
    #dbg_value(ptr undef, !16201, !DIExpression(DW_OP_deref), !17274)
    #dbg_value(ptr undef, !16205, !DIExpression(DW_OP_deref), !17274)
  %..i = call noundef i64 @llvm.umin.i64(i64 %i.at, i64 %i.as), !dbg !17276
  store i64 %..i, ptr %i.b, align 8, !dbg !17277
  br label %bb.h, !dbg !17278

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.ae, %bb.e ], [ %i.af, %bb.f ], [ null, %bb.g ], !dbg !17044
  ret ptr %.sroa.0.0, !dbg !17278
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_8buf_read7BufRead7consumeCs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #3 personality ptr @rust_eh_personality !dbg !17279 {
bb.a:
    #dbg_value(ptr %0, !17281, !DIExpression(), !17283)
    #dbg_value(i64 %1, !17282, !DIExpression(), !17283)
    #dbg_value(i64 %1, !17284, !DIExpression(), !17288)
    #dbg_value(ptr %0, !17287, !DIExpression(), !17290)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !17291 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !dbg !17291, !noundef !51
  %i.c = add i64 %i.b, %1, !dbg !17291
    #dbg_value(i64 %i.c, !17292, !DIExpression(), !17296)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !17298
  %i.e = load i64, ptr %i.d, align 8, !dbg !17298, !noundef !51
    #dbg_value(i64 %i.e, !17295, !DIExpression(), !17296)
    #dbg_value(i64 %i.c, !16201, !DIExpression(), !17299)
    #dbg_value(i64 %i.c, !16201, !DIExpression(), !17299)
    #dbg_value(i64 %i.e, !16205, !DIExpression(), !17299)
    #dbg_value(i64 %i.e, !16205, !DIExpression(), !17299)
    #dbg_value(ptr undef, !16201, !DIExpression(DW_OP_deref), !17299)
    #dbg_value(ptr undef, !16205, !DIExpression(DW_OP_deref), !17299)
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c), !dbg !17301
  store i64 %..i, ptr %i.a, align 8, !dbg !17302
  ret void, !dbg !17303
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtNtCsexYYUdYSQU6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCsG258MDvU3F_3std2fs4FileENtNtB9_8buf_read7BufRead8fill_bufCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !17304 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
    #dbg_value(ptr %1, !17306, !DIExpression(), !17307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17308), !dbg !17311
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17312), !dbg !17311
    #dbg_value(ptr %1, !15906, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !17314)
    #dbg_value(ptr %1, !15906, !DIExpression(DW_OP_plus_uconst, 40, DW_OP_stack_value), !17314)
    #dbg_value(ptr %1, !15914, !DIExpression(), !17314)
    #dbg_value(ptr %1, !15931, !DIExpression(), !17316)
    #dbg_declare(ptr %i.a, !15915, !DIExpression(), !17318)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !17319 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !dbg !17319, !alias.scope !17312, !noalias !17320, !noundef !51 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !17322 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !dbg !17322, !alias.scope !17312, !noalias !17320, !noundef !51 ; 2 uses
  %.not.i = icmp ult i64 %i.c, %i.e, !dbg !17319
  %.pre.i = load ptr, ptr %1, align 8, !dbg !17323, !alias.scope !17312, !noalias !17320 ; 3 uses
  br i1 %.not.i, label %bb.c, label %bb.b, !dbg !17319

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !17324
    #dbg_value(ptr %i.f, !15906, !DIExpression(), !17314)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !17325, !noalias !17326
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !17327
  %i.h = load i64, ptr %i.g, align 8, !dbg !17327, !alias.scope !17312, !noalias !17320, !noundef !51
    #dbg_value(ptr %.pre.i, !15945, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17328)
    #dbg_value(i64 %i.h, !15945, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17328)
  store ptr %.pre.i, ptr %i.a, align 8, !dbg !17330, !noalias !17326
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !17330
  store i64 %i.h, ptr %i.i, align 8, !dbg !17330, !noalias !17326
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !17330 ; 2 uses
  store i64 0, ptr %i.j, align 8, !dbg !17330, !noalias !17326
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !17330 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !17331 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8, !dbg !17331, !range !15956, !alias.scope !17312, !noalias !17320, !noundef !51
  store i8 %i.m, ptr %i.k, align 8, !dbg !17332, !noalias !17326
    #dbg_value(ptr undef, !15906, !DIExpression(DW_OP_deref), !17314)
    #dbg_value(ptr poison, !15958, !DIExpression(), !17333)
    #dbg_value(ptr %.pre.i, !15979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17333)
    #dbg_value(ptr %i.a, !15979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17333)
  %i.n = call noundef ptr @_RNvXsa_NtCsG258MDvU3F_3std2fsNtB5_4FileNtNtNtCsexYYUdYSQU6_5alloc2io4read4Read8read_buf(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull %.pre.i, ptr noundef nonnull %i.a), !dbg !17335, !noalias !17336 ; 2 uses
    #dbg_value(ptr %i.n, !15923, !DIExpression(), !17337)
    #dbg_value(ptr %i.n, !15985, !DIExpression(), !17338)
  store i64 0, ptr %i.b, align 8, !dbg !17340, !alias.scope !17312, !noalias !17320
    #dbg_value(ptr %i.a, !16011, !DIExpression(), !17341)
  %i.o = load i64, ptr %i.j, align 8, !dbg !17343, !noalias !17326, !noundef !51 ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !17344, !alias.scope !17312, !noalias !17320
    #dbg_value(ptr %i.a, !16022, !DIExpression(), !17345)
  %i.p = load i8, ptr %i.k, align 8, !dbg !17347, !range !15956, !noalias !17326, !noundef !51
  store i8 %i.p, ptr %i.l, align 8, !dbg !17348, !alias.scope !17312, !noalias !17320
  %.not15.i = icmp eq ptr %i.n, null, !dbg !17349
  br i1 %.not15.i, label %bb.e, label %bb.d, !dbg !17350

bb.c:                                             ; preds = %bb.e, %bb.a
  %i.q = phi i64 [ %i.e, %bb.a ], [ %i.o, %bb.e ], !dbg !17351
  %i.r = phi i64 [ %i.c, %bb.a ], [ 0, %bb.e ], !dbg !17352 ; 2 uses
    #dbg_value(ptr %.pre.i, !16078, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17353)
    #dbg_value(ptr %.pre.i, !16084, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17355)
    #dbg_value(ptr %.pre.i, !16092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17357)
    #dbg_value(i64 poison, !16078, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17353)
    #dbg_value(i64 poison, !16084, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17355)
    #dbg_value(i64 poison, !16092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17357)
    #dbg_value(i64 %i.r, !16081, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17353)
    #dbg_value(i64 %i.r, !16087, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !17355)
    #dbg_value(i64 %i.r, !16095, !DIExpression(), !17357)
    #dbg_value(i64 %i.q, !16081, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17353)
    #dbg_value(i64 %i.q, !16087, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !17355)
  %i.s = sub nuw i64 %i.q, %i.r, !dbg !17359
    #dbg_value(i64 %i.s, !16088, !DIExpression(), !17360)
    #dbg_value(i64 %i.s, !16096, !DIExpression(), !17357)
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.r, !dbg !17361
end_hunk_1
