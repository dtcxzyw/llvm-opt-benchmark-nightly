Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i.h3i.d225fd212855c992-cgu.04?download=true
inline.NumInlined: 466
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDatadENtB6_15DeserializeSeed11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsi2C7WdEh0SA_3h3i:bb.a
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0), !dbg !8226, !noalias !8162
    #dbg_value(i64 1, !8143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8094)
    #dbg_value(ptr %i.ad, !8143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8094)
    #dbg_value(ptr %i.ad, !8149, !DIExpression(), !8095)
    #dbg_value(ptr %1, !3881, !DIExpression(), !8097)
    #dbg_value(ptr %i.ad, !3885, !DIExpression(), !8097)
  %i.ae = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsi2C7WdEh0SA_3h3i(ptr noalias noundef nonnull align 8 %i.ad, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !8227, !noalias !8162
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8228
  store ptr %i.ae, ptr %i.af, align 8, !dbg !8228, !alias.scope !8162, !noalias !8163
  br label %bb.s, !dbg !8229

bb.m:                                             ; preds = %bb.k
  %i.ag = load ptr, ptr %i.ac, align 8, !dbg !8212, !noalias !8161, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.ag, !8147, !DIExpression(), !8098)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8230
  store ptr %i.ag, ptr %i.ah, align 8, !dbg !8230, !alias.scope !8162, !noalias !8163
  store i64 1, ptr %0, align 8, !dbg !8230, !alias.scope !8162, !noalias !8163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8231, !noalias !8161
  br label %_RINvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB9_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1m_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !8215

bb.n:                                             ; preds = %bb.k
    #dbg_value(i64 %i.aa, !8168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8100)
  %.sroa.219.0.copyload.i.i.i = load i64, ptr %i.ac, align 8, !dbg !8216, !noalias !8161 ; 3 uses
    #dbg_value(i64 %.sroa.219.0.copyload.i.i.i, !8168, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8100)
    #dbg_declare(ptr poison, !8173, !DIExpression(), !8101)
  switch i64 %i.aa, label %default.unreachable [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ], !dbg !8232

bb.o:                                             ; preds = %bb.n
  %i.ai = bitcast i64 %.sroa.219.0.copyload.i.i.i to double, !dbg !8233
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit12.i.i.i, !dbg !8234

bb.p:                                             ; preds = %bb.n
    #dbg_value(i64 %.sroa.219.0.copyload.i.i.i, !8175, !DIExpression(), !8102)
    #dbg_declare(ptr poison, !8178, !DIExpression(), !8104)
    #dbg_value(i64 %.sroa.219.0.copyload.i.i.i, !8183, !DIExpression(), !8105)
    #dbg_declare(ptr poison, !8182, !DIExpression(), !8104)
  %i.aj = uitofp i64 %.sroa.219.0.copyload.i.i.i to double, !dbg !8235
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit12.i.i.i, !dbg !8236

bb.q:                                             ; preds = %bb.n
    #dbg_value(i64 %.sroa.219.0.copyload.i.i.i, !8176, !DIExpression(), !8106)
    #dbg_declare(ptr poison, !8185, !DIExpression(), !8108)
    #dbg_value(i64 %.sroa.219.0.copyload.i.i.i, !8189, !DIExpression(), !8109)
    #dbg_declare(ptr poison, !8188, !DIExpression(), !8108)
  %i.ak = sitofp i64 %.sroa.219.0.copyload.i.i.i to double, !dbg !8237
  br label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit12.i.i.i, !dbg !8238

_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit12.i.i.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sink.i10.i.i.i = phi double [ %i.ak, %bb.q ], [ %i.aj, %bb.p ], [ %i.ai, %bb.o ]
    #dbg_value(double %.sink.i10.i.i.i, !8143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8094)
    #dbg_value(i64 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8094)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8231, !noalias !8161
  br label %bb.r, !dbg !8231

bb.r:                                             ; preds = %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit12.i.i.i, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit.i.i.i
  %.sroa.7.0.in.i.i.i = phi double [ %.sink.i.i.i.i, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit.i.i.i ], [ %.sink.i10.i.i.i, %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB1b_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i.exit12.i.i.i ]
    #dbg_value(double %.sroa.7.0.in.i.i.i, !8143, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8094)
    #dbg_value(i64 0, !8143, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8094)
    #dbg_value(double %.sroa.7.0.in.i.i.i, !8148, !DIExpression(), !8110)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !8239
  store double %.sroa.7.0.in.i.i.i, ptr %i.al, align 8, !dbg !8239, !alias.scope !8162, !noalias !8163
  br label %bb.s, !dbg !8240

bb.s:                                             ; preds = %bb.r, %bb.l
  %storemerge.i.i.i = phi i64 [ 0, %bb.r ], [ 1, %bb.l ], !dbg !8241
  store i64 %storemerge.i.i.i, ptr %0, align 8, !dbg !8241, !alias.scope !8162, !noalias !8163
  br label %_RINvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB9_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1m_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !8242

_RINvXs1e_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsdNtB9_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1m_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit: ; preds = %.loopexit.i.i.i, %bb.f, %bb.m, %bb.s
  ret void, !dbg !8243
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !8272 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [72 x i8], align 8                ; 4 uses
  %i.r = alloca [80 x i8], align 8                ; 7 uses
  %i.s = alloca [72 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 7 uses
  %i.v = alloca [80 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [56 x i8], align 8            ; 6 uses
    #dbg_declare(ptr %.sroa.8, !8677, !DIExpression(DW_OP_LLVM_fragment, 128, 448), !8688)
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.47 = alloca [40 x i8], align 8           ; 6 uses
    #dbg_declare(ptr %.sroa.47, !8662, !DIExpression(DW_OP_LLVM_fragment, 256, 320), !8690)
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
    #dbg_value(ptr %1, !8656, !DIExpression(), !8691)
    #dbg_value(ptr %1, !8692, !DIExpression(), !8696)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8700)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8702)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8704)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8706)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8708)
    #dbg_value(ptr %1, !8692, !DIExpression(), !8710)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8712)
    #dbg_value(ptr %1, !8697, !DIExpression(), !8714)
    #dbg_declare(ptr poison, !8657, !DIExpression(), !8715)
    #dbg_declare(ptr %i.s, !8680, !DIExpression(), !8716)
    #dbg_value(i8 1, !8693, !DIExpression(), !8696)
    #dbg_value(i8 0, !8693, !DIExpression(), !8710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8717), !dbg !9065
    #dbg_value(ptr %1, !3096, !DIExpression(), !8278)
    #dbg_value(ptr %1, !3115, !DIExpression(), !8280)
    #dbg_value(ptr %1, !3118, !DIExpression(), !8282)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !8718, !noalias !8719, !noundef !1364 ; 8 uses
  %.promoted.i = load i64, ptr %i.ab, align 8, !alias.scope !8717, !noalias !8720 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i, %i.ad, !dbg !9066
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit, !dbg !9066

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !8718, !noalias !8719, !nonnull !1364, !noundef !1364 ; 11 uses
  br label %bb.b, !dbg !9066

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8721), !dbg !9067
    #dbg_value(ptr %i.af, !3128, !DIExpression(), !8288)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah, !dbg !9068
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !9068, !noalias !8722, !noundef !1364 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !9069

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8290)
  %i.ak = add i64 %i.ah, 1, !dbg !9070            ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !dbg !9070, !alias.scope !8723, !noalias !8720
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8288)
  %exitcond.not.i = icmp eq i64 %i.ak, %i.ad, !dbg !9066
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !9066

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.b
    #dbg_value(i8 %i.aj, !8658, !DIExpression(), !8724)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47), !dbg !9071
  switch i8 %i.aj, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ], !dbg !9072

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !dbg !9073
  store i64 5, ptr %i.aa, align 8, !dbg !9073
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !dbg !9074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !9075
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9076
  store ptr %i.al, ptr %i.am, align 8, !dbg !9076
  store i64 -1, ptr %0, align 8, !dbg !9077
  br label %bb.cp, !dbg !9078

bb.d:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
  %i.an = add i8 %i.aj, -48, !dbg !9079
  %or.cond8 = icmp ult i8 %i.an, 10, !dbg !9079
  br i1 %or.cond8, label %bb.cg, label %bb.cf, !dbg !9079, !prof !3878

bb.e:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
    #dbg_value(ptr %i.af, !3132, !DIExpression(), !8294)
  %i.ao = add i64 %i.ah, 1, !dbg !9080            ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !dbg !9080, !alias.scope !8726
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8727), !dbg !9081
    #dbg_value(ptr %1, !3913, !DIExpression(), !8300)
    #dbg_value(ptr %1, !3933, !DIExpression(), !8302)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8300)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8300)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8303)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8303)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ao), !dbg !9082 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8303)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8728), !dbg !9083
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8308)
  %exitcond.not.i57.not = icmp ult i64 %i.ao, %i.ad, !dbg !9084
  br i1 %exitcond.not.i57.not, label %bb.f, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, !dbg !9084

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8308)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8303)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao, !dbg !9085
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !9085, !noalias !8729, !noundef !1364
    #dbg_value(i8 %i.aq, !3938, !DIExpression(), !8311)
  %i.ar = add i64 %i.ah, 2, !dbg !9086            ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !dbg !9086, !alias.scope !8730, !noalias !8731
    #dbg_value(i8 %i.aq, !3923, !DIExpression(), !8312)
  %.not.i = icmp eq i8 %i.aq, 117, !dbg !9087
  br i1 %.not.i, label %bb.g, label %bb.k, !dbg !9087, !prof !3941

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8303)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8732), !dbg !9083
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8308)
  %exitcond.not.i57.1 = icmp eq i64 %i.ar, %umax.i, !dbg !9084
  br i1 %exitcond.not.i57.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.h, !dbg !9084

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8308)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8303)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar, !dbg !9085
  %i.at = load i8, ptr %i.as, align 1, !dbg !9085, !noalias !8733, !noundef !1364
    #dbg_value(i8 %i.at, !3938, !DIExpression(), !8311)
  %i.au = add i64 %i.ah, 3, !dbg !9086            ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !dbg !9086, !alias.scope !8734, !noalias !8731
    #dbg_value(i8 %i.at, !3923, !DIExpression(), !8312)
  %.not.i.1 = icmp eq i8 %i.at, 108, !dbg !9087
  br i1 %.not.i.1, label %bb.i, label %bb.k, !dbg !9087, !prof !3941

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8303)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8735), !dbg !9083
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8308)
  %exitcond.not.i57.2 = icmp eq i64 %i.au, %umax.i, !dbg !9084
  br i1 %exitcond.not.i57.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.j, !dbg !9084

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8308)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8303)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au, !dbg !9085
  %i.aw = load i8, ptr %i.av, align 1, !dbg !9085, !noalias !8736, !noundef !1364
    #dbg_value(i8 %i.aw, !3938, !DIExpression(), !8311)
  %i.ax = add i64 %i.ah, 4, !dbg !9086
  store i64 %i.ax, ptr %i.ab, align 8, !dbg !9086, !alias.scope !8737, !noalias !8731
    #dbg_value(i8 %i.aw, !3923, !DIExpression(), !8312)
  %.not.i.2 = icmp eq i8 %i.aw, 108, !dbg !9087
  br i1 %.not.i.2, label %.thread, label %bb.k, !dbg !9087, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !9088, !noalias !8738
  store i64 5, ptr %i.o, align 8, !dbg !9088, !noalias !8738
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !dbg !9089, !noalias !8739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !9090, !noalias !8738
  br label %bb.af, !dbg !9091

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !9092, !noalias !8738
  store i64 9, ptr %i.n, align 8, !dbg !9092, !noalias !8738
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !dbg !9093, !noalias !8739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !9094, !noalias !8738
  br label %bb.af, !dbg !9095

bb.l:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
    #dbg_value(ptr %i.af, !3132, !DIExpression(), !8316)
  %i.ba = add i64 %i.ah, 1, !dbg !9096            ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !dbg !9096, !alias.scope !8740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8741), !dbg !9097
    #dbg_value(ptr %1, !3913, !DIExpression(), !8322)
    #dbg_value(ptr %1, !3933, !DIExpression(), !8324)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8322)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8322)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8325)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8325)
  %umax.i60 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ba), !dbg !9098 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8325)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8742), !dbg !9099
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8330)
  %exitcond.not.i62.not = icmp ult i64 %i.ba, %i.ad, !dbg !9100
  br i1 %exitcond.not.i62.not, label %bb.m, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66, !dbg !9100

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8330)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8325)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba, !dbg !9101
  %i.bc = load i8, ptr %i.bb, align 1, !dbg !9101, !noalias !8743, !noundef !1364
    #dbg_value(i8 %i.bc, !3938, !DIExpression(), !8333)
  %i.bd = add i64 %i.ah, 2, !dbg !9102            ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !dbg !9102, !alias.scope !8744, !noalias !8745
    #dbg_value(i8 %i.bc, !3923, !DIExpression(), !8334)
  %.not.i63 = icmp eq i8 %i.bc, 114, !dbg !9103
  br i1 %.not.i63, label %bb.n, label %bb.r, !dbg !9103, !prof !3941

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8325)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8746), !dbg !9099
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8330)
  %exitcond.not.i62.1 = icmp eq i64 %i.bd, %umax.i60, !dbg !9100
  br i1 %exitcond.not.i62.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66, label %bb.o, !dbg !9100

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8330)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8325)
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd, !dbg !9101
  %i.bf = load i8, ptr %i.be, align 1, !dbg !9101, !noalias !8747, !noundef !1364
    #dbg_value(i8 %i.bf, !3938, !DIExpression(), !8333)
  %i.bg = add i64 %i.ah, 3, !dbg !9102            ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !dbg !9102, !alias.scope !8748, !noalias !8745
    #dbg_value(i8 %i.bf, !3923, !DIExpression(), !8334)
  %.not.i63.1 = icmp eq i8 %i.bf, 117, !dbg !9103
  br i1 %.not.i63.1, label %bb.p, label %bb.r, !dbg !9103, !prof !3941

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8325)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8749), !dbg !9099
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8330)
  %exitcond.not.i62.2 = icmp eq i64 %i.bg, %umax.i60, !dbg !9100
  br i1 %exitcond.not.i62.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66, label %bb.q, !dbg !9100

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8330)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8325)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg, !dbg !9101
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !9101, !noalias !8750, !noundef !1364
    #dbg_value(i8 %i.bi, !3938, !DIExpression(), !8333)
  %i.bj = add i64 %i.ah, 4, !dbg !9102
  store i64 %i.bj, ptr %i.ab, align 8, !dbg !9102, !alias.scope !8751, !noalias !8745
    #dbg_value(i8 %i.bi, !3923, !DIExpression(), !8334)
  %.not.i63.2 = icmp eq i8 %i.bi, 101, !dbg !9103
  br i1 %.not.i63.2, label %.thread, label %bb.r, !dbg !9103, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !9104, !noalias !8752
  store i64 5, ptr %i.m, align 8, !dbg !9104, !noalias !8752
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !dbg !9105, !noalias !8753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !9106, !noalias !8752
  br label %bb.ai, !dbg !9107

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !9108, !noalias !8752
  store i64 9, ptr %i.l, align 8, !dbg !9108, !noalias !8752
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !dbg !9109, !noalias !8753
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !9110, !noalias !8752
  br label %bb.ai, !dbg !9111

bb.s:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
    #dbg_value(ptr %i.af, !3132, !DIExpression(), !8338)
  %i.bm = add i64 %i.ah, 1, !dbg !9112            ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !dbg !9112, !alias.scope !8754
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8755), !dbg !9113
    #dbg_value(ptr %1, !3913, !DIExpression(), !8344)
    #dbg_value(ptr %1, !3933, !DIExpression(), !8346)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8344)
    #dbg_value(i64 4, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8344)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8347)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8347)
  %umax.i69 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.bm), !dbg !9114 ; 3 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8756), !dbg !9115
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8352)
  %exitcond.not.i71.not = icmp ult i64 %i.bm, %i.ad, !dbg !9116
  br i1 %exitcond.not.i71.not, label %bb.t, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, !dbg !9116

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8352)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm, !dbg !9117
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !9117, !noalias !8757, !noundef !1364
    #dbg_value(i8 %i.bo, !3938, !DIExpression(), !8355)
  %i.bp = add i64 %i.ah, 2, !dbg !9118            ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !dbg !9118, !alias.scope !8758, !noalias !8759
    #dbg_value(i8 %i.bo, !3923, !DIExpression(), !8356)
  %.not.i72 = icmp eq i8 %i.bo, 97, !dbg !9119
  br i1 %.not.i72, label %bb.u, label %bb.aa, !dbg !9119, !prof !3941

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8760), !dbg !9115
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8352)
  %exitcond.not.i71.1 = icmp eq i64 %i.bp, %umax.i69, !dbg !9116
  br i1 %exitcond.not.i71.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, label %bb.v, !dbg !9116

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8352)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp, !dbg !9117
  %i.br = load i8, ptr %i.bq, align 1, !dbg !9117, !noalias !8761, !noundef !1364
    #dbg_value(i8 %i.br, !3938, !DIExpression(), !8355)
  %i.bs = add i64 %i.ah, 3, !dbg !9118            ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !dbg !9118, !alias.scope !8762, !noalias !8759
    #dbg_value(i8 %i.br, !3923, !DIExpression(), !8356)
  %.not.i72.1 = icmp eq i8 %i.br, 108, !dbg !9119
  br i1 %.not.i72.1, label %bb.w, label %bb.aa, !dbg !9119, !prof !3941

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8763), !dbg !9115
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8352)
  %exitcond.not.i71.2 = icmp eq i64 %i.bs, %umax.i69, !dbg !9116
  br i1 %exitcond.not.i71.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, label %bb.x, !dbg !9116

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8352)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs, !dbg !9117
  %i.bu = load i8, ptr %i.bt, align 1, !dbg !9117, !noalias !8764, !noundef !1364
    #dbg_value(i8 %i.bu, !3938, !DIExpression(), !8355)
  %i.bv = add i64 %i.ah, 4, !dbg !9118            ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !dbg !9118, !alias.scope !8765, !noalias !8759
    #dbg_value(i8 %i.bu, !3923, !DIExpression(), !8356)
  %.not.i72.2 = icmp eq i8 %i.bu, 115, !dbg !9119
  br i1 %.not.i72.2, label %bb.y, label %bb.aa, !dbg !9119, !prof !3941

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
    #dbg_value(ptr poison, !3920, !DIExpression(), !8348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8766), !dbg !9115
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8352)
  %exitcond.not.i71.3 = icmp eq i64 %i.bv, %umax.i69, !dbg !9116
  br i1 %exitcond.not.i71.3, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75, label %bb.z, !dbg !9116

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.af, !3937, !DIExpression(), !8352)
    #dbg_value(!DIArgList(ptr poison, i64 4), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !8347)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv, !dbg !9117
  %i.bx = load i8, ptr %i.bw, align 1, !dbg !9117, !noalias !8767, !noundef !1364
    #dbg_value(i8 %i.bx, !3938, !DIExpression(), !8355)
  %i.by = add i64 %i.ah, 5, !dbg !9118
  store i64 %i.by, ptr %i.ab, align 8, !dbg !9118, !alias.scope !8768, !noalias !8759
    #dbg_value(i8 %i.bx, !3923, !DIExpression(), !8356)
  %.not.i72.3 = icmp eq i8 %i.bx, 101, !dbg !9119
  br i1 %.not.i72.3, label %.thread, label %bb.aa, !dbg !9119, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !9120, !noalias !8769
  store i64 5, ptr %i.k, align 8, !dbg !9120, !noalias !8769
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !dbg !9121, !noalias !8770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !9122, !noalias !8769
  br label %bb.aj, !dbg !9123

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !9124, !noalias !8769
  store i64 9, ptr %i.j, align 8, !dbg !9124, !noalias !8769
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !dbg !9125, !noalias !8770
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !9126, !noalias !8769
  br label %bb.aj, !dbg !9127

bb.ab:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !8361)
  %i.cb = add i64 %i.ah, 1, !dbg !9128
  store i64 %i.cb, ptr %i.ab, align 8, !dbg !9128, !alias.scope !8771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !9129
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i1 noundef zeroext false), !dbg !9130
  %i.cc = load i64, ptr %i.z, align 8, !dbg !9129, !range !3877, !noundef !1364 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1, !dbg !9129
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !9131 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al, !dbg !9132

bb.ac:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
    #dbg_value(ptr %i.af, !3132, !DIExpression(), !8365)
  %i.cf = add i64 %i.ah, 1, !dbg !9133
  store i64 %i.cf, ptr %i.ab, align 8, !dbg !9133, !alias.scope !8773
    #dbg_value(ptr %1, !8774, !DIExpression(), !8778)
    #dbg_value(ptr %1, !8779, !DIExpression(), !8782)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !9134
    #dbg_value(ptr poison, !8775, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8783)
    #dbg_value(i64 poison, !8775, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8783)
  store i64 0, ptr %i.cg, align 8, !dbg !9135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !9136
  call void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !9137
  %i.ch = load i64, ptr %i.x, align 8, !dbg !9136, !range !3544, !noundef !1364 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2, !dbg !9136
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !9131
  %i.ck = load ptr, ptr %i.cj, align 8, !dbg !9131 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar, !dbg !9132

bb.ad:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !9138 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !dbg !9138, !noundef !1364
  %i.cn = add i8 %i.cm, -1, !dbg !9138            ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !dbg !9138
  %i.co = icmp eq i8 %i.cn, 0, !dbg !9139
  br i1 %i.co, label %bb.ay, label %bb.az, !dbg !9139, !prof !3954

bb.ae:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !9138 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !dbg !9138, !noundef !1364
  %i.cr = add i8 %i.cq, -1, !dbg !9138            ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !dbg !9138
  %i.cs = icmp eq i8 %i.cr, 0, !dbg !9139
  br i1 %i.cs, label %bb.bx, label %bb.by, !dbg !9139, !prof !3954

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.ay, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.az, %bb.k ]
    #dbg_value(ptr %.sroa.0.1.i.ph, !8664, !DIExpression(), !8784)
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9140
  store ptr %.sroa.0.1.i.ph, ptr %i.ct, align 8, !dbg !9140
  store i64 -1, ptr %0, align 8, !dbg !9140
  br label %bb.ah, !dbg !9141

bb.ag:                                            ; preds = %.thread144, %.thread141
  %.sroa.22.sroa.21.sroa.0.0.in.in = phi i64 [ %.sroa.22.sroa.21.sroa.0.4.in.in, %.thread144 ], [ %.sroa.22.sroa.21.sroa.0.3.in.in, %.thread141 ] ; 3 uses
  %.sroa.45.0 = phi i64 [ %.sroa.45.3, %.thread144 ], [ %.sroa.45.2, %.thread141 ], !dbg !8724
  %.sroa.37.0 = phi i64 [ %.sroa.37.4, %.thread144 ], [ %.sroa.37.3, %.thread141 ], !dbg !8724
  %.sroa.0.0 = phi i64 [ %.sroa.0.4, %.thread144 ], [ %.sroa.0.3, %.thread141 ], !dbg !8724 ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !8662, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8786)
    #dbg_value(i64 %.sroa.37.0, !8662, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8786)
    #dbg_value(i64 %.sroa.45.0, !8662, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !8786)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.0.in.in, !8662, !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 64, 8), !8786)
    #dbg_value(i64 %.sroa.22.sroa.21.sroa.0.0.in.in, !8662, !DIExpression(DW_OP_constu, 8, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 56, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 72, 56), !8786)
  %i.cu = icmp eq i64 %.sroa.0.0, -1, !dbg !9142
  br i1 %i.cu, label %._crit_edge, label %.thread, !dbg !9143, !prof !8789

._crit_edge:                                      ; preds = %bb.ag
  %i.cv = inttoptr i64 %.sroa.22.sroa.21.sroa.0.0.in.in to ptr, !dbg !9144
  br label %bb.ch, !dbg !9143

bb.ah:                                            ; preds = %bb.ci, %bb.bx, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47), !dbg !9145
  br label %bb.cp, !dbg !9141

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66
  %.sroa.0.1.i65.ph = phi ptr [ %i.bk, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66 ], [ %i.bl, %bb.r ]
    #dbg_value(ptr %.sroa.0.1.i65.ph, !8666, !DIExpression(), !8790)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9146
  store ptr %.sroa.0.1.i65.ph, ptr %i.cw, align 8, !dbg !9146
  store i64 -1, ptr %0, align 8, !dbg !9146
  br label %bb.ah, !dbg !9141

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75
  %.sroa.0.1.i74.ph = phi ptr [ %i.bz, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75 ], [ %i.ca, %bb.aa ]
    #dbg_value(ptr %.sroa.0.1.i74.ph, !8668, !DIExpression(), !8791)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9147
  store ptr %.sroa.0.1.i74.ph, ptr %i.cx, align 8, !dbg !9147
  store i64 -1, ptr %0, align 8, !dbg !9147
  br label %bb.ah, !dbg !9141

bb.ak:                                            ; preds = %bb.ab
  %i.cy = load ptr, ptr %i.ce, align 8, !dbg !9148, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.cy, !8670, !DIExpression(), !8792)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !9149
  store ptr %i.cy, ptr %i.cz, align 8, !dbg !9149
  store i64 -1, ptr %0, align 8, !dbg !9149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !9150
  br label %bb.ah, !dbg !9141

bb.al:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.cc, !8793, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8803)
  %.sroa.2.0.copyload = load i64, ptr %i.ce, align 8, !dbg !9151 ; 5 uses
    #dbg_value(i64 %.sroa.2.0.copyload, !8793, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8803)
    #dbg_declare(ptr poison, !8798, !DIExpression(), !8376)
  switch i64 %i.cc, label %default.unreachable273 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserialize12ValueVisitorECsi2C7WdEh0SA_3h3i.exit
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB2v_9JsonEventNtB1l_11Deserialize11deserialize9___VisitorECsi2C7WdEh0SA_3h3i:bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %bb.fe, %bb.eu, %bb.eo, %bb.ek, %.loopexit.i.i.i199.i, %bb.ea, %.loopexit.i.i.i190.i, %bb.dq, %.invoke.i, %bb.dn, %.loopexit155.i.i.i.i.i.i.i, %bb.di, %.loopexit156.i.i.i.i.i.i.i, %bb.cx, %bb.cr, %.loopexit263.i.i.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i, %.loopexit270.i.i.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i, %.loopexit277.i.i.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit161.i.i.i.i.i.i.i, %bb.bn, %.loopexit.i.i.i.i
  %.sroa.090.2.ph.ph.i = phi i8 [ %.sroa.090.4.i, %bb.fe ], [ 1, %bb.eu ], [ 1, %bb.eo ], [ 1, %bb.dn ], [ 1, %.invoke ], [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.bn ], [ 1, %.loopexit161.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ 1, %.loopexit277.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i ], [ 1, %.loopexit270.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i ], [ 1, %.loopexit263.i.i.i.i.i.i.i ], [ 1, %.invoke.i ], [ 1, %.loopexit.i.i.i190.i ], [ 1, %bb.ea ], [ 1, %bb.cr ], [ 1, %.loopexit.i.i.i199.i ], [ 1, %bb.dq ], [ 1, %bb.cx ], [ 1, %.loopexit156.i.i.i.i.i.i.i ], [ 1, %bb.ek ], [ 1, %bb.di ], [ 1, %.loopexit155.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp244.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bg:                                            ; preds = %bb.aw
  br i1 %.sroa.011.0.i.ph, label %bb.es, label %bb.eo, !dbg !12771

bb.bh:                                            ; preds = %bb.bd, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12805, !noalias !12260
    #dbg_value(ptr undef, !11948, !DIExpression(), !10973)
  br i1 %.not1215, label %bb.dr, label %.invoke, !dbg !12773, !prof !3841

bb.bi:                                            ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12805, !noalias !12260
    #dbg_value(ptr %i.ah, !12300, !DIExpression(), !11324)
  %i.fx = load i64, ptr %i.ah, align 8, !dbg !12808, !range !3165, !noalias !12087, !noundef !1364
  %.not149.i = icmp eq i64 %i.fx, -1, !dbg !12808
  br i1 %.not149.i, label %bb.dx, label %.invoke, !dbg !12773, !prof !3841

bb.bj:                                            ; preds = %_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12805, !noalias !12260
    #dbg_value(ptr %i.ag, !12307, !DIExpression(), !11327)
  %i.fy = load i64, ptr %i.ag, align 8, !dbg !12809, !range !3443, !noalias !12087, !noundef !1364
  %.not148.i = icmp eq i64 %i.fy, -1, !dbg !12809
  br i1 %.not148.i, label %bb.eh, label %.invoke, !dbg !12773, !prof !3841

bb.bk:                                            ; preds = %_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i, %bb.bc, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12805, !noalias !12260
    #dbg_value(ptr poison, !12313, !DIExpression(), !11334)
    #dbg_value(ptr poison, !12330, !DIExpression(), !11340)
    #dbg_declare(ptr poison, !12334, !DIExpression(), !11341)
  call void @llvm.experimental.noalias.scope.decl(metadata !12340), !dbg !12810
    #dbg_value(ptr %i.es, !4142, !DIExpression(), !11345)
    #dbg_value(ptr %i.es, !4147, !DIExpression(), !11347)
  call void @llvm.experimental.noalias.scope.decl(metadata !12341), !dbg !12811
    #dbg_value(ptr %i.es, !3096, !DIExpression(), !11351)
    #dbg_value(ptr %i.es, !3115, !DIExpression(), !11353)
    #dbg_value(ptr %i.es, !3118, !DIExpression(), !11355)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !12342, !noalias !12343, !noundef !1364 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !12344, !noalias !12345 ; 2 uses
  %i.gb = icmp ult i64 %.promoted.i.i.i.i.i, %i.ga, !dbg !12812
  br i1 %i.gb, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !dbg !12812

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bk
  %i.gc = load ptr, ptr %i.et, align 8, !alias.scope !12342, !noalias !12343, !nonnull !1364, !noundef !1364 ; 2 uses
  br label %bb.bl, !dbg !12812

bb.bl:                                            ; preds = %bb.bm, %.lr.ph.i.i.i.i.i
  %i.gd = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gg, %bb.bm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12346), !dbg !12813
    #dbg_value(ptr %i.et, !3128, !DIExpression(), !11361)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd, !dbg !12814
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !12814, !noalias !12347, !noundef !1364
  switch i8 %i.gf, label %bb.bn [
    i8 32, label %bb.bm
    i8 10, label %bb.bm
    i8 9, label %bb.bm
    i8 13, label %bb.bm
    i8 58, label %bb.bo
  ], !dbg !12815, !prof !4052

bb.bm:                                            ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11363)
  %i.gg = add i64 %i.gd, 1, !dbg !12816           ; 3 uses
  store i64 %i.gg, ptr %i.eu, align 8, !dbg !12816, !alias.scope !12348, !noalias !12345
    #dbg_value(ptr %i.es, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11361)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gg, %i.ga, !dbg !12812
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bl, !dbg !12812

.loopexit.i.i.i.i:                                ; preds = %bb.bk, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12817, !noalias !12349
  store i64 3, ptr %i.v, align 8, !dbg !12817, !noalias !12349
  %i.gh = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12818, !noalias !12207

.noexc159.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12819, !noalias !12349
  br label %.loopexit237.i, !dbg !12820

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12821, !noalias !12349
  store i64 6, ptr %i.w, align 8, !dbg !12821, !noalias !12349
  %i.gi = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12822, !noalias !12207

.noexc160.i:                                      ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12823, !noalias !12349
  br label %.loopexit237.i, !dbg !12824

bb.bo:                                            ; preds = %bb.bl
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11367)
  %i.gj = add i64 %i.gd, 1, !dbg !12825           ; 3 uses
  store i64 %i.gj, ptr %i.eu, align 8, !dbg !12825, !alias.scope !12350, !noalias !12207
  call void @llvm.experimental.noalias.scope.decl(metadata !12351), !dbg !12826
    #dbg_declare(ptr poison, !12352, !DIExpression(), !11374)
    #dbg_value(ptr %i.es, !12356, !DIExpression(), !11375)
    #dbg_declare(ptr poison, !12355, !DIExpression(), !11374)
  call void @llvm.experimental.noalias.scope.decl(metadata !12359), !dbg !12827
    #dbg_value(ptr %i.es, !12361, !DIExpression(), !11380)
  call void @llvm.experimental.noalias.scope.decl(metadata !12366), !dbg !12828
    #dbg_value(ptr %i.es, !12367, !DIExpression(), !11387)
    #dbg_declare(ptr poison, !12370, !DIExpression(), !11388)
  call void @llvm.experimental.noalias.scope.decl(metadata !12375), !dbg !12829
    #dbg_value(ptr %i.es, !12376, !DIExpression(), !11425)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11428)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11430)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11432)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11434)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11436)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11438)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11440)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11442)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11444)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11446)
    #dbg_value(i64 1, !12414, !DIExpression(), !11455)
    #dbg_value(i64 1, !12414, !DIExpression(), !11460)
    #dbg_value(ptr %i.es, !12437, !DIExpression(), !11464)
    #dbg_value(ptr %i.es, !12440, !DIExpression(), !11467)
    #dbg_value(ptr %i.es, !12442, !DIExpression(), !11470)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !12830 ; 2 uses
    #dbg_value(ptr poison, !12438, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11477)
    #dbg_value(i64 poison, !12438, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11477)
  store i64 0, ptr %i.ex, align 8, !dbg !12831, !alias.scope !12457, !noalias !12207
    #dbg_value(i8 undef, !12378, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11478)
    #dbg_value(i8 poison, !12378, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11478)
  %i.gl = icmp ult i64 %i.gj, %i.ga, !dbg !12832
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i.i.i, !dbg !12832

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bo, %bb.do
  %i.gm = phi ptr [ %i.kn, %bb.do ], [ %i.gc, %bb.bo ] ; 11 uses
  %.promoted.i210.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.do ], [ %i.gj, %bb.bo ]
  %i.gn = phi i64 [ %i.km, %bb.do ], [ %i.ga, %bb.bo ] ; 7 uses
  %.sroa.7.0209.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2194.i.i.i.i.i.i.i, %bb.do ], [ undef, %bb.bo ] ; 2 uses
  %.sroa.039.0208.i.i.i.i.i.i.i = phi i1 [ true, %bb.do ], [ false, %bb.bo ] ; 2 uses
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i.i.i, !12378, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11478)
  call void @llvm.experimental.noalias.scope.decl(metadata !12458), !dbg !12833
  br label %bb.bp, !dbg !12832

bb.bp:                                            ; preds = %bb.bq, %.lr.ph.i.i.i.i.i.i.i.i
  %i.go = phi i64 [ %.promoted.i210.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gr, %bb.bq ] ; 17 uses
    #dbg_value(ptr %i.et, !3128, !DIExpression(), !11484)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go, !dbg !12834
  %i.gq = load i8, ptr %i.gp, align 1, !dbg !12834, !noalias !12459, !noundef !1364 ; 3 uses
  switch i8 %i.gq, label %bb.br [
    i8 32, label %bb.bq
    i8 10, label %bb.bq
    i8 9, label %bb.bq
    i8 13, label %bb.bq
    i8 110, label %bb.bs
    i8 116, label %bb.by
    i8 102, label %bb.ce
    i8 45, label %bb.cm
    i8 34, label %bb.cn
    i8 91, label %bb.co
    i8 123, label %bb.co
  ], !dbg !12835

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11491)
  %i.gr = add i64 %i.go, 1, !dbg !12836           ; 3 uses
  store i64 %i.gr, ptr %i.eu, align 8, !dbg !12836, !alias.scope !12460, !noalias !12461
    #dbg_value(ptr %i.es, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11484)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, %i.gn, !dbg !12832
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i.i.i, label %bb.bp, !dbg !12832

.loopexit161.i.i.i.i.i.i.i:                       ; preds = %bb.bo, %bb.do, %bb.bq
    #dbg_value(i8 0, !12383, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11494)
    #dbg_value(i8 poison, !12383, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11494)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12837, !noalias !12462
  store i64 5, ptr %i.u, align 8, !dbg !12837, !noalias !12462
  %i.gs = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12838, !noalias !12207

.noexc161.i:                                      ; preds = %.loopexit161.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12839, !noalias !12462
  br label %.loopexit237.i, !dbg !12840

bb.br:                                            ; preds = %bb.bp
  %i.gt = add i8 %i.gq, -48, !dbg !12841
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.gt, 10, !dbg !12841
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.cs, label %bb.cr, !dbg !12841, !prof !3878

bb.bs:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.et, !3132, !DIExpression(), !11496)
  %i.gu = add i64 %i.go, 1, !dbg !12842           ; 4 uses
  store i64 %i.gu, ptr %i.eu, align 8, !dbg !12842, !alias.scope !12464, !noalias !12207
  call void @llvm.experimental.noalias.scope.decl(metadata !12465), !dbg !12843
    #dbg_value(ptr %i.es, !3913, !DIExpression(), !11502)
    #dbg_value(ptr %i.es, !3933, !DIExpression(), !11504)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11502)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11502)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11505)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11505)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 %i.gu), !dbg !12844 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11505)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11506)
  call void @llvm.experimental.noalias.scope.decl(metadata !12466), !dbg !12845
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11510)
  %exitcond.not.i84.not.i.i.i.i.i.i.i = icmp ult i64 %i.gu, %i.gn, !dbg !12846
  br i1 %exitcond.not.i84.not.i.i.i.i.i.i.i, label %bb.bt, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, !dbg !12846

bb.bt:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11510)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11505)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gu, !dbg !12847
  %i.gw = load i8, ptr %i.gv, align 1, !dbg !12847, !noalias !12467, !noundef !1364
    #dbg_value(i8 %i.gw, !3938, !DIExpression(), !11513)
  %i.gx = add i64 %i.go, 2, !dbg !12848           ; 3 uses
  store i64 %i.gx, ptr %i.eu, align 8, !dbg !12848, !alias.scope !12468, !noalias !12469
    #dbg_value(i8 %i.gw, !3923, !DIExpression(), !11514)
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gw, 117, !dbg !12849
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bu, label %.loopexit277.i.i.i.i.i.i.i, !dbg !12849, !prof !3941

bb.bu:                                            ; preds = %bb.bt
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11505)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11506)
  call void @llvm.experimental.noalias.scope.decl(metadata !12470), !dbg !12845
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11510)
  %exitcond.not.i84.1.i.i.i.i.i.i.i = icmp eq i64 %i.gx, %umax.i.i.i.i.i.i.i.i, !dbg !12846
  br i1 %exitcond.not.i84.1.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bv, !dbg !12846

bb.bv:                                            ; preds = %bb.bu
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11510)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11505)
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gx, !dbg !12847
  %i.gz = load i8, ptr %i.gy, align 1, !dbg !12847, !noalias !12471, !noundef !1364
    #dbg_value(i8 %i.gz, !3938, !DIExpression(), !11513)
  %i.ha = add i64 %i.go, 3, !dbg !12848           ; 3 uses
  store i64 %i.ha, ptr %i.eu, align 8, !dbg !12848, !alias.scope !12472, !noalias !12469
    #dbg_value(i8 %i.gz, !3923, !DIExpression(), !11514)
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gz, 108, !dbg !12849
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.bw, label %.loopexit277.i.i.i.i.i.i.i, !dbg !12849, !prof !3941

bb.bw:                                            ; preds = %bb.bv
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11505)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11506)
  call void @llvm.experimental.noalias.scope.decl(metadata !12473), !dbg !12845
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11510)
  %exitcond.not.i84.2.i.i.i.i.i.i.i = icmp eq i64 %i.ha, %umax.i.i.i.i.i.i.i.i, !dbg !12846
  br i1 %exitcond.not.i84.2.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bx, !dbg !12846

bb.bx:                                            ; preds = %bb.bw
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11510)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11505)
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ha, !dbg !12847
  %i.hc = load i8, ptr %i.hb, align 1, !dbg !12847, !noalias !12474, !noundef !1364
    #dbg_value(i8 %i.hc, !3938, !DIExpression(), !11513)
  %i.hd = add i64 %i.go, 4, !dbg !12848
  store i64 %i.hd, ptr %i.eu, align 8, !dbg !12848, !alias.scope !12475, !noalias !12469
    #dbg_value(i8 %i.hc, !3923, !DIExpression(), !11514)
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.hc, 108, !dbg !12849
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, label %.loopexit277.i.i.i.i.i.i.i, !dbg !12849, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bw, %bb.bu, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !12850, !noalias !12476
  store i64 5, ptr %i.m, align 8, !dbg !12850, !noalias !12476
  %i.he = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
          to label %.noexc162.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12851, !noalias !12207

.noexc162.i:                                      ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !12852, !noalias !12476
  br label %.loopexit237.i, !dbg !12853

.loopexit277.i.i.i.i.i.i.i:                       ; preds = %bb.bx, %bb.bv, %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !12854, !noalias !12476
  store i64 9, ptr %i.l, align 8, !dbg !12854, !noalias !12476
  %i.hf = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
          to label %.noexc163.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12855, !noalias !12207

.noexc163.i:                                      ; preds = %.loopexit277.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !12856, !noalias !12476
  br label %.loopexit237.i, !dbg !12857

bb.by:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.et, !3132, !DIExpression(), !11518)
  %i.hg = add i64 %i.go, 1, !dbg !12858           ; 4 uses
  store i64 %i.hg, ptr %i.eu, align 8, !dbg !12858, !alias.scope !12477, !noalias !12207
  call void @llvm.experimental.noalias.scope.decl(metadata !12478), !dbg !12859
    #dbg_value(ptr %i.es, !3913, !DIExpression(), !11524)
    #dbg_value(ptr %i.es, !3933, !DIExpression(), !11526)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11524)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11524)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11527)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11527)
  %umax.i87.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 %i.hg), !dbg !12860 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11527)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11528)
  call void @llvm.experimental.noalias.scope.decl(metadata !12479), !dbg !12861
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11532)
  %exitcond.not.i89.not.i.i.i.i.i.i.i = icmp ult i64 %i.hg, %i.gn, !dbg !12862
  br i1 %exitcond.not.i89.not.i.i.i.i.i.i.i, label %bb.bz, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i, !dbg !12862

bb.bz:                                            ; preds = %bb.by
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11532)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11527)
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hg, !dbg !12863
  %i.hi = load i8, ptr %i.hh, align 1, !dbg !12863, !noalias !12480, !noundef !1364
    #dbg_value(i8 %i.hi, !3938, !DIExpression(), !11535)
  %i.hj = add i64 %i.go, 2, !dbg !12864           ; 3 uses
  store i64 %i.hj, ptr %i.eu, align 8, !dbg !12864, !alias.scope !12481, !noalias !12482
    #dbg_value(i8 %i.hi, !3923, !DIExpression(), !11536)
  %.not.i90.i.i.i.i.i.i.i = icmp eq i8 %i.hi, 114, !dbg !12865
  br i1 %.not.i90.i.i.i.i.i.i.i, label %bb.ca, label %.loopexit270.i.i.i.i.i.i.i, !dbg !12865, !prof !3941

bb.ca:                                            ; preds = %bb.bz
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11527)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11528)
  call void @llvm.experimental.noalias.scope.decl(metadata !12483), !dbg !12861
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11532)
  %exitcond.not.i89.1.i.i.i.i.i.i.i = icmp eq i64 %i.hj, %umax.i87.i.i.i.i.i.i.i, !dbg !12862
  br i1 %exitcond.not.i89.1.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i, label %bb.cb, !dbg !12862

bb.cb:                                            ; preds = %bb.ca
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11532)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11527)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hj, !dbg !12863
  %i.hl = load i8, ptr %i.hk, align 1, !dbg !12863, !noalias !12484, !noundef !1364
    #dbg_value(i8 %i.hl, !3938, !DIExpression(), !11535)
  %i.hm = add i64 %i.go, 3, !dbg !12864           ; 3 uses
  store i64 %i.hm, ptr %i.eu, align 8, !dbg !12864, !alias.scope !12485, !noalias !12482
    #dbg_value(i8 %i.hl, !3923, !DIExpression(), !11536)
  %.not.i90.1.i.i.i.i.i.i.i = icmp eq i8 %i.hl, 117, !dbg !12865
  br i1 %.not.i90.1.i.i.i.i.i.i.i, label %bb.cc, label %.loopexit270.i.i.i.i.i.i.i, !dbg !12865, !prof !3941

bb.cc:                                            ; preds = %bb.cb
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11527)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11528)
  call void @llvm.experimental.noalias.scope.decl(metadata !12486), !dbg !12861
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11532)
  %exitcond.not.i89.2.i.i.i.i.i.i.i = icmp eq i64 %i.hm, %umax.i87.i.i.i.i.i.i.i, !dbg !12862
  br i1 %exitcond.not.i89.2.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i, label %bb.cd, !dbg !12862

bb.cd:                                            ; preds = %bb.cc
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11532)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11527)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hm, !dbg !12863
  %i.ho = load i8, ptr %i.hn, align 1, !dbg !12863, !noalias !12487, !noundef !1364
    #dbg_value(i8 %i.ho, !3938, !DIExpression(), !11535)
  %i.hp = add i64 %i.go, 4, !dbg !12864
  store i64 %i.hp, ptr %i.eu, align 8, !dbg !12864, !alias.scope !12488, !noalias !12482
    #dbg_value(i8 %i.ho, !3923, !DIExpression(), !11536)
  %.not.i90.2.i.i.i.i.i.i.i = icmp eq i8 %i.ho, 101, !dbg !12865
  br i1 %.not.i90.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, label %.loopexit270.i.i.i.i.i.i.i, !dbg !12865, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i: ; preds = %bb.cc, %bb.ca, %bb.by
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !12866, !noalias !12489
  store i64 5, ptr %i.k, align 8, !dbg !12866, !noalias !12489
  %i.hq = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %.noexc164.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12867, !noalias !12207

.noexc164.i:                                      ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !12868, !noalias !12489
  br label %.loopexit237.i, !dbg !12869

.loopexit270.i.i.i.i.i.i.i:                       ; preds = %bb.cd, %bb.cb, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !12870, !noalias !12489
  store i64 9, ptr %i.j, align 8, !dbg !12870, !noalias !12489
  %i.hr = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
          to label %.noexc165.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12871, !noalias !12207

.noexc165.i:                                      ; preds = %.loopexit270.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !12872, !noalias !12489
  br label %.loopexit237.i, !dbg !12873

bb.ce:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.et, !3132, !DIExpression(), !11540)
  %i.hs = add i64 %i.go, 1, !dbg !12874           ; 4 uses
  store i64 %i.hs, ptr %i.eu, align 8, !dbg !12874, !alias.scope !12490, !noalias !12207
  call void @llvm.experimental.noalias.scope.decl(metadata !12491), !dbg !12875
    #dbg_value(ptr %i.es, !3913, !DIExpression(), !11546)
    #dbg_value(ptr %i.es, !3933, !DIExpression(), !11548)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11546)
    #dbg_value(i64 4, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11546)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11549)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11549)
  %umax.i96.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 %i.hs), !dbg !12876 ; 3 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !12492), !dbg !12877
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11554)
  %exitcond.not.i98.not.i.i.i.i.i.i.i = icmp ult i64 %i.hs, %i.gn, !dbg !12878
  br i1 %exitcond.not.i98.not.i.i.i.i.i.i.i, label %bb.cf, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i, !dbg !12878

bb.cf:                                            ; preds = %bb.ce
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11554)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hs, !dbg !12879
  %i.hu = load i8, ptr %i.ht, align 1, !dbg !12879, !noalias !12493, !noundef !1364
    #dbg_value(i8 %i.hu, !3938, !DIExpression(), !11557)
  %i.hv = add i64 %i.go, 2, !dbg !12880           ; 3 uses
  store i64 %i.hv, ptr %i.eu, align 8, !dbg !12880, !alias.scope !12494, !noalias !12495
    #dbg_value(i8 %i.hu, !3923, !DIExpression(), !11558)
  %.not.i99.i.i.i.i.i.i.i = icmp eq i8 %i.hu, 97, !dbg !12881
  br i1 %.not.i99.i.i.i.i.i.i.i, label %bb.cg, label %.loopexit263.i.i.i.i.i.i.i, !dbg !12881, !prof !3941

bb.cg:                                            ; preds = %bb.cf
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !12496), !dbg !12877
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11554)
  %exitcond.not.i98.1.i.i.i.i.i.i.i = icmp eq i64 %i.hv, %umax.i96.i.i.i.i.i.i.i, !dbg !12878
  br i1 %exitcond.not.i98.1.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i, label %bb.ch, !dbg !12878

bb.ch:                                            ; preds = %bb.cg
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11554)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hv, !dbg !12879
  %i.hx = load i8, ptr %i.hw, align 1, !dbg !12879, !noalias !12497, !noundef !1364
    #dbg_value(i8 %i.hx, !3938, !DIExpression(), !11557)
  %i.hy = add i64 %i.go, 3, !dbg !12880           ; 3 uses
  store i64 %i.hy, ptr %i.eu, align 8, !dbg !12880, !alias.scope !12498, !noalias !12495
    #dbg_value(i8 %i.hx, !3923, !DIExpression(), !11558)
  %.not.i99.1.i.i.i.i.i.i.i = icmp eq i8 %i.hx, 108, !dbg !12881
  br i1 %.not.i99.1.i.i.i.i.i.i.i, label %bb.ci, label %.loopexit263.i.i.i.i.i.i.i, !dbg !12881, !prof !3941

bb.ci:                                            ; preds = %bb.ch
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !12499), !dbg !12877
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11554)
  %exitcond.not.i98.2.i.i.i.i.i.i.i = icmp eq i64 %i.hy, %umax.i96.i.i.i.i.i.i.i, !dbg !12878
  br i1 %exitcond.not.i98.2.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i, label %bb.cj, !dbg !12878

bb.cj:                                            ; preds = %bb.ci
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11554)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.hy, !dbg !12879
  %i.ia = load i8, ptr %i.hz, align 1, !dbg !12879, !noalias !12500, !noundef !1364
    #dbg_value(i8 %i.ia, !3938, !DIExpression(), !11557)
  %i.ib = add i64 %i.go, 4, !dbg !12880           ; 3 uses
  store i64 %i.ib, ptr %i.eu, align 8, !dbg !12880, !alias.scope !12501, !noalias !12495
    #dbg_value(i8 %i.ia, !3923, !DIExpression(), !11558)
  %.not.i99.2.i.i.i.i.i.i.i = icmp eq i8 %i.ia, 115, !dbg !12881
  br i1 %.not.i99.2.i.i.i.i.i.i.i, label %bb.ck, label %.loopexit263.i.i.i.i.i.i.i, !dbg !12881, !prof !3941

bb.ck:                                            ; preds = %bb.cj
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11550)
  call void @llvm.experimental.noalias.scope.decl(metadata !12502), !dbg !12877
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11554)
  %exitcond.not.i98.3.i.i.i.i.i.i.i = icmp eq i64 %i.ib, %umax.i96.i.i.i.i.i.i.i, !dbg !12878
  br i1 %exitcond.not.i98.3.i.i.i.i.i.i.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i, label %bb.cl, !dbg !12878

bb.cl:                                            ; preds = %bb.ck
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11554)
    #dbg_value(!DIArgList(ptr poison, i64 4), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11549)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.ib, !dbg !12879
  %i.id = load i8, ptr %i.ic, align 1, !dbg !12879, !noalias !12503, !noundef !1364
    #dbg_value(i8 %i.id, !3938, !DIExpression(), !11557)
  %i.ie = add i64 %i.go, 5, !dbg !12880
  store i64 %i.ie, ptr %i.eu, align 8, !dbg !12880, !alias.scope !12504, !noalias !12495
    #dbg_value(i8 %i.id, !3923, !DIExpression(), !11558)
  %.not.i99.3.i.i.i.i.i.i.i = icmp eq i8 %i.id, 101, !dbg !12881
  br i1 %.not.i99.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, label %.loopexit263.i.i.i.i.i.i.i, !dbg !12881, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i: ; preds = %bb.ck, %bb.ci, %bb.cg, %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !12882, !noalias !12505
  store i64 5, ptr %i.i, align 8, !dbg !12882, !noalias !12505
  %i.if = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
          to label %.noexc166.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12883, !noalias !12207

.noexc166.i:                                      ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !12884, !noalias !12505
  br label %.loopexit237.i, !dbg !12885

.loopexit263.i.i.i.i.i.i.i:                       ; preds = %bb.cl, %bb.cj, %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !12886, !noalias !12505
  store i64 9, ptr %i.h, align 8, !dbg !12886, !noalias !12505
  %i.ig = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc167.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12887, !noalias !12207

.noexc167.i:                                      ; preds = %.loopexit263.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !12888, !noalias !12505
  br label %.loopexit237.i, !dbg !12889

bb.cm:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11563)
  %i.ih = add i64 %i.go, 1, !dbg !12890
  store i64 %i.ih, ptr %i.eu, align 8, !dbg !12890, !alias.scope !12506, !noalias !12207
  %i.ii = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.es)
          to label %.noexc168.i unwind label %.loopexit.i54, !dbg !12891, !noalias !12207 ; 2 uses

.noexc168.i:                                      ; preds = %bb.cm
  %.not76.i.i.i.i.i.i.i = icmp eq ptr %i.ii, null, !dbg !12892
  br i1 %.not76.i.i.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, label %.loopexit237.i, !dbg !12893

bb.cn:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.et, !3132, !DIExpression(), !11567)
  %i.ij = add i64 %i.go, 1, !dbg !12894
  store i64 %i.ij, ptr %i.eu, align 8, !dbg !12894, !alias.scope !12508, !noalias !12207
  %i.ik = invoke noundef align 8 ptr @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %.noexc169.i unwind label %.loopexit.i54, !dbg !12895, !noalias !12207 ; 2 uses

.noexc169.i:                                      ; preds = %bb.cn
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ik, null, !dbg !12896
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, label %.loopexit237.i, !dbg !12893

bb.co:                                            ; preds = %bb.bp, %bb.bp
    #dbg_value(ptr %i.es, !12509, !DIExpression(), !11572)
    #dbg_value(ptr %i.es, !12518, !DIExpression(), !11577)
    #dbg_value(i1 %.sroa.039.0208.i.i.i.i.i.i.i, !12513, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11572)
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i.i.i, !12513, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11572)
    #dbg_value(i1 false, !12378, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11478)
    #dbg_value(i8 poison, !12378, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11478)
    #dbg_value(i1 %.sroa.039.0208.i.i.i.i.i.i.i, !12528, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11577)
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i.i.i, !12528, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11577)
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VechE14extend_trustedINtNtCskKLDkoKarTP_4core6option8IntoIterhEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.es, i1 noundef zeroext %.sroa.039.0208.i.i.i.i.i.i.i, i8 %.sroa.7.0209.i.i.i.i.i.i.i)
          to label %.noexc170.i unwind label %.loopexit.i54, !dbg !12897, !noalias !12207

.noexc170.i:                                      ; preds = %bb.co
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11579)
  %i.il = load i64, ptr %i.eu, align 8, !dbg !12898, !alias.scope !12533, !noalias !12207, !noundef !1364
  %i.im = add i64 %i.il, 1, !dbg !12898
  store i64 %i.im, ptr %i.eu, align 8, !dbg !12898, !alias.scope !12533, !noalias !12207
    #dbg_value(i8 %i.gq, !12398, !DIExpression(), !11582)
    #dbg_value(i8 0, !12397, !DIExpression(), !11582)
  br label %bb.cq, !dbg !12899

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i: ; preds = %.noexc172.i, %.noexc169.i, %.noexc168.i, %bb.cl, %bb.cd, %bb.bx
    #dbg_value(i1 false, !12378, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 8), !11478)
    #dbg_value(i8 poison, !12378, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11478)
  br i1 %.sroa.039.0208.i.i.i.i.i.i.i, label %bb.cq, label %bb.cp, !dbg !12900

bb.cp:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i
    #dbg_value(ptr %i.es, !12432, !DIExpression(), !11583)
    #dbg_value(ptr %i.es, !12427, !DIExpression(), !11584)
    #dbg_value(ptr %i.es, !12534, !DIExpression(), !11587)
  %i.in = load i64, ptr %i.ex, align 8, !dbg !12901, !alias.scope !12457, !noalias !12207, !noundef !1364 ; 2 uses
  %i.io = icmp eq i64 %i.in, 0, !dbg !12901
  br i1 %i.io, label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i.backedge, label %bb.ct, !dbg !12901

bb.cq:                                            ; preds = %bb.ct, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, %.noexc170.i
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.gq, %.noexc170.i ], [ %i.jb, %bb.ct ], [ %.sroa.7.0209.i.i.i.i.i.i.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i ], !dbg !12902 ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %.noexc170.i ], [ true, %bb.ct ], [ true, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i ], !dbg !12902
    #dbg_value(i8 poison, !12397, !DIExpression(), !11582)
    #dbg_value(i8 %.sroa.027.0.i.i.i.i.i.i.i, !12398, !DIExpression(), !11582)
  %i.ip = load i64, ptr %i.fz, align 8, !alias.scope !12539, !noalias !12540, !noundef !1364 ; 6 uses
  %.promoted.i104193.i.i.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !12541, !noalias !12542 ; 2 uses
  %i.iq = icmp ult i64 %.promoted.i104193.i.i.i.i.i.i.i, %i.ip, !dbg !12903
  br i1 %i.iq, label %.lr.ph.i106.lr.ph.i.i.i.i.i.i.i, label %.loopexit154.i.i.i.i.i.i.i, !dbg !12903

.lr.ph.i106.lr.ph.i.i.i.i.i.i.i:                  ; preds = %bb.cq
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.ex, align 8, !alias.scope !12457, !noalias !12207
  %i.ir = load ptr, ptr %i.et, align 8, !alias.scope !12539, !noalias !12540, !nonnull !1364, !noundef !1364 ; 3 uses
  %i.is = load i64, ptr %i.es, align 8, !range !4026, !alias.scope !12457, !noalias !12207
  %i.it = load ptr, ptr %i.gk, align 8, !alias.scope !12457, !noalias !12207, !nonnull !1364
  br label %.lr.ph.i106.i.i.i.i.i.i.i, !dbg !12903

bb.cr:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !12904, !noalias !12462
  store i64 10, ptr %i.t, align 8, !dbg !12904, !noalias !12462
  %i.iu = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.t)
          to label %.noexc171.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12905, !noalias !12207

.noexc171.i:                                      ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !12906, !noalias !12462
  br label %.loopexit237.i, !dbg !12907

bb.cs:                                            ; preds = %bb.br
  %i.iv = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.es)
          to label %.noexc172.i unwind label %.loopexit.i54, !dbg !12908, !noalias !12207 ; 2 uses

.noexc172.i:                                      ; preds = %bb.cs
  %.not80.i.i.i.i.i.i.i = icmp eq ptr %i.iv, null, !dbg !12909
  br i1 %.not80.i.i.i.i.i.i.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i.i.i.i.i.i.i, label %.loopexit237.i, !dbg !12893

bb.ct:                                            ; preds = %bb.cp
  %i.iw = add i64 %i.in, -1, !dbg !12910          ; 3 uses
  store i64 %i.iw, ptr %i.ex, align 8, !dbg !12910, !alias.scope !12457, !noalias !12207
  %i.ix = load i64, ptr %i.es, align 8, !dbg !12911, !range !4026, !alias.scope !12457, !noalias !12207, !noundef !1364
  %i.iy = icmp ult i64 %i.iw, %i.ix, !dbg !12912
    #dbg_value(i1 true, !12543, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11600)
  call void @llvm.assume(i1 %i.iy), !dbg !12913
  %i.iz = load ptr, ptr %i.gk, align 8, !dbg !12914, !alias.scope !12457, !noalias !12207, !nonnull !1364, !noundef !1364
    #dbg_value(ptr %i.iz, !12547, !DIExpression(), !11606)
    #dbg_value(i64 %i.iw, !12550, !DIExpression(), !11606)
end_hunk_1
begin_hunk_2_@_RINvXse_NtCsenfyI6F4F2A_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de10EnumAccess12variant_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs3JBf551F2Kj_4qlogsb_1__NtB39_10TimeFormatNtB1p_11Deserialize11deserialize7___FieldEECsi2C7WdEh0SA_3h3i:bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 1, !dbg !13914
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !13914, !range !3840, !noalias !13863, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !13904, !noalias !13863
    #dbg_value(i8 %i.ad, !13811, !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !13877)
  store i8 %i.ad, ptr %0, align 8, !dbg !13915
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13915
  store ptr %1, ptr %i.ae, align 8, !dbg !13915
  br label %bb.i, !dbg !13913

bb.i:                                             ; preds = %bb.h, %_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvCs3JBf551F2Kj_4qlogsb_1__NtB1q_10TimeFormatNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB3r_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit.thread
  ret void, !dbg !13916
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13917 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !13955, !DIExpression(), !13960)
    #dbg_declare(ptr poison, !13956, !DIExpression(), !13961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13962), !dbg !13983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13963), !dbg !13983
    #dbg_value(ptr %1, !13964, !DIExpression(), !13927)
    #dbg_declare(ptr poison, !13965, !DIExpression(), !13928)
    #dbg_value(ptr %1, !13971, !DIExpression(), !13931)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !13984
    #dbg_value(ptr %i.b, !3132, !DIExpression(), !13933)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !13985 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !13985, !alias.scope !13973, !noalias !13962, !noundef !1364
  %i.e = add i64 %i.d, 1, !dbg !13985
  store i64 %i.e, ptr %i.c, align 8, !dbg !13985, !alias.scope !13973, !noalias !13962
    #dbg_value(ptr %1, !13974, !DIExpression(), !13939)
    #dbg_value(ptr %1, !13977, !DIExpression(), !13942)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !13986
    #dbg_value(ptr poison, !13975, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13943)
    #dbg_value(i64 poison, !13975, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13943)
  store i64 0, ptr %i.f, align 8, !dbg !13987, !alias.scope !13963, !noalias !13962
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13988, !noalias !13979
  call void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !dbg !13989, !noalias !13962
  %i.g = load i64, ptr %i.a, align 8, !dbg !13988, !range !3544, !noalias !13979, !noundef !1364 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2, !dbg !13988
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13990
  %i.j = load ptr, ptr %i.i, align 8, !dbg !13990, !noalias !13979 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c, !dbg !13991

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.j, !13967, !DIExpression(), !13944)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13992
  store ptr %i.j, ptr %i.k, align 8, !dbg !13992, !alias.scope !13962, !noalias !13963
  store i8 -1, ptr %0, align 8, !dbg !13992, !alias.scope !13962, !noalias !13963
  br label %_RINvXsh_NtCsenfyI6F4F2A_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !13993

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !13994
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !13994, !noalias !13979 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1, !dbg !13991
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e, !dbg !13991

bb.d:                                             ; preds = %bb.c
    #dbg_value(ptr %i.j, !13969, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13945)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !13969, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13945)
  call void @_RINvXsj_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs9xKKqPmwf7Y_10serde_core2de7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i), !dbg !13995
  br label %_RINvXsh_NtCsenfyI6F4F2A_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !13996

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.j, !13968, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13946)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !13968, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13946)
    #dbg_declare(ptr poison, !4235, !DIExpression(), !13948)
    #dbg_value(ptr %i.j, !4240, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !13949)
    #dbg_value(i64 %.sroa.4.0.copyload.i, !4240, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !13949)
    #dbg_declare(ptr poison, !4239, !DIExpression(), !13948)
  store i8 13, ptr %0, align 8, !dbg !13997, !alias.scope !13981, !noalias !13982
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13997
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !dbg !13997, !alias.scope !13981, !noalias !13982
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13997
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !13997, !alias.scope !13981, !noalias !13982
  br label %_RINvXsh_NtCsenfyI6F4F2A_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !13998

_RINvXsh_NtCsenfyI6F4F2A_10serde_json2deINtB6_6MapKeyNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13993, !noalias !13979
  ret void, !dbg !13999
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14000 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !14221, !DIExpression(), !14226)
    #dbg_declare(ptr poison, !14222, !DIExpression(), !14227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14228), !dbg !14362
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14229), !dbg !14362
    #dbg_value(ptr %1, !14230, !DIExpression(), !14033)
    #dbg_value(ptr %1, !14260, !DIExpression(), !14036)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14039)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14041)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14043)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14045)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14047)
    #dbg_value(ptr %1, !14260, !DIExpression(), !14049)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14051)
    #dbg_value(ptr %1, !14263, !DIExpression(), !14053)
    #dbg_declare(ptr poison, !14231, !DIExpression(), !14054)
    #dbg_declare(ptr %i.q, !14236, !DIExpression(), !14055)
    #dbg_declare(ptr poison, !14251, !DIExpression(), !14056)
    #dbg_declare(ptr poison, !14254, !DIExpression(), !14057)
    #dbg_value(i8 1, !14261, !DIExpression(), !14036)
    #dbg_value(i8 0, !14261, !DIExpression(), !14049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14265), !dbg !14363
    #dbg_value(ptr %1, !3096, !DIExpression(), !14061)
    #dbg_value(ptr %1, !3115, !DIExpression(), !14063)
    #dbg_value(ptr %1, !3118, !DIExpression(), !14065)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !14266, !noalias !14267, !noundef !1364 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !14268, !noalias !14269 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u, !dbg !14364
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i, !dbg !14364

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !14266, !noalias !14267, !nonnull !1364, !noundef !1364 ; 11 uses
  br label %bb.b, !dbg !14364

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14270), !dbg !14365
    #dbg_value(ptr %i.w, !3128, !DIExpression(), !14071)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y, !dbg !14366
  %i.aa = load i8, ptr %i.z, align 1, !dbg !14366, !noalias !14271, !noundef !1364 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !14367

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14073)
  %i.ab = add i64 %i.y, 1, !dbg !14368            ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !dbg !14368, !alias.scope !14272, !noalias !14269
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14071)
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u, !dbg !14364
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b, !dbg !14364

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.b
    #dbg_value(i8 %i.aa, !14232, !DIExpression(), !14076)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !14369, !noalias !14273
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ], !dbg !14370

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !14371, !noalias !14273
  store i64 5, ptr %i.r, align 8, !dbg !14371, !noalias !14273
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !dbg !14372, !noalias !14228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !14373, !noalias !14273
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14374
  store ptr %i.ac, ptr %i.ad, align 8, !dbg !14374, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14375, !alias.scope !14228, !noalias !14229
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !14376

bb.d:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
  %i.ae = add i8 %i.aa, -48, !dbg !14377
  %or.cond8.i = icmp ult i8 %i.ae, 10, !dbg !14377
  br i1 %or.cond8.i, label %bb.bi, label %bb.bh, !dbg !14377, !prof !3878

bb.e:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %i.w, !3132, !DIExpression(), !14078)
  %i.af = add i64 %i.y, 1, !dbg !14378            ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !dbg !14378, !alias.scope !14275, !noalias !14228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14276), !dbg !14379
    #dbg_value(ptr %1, !3913, !DIExpression(), !14084)
    #dbg_value(ptr %1, !3933, !DIExpression(), !14086)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14084)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14084)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14087)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af), !dbg !14380 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14277), !dbg !14381
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14092)
  %exitcond.not.i57.not.i = icmp ult i64 %i.af, %i.u, !dbg !14382
  br i1 %exitcond.not.i57.not.i, label %bb.f, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, !dbg !14382

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14092)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14087)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af, !dbg !14383
  %i.ah = load i8, ptr %i.ag, align 1, !dbg !14383, !noalias !14278, !noundef !1364
    #dbg_value(i8 %i.ah, !3938, !DIExpression(), !14095)
  %i.ai = add i64 %i.y, 2, !dbg !14384            ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !dbg !14384, !alias.scope !14279, !noalias !14280
    #dbg_value(i8 %i.ah, !3923, !DIExpression(), !14096)
  %.not.i.i = icmp eq i8 %i.ah, 117, !dbg !14385
  br i1 %.not.i.i, label %bb.g, label %bb.k, !dbg !14385, !prof !3941

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14281), !dbg !14381
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14092)
  %exitcond.not.i57.1.i = icmp eq i64 %i.ai, %umax.i.i, !dbg !14382
  br i1 %exitcond.not.i57.1.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.h, !dbg !14382

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14092)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14087)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai, !dbg !14383
  %i.ak = load i8, ptr %i.aj, align 1, !dbg !14383, !noalias !14282, !noundef !1364
    #dbg_value(i8 %i.ak, !3938, !DIExpression(), !14095)
  %i.al = add i64 %i.y, 3, !dbg !14384            ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !dbg !14384, !alias.scope !14283, !noalias !14280
    #dbg_value(i8 %i.ak, !3923, !DIExpression(), !14096)
  %.not.i.1.i = icmp eq i8 %i.ak, 108, !dbg !14385
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !dbg !14385, !prof !3941

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14088)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14284), !dbg !14381
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14092)
  %exitcond.not.i57.2.i = icmp eq i64 %i.al, %umax.i.i, !dbg !14382
  br i1 %exitcond.not.i57.2.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.j, !dbg !14382

bb.j:                                             ; preds = %bb.i
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14092)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14087)
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al, !dbg !14383
  %i.an = load i8, ptr %i.am, align 1, !dbg !14383, !noalias !14285, !noundef !1364
    #dbg_value(i8 %i.an, !3938, !DIExpression(), !14095)
  %i.ao = add i64 %i.y, 4, !dbg !14384
  store i64 %i.ao, ptr %i.s, align 8, !dbg !14384, !alias.scope !14286, !noalias !14280
    #dbg_value(i8 %i.an, !3923, !DIExpression(), !14096)
  %.not.i.2.i = icmp eq i8 %i.an, 108, !dbg !14385
  br i1 %.not.i.2.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i, label %bb.k, !dbg !14385, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14386, !noalias !14287
  store i64 5, ptr %i.f, align 8, !dbg !14386, !noalias !14287
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !14387, !noalias !14288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !14388, !noalias !14287
  br label %bb.af, !dbg !14389

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !14390, !noalias !14287
  store i64 9, ptr %i.e, align 8, !dbg !14390, !noalias !14287
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !14391, !noalias !14288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !14392, !noalias !14287
  br label %bb.af, !dbg !14393

bb.l:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %i.w, !3132, !DIExpression(), !14100)
  %i.ar = add i64 %i.y, 1, !dbg !14394            ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !dbg !14394, !alias.scope !14289, !noalias !14228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14290), !dbg !14395
    #dbg_value(ptr %1, !3913, !DIExpression(), !14106)
    #dbg_value(ptr %1, !3933, !DIExpression(), !14108)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14106)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14106)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14109)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14109)
  %umax.i60.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar), !dbg !14396 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14109)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14291), !dbg !14397
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14114)
  %exitcond.not.i62.not.i = icmp ult i64 %i.ar, %i.u, !dbg !14398
  br i1 %exitcond.not.i62.not.i, label %bb.m, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66.i, !dbg !14398

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14114)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14109)
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar, !dbg !14399
  %i.at = load i8, ptr %i.as, align 1, !dbg !14399, !noalias !14292, !noundef !1364
    #dbg_value(i8 %i.at, !3938, !DIExpression(), !14117)
  %i.au = add i64 %i.y, 2, !dbg !14400            ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !dbg !14400, !alias.scope !14293, !noalias !14294
    #dbg_value(i8 %i.at, !3923, !DIExpression(), !14118)
  %.not.i63.i = icmp eq i8 %i.at, 114, !dbg !14401
  br i1 %.not.i63.i, label %bb.n, label %bb.r, !dbg !14401, !prof !3941

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14109)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14295), !dbg !14397
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14114)
  %exitcond.not.i62.1.i = icmp eq i64 %i.au, %umax.i60.i, !dbg !14398
  br i1 %exitcond.not.i62.1.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66.i, label %bb.o, !dbg !14398

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14114)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14109)
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au, !dbg !14399
  %i.aw = load i8, ptr %i.av, align 1, !dbg !14399, !noalias !14296, !noundef !1364
    #dbg_value(i8 %i.aw, !3938, !DIExpression(), !14117)
  %i.ax = add i64 %i.y, 3, !dbg !14400            ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !dbg !14400, !alias.scope !14297, !noalias !14294
    #dbg_value(i8 %i.aw, !3923, !DIExpression(), !14118)
  %.not.i63.1.i = icmp eq i8 %i.aw, 117, !dbg !14401
  br i1 %.not.i63.1.i, label %bb.p, label %bb.r, !dbg !14401, !prof !3941

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14109)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14298), !dbg !14397
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14114)
  %exitcond.not.i62.2.i = icmp eq i64 %i.ax, %umax.i60.i, !dbg !14398
  br i1 %exitcond.not.i62.2.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66.i, label %bb.q, !dbg !14398

bb.q:                                             ; preds = %bb.p
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14114)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14109)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax, !dbg !14399
  %i.az = load i8, ptr %i.ay, align 1, !dbg !14399, !noalias !14299, !noundef !1364
    #dbg_value(i8 %i.az, !3938, !DIExpression(), !14117)
  %i.ba = add i64 %i.y, 4, !dbg !14400
  store i64 %i.ba, ptr %i.s, align 8, !dbg !14400, !alias.scope !14300, !noalias !14294
    #dbg_value(i8 %i.az, !3923, !DIExpression(), !14118)
  %.not.i63.2.i = icmp eq i8 %i.az, 101, !dbg !14401
  br i1 %.not.i63.2.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit67.i, label %bb.r, !dbg !14401, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14402, !noalias !14301
  store i64 5, ptr %i.d, align 8, !dbg !14402, !noalias !14301
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !14403, !noalias !14302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14404, !noalias !14301
  br label %bb.ai, !dbg !14405

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14406, !noalias !14301
  store i64 9, ptr %i.c, align 8, !dbg !14406, !noalias !14301
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !14407, !noalias !14302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14408, !noalias !14301
  br label %bb.ai, !dbg !14409

bb.s:                                             ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %i.w, !3132, !DIExpression(), !14122)
  %i.bd = add i64 %i.y, 1, !dbg !14410            ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !dbg !14410, !alias.scope !14303, !noalias !14228
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14304), !dbg !14411
    #dbg_value(ptr %1, !3913, !DIExpression(), !14128)
    #dbg_value(ptr %1, !3933, !DIExpression(), !14130)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14128)
    #dbg_value(i64 4, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14128)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14131)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14131)
  %umax.i69.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd), !dbg !14412 ; 3 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14305), !dbg !14413
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14136)
  %exitcond.not.i71.not.i = icmp ult i64 %i.bd, %i.u, !dbg !14414
  br i1 %exitcond.not.i71.not.i, label %bb.t, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i, !dbg !14414

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14136)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd, !dbg !14415
  %i.bf = load i8, ptr %i.be, align 1, !dbg !14415, !noalias !14306, !noundef !1364
    #dbg_value(i8 %i.bf, !3938, !DIExpression(), !14139)
  %i.bg = add i64 %i.y, 2, !dbg !14416            ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !dbg !14416, !alias.scope !14307, !noalias !14308
    #dbg_value(i8 %i.bf, !3923, !DIExpression(), !14140)
  %.not.i72.i = icmp eq i8 %i.bf, 97, !dbg !14417
  br i1 %.not.i72.i, label %bb.u, label %bb.aa, !dbg !14417, !prof !3941

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14309), !dbg !14413
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14136)
  %exitcond.not.i71.1.i = icmp eq i64 %i.bg, %umax.i69.i, !dbg !14414
  br i1 %exitcond.not.i71.1.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i, label %bb.v, !dbg !14414

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14136)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg, !dbg !14415
  %i.bi = load i8, ptr %i.bh, align 1, !dbg !14415, !noalias !14310, !noundef !1364
    #dbg_value(i8 %i.bi, !3938, !DIExpression(), !14139)
  %i.bj = add i64 %i.y, 3, !dbg !14416            ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !dbg !14416, !alias.scope !14311, !noalias !14308
    #dbg_value(i8 %i.bi, !3923, !DIExpression(), !14140)
  %.not.i72.1.i = icmp eq i8 %i.bi, 108, !dbg !14417
  br i1 %.not.i72.1.i, label %bb.w, label %bb.aa, !dbg !14417, !prof !3941

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14312), !dbg !14413
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14136)
  %exitcond.not.i71.2.i = icmp eq i64 %i.bj, %umax.i69.i, !dbg !14414
  br i1 %exitcond.not.i71.2.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i, label %bb.x, !dbg !14414

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14136)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj, !dbg !14415
  %i.bl = load i8, ptr %i.bk, align 1, !dbg !14415, !noalias !14313, !noundef !1364
    #dbg_value(i8 %i.bl, !3938, !DIExpression(), !14139)
  %i.bm = add i64 %i.y, 4, !dbg !14416            ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !dbg !14416, !alias.scope !14314, !noalias !14308
    #dbg_value(i8 %i.bl, !3923, !DIExpression(), !14140)
  %.not.i72.2.i = icmp eq i8 %i.bl, 115, !dbg !14417
  br i1 %.not.i72.2.i, label %bb.y, label %bb.aa, !dbg !14417, !prof !3941

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
    #dbg_value(ptr poison, !3920, !DIExpression(), !14132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14315), !dbg !14413
    #dbg_value(ptr %1, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14136)
  %exitcond.not.i71.3.i = icmp eq i64 %i.bm, %umax.i69.i, !dbg !14414
  br i1 %exitcond.not.i71.3.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i, label %bb.z, !dbg !14414

bb.z:                                             ; preds = %bb.y
    #dbg_value(ptr %i.w, !3937, !DIExpression(), !14136)
    #dbg_value(!DIArgList(ptr poison, i64 4), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14131)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm, !dbg !14415
  %i.bo = load i8, ptr %i.bn, align 1, !dbg !14415, !noalias !14316, !noundef !1364
    #dbg_value(i8 %i.bo, !3938, !DIExpression(), !14139)
  %i.bp = add i64 %i.y, 5, !dbg !14416
  store i64 %i.bp, ptr %i.s, align 8, !dbg !14416, !alias.scope !14317, !noalias !14308
    #dbg_value(i8 %i.bo, !3923, !DIExpression(), !14140)
  %.not.i72.3.i = icmp eq i8 %i.bo, 101, !dbg !14417
  br i1 %.not.i72.3.i, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit76.i, label %bb.aa, !dbg !14417, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14418, !noalias !14318
  store i64 5, ptr %i.b, align 8, !dbg !14418, !noalias !14318
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14419, !noalias !14319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14420, !noalias !14318
  br label %bb.aj, !dbg !14421

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14422, !noalias !14318
  store i64 9, ptr %i.a, align 8, !dbg !14422, !noalias !14318
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14423, !noalias !14319
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14424, !noalias !14318
  br label %bb.aj, !dbg !14425

bb.ab:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14145)
  %i.bs = add i64 %i.y, 1, !dbg !14426
  store i64 %i.bs, ptr %i.s, align 8, !dbg !14426, !alias.scope !14320, !noalias !14228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !14427, !noalias !14273
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !dbg !14428, !noalias !14228
  %i.bt = load i64, ptr %i.p, align 8, !dbg !14427, !range !3877, !noalias !14273, !noundef !1364 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1, !dbg !14427
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !14429 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup, !dbg !14430

bb.ac:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %i.w, !3132, !DIExpression(), !14149)
  %i.bw = add i64 %i.y, 1, !dbg !14431
  store i64 %i.bw, ptr %i.s, align 8, !dbg !14431, !alias.scope !14322, !noalias !14228
    #dbg_value(ptr %1, !14323, !DIExpression(), !14155)
    #dbg_value(ptr %1, !14326, !DIExpression(), !14158)
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !14432
    #dbg_value(ptr poison, !14324, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14159)
    #dbg_value(i64 poison, !14324, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14159)
  store i64 0, ptr %i.bx, align 8, !dbg !14433, !alias.scope !14229, !noalias !14228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !14434, !noalias !14273
  call void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !dbg !14435, !noalias !14228
  %i.by = load i64, ptr %i.n, align 8, !dbg !14434, !range !3544, !noalias !14273, !noundef !1364 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2, !dbg !14434
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !14429
  %i.cb = load ptr, ptr %i.ca, align 8, !dbg !14429, !noalias !14273 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am, !dbg !14430

bb.ad:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !14436 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !dbg !14436, !alias.scope !14229, !noalias !14228, !noundef !1364
  %i.ce = add i8 %i.cd, -1, !dbg !14436           ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !dbg !14436, !alias.scope !14229, !noalias !14228
  %i.cf = icmp eq i8 %i.ce, 0, !dbg !14437
  br i1 %i.cf, label %bb.aq, label %bb.ar, !dbg !14437, !prof !3954

bb.ae:                                            ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !14436 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !dbg !14436, !alias.scope !14229, !noalias !14228, !noundef !1364
  %i.ci = add i8 %i.ch, -1, !dbg !14436           ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !dbg !14436, !alias.scope !14229, !noalias !14228
  %i.cj = icmp eq i8 %i.ci, 0, !dbg !14437
  br i1 %i.cj, label %bb.az, label %bb.ba, !dbg !14437, !prof !3954

bb.af:                                            ; preds = %bb.k, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
    #dbg_value(ptr %.sroa.0.1.i.ph.i, !14238, !DIExpression(), !14160)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14438
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !dbg !14438, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14438, !alias.scope !14228, !noalias !14229
  br label %bb.ah, !dbg !14439

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.j
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14087)
    #dbg_declare(ptr poison, !14329, !DIExpression(), !14163)
    #dbg_declare(ptr poison, !14332, !DIExpression(), !14163)
  store i8 18, ptr %i.q, align 8, !dbg !14440, !alias.scope !14334, !noalias !14273
  br label %.thread.i, !dbg !14441

bb.ag:                                            ; preds = %.thread107.i, %.thread104.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !dbg !14442, !noalias !14273
  %i.cl = icmp eq i8 %.pr.i.pr, -1, !dbg !14442
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !dbg !14443, !prof !14335

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !dbg !14444, !noalias !14273
  br label %bb.bj, !dbg !14443

bb.ah:                                            ; preds = %bb.bk, %bb.az, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14445, !noalias !14273
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !14439

bb.ai:                                            ; preds = %bb.r, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66.i
  %.sroa.0.1.i65.ph.i = phi ptr [ %i.bb, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i66.i ], [ %i.bc, %bb.r ]
    #dbg_value(ptr %.sroa.0.1.i65.ph.i, !14240, !DIExpression(), !14166)
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14446
  store ptr %.sroa.0.1.i65.ph.i, ptr %i.cm, align 8, !dbg !14446, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14446, !alias.scope !14228, !noalias !14229
  br label %bb.ah, !dbg !14439

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit67.i: ; preds = %bb.q
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14109)
    #dbg_declare(ptr poison, !14336, !DIExpression(), !14169)
    #dbg_value(i1 true, !14340, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14170)
    #dbg_declare(ptr poison, !14339, !DIExpression(), !14169)
  store i8 0, ptr %i.q, align 8, !dbg !14447, !alias.scope !14342, !noalias !14273
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !14447
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !dbg !14447, !alias.scope !14342, !noalias !14273
  br label %.thread.i, !dbg !14448

bb.aj:                                            ; preds = %bb.aa, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i
  %.sroa.0.1.i74.ph.i = phi ptr [ %i.bq, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i75.i ], [ %i.br, %bb.aa ]
    #dbg_value(ptr %.sroa.0.1.i74.ph.i, !14242, !DIExpression(), !14173)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14449
  store ptr %.sroa.0.1.i74.ph.i, ptr %i.cn, align 8, !dbg !14449, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14449, !alias.scope !14228, !noalias !14229
  br label %bb.ah, !dbg !14439

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit76.i: ; preds = %bb.z
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14131)
    #dbg_declare(ptr poison, !14336, !DIExpression(), !14175)
    #dbg_value(i1 false, !14340, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14176)
    #dbg_declare(ptr poison, !14339, !DIExpression(), !14175)
  store i8 0, ptr %i.q, align 8, !dbg !14450, !alias.scope !14343, !noalias !14273
  %.sroa.4.0..sroa_idx.i77.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !14450
end_hunk_2
begin_hunk_3_@_RINvYQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB9_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !14464, !noalias !14273
  store i64 24, ptr %i.j, align 8, !dbg !14464, !noalias !14273
  %i.dh = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !dbg !14465, !noalias !14228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !14466, !noalias !14273
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14467
  store ptr %i.dh, ptr %i.di, align 8, !dbg !14467, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14467, !alias.scope !14228, !noalias !14229
  br label %bb.ah, !dbg !14439

bb.ba:                                            ; preds = %bb.ae
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14205)
  %i.dj = add i64 %i.y, 1, !dbg !14481
  store i64 %i.dj, ptr %i.s, align 8, !dbg !14481, !alias.scope !14359, !noalias !14228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !14482, !noalias !14273
  call void @_RINvXsj_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs9xKKqPmwf7Y_10serde_core2de7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB24_4read9SliceReadEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !dbg !14483, !noalias !14228
  %i.dk = load i8, ptr %i.cg, align 8, !dbg !14484, !alias.scope !14229, !noalias !14228, !noundef !1364
  %i.dl = add i8 %i.dk, 1, !dbg !14484
  store i8 %i.dl, ptr %i.cg, align 8, !dbg !14484, !alias.scope !14229, !noalias !14228
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !14485, !noalias !14273
  %i.dm = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.bc unwind label %bb.bb, !dbg !14486, !noalias !14228 ; 5 uses

bb.bb:                                            ; preds = %bb.ba
  %i.dn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #16
          to label %bb.bm unwind label %bb.ax, !dbg !14487, !noalias !14228

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !14485, !noalias !14273
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !14485
  store ptr %i.dm, ptr %i.do, align 8, !dbg !14485, !noalias !14273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !14487, !noalias !14273
  %i.dp = load i8, ptr %i.i, align 8, !dbg !14485, !range !3432, !noalias !14273, !noundef !1364
  %i.dq = icmp eq i8 %i.dp, -1, !dbg !14485
  br i1 %i.dq, label %bb.be, label %bb.bd, !dbg !14488

bb.bd:                                            ; preds = %bb.bc
  %.not.i = icmp eq ptr %i.dm, null, !dbg !14485
  br i1 %.not.i, label %.thread133.i, label %bb.bf, !dbg !14488

.thread133.i:                                     ; preds = %bb.bd
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !14489, !noalias !14273
  br label %.thread107.i, !dbg !14490

bb.be:                                            ; preds = %bb.bc
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !14491
  %i.ds = load ptr, ptr %i.dr, align 8, !dbg !14491, !noalias !14273, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.ds, !14256, !DIExpression(), !14208)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !14492
  store ptr %i.ds, ptr %i.dt, align 8, !dbg !14492, !noalias !14273
  store i8 -1, ptr %i.q, align 8, !dbg !14492, !noalias !14273
  %.not110.i = icmp eq ptr %i.dm, null, !dbg !14490
  br i1 %.not110.i, label %.thread107.i, label %bb.bg, !dbg !14490

bb.bf:                                            ; preds = %bb.bd
    #dbg_value(ptr %i.dm, !14256, !DIExpression(), !14208)
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !14492
  store ptr %i.dm, ptr %i.du, align 8, !dbg !14492, !noalias !14273
  store i8 -1, ptr %i.q, align 8, !dbg !14492, !noalias !14273
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i), !dbg !14490, !noalias !14228
  br label %.thread107.i, !dbg !14490

.thread107.i:                                     ; preds = %bb.bg, %bb.bf, %bb.be, %.thread133.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !14490, !noalias !14273
  br label %bb.ag, !dbg !14490

bb.bg:                                            ; preds = %bb.be
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i(ptr nonnull %i.dm), !dbg !14490, !noalias !14228
  br label %.thread107.i, !dbg !14490

bb.bh:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !14493, !noalias !14273
  store i64 10, ptr %i.g, align 8, !dbg !14493, !noalias !14273
  %i.dv = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !dbg !14494, !noalias !14228
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !14495, !noalias !14273
  br label %bb.bj, !dbg !14443

bb.bi:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !14496, !noalias !14273
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext true), !dbg !14497, !noalias !14228
  %i.dw = load i64, ptr %i.o, align 8, !dbg !14496, !range !3877, !noalias !14273, !noundef !1364 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1, !dbg !14496
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !14429 ; 2 uses
  br i1 %i.dx, label %bb.bk, label %switch.lookup31, !dbg !14430

bb.bj:                                            ; preds = %bb.bh, %._crit_edge.i
  %i.dz = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.dv, %bb.bh ], !dbg !14444
    #dbg_value(ptr %i.dz, !14258, !DIExpression(), !14209)
    #dbg_value(ptr %1, !3881, !DIExpression(), !14211)
    #dbg_value(ptr %i.dz, !3885, !DIExpression(), !14211)
  %i.ea = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsi2C7WdEh0SA_3h3i(ptr noalias noundef nonnull align 8 %i.dz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !14498, !noalias !14228
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14499
  store ptr %i.ea, ptr %i.eb, align 8, !dbg !14499, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14499, !alias.scope !14228, !noalias !14229
  br label %bb.bl, !dbg !14500

bb.bk:                                            ; preds = %bb.bi
  %i.ec = load ptr, ptr %i.dy, align 8, !dbg !14452, !noalias !14273, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.ec, !14246, !DIExpression(), !14212)
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14501
  store ptr %i.ec, ptr %i.ed, align 8, !dbg !14501, !alias.scope !14228, !noalias !14229
  store i8 -1, ptr %0, align 8, !dbg !14501, !alias.scope !14228, !noalias !14229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14502, !noalias !14273
  br label %bb.ah, !dbg !14439

switch.lookup31:                                  ; preds = %bb.bi
    #dbg_value(i64 %i.dw, !14344, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14214)
  %.sroa.285.0.copyload.i = load i64, ptr %i.dy, align 8, !dbg !14455, !noalias !14273
    #dbg_value(i64 %.sroa.285.0.copyload.i, !14344, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14214)
    #dbg_declare(ptr poison, !14349, !DIExpression(), !14215)
  %.sroa.41.0..sroa_idx.i.i78.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !14503
  %switch.cast32 = trunc i64 %i.dw to i24, !dbg !14504
  %switch.shiftamt33 = shl nuw nsw i24 %switch.cast32, 3, !dbg !14504
  %switch.downshift34 = lshr i24 525322, %switch.shiftamt33, !dbg !14504
  %switch.masked35 = trunc i24 %switch.downshift34 to i8, !dbg !14504
  store i8 %switch.masked35, ptr %i.q, align 8, !dbg !14503, !alias.scope !14360, !noalias !14361
  store i64 %.sroa.285.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i78.i, align 8, !dbg !14503, !alias.scope !14360, !noalias !14361
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !14502, !noalias !14273
  br label %.thread.i, !dbg !14502

.thread.i:                                        ; preds = %switch.lookup, %switch.lookup31, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit76.i, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit67.i, %bb.ag, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !14505, !noalias !14229
  br label %bb.bl, !dbg !14506

bb.bl:                                            ; preds = %.thread.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !14445, !noalias !14273
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !14507

bb.bm:                                            ; preds = %bb.bb, %bb.as
  %.pn.i = phi { ptr, i32 } [ %i.dn, %bb.bb ], [ %i.cy, %bb.as ]
  resume { ptr, i32 } %.pn.i, !dbg !14480

_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit: ; preds = %.loopexit.i, %bb.ah, %bb.bl
  ret void, !dbg !14508
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !14510 {
bb.a:
    #dbg_value(ptr %0, !14512, !DIExpression(), !14516)
    #dbg_declare(ptr %1, !14513, !DIExpression(), !14517)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !14519
  %i.b = invoke { i64, i64 } @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d, !dbg !14520 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0, !dbg !14519
  %i.d = extractvalue { i64, i64 } %i.b, 1, !dbg !14519
    #dbg_value(i64 %i.c, !14514, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14518)
    #dbg_value(i64 %i.d, !14514, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14518)
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d), !dbg !14521
  ret ptr %i.e, !dbg !14522

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f, !dbg !14523

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error9ErrorCodeECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %bb.c unwind label %bb.e, !dbg !14524

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !14523
  unreachable, !dbg !14523
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 !dbg !805 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr poison, !14550, !DIExpression(), !14567)
    #dbg_value(ptr %0, !3913, !DIExpression(), !14568)
    #dbg_value(ptr %0, !3933, !DIExpression(), !14570)
    #dbg_value(ptr %1, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14568)
    #dbg_value(ptr %1, !14572, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14578)
    #dbg_value(ptr %1, !14579, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14582)
    #dbg_value(ptr %1, !14583, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14590)
    #dbg_value(i64 %2, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14568)
    #dbg_value(i64 %2, !14572, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14578)
    #dbg_value(i64 %2, !14579, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14582)
    #dbg_value(i64 %2, !14583, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14590)
    #dbg_value(i64 1, !14591, !DIExpression(), !14598)
    #dbg_value(i64 %2, !14585, !DIExpression(), !14599)
    #dbg_value(i64 %2, !14600, !DIExpression(), !14606)
    #dbg_value(ptr %1, !14586, !DIExpression(), !14607)
    #dbg_value(ptr %1, !14603, !DIExpression(), !14606)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2, !dbg !14626
    #dbg_value(ptr %1, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14608)
    #dbg_value(ptr %i.c, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !14608)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !1364
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.promoted), !dbg !14627
    #dbg_value(ptr %1, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14608)
    #dbg_value(ptr undef, !14550, !DIExpression(), !14567)
    #dbg_value(ptr %1, !14561, !DIExpression(), !14609)
    #dbg_value(ptr %1, !14595, !DIExpression(), !14598)
    #dbg_value(ptr %i.c, !14562, !DIExpression(), !14610)
    #dbg_value(ptr poison, !14612, !DIExpression(), !14619)
    #dbg_value(ptr poison, !14616, !DIExpression(), !14620)
  %i.i = icmp samesign eq i64 %2, 0, !dbg !14628
  br i1 %i.i, label %.loopexit, label %.lr.ph, !dbg !14618

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.024, i64 1, !dbg !14629 ; 2 uses
    #dbg_value(ptr %i.j, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14608)
    #dbg_value(ptr %i.j, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14608)
    #dbg_value(ptr undef, !14550, !DIExpression(), !14567)
    #dbg_value(ptr %i.j, !14561, !DIExpression(), !14609)
    #dbg_value(ptr %i.j, !14595, !DIExpression(), !14598)
    #dbg_value(ptr %i.c, !14562, !DIExpression(), !14610)
    #dbg_value(ptr poison, !14612, !DIExpression(), !14619)
    #dbg_value(ptr poison, !14616, !DIExpression(), !14620)
  %i.k = icmp eq ptr %i.j, %i.c, !dbg !14628
  br i1 %i.k, label %.loopexit, label %.lr.ph, !dbg !14618

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.024 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
    #dbg_value(ptr %.sroa.01.024, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !14608)
    #dbg_value(ptr %.sroa.01.024, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14608)
    #dbg_value(ptr %.sroa.01.024, !3920, !DIExpression(), !14621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14622), !dbg !14630
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14545)
  %exitcond.not = icmp eq i64 %i.l, %umax, !dbg !14631
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, label %bb.c, !dbg !14631

bb.c:                                             ; preds = %.lr.ph
    #dbg_value(ptr %i.g, !3937, !DIExpression(), !14545)
    #dbg_value(ptr %.sroa.01.024, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !14608)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l, !dbg !14632
  %i.n = load i8, ptr %i.m, align 1, !dbg !14632, !noalias !14623, !noundef !1364
    #dbg_value(i8 %i.n, !3938, !DIExpression(), !14547)
  %i.o = add i64 %i.l, 1, !dbg !14633             ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !dbg !14633, !alias.scope !14622, !noalias !14624
    #dbg_value(i8 %i.n, !3923, !DIExpression(), !14625)
  %i.p = load i8, ptr %.sroa.01.024, align 1, !dbg !14634, !noundef !1364
  %.not = icmp eq i8 %i.n, %i.p, !dbg !14635
  br i1 %.not, label %bb.b, label %bb.d, !dbg !14635, !prof !3841

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14636
  store i64 5, ptr %i.b, align 8, !dbg !14636
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !14637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14638
  br label %.loopexit, !dbg !14639

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14640
  store i64 9, ptr %i.a, align 8, !dbg !14640
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !14641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14642
  br label %.loopexit, !dbg !14643

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ], !dbg !14644
  ret ptr %.sroa.0.1, !dbg !14645
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE12parse_numberCsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 !dbg !14653 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
    #dbg_value(ptr %1, !14745, !DIExpression(), !14756)
    #dbg_value(ptr %1, !14757, !DIExpression(), !14762)
    #dbg_value(ptr %1, !14763, !DIExpression(), !14766)
    #dbg_value(i1 %2, !14746, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14756)
    #dbg_value(i64 %3, !14747, !DIExpression(), !14756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14767), !dbg !14826
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14661)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !14827 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !dbg !14827, !alias.scope !14767, !noalias !14768, !noundef !1364 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !14828
  %i.j = load i64, ptr %i.i, align 8, !dbg !14828, !alias.scope !14767, !noalias !14768, !noundef !1364 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j, !dbg !14827
  br i1 %i.k, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread, !dbg !14827

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !14829
    #dbg_value(ptr %i.l, !3128, !DIExpression(), !14661)
  %i.m = load ptr, ptr %i.l, align 8, !dbg !14830, !alias.scope !14767, !noalias !14768, !nonnull !1364, !noundef !1364 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h, !dbg !14830
  %i.o = load i8, ptr %i.n, align 1, !dbg !14830, !noalias !14769, !noundef !1364
  switch i8 %i.o, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ], !dbg !14831

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v, !dbg !14832

bb.b:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !14833
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14771), !dbg !14834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14772), !dbg !14834
    #dbg_value(i64 %3, !14773, !DIExpression(), !14680)
    #dbg_value(ptr %1, !14775, !DIExpression(), !14680)
    #dbg_value(ptr %1, !14791, !DIExpression(), !14683)
    #dbg_value(ptr %1, !14793, !DIExpression(), !14690)
    #dbg_value(ptr %1, !14799, !DIExpression(), !14693)
    #dbg_value(ptr %1, !14791, !DIExpression(), !14695)
    #dbg_value(ptr %1, !14799, !DIExpression(), !14697)
    #dbg_value(ptr %1, !14793, !DIExpression(), !14699)
    #dbg_value(ptr %1, !14799, !DIExpression(), !14701)
    #dbg_value(i1 %2, !14776, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14680)
    #dbg_value(i32 0, !14777, !DIExpression(), !14680)
    #dbg_value(i64 -1, !14783, !DIExpression(), !14702)
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14704)
  %i.p = add nuw i64 %i.h, 1, !dbg !14835         ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !dbg !14835, !alias.scope !14802, !noalias !14771
    #dbg_value(i32 0, !14778, !DIExpression(), !14707)
  %i.q = icmp ult i64 %i.p, %i.j, !dbg !14836
  br i1 %i.q, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i, !dbg !14836

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14704)
  %i.r = trunc i64 %i.h to i32, !dbg !14836
  %i.s = add i32 %i.r, 1, !dbg !14836
  %i.t = trunc i64 %i.j to i32, !dbg !14836
  %i.u = sub i32 %i.s, %i.t, !dbg !14836          ; 2 uses
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i, !dbg !14836

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.078.i = phi i64 [ %3, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.077.i = phi i32 [ 0, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
    #dbg_value(i64 %.sroa.0.078.i, !14773, !DIExpression(), !14680)
    #dbg_value(i32 %.sroa.07.077.i, !14778, !DIExpression(), !14707)
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v, !dbg !14837
  %i.x = load i8, ptr %i.w, align 1, !dbg !14837, !noalias !14803, !noundef !1364 ; 2 uses
    #dbg_value(i8 poison, !14781, !DIExpression(), !14712)
  %i.y = add i8 %i.x, -48, !dbg !14838            ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10, !dbg !14838
  br i1 %or.cond.i, label %bb.d, label %bb.c, !dbg !14838

bb.c:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.077.i, 0, !dbg !14839
  br i1 %i.z, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, !dbg !14839

.thread.i:                                        ; preds = %bb.n
    #dbg_value(i8 poison, !14781, !DIExpression(), !14712)
  %i.aa = icmp eq i32 %i.u, 0, !dbg !14839
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i, !dbg !14839

bb.d:                                             ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64, !dbg !14840
    #dbg_value(i64 %i.ab, !14782, !DIExpression(), !14713)
  %i.ac = icmp ugt i64 %.sroa.0.078.i, 1844674407370955160, !dbg !14841
  br i1 %i.ac, label %bb.m, label %bb.n, !dbg !14841

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !14842, !noalias !14804
  store i64 13, ptr %i.d, align 8, !dbg !14842, !noalias !14804
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !14843, !noalias !14771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !14844, !noalias !14804
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14845
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !14845, !alias.scope !14771, !noalias !14772
  store i64 1, ptr %i.f, align 8, !dbg !14845, !alias.scope !14771, !noalias !14772
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14846

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14715)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !14847, !noalias !14804
  store i64 5, ptr %i.c, align 8, !dbg !14847, !noalias !14804
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !14848, !noalias !14771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !14849, !noalias !14804
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !14850
  store ptr %i.af, ptr %i.ag, align 8, !dbg !14850, !alias.scope !14771, !noalias !14772
  store i64 1, ptr %i.f, align 8, !dbg !14850, !alias.scope !14771, !noalias !14772
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_decimalCsi2C7WdEh0SA_3h3i.exit, !dbg !14851

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i: ; preds = %bb.c
    #dbg_value(i32 %.sroa.07.077.i, !14787, !DIExpression(), !14716)
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !14718)
  switch i8 %i.x, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ], !dbg !14852

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread.i: ; preds = %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i, %.thread.i
  %.sroa.07.076.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.077.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ] ; 3 uses
  %.sroa.0.073.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.078.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14806), !dbg !14853
    #dbg_value(i32 %.sroa.07.076.i, !4265, !DIExpression(), !14722)
    #dbg_value(ptr %1, !4267, !DIExpression(), !14722)
    #dbg_value(i1 %2, !4268, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !14722)
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsi2C7WdEh0SA_3h3i:bb.a
.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.029.i, %.lr.ph.i ], !dbg !15763 ; 2 uses
    #dbg_value(double %.sroa.04.1.i, !4270, !DIExpression(), !15619)
  %i.ay = fneg double %.sroa.04.1.i, !dbg !15776
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay, !dbg !15776
    #dbg_value(double %.sroa.04.2.i, !4270, !DIExpression(), !15619)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15777
  store double %.sroa.04.2.i, ptr %i.az, align 8, !dbg !15777, !alias.scope !15717, !noalias !15719
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit, !dbg !15778

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq, !dbg !15779
    #dbg_value(double %i.ba, !4270, !DIExpression(), !15619)
  br label %.loopexit.i, !dbg !15780

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq, !dbg !15781 ; 2 uses
    #dbg_value(double %i.bb, !4270, !DIExpression(), !15619)
    #dbg_value(double %i.bb, !4310, !DIExpression(), !15629)
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb), !dbg !15782
  %i.bd = fcmp oeq double %i.bc, +inf, !dbg !15782
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !dbg !15783, !prof !3954

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !15784, !noalias !15718
  store i64 14, ptr %i.b, align 8, !dbg !15784, !noalias !15718
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !15785, !noalias !15717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !15786, !noalias !15718
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !15787
  store ptr %i.be, ptr %i.bf, align 8, !dbg !15787, !alias.scope !15717, !noalias !15719
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit, !dbg !15775

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ], !dbg !15788
  store i64 %storemerge.i, ptr %0, align 8, !dbg !15788, !alias.scope !15717, !noalias !15719
  br label %bb.q, !dbg !15789

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsi2C7WdEh0SA_3h3i.exit
  ret void, !dbg !15789

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.071, 214748364, !dbg !15790
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh, !dbg !15790
  br i1 %or.cond2, label %bb.t, label %bb.s, !dbg !15790, !prof !4312

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.071, 10, !dbg !15791
  %i.bj = add i32 %i.bi, %i.ah, !dbg !15792       ; 2 uses
    #dbg_value(i32 %i.bj, !15693, !DIExpression(), !15696)
    #dbg_value(i32 %i.bj, !15688, !DIExpression(), !15691)
    #dbg_value(i32 %i.bj, !15643, !DIExpression(), !15711)
    #dbg_value(ptr %i.e, !3128, !DIExpression(), !15630)
  %exitcond.not = icmp eq i64 %i.ag, %i.j, !dbg !15748
  br i1 %exitcond.not, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45.thread, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit45, !dbg !15748

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0, !dbg !15793
    #dbg_value(i1 %i.bk, !15650, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !15720)
  tail call void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCs3JBf551F2Kj_4qlog(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #22, !dbg !15794
  br label %bb.q, !dbg !15795
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 !dbg !583 {
bb.a:
    #dbg_value(ptr %1, !3096, !DIExpression(), !15805)
    #dbg_value(ptr %1, !3115, !DIExpression(), !15807)
    #dbg_value(ptr %1, !3118, !DIExpression(), !15809)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !15810, !noalias !15811, !noundef !1364 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c, !dbg !15814
  br i1 %i.d, label %.lr.ph, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !15814

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !15810, !noalias !15811, !nonnull !1364, !noundef !1364
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !15811, !noalias !15810
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b, !dbg !15814

._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !dbg !15815, !alias.scope !15811, !noalias !15810
  br label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit, !dbg !15814

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit: ; preds = %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !15815
  store i8 0, ptr %i.i, align 1, !dbg !15815, !alias.scope !15811, !noalias !15810
  br label %bb.d, !dbg !15816

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15811), !dbg !15817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15810), !dbg !15817
    #dbg_value(ptr %i.e, !3128, !DIExpression(), !15800)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j, !dbg !15818
  %i.l = load i8, ptr %i.k, align 1, !dbg !15818, !noalias !15812, !noundef !1364 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ], !dbg !15816

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15802)
  %i.m = add i64 %i.j, 1, !dbg !15819             ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !dbg !15819, !alias.scope !15813
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15800)
  %exitcond.not = icmp eq i64 %i.m, %i.c, !dbg !15814
  br i1 %exitcond.not, label %._RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit_crit_edge, label %bb.b, !dbg !15814

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !dbg !15815, !alias.scope !15811, !noalias !15810
  br label %bb.d, !dbg !15820

bb.d:                                             ; preds = %.loopexit, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8, !dbg !15815
  ret void, !dbg !15820
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 !dbg !15833 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !15936, !DIExpression(), !15949)
    #dbg_value(ptr %0, !15950, !DIExpression(), !15955)
    #dbg_value(ptr %0, !15956, !DIExpression(), !15959)
    #dbg_value(ptr %0, !15960, !DIExpression(), !15964)
    #dbg_value(ptr %0, !15965, !DIExpression(), !15968)
    #dbg_value(ptr %0, !15965, !DIExpression(), !15970)
    #dbg_value(ptr %0, !15965, !DIExpression(), !15972)
    #dbg_value(ptr %0, !15965, !DIExpression(), !15974)
    #dbg_value(ptr %0, !15965, !DIExpression(), !15976)
    #dbg_value(ptr %0, !15960, !DIExpression(), !15978)
    #dbg_value(ptr %1, !15937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15949)
    #dbg_value(ptr %2, !15937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15949)
    #dbg_declare(ptr %i.m, !15942, !DIExpression(), !15979)
    #dbg_declare(ptr %i.l, !15944, !DIExpression(), !15980)
    #dbg_value(i8 1, !15961, !DIExpression(), !15964)
    #dbg_value(i8 0, !15961, !DIExpression(), !15978)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !16048 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15981), !dbg !16049
    #dbg_value(ptr %i.q, !3128, !DIExpression(), !15843)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !16050 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !dbg !16050, !alias.scope !15981, !noalias !15982, !noundef !1364 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !16051
  %i.u = load i64, ptr %i.t, align 8, !dbg !16051, !alias.scope !15981, !noalias !15982, !noundef !1364 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u, !dbg !16050
  br i1 %i.v, label %bb.b, label %.thread73, !dbg !16050

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !dbg !16052, !alias.scope !15981, !noalias !15982, !nonnull !1364, !noundef !1364
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s, !dbg !16052
  %i.y = load i8, ptr %i.x, align 1, !dbg !16052, !noalias !15983, !noundef !1364 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !dbg !16053, !prof !15984

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48, !dbg !16054
  %or.cond = icmp ult i8 %i.z, 10, !dbg !16054
  br i1 %or.cond, label %bb.aj, label %.thread73, !dbg !16054, !prof !3941

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !3132, !DIExpression(), !15846)
  %i.aa = add nuw i64 %i.s, 1, !dbg !16055        ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !dbg !16055, !alias.scope !15985
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15986), !dbg !16056
    #dbg_value(ptr %0, !3913, !DIExpression(), !15852)
    #dbg_value(ptr %0, !3933, !DIExpression(), !15854)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15852)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15852)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15855)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15855)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !15986, !noalias !15987, !nonnull !1364 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa), !dbg !16057
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15855)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15988), !dbg !16058
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15861)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u, !dbg !16059
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, !dbg !16059

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15861)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15855)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa, !dbg !16060
  %i.ad = load i8, ptr %i.ac, align 1, !dbg !16060, !noalias !15989, !noundef !1364
    #dbg_value(i8 %i.ad, !3938, !DIExpression(), !15863)
  %i.ae = add nuw i64 %i.s, 2, !dbg !16061        ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !dbg !16061, !alias.scope !15990, !noalias !15991
    #dbg_value(i8 %i.ad, !3923, !DIExpression(), !15864)
  %.not.i = icmp eq i8 %i.ad, 117, !dbg !16062
  br i1 %.not.i, label %bb.f, label %bb.j, !dbg !16062, !prof !3941

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15855)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15992), !dbg !16058
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15861)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae, !dbg !16059
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g, !dbg !16059

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15861)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15855)
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae, !dbg !16060
  %i.ag = load i8, ptr %i.af, align 1, !dbg !16060, !noalias !15993, !noundef !1364
    #dbg_value(i8 %i.ag, !3938, !DIExpression(), !15863)
  %i.ah = add i64 %i.s, 3, !dbg !16061            ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !dbg !16061, !alias.scope !15994, !noalias !15991
    #dbg_value(i8 %i.ag, !3923, !DIExpression(), !15864)
  %.not.i.1 = icmp eq i8 %i.ag, 108, !dbg !16062
  br i1 %.not.i.1, label %bb.h, label %bb.j, !dbg !16062, !prof !3941

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15855)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15995), !dbg !16058
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15861)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i, !dbg !16059
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i, !dbg !16059

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15861)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15855)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah, !dbg !16060
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !16060, !noalias !15996, !noundef !1364
    #dbg_value(i8 %i.aj, !3938, !DIExpression(), !15863)
  %i.ak = add i64 %i.s, 4, !dbg !16061
  store i64 %i.ak, ptr %i.r, align 8, !dbg !16061, !alias.scope !15997, !noalias !15991
    #dbg_value(i8 %i.aj, !3923, !DIExpression(), !15864)
  %.not.i.2 = icmp eq i8 %i.aj, 108, !dbg !16062
  br i1 %.not.i.2, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit, label %bb.j, !dbg !16062, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !16063, !noalias !15998
  store i64 5, ptr %i.f, align 8, !dbg !16063, !noalias !15998
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !dbg !16064, !noalias !15987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !16065, !noalias !15998
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16066

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !16067, !noalias !15998
  store i64 9, ptr %i.e, align 8, !dbg !16067, !noalias !15998
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !dbg !16068, !noalias !15987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !16069, !noalias !15998
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16070

bb.k:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !3132, !DIExpression(), !15868)
  %i.an = add nuw i64 %i.s, 1, !dbg !16071        ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !dbg !16071, !alias.scope !15999
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16000), !dbg !16072
    #dbg_value(ptr %0, !3913, !DIExpression(), !15874)
    #dbg_value(ptr %0, !3933, !DIExpression(), !15876)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15874)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15874)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15877)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15877)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !16000, !noalias !16001, !nonnull !1364 ; 3 uses
  %umax.i33 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an), !dbg !16073
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15877)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16002), !dbg !16074
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15883)
  %exitcond.not.i35.not = icmp ult i64 %i.an, %i.u, !dbg !16075
  br i1 %exitcond.not.i35.not, label %bb.l, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, !dbg !16075

bb.l:                                             ; preds = %bb.k
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15883)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15877)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an, !dbg !16076
  %i.aq = load i8, ptr %i.ap, align 1, !dbg !16076, !noalias !16003, !noundef !1364
    #dbg_value(i8 %i.aq, !3938, !DIExpression(), !15885)
  %i.ar = add nuw i64 %i.s, 2, !dbg !16077        ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !dbg !16077, !alias.scope !16004, !noalias !16005
    #dbg_value(i8 %i.aq, !3923, !DIExpression(), !15886)
  %.not.i36 = icmp eq i8 %i.aq, 114, !dbg !16078
  br i1 %.not.i36, label %bb.m, label %bb.q, !dbg !16078, !prof !3941

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15877)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16006), !dbg !16074
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15883)
  %exitcond.not.i35.1 = icmp eq i64 %i.u, %i.ar, !dbg !16075
  br i1 %exitcond.not.i35.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, label %bb.n, !dbg !16075

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15883)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15877)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar, !dbg !16076
  %i.at = load i8, ptr %i.as, align 1, !dbg !16076, !noalias !16007, !noundef !1364
    #dbg_value(i8 %i.at, !3938, !DIExpression(), !15885)
  %i.au = add i64 %i.s, 3, !dbg !16077            ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !dbg !16077, !alias.scope !16008, !noalias !16005
    #dbg_value(i8 %i.at, !3923, !DIExpression(), !15886)
  %.not.i36.1 = icmp eq i8 %i.at, 117, !dbg !16078
  br i1 %.not.i36.1, label %bb.o, label %bb.q, !dbg !16078, !prof !3941

bb.o:                                             ; preds = %bb.n
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15877)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15879)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16009), !dbg !16074
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15883)
  %exitcond.not.i35.2 = icmp eq i64 %i.au, %umax.i33, !dbg !16075
  br i1 %exitcond.not.i35.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38, label %bb.p, !dbg !16075

bb.p:                                             ; preds = %bb.o
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15883)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15877)
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au, !dbg !16076
  %i.aw = load i8, ptr %i.av, align 1, !dbg !16076, !noalias !16010, !noundef !1364
    #dbg_value(i8 %i.aw, !3938, !DIExpression(), !15885)
  %i.ax = add i64 %i.s, 4, !dbg !16077
  store i64 %i.ax, ptr %i.r, align 8, !dbg !16077, !alias.scope !16011, !noalias !16005
    #dbg_value(i8 %i.aw, !3923, !DIExpression(), !15886)
  %.not.i36.2 = icmp eq i8 %i.aw, 101, !dbg !16078
  br i1 %.not.i36.2, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit39, label %bb.q, !dbg !16078, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i38: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16079, !noalias !16012
  store i64 5, ptr %i.d, align 8, !dbg !16079, !noalias !16012
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !16080, !noalias !16001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16081, !noalias !16012
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16082

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16083, !noalias !16012
  store i64 9, ptr %i.c, align 8, !dbg !16083, !noalias !16012
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16084, !noalias !16001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16085, !noalias !16012
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16086

bb.r:                                             ; preds = %bb.b
    #dbg_value(ptr %i.q, !3132, !DIExpression(), !15890)
  %i.ba = add nuw i64 %i.s, 1, !dbg !16087        ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !dbg !16087, !alias.scope !16013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16014), !dbg !16088
    #dbg_value(ptr %0, !3913, !DIExpression(), !15896)
    #dbg_value(ptr %0, !3933, !DIExpression(), !15898)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15896)
    #dbg_value(i64 4, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15896)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15899)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !15899)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !16014, !noalias !16015, !nonnull !1364 ; 4 uses
  %umax.i41 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba), !dbg !16089 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16016), !dbg !16090
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15905)
  %exitcond.not.i43.not = icmp ult i64 %i.ba, %i.u, !dbg !16091
  br i1 %exitcond.not.i43.not, label %bb.s, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, !dbg !16091

bb.s:                                             ; preds = %bb.r
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15905)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba, !dbg !16092
  %i.bd = load i8, ptr %i.bc, align 1, !dbg !16092, !noalias !16017, !noundef !1364
    #dbg_value(i8 %i.bd, !3938, !DIExpression(), !15907)
  %i.be = add nuw i64 %i.s, 2, !dbg !16093        ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !dbg !16093, !alias.scope !16018, !noalias !16019
    #dbg_value(i8 %i.bd, !3923, !DIExpression(), !15908)
  %.not.i44 = icmp eq i8 %i.bd, 97, !dbg !16094
  br i1 %.not.i44, label %bb.t, label %bb.z, !dbg !16094, !prof !3941

bb.t:                                             ; preds = %bb.s
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16020), !dbg !16090
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15905)
  %exitcond.not.i43.1 = icmp eq i64 %i.u, %i.be, !dbg !16091
  br i1 %exitcond.not.i43.1, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.u, !dbg !16091

bb.u:                                             ; preds = %bb.t
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15905)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be, !dbg !16092
  %i.bg = load i8, ptr %i.bf, align 1, !dbg !16092, !noalias !16021, !noundef !1364
    #dbg_value(i8 %i.bg, !3938, !DIExpression(), !15907)
  %i.bh = add i64 %i.s, 3, !dbg !16093            ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !dbg !16093, !alias.scope !16022, !noalias !16019
    #dbg_value(i8 %i.bg, !3923, !DIExpression(), !15908)
  %.not.i44.1 = icmp eq i8 %i.bg, 108, !dbg !16094
  br i1 %.not.i44.1, label %bb.v, label %bb.z, !dbg !16094, !prof !3941

bb.v:                                             ; preds = %bb.u
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16023), !dbg !16090
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15905)
  %exitcond.not.i43.2 = icmp eq i64 %i.bh, %umax.i41, !dbg !16091
  br i1 %exitcond.not.i43.2, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.w, !dbg !16091

bb.w:                                             ; preds = %bb.v
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15905)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh, !dbg !16092
  %i.bj = load i8, ptr %i.bi, align 1, !dbg !16092, !noalias !16024, !noundef !1364
    #dbg_value(i8 %i.bj, !3938, !DIExpression(), !15907)
  %i.bk = add i64 %i.s, 4, !dbg !16093            ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !dbg !16093, !alias.scope !16025, !noalias !16019
    #dbg_value(i8 %i.bj, !3923, !DIExpression(), !15908)
  %.not.i44.2 = icmp eq i8 %i.bj, 115, !dbg !16094
  br i1 %.not.i44.2, label %bb.x, label %bb.z, !dbg !16094, !prof !3941

bb.x:                                             ; preds = %bb.w
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
    #dbg_value(ptr poison, !3920, !DIExpression(), !15901)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16026), !dbg !16090
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !15905)
  %exitcond.not.i43.3 = icmp eq i64 %i.bk, %umax.i41, !dbg !16091
  br i1 %exitcond.not.i43.3, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46, label %bb.y, !dbg !16091

bb.y:                                             ; preds = %bb.x
    #dbg_value(ptr %i.q, !3937, !DIExpression(), !15905)
    #dbg_value(!DIArgList(ptr poison, i64 4), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !15899)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk, !dbg !16092
  %i.bm = load i8, ptr %i.bl, align 1, !dbg !16092, !noalias !16027, !noundef !1364
    #dbg_value(i8 %i.bm, !3938, !DIExpression(), !15907)
  %i.bn = add i64 %i.s, 5, !dbg !16093
  store i64 %i.bn, ptr %i.r, align 8, !dbg !16093, !alias.scope !16028, !noalias !16019
    #dbg_value(i8 %i.bm, !3923, !DIExpression(), !15908)
  %.not.i44.3 = icmp eq i8 %i.bm, 101, !dbg !16094
  br i1 %.not.i44.3, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit47, label %bb.z, !dbg !16094, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i46: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16095, !noalias !16029
  store i64 5, ptr %i.b, align 8, !dbg !16095, !noalias !16029
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !16096, !noalias !16015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16097, !noalias !16029
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16098

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16099, !noalias !16029
  store i64 9, ptr %i.a, align 8, !dbg !16099, !noalias !16029
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !16100, !noalias !16015
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16101, !noalias !16029
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16102

bb.aa:                                            ; preds = %bb.b
    #dbg_value(ptr %i.q, !3132, !DIExpression(), !15913)
  %i.bq = add nuw i64 %i.s, 1, !dbg !16103
  store i64 %i.bq, ptr %i.r, align 8, !dbg !16103, !alias.scope !16030
  call fastcc void @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false), !dbg !16104
  %i.br = load i64, ptr %i.m, align 8, !dbg !16105, !range !3877, !noundef !1364
  %i.bs = icmp eq i64 %i.br, -1, !dbg !16105
  br i1 %i.bs, label %bb.af, label %bb.ag, !dbg !16106, !prof !3841

bb.ab:                                            ; preds = %bb.b
    #dbg_value(ptr %i.q, !3132, !DIExpression(), !15917)
  %i.bt = add nuw i64 %i.s, 1, !dbg !16107
  store i64 %i.bt, ptr %i.r, align 8, !dbg !16107, !alias.scope !16031
    #dbg_value(ptr %0, !16032, !DIExpression(), !16036)
    #dbg_value(ptr %0, !16037, !DIExpression(), !16040)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !16108
    #dbg_value(ptr poison, !16033, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16041)
    #dbg_value(i64 poison, !16033, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16041)
  store i64 0, ptr %i.bu, align 8, !dbg !16109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !16110
  call void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !16111
  %i.bv = load i64, ptr %i.k, align 8, !dbg !16110, !range !3544, !noundef !1364
  %i.bw = icmp eq i64 %i.bv, 2, !dbg !16110
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !15949
  %i.by = load ptr, ptr %i.bx, align 8, !dbg !15949, !nonnull !1364, !noundef !1364 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !dbg !16112, !prof !3841

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !16113
  store i8 10, ptr %i.i, align 8, !dbg !16113
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !16114
    #dbg_value(ptr %i.bz, !15938, !DIExpression(), !16042)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !16115
  br label %bb.ae, !dbg !16115

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !16116
  store i8 11, ptr %i.h, align 8, !dbg !16116
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !16117
    #dbg_value(ptr %i.ca, !15938, !DIExpression(), !16042)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !16118
  br label %bb.ae, !dbg !16118

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.i
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15855)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !16119
  store i8 7, ptr %i.p, align 8, !dbg !16119
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !16120
    #dbg_value(ptr %i.cb, !15938, !DIExpression(), !16042)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !16121
  br label %bb.ae, !dbg !16121

bb.ae:                                            ; preds = %bb.al, %.thread73, %bb.ai, %bb.ag, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit47, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit39, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread73 ], [ %i.cb, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit ], [ %i.ce, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit39 ], [ %i.cg, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit47 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ], !dbg !15949
    #dbg_value(ptr %.sroa.02.0, !15938, !DIExpression(), !16042)
    #dbg_value(ptr %0, !3881, !DIExpression(), !15924)
    #dbg_value(ptr %.sroa.02.0, !3885, !DIExpression(), !15924)
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsi2C7WdEh0SA_3h3i(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !16122
    #dbg_value(ptr %i.cc, !15939, !DIExpression(), !16043)
    #dbg_value(ptr %i.cc, !15940, !DIExpression(), !16044)
    #dbg_value(ptr %i.cc, !15941, !DIExpression(), !16045)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16123

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit39: ; preds = %bb.p
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !16124
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1, !dbg !16124
  store i8 1, ptr %i.cd, align 1, !dbg !16124
  store i8 0, ptr %i.o, align 8, !dbg !16124
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !16125
    #dbg_value(ptr %i.ce, !15938, !DIExpression(), !16042)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !16126
  br label %bb.ae, !dbg !16126

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit47: ; preds = %bb.y
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !15899)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !16127
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1, !dbg !16127
  store i8 0, ptr %i.cf, align 1, !dbg !16127
  store i8 0, ptr %i.n, align 8, !dbg !16127
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsenfyI6F4F2A_10serde_json5errorNtB5_5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !16128
    #dbg_value(ptr %i.cg, !15938, !DIExpression(), !16042)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !16129
  br label %bb.ae, !dbg !16129

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !16130
  %i.ci = load ptr, ptr %i.ch, align 8, !dbg !16130, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.ci, !15939, !DIExpression(), !16043)
    #dbg_value(ptr %i.ci, !15940, !DIExpression(), !16044)
    #dbg_value(ptr %i.ci, !15941, !DIExpression(), !16045)
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16131

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsenfyI6F4F2A_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2), !dbg !16132
    #dbg_value(ptr %i.cj, !15938, !DIExpression(), !16042)
  br label %bb.ae, !dbg !16133

bb.ah:                                            ; preds = %bb.ab
    #dbg_value(ptr %i.by, !15939, !DIExpression(), !16043)
    #dbg_value(ptr %i.by, !15940, !DIExpression(), !16044)
    #dbg_value(ptr %i.by, !15941, !DIExpression(), !16045)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !16134
  br label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsi2C7WdEh0SA_3h3i.exit.thread, !dbg !16131

bb.ai:                                            ; preds = %bb.ab
    #dbg_value(i64 %i.bv, !15946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16047)
end_hunk_4
begin_hunk_5_@_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsi2C7WdEh0SA_3h3i:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16224
  store i64 21, ptr %i.c, align 8, !dbg !16224
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16226
  br label %bb.g, !dbg !16227

bb.g:                                             ; preds = %.loopexit, %bb.d, %bb.e, %bb.f
  %.sroa.0.0 = phi ptr [ %i.o, %bb.d ], [ null, %bb.e ], [ %i.q, %bb.f ], [ %i.n, %.loopexit ], !dbg !16195
  ret ptr %.sroa.0.0, !dbg !16228
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16231 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !16278, !DIExpression(), !16282)
    #dbg_value(ptr %0, !16283, !DIExpression(), !16286)
    #dbg_value(ptr %0, !16283, !DIExpression(), !16288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16289), !dbg !16302
    #dbg_value(ptr %0, !3096, !DIExpression(), !16236)
    #dbg_value(ptr %0, !3115, !DIExpression(), !16238)
    #dbg_value(ptr %0, !3118, !DIExpression(), !16240)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16290, !noalias !16291, !noundef !1364 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !16289, !noalias !16292 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g, !dbg !16303
  br i1 %i.h, label %.lr.ph.i, label %.loopexit, !dbg !16303

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !16290, !noalias !16291, !nonnull !1364, !noundef !1364 ; 2 uses
  br label %bb.b, !dbg !16303

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16293), !dbg !16304
    #dbg_value(ptr %i.i, !3128, !DIExpression(), !16246)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k, !dbg !16305
  %i.m = load i8, ptr %i.l, align 1, !dbg !16305, !noalias !16294, !noundef !1364
  switch i8 %i.m, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 93, label %bb.e
    i8 44, label %bb.f
  ], !dbg !16306, !prof !3847

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %0, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16248)
  %i.n = add i64 %i.k, 1, !dbg !16307             ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !dbg !16307, !alias.scope !16295, !noalias !16292
    #dbg_value(ptr %0, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16246)
  %exitcond.not.i = icmp eq i64 %i.n, %i.g, !dbg !16303
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !16303

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !16308
  store i64 2, ptr %i.a, align 8, !dbg !16308
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !16309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !16310
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i.exit19, !dbg !16311

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16312
  store i64 22, ptr %i.b, align 8, !dbg !16312
  %i.p = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16314
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i.exit19, !dbg !16315

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16252)
  %i.q = add i64 %i.k, 1, !dbg !16316
  store i64 %i.q, ptr %i.e, align 8, !dbg !16316, !alias.scope !16296
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i.exit19, !dbg !16317

bb.f:                                             ; preds = %bb.b
    #dbg_value(ptr %0, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16256)
  %i.r = add i64 %i.k, 1, !dbg !16318             ; 3 uses
  store i64 %i.r, ptr %i.e, align 8, !dbg !16318, !alias.scope !16297
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16298), !dbg !16319
    #dbg_value(ptr %0, !3096, !DIExpression(), !16262)
    #dbg_value(ptr %0, !3115, !DIExpression(), !16264)
    #dbg_value(ptr %0, !3118, !DIExpression(), !16266)
  %i.s = icmp ult i64 %i.r, %i.g, !dbg !16320
  br i1 %i.s, label %.lr.ph.i14, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit18.thread, !dbg !16320

.lr.ph.i14:                                       ; preds = %bb.f, %bb.g
  %i.t = phi i64 [ %i.w, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
    #dbg_value(ptr %0, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16268)
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.t, !dbg !16321
  %i.v = load i8, ptr %i.u, align 1, !dbg !16321, !noalias !16299, !noundef !1364
  switch i8 %i.v, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit18.thread [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 93, label %bb.h
  ], !dbg !16322

bb.g:                                             ; preds = %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14, %.lr.ph.i14
    #dbg_value(ptr %0, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16274)
  %i.w = add i64 %i.t, 1, !dbg !16323             ; 3 uses
  store i64 %i.w, ptr %i.e, align 8, !dbg !16323, !alias.scope !16300, !noalias !16301
    #dbg_value(ptr %0, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16268)
  %exitcond.not.i15 = icmp eq i64 %i.w, %i.g, !dbg !16320
  br i1 %exitcond.not.i15, label %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit18.thread, label %.lr.ph.i14, !dbg !16320

_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit18.thread: ; preds = %.lr.ph.i14, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16324
  store i64 22, ptr %i.c, align 8, !dbg !16324
  %i.x = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16326
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i.exit19, !dbg !16327

bb.h:                                             ; preds = %.lr.ph.i14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16328
  store i64 21, ptr %i.d, align 8, !dbg !16328
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !16329
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16330
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i.exit19, !dbg !16331

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtB4_6option6OptionhENtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i.exit19: ; preds = %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit18.thread, %bb.h, %.loopexit, %bb.d, %bb.e
  %.sroa.0.0 = phi ptr [ %i.p, %bb.d ], [ null, %bb.e ], [ %i.o, %.loopexit ], [ %i.x, %_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsi2C7WdEh0SA_3h3i.exit18.thread ], [ %i.y, %bb.h ], !dbg !16282
  ret ptr %.sroa.0.0, !dbg !16332
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCsenfyI6F4F2A_10serde_json2deINtB5_13VariantAccessNtNtB7_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de13VariantAccess12unit_variantCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !16333 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !16400, !DIExpression(), !16402)
    #dbg_value(ptr %0, !16403, !DIExpression(), !16407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16408), !dbg !16450
    #dbg_value(ptr %0, !16409, !DIExpression(), !16348)
    #dbg_value(ptr %0, !16425, !DIExpression(), !16351)
    #dbg_declare(ptr %i.a, !16412, !DIExpression(), !16352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16427), !dbg !16451
    #dbg_value(ptr %0, !3096, !DIExpression(), !16356)
    #dbg_value(ptr %0, !3115, !DIExpression(), !16358)
    #dbg_value(ptr %0, !3118, !DIExpression(), !16360)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !16428, !noalias !16429, !noundef !1364 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !16430, !noalias !16431 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g, !dbg !16452
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i, !dbg !16452

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !16428, !noalias !16429, !nonnull !1364, !noundef !1364 ; 4 uses
  br label %bb.b, !dbg !16452

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16432), !dbg !16453
    #dbg_value(ptr %i.i, !3128, !DIExpression(), !16366)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k, !dbg !16454
  %i.m = load i8, ptr %i.l, align 1, !dbg !16454, !noalias !16433, !noundef !1364
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !dbg !16455, !prof !4052

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %0, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16368)
  %i.n = add i64 %i.k, 1, !dbg !16456             ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !dbg !16456, !alias.scope !16434, !noalias !16431
    #dbg_value(ptr %0, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16366)
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g, !dbg !16452
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b, !dbg !16452

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !16457, !noalias !16408
  store i64 5, ptr %i.d, align 8, !dbg !16457, !noalias !16408
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !dbg !16458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !16459, !noalias !16408
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !16460

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.i, !3132, !DIExpression(), !16372)
  %i.p = add i64 %i.k, 1, !dbg !16461             ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !dbg !16461, !alias.scope !16436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16437), !dbg !16462
    #dbg_value(ptr %0, !3913, !DIExpression(), !16378)
    #dbg_value(ptr %0, !3933, !DIExpression(), !16380)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16378)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16378)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !16381)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !16381)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.p), !dbg !16463 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16381)
    #dbg_value(ptr poison, !3920, !DIExpression(), !16382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16438), !dbg !16464
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16386)
  %exitcond.not.i14.not.i = icmp ult i64 %i.p, %i.g, !dbg !16465
  br i1 %exitcond.not.i14.not.i, label %bb.e, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, !dbg !16465

bb.e:                                             ; preds = %bb.d
    #dbg_value(ptr %i.i, !3937, !DIExpression(), !16386)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16381)
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p, !dbg !16466
  %i.r = load i8, ptr %i.q, align 1, !dbg !16466, !noalias !16439, !noundef !1364
    #dbg_value(i8 %i.r, !3938, !DIExpression(), !16389)
  %i.s = add i64 %i.k, 2, !dbg !16467             ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !dbg !16467, !alias.scope !16440, !noalias !16441
    #dbg_value(i8 %i.r, !3923, !DIExpression(), !16390)
  %.not.i.i = icmp eq i8 %i.r, 117, !dbg !16468
  br i1 %.not.i.i, label %bb.f, label %bb.j, !dbg !16468, !prof !3941

bb.f:                                             ; preds = %bb.e
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16381)
    #dbg_value(ptr poison, !3920, !DIExpression(), !16382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16442), !dbg !16464
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16386)
  %exitcond.not.i14.1.i = icmp eq i64 %i.s, %umax.i.i, !dbg !16465
  br i1 %exitcond.not.i14.1.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.g, !dbg !16465

bb.g:                                             ; preds = %bb.f
    #dbg_value(ptr %i.i, !3937, !DIExpression(), !16386)
    #dbg_value(!DIArgList(ptr poison, i64 2), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16381)
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s, !dbg !16466
  %i.u = load i8, ptr %i.t, align 1, !dbg !16466, !noalias !16443, !noundef !1364
    #dbg_value(i8 %i.u, !3938, !DIExpression(), !16389)
  %i.v = add i64 %i.k, 3, !dbg !16467             ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !dbg !16467, !alias.scope !16444, !noalias !16441
    #dbg_value(i8 %i.u, !3923, !DIExpression(), !16390)
  %.not.i.1.i = icmp eq i8 %i.u, 108, !dbg !16468
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !dbg !16468, !prof !3941

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16381)
    #dbg_value(ptr poison, !3920, !DIExpression(), !16382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16445), !dbg !16464
    #dbg_value(ptr %0, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !16386)
  %exitcond.not.i14.2.i = icmp eq i64 %i.v, %umax.i.i, !dbg !16465
  br i1 %exitcond.not.i14.2.i, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, label %bb.i, !dbg !16465

bb.i:                                             ; preds = %bb.h
    #dbg_value(ptr %i.i, !3937, !DIExpression(), !16386)
    #dbg_value(!DIArgList(ptr poison, i64 3), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !16381)
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v, !dbg !16466
  %i.x = load i8, ptr %i.w, align 1, !dbg !16466, !noalias !16446, !noundef !1364
    #dbg_value(i8 %i.x, !3938, !DIExpression(), !16389)
  %i.y = add i64 %i.k, 4, !dbg !16467
  store i64 %i.y, ptr %i.e, align 8, !dbg !16467, !alias.scope !16447, !noalias !16441
    #dbg_value(i8 %i.x, !3923, !DIExpression(), !16390)
  %.not.i.2.i = icmp eq i8 %i.x, 108, !dbg !16468
  br i1 %.not.i.2.i, label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsi2C7WdEh0SA_3h3i.exit, label %bb.j, !dbg !16468, !prof !3941

_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !16469, !noalias !16448
  store i64 5, ptr %i.c, align 8, !dbg !16469, !noalias !16448
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !16470, !noalias !16449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !16471, !noalias !16448
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !16472

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !16473, !noalias !16448
  store i64 9, ptr %i.b, align 8, !dbg !16473, !noalias !16448
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !16474, !noalias !16449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !16475, !noalias !16448
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !16476

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13), !dbg !16477
    #dbg_value(ptr %i.ab, !16417, !DIExpression(), !16393)
    #dbg_value(ptr %i.ab, !16421, !DIExpression(), !16394)
    #dbg_value(ptr %0, !3881, !DIExpression(), !16396)
    #dbg_value(ptr %i.ab, !3885, !DIExpression(), !16396)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsi2C7WdEh0SA_3h3i(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0), !dbg !16478
  br label %_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsi2C7WdEh0SA_3h3i.exit, !dbg !16479

_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer16deserialize_unitNtNtB1l_5impls11UnitVisitorECsi2C7WdEh0SA_3h3i.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ], !dbg !16480
  ret ptr %.sroa.0.2.i, !dbg !16481
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtCs9xKKqPmwf7Y_10serde_core2deNtNvXs1e_NtB4_5implsdNtB4_11Deserialize11deserialize16PrimitiveVisitorNtB4_8Expected3fmtCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB5_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1R_4read9SliceReadEECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([304 x i8]) align 8 captures(address) dereferenceable(304), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB5_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB1V_4read9SliceReadEECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(address) dereferenceable(112), ptr noalias nofree noundef align 8 dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsf_NtCs6Hru1xGhrwY_9hashbrown3rawINtB5_8RawTablejENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtCs83oNeXj4HCJ_8indexmap6BucketNtNtB7_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1i_EEENtNtNtBK_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs3JBf551F2Kj_4qlog6events7RawInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic25UnknownTransportParameterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events5http310HttpHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs3JBf551F2Kj_4qlog6events5http37SettingENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentBG_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecmENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecyENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtCs83oNeXj4HCJ_8indexmap6BucketNtNtB7_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs3JBf551F2Kj_4qlog6events7RawInfoENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCsenfyI6F4F2A_10serde_json5value5ValueENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic14AlpnIdentifierENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic25UnknownTransportParameterENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events4quic9QuicFrameENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events5http310HttpHeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs3JBf551F2Kj_4qlog6events5http37SettingENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentBN_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_5
