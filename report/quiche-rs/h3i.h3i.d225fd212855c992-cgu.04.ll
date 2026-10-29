Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i.h3i.d225fd212855c992-cgu.04?download=true
inline.NumInlined: 466
inline.NumDeleted: 170
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsi2C7WdEh0SA_3h3i:bb.a
  %.sroa.22.sroa.0.0.insert.insert = or disjoint i64 %.sroa.22.sroa.0.0.insert.ext, %.sroa.22.sroa.21.0.insert.ext, !dbg !9266
  store i64 %.sroa.22.sroa.0.0.insert.insert, ptr %.sroa.22.0..sroa_idx, align 8, !dbg !9266
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !9266
  store i64 %.sroa.37.6, ptr %.sroa.37.0..sroa_idx, align 8, !dbg !9266
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !9266
  store i64 %.sroa.45.4, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !9266
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !9266
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47, i64 40, i1 false), !dbg !9266
  br label %bb.co, !dbg !9267

bb.co:                                            ; preds = %bb.ch, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.47), !dbg !9131
  br label %bb.cp, !dbg !9268

bb.cp:                                            ; preds = %bb.co, %.loopexit, %bb.ah
  ret void, !dbg !9269
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB2s_5EventNtB1l_11Deserialize11deserialize9___VisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9280 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [32 x i8], align 8                ; 10 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
    #dbg_declare(ptr poison, !9932, !DIExpression(DW_OP_LLVM_fragment, 128, 2048), !9335)
  %i.m = alloca [272 x i8], align 8               ; 7 uses
  %i.n = alloca [272 x i8], align 8               ; 9 uses
    #dbg_declare(ptr poison, !10007, !DIExpression(DW_OP_LLVM_fragment, 16, 112), !9350)
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 8 uses
  %i.q = alloca [32 x i8], align 8                ; 10 uses
  %i.r = alloca [64 x i8], align 8                ; 10 uses
    #dbg_declare(ptr poison, !9950, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !9351)
    #dbg_declare(ptr poison, !9950, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !9351)
  %i.s = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr poison, !10040, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9354)
  %i.t = alloca [16 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !10046, !DIExpression(), !9357)
  %.sroa.3.i = alloca [7 x i8], align 1           ; 4 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 4 uses
    #dbg_declare(ptr %.sroa.3.i, !9943, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !9358)
    #dbg_declare(ptr %.sroa.5.i, !9943, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !9358)
  %.sroa.9235.i = alloca [7 x i8], align 1        ; 6 uses
  %.sroa.14.i = alloca [16 x i8], align 8         ; 7 uses
    #dbg_declare(ptr %.sroa.9235.i, !10049, !DIExpression(DW_OP_LLVM_fragment, 8, 56), !9371)
    #dbg_declare(ptr %.sroa.14.i, !10049, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !9371)
  %i.u = alloca [24 x i8], align 8                ; 17 uses
    #dbg_value(ptr poison, !10079, !DIExpression(), !9374)
  %i.v = alloca [16 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !9926, !DIExpression(DW_OP_LLVM_fragment, 128, 2304), !10086)
    #dbg_declare(ptr poison, !9924, !DIExpression(DW_OP_LLVM_fragment, 128, 2304), !10087)
  %i.w = alloca [304 x i8], align 8               ; 12 uses
  %i.x = alloca [312 x i8], align 8               ; 11 uses
  %.sroa.27 = alloca [256 x i8], align 8          ; 6 uses
    #dbg_declare(ptr %.sroa.27, !9923, !DIExpression(DW_OP_LLVM_fragment, 128, 2048), !10088)
  %i.y = alloca [24 x i8], align 8                ; 4 uses
    #dbg_declare(ptr poison, !9922, !DIExpression(DW_OP_LLVM_fragment, 128, 2304), !10089)
  %i.z = alloca [24 x i8], align 8                ; 4 uses
    #dbg_value(ptr %1, !9916, !DIExpression(), !10090)
    #dbg_value(ptr %1, !10091, !DIExpression(), !10094)
    #dbg_declare(ptr %i.a, !9917, !DIExpression(), !10095)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10096), !dbg !10520
    #dbg_value(ptr %1, !3096, !DIExpression(), !9379)
    #dbg_value(ptr %1, !3115, !DIExpression(), !9381)
    #dbg_value(ptr %1, !3118, !DIExpression(), !9383)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !10097, !noundef !1364 ; 2 uses
  %.promoted.i = load i64, ptr %i.aa, align 8, !alias.scope !10096 ; 2 uses
  %i.ad = icmp ult i64 %.promoted.i, %i.ac, !dbg !10521
  br i1 %i.ad, label %.lr.ph.i, label %.loopexit, !dbg !10521

.lr.ph.i:                                         ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !10097, !nonnull !1364, !noundef !1364
  br label %bb.b, !dbg !10521

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ag = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.aj, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10098), !dbg !10522
    #dbg_value(ptr %i.ae, !3128, !DIExpression(), !9387)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ag, !dbg !10523
  %i.ai = load i8, ptr %i.ah, align 1, !dbg !10523, !noalias !10099, !noundef !1364
  switch i8 %i.ai, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 123, label %bb.d
  ], !dbg !10524, !prof !4052

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9391)
  %i.aj = add i64 %i.ag, 1, !dbg !10525           ; 3 uses
  store i64 %i.aj, ptr %i.aa, align 8, !dbg !10525, !alias.scope !10100
    #dbg_value(ptr %1, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9387)
  %exitcond.not.i = icmp eq i64 %i.aj, %i.ac, !dbg !10521
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b, !dbg !10521

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !10526
  store i64 5, ptr %i.z, align 8, !dbg !10526
  %i.ak = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z), !dbg !10527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !10528
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10529
  store ptr %i.ak, ptr %i.al, align 8, !dbg !10529
  store i64 -1, ptr %0, align 8, !dbg !10530
  br label %bb.cs, !dbg !10531

bb.d:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !10532 ; 4 uses
  %i.an = load i8, ptr %i.am, align 8, !dbg !10532, !noundef !1364
  %i.ao = add i8 %i.an, -1, !dbg !10532           ; 2 uses
  store i8 %i.ao, ptr %i.am, align 8, !dbg !10532
  %i.ap = icmp eq i8 %i.ao, 0, !dbg !10533
  br i1 %i.ap, label %bb.f, label %bb.g, !dbg !10533, !prof !3954

bb.e:                                             ; preds = %bb.b
  %i.aq = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10), !dbg !10534
    #dbg_value(ptr %i.aq, !9922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10102)
    #dbg_value(i64 -1, !9922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10102)
  br label %bb.cq, !dbg !10535

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !10536
  store i64 24, ptr %i.y, align 8, !dbg !10536
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.y), !dbg !10537
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !10538
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10539
  store ptr %i.ar, ptr %i.as, align 8, !dbg !10539
  store i64 -1, ptr %0, align 8, !dbg !10539
  br label %bb.cs, !dbg !10540

bb.g:                                             ; preds = %bb.d
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9395)
  %i.at = add i64 %i.ag, 1, !dbg !10541
  store i64 %i.at, ptr %i.aa, align 8, !dbg !10541, !alias.scope !10104
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.27), !dbg !10542
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr %1, ptr %i.v, align 8, !noalias !10105
  %i.au = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.au, align 8, !noalias !10105
    #dbg_declare(ptr poison, !9970, !DIExpression(), !9401)
    #dbg_declare(ptr %i.v, !9936, !DIExpression(), !9401)
    #dbg_declare(ptr %i.u, !9940, !DIExpression(), !9402)
    #dbg_declare(ptr %i.t, !10106, !DIExpression(), !9409)
    #dbg_declare(ptr %i.s, !10007, !DIExpression(), !9411)
    #dbg_declare(ptr %i.r, !10114, !DIExpression(), !9414)
    #dbg_declare(ptr %i.p, !10121, !DIExpression(), !9423)
    #dbg_declare(ptr %i.o, !10106, !DIExpression(), !9425)
    #dbg_declare(ptr %i.n, !9965, !DIExpression(), !9426)
    #dbg_declare(ptr %i.m, !10140, !DIExpression(), !9439)
    #dbg_declare(ptr poison, !9935, !DIExpression(), !9401)
    #dbg_value(ptr @2, !10168, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9443)
    #dbg_value(i64 4, !10168, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9443)
    #dbg_declare(ptr poison, !10173, !DIExpression(), !9448)
    #dbg_value(i64 0, !9937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9449)
    #dbg_value(double undef, !9937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9449)
    #dbg_value(i64 0, !9938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(i8 -1, !9939, !DIExpression(), !9451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !10543, !noalias !10105
  store i64 0, ptr %i.u, align 8, !dbg !10544, !noalias !10105
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !10544 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.av, align 8, !dbg !10544, !noalias !10105
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !10544 ; 3 uses
  store i64 0, ptr %i.aw, align 8, !dbg !10544, !noalias !10105
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %.sroa.9235.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %.sroa.637.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4102.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %.sroa.6104.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.653.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 33
  %.sroa.754.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %.sroa.855.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br label %.outer, !dbg !10516

.outer:                                           ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i, %bb.g
  %.sroa.11.0.i.ph = phi ptr [ %i.ed, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ undef, %bb.g ] ; 11 uses
  %2 = phi i1 [ true, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ false, %bb.g ] ; 2 uses
  %.not173.i = phi i1 [ false, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ true, %bb.g ]
  %.sroa.0.0.i.ph = phi i64 [ 1, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ 0, %bb.g ] ; 15 uses
  %.sroa.028.0.i.ph = phi i8 [ %.sroa.028.0.i.ph899, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ -1, %bb.g ]
  %.sroa.415.0.i.ph = phi double [ %.sroa.415.0.i.ph906, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ undef, %bb.g ]
  %.sroa.013.0.i.ph = phi i64 [ %.sroa.013.0.i.ph907, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB2I_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i ], [ 0, %bb.g ]
  br label %.outer898, !dbg !10545

.outer898:                                        ; preds = %.outer, %bb.av
  %.sroa.028.0.i.ph899 = phi i8 [ %.sroa.028.0.i.ph, %.outer ], [ %i.ev, %bb.av ] ; 4 uses
  %.sroa.415.0.i.ph900 = phi double [ %.sroa.415.0.i.ph, %.outer ], [ %.sroa.415.0.i.ph906, %bb.av ]
  %.sroa.013.0.i.ph901 = phi i64 [ %.sroa.013.0.i.ph, %.outer ], [ %.sroa.013.0.i.ph907, %bb.av ]
  br label %.outer905, !dbg !10545

.outer905:                                        ; preds = %.outer898, %bb.ah
  %.sroa.415.0.i.ph906 = phi double [ %.sroa.415.0.i.ph900, %.outer898 ], [ %i.dn, %bb.ah ] ; 3 uses
  %.sroa.013.0.i.ph907 = phi i64 [ %.sroa.013.0.i.ph901, %.outer898 ], [ 1, %bb.ah ] ; 4 uses
  br label %bb.h, !dbg !10545

bb.h:                                             ; preds = %.outer905, %bb.ba
    #dbg_value(i64 %.sroa.0.0.i.ph, !9938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(ptr %.sroa.11.0.i.ph, !9938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9450)
    #dbg_value(i64 %.sroa.013.0.i.ph907, !9937, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9449)
    #dbg_value(double %.sroa.415.0.i.ph906, !9937, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9449)
    #dbg_value(i8 %.sroa.028.0.i.ph899, !9939, !DIExpression(), !9451)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9235.i), !dbg !10546
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i), !dbg !10546
  call void @llvm.experimental.noalias.scope.decl(metadata !10198), !dbg !10546
    #dbg_value(ptr %i.v, !10194, !DIExpression(), !9465)
  call void @llvm.experimental.noalias.scope.decl(metadata !10199), !dbg !10547
    #dbg_value(ptr %i.v, !10183, !DIExpression(), !9468)
    #dbg_declare(ptr poison, !10184, !DIExpression(), !9469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !10545, !noalias !10200
  invoke fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.v)
          to label %.noexc.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10545, !noalias !10201

.noexc.i:                                         ; preds = %bb.h
  %i.bc = load i8, ptr %i.l, align 8, !dbg !10545, !range !3840, !noalias !10200, !noundef !1364
  %i.bd = trunc nuw i8 %i.bc to i1, !dbg !10545
  br i1 %i.bd, label %bb.i, label %bb.j, !dbg !10548

bb.i:                                             ; preds = %.noexc.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 8, !dbg !10549
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !10549, !noalias !10200, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.bf, !10049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9472)
    #dbg_value(i8 -2, !10049, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9472)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10550, !noalias !10200
  br label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread.i, !dbg !10551

bb.j:                                             ; preds = %.noexc.i
  %i.bg = load i8, ptr %i.ax, align 1, !dbg !10552, !range !3840, !noalias !10200, !noundef !1364
  %i.bh = trunc nuw i8 %i.bg to i1, !dbg !10552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !10550, !noalias !10200
  br i1 %i.bh, label %bb.k, label %bb.s, !dbg !10548

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !10553, !noalias !10200
  %i.bi = load ptr, ptr %i.v, align 8, !dbg !10554, !alias.scope !10203, !noalias !10105, !nonnull !1364, !align !3542, !noundef !1364 ; 20 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10204), !dbg !10555
  call void @llvm.experimental.noalias.scope.decl(metadata !10205), !dbg !10555
    #dbg_declare(ptr poison, !10206, !DIExpression(), !9482)
    #dbg_value(ptr %i.bi, !10220, !DIExpression(), !9483)
    #dbg_declare(ptr poison, !10219, !DIExpression(), !9482)
  call void @llvm.experimental.noalias.scope.decl(metadata !10223), !dbg !10556
  call void @llvm.experimental.noalias.scope.decl(metadata !10224), !dbg !10556
    #dbg_value(ptr %i.bi, !10225, !DIExpression(), !9489)
  call void @llvm.experimental.noalias.scope.decl(metadata !10229), !dbg !10557
  call void @llvm.experimental.noalias.scope.decl(metadata !10230), !dbg !10557
    #dbg_value(ptr %i.bi, !10231, !DIExpression(), !9496)
    #dbg_declare(ptr poison, !10234, !DIExpression(), !9497)
  call void @llvm.experimental.noalias.scope.decl(metadata !10238), !dbg !10558
  call void @llvm.experimental.noalias.scope.decl(metadata !10239), !dbg !10558
    #dbg_value(ptr %i.bi, !10240, !DIExpression(), !9507)
    #dbg_declare(ptr poison, !10241, !DIExpression(), !9508)
    #dbg_value(ptr %i.bi, !10247, !DIExpression(), !9511)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24, !dbg !10559 ; 5 uses
    #dbg_value(ptr %i.bj, !3132, !DIExpression(), !9513)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 40, !dbg !10560 ; 14 uses
  %i.bl = load i64, ptr %i.bk, align 8, !dbg !10560, !alias.scope !10249, !noalias !10250, !noundef !1364
  %i.bm = add i64 %i.bl, 1, !dbg !10560
  store i64 %i.bm, ptr %i.bk, align 8, !dbg !10560, !alias.scope !10249, !noalias !10250
    #dbg_value(ptr %i.bi, !10251, !DIExpression(), !9519)
    #dbg_value(ptr %i.bi, !10254, !DIExpression(), !9522)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 16, !dbg !10561
    #dbg_value(ptr poison, !10252, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9523)
    #dbg_value(i64 poison, !10252, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9523)
  store i64 0, ptr %i.bn, align 8, !dbg !10562, !alias.scope !10256, !noalias !10250
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !10563, !noalias !10257
  invoke void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %.noexc188.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10564, !noalias !10201

.noexc188.i:                                      ; preds = %bb.k
  %i.bo = load i64, ptr %i.j, align 8, !dbg !10563, !range !3544, !noalias !10257, !noundef !1364 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 2, !dbg !10563
  %i.bq = load ptr, ptr %i.ay, align 8, !dbg !10565, !noalias !10257 ; 8 uses
  br i1 %i.bp, label %_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB1q_5EventNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB3t_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit.thread6.i.i.i, label %bb.l, !dbg !10566

_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB1q_5EventNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB3t_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit.thread6.i.i.i: ; preds = %.noexc188.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10567, !noalias !10257
  br label %_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB1q_5EventNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB3t_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit._crit_edge.i.i.i, !dbg !10548

bb.l:                                             ; preds = %.noexc188.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !10568, !noalias !10257 ; 3 uses
  %i.br = trunc nuw i64 %i.bo to i1, !dbg !10566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  br i1 %i.br, label %_RINvXs3_NtCs9xKKqPmwf7Y_10serde_core2deINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB1q_5EventNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB3t_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit.i.i.i, label %bb.m, !dbg !10566

bb.m:                                             ; preds = %bb.l
    #dbg_value(ptr %i.bq, !10244, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9524)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10244, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9524)
  call void @llvm.experimental.noalias.scope.decl(metadata !10259), !dbg !10569
    #dbg_declare(ptr poison, !10260, !DIExpression(), !9530)
    #dbg_value(ptr %i.bq, !10264, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9531)
    #dbg_value(ptr %i.bq, !10267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9534)
    #dbg_value(ptr %i.bq, !10267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9536)
    #dbg_value(ptr %i.bq, !10267, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9538)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10264, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9531)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9534)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9536)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10267, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9538)
    #dbg_declare(ptr poison, !10263, !DIExpression(), !9530)
    #dbg_value(ptr @2, !10268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9534)
    #dbg_value(i64 4, !10268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9534)
    #dbg_value(ptr @3, !10268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9536)
    #dbg_value(i64 8, !10268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9536)
    #dbg_value(ptr @4, !10268, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9538)
    #dbg_value(i64 11, !10268, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9538)
    #dbg_value(ptr %i.bq, !10270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9546)
    #dbg_value(ptr %i.bq, !10270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9549)
    #dbg_value(ptr %i.bq, !10270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9552)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9546)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9549)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9552)
    #dbg_value(ptr poison, !10276, !DIExpression(), !9553)
    #dbg_value(ptr @2, !10271, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9546)
    #dbg_value(i64 4, !10271, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9546)
    #dbg_value(ptr poison, !10277, !DIExpression(), !9554)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10272, !DIExpression(), !9555)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10283, !DIExpression(), !9561)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10286, !DIExpression(), !9562)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10273, !DIExpression(), !9563)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10283, !DIExpression(), !9565)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10287, !DIExpression(), !9566)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10274, !DIExpression(), !9567)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10283, !DIExpression(), !9569)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10288, !DIExpression(), !9570)
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.q [
    i64 4, label %bb.n
    i64 8, label %bb.o
    i64 11, label %bb.p
  ], !dbg !10570

bb.n:                                             ; preds = %bb.m
    #dbg_value(ptr %i.bq, !10284, !DIExpression(), !9561)
    #dbg_value(ptr @2, !10285, !DIExpression(), !9561)
  %i.bs = load i32, ptr %i.bq, align 1, !dbg !10571
  %i.bt = icmp ne i32 %i.bs, 1701669236, !dbg !10571
  %i.bu = zext i1 %i.bt to i32, !dbg !10571
  %i.bv = icmp eq i32 %i.bu, 0, !dbg !10571
  br i1 %i.bv, label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread550.i, label %bb.q, !dbg !10572

bb.o:                                             ; preds = %bb.m
    #dbg_value(ptr %i.bq, !10284, !DIExpression(), !9565)
    #dbg_value(ptr @3, !10285, !DIExpression(), !9565)
  %i.bw = load i64, ptr %i.bq, align 1, !dbg !10573
  %i.bx = icmp ne i64 %i.bw, 7235419212958626407, !dbg !10573
  %i.by = zext i1 %i.bx to i32, !dbg !10573
  %i.bz = icmp eq i32 %i.by, 0, !dbg !10573
  br i1 %i.bz, label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread550.i, label %bb.q, !dbg !10574

bb.p:                                             ; preds = %bb.m
    #dbg_value(ptr %i.bq, !10284, !DIExpression(), !9569)
    #dbg_value(ptr @4, !10285, !DIExpression(), !9569)
  %i.ca = load i64, ptr %i.bq, align 1, !dbg !10575
  %i.cb = xor i64 %i.ca, 8245922002648263028, !dbg !10575
  %i.cc = getelementptr i8, ptr %i.bq, i64 3, !dbg !10575
  %i.cd = load i64, ptr %i.cc, align 1, !dbg !10575
  %i.ce = xor i64 %i.cd, 8386104319403253605, !dbg !10575
  %i.cf = or i64 %i.cb, %i.ce, !dbg !10575
  %i.cg = icmp ne i64 %i.cf, 0, !dbg !10575
  %i.ch = zext i1 %i.cg to i32, !dbg !10575
  %i.ci = icmp eq i32 %i.ch, 0, !dbg !10575
  br i1 %i.ci, label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread550.i, label %bb.q, !dbg !10576

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
    #dbg_value(ptr %i.bq, !10265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9571)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !10265, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !9571)
    #dbg_value(i8 13, !10265, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9571)
  store i8 13, ptr %i.k, align 8, !dbg !10577, !alias.scope !10292, !noalias !10200
  store ptr %i.bq, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !10577, !alias.scope !10292, !noalias !10200
  store i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, ptr %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !10577, !alias.scope !10292, !noalias !10200
  br label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread550.i, !dbg !10578

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread550.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %.sroa.0234.0.copyload.pr.i = phi i8 [ 23, %bb.o ], [ 13, %bb.q ], [ 22, %bb.n ], [ 24, %bb.p ], !dbg !10552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !10567, !noalias !10257
  %.sroa.10.0.copyload.pre.i = load ptr, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !dbg !10552, !noalias !10293
    #dbg_value(i8 %.sroa.0234.0.copyload.pr.i, !10049, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9472)
    #dbg_value(ptr %.sroa.10.0.copyload.pre.i, !10049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9472)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i, i64 16, i1 false), !dbg !10552, !noalias !10293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !10579, !noalias !10200
    #dbg_value(i8 %.sroa.0234.0.copyload.pr.i, !10049, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !9472)
    #dbg_value(ptr %.sroa.10.0.copyload.pre.i, !10049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9472)
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB2s_5EventNtB1l_11Deserialize11deserialize9___VisitorECsi2C7WdEh0SA_3h3i:bb.a
  br label %bb.ar, !dbg !10654

bb.ar:                                            ; preds = %bb.as, %.lr.ph.i.i.i.i207.i
  %i.ej = phi i64 [ %.promoted.i.i.i.i204.i, %.lr.ph.i.i.i.i207.i ], [ %i.em, %bb.as ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10418), !dbg !10655
    #dbg_value(ptr %i.bj, !3128, !DIExpression(), !9752)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ej, !dbg !10656
  %i.el = load i8, ptr %i.ek, align 1, !dbg !10656, !noalias !10419, !noundef !1364
  switch i8 %i.el, label %bb.at [
    i8 32, label %bb.as
    i8 10, label %bb.as
    i8 9, label %bb.as
    i8 13, label %bb.as
    i8 58, label %bb.au
  ], !dbg !10657, !prof !4052

bb.as:                                            ; preds = %bb.ar, %bb.ar, %bb.ar, %bb.ar
    #dbg_value(ptr %i.bi, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9756)
  %i.em = add i64 %i.ej, 1, !dbg !10658           ; 3 uses
  store i64 %i.em, ptr %i.bk, align 8, !dbg !10658, !alias.scope !10420, !noalias !10416
    #dbg_value(ptr %i.bi, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9752)
  %exitcond.not.i.i.i.i208.i = icmp eq i64 %i.em, %i.eg, !dbg !10654
  br i1 %exitcond.not.i.i.i.i208.i, label %.loopexit.i.i.i205.i, label %bb.ar, !dbg !10654

.loopexit.i.i.i205.i:                             ; preds = %bb.aq, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10659, !noalias !10421
  store i64 3, ptr %i.b, align 8, !dbg !10659, !noalias !10421
  %i.en = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc209.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10660, !noalias !10201

.noexc209.i:                                      ; preds = %.loopexit.i.i.i205.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10661, !noalias !10421
  br label %.loopexit557.i, !dbg !10662

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10663, !noalias !10421
  store i64 6, ptr %i.c, align 8, !dbg !10663, !noalias !10421
  %i.eo = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bi, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %.noexc210.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10664, !noalias !10201

.noexc210.i:                                      ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !10665, !noalias !10421
  br label %.loopexit557.i, !dbg !10666

bb.au:                                            ; preds = %bb.ar
    #dbg_value(ptr %i.bi, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !9760)
  %i.ep = add i64 %i.ej, 1, !dbg !10667
  store i64 %i.ep, ptr %i.bk, align 8, !dbg !10667, !alias.scope !10422, !noalias !10416
    #dbg_declare(ptr poison, !10423, !DIExpression(), !9765)
    #dbg_value(ptr %i.bi, !10427, !DIExpression(), !9766)
    #dbg_declare(ptr poison, !10426, !DIExpression(), !9765)
  invoke void @_RINvXse_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatENtB8_11Deserialize11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2u_4read9SliceReadEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.bi)
          to label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEECsi2C7WdEh0SA_3h3i.exit.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10668, !noalias !10201

.invoke:                                          ; preds = %bb.w, %bb.u
  %i.eq = phi ptr [ @2, %bb.u ], [ @4, %bb.w ]
  %i.er = phi i64 [ 4, %bb.u ], [ 11, %bb.w ]
  %i.es = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error15duplicate_fieldCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eq, i64 noundef %i.er)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10546, !noalias !10201

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.au
  %.pre537.i = load i8, ptr %i.s, align 8, !dbg !10669, !range !3840, !noalias !10105
  %i.et = trunc nuw i8 %.pre537.i to i1, !dbg !10669
  br i1 %i.et, label %.loopexit557.i.loopexit, label %bb.av, !dbg !10670

.loopexit557.i.loopexit:                          ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEECsi2C7WdEh0SA_3h3i.exit.i
  %.pre = load ptr, ptr %i.az, align 8, !dbg !10671, !noalias !10105
  br label %.loopexit557.i, !dbg !10671

.loopexit557.i:                                   ; preds = %.noexc209.i, %.noexc210.i, %.loopexit557.i.loopexit
  %i.eu = phi ptr [ %.pre, %.loopexit557.i.loopexit ], [ %i.en, %.noexc209.i ], [ %i.eo, %.noexc210.i ], !dbg !10671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10650, !noalias !10105
    #dbg_value(ptr %i.eu, !10295, !DIExpression(), !9768)
    #dbg_value(ptr %i.eu, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !10587

bb.av:                                            ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueINtNtCskKLDkoKarTP_4core6option6OptionNtCs3JBf551F2Kj_4qlog10TimeFormatEECsi2C7WdEh0SA_3h3i.exit.i
  %i.ev = load i8, ptr %i.ba, align 1, !dbg !10672, !range !10431, !noalias !10105, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !10650, !noalias !10105
    #dbg_value(i8 %i.ev, !9939, !DIExpression(), !9451)
  br label %.outer898, !dbg !10546

.loopexit.split-lp258.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ab, %bb.aa, %.loopexit.i.i.i
  %lpad.loopexit.split-lp893 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q) #16
          to label %.body212.i unwind label %bb.bc, !dbg !10673, !noalias !10201

_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.ab
  %.pr.i = load i8, ptr %i.p, align 8, !dbg !10674, !noalias !10105 ; 2 uses
  %i.ew = icmp eq i8 %.pr.i, -1, !dbg !10674
  br i1 %i.ew, label %.loopexit262.loopexit.i, label %bb.aw, !dbg !10675

.loopexit262.loopexit.i:                          ; preds = %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit.i
  %.pre.i = load ptr, ptr %.sroa.5103.0..sroa_idx.i, align 8, !dbg !10676, !noalias !10105
  br label %.loopexit262.i, !dbg !10676

.loopexit262.i:                                   ; preds = %.loopexit262.loopexit.i, %.noexc191.i, %.noexc190.i
  %i.ex = phi ptr [ %.pre.i, %.loopexit262.loopexit.i ], [ %i.cx, %.noexc190.i ], [ %i.cy, %.noexc191.i ], !dbg !10676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10673, !noalias !10105
    #dbg_value(ptr %i.ex, !10295, !DIExpression(), !9770)
    #dbg_value(ptr %i.ex, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(32) %i.q)
          to label %bb.bb unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10673, !noalias !10201

bb.aw:                                            ; preds = %_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess15next_value_seedNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.653.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4102.0..sroa_idx.i, i64 7, i1 false), !dbg !10677, !noalias !10105
  %.sroa.5103.0.copyload.i = load ptr, ptr %.sroa.5103.0..sroa_idx.i, align 8, !dbg !10677, !noalias !10105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.855.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6104.0..sroa_idx.i, i64 16, i1 false), !dbg !10677, !noalias !10105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !10673, !noalias !10105
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false), !dbg !10592, !noalias !10105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10673, !noalias !10105
  store i8 %.pr.i, ptr %.sroa.552.0..sroa_idx.i, align 8, !dbg !10592, !noalias !10105
  store ptr %.sroa.5103.0.copyload.i, ptr %.sroa.754.0..sroa_idx.i, align 8, !dbg !10592, !noalias !10105
    #dbg_value(ptr %i.u, !10433, !DIExpression(), !9775)
    #dbg_value(ptr %i.u, !10442, !DIExpression(), !9778)
    #dbg_declare(ptr %i.r, !10437, !DIExpression(), !9779)
    #dbg_value(i64 64, !10447, !DIExpression(), !9784)
  %i.ey = load i64, ptr %i.aw, align 8, !dbg !10678, !alias.scope !10456, !noalias !10105, !noundef !1364 ; 3 uses
    #dbg_value(i64 %i.ey, !10438, !DIExpression(), !9787)
    #dbg_value(i64 %i.ey, !10457, !DIExpression(), !9790)
    #dbg_value(ptr %i.u, !10454, !DIExpression(), !9791)
  %i.ez = load i64, ptr %i.u, align 8, !dbg !10679, !range !4026, !alias.scope !10456, !noalias !10105, !noundef !1364
  %i.fa = icmp eq i64 %i.ey, %i.ez, !dbg !10680
  br i1 %i.fa, label %bb.ax, label %bb.ba, !dbg !10680

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEE8grow_oneCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.ba unwind label %bb.ay, !dbg !10681, !noalias !10462

bb.ay:                                            ; preds = %bb.ax
  %i.fb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentBY_EEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.r) #16
          to label %.body212.i unwind label %bb.az, !dbg !10682, !noalias !10201

bb.az:                                            ; preds = %bb.ay
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10683, !noalias !10201
  unreachable, !dbg !10683

bb.ba:                                            ; preds = %bb.ax, %bb.aw
  %i.fd = load ptr, ptr %i.av, align 8, !dbg !10684, !alias.scope !10456, !noalias !10105, !nonnull !1364, !noundef !1364
    #dbg_value(ptr %i.fd, !10460, !DIExpression(), !9790)
  %i.fe = getelementptr inbounds nuw [64 x i8], ptr %i.fd, i64 %i.ey, !dbg !10685
    #dbg_value(ptr %i.fe, !10440, !DIExpression(), !9800)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.fe, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !dbg !10686, !noalias !10201
  %i.ff = add i64 %i.ey, 1, !dbg !10687
  store i64 %i.ff, ptr %i.aw, align 8, !dbg !10687, !alias.scope !10456, !noalias !10105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10673, !noalias !10105
  br label %bb.h, !dbg !10586

bb.bb:                                            ; preds = %.loopexit262.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !10673, !noalias !10105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !10673, !noalias !10105
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !10587

bb.bc:                                            ; preds = %bb.cj, %bb.cd, %bb.bz, %.loopexit.split-lp258.i.loopexit.split-lp.loopexit.split-lp, %.body212.i
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10688, !noalias !10201
  unreachable, !dbg !10688

bb.bd:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !10516, !noalias !10105
    #dbg_value(ptr @2, !10169, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9801)
    #dbg_value(ptr @2, !10176, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9802)
    #dbg_value(ptr @2, !10174, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9803)
    #dbg_value(i64 4, !10169, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9801)
    #dbg_value(i64 4, !10176, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9802)
    #dbg_value(i64 4, !10174, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9803)
  invoke void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXs1e_NtB28_5implsdNtB28_11Deserialize11deserialize16PrimitiveVisitorECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 4)
          to label %bb.be unwind label %.loopexit.loopexit.i.loopexit.loopexit.loopexit.split-lp, !dbg !10689, !noalias !10201

bb.be:                                            ; preds = %bb.bd
  %i.fh = load i64, ptr %i.o, align 8, !dbg !10690, !range !3968, !noalias !10105, !noundef !1364
  %i.fi = trunc nuw i64 %i.fh to i1, !dbg !10691
  %i.fj = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !10692 ; 2 uses
  br i1 %i.fi, label %bb.bf, label %bb.bg, !dbg !10691

bb.bf:                                            ; preds = %bb.be
  %i.fk = load ptr, ptr %i.fj, align 8, !dbg !10693, !noalias !10105, !nonnull !1364, !align !3542, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10694, !noalias !10105
    #dbg_value(ptr %i.fk, !10295, !DIExpression(), !9805)
    #dbg_value(ptr %i.fk, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !10695

bb.bg:                                            ; preds = %bb.be
  %i.fl = load double, ptr %i.fj, align 8, !dbg !10696, !noalias !10105, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !10694, !noalias !10105
    #dbg_value(double %i.fl, !9953, !DIExpression(), !9806)
  br label %bb.bh, !dbg !10694

bb.bh:                                            ; preds = %bb.bg, %bb.s
  %.sroa.059.0.i = phi double [ %i.fl, %bb.bg ], [ %.sroa.415.0.i.ph906, %bb.s ], !dbg !10516
    #dbg_value(double %.sroa.059.0.i, !9953, !DIExpression(), !9806)
  %storemerge.i = select i1 %2, ptr %.sroa.11.0.i.ph, ptr null, !dbg !10697 ; 5 uses
  %not..i = xor i1 %2, true, !dbg !10697
  %.sroa.093.4.i = zext i1 %not..i to i8, !dbg !10697 ; 6 uses
    #dbg_value(ptr %storemerge.i, !9957, !DIExpression(), !9807)
  %.not168.i = icmp eq i8 %.sroa.028.0.i.ph899, -1, !dbg !10698
  %.sroa.062.0.i = select i1 %.not168.i, i8 2, i8 %.sroa.028.0.i.ph899, !dbg !10698
    #dbg_value(i8 %.sroa.062.0.i, !9961, !DIExpression(), !9808)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !10515, !noalias !10105
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !10515, !noalias !10105
  invoke void @_RINvXNvNtCs3JBf551F2Kj_4qlog6eventss9_1__NtB5_9EventDataNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeINtNtNtCsbmN5fM2HLz5_5serde7private2de19FlatMapDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bj unwind label %bb.bi, !dbg !10515, !noalias !10201

bb.bi:                                            ; preds = %bb.bn, %bb.bh
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.bj:                                            ; preds = %bb.bh
  %i.fn = load i64, ptr %i.m, align 8, !dbg !10699, !range !3077, !noalias !10105, !noundef !1364 ; 2 uses
  %i.fo = icmp eq i64 %i.fn, -1, !dbg !10699
  %i.fp = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !10700
  %i.fq = load ptr, ptr %i.fp, align 8, !dbg !10700, !noalias !10105 ; 2 uses
  br i1 %i.fo, label %bb.bk, label %bb.bl, !dbg !10701

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10702, !noalias !10105
    #dbg_value(ptr %i.fq, !10295, !DIExpression(), !9810)
    #dbg_value(ptr %i.fq, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
  br label %bb.bt, !dbg !10703

bb.bl:                                            ; preds = %bb.bj
  %.sroa.5107.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !10704
  %.sroa.578.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16, !dbg !10705 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.578.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5107.0..sroa_idx.i, i64 256, i1 false), !dbg !10704, !noalias !10105
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !10702, !noalias !10105
    #dbg_value(i64 %i.fn, !9932, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9811)
    #dbg_value(ptr %i.fq, !9932, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9811)
  store i64 %i.fn, ptr %i.n, align 8, !dbg !10705, !noalias !10105
  %.sroa.477.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !10705 ; 2 uses
  store ptr %i.fq, ptr %.sroa.477.0..sroa_idx.i, align 8, !dbg !10705, !noalias !10105
  %i.fr = invoke { i64, ptr } @_RINvXs3n_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsINtNtCsexYYUdYSQU6_5alloc5boxed3BoxINtNtNtNtBP_11collections5btree3map8BTreeMapNtNtBP_6string6StringNtNtCsenfyI6F4F2A_10serde_json5value5ValueEENtB9_11Deserialize11deserializeINtNtNtCsbmN5fM2HLz5_5serde7private2de19FlatMapDeserializerNtNtB2q_5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bm unwind label %bb.bz, !dbg !10706, !noalias !10201 ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.fs = extractvalue { i64, ptr } %i.fr, 0, !dbg !10706
  %i.ft = extractvalue { i64, ptr } %i.fr, 1, !dbg !10706 ; 3 uses
    #dbg_value(i64 %i.fs, !10480, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9824)
    #dbg_value(ptr %i.ft, !10480, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9824)
  %i.fu = trunc nuw i64 %i.fs to i1, !dbg !10707
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ft) ]
  br i1 %i.fu, label %bb.bn, label %bb.bo, !dbg !10707

bb.bn:                                            ; preds = %bb.bm
    #dbg_value(ptr %i.ft, !10295, !DIExpression(), !9826)
    #dbg_value(ptr %i.ft, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9EventDataECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(272) %i.n)
          to label %bb.bt unwind label %bb.bi, !dbg !10702, !noalias !10201

bb.bo:                                            ; preds = %bb.bm
    #dbg_value(ptr %i.ft, !9967, !DIExpression(), !9827)
  %.sroa.027.0.copyload28 = load i64, ptr %i.n, align 8, !dbg !10708, !noalias !10509
    #dbg_value(i64 %.sroa.027.0.copyload28, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
  %.sroa.16.0.copyload30 = load ptr, ptr %.sroa.477.0..sroa_idx.i, align 8, !dbg !10708, !noalias !10509
    #dbg_value(ptr %.sroa.16.0.copyload30, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.27, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.578.0..sroa_idx.i, i64 256, i1 false), !dbg !10708, !noalias !10509
    #dbg_value(ptr %i.ft, !9923, !DIExpression(DW_OP_LLVM_fragment, 2176, 64), !10311)
    #dbg_value(double %.sroa.059.0.i, !9923, !DIExpression(DW_OP_LLVM_fragment, 2240, 64), !10311)
    #dbg_value(ptr %storemerge.i, !9923, !DIExpression(DW_OP_LLVM_fragment, 2304, 64), !10311)
    #dbg_value(i8 3, !9923, !DIExpression(DW_OP_LLVM_fragment, 2368, 8), !10311)
    #dbg_value(i8 %.sroa.062.0.i, !9923, !DIExpression(DW_OP_LLVM_fragment, 2384, 8), !10311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10702, !noalias !10105
    #dbg_value(ptr %i.u, !3478, !DIExpression(), !9829)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1i_EEENtNtNtBK_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.bq unwind label %bb.bp, !dbg !10709, !noalias !10201

bb.bp:                                            ; preds = %bb.bo
  %i.fv = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.u, !3483, !DIExpression(), !9831)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body215.i unwind label %bb.br, !dbg !10710, !noalias !10201

bb.bq:                                            ; preds = %bb.bo
    #dbg_value(ptr %i.u, !3483, !DIExpression(), !9833)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i unwind label %bb.bs, !dbg !10711, !noalias !10201

bb.br:                                            ; preds = %bb.bp
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10709, !noalias !10201
  unreachable, !dbg !10709

.body215.i:                                       ; preds = %bb.ca, %bb.bs, %bb.bp, %.body212.i
  %.sroa.0.0490.i = phi i64 [ %.sroa.0.0491.i, %.body212.i ], [ %.sroa.0.0.i.ph, %bb.bp ], [ %.sroa.0.0493.i.a, %bb.bs ], [ %.sroa.0.0494.i, %bb.ca ]
  %.sroa.093.5.i = phi i8 [ %.sroa.093.1.i, %.body212.i ], [ %.sroa.093.4.i, %bb.bp ], [ %.sroa.093.6.i, %bb.bs ], [ %.sroa.093.7.i, %bb.ca ], !dbg !10583
  %.pn176.i = phi { ptr, i32 } [ %.pn174.i, %.body212.i ], [ %i.fv, %bb.bp ], [ %i.fz, %bb.bs ], [ %i.gf, %bb.ca ] ; 2 uses
    #dbg_value(i64 %.sroa.0.0490.i, !9938, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9450)
    #dbg_value(ptr %.sroa.11.0.i.ph, !9938, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9450)
  %i.fx = icmp ne i64 %.sroa.0.0490.i, 0, !dbg !10712
  %i.fy = trunc nuw i8 %.sroa.093.5.i to i1, !dbg !10712
  %or.cond3.i = select i1 %i.fx, i1 %i.fy, i1 false, !dbg !10712
  br i1 %or.cond3.i, label %bb.cj, label %common.resume, !dbg !10712

bb.bs:                                            ; preds = %bb.cb, %bb.bq
  %.sroa.0.0493.i.a = phi i64 [ %.sroa.0.0494.i, %bb.cb ], [ %.sroa.0.0.i.ph, %bb.bq ]
  %.sroa.093.6.i = phi i8 [ %.sroa.093.7.i, %bb.cb ], [ %.sroa.093.4.i, %bb.bq ], !dbg !10583
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %.body215.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10584, !noalias !10105
  br label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtBb_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !10713

bb.bt:                                            ; preds = %bb.bn, %bb.bk
  %.sroa.16.2 = phi ptr [ %i.fq, %bb.bk ], [ %i.ft, %bb.bn ], !dbg !10714 ; 2 uses
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
    #dbg_value(ptr %.sroa.16.2, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !10702, !noalias !10105
    #dbg_value(ptr poison, !3255, !DIExpression(), !9835)
  %i.ga = icmp eq ptr %storemerge.i, null, !dbg !10715
  br i1 %i.ga, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i, label %bb.bu, !dbg !10715

bb.bu:                                            ; preds = %bb.bt
    #dbg_value(ptr poison, !3260, !DIExpression(), !9837)
    #dbg_value(ptr %storemerge.i, !3172, !DIExpression(), !9839)
    #dbg_value(ptr %storemerge.i, !3142, !DIExpression(), !9841)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.11.0.i.ph)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i unwind label %bb.bv, !dbg !10716, !noalias !10201

bb.bv:                                            ; preds = %bb.bu
  %i.gb = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %storemerge.i, !3149, !DIExpression(), !9843)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.11.0.i.ph)
          to label %bb.by unwind label %bb.bw, !dbg !10717, !noalias !10201

bb.bw:                                            ; preds = %bb.bv
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10716, !noalias !10201
  unreachable, !dbg !10716

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i: ; preds = %bb.bu
    #dbg_value(ptr %storemerge.i, !3149, !DIExpression(), !9845)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.11.0.i.ph)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i.i unwind label %bb.bx, !dbg !10718, !noalias !10201

bb.bx:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.by, !dbg !10719

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.gd, %bb.bx ], [ %i.gb, %bb.bv ]
    #dbg_value(ptr poison, !3265, !DIExpression(), !9847)
    #dbg_value(ptr %storemerge.i, !3268, !DIExpression(), !9848)
    #dbg_value(i64 8, !3269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9849)
    #dbg_value(i64 24, !3269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9849)
    #dbg_value(ptr poison, !3288, !DIExpression(), !9851)
    #dbg_value(ptr poison, !3295, !DIExpression(), !9853)
    #dbg_value(ptr %storemerge.i, !3292, !DIExpression(), !9851)
    #dbg_value(ptr %storemerge.i, !3298, !DIExpression(), !9853)
    #dbg_value(ptr %storemerge.i, !3301, !DIExpression(), !9855)
    #dbg_value(ptr %storemerge.i, !3307, !DIExpression(), !9857)
    #dbg_value(i64 8, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9851)
    #dbg_value(i64 8, !3299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9853)
    #dbg_value(i64 8, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9855)
    #dbg_value(i64 8, !3308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9857)
    #dbg_value(i64 24, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9851)
    #dbg_value(i64 24, !3299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9853)
    #dbg_value(i64 24, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9855)
    #dbg_value(i64 24, !3308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9857)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i, i64 noundef 24, i64 noundef 8) #18, !dbg !10720, !noalias !10201
  br label %.body212.i, !dbg !10719

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i.i
    #dbg_value(ptr poison, !3265, !DIExpression(), !9859)
    #dbg_value(ptr %storemerge.i, !3268, !DIExpression(), !9860)
    #dbg_value(i64 8, !3269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9861)
    #dbg_value(i64 24, !3269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9861)
    #dbg_value(ptr poison, !3288, !DIExpression(), !9863)
    #dbg_value(ptr poison, !3295, !DIExpression(), !9865)
    #dbg_value(ptr %storemerge.i, !3292, !DIExpression(), !9863)
    #dbg_value(ptr %storemerge.i, !3298, !DIExpression(), !9865)
    #dbg_value(ptr %storemerge.i, !3301, !DIExpression(), !9867)
    #dbg_value(ptr %storemerge.i, !3307, !DIExpression(), !9869)
    #dbg_value(i64 8, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9863)
    #dbg_value(i64 8, !3299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9865)
    #dbg_value(i64 8, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9867)
    #dbg_value(i64 8, !3308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9869)
    #dbg_value(i64 24, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9863)
    #dbg_value(i64 24, !3299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9865)
    #dbg_value(i64 24, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9867)
    #dbg_value(i64 24, !3308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9869)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %storemerge.i, i64 noundef 24, i64 noundef 8) #18, !dbg !10721, !noalias !10201
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i, !dbg !10715

bb.bz:                                            ; preds = %bb.bl
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9EventDataECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(272) %i.n) #16
          to label %bb.cd unwind label %bb.bc, !dbg !10702, !noalias !10201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %.invoke, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread.i, %.loopexit559.i, %bb.ap, %.loopexit557.i, %bb.bb, %bb.ao, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i.i, %bb.bt, %bb.bf
  %.sroa.16.1 = phi ptr [ %i.fk, %bb.bf ], [ %.sroa.16.2, %bb.bt ], [ %.sroa.16.2, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i.i ], [ %.sroa.10.0241.i, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread.i ], [ %i.ex, %bb.bb ], [ %i.dm, %.loopexit559.i ], [ %i.ed, %bb.ap ], [ %i.es, %.invoke ], [ %i.eu, %.loopexit557.i ], [ %i.eb, %bb.ao ], !dbg !10722 ; 2 uses
  %.sroa.0.0494.i = phi i64 [ %.sroa.0.0.i.ph, %bb.bf ], [ %.sroa.0.0.i.ph, %bb.bt ], [ %.sroa.0.0.i.ph, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i.i ], [ %.sroa.0.0.i.ph, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread.i ], [ %.sroa.0.0.i.ph, %bb.bb ], [ %.sroa.0.0.i.ph, %.loopexit559.i ], [ 0, %bb.ap ], [ %.sroa.0.0.i.ph, %.invoke ], [ %.sroa.0.0.i.ph, %.loopexit557.i ], [ 1, %bb.ao ] ; 3 uses
  %.sroa.093.7.i = phi i8 [ 1, %bb.bf ], [ %.sroa.093.4.i, %bb.bt ], [ %.sroa.093.4.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i.i ], [ 1, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess8next_keyNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtB25_5EventNtB1a_11Deserialize11deserialize7___FieldECsi2C7WdEh0SA_3h3i.exit.thread.i ], [ 1, %bb.bb ], [ 1, %.loopexit559.i ], [ 1, %bb.ap ], [ 1, %.invoke ], [ 1, %.loopexit557.i ], [ 1, %bb.ao ], !dbg !10583 ; 3 uses
    #dbg_value(i64 -1, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
    #dbg_value(ptr %.sroa.16.1, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(ptr %i.u, !3478, !DIExpression(), !9871)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1i_EEENtNtNtBK_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %bb.cb unwind label %bb.ca, !dbg !10723, !noalias !10201

bb.ca:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.u, !3483, !DIExpression(), !9873)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body215.i unwind label %bb.cc, !dbg !10724, !noalias !10201

bb.cb:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i.exit.i
    #dbg_value(ptr %i.u, !3483, !DIExpression(), !9875)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtCskKLDkoKarTP_4core6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1p_EEENtNtNtBR_3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i unwind label %bb.bs, !dbg !10725, !noalias !10201

bb.cc:                                            ; preds = %bb.ca
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10723, !noalias !10201
  unreachable, !dbg !10723

bb.cd:                                            ; preds = %bb.bz, %bb.bi
  %.pn170.ph.i = phi { ptr, i32 } [ %i.ge, %bb.bz ], [ %i.fm, %bb.bi ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i(ptr %storemerge.i) #16
          to label %.body212.i unwind label %bb.bc, !dbg !10726, !noalias !10201

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i: ; preds = %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !10584, !noalias !10105
  %i.gh = trunc nuw i64 %.sroa.0.0494.i to i1, !dbg !10712
  %i.gi = trunc nuw i8 %.sroa.093.7.i to i1, !dbg !10712
  %or.cond.i = and i1 %i.gh, %i.gi, !dbg !10712
    #dbg_value(ptr poison, !3255, !DIExpression(), !9877)
  %i.gj = icmp ne ptr %.sroa.11.0.i.ph, null
  %or.cond254.not.i = select i1 %or.cond.i, i1 %i.gj, i1 false, !dbg !10712
  br i1 %or.cond254.not.i, label %bb.ce, label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtBb_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !10712

bb.ce:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i
    #dbg_value(ptr poison, !3260, !DIExpression(), !9879)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3172, !DIExpression(), !9881)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3142, !DIExpression(), !9883)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.11.0.i.ph)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i227.i unwind label %bb.cf, !dbg !10727, !noalias !10201

bb.cf:                                            ; preds = %bb.ce
  %i.gk = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %.sroa.11.0.i.ph, !3149, !DIExpression(), !9885)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.11.0.i.ph)
          to label %bb.ci unwind label %bb.cg, !dbg !10728, !noalias !10201

bb.cg:                                            ; preds = %bb.cf
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10727, !noalias !10201
  unreachable, !dbg !10727

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i227.i: ; preds = %bb.ce
    #dbg_value(ptr %.sroa.11.0.i.ph, !3149, !DIExpression(), !9887)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.11.0.i.ph)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i unwind label %bb.ch, !dbg !10729, !noalias !10201

bb.ch:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i227.i
  %i.gm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci, !dbg !10730

common.resume:                                    ; preds = %bb.ck, %.body215.i, %bb.ci, %bb.cj
  %common.resume.op = phi { ptr, i32 } [ %.pn176.i, %.body215.i ], [ %eh.lpad-body.i.i226.i, %bb.ci ], [ %.pn176.i, %bb.cj ], [ %i.gq, %bb.ck ]
  resume { ptr, i32 } %common.resume.op, !dbg !10090

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  %eh.lpad-body.i.i226.i = phi { ptr, i32 } [ %i.gm, %bb.ch ], [ %i.gk, %bb.cf ]
    #dbg_value(ptr poison, !3265, !DIExpression(), !9889)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3268, !DIExpression(), !9890)
    #dbg_value(i64 8, !3269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9891)
    #dbg_value(i64 24, !3269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9891)
    #dbg_value(ptr poison, !3288, !DIExpression(), !9893)
    #dbg_value(ptr poison, !3295, !DIExpression(), !9895)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3292, !DIExpression(), !9893)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3298, !DIExpression(), !9895)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3301, !DIExpression(), !9897)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3307, !DIExpression(), !9899)
    #dbg_value(i64 8, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9893)
    #dbg_value(i64 8, !3299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9895)
    #dbg_value(i64 8, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9897)
    #dbg_value(i64 8, !3308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9899)
    #dbg_value(i64 24, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9893)
    #dbg_value(i64 24, !3299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9895)
    #dbg_value(i64 24, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9897)
    #dbg_value(i64 24, !3308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9899)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.i.ph, i64 noundef 24, i64 noundef 8) #18, !dbg !10731, !noalias !10201
  br label %common.resume, !dbg !10730

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i.i227.i
    #dbg_value(ptr poison, !3265, !DIExpression(), !9901)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3268, !DIExpression(), !9902)
    #dbg_value(i64 8, !3269, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9903)
    #dbg_value(i64 24, !3269, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9903)
    #dbg_value(ptr poison, !3288, !DIExpression(), !9905)
    #dbg_value(ptr poison, !3295, !DIExpression(), !9907)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3292, !DIExpression(), !9905)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3298, !DIExpression(), !9907)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3301, !DIExpression(), !9909)
    #dbg_value(ptr %.sroa.11.0.i.ph, !3307, !DIExpression(), !9911)
    #dbg_value(i64 8, !3293, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9905)
    #dbg_value(i64 8, !3299, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9907)
    #dbg_value(i64 8, !3305, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9909)
    #dbg_value(i64 8, !3308, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9911)
    #dbg_value(i64 24, !3293, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9905)
    #dbg_value(i64 24, !3299, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9907)
    #dbg_value(i64 24, !3305, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9909)
    #dbg_value(i64 24, !3308, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9911)
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.0.i.ph, i64 noundef 24, i64 noundef 8) #18, !dbg !10732, !noalias !10201
  br label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtBb_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !10733

bb.cj:                                            ; preds = %.body215.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtB12_6string6StringEEECsi2C7WdEh0SA_3h3i(ptr %.sroa.11.0.i.ph) #16
          to label %common.resume unwind label %bb.bc, !dbg !10712, !noalias !10201

_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtBb_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i
  %.sroa.29.0 = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i ], [ %storemerge.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10734
  %.sroa.28.0 = phi double [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i ], [ %.sroa.059.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10734
  %.sroa.2732.0 = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i ], [ %i.ft, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10734
  %.sroa.16.3 = phi ptr [ %.sroa.16.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i ], [ %.sroa.16.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i ], [ %.sroa.16.0.copyload30, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10516
  %.sroa.027.3 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i ], [ %.sroa.027.0.copyload28, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10516
  %.sroa.3133.0 = phi i8 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxNtNtBG_6string6StringEECsi2C7WdEh0SA_3h3i.exit.i228.i ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit225.i ], [ %.sroa.062.0.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtB4_6option6OptionTNtNtNtCs9xKKqPmwf7Y_10serde_core7private7content7ContentB1v_EEEECsi2C7WdEh0SA_3h3i.exit.i ], !dbg !10734
    #dbg_value(i8 %.sroa.3133.0, !9923, !DIExpression(DW_OP_LLVM_fragment, 2384, 8), !10311)
    #dbg_value(i64 %.sroa.027.3, !9923, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10311)
    #dbg_value(ptr %.sroa.16.3, !9923, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10311)
    #dbg_value(ptr %.sroa.2732.0, !9923, !DIExpression(DW_OP_LLVM_fragment, 2176, 64), !10311)
    #dbg_value(double %.sroa.28.0, !9923, !DIExpression(DW_OP_LLVM_fragment, 2240, 64), !10311)
    #dbg_value(ptr %.sroa.29.0, !9923, !DIExpression(DW_OP_LLVM_fragment, 2304, 64), !10311)
    #dbg_value(i8 3, !9923, !DIExpression(DW_OP_LLVM_fragment, 2368, 8), !10311)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.3.i), !dbg !10735
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !10735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !10735
  %i.gn = load i8, ptr %i.am, align 8, !dbg !10736, !noundef !1364
  %i.go = add i8 %i.gn, 1, !dbg !10736
  store i8 %i.go, ptr %i.am, align 8, !dbg !10736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !10737
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !10738
  store i64 %.sroa.027.3, ptr %i.w, align 8, !dbg !10738
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !10738
  store ptr %.sroa.16.3, ptr %.sroa.16.0..sroa_idx, align 8, !dbg !10738
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !10738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.27.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.27, i64 256, i1 false), !dbg !10738
  %.sroa.2732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 272, !dbg !10738
  store ptr %.sroa.2732.0, ptr %.sroa.2732.0..sroa_idx, align 8, !dbg !10738
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 280, !dbg !10738
  store double %.sroa.28.0, ptr %.sroa.28.0..sroa_idx, align 8, !dbg !10738
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 288, !dbg !10738
  store ptr %.sroa.29.0, ptr %.sroa.29.0..sroa_idx, align 8, !dbg !10738
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 296, !dbg !10738
  store i8 3, ptr %.sroa.30.0..sroa_idx, align 8, !dbg !10738
  %.sroa.3133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 298, !dbg !10738
  store i8 %.sroa.3133.0, ptr %.sroa.3133.0..sroa_idx, align 2, !dbg !10738
  %i.gp = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.cl unwind label %bb.ck, !dbg !10739 ; 5 uses

bb.ck:                                            ; preds = %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtBb_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3JBf551F2Kj_4qlog6events5EventNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(304) %i.w) #16
          to label %common.resume unwind label %bb.co, !dbg !10740

bb.cl:                                            ; preds = %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss1_1__NtBb_5EventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtBW_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2z_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.x, ptr noundef nonnull align 8 dereferenceable(304) %i.w, i64 304, i1 false), !dbg !10737
  %i.gr = getelementptr inbounds nuw i8, ptr %i.x, i64 304, !dbg !10737
  store ptr %i.gp, ptr %i.gr, align 8, !dbg !10737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !10740
  %i.gs = load i64, ptr %i.x, align 8, !dbg !10737, !range !3077, !noundef !1364 ; 2 uses
  %i.gt = icmp eq i64 %i.gs, -1, !dbg !10737
  br i1 %i.gt, label %bb.cn, label %bb.cm, !dbg !10741

bb.cm:                                            ; preds = %bb.cl
  %.not = icmp eq ptr %i.gp, null, !dbg !10737
  br i1 %.not, label %bb.cr, label %.thread43.thread, !dbg !10741

bb.cn:                                            ; preds = %bb.cl
  %i.gu = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !10742
  %i.gv = load ptr, ptr %i.gu, align 8, !dbg !10742, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.gv, !9922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10102)
    #dbg_value(i64 -1, !9922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10102)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27), !dbg !10743
    #dbg_value(i64 %i.gs, !9922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10102)
    #dbg_value(ptr %i.gv, !9922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10102)
  %.not52 = icmp eq ptr %i.gp, null, !dbg !10743
  br i1 %.not52, label %.thread43.thread472, label %bb.cp, !dbg !10743

.thread43.thread:                                 ; preds = %bb.cm
    #dbg_value(ptr %i.gp, !9922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10102)
    #dbg_value(i64 -1, !9922, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10102)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.27), !dbg !10743
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events5EventECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(304) %i.x), !dbg !10743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !10743
  br label %bb.cq, !dbg !10535

bb.co:                                            ; preds = %bb.ck
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !10744
  unreachable, !dbg !10744

.thread43.thread472:                              ; preds = %bb.cp, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !10743
  br label %bb.cq, !dbg !10535

bb.cp:                                            ; preds = %bb.cn
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i(ptr nonnull %i.gp), !dbg !10743
  br label %.thread43.thread472, !dbg !10743

bb.cq:                                            ; preds = %.thread43.thread472, %.thread43.thread, %bb.e
  %.sroa.8.1 = phi ptr [ %i.gv, %.thread43.thread472 ], [ %i.aq, %bb.e ], [ %i.gp, %.thread43.thread ], !dbg !10745
    #dbg_value(ptr %.sroa.8.1, !9922, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10102)
    #dbg_value(ptr %.sroa.8.1, !9927, !DIExpression(), !10517)
    #dbg_value(ptr %1, !3881, !DIExpression(), !9913)
    #dbg_value(ptr %.sroa.8.1, !3885, !DIExpression(), !9913)
  %i.gx = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsi2C7WdEh0SA_3h3i(ptr noalias noundef nonnull align 8 %.sroa.8.1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !10746
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10747
  store ptr %i.gx, ptr %i.gy, align 8, !dbg !10747
  store i64 -1, ptr %0, align 8, !dbg !10747
  br label %bb.cs, !dbg !10748

bb.cr:                                            ; preds = %bb.cm
    #dbg_value(i64 %i.gs, !9924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10518)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !10749
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !10749
    #dbg_value(ptr %.sroa.4.0.copyload, !9924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10518)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !10749
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !10750
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5.0..sroa_idx, i64 288, i1 false), !dbg !10749
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB2v_9JsonEventNtB1l_11Deserialize11deserialize9___VisitorECsi2C7WdEh0SA_3h3i:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !12047), !dbg !12683
    #dbg_value(ptr %i.aq, !3981, !DIExpression(), !11036)
  call void @llvm.experimental.noalias.scope.decl(metadata !12048), !dbg !12684
    #dbg_value(ptr %i.aq, !3999, !DIExpression(), !11040)
    #dbg_declare(ptr poison, !4002, !DIExpression(), !11041)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !dbg !12685, !noalias !12049
  invoke fastcc void @_RINvNvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB8_9SeqAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.ak, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %.noexc.i unwind label %bb.y, !dbg !12685, !noalias !12045, !inline_history !11044

.noexc.i:                                         ; preds = %bb.s
  %i.cw = load i8, ptr %i.ak, align 8, !dbg !12685, !range !3840, !noalias !12049, !noundef !1364
  %i.cx = trunc nuw i8 %i.cw to i1, !dbg !12685
  br i1 %i.cx, label %bb.t, label %bb.u, !dbg !12686

bb.t:                                             ; preds = %.noexc.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ak, i64 8, !dbg !12687
  %i.cz = load ptr, ptr %i.cy, align 8, !dbg !12687, !noalias !12049, !nonnull !1364, !align !3542, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !12688, !noalias !12049
  br label %bb.ab, !dbg !12689

bb.u:                                             ; preds = %.noexc.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.ak, i64 1, !dbg !12690
  %i.db = load i8, ptr %i.da, align 1, !dbg !12690, !range !3840, !noalias !12049, !noundef !1364
  %i.dc = trunc nuw i8 %i.db to i1, !dbg !12690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !12688, !noalias !12049
  br i1 %i.dc, label %bb.v, label %bb.aa, !dbg !12686

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !12691, !noalias !12049
  %i.dd = load ptr, ptr %i.aq, align 8, !dbg !12692, !alias.scope !12050, !noalias !11977, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_declare(ptr poison, !4011, !DIExpression(), !11046)
    #dbg_value(ptr %i.dd, !4015, !DIExpression(), !11047)
    #dbg_declare(ptr poison, !4014, !DIExpression(), !11046)
    #dbg_value(ptr %i.dd, !4018, !DIExpression(), !11049)
  invoke fastcc void @_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2s_5ValueNtB1l_11Deserialize11deserialize12ValueVisitorECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %i.aj, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dd) #20
          to label %.noexc54.i unwind label %bb.y, !dbg !12693, !noalias !12045, !inline_history !11044

.noexc54.i:                                       ; preds = %bb.v
  %i.de = load i64, ptr %i.aj, align 8, !dbg !12691, !range !3443, !noalias !12049, !noundef !1364 ; 2 uses
  %i.df = icmp eq i64 %i.de, -1, !dbg !12691
  %i.dg = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !12694
  %i.dh = load ptr, ptr %i.dg, align 8, !dbg !12694, !noalias !12051 ; 2 uses
  br i1 %i.df, label %bb.w, label %bb.z, !dbg !12686

bb.w:                                             ; preds = %.noexc54.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !12695, !noalias !12049
  br label %bb.ab, !dbg !12696

bb.x:                                             ; preds = %bb.o
  %i.di = tail call noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error14invalid_lengthCsi2C7WdEh0SA_3h3i(i64 noundef 1, ptr noundef nonnull @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9), !dbg !12667, !noalias !12045
  br label %bb.ae, !dbg !12697

bb.y:                                             ; preds = %bb.aa, %bb.v, %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ap) #16
          to label %common.resume unwind label %bb.af, !dbg !12697, !noalias !12045

bb.z:                                             ; preds = %.noexc54.i
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !12690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.0..sroa_idx.i, i64 56, i1 false), !dbg !12690, !noalias !12052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !12695, !noalias !12049
    #dbg_value(i64 %i.de, !11929, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11050)
    #dbg_value(ptr %i.dh, !11929, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11050)
  %.sroa.065.0.copyload66 = load i64, ptr %i.ap, align 8, !dbg !12698, !noalias !12052
    #dbg_value(i64 %.sroa.065.0.copyload66, !11873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
  %.sroa.8.0.copyload68 = load ptr, ptr %.sroa.413.0..sroa_idx.i, align 8, !dbg !12698, !noalias !12052
    #dbg_value(ptr %.sroa.8.0.copyload68, !11873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
  %.sroa.11.0.copyload70 = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !12698, !noalias !12052
    #dbg_value(i64 %.sroa.11.0.copyload70, !11873, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12053)
    #dbg_value(i64 %i.de, !11873, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12053)
    #dbg_value(ptr %i.dh, !11873, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12053)
    #dbg_value(double %i.ci, !11873, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !12053)
    #dbg_value(i8 0, !11873, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !12053)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !12697, !noalias !11977
  br label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !12699

bb.aa:                                            ; preds = %bb.u
  %i.dk = invoke noundef nonnull align 8 ptr @_RNvYNtNtCsenfyI6F4F2A_10serde_json5error5ErrorNtNtCs9xKKqPmwf7Y_10serde_core2de5Error14invalid_lengthCsi2C7WdEh0SA_3h3i(i64 noundef 2, ptr noundef nonnull @8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @9)
          to label %bb.ab unwind label %bb.y, !dbg !12683, !noalias !12045

bb.ab:                                            ; preds = %bb.aa, %bb.w, %bb.t
  %.sink80.i = phi ptr [ %i.cz, %bb.t ], [ %i.dh, %bb.w ], [ %i.dk, %bb.aa ]
    #dbg_value(ptr %.sink80.i, !11873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 -1, !11873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %i.ap, !3172, !DIExpression(), !11052)
    #dbg_value(ptr %i.ap, !3142, !DIExpression(), !11054)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i unwind label %bb.ac, !dbg !12700, !noalias !12045

bb.ac:                                            ; preds = %bb.ab
  %i.dl = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ap, !3149, !DIExpression(), !11056)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %common.resume unwind label %bb.ad, !dbg !12701, !noalias !12045

bb.ad:                                            ; preds = %bb.ac
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !12700, !noalias !12045
  unreachable, !dbg !12700

common.resume:                                    ; preds = %.body.i57, %.body.i, %bb.fr, %bb.ah, %bb.fk, %bb.fn, %bb.fq, %bb.y, %bb.ac
  %common.resume.op = phi { ptr, i32 } [ %.pn153.i, %bb.fk ], [ %i.dj, %bb.y ], [ %i.dl, %bb.ac ], [ %i.no, %bb.fn ], [ %.pn153.i, %bb.fq ], [ %i.nt, %bb.fr ], [ %eh.lpad-body.i, %.body.i ], [ %i.ds, %bb.ah ], [ %eh.lpad-body.i58, %.body.i57 ]
  resume { ptr, i32 } %common.resume.op, !dbg !11958

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %bb.ab
    #dbg_value(ptr %i.ap, !3149, !DIExpression(), !11058)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ap), !dbg !12702, !noalias !12045
  br label %bb.ae, !dbg !12697

bb.ae:                                            ; preds = %bb.n, %bb.q, %bb.x, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i
  %.sroa.8.0 = phi ptr [ %.sink80.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i ], [ %i.di, %bb.x ], [ %i.cu, %bb.q ], [ %i.cm, %bb.n ], !dbg !12667
    #dbg_value(i64 -1, !11873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %.sroa.8.0, !11873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !12697, !noalias !11977
  br label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !12703

bb.af:                                            ; preds = %bb.y
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !12653, !noalias !12045
  unreachable, !dbg !12653

_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.i, %bb.l, %bb.r, %bb.z, %bb.ae
  %.sroa.1473.0 = phi double [ %i.ci, %bb.z ], [ undef, %bb.ae ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %bb.i ], !dbg !12704
  %.sroa.1272.0 = phi ptr [ %i.dh, %bb.z ], [ undef, %bb.ae ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %bb.i ], !dbg !12704
  %.sroa.1171.0 = phi i64 [ %i.de, %bb.z ], [ undef, %bb.ae ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %bb.i ], !dbg !12704
  %.sroa.11.0 = phi i64 [ %.sroa.11.0.copyload70, %bb.z ], [ undef, %bb.ae ], [ undef, %bb.r ], [ undef, %bb.l ], [ undef, %bb.i ], !dbg !12704
  %.sroa.8.1 = phi ptr [ %.sroa.8.0.copyload68, %bb.z ], [ %.sroa.8.0, %bb.ae ], [ %i.cv, %bb.r ], [ %i.ch, %bb.l ], [ %i.bz, %bb.i ], !dbg !12653
  %.sroa.065.1 = phi i64 [ %.sroa.065.0.copyload66, %bb.z ], [ -1, %bb.ae ], [ -1, %bb.r ], [ -1, %bb.l ], [ -1, %bb.i ], !dbg !12653
    #dbg_value(i64 %.sroa.065.1, !11873, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12053)
    #dbg_value(ptr %.sroa.8.1, !11873, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12053)
    #dbg_value(i64 %.sroa.11.0, !11873, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12053)
    #dbg_value(i64 %.sroa.1171.0, !11873, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12053)
    #dbg_value(ptr %.sroa.1272.0, !11873, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12053)
    #dbg_value(double %.sroa.1473.0, !11873, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !12053)
    #dbg_value(i8 0, !11873, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !12053)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !12705
  %i.do = load i8, ptr %i.bl, align 8, !dbg !12706, !noundef !1364
  %i.dp = add i8 %i.do, 1, !dbg !12706
  store i8 %i.dp, ptr %i.bl, align 8, !dbg !12706
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !12707
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !12708
  store i64 %.sroa.065.1, ptr %i.au, align 8, !dbg !12708
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !12708
  store ptr %.sroa.8.1, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !12708
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !12708
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !12708
  %.sroa.1171.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24, !dbg !12708
  store i64 %.sroa.1171.0, ptr %.sroa.1171.0..sroa_idx, align 8, !dbg !12708
  %.sroa.1272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 32, !dbg !12708
  store ptr %.sroa.1272.0, ptr %.sroa.1272.0..sroa_idx, align 8, !dbg !12708
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 40, !dbg !12708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.13, i64 56, i1 false), !dbg !12708
  %.sroa.1473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 96, !dbg !12708
  store double %.sroa.1473.0, ptr %.sroa.1473.0..sroa_idx, align 8, !dbg !12708
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 104, !dbg !12708
  store i8 0, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !12708
  %i.dq = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_seqCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.ai unwind label %bb.ah, !dbg !12709 ; 5 uses

bb.ag:                                            ; preds = %bb.at, %bb.g
  %.sink = phi ptr [ %i.eg, %bb.at ], [ %i.bt, %bb.g ]
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !12710
  store ptr %.sink, ptr %i.dr, align 8, !dbg !12710
  store i64 -1, ptr %0, align 8, !dbg !12710
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !12711
  br label %bb.ge, !dbg !12650

bb.ah:                                            ; preds = %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3JBf551F2Kj_4qlog6events9JsonEventNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(112) %i.au) #16
          to label %common.resume unwind label %bb.aq, !dbg !12712

bb.ai:                                            ; preds = %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_seqINtNtCsenfyI6F4F2A_10serde_json2de9SeqAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.av, ptr noundef nonnull align 8 dereferenceable(112) %i.au, i64 112, i1 false), !dbg !12707
  %i.dt = getelementptr inbounds nuw i8, ptr %i.av, i64 112, !dbg !12707
  store ptr %i.dq, ptr %i.dt, align 8, !dbg !12707
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !12712
  %i.du = load i64, ptr %i.av, align 8, !dbg !12707, !range !3165, !noundef !1364 ; 2 uses
  %i.dv = icmp eq i64 %i.du, -1, !dbg !12707
  br i1 %i.dv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit, label %bb.aj, !dbg !12713

bb.aj:                                            ; preds = %bb.ai
  %.not44 = icmp eq ptr %i.dq, null, !dbg !12707
  br i1 %.not44, label %bb.ak, label %bb.al, !dbg !12713

bb.ak:                                            ; preds = %bb.aj
    #dbg_value(i64 %i.du, !11874, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12058)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !12714
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12714
    #dbg_value(ptr %.sroa.4.0.copyload, !11874, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12058)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !12714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx, i64 96, i1 false), !dbg !12714
    #dbg_value(i64 %i.du, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %.sroa.4.0.copyload, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !12715
    #dbg_value(i64 %i.du, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %.sroa.4.0.copyload, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread, !dbg !12715

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.ai
  %i.dw = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !12716
  %i.dx = load ptr, ptr %i.dw, align 8, !dbg !12716, !nonnull !1364, !align !3542, !noundef !1364 ; 2 uses
    #dbg_value(ptr %i.dx, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
    #dbg_value(i64 -1, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !12715
    #dbg_value(i64 %i.du, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %i.dx, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
  %.not960 = icmp eq ptr %i.dq, null, !dbg !12715
  br i1 %.not960, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread, label %bb.ar, !dbg !12715

bb.al:                                            ; preds = %bb.aj
    #dbg_value(ptr %i.dq, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
    #dbg_value(i64 -1, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13), !dbg !12715
    #dbg_value(ptr %i.av, !3167, !DIExpression(), !11060)
    #dbg_value(ptr %i.av, !3172, !DIExpression(), !11062)
    #dbg_value(ptr %i.av, !3142, !DIExpression(), !11064)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i unwind label %bb.am, !dbg !12717

bb.am:                                            ; preds = %bb.al
  %i.dy = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.av, !3149, !DIExpression(), !11066)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.av)
          to label %.body.i unwind label %bb.an, !dbg !12718

bb.an:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !12717
  unreachable, !dbg !12717

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i: ; preds = %bb.al
    #dbg_value(ptr %i.av, !3149, !DIExpression(), !11068)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.av)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i49 unwind label %bb.ao, !dbg !12719

bb.ao:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !12720

.body.i:                                          ; preds = %bb.ao, %bb.am
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ea, %bb.ao ], [ %i.dy, %bb.am ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.av, i64 24, !dbg !12720
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.eb) #16
          to label %common.resume unwind label %bb.ap, !dbg !12720

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i49: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.av, i64 24, !dbg !12720
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ec), !dbg !12720
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread, !dbg !12720

bb.ap:                                            ; preds = %.body.i
  %i.ed = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !12720
  unreachable, !dbg !12720

bb.aq:                                            ; preds = %bb.fr, %bb.ah
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !12721
  unreachable, !dbg !12721

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread: ; preds = %bb.ak, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i49, %bb.ar, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit
  %.sroa.09.0683 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit ], [ -1, %bb.ar ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i49 ], [ %i.du, %bb.ak ]
  %.sroa.10.0682 = phi ptr [ %i.dx, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit ], [ %i.dx, %bb.ar ], [ %i.dq, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i49 ], [ %.sroa.4.0.copyload, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !12715
  br label %bb.as, !dbg !12715

bb.ar:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i(ptr nonnull %i.dq), !dbg !12715
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread, !dbg !12715

bb.as:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread
  %.sroa.10.1 = phi ptr [ %.sroa.10.0682, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread ], [ %.sroa.10.2688, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread ], !dbg !11971 ; 2 uses
  %.sroa.09.1 = phi i64 [ %.sroa.09.0683, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit.thread ], [ %.sroa.09.2689, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread ], !dbg !11971 ; 2 uses
    #dbg_value(i64 %.sroa.09.1, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %.sroa.10.1, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
  %i.ef = icmp eq i64 %.sroa.09.1, -1, !dbg !12722
  br i1 %i.ef, label %bb.gb, label %bb.gc, !dbg !12644, !prof !3954

bb.at:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !dbg !12647
  store i64 24, ptr %i.at, align 8, !dbg !12647
  %i.eg = call noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.at), !dbg !12648
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !dbg !12649
  br label %bb.ag, !dbg !12650

bb.au:                                            ; preds = %bb.f
    #dbg_value(ptr %1, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11070)
  %i.eh = add i64 %i.be, 1, !dbg !12723
  store i64 %i.eh, ptr %i.ay, align 8, !dbg !12723, !alias.scope !12059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  store ptr %1, ptr %i.ai, align 8, !noalias !12060
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i8 1, ptr %i.ei, align 8, !noalias !12060
    #dbg_declare(ptr poison, !11914, !DIExpression(), !11076)
    #dbg_declare(ptr %i.ai, !11888, !DIExpression(), !11076)
    #dbg_declare(ptr %i.ah, !11890, !DIExpression(), !11077)
    #dbg_declare(ptr %i.ag, !11891, !DIExpression(), !11078)
    #dbg_declare(ptr %i.af, !12061, !DIExpression(), !11085)
    #dbg_declare(ptr %i.ae, !12068, !DIExpression(), !11096)
    #dbg_declare(ptr %i.ad, !12088, !DIExpression(), !11107)
    #dbg_declare(ptr %i.ac, !12061, !DIExpression(), !11109)
    #dbg_declare(ptr %i.ab, !11907, !DIExpression(), !11110)
    #dbg_declare(ptr %i.aa, !12068, !DIExpression(), !11112)
    #dbg_declare(ptr %i.z, !12088, !DIExpression(), !11114)
    #dbg_declare(ptr poison, !11887, !DIExpression(), !11076)
    #dbg_value(ptr @2, !12111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11118)
    #dbg_value(i64 4, !12111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11118)
    #dbg_declare(ptr poison, !12116, !DIExpression(), !11123)
    #dbg_value(ptr @5, !12121, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11127)
    #dbg_value(i64 4, !12121, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11127)
    #dbg_declare(ptr poison, !12130, !DIExpression(), !11132)
    #dbg_value(ptr @6, !12142, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11136)
    #dbg_value(i64 4, !12142, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11136)
    #dbg_value(i64 0, !11889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11137)
    #dbg_value(double undef, !11889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !12724, !noalias !12060
  store i64 -1, ptr %i.ah, align 8, !dbg !12724, !noalias !12060
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !12725, !noalias !12060
  store i64 -1, ptr %i.ag, align 8, !dbg !12725, !noalias !12060
  %i.ej = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.ek = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.496.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.597.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.645.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.sroa.748.0..sroa_idx49.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  %.sroa.493.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.sroa.628.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %.sroa.7.0..sroa_idx31.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  br label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i.outer, !dbg !12726

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i.outer: ; preds = %bb.dw, %bb.au
  %.sroa.4.0.i.ph = phi double [ %i.le, %bb.dw ], [ undef, %bb.au ]
  %.not1224 = phi i1 [ true, %bb.dw ], [ false, %bb.au ]
  %.sroa.011.0.i.ph = phi i1 [ false, %bb.dw ], [ true, %bb.au ]
  br label %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i, !dbg !12727

_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i: ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i.backedge, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i.outer
    #dbg_value(i64 poison, !11889, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11137)
    #dbg_value(double %.sroa.4.0.i.ph, !11889, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11137)
  call void @llvm.experimental.noalias.scope.decl(metadata !12177), !dbg !12728
    #dbg_value(ptr %i.ai, !12173, !DIExpression(), !11153)
  call void @llvm.experimental.noalias.scope.decl(metadata !12178), !dbg !12729
    #dbg_value(ptr %i.ai, !12162, !DIExpression(), !11156)
    #dbg_declare(ptr poison, !12163, !DIExpression(), !11157)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !dbg !12727, !noalias !12179
  invoke fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.y, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ai)
          to label %.noexc.i52 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !12727, !noalias !12180

.noexc.i52:                                       ; preds = %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i
  %i.em = load i8, ptr %i.y, align 8, !dbg !12727, !range !3840, !noalias !12179, !noundef !1364
  %i.en = trunc nuw i8 %i.em to i1, !dbg !12727
  br i1 %i.en, label %bb.av, label %bb.aw, !dbg !12730

bb.av:                                            ; preds = %.noexc.i52
  %i.eo = getelementptr inbounds nuw i8, ptr %i.y, i64 8, !dbg !12731
  %i.ep = load ptr, ptr %i.eo, align 8, !dbg !12731, !noalias !12179, !nonnull !1364, !align !3542, !noundef !1364
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !12732, !noalias !12179
  br label %.loopexit237.i, !dbg !12733

bb.aw:                                            ; preds = %.noexc.i52
  %i.eq = load i8, ptr %i.ej, align 1, !dbg !12734, !range !3840, !noalias !12179, !noundef !1364
  %i.er = trunc nuw i8 %i.eq to i1, !dbg !12734
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !dbg !12732, !noalias !12179
  br i1 %i.er, label %bb.ax, label %bb.bg, !dbg !12730

bb.ax:                                            ; preds = %bb.aw
  %i.es = load ptr, ptr %i.ai, align 8, !dbg !12735, !alias.scope !12182, !noalias !12060, !nonnull !1364, !align !3542, !noundef !1364 ; 39 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12183), !dbg !12736
    #dbg_declare(ptr poison, !12184, !DIExpression(), !11168)
    #dbg_value(ptr %i.es, !12198, !DIExpression(), !11169)
    #dbg_declare(ptr poison, !12197, !DIExpression(), !11168)
  call void @llvm.experimental.noalias.scope.decl(metadata !12201), !dbg !12737
    #dbg_value(ptr %i.es, !12202, !DIExpression(), !11174)
  call void @llvm.experimental.noalias.scope.decl(metadata !12206), !dbg !12738
    #dbg_value(ptr %i.es, !12207, !DIExpression(), !11180)
    #dbg_declare(ptr poison, !12210, !DIExpression(), !11181)
  call void @llvm.experimental.noalias.scope.decl(metadata !12214), !dbg !12739
    #dbg_value(ptr %i.es, !12215, !DIExpression(), !11190)
    #dbg_declare(ptr poison, !12216, !DIExpression(), !11191)
    #dbg_value(ptr %i.es, !12222, !DIExpression(), !11194)
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 24, !dbg !12740 ; 9 uses
    #dbg_value(ptr %i.et, !3132, !DIExpression(), !11196)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 40, !dbg !12741 ; 41 uses
  %i.ev = load i64, ptr %i.eu, align 8, !dbg !12741, !alias.scope !12224, !noalias !12225, !noundef !1364
  %i.ew = add i64 %i.ev, 1, !dbg !12741
  store i64 %i.ew, ptr %i.eu, align 8, !dbg !12741, !alias.scope !12224, !noalias !12225
    #dbg_value(ptr %i.es, !12226, !DIExpression(), !11202)
    #dbg_value(ptr %i.es, !12229, !DIExpression(), !11205)
  %i.ex = getelementptr inbounds nuw i8, ptr %i.es, i64 16, !dbg !12742 ; 6 uses
    #dbg_value(ptr poison, !12227, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11206)
    #dbg_value(i64 poison, !12227, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11206)
  store i64 0, ptr %i.ex, align 8, !dbg !12743, !alias.scope !12231, !noalias !12225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !12744, !noalias !12232
  invoke void @_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.et, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.es)
          to label %.noexc158.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, !dbg !12745, !noalias !12180

.noexc158.i:                                      ; preds = %bb.ax
  %i.ey = load i64, ptr %i.x, align 8, !dbg !12744, !range !3544, !noalias !12232, !noundef !1364 ; 2 uses
  %i.ez = icmp eq i64 %i.ey, 2, !dbg !12744
  %i.fa = load ptr, ptr %i.ek, align 8, !dbg !12746, !noalias !12232 ; 8 uses
  br i1 %i.ez, label %bb.bf, label %bb.ay, !dbg !12747

bb.ay:                                            ; preds = %.noexc158.i
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !dbg !12748, !noalias !12232
  %i.fb = trunc nuw i64 %i.ey to i1, !dbg !12747
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12234, !DIExpression(), !11227)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12234, !DIExpression(), !11235)
  %i.fc = icmp eq i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, 4, !dbg !12749 ; 2 uses
  br i1 %i.fb, label %bb.az, label %bb.bc, !dbg !12747

bb.az:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.fa, !12220, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11236)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12220, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11236)
    #dbg_declare(ptr poison, !12260, !DIExpression(), !11237)
    #dbg_value(ptr %i.fa, !12259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11238)
    #dbg_value(ptr %i.fa, !12253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11240)
    #dbg_value(ptr %i.fa, !12253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11241)
    #dbg_value(ptr %i.fa, !12253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11243)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11238)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11240)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11241)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11243)
    #dbg_declare(ptr poison, !12258, !DIExpression(), !11237)
    #dbg_value(ptr @2, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11240)
    #dbg_value(i64 4, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11240)
    #dbg_value(ptr @5, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11241)
    #dbg_value(i64 4, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11241)
    #dbg_value(ptr @6, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11243)
    #dbg_value(i64 4, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11243)
    #dbg_value(ptr %i.fa, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(ptr %i.fa, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11247)
    #dbg_value(ptr %i.fa, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11250)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11247)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11250)
    #dbg_value(ptr poison, !12249, !DIExpression(), !11251)
    #dbg_value(ptr @2, !12243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11246)
    #dbg_value(i64 4, !12243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11246)
    #dbg_value(ptr poison, !12250, !DIExpression(), !11252)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12244, !DIExpression(), !11253)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12234, !DIExpression(), !11255)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12237, !DIExpression(), !11256)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12245, !DIExpression(), !11257)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12238, !DIExpression(), !11258)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12234, !DIExpression(), !11260)
  br i1 %i.fc, label %bb.ba, label %bb.bk, !dbg !12750

bb.ba:                                            ; preds = %bb.az
    #dbg_value(ptr %i.fa, !12235, !DIExpression(), !11255)
    #dbg_value(ptr @2, !12236, !DIExpression(), !11255)
  %i.fd = load i32, ptr %i.fa, align 1, !dbg !12751
  %i.fe = icmp ne i32 %i.fd, 1701669236, !dbg !12751
  %i.ff = zext i1 %i.fe to i32, !dbg !12751
  %i.fg = icmp eq i32 %i.ff, 0, !dbg !12751
  br i1 %i.fg, label %bb.bh, label %bb.bb, !dbg !12752

bb.bb:                                            ; preds = %bb.ba
    #dbg_value(ptr poison, !12249, !DIExpression(), !11261)
    #dbg_value(ptr @5, !12243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11247)
    #dbg_value(i64 4, !12243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11247)
    #dbg_value(ptr poison, !12250, !DIExpression(), !11262)
    #dbg_value(ptr %i.fa, !12235, !DIExpression(), !11227)
    #dbg_value(ptr @5, !12236, !DIExpression(), !11227)
  %i.fh = load i32, ptr %i.fa, align 1, !dbg !12753
  %i.fi = icmp ne i32 %i.fh, 1701667182, !dbg !12753
  %i.fj = zext i1 %i.fi to i32, !dbg !12753
  %i.fk = icmp eq i32 %i.fj, 0, !dbg !12753
  br i1 %i.fk, label %bb.bi, label %_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i, !dbg !12754

bb.bc:                                            ; preds = %bb.ay
    #dbg_value(ptr %i.fa, !12219, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11263)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12219, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11263)
    #dbg_declare(ptr poison, !12262, !DIExpression(), !11264)
    #dbg_value(ptr %i.fa, !12263, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11265)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12263, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11265)
    #dbg_declare(ptr poison, !12260, !DIExpression(), !11266)
    #dbg_value(ptr %i.fa, !12259, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11267)
    #dbg_value(ptr %i.fa, !12253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11268)
    #dbg_value(ptr %i.fa, !12253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11270)
    #dbg_value(ptr %i.fa, !12253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11272)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12259, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11267)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11268)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11270)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11272)
    #dbg_declare(ptr poison, !12258, !DIExpression(), !11266)
    #dbg_value(ptr @2, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11268)
    #dbg_value(i64 4, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11268)
    #dbg_value(ptr @5, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11270)
    #dbg_value(i64 4, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11270)
    #dbg_value(ptr @6, !12254, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11272)
    #dbg_value(i64 4, !12254, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11272)
    #dbg_value(ptr %i.fa, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11273)
    #dbg_value(ptr %i.fa, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11276)
    #dbg_value(ptr %i.fa, !12242, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11279)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11273)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11276)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12242, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11279)
    #dbg_value(ptr poison, !12249, !DIExpression(), !11280)
    #dbg_value(ptr @2, !12243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11273)
    #dbg_value(i64 4, !12243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11273)
    #dbg_value(ptr poison, !12250, !DIExpression(), !11281)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12244, !DIExpression(), !11282)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12237, !DIExpression(), !11283)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12245, !DIExpression(), !11284)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12234, !DIExpression(), !11286)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12238, !DIExpression(), !11287)
    #dbg_value(i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, !12234, !DIExpression(), !11289)
  br i1 %i.fc, label %bb.bd, label %bb.bk, !dbg !12755

bb.bd:                                            ; preds = %bb.bc
    #dbg_value(ptr %i.fa, !12235, !DIExpression(), !11235)
    #dbg_value(ptr @2, !12236, !DIExpression(), !11235)
  %i.fl = load i32, ptr %i.fa, align 1, !dbg !12756
  %i.fm = icmp ne i32 %i.fl, 1701669236, !dbg !12756
  %i.fn = zext i1 %i.fm to i32, !dbg !12756
  %i.fo = icmp eq i32 %i.fn, 0, !dbg !12756
  br i1 %i.fo, label %bb.bh, label %bb.be, !dbg !12757

bb.be:                                            ; preds = %bb.bd
    #dbg_value(ptr poison, !12249, !DIExpression(), !11290)
    #dbg_value(ptr @5, !12243, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11276)
    #dbg_value(i64 4, !12243, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11276)
    #dbg_value(ptr poison, !12250, !DIExpression(), !11291)
    #dbg_value(ptr %i.fa, !12235, !DIExpression(), !11286)
    #dbg_value(ptr @5, !12236, !DIExpression(), !11286)
  %i.fp = load i32, ptr %i.fa, align 1, !dbg !12758
  %i.fq = icmp ne i32 %i.fp, 1701667182, !dbg !12758
  %i.fr = zext i1 %i.fq to i32, !dbg !12758
  %i.fs = icmp eq i32 %i.fr, 0, !dbg !12758
  br i1 %i.fs, label %bb.bi, label %_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i, !dbg !12759

_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i: ; preds = %bb.be, %bb.bb
  %i.ft = load i32, ptr %i.fa, align 1, !dbg !12749
  %i.fu = icmp ne i32 %i.ft, 1635017060, !dbg !12749
  %i.fv = zext i1 %i.fu to i32, !dbg !12749
  %i.fw = icmp eq i32 %i.fv, 0, !dbg !12749
  br i1 %i.fw, label %bb.bj, label %bb.bk, !dbg !12749

bb.bf:                                            ; preds = %.noexc158.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12760, !noalias !12232
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fa) ]
  br label %.loopexit237.i, !dbg !12761

.loopexit.split-lp.i:                             ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.fc, %.body.i54, %.loopexit.split-lp.loopexit.split-lp.i
  %.sroa.090.1.ph.i = phi i8 [ %.sroa.090.4.i, %bb.fc ], [ 1, %.body.i54 ], [ %.sroa.090.2.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ 1, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.pn.ph.i = phi { ptr, i32 } [ %i.na, %bb.fc ], [ %eh.lpad-body.i55, %.body.i54 ], [ %lpad.loopexit.split-lp244.i, %.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ] ; 2 uses
  %.pr.i = load i64, ptr %i.ag, align 8, !dbg !12762, !noalias !12060
  %.not151.i = icmp eq i64 %.pr.i, -1, !dbg !12762
  br i1 %.not151.i, label %bb.fk, label %bb.fp, !dbg !12762

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.dh, %bb.cs, %bb.co, %bb.cn, %bb.cm, %.loopexit.i.i.i183.i, %bb.du, %_RINvYINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsi2C7WdEh0SA_3h3i.exit.i, %bb.ax, %bb.eb, %bb.el, %bb.dv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke, %bb.fe, %bb.eu, %bb.eo, %bb.ek, %.loopexit.i.i.i199.i, %bb.ea, %.loopexit.i.i.i190.i, %bb.dq, %.invoke.i, %bb.dn, %.loopexit155.i.i.i.i.i.i.i, %bb.di, %.loopexit156.i.i.i.i.i.i.i, %bb.cx, %bb.cr, %.loopexit263.i.i.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i, %.loopexit270.i.i.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i, %.loopexit277.i.i.i.i.i.i.i, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, %.loopexit161.i.i.i.i.i.i.i, %bb.bn, %.loopexit.i.i.i.i
  %.sroa.090.2.ph.ph.i = phi i8 [ %.sroa.090.4.i, %bb.fe ], [ 1, %bb.eu ], [ 1, %bb.eo ], [ 1, %bb.dn ], [ 1, %.invoke ], [ 1, %.loopexit.i.i.i.i ], [ 1, %bb.bn ], [ 1, %.loopexit161.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i ], [ 1, %.loopexit277.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i93.i.i.i.i.i.i.i ], [ 1, %.loopexit270.i.i.i.i.i.i.i ], [ 1, %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i102.i.i.i.i.i.i.i ], [ 1, %.loopexit263.i.i.i.i.i.i.i ], [ 1, %.invoke.i ], [ 1, %.loopexit.i.i.i190.i ], [ 1, %bb.ea ], [ 1, %bb.cr ], [ 1, %.loopexit.i.i.i199.i ], [ 1, %bb.dq ], [ 1, %bb.cx ], [ 1, %.loopexit156.i.i.i.i.i.i.i ], [ 1, %bb.ek ], [ 1, %bb.di ], [ 1, %.loopexit155.i.i.i.i.i.i.i ]
  %lpad.loopexit.split-lp244.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i

bb.bg:                                            ; preds = %bb.aw
  br i1 %.not1224, label %bb.es, label %bb.eo, !dbg !12726

bb.bh:                                            ; preds = %bb.bd, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12760, !noalias !12232
    #dbg_value(ptr undef, !11926, !DIExpression(), !10943)
  br i1 %.sroa.011.0.i.ph, label %bb.dr, label %.invoke, !dbg !12728, !prof !3841

bb.bi:                                            ; preds = %bb.be, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12760, !noalias !12232
    #dbg_value(ptr %i.ah, !12272, !DIExpression(), !11294)
  %i.fx = load i64, ptr %i.ah, align 8, !dbg !12763, !range !3165, !noalias !12060, !noundef !1364
  %.not149.i = icmp eq i64 %i.fx, -1, !dbg !12763
  br i1 %.not149.i, label %bb.dx, label %.invoke, !dbg !12728, !prof !3841

bb.bj:                                            ; preds = %_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12760, !noalias !12232
    #dbg_value(ptr %i.ag, !12279, !DIExpression(), !11297)
  %i.fy = load i64, ptr %i.ag, align 8, !dbg !12764, !range !3443, !noalias !12060, !noundef !1364
  %.not148.i = icmp eq i64 %i.fy, -1, !dbg !12764
  br i1 %.not148.i, label %bb.eh, label %.invoke, !dbg !12728, !prof !3841

bb.bk:                                            ; preds = %_RINvXNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB8_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB3_14___FieldVisitorNtBX_7Visitor9visit_strNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i.exit.sink.split.i.i.i.i.i.i.i, %bb.bc, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !12760, !noalias !12232
    #dbg_value(ptr poison, !12285, !DIExpression(), !11304)
    #dbg_value(ptr poison, !12302, !DIExpression(), !11310)
    #dbg_declare(ptr poison, !12306, !DIExpression(), !11311)
  call void @llvm.experimental.noalias.scope.decl(metadata !12312), !dbg !12765
    #dbg_value(ptr %i.es, !4142, !DIExpression(), !11315)
    #dbg_value(ptr %i.es, !4147, !DIExpression(), !11317)
  call void @llvm.experimental.noalias.scope.decl(metadata !12313), !dbg !12766
    #dbg_value(ptr %i.es, !3096, !DIExpression(), !11321)
    #dbg_value(ptr %i.es, !3115, !DIExpression(), !11323)
    #dbg_value(ptr %i.es, !3118, !DIExpression(), !11325)
  %i.fz = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 3 uses
  %i.ga = load i64, ptr %i.fz, align 8, !alias.scope !12314, !noalias !12180, !noundef !1364 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.eu, align 8, !alias.scope !12315, !noalias !12180 ; 2 uses
  %i.gb = icmp ult i64 %.promoted.i.i.i.i.i, %i.ga, !dbg !12767
  br i1 %i.gb, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i, !dbg !12767

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bk
  %i.gc = load ptr, ptr %i.et, align 8, !alias.scope !12314, !noalias !12180, !nonnull !1364, !noundef !1364 ; 2 uses
  br label %bb.bl, !dbg !12767

bb.bl:                                            ; preds = %bb.bm, %.lr.ph.i.i.i.i.i
  %i.gd = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.gg, %bb.bm ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12316), !dbg !12768
    #dbg_value(ptr %i.et, !3128, !DIExpression(), !11329)
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gd, !dbg !12769
  %i.gf = load i8, ptr %i.ge, align 1, !dbg !12769, !noalias !12317, !noundef !1364
  switch i8 %i.gf, label %bb.bn [
    i8 32, label %bb.bm
    i8 10, label %bb.bm
    i8 9, label %bb.bm
    i8 13, label %bb.bm
    i8 58, label %bb.bo
  ], !dbg !12770, !prof !4052

bb.bm:                                            ; preds = %bb.bl, %bb.bl, %bb.bl, %bb.bl
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11333)
  %i.gg = add i64 %i.gd, 1, !dbg !12771           ; 3 uses
  store i64 %i.gg, ptr %i.eu, align 8, !dbg !12771, !alias.scope !12318, !noalias !12180
    #dbg_value(ptr %i.es, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11329)
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.gg, %i.ga, !dbg !12767
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.bl, !dbg !12767

.loopexit.i.i.i.i:                                ; preds = %bb.bk, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !12772, !noalias !12319
  store i64 3, ptr %i.v, align 8, !dbg !12772, !noalias !12319
  %i.gh = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.v)
          to label %.noexc159.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12773, !noalias !12180

.noexc159.i:                                      ; preds = %.loopexit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !12774, !noalias !12319
  br label %.loopexit237.i, !dbg !12775

bb.bn:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !12776, !noalias !12319
  store i64 6, ptr %i.w, align 8, !dbg !12776, !noalias !12319
  %i.gi = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.w)
          to label %.noexc160.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12777, !noalias !12180

.noexc160.i:                                      ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !12778, !noalias !12319
  br label %.loopexit237.i, !dbg !12779

bb.bo:                                            ; preds = %bb.bl
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11337)
  %i.gj = add i64 %i.gd, 1, !dbg !12780           ; 3 uses
  store i64 %i.gj, ptr %i.eu, align 8, !dbg !12780, !alias.scope !12320, !noalias !12180
  call void @llvm.experimental.noalias.scope.decl(metadata !12321), !dbg !12781
    #dbg_declare(ptr poison, !12322, !DIExpression(), !11344)
    #dbg_value(ptr %i.es, !12326, !DIExpression(), !11345)
    #dbg_declare(ptr poison, !12325, !DIExpression(), !11344)
  call void @llvm.experimental.noalias.scope.decl(metadata !12329), !dbg !12782
    #dbg_value(ptr %i.es, !12331, !DIExpression(), !11350)
  call void @llvm.experimental.noalias.scope.decl(metadata !12336), !dbg !12783
    #dbg_value(ptr %i.es, !12337, !DIExpression(), !11357)
    #dbg_declare(ptr poison, !12340, !DIExpression(), !11358)
  call void @llvm.experimental.noalias.scope.decl(metadata !12345), !dbg !12784
    #dbg_value(ptr %i.es, !12346, !DIExpression(), !11395)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11398)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11400)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11402)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11404)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11406)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11408)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11410)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11412)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11414)
    #dbg_value(ptr %i.es, !12382, !DIExpression(), !11416)
    #dbg_value(i64 1, !12384, !DIExpression(), !11425)
    #dbg_value(i64 1, !12384, !DIExpression(), !11430)
    #dbg_value(ptr %i.es, !12407, !DIExpression(), !11434)
    #dbg_value(ptr %i.es, !12410, !DIExpression(), !11437)
    #dbg_value(ptr %i.es, !12412, !DIExpression(), !11440)
  %i.gk = getelementptr inbounds nuw i8, ptr %i.es, i64 8, !dbg !12785 ; 2 uses
    #dbg_value(ptr poison, !12408, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11447)
    #dbg_value(i64 poison, !12408, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11447)
  store i64 0, ptr %i.ex, align 8, !dbg !12786, !alias.scope !12427, !noalias !12180
    #dbg_value(i8 undef, !12348, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11448)
    #dbg_value(i8 poison, !12348, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11448)
  %i.gl = icmp ult i64 %i.gj, %i.ga, !dbg !12787
  br i1 %i.gl, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i.i.i, !dbg !12787

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.bo, %bb.do
  %i.gm = phi ptr [ %i.kn, %bb.do ], [ %i.gc, %bb.bo ] ; 11 uses
  %.promoted.i210.i.i.i.i.i.i.i = phi i64 [ %.promoted.i.i.i.i.i.i.i.i, %bb.do ], [ %i.gj, %bb.bo ]
  %i.gn = phi i64 [ %i.km, %bb.do ], [ %i.ga, %bb.bo ] ; 7 uses
  %.sroa.7.0209.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.2194.i.i.i.i.i.i.i, %bb.do ], [ undef, %bb.bo ] ; 2 uses
  %.sroa.039.0208.i.i.i.i.i.i.i = phi i1 [ true, %bb.do ], [ false, %bb.bo ] ; 2 uses
    #dbg_value(i8 %.sroa.7.0209.i.i.i.i.i.i.i, !12348, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11448)
  call void @llvm.experimental.noalias.scope.decl(metadata !12428), !dbg !12788
  br label %bb.bp, !dbg !12787

bb.bp:                                            ; preds = %bb.bq, %.lr.ph.i.i.i.i.i.i.i.i
  %i.go = phi i64 [ %.promoted.i210.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gr, %bb.bq ] ; 17 uses
    #dbg_value(ptr %i.et, !3128, !DIExpression(), !11454)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.go, !dbg !12789
  %i.gq = load i8, ptr %i.gp, align 1, !dbg !12789, !noalias !12429, !noundef !1364 ; 3 uses
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
  ], !dbg !12790

bb.bq:                                            ; preds = %bb.bp, %bb.bp, %bb.bp, %bb.bp
    #dbg_value(ptr %i.es, !3132, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11461)
  %i.gr = add i64 %i.go, 1, !dbg !12791           ; 3 uses
  store i64 %i.gr, ptr %i.eu, align 8, !dbg !12791, !alias.scope !12430, !noalias !12180
    #dbg_value(ptr %i.es, !3128, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11454)
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gr, %i.gn, !dbg !12787
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit161.i.i.i.i.i.i.i, label %bb.bp, !dbg !12787

.loopexit161.i.i.i.i.i.i.i:                       ; preds = %bb.bo, %bb.do, %bb.bq
    #dbg_value(i8 0, !12353, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !11464)
    #dbg_value(i8 poison, !12353, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !11464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !12792, !noalias !12431
  store i64 5, ptr %i.u, align 8, !dbg !12792, !noalias !12431
  %i.gs = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.es, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.u)
          to label %.noexc161.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !12793, !noalias !12180

.noexc161.i:                                      ; preds = %.loopexit161.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !12794, !noalias !12431
  br label %.loopexit237.i, !dbg !12795

bb.br:                                            ; preds = %bb.bp
  %i.gt = add i8 %i.gq, -48, !dbg !12796
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.gt, 10, !dbg !12796
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.cs, label %bb.cr, !dbg !12796, !prof !3878

bb.bs:                                            ; preds = %bb.bp
    #dbg_value(ptr %i.et, !3132, !DIExpression(), !11466)
  %i.gu = add i64 %i.go, 1, !dbg !12797           ; 4 uses
  store i64 %i.gu, ptr %i.eu, align 8, !dbg !12797, !alias.scope !12433, !noalias !12180
  call void @llvm.experimental.noalias.scope.decl(metadata !12434), !dbg !12798
    #dbg_value(ptr %i.es, !3913, !DIExpression(), !11472)
    #dbg_value(ptr %i.es, !3933, !DIExpression(), !11474)
    #dbg_value(ptr poison, !3917, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11472)
    #dbg_value(i64 3, !3917, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11472)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11475)
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11475)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gn, i64 %i.gu), !dbg !12799 ; 2 uses
    #dbg_value(ptr poison, !3918, !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11475)
    #dbg_value(ptr poison, !3920, !DIExpression(), !11476)
  call void @llvm.experimental.noalias.scope.decl(metadata !12435), !dbg !12800
    #dbg_value(ptr %i.es, !3937, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !11480)
  %exitcond.not.i84.not.i.i.i.i.i.i.i = icmp ult i64 %i.gu, %i.gn, !dbg !12801
  br i1 %exitcond.not.i84.not.i.i.i.i.i.i.i, label %bb.bt, label %_RNvXs5_NtCsenfyI6F4F2A_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, !dbg !12801

bb.bt:                                            ; preds = %bb.bs
    #dbg_value(ptr %i.et, !3937, !DIExpression(), !11480)
    #dbg_value(!DIArgList(ptr poison, i64 1), !3918, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !11475)
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gu, !dbg !12802
  %i.gw = load i8, ptr %i.gv, align 1, !dbg !12802, !noalias !12436, !noundef !1364
    #dbg_value(i8 %i.gw, !3938, !DIExpression(), !11483)
  %i.gx = add i64 %i.go, 2, !dbg !12803           ; 3 uses
  store i64 %i.gx, ptr %i.eu, align 8, !dbg !12803, !alias.scope !12437, !noalias !12180
    #dbg_value(i8 %i.gw, !3923, !DIExpression(), !11484)
end_hunk_2
begin_hunk_3_@_RINvXs5_NtCsenfyI6F4F2A_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtB2v_9JsonEventNtB1l_11Deserialize11deserialize9___VisitorECsi2C7WdEh0SA_3h3i:bb.a

bb.ez:                                            ; preds = %bb.fe, %bb.ew
  %.sroa.1676.0 = phi ptr [ %i.my, %bb.ew ], [ %i.ne, %bb.fe ], !dbg !13025
  %.sroa.090.5.i = phi i8 [ 1, %bb.ew ], [ %.sroa.090.4.i, %bb.fe ], !dbg !12724
    #dbg_value(i64 -1, !11876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
    #dbg_value(ptr %.sroa.1676.0, !11876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12563)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !13016, !noalias !12060
  br label %.loopexit237.i, !dbg !13021

bb.fa:                                            ; preds = %bb.ey
    #dbg_value(i64 %i.mz, !11884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11831)
  %.sroa.377.0.copyload.i = load ptr, ptr %.sroa.645.0..sroa_idx46.i, align 8, !dbg !13024, !noalias !12060
    #dbg_value(ptr %.sroa.377.0.copyload.i, !11884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11831)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.480.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.748.0..sroa_idx49.i, i64 56, i1 false), !dbg !13024
  br label %bb.fg, !dbg !13026

bb.fb:                                            ; preds = %bb.ey
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !dbg !13024, !noalias !12060
    #dbg_value(ptr @6, !12145, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11832)
    #dbg_value(ptr @6, !12619, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11835)
    #dbg_value(i64 4, !12145, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11832)
    #dbg_value(i64 4, !12619, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11835)
  invoke void @_RINvXNvNtNtCsbmN5fM2HLz5_5serde7private2de13missing_fieldINtB3_24MissingFieldDeserializerNtNtCsenfyI6F4F2A_10serde_json5error5ErrorENtNtCs9xKKqPmwf7Y_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB1t_5value2deNtB3f_5ValueNtB28_11Deserialize11deserialize12ValueVisitorECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 4)
          to label %bb.fd unwind label %bb.fc, !dbg !13027, !noalias !12180

bb.fc:                                            ; preds = %bb.fb
  %i.na = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab) #16
          to label %.loopexit.split-lp.i unwind label %bb.fh, !dbg !13016, !noalias !12180

bb.fd:                                            ; preds = %bb.fb
  %i.nb = load i64, ptr %i.z, align 8, !dbg !13028, !range !3443, !noalias !12060, !noundef !1364 ; 2 uses
  %i.nc = icmp eq i64 %i.nb, -1, !dbg !13028
  %i.nd = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !13029
  %i.ne = load ptr, ptr %i.nd, align 8, !dbg !13029, !noalias !12060 ; 2 uses
  br i1 %i.nc, label %bb.fe, label %bb.ff, !dbg !13030

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !13026, !noalias !12060
    #dbg_value(ptr %i.ne, !12549, !DIExpression(), !11837)
    #dbg_value(ptr %i.ne, !11876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12563)
    #dbg_value(i64 -1, !11876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ab)
          to label %bb.ez unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !13016, !noalias !12180

bb.ff:                                            ; preds = %bb.fd
  %.sroa.5103.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !13031
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.480.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5103.0..sroa_idx.i, i64 56, i1 false), !dbg !13031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !dbg !13026, !noalias !12060
    #dbg_value(i64 %i.nb, !11884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11831)
    #dbg_value(ptr %i.ne, !11884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11831)
  br label %bb.fg, !dbg !13026

bb.fg:                                            ; preds = %bb.ff, %bb.fa
  %.sroa.075.0.i = phi i64 [ %i.mz, %bb.fa ], [ %i.nb, %bb.ff ], !dbg !13024
  %.sroa.377.0.i = phi ptr [ %.sroa.377.0.copyload.i, %bb.fa ], [ %i.ne, %bb.ff ], !dbg !13024
    #dbg_value(ptr %.sroa.377.0.i, !11884, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11831)
    #dbg_value(i64 %.sroa.075.0.i, !11884, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11831)
  %.sroa.074.0.copyload75 = load i64, ptr %i.ab, align 8, !dbg !13032, !noalias !12625
    #dbg_value(i64 %.sroa.074.0.copyload75, !11876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
  %.sroa.1676.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8, !dbg !13032
  %.sroa.1676.0.copyload78 = load ptr, ptr %.sroa.1676.0..sroa_idx77, align 8, !dbg !13032, !noalias !12625
    #dbg_value(ptr %.sroa.1676.0.copyload78, !11876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12563)
  %.sroa.27.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16, !dbg !13032
  %.sroa.27.0.copyload80 = load i64, ptr %.sroa.27.0..sroa_idx79, align 8, !dbg !13032, !noalias !12625
    #dbg_value(i64 %.sroa.27.0.copyload80, !11876, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12563)
    #dbg_value(i64 %.sroa.075.0.i, !11876, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12563)
    #dbg_value(ptr %.sroa.377.0.i, !11876, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12563)
    #dbg_value(double %.sroa.056.0.i, !11876, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !12563)
    #dbg_value(i8 0, !11876, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !12563)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !dbg !13016, !noalias !12060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !12762, !noalias !12060
  br label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !13033

.loopexit237.i:                                   ; preds = %.noexc168.i, %.noexc169.i, %.noexc172.i, %.noexc176.i, %.invoke, %.noexc159.i, %.noexc160.i, %.noexc161.i, %.noexc162.i, %.noexc163.i, %.noexc164.i, %.noexc165.i, %.noexc166.i, %.noexc167.i, %.noexc171.i, %.noexc174.i, %.noexc175.i, %.noexc177.i, %.noexc178.i, %.noexc179.i, %.noexc181.i, %bb.av, %bb.bf, %bb.ez, %bb.eq, %.loopexit249.i, %.loopexit251.i, %.loopexit.i56
  %.sroa.1676.1 = phi ptr [ %i.ms, %bb.eq ], [ %i.ep, %bb.av ], [ %i.ld, %.loopexit.i56 ], [ %i.lr, %.loopexit251.i ], [ %i.kj, %.noexc178.i ], [ %i.ml, %.loopexit249.i ], [ %i.gi, %.noexc160.i ], [ %i.mj, %.invoke ], [ %.sroa.1676.0, %bb.ez ], [ %i.fa, %bb.bf ], [ %i.he, %.noexc162.i ], [ %i.kq, %.noexc181.i ], [ %i.gs, %.noexc161.i ], [ %i.ig, %.noexc167.i ], [ %i.gh, %.noexc159.i ], [ %i.kb, %.noexc177.i ], [ %i.hq, %.noexc164.i ], [ %i.if, %.noexc166.i ], [ %i.iu, %.noexc171.i ], [ %i.kl, %.noexc179.i ], [ %i.hf, %.noexc163.i ], [ %i.hr, %.noexc165.i ], [ %i.jh, %.noexc174.i ], [ %i.jy, %.noexc175.i ], [ %i.ik, %.noexc169.i ], [ %i.ka, %.noexc176.i ], [ %i.iv, %.noexc172.i ], [ %i.ii, %.noexc168.i ], !dbg !12726 ; 2 uses
  %.sroa.090.6.i = phi i8 [ 1, %bb.eq ], [ 1, %bb.av ], [ 1, %.loopexit.i56 ], [ 1, %.loopexit251.i ], [ 1, %.noexc178.i ], [ 1, %.loopexit249.i ], [ 1, %.noexc160.i ], [ 1, %.invoke ], [ %.sroa.090.5.i, %bb.ez ], [ 1, %bb.bf ], [ 1, %.noexc162.i ], [ 1, %.noexc181.i ], [ 1, %.noexc161.i ], [ 1, %.noexc167.i ], [ 1, %.noexc159.i ], [ 1, %.noexc177.i ], [ 1, %.noexc164.i ], [ 1, %.noexc166.i ], [ 1, %.noexc171.i ], [ 1, %.noexc179.i ], [ 1, %.noexc163.i ], [ 1, %.noexc165.i ], [ 1, %.noexc174.i ], [ 1, %.noexc175.i ], [ 1, %.noexc176.i ], [ 1, %.noexc172.i ], [ 1, %.noexc169.i ], [ 1, %.noexc168.i ], !dbg !12724 ; 2 uses
    #dbg_value(i64 -1, !11876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
    #dbg_value(ptr %.sroa.1676.1, !11876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12563)
  %i.nf = load i64, ptr %i.ag, align 8, !dbg !12762, !range !3443, !noalias !12060, !noundef !1364
  %.not152.i = icmp eq i64 %i.nf, -1, !dbg !12762
  br i1 %.not152.i, label %bb.fi, label %bb.fj, !dbg !12762

bb.fh:                                            ; preds = %bb.fq, %bb.fp, %bb.fc
  %i.ng = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !13034, !noalias !12180
  unreachable, !dbg !13034

bb.fi:                                            ; preds = %bb.fj, %.loopexit237.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !12762, !noalias !12060
  %i.nh = load i64, ptr %i.ah, align 8, !dbg !13035, !range !3165, !noalias !12060, !noundef !1364
  %i.ni = icmp ne i64 %i.nh, -1, !dbg !13035
  %i.nj = trunc nuw i8 %.sroa.090.6.i to i1, !dbg !13035
  %or.cond3.i = select i1 %i.ni, i1 %i.nj, i1 false, !dbg !13035
  br i1 %or.cond3.i, label %bb.fm, label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !13035

bb.fj:                                            ; preds = %.loopexit237.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ag)
          to label %bb.fi unwind label %bb.fl, !dbg !12762, !noalias !12180

bb.fk:                                            ; preds = %bb.fp, %bb.fl, %.loopexit.split-lp.i
  %.sroa.090.7.i = phi i8 [ %.sroa.090.6.i, %bb.fl ], [ %.sroa.090.1211.i, %bb.fp ], [ %.sroa.090.1.ph.i, %.loopexit.split-lp.i ], !dbg !12724
  %.pn153.i = phi { ptr, i32 } [ %i.nn, %bb.fl ], [ %.pn212.i, %bb.fp ], [ %.pn.ph.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.nk = load i64, ptr %i.ah, align 8, !dbg !13035, !range !3165, !noalias !12060, !noundef !1364
  %i.nl = icmp ne i64 %i.nk, -1, !dbg !13035
  %i.nm = trunc nuw i8 %.sroa.090.7.i to i1, !dbg !13035
  %or.cond7.i = select i1 %i.nl, i1 %i.nm, i1 false, !dbg !13035
  br i1 %or.cond7.i, label %bb.fq, label %common.resume, !dbg !13035

bb.fl:                                            ; preds = %bb.fj
  %i.nn = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.fm:                                            ; preds = %bb.fi
    #dbg_value(ptr %i.ah, !3172, !DIExpression(), !11839)
    #dbg_value(ptr %i.ah, !3142, !DIExpression(), !11841)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 unwind label %bb.fn, !dbg !13036, !noalias !12180

bb.fn:                                            ; preds = %bb.fm
  %i.no = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.ah, !3149, !DIExpression(), !11843)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.fo, !dbg !13037, !noalias !12180

bb.fo:                                            ; preds = %bb.fn
  %i.np = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !13036, !noalias !12180
  unreachable, !dbg !13036

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53: ; preds = %bb.fm
    #dbg_value(ptr %i.ah, !3149, !DIExpression(), !11845)
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ah), !dbg !13038, !noalias !12180
  br label %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit, !dbg !13035

bb.fp:                                            ; preds = %.thread.i, %.loopexit.split-lp.i
  %.pn212.i = phi { ptr, i32 } [ %i.mo, %.thread.i ], [ %.pn.ph.i, %.loopexit.split-lp.i ]
  %.sroa.090.1211.i = phi i8 [ 1, %.thread.i ], [ %.sroa.090.1.ph.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.ag) #16
          to label %bb.fk unwind label %bb.fh, !dbg !12762, !noalias !12180

bb.fq:                                            ; preds = %bb.fk
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ah) #16
          to label %common.resume unwind label %bb.fh, !dbg !13035, !noalias !12180

_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit: ; preds = %bb.fg, %bb.fi, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53
  %.sroa.30.0 = phi double [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 ], [ undef, %bb.fi ], [ %.sroa.056.0.i, %bb.fg ], !dbg !13039
  %.sroa.28.0 = phi ptr [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 ], [ undef, %bb.fi ], [ %.sroa.377.0.i, %bb.fg ], !dbg !13039
  %.sroa.2781.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 ], [ undef, %bb.fi ], [ %.sroa.075.0.i, %bb.fg ], !dbg !13039
  %.sroa.27.0 = phi i64 [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 ], [ undef, %bb.fi ], [ %.sroa.27.0.copyload80, %bb.fg ], !dbg !13039
  %.sroa.1676.2 = phi ptr [ %.sroa.1676.1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 ], [ %.sroa.1676.1, %bb.fi ], [ %.sroa.1676.0.copyload78, %bb.fg ], !dbg !12726
  %.sroa.074.2 = phi i64 [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i53 ], [ -1, %bb.fi ], [ %.sroa.074.0.copyload75, %bb.fg ], !dbg !12726
    #dbg_value(i8 0, !11876, !DIExpression(DW_OP_LLVM_fragment, 832, 8), !12563)
    #dbg_value(i64 %.sroa.074.2, !11876, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12563)
    #dbg_value(ptr %.sroa.1676.2, !11876, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12563)
    #dbg_value(i64 %.sroa.27.0, !11876, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !12563)
    #dbg_value(i64 %.sroa.2781.0, !11876, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !12563)
    #dbg_value(ptr %.sroa.28.0, !11876, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !12563)
    #dbg_value(double %.sroa.30.0, !11876, !DIExpression(DW_OP_LLVM_fragment, 768, 64), !12563)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !13035, !noalias !12060
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !13040
  %i.nq = load i8, ptr %i.bp, align 8, !dbg !13041, !noundef !1364
  %i.nr = add i8 %i.nq, 1, !dbg !13041
  store i8 %i.nr, ptr %i.bp, align 8, !dbg !13041
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !13042
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !dbg !13043
  store i64 %.sroa.074.2, ptr %i.ar, align 8, !dbg !13043
  %.sroa.1676.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8, !dbg !13043
  store ptr %.sroa.1676.2, ptr %.sroa.1676.0..sroa_idx, align 8, !dbg !13043
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16, !dbg !13043
  store i64 %.sroa.27.0, ptr %.sroa.27.0..sroa_idx, align 8, !dbg !13043
  %.sroa.2781.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24, !dbg !13043
  store i64 %.sroa.2781.0, ptr %.sroa.2781.0..sroa_idx, align 8, !dbg !13043
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 32, !dbg !13043
  store ptr %.sroa.28.0, ptr %.sroa.28.0..sroa_idx, align 8, !dbg !13043
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 40, !dbg !13043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.29.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.480.i, i64 56, i1 false), !dbg !13043
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 96, !dbg !13043
  store double %.sroa.30.0, ptr %.sroa.30.0..sroa_idx, align 8, !dbg !13043
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 104, !dbg !13043
  store i8 0, ptr %.sroa.31.0..sroa_idx, align 8, !dbg !13043
  %i.ns = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsenfyI6F4F2A_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.fs unwind label %bb.fr, !dbg !13044 ; 5 uses

bb.fr:                                            ; preds = %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit
  %i.nt = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs3JBf551F2Kj_4qlog6events9JsonEventNtNtCsenfyI6F4F2A_10serde_json5error5ErrorEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(112) %i.ar) #16
          to label %common.resume unwind label %bb.aq, !dbg !13045

bb.fs:                                            ; preds = %_RINvXs0_NvXNvNtCs3JBf551F2Kj_4qlog6eventss3_1__NtBb_9JsonEventNtNtCs9xKKqPmwf7Y_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB10_7Visitor9visit_mapINtNtCsenfyI6F4F2A_10serde_json2de9MapAccessNtNtB2E_4read9SliceReadEECsi2C7WdEh0SA_3h3i.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.as, ptr noundef nonnull align 8 dereferenceable(112) %i.ar, i64 112, i1 false), !dbg !13042
  %i.nu = getelementptr inbounds nuw i8, ptr %i.as, i64 112, !dbg !13042
  store ptr %i.ns, ptr %i.nu, align 8, !dbg !13042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !dbg !13045
  %i.nv = load i64, ptr %i.as, align 8, !dbg !13042, !range !3165, !noundef !1364 ; 4 uses
  %i.nw = icmp eq i64 %i.nv, -1, !dbg !13042
  br i1 %i.nw, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63, label %bb.ft, !dbg !13046

bb.ft:                                            ; preds = %bb.fs
  %.not = icmp eq ptr %i.ns, null, !dbg !13042
  br i1 %.not, label %bb.fu, label %bb.fv, !dbg !13046

bb.fu:                                            ; preds = %bb.ft
    #dbg_value(i64 %i.nv, !11877, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12626)
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !13047
  %.sroa.421.0.copyload = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !dbg !13047
    #dbg_value(ptr %.sroa.421.0.copyload, !11877, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12626)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 16, !dbg !13047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.522.0..sroa_idx, i64 96, i1 false), !dbg !13047
    #dbg_value(i64 %i.nv, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %.sroa.421.0.copyload, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
    #dbg_value(i64 %i.nv, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %.sroa.421.0.copyload, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread, !dbg !13048

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63: ; preds = %bb.fs
  %i.nx = getelementptr inbounds nuw i8, ptr %i.as, i64 8, !dbg !13049
  %i.ny = load ptr, ptr %i.nx, align 8, !dbg !13049, !nonnull !1364, !align !3542, !noundef !1364 ; 2 uses
    #dbg_value(ptr %i.ny, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
    #dbg_value(i64 -1, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(i64 %i.nv, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %i.ny, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
  %.not959 = icmp eq ptr %i.ns, null, !dbg !13048
  br i1 %.not959, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread, label %bb.ga, !dbg !13048

bb.fv:                                            ; preds = %bb.ft
    #dbg_value(ptr %i.ns, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
    #dbg_value(i64 -1, !11872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11974)
    #dbg_value(ptr %i.as, !3167, !DIExpression(), !11847)
    #dbg_value(ptr %i.as, !3172, !DIExpression(), !11849)
    #dbg_value(ptr %i.as, !3142, !DIExpression(), !11851)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i59 unwind label %bb.fw, !dbg !13050

bb.fw:                                            ; preds = %bb.fv
  %i.nz = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.as, !3149, !DIExpression(), !11853)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.as)
          to label %.body.i57 unwind label %bb.fx, !dbg !13051

bb.fx:                                            ; preds = %bb.fw
  %i.oa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !13050
  unreachable, !dbg !13050

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i59: ; preds = %bb.fv
    #dbg_value(ptr %i.as, !3149, !DIExpression(), !11855)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %i.as)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i60 unwind label %bb.fy, !dbg !13052

bb.fy:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i59
  %i.ob = landingpad { ptr, i32 }
          cleanup
  br label %.body.i57, !dbg !13053

.body.i57:                                        ; preds = %bb.fy, %bb.fw
  %eh.lpad-body.i58 = phi { ptr, i32 } [ %i.ob, %bb.fy ], [ %i.nz, %bb.fw ]
  %i.oc = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !13053
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.oc) #16
          to label %common.resume unwind label %bb.fz, !dbg !13053

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i60: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsi2C7WdEh0SA_3h3i.exit.i.i59
  %i.od = getelementptr inbounds nuw i8, ptr %i.as, i64 24, !dbg !13053
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5value5ValueECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 dereferenceable(72) %i.od), !dbg !13053
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread, !dbg !13053

bb.fz:                                            ; preds = %.body.i57
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !13053
  unreachable, !dbg !13053

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread: ; preds = %bb.fu, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i60, %bb.ga, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63
  %.sroa.09.2689 = phi i64 [ %i.nv, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63 ], [ %i.nv, %bb.ga ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i60 ], [ %i.nv, %bb.fu ]
  %.sroa.10.2688 = phi ptr [ %i.ny, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63 ], [ %i.ny, %bb.ga ], [ %i.ns, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsi2C7WdEh0SA_3h3i.exit.i60 ], [ %.sroa.421.0.copyload, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !13048
  br label %bb.as, !dbg !13048

bb.ga:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsenfyI6F4F2A_10serde_json5error5ErrorECsi2C7WdEh0SA_3h3i(ptr nonnull %i.ns), !dbg !13048
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCs3JBf551F2Kj_4qlog6events9JsonEventECsi2C7WdEh0SA_3h3i.exit63.thread, !dbg !13048

bb.gb:                                            ; preds = %bb.d, %bb.as
  %.sroa.10.3 = phi ptr [ %i.bk, %bb.d ], [ %.sroa.10.1, %bb.as ], !dbg !11971
    #dbg_value(ptr %.sroa.10.3, !11872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11974)
    #dbg_value(ptr %.sroa.10.3, !11880, !DIExpression(), !12627)
    #dbg_value(ptr %1, !3881, !DIExpression(), !11857)
    #dbg_value(ptr %.sroa.10.3, !3885, !DIExpression(), !11857)
  %i.of = call noundef nonnull align 8 ptr @_RINvMs0_NtCsenfyI6F4F2A_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsi2C7WdEh0SA_3h3i(ptr noalias noundef nonnull align 8 %.sroa.10.3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1), !dbg !13054
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13055
  store ptr %i.of, ptr %i.og, align 8, !dbg !13055
  store i64 -1, ptr %0, align 8, !dbg !13055
  br label %bb.gd, !dbg !13056

bb.gc:                                            ; preds = %bb.as
    #dbg_value(i64 %.sroa.09.1, !11879, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12628)
    #dbg_value(ptr %.sroa.10.1, !11879, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12628)
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !13057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.526.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.14, i64 96, i1 false), !dbg !13058
  store i64 %.sroa.09.1, ptr %0, align 8, !dbg !13057
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13057
  store ptr %.sroa.10.1, ptr %.sroa.425.0..sroa_idx, align 8, !dbg !13057
  br label %bb.gd, !dbg !13059

bb.gd:                                            ; preds = %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14), !dbg !12711
  br label %bb.ge, !dbg !13060

bb.ge:                                            ; preds = %bb.gd, %.loopexit, %bb.ag
  ret void, !dbg !13061
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seedNtNtNtNtCsbmN5fM2HLz5_5serde7private2de7content14ContentVisitorECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 1)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13066 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13069, !DIExpression(), !13078)
    #dbg_declare(ptr poison, !13070, !DIExpression(), !13079)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13084
  call fastcc void @_RINvNvXs7_NtCsenfyI6F4F2A_10serde_json2deINtB8_9SeqAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9SeqAccess17next_element_seed16has_next_elementNtNtBa_4read9SliceReadECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1), !dbg !13084
  %i.c = load i8, ptr %i.b, align 8, !dbg !13084, !range !3840, !noundef !1364
  %i.d = trunc nuw i8 %i.c to i1, !dbg !13084
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !13085

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13086
  %i.f = load ptr, ptr %i.e, align 8, !dbg !13086, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.f, !13072, !DIExpression(), !13081)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13087
  store ptr %i.f, ptr %i.g, align 8, !dbg !13087
  store i8 -2, ptr %0, align 8, !dbg !13087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13088
  br label %bb.f, !dbg !13089

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !13090
  %i.i = load i8, ptr %i.h, align 1, !dbg !13090, !range !3840, !noundef !1364
  %i.j = trunc nuw i8 %i.i to i1, !dbg !13090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13088
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !13085

bb.d:                                             ; preds = %bb.c
  store i8 -1, ptr %0, align 8, !dbg !13091
  br label %bb.f, !dbg !13089

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13092
  %i.k = load ptr, ptr %1, align 8, !dbg !13093, !nonnull !1364, !align !3542, !noundef !1364
  call void @_RINvXsi_NtNtNtCsbmN5fM2HLz5_5serde7private2de7contentNtB6_14ContentVisitorNtNtCs9xKKqPmwf7Y_10serde_core2de15DeserializeSeed11deserializeQINtNtCsenfyI6F4F2A_10serde_json2de12DeserializerNtNtB2h_4read9SliceReadEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k), !dbg !13094
  %i.l = load i8, ptr %i.a, align 8, !dbg !13092, !range !3432, !noundef !1364
  %i.m = icmp eq i8 %i.l, -1, !dbg !13092
  br i1 %i.m, label %bb.g, label %bb.h, !dbg !13085

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void, !dbg !13095

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13086
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13086, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.o, !13074, !DIExpression(), !13082)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13096
  store ptr %i.o, ptr %i.p, align 8, !dbg !13096
  store i8 -2, ptr %0, align 8, !dbg !13096
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13097
  br label %bb.f, !dbg !13098

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !13090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13097
  br label %bb.f, !dbg !13099
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seedINtNtCskKLDkoKarTP_4core6marker11PhantomDataNtNtCsexYYUdYSQU6_5alloc6string6StringEECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13104 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13111, !DIExpression(), !13120)
    #dbg_declare(ptr poison, !13112, !DIExpression(), !13121)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13133
  call fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1), !dbg !13133
  %i.c = load i8, ptr %i.b, align 8, !dbg !13133, !range !3840, !noundef !1364
  %i.d = trunc nuw i8 %i.c to i1, !dbg !13133
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !13134

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13135
  %i.f = load ptr, ptr %i.e, align 8, !dbg !13135, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.f, !13114, !DIExpression(), !13123)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13136
  store ptr %i.f, ptr %i.g, align 8, !dbg !13136
  store i64 -2, ptr %0, align 8, !dbg !13136
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13137
  br label %bb.f, !dbg !13138

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !13139
  %i.i = load i8, ptr %i.h, align 1, !dbg !13139, !range !3840, !noundef !1364
  %i.j = trunc nuw i8 %i.i to i1, !dbg !13139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13137
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !13134

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !dbg !13140
  br label %bb.f, !dbg !13138

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13141
  %i.k = load ptr, ptr %1, align 8, !dbg !13142, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_declare(ptr poison, !13124, !DIExpression(), !13107)
    #dbg_value(ptr %i.k, !13128, !DIExpression(), !13108)
    #dbg_declare(ptr poison, !13127, !DIExpression(), !13107)
  call void @_RINvXs6_NtNtCs9xKKqPmwf7Y_10serde_core2de5implsNtNtCsexYYUdYSQU6_5alloc6string6StringNtB8_11Deserialize11deserializeINtNtCsenfyI6F4F2A_10serde_json2de6MapKeyNtNtB1V_4read9SliceReadEECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.k), !dbg !13143
  %i.l = load i64, ptr %i.a, align 8, !dbg !13141, !range !3165, !noundef !1364
  %i.m = icmp eq i64 %i.l, -1, !dbg !13141
  br i1 %i.m, label %bb.g, label %bb.h, !dbg !13134

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.d, %bb.b
  ret void, !dbg !13144

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !13135
  %i.o = load ptr, ptr %i.n, align 8, !dbg !13135, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.o, !13116, !DIExpression(), !13131)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13145
  store ptr %i.o, ptr %i.p, align 8, !dbg !13145
  store i64 -2, ptr %0, align 8, !dbg !13145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13146
  br label %bb.f, !dbg !13147

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !13139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !13146
  br label %bb.f, !dbg !13148
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seedNtNtNtB8_5value2de13KeyClassifierECsi2C7WdEh0SA_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !13165 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !13193, !DIExpression(), !13202)
    #dbg_declare(ptr poison, !13194, !DIExpression(), !13203)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !13208
  call fastcc void @_RINvNvXs9_NtCsenfyI6F4F2A_10serde_json2deINtB8_9MapAccesspENtNtCs9xKKqPmwf7Y_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsi2C7WdEh0SA_3h3i(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %1), !dbg !13208
  %i.c = load i8, ptr %i.b, align 8, !dbg !13208, !range !3840, !noundef !1364
  %i.d = trunc nuw i8 %i.c to i1, !dbg !13208
  br i1 %i.d, label %bb.b, label %bb.c, !dbg !13209

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !13210
  %i.f = load ptr, ptr %i.e, align 8, !dbg !13210, !nonnull !1364, !align !3542, !noundef !1364
    #dbg_value(ptr %i.f, !13196, !DIExpression(), !13205)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !13211
  store ptr %i.f, ptr %i.g, align 8, !dbg !13211
  store i64 -2, ptr %0, align 8, !dbg !13211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13212
  br label %bb.f, !dbg !13213

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1, !dbg !13214
  %i.i = load i8, ptr %i.h, align 1, !dbg !13214, !range !3840, !noundef !1364
  %i.j = trunc nuw i8 %i.i to i1, !dbg !13214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !13212
  br i1 %i.j, label %bb.e, label %bb.d, !dbg !13209

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8, !dbg !13215
  br label %bb.f, !dbg !13213

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !13216
  %i.k = load ptr, ptr %1, align 8, !dbg !13217, !nonnull !1364, !align !3542, !noundef !1364
end_hunk_3
