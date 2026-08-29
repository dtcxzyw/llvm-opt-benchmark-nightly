Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.15?download=true
inline.NumInlined: 184
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB5_16TypedValueParser9parse_refB1q_:bb.a

bb.ap:                                            ; preds = %.noexc.i25
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !181
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #28
          to label %.noexc9.i unwind label %bb.aq, !noalias !170

.noexc9.i:                                        ; preds = %bb.ap
  unreachable

_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i: ; preds = %.noexc.i25
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !181, !nonnull !6, !noundef !6 ; 2 uses
  %i.cs = icmp samesign ugt i64 %i.co, 2
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !181
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cr, i8 46, i64 3, i1 false), !noalias !181
  store i64 %i.co, ptr %i.f, align 8, !alias.scope !178, !noalias !170
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !178, !noalias !170
  %.sroa.6.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i26, align 8, !alias.scope !178, !noalias !170
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.02.2.i23 = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ao ]
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

.body.i20:                                        ; preds = %bb.aq, %bb.ak
  %.sroa.02.2.lpad-body.i21 = phi i1 [ %.sroa.02.2.i23, %bb.aq ], [ true, %bb.ak ]
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.ct, %bb.aq ], [ %i.cj, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %bb.ai unwind label %bb.aw, !noalias !170

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i
  %i.cu = invoke noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error13invalid_valueCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.aq, !noalias !170

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !173
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !173
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !170
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_.exit unwind label %bb.au, !noalias !170

bb.au:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.av, !noalias !170

bb.av:                                            ; preds = %bb.au
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !170
  unreachable

bb.aw:                                            ; preds = %bb.ax, %.body.i20
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !170
  unreachable

bb.ax:                                            ; preds = %bb.ai, %.body11.thread17.i
  %.pn14.i15 = phi { ptr, i32 } [ %i.cb, %.body11.thread17.i ], [ %eh.lpad-body.i22, %bb.ai ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %common.resume unwind label %bb.aw, !noalias !170

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !170
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !170
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cy, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs0_0B1s_.exit, %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs0_0B1s_.exit ], [ 1, %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_.exit ], [ 0, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !6, !noundef !6
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !6
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_RNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB5_20RangedU64ValueParserNtB5_16TypedValueParser9parse_refCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [20 x i8], align 1                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [20 x i8], align 1                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [20 x i8], align 1                ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [20 x i8], align 1                ; 3 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [20 x i8], align 1                ; 3 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [20 x i8], align 1                ; 3 uses
  %i.n = alloca [24 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 9 uses
  %i.q = alloca [24 x i8], align 8                ; 20 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 7 uses
  %i.z = alloca [24 x i8], align 8                ; 8 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [24 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 7 uses
  %i.ag = alloca [32 x i8], align 8               ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 8 uses
  %i.ai = alloca [24 x i8], align 8               ; 3 uses
  %i.aj = alloca [24 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 8 uses
  %i.al = alloca [24 x i8], align 8               ; 7 uses
  %i.am = alloca [8 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
  %i.an = load i64, ptr %i.af, align 8, !range !38, !noundef !6
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !182
  call void @_RNvMNtNtCs2C93r1qUspC_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1)
  call void @_RNvMNtNtCs2C93r1qUspC_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
  %i.ap = call noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error12invalid_utf8Cs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !182
  br label %bb.dq

bb.c:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  switch i64 %i.at, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.au = load i8, ptr %i.ar, align 1, !alias.scope !185, !noalias !188, !noundef !6 ; 2 uses
  switch i8 %i.au, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.ar, align 1, !alias.scope !185, !noalias !188
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.av = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.au, %bb.d ]
  %cond.i = icmp eq i8 %i.av, 43                  ; 2 uses
  %i.aw = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.at, %i.aw        ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.ax = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.ax, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.az, 0
  br i1 %.not52.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i153 = phi ptr [ %i.ay, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i152 = phi i64 [ %i.az, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i151 = phi i64 [ %i.bh, %.preheader56.i ], [ 0, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i153, i64 1
  %i.az = add nsw i64 %.sroa.15.1.i152, -1        ; 2 uses
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i151, i64 10) ; 2 uses
  %6 = extractvalue { i64, i1 } %5, 0             ; 2 uses
  %7 = extractvalue { i64, i1 } %5, 1
  %i.ba = load i8, ptr %.sroa.0.1.i153, align 1, !alias.scope !185, !noalias !188, !noundef !6 ; 2 uses
  br i1 %7, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add nsw i32 %i.bb, -48                  ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 10
  br i1 %i.bd, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.be = add i8 %i.ba, -48
  %i.bf = icmp ult i8 %i.be, 10
  %spec.select = select i1 %i.bf, i8 2, i8 1
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bg = zext nneg i32 %i.bc to i64
  %i.bh = add i64 %6, %i.bg                       ; 3 uses
  %i.bi = icmp ult i64 %i.bh, %6
  br i1 %i.bi, label %.loopexit, label %.preheader56.i, !prof !7

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.bp, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.bo, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.br, %bb.i ], [ 0, %.preheader.i ]
  %i.bj = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !185, !noalias !188, !noundef !6
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add nsw i32 %i.bk, -48                  ; 2 uses
  %i.bm = icmp ult i32 %i.bl, 10
  br i1 %i.bm, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.bn = mul i64 %.sroa.042.267.i, 10
  %i.bo = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.bq = zext nneg i32 %i.bl to i64
  %i.br = add i64 %i.bn, %i.bq                    ; 2 uses
  %.not53.i = icmp eq i64 %i.bo, 0
  br i1 %.not53.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.c, %bb.d, %bb.d
  %.sroa.5.0.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !190
  store i64 0, ptr %i.w, align 8, !noalias !190
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !190
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !190
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1610612768, ptr %i.bs, align 8, !noalias !190
  store ptr %i.w, ptr %i.v, align 8, !noalias !190
  %i.bt = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @17, ptr %i.bt, align 8, !noalias !190
  %i.bu = invoke noundef zeroext i1 @_RNvXs9_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.l unwind label %bb.k, !noalias !196

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #26
          to label %common.resume unwind label %bb.n, !noalias !196

bb.l:                                             ; preds = %bb.j
  br i1 %i.bu, label %bb.m, label %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i, !prof !7

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %.noexc.i.i unwind label %bb.k, !noalias !196

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !196
  unreachable

common.resume:                                    ; preds = %bb.dp, %bb.aj, %bb.k, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.dn, %bb.aj ], [ %.pn.ph.i, %bb.af ], [ %i.bv, %bb.k ], [ %.pn.pn.ph, %bb.dp ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.l
  %.sroa.020.0.copyload.i = load i64, ptr %i.w, align 8, !noalias !197
  %.sroa.421.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !197
  %.sroa.522.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !190
  br label %bb.q

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !198
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !198
  %i.bx = load i64, ptr %i.u, align 8, !range !38, !noalias !198, !noundef !6
  %i.by = trunc nuw i64 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !range !39, !noalias !198, !noundef !6 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.by, label %bb.p, label %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !198
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cc) #28, !noalias !198
  unreachable

_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.o
  %i.cd = load ptr, ptr %i.cb, align 8, !noalias !198, !nonnull !6, !noundef !6 ; 2 uses
  %i.ce = icmp samesign ugt i64 %i.ca, 2
  tail call void @llvm.assume(i1 %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !198
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cd, i8 46, i64 3, i1 false), !noalias !198
  br label %bb.q

bb.q:                                             ; preds = %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i
  %.sroa.6.023.i = phi i64 [ 3, %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i ], [ %.sroa.522.0.copyload.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i ]
  %.sroa.5.0.i = phi ptr [ %i.cd, %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i ], [ %.sroa.421.0.copyload.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i ]
  %.sroa.0.0.i34 = phi i64 [ %i.ca, %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i ], [ %.sroa.020.0.copyload.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !201
  store i64 %.sroa.0.0.i34, ptr %i.aa, align 8, !noalias !201
  %.sroa.5.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx12.i, align 8, !noalias !201
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.6.023.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !201
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !201
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.s unwind label %bb.r, !noalias !201

bb.r:                                             ; preds = %bb.w, %bb.u, %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.q
  %i.cg = load i64, ptr %i.y, align 8, !range !32, !noalias !201, !noundef !6
  %.not7.i = icmp eq i64 %i.cg, -1
  br i1 %.not7.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !201
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.ch = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !201, !nonnull !6, !noundef !6
  %i.cj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !201, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !201
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef %i.ck, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.r, !noalias !201

bb.v:                                             ; preds = %bb.u
  %i.cl = load i64, ptr %i.x, align 8, !range !38, !noalias !201, !noundef !6
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !39, !noalias !201, !noundef !6 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.w, label %bb.x, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !201
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #28
          to label %bb.ac unwind label %bb.r, !noalias !201

bb.x:                                             ; preds = %bb.v
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !201, !nonnull !6, !noundef !6 ; 2 uses
  %i.cs = icmp ule i64 %i.ck, %i.co
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !201
  %.not8.i = icmp eq i64 %i.ck, 0
  br i1 %.not8.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  store i64 %i.co, ptr %i.z, align 8, !noalias !201
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !201
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.ck, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !201
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %i.ci, i64 %i.ck, i1 false), !noalias !201
  br label %bb.y

bb.aa:                                            ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !201
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !201
  %i.ct = call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 1, i64 noundef range(i64 1, 9) 1) #27, !noalias !201 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.ab, label %_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs1_0Cs3WYoaQ2jqaU_5wasmi.exit, !prof !97

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #28
          to label %.noexc.i unwind label %bb.ad, !noalias !201

.noexc.i:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.w
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #26
          to label %bb.af unwind label %bb.ae, !noalias !201

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !201
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.r
end_hunk_0
begin_hunk_1_@_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7provideCs3WYoaQ2jqaU_5wasmi:bb.a
; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error7type_idCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @40, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, i64 } { ptr @39, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #10 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #5 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @41, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMs0_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncType6params(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterNtNtCs5zeGauAcNNa_10wasmi_core5value7ValTypeEENtNtNtBa_6traits8iterator8Iterator5eq_byINtNtB8_3map3MapIBY_NtNtCsefoF4u9kbII_5wasmi5value3ValENvYB35_NtNtNtB39_4func2ty16DynamicallyTyped2tyENCINvYB3_B27_2eqB2L_E0ECs3WYoaQ2jqaU_5wasmi(ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej0_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB4_13FuncTypeErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej1_AB11_j0_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej1_B10_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej2_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i16 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej3_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i24, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej4_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i32 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej5_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i40, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej6_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i48, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej7_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i56, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs5zeGauAcNNa_10wasmi_core9func_typeNtB6_8FuncType3newANtNtB8_5value7ValTypej9_AB11_j1_ECs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef align 1 captures(address) dead_on_return dereferenceable(9), i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs2C93r1qUspC_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTdNtNtB7_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2C93r1qUspC_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdBY_EENCINvNtNtNtCs2C93r1qUspC_12clap_builder6parser8features11suggestions12did_you_meanRBY_INtNtNtB28_5slice4iter4IterBY_EEs0_0EE9from_iterCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvCs2Vub2XMmQ8u_6strsim4jaro(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2C93r1qUspC_12clap_builder6output5usageNtB2_5Usage3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCs2C93r1qUspC_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error12invalid_utf8Cs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error16value_validationCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error8with_cmdCs3WYoaQ2jqaU_5wasmi(ptr noalias noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error13invalid_valueCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 384307168202282326), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtNtCs2C93r1qUspC_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB4P_15EnumValueParserB3K_ENtB4P_16TypedValueParser9parse_refs_00ENCB4H_s_0ENCB4H_s0_0EE9from_iterB3Q_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCskKLDkoKarTP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNtNtCskKLDkoKarTP_4core3num5error13ParseIntErrorNtNtB8_5error5Error5causeCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #11

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #17

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #19

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #20

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecTdNtNtB7_6string6StringEE8grow_oneCs2C93r1qUspC_12clap_builder(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCskKLDkoKarTP_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #20

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtReNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNvYNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run8KeyValueNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strNtB5_14AnyValueParser9parse_refB16_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsc_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNvYNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run8KeyValueNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strNtB5_14AnyValueParser10parse_ref_B16_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(600), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsc_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNvYNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run8KeyValueNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strNtB5_14AnyValueParser15possible_valuesB16_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXsc_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNvYNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run8KeyValueNtNtNtCskKLDkoKarTP_4core3str6traits7FromStr8from_strNtB5_14AnyValueParser9clone_anyB16_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCs2C93r1qUspC_12clap_builder6parser8features11suggestions12did_you_meanRB1N_INtNtNtBc_5slice4iter4IterB1N_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB4S_zEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtBW_3net6parser14AddrParseErrorE4fromCs3WYoaQ2jqaU_5wasmi(i8 noundef range(i8 0, 6)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsG258MDvU3F_3std3ffi6os_strNtB5_8OsStringINtNtCskKLDkoKarTP_4core7convert4FromRNtNtCsexYYUdYSQU6_5alloc6string6StringE4fromCs3WYoaQ2jqaU_5wasmi(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtCs5zeGauAcNNa_10wasmi_core9func_type8FuncTypeNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsb_NtCskKLDkoKarTP_4core3fmtNtB5_9FormatterNtB5_5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24), i32 noundef range(i32 0, 1114112)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs5_NtCscK5W4trzgIe_6anyhow7contextINtB5_6QuotedQNtNtCskKLDkoKarTP_4core3fmt9FormatterENtBQ_5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtRReNtB6_7Display3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCskKLDkoKarTP_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCskKLDkoKarTP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCskKLDkoKarTP_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsd_NtNtNtCskKLDkoKarTP_4core3fmt3num3impyNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBd_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #23

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsbkii2mvYdKU_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #24 = { noinline noreturn }
attributes #25 = { cold noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"rustc version 1.100.0-nightly (bff8e12ff 2026-08-26)"}
!5 = !{i8 0, i8 3}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i8 0, i8 2}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 1"}
!11 = distinct !{!11, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi"}
!12 = !{!13}
!13 = distinct !{!13, !11, !"_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 0"}
!14 = !{!15, !17, !19}
!15 = distinct !{!15, !16, !"_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE4nextCs3WYoaQ2jqaU_5wasmi: argument 0"}
!16 = distinct !{!16, !"_RNvMs8_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerINtB5_15PolymorphicIterSINtNtNtBb_3mem12maybe_uninit11MaybeUninitRNtNtCsexYYUdYSQU6_5alloc6string6StringEE4nextCs3WYoaQ2jqaU_5wasmi"}
!17 = distinct !{!17, !18, !"_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 0"}
!18 = distinct !{!18, !"_RNvXs3_NtNtCskKLDkoKarTP_4core5array4iterINtB5_8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi"}
!19 = distinct !{!19, !20, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 1"}
!20 = distinct !{!20, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi"}
!21 = !{!22}
!22 = distinct !{!22, !20, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 0"}
!23 = !{i64 8}
!24 = !{!25}
!25 = distinct !{!25, !20, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 1:Peel0"}
!26 = !{!15, !17, !25}
!27 = !{!28}
!28 = distinct !{!28, !20, !"_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_5array4iter8IntoIterRNtNtCsexYYUdYSQU6_5alloc6string6StringKj1_ENvYB1q_INtNtBb_7convert4IntoNtNtNtCsG258MDvU3F_3std3ffi6os_str8OsStringE4intoENtNtNtB9_6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 0:Peel0"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTdNtNtB9_6string6StringEB1k_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi: argument 0"}
!31 = distinct !{!31, !"_RNvXs0_NtNtCsexYYUdYSQU6_5alloc3vec13in_place_dropINtB5_24InPlaceDstDataSrcBufDropTdNtNtB9_6string6StringEB1k_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi"}
!32 = !{i64 -1, i64 -9223372036854775808}
!33 = !{!34}
!34 = distinct !{!34, !35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2C93r1qUspC_12clap_builder7builder10styled_str9StyledStrEECs3WYoaQ2jqaU_5wasmi: argument 0"}
!35 = distinct !{!35, !"_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs2C93r1qUspC_12clap_builder7builder10styled_str9StyledStrEECs3WYoaQ2jqaU_5wasmi"}
!36 = !{!"branch_weights", !"expected", i32 1717127, i32 2145766521}
!37 = !{i64 0, i64 -9223372036854775808}
!38 = !{i64 0, i64 2}
!39 = !{i64 0, i64 -9223372036854775807}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_RINvMNtCskKLDkoKarTP_4core5sliceSTdNtNtCsexYYUdYSQU6_5alloc6string6StringE16binary_search_byNCINvNtNtNtCs2C93r1qUspC_12clap_builder6parser8features11suggestions12did_you_meanRBx_INtNtB3_4iter4IterBx_EE0ECs3WYoaQ2jqaU_5wasmi: argument 0"}
!42 = distinct !{!42, !"_RINvMNtCskKLDkoKarTP_4core5sliceSTdNtNtCsexYYUdYSQU6_5alloc6string6StringE16binary_search_byNCINvNtNtNtCs2C93r1qUspC_12clap_builder6parser8features11suggestions12did_you_meanRBx_INtNtB3_4iter4IterBx_EE0ECs3WYoaQ2jqaU_5wasmi"}
!43 = !{!44}
!44 = distinct !{!44, !42, !"_RINvMNtCskKLDkoKarTP_4core5sliceSTdNtNtCsexYYUdYSQU6_5alloc6string6StringE16binary_search_byNCINvNtNtNtCs2C93r1qUspC_12clap_builder6parser8features11suggestions12did_you_meanRBx_INtNtB3_4iter4IterBx_EE0ECs3WYoaQ2jqaU_5wasmi: argument 1"}
!45 = !{!46}
!46 = distinct !{!46, !47, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCs3WYoaQ2jqaU_5wasmi: argument 0"}
!47 = distinct !{!47, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCs3WYoaQ2jqaU_5wasmi"}
!48 = !{!49}
!49 = distinct !{!49, !47, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTdNtNtB6_6string6StringEE10insert_mutCs3WYoaQ2jqaU_5wasmi: argument 1"}
!50 = !{!51}
!51 = distinct !{!51, !52, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2D_12value_parserINtB3T_15EnumValueParserBQ_ENtB3T_16TypedValueParser15possible_values0EBW_: argument 0"}
!52 = distinct !{!52, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2D_12value_parserINtB3T_15EnumValueParserBQ_ENtB3T_16TypedValueParser15possible_values0EBW_"}
!53 = !{!54}
!54 = distinct !{!54, !52, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueQNCNvXso_NtB2D_12value_parserINtB3T_15EnumValueParserBQ_ENtB3T_16TypedValueParser15possible_values0EBW_: argument 1"}
!55 = !{!51, !54}
!56 = !{!57, !59, !61, !51}
!57 = distinct !{!57, !58, !"_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value: argument 0"}
!58 = distinct !{!58, !"_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value"}
!59 = distinct !{!59, !60, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser15possible_values0B1s_: argument 0"}
!60 = distinct !{!60, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser15possible_values0B1s_"}
!61 = distinct !{!61, !62, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2h_: argument 0"}
!62 = distinct !{!62, !"_RNvXs1_NtNtNtCskKLDkoKarTP_4core3ops8function5implsQNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtBW_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtBW_16TypedValueParser15possible_values0INtB7_5FnMutTRB2b_EE8call_mutB2h_"}
!63 = !{!64}
!64 = distinct !{!64, !65, !"_RNvXs2I_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs3WYoaQ2jqaU_5wasmi: argument 0"}
!65 = distinct !{!65, !"_RNvXs2I_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtNtBa_4iter6traits10exact_size17ExactSizeIterator3lenCs3WYoaQ2jqaU_5wasmi"}
!66 = !{!67, !69}
!67 = distinct !{!67, !68, !"_RNvXs1_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 0"}
!68 = distinct !{!68, !"_RNvXs1_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt"}
!69 = distinct !{!69, !68, !"_RNvXs1_NtNtCsefoF4u9kbII_5wasmi4func2tyNtB5_8FuncTypeNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt: argument 1"}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!72 = distinct !{!72, !"_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!73 = !{!74}
!74 = distinct !{!74, !72, !"_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!75 = !{!76}
!76 = distinct !{!76, !77, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push: argument 0"}
!77 = distinct !{!77, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String4push"}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 1"}
!80 = distinct !{!80, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str"}
!81 = !{!82, !84}
!82 = distinct !{!82, !83, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs3WYoaQ2jqaU_5wasmi: argument 0"}
!83 = distinct !{!83, !"_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCs3WYoaQ2jqaU_5wasmi"}
!84 = distinct !{!84, !80, !"_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String8push_str: argument 0"}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 0"}
!87 = distinct !{!87, !"_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt"}
!88 = !{!89}
!89 = distinct !{!89, !87, !"_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt: argument 1"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi: argument 0"}
!92 = distinct !{!92, !"_RNvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB6_4IterNtNtNtCsefoF4u9kbII_5wasmi8instance7exports6ExternENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs3WYoaQ2jqaU_5wasmi"}
!93 = !{i16 0, i16 3}
!94 = !{!95}
!95 = distinct !{!95, !96, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrEE3newCs3WYoaQ2jqaU_5wasmi: argument 0"}
!96 = distinct !{!96, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrEE3newCs3WYoaQ2jqaU_5wasmi"}
!97 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrEE3newCs3WYoaQ2jqaU_5wasmi: argument 0"}
!100 = distinct !{!100, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCskKLDkoKarTP_4core3net11socket_addr10SocketAddrEE3newCs3WYoaQ2jqaU_5wasmi"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeEE3newB16_: argument 0"}
!103 = distinct !{!103, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeEE3newB16_"}
!104 = !{!105}
!105 = distinct !{!105, !106, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeEE3newB16_: argument 0"}
!106 = distinct !{!106, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeEE3newB16_"}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs3WYoaQ2jqaU_5wasmi: argument 0"}
!109 = distinct !{!109, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs3WYoaQ2jqaU_5wasmi"}
!110 = !{i64 0, i64 3}
!111 = !{!112, !114}
!112 = distinct !{!112, !113, !"_RNvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB3_ENtNtBa_5clone5Clone5cloneCs3WYoaQ2jqaU_5wasmi: argument 1"}
!113 = distinct !{!113, !"_RNvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB3_ENtNtBa_5clone5Clone5cloneCs3WYoaQ2jqaU_5wasmi"}
!114 = distinct !{!114, !115, !"_RNvXs1x_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB6_20RangedU64ValueParserNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3WYoaQ2jqaU_5wasmi: argument 1"}
!115 = distinct !{!115, !"_RNvXs1x_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB6_20RangedU64ValueParserNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3WYoaQ2jqaU_5wasmi"}
!116 = !{!117, !118}
!117 = distinct !{!117, !113, !"_RNvYTINtNtNtCskKLDkoKarTP_4core3ops5range5BoundyEB3_ENtNtBa_5clone5Clone5cloneCs3WYoaQ2jqaU_5wasmi: argument 0"}
!118 = distinct !{!118, !115, !"_RNvXs1x_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB6_20RangedU64ValueParserNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs3WYoaQ2jqaU_5wasmi: argument 0"}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserE3newCs3WYoaQ2jqaU_5wasmi: argument 0"}
!121 = distinct !{!121, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserE3newCs3WYoaQ2jqaU_5wasmi"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs3WYoaQ2jqaU_5wasmi: argument 0"}
!124 = distinct !{!124, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInneryEE3newCs3WYoaQ2jqaU_5wasmi"}
!125 = !{!126}
!126 = distinct !{!126, !127, !"_RNCNvXsd_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1d_3net11socket_addr10SocketAddrNtNtB1O_6parser14AddrParseErrorENtB7_16TypedValueParser9parse_ref0Cs3WYoaQ2jqaU_5wasmi: argument 0"}
!127 = distinct !{!127, !"_RNCNvXsd_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1d_3net11socket_addr10SocketAddrNtNtB1O_6parser14AddrParseErrorENtB7_16TypedValueParser9parse_ref0Cs3WYoaQ2jqaU_5wasmi"}
!128 = distinct !{null}
!129 = !{i8 0, i8 6}
!130 = !{!131, !133, !134}
!131 = distinct !{!131, !132, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi: argument 0"}
!132 = distinct !{!132, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi"}
!133 = distinct !{!133, !132, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi: argument 1"}
!134 = distinct !{!134, !135, !"_RNCNvXsd_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1d_3net11socket_addr10SocketAddrNtNtB1O_6parser14AddrParseErrorENtB7_16TypedValueParser9parse_refs_0Cs3WYoaQ2jqaU_5wasmi: argument 0"}
!135 = distinct !{!135, !"_RNCNvXsd_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1d_3net11socket_addr10SocketAddrNtNtB1O_6parser14AddrParseErrorENtB7_16TypedValueParser9parse_refs_0Cs3WYoaQ2jqaU_5wasmi"}
!136 = !{!131, !134}
!137 = !{!133, !134}
!138 = !{!139, !134}
!139 = distinct !{!139, !140, !"_RNCNCNvXsd_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1f_3net11socket_addr10SocketAddrNtNtB1Q_6parser14AddrParseErrorENtB9_16TypedValueParser9parse_refs_0s_0Cs3WYoaQ2jqaU_5wasmi: argument 0"}
!140 = distinct !{!140, !"_RNCNCNvXsd_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserFG_RL0_eEINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtB1f_3net11socket_addr10SocketAddrNtNtB1Q_6parser14AddrParseErrorENtB9_16TypedValueParser9parse_refs_0s_0Cs3WYoaQ2jqaU_5wasmi"}
!141 = !{!134}
!142 = !{!143, !145, !147, !148, !150}
!143 = distinct !{!143, !144, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserE3newCs3WYoaQ2jqaU_5wasmi: argument 0"}
!144 = distinct !{!144, !"_RNvMNtCsexYYUdYSQU6_5alloc5boxedINtB2_3BoxNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserE3newCs3WYoaQ2jqaU_5wasmi"}
!145 = distinct !{!145, !146, !"_RNvXs0_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNtB5_20RangedU64ValueParserE4fromCs3WYoaQ2jqaU_5wasmi: argument 0"}
!146 = distinct !{!146, !"_RNvXs0_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNtB5_20RangedU64ValueParserE4fromCs3WYoaQ2jqaU_5wasmi"}
!147 = distinct !{!147, !146, !"_RNvXs0_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB5_11ValueParserINtNtCskKLDkoKarTP_4core7convert4FromNtB5_20RangedU64ValueParserE4fromCs3WYoaQ2jqaU_5wasmi: argument 1"}
!148 = distinct !{!148, !149, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserINtB5_4IntoNtBA_11ValueParserE4intoCs3WYoaQ2jqaU_5wasmi: argument 0"}
!149 = distinct !{!149, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserINtB5_4IntoNtBA_11ValueParserE4intoCs3WYoaQ2jqaU_5wasmi"}
!150 = distinct !{!150, !149, !"_RNvXs1_NtCskKLDkoKarTP_4core7convertNtNtNtCs2C93r1qUspC_12clap_builder7builder12value_parser20RangedU64ValueParserINtB5_4IntoNtBA_11ValueParserE4intoCs3WYoaQ2jqaU_5wasmi: argument 1"}
!151 = !{!145, !148}
!152 = !{!153}
!153 = distinct !{!153, !154, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs0_0B1s_: argument 0"}
!154 = distinct !{!154, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs0_0B1s_"}
!155 = !{!156, !158, !153}
!156 = distinct !{!156, !157, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi: argument 0"}
!157 = distinct !{!157, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi"}
!158 = distinct !{!158, !157, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi: argument 1"}
!159 = !{!156, !153}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs0_00B1u_: argument 0"}
!162 = distinct !{!162, !"_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs0_00B1u_"}
!163 = !{!161, !153}
!164 = !{!165, !167, !169}
!165 = distinct !{!165, !166, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_: argument 0"}
!166 = distinct !{!166, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_"}
!167 = distinct !{!167, !168, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_: argument 0"}
!168 = distinct !{!168, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_"}
!169 = distinct !{!169, !168, !"_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_: argument 1"}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_: argument 0"}
!172 = distinct !{!172, !"_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_"}
!173 = !{!174, !176, !171}
!174 = distinct !{!174, !175, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi: argument 0"}
!175 = distinct !{!175, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi"}
!176 = distinct !{!176, !175, !"_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi: argument 1"}
!177 = !{!174, !171}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_: argument 0"}
!180 = distinct !{!180, !"_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_"}
!181 = !{!179, !171}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs0_0Cs3WYoaQ2jqaU_5wasmi: argument 0"}
!184 = distinct !{!184, !"_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs0_0Cs3WYoaQ2jqaU_5wasmi"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl: argument 1"}
!187 = distinct !{!187, !"_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl"}
!188 = !{!189}
end_hunk_1
