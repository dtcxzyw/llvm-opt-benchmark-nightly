Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmi-rs/original/wasmi.wasmi.2e05a1d9f0df8596-cgu.15?download=true
inline.NumInlined: 184
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB5_16TypedValueParser9parse_refB1q_:bb.a
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !157
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !noalias !157, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !157, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !157
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !157
  %i.ad = load i64, ptr %i.m, align 8, !range !12, !noalias !157, !noundef !6
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !13, !noalias !157, !noundef !6 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.ah, align 8, !noalias !157
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ag, i64 %i.ai) #28, !noalias !157
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ah, align 8, !noalias !157, !nonnull !6, !noundef !6 ; 2 uses
  %i.ak = icmp ule i64 %i.ac, %i.ag
  tail call void @llvm.assume(i1 %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !157
  %.not6.i = icmp eq i64 %i.ac, 0
  br i1 %.not6.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.h
  store i64 %i.ag, ptr %i.q, align 8, !noalias !157
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !157
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !157
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aj, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false), !noalias !157
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !157
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB4P_15EnumValueParserB3K_ENtB4P_16TypedValueParser9parse_refs_00ENCB4H_s_0ENCB4H_s0_0EE9from_iterB3Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noundef nonnull @31, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @31, i64 3))
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i unwind label %.body12.thread18.i, !noalias !157

.body12.thread18.i:                               ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.l:                                             ; preds = %.body.i
  br i1 %.sroa.02.2.lpad-body.i, label %bb.aa, label %common.resume

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i: ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !157, !nonnull !6, !noundef !6
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !157, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !157
  br i1 %.not, label %bb.r, label %bb.m

bb.m:                                             ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !158
  store i64 0, ptr %i.l, align 8, !noalias !158
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !158
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !158
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 1610612768, ptr %i.aq, align 8, !noalias !158
  store ptr %i.l, ptr %i.k, align 8, !noalias !158
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @17, ptr %i.ar, align 8, !noalias !158
  %i.as = invoke noundef zeroext i1 @_RNvXs9_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.o unwind label %bb.n, !noalias !159

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l) #26
          to label %.body.i unwind label %bb.q, !noalias !159

bb.o:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.p, label %bb.v, !prof !7

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %.noexc.i.i unwind label %bb.n, !noalias !159

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !159
  unreachable

bb.r:                                             ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !160)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !161
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.t, !noalias !161

.noexc.i:                                         ; preds = %bb.r
  %i.av = load i64, ptr %i.j, align 8, !range !12, !noalias !161, !noundef !6
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !13, !noalias !161, !noundef !6 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.s, label %_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs0_00B1u_.exit.i, !prof !7

bb.s:                                             ; preds = %.noexc.i
  %i.ba = load i64, ptr %i.az, align 8, !noalias !161
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #28
          to label %.noexc10.i unwind label %bb.t, !noalias !161

.noexc10.i:                                       ; preds = %bb.s
  unreachable

_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs0_00B1u_.exit.i: ; preds = %.noexc.i
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !161, !nonnull !6, !noundef !6 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ay, 2
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !161
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i8 46, i64 3, i1 false), !noalias !161
  store i64 %i.ay, ptr %i.n, align 8, !alias.scope !160, !noalias !157
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !160, !noalias !157
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !160, !noalias !157
  br label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.sroa.02.2.i = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ true, %bb.r ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.n
  %.sroa.02.2.lpad-body.i = phi i1 [ %.sroa.02.2.i, %bb.t ], [ true, %bb.n ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.at, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #26
          to label %bb.l unwind label %bb.z, !noalias !157

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs0_00B1u_.exit.i
  %i.be = invoke noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error13invalid_valueCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.an, i64 noundef %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.w unwind label %bb.t, !noalias !157

bb.v:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !158
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !157
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs0_0B1s_.exit unwind label %bb.x, !noalias !157

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.y, !noalias !157

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !157
  unreachable

bb.z:                                             ; preds = %bb.aa, %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !157
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.au, %bb.ax, %bb.ab, %bb.l, %bb.x, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ab ], [ %eh.lpad-body.i, %bb.l ], [ %i.bf, %bb.x ], [ %.pn15.i, %bb.aa ], [ %i.cu, %bb.au ], [ %.pn14.i15, %bb.ax ], [ %eh.lpad-body.i22, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.l, %.body12.thread18.i
  %.pn15.i = phi { ptr, i32 } [ %i.al, %.body12.thread18.i ], [ %eh.lpad-body.i, %bb.l ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q) #26
          to label %common.resume unwind label %bb.z, !noalias !157

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs0_0B1s_.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !157
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bi, align 8
  br label %bb.ay

_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !6, !noundef !6 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !6 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !162
  store i64 0, ptr %i.i, align 8, !noalias !162
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !162
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !162
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !162
  store ptr @32, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !162
  store i64 5, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !162
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !162
  %i.bn = invoke noundef zeroext i1 @_RNvMs_NtNtCs2C93r1qUspC_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i unwind label %bb.ab, !noalias !162

bb.ab:                                            ; preds = %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i) #26
          to label %common.resume unwind label %bb.ac, !noalias !162

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !162
  unreachable

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i: ; preds = %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !162
  br i1 %i.bn, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !162
  store i64 0, ptr %i.i, align 8, !noalias !162
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !162
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !162
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !162
  store ptr @33, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !162
  store i64 16, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !162
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !162
  %i.bq = invoke noundef zeroext i1 @_RNvMs_NtNtCs2C93r1qUspC_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1 unwind label %bb.ab, !noalias !162

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1: ; preds = %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !162
  br i1 %i.bq, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_.exit, label %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !162
  store i64 0, ptr %i.i, align 8, !noalias !162
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !162
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !162
  store i64 -1, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !162
  store ptr @34, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !162
  store i64 4, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !162
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !162
  %i.br = invoke noundef zeroext i1 @_RNvMs_NtNtCs2C93r1qUspC_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2 unwind label %bb.ab, !noalias !162

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2: ; preds = %_RNvXsf_NtNtCs3WYoaQ2jqaU_5wasmi8commands3runNtB5_15CompilationModeNtNtCs2C93r1qUspC_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs2C93r1qUspC_12clap_builder7builder14possible_value13PossibleValueECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(72) %i.i), !noalias !162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !162
  br i1 %i.br, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_.exit, label %bb.ad

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB2D_15EnumValueParserBQ_ENtB2D_16TypedValueParser9parse_refs1_0EBW_.exit: ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2, %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1, %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i
  %.ptr.lcssa18 = phi ptr [ @31, %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @31, i64 1), %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @31, i64 2), %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2 ]
  %.val = load i8, ptr %.ptr.lcssa18, align 1, !range !5, !noundef !6
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %5, align 1
  br label %bb.ay

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs1_0B1s_.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !163
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !163
  %i.bs = load i64, ptr %i.e, align 8, !range !12, !noalias !163, !noundef !6
  %i.bt = trunc nuw i64 %i.bs to i1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !range !13, !noalias !163, !noundef !6 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bt, label %bb.ae, label %bb.af, !prof !7

bb.ae:                                            ; preds = %bb.ad
  %i.bx = load i64, ptr %i.bw, align 8, !noalias !163
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.bv, i64 %i.bx) #28, !noalias !163
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.by = load ptr, ptr %i.bw, align 8, !noalias !163, !nonnull !6, !noundef !6 ; 2 uses
  %i.bz = icmp ule i64 %i.bm, %i.bv
  call void @llvm.assume(i1 %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !163
  %.not.i12 = icmp eq i64 %i.bm, 0
  br i1 %.not.i12, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store i64 %i.bv, ptr %i.h, align 8, !noalias !163
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.by, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !163
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !163
  invoke void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB4P_15EnumValueParserB3K_ENtB4P_16TypedValueParser9parse_refs_00ENCB4H_s_0ENCB4H_s0_0EE9from_iterB3Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @31, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @31, i64 3))
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16 unwind label %.body11.thread17.i, !noalias !163

.body11.thread17.i:                               ; preds = %bb.ag
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull align 1 %i.bk, i64 %i.bm, i1 false), !noalias !163
  br label %bb.ag

bb.ai:                                            ; preds = %.body.i20
  br i1 %.sroa.02.2.lpad-body.i21, label %bb.ax, label %common.resume

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16: ; preds = %bb.ag
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8, !noalias !163, !nonnull !6, !noundef !6
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !163, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !163
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !164
  store i64 0, ptr %i.d, align 8, !noalias !164
  %.sroa.4.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i18, align 8, !noalias !164
  %.sroa.5.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i19, align 8, !noalias !164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !164
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 1610612768, ptr %i.cf, align 8, !noalias !164
  store ptr %i.d, ptr %i.c, align 8, !noalias !164
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @17, ptr %i.cg, align 8, !noalias !164
  %i.ch = invoke noundef zeroext i1 @_RNvXs9_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.al unwind label %bb.ak, !noalias !165

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %.body.i20 unwind label %bb.an, !noalias !165

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ch, label %bb.am, label %bb.as, !prof !7

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %.noexc.i.i24 unwind label %bb.ak, !noalias !165

.noexc.i.i24:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !165
  unreachable

bb.ao:                                            ; preds = %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs_0B1s_.exit.i16
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i25 unwind label %bb.aq, !noalias !167

.noexc.i25:                                       ; preds = %bb.ao
  %i.ck = load i64, ptr %i.b, align 8, !range !12, !noalias !167, !noundef !6
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !13, !noalias !167, !noundef !6 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.ap, label %_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i, !prof !7

bb.ap:                                            ; preds = %.noexc.i25
  %i.cp = load i64, ptr %i.co, align 8, !noalias !167
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.cp) #28
          to label %.noexc9.i unwind label %bb.aq, !noalias !167

.noexc9.i:                                        ; preds = %bb.ap
  unreachable

_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i: ; preds = %.noexc.i25
  %i.cq = load ptr, ptr %i.co, align 8, !noalias !167, !nonnull !6, !noundef !6 ; 2 uses
  %i.cr = icmp samesign ugt i64 %i.cn, 2
  call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cq, i8 46, i64 3, i1 false), !noalias !167
  store i64 %i.cn, ptr %i.f, align 8, !alias.scope !166, !noalias !163
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cq, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !166, !noalias !163
  %.sroa.6.0..sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i26, align 8, !alias.scope !166, !noalias !163
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.02.2.i23 = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ao ]
  %i.cs = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

.body.i20:                                        ; preds = %bb.aq, %bb.ak
  %.sroa.02.2.lpad-body.i21 = phi i1 [ %.sroa.02.2.i23, %bb.aq ], [ true, %bb.ak ]
  %eh.lpad-body.i22 = phi { ptr, i32 } [ %i.cs, %bb.aq ], [ %i.ci, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #26
          to label %bb.ai unwind label %bb.aw, !noalias !163

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB9_16TypedValueParser9parse_refs2_00B1u_.exit.i
  %i.ct = invoke noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error13invalid_valueCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.cc, i64 noundef %i.ce, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.aq, !noalias !163

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !164
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !163
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_.exit unwind label %bb.au, !noalias !163

bb.au:                                            ; preds = %bb.at
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.av, !noalias !163

bb.av:                                            ; preds = %bb.au
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !163
  unreachable

bb.aw:                                            ; preds = %bb.ax, %.body.i20
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !163
  unreachable

bb.ax:                                            ; preds = %bb.ai, %.body11.thread17.i
  %.pn14.i15 = phi { ptr, i32 } [ %i.ca, %.body11.thread17.i ], [ %eh.lpad-body.i22, %bb.ai ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #26
          to label %common.resume unwind label %bb.aw, !noalias !163

_RNCNvXso_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtNtNtCs3WYoaQ2jqaU_5wasmi8commands3run15CompilationModeENtB7_16TypedValueParser9parse_refs2_0B1s_.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !163
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ct, ptr %i.cx, align 8
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
  %i.an = load i64, ptr %i.af, align 8, !range !12, !noundef !6
  %i.ao = trunc nuw i64 %i.an to i1
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !216
  call void @_RNvMNtNtCs2C93r1qUspC_12clap_builder6output5usageNtB2_5Usage3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1)
  call void @_RNvMNtNtCs2C93r1qUspC_12clap_builder6output5usageNtB2_5Usage23create_usage_with_title(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) inttoptr (i64 8 to ptr), i64 noundef 0)
  %i.ap = call noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error12invalid_utf8Cs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !216
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
  %i.au = load i8, ptr %i.ar, align 1, !alias.scope !217, !noundef !6 ; 2 uses
  switch i8 %i.au, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.ar, align 1, !alias.scope !217
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
  %.sroa.042.0.i151 = phi i64 [ %i.bk, %.preheader56.i ], [ 0, %bb.e ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i153, i64 1
  %i.az = add nsw i64 %.sroa.15.1.i152, -1        ; 2 uses
  %i.ba = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i151, i64 10) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 0       ; 2 uses
  %i.bc = extractvalue { i64, i1 } %i.ba, 1
  %i.bd = load i8, ptr %.sroa.0.1.i153, align 1, !alias.scope !217, !noundef !6 ; 2 uses
  br i1 %i.bc, label %bb.g, label %bb.f, !prof !7

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.be = zext i8 %i.bd to i32
  %i.bf = add nsw i32 %i.be, -48                  ; 2 uses
  %i.bg = icmp ult i32 %i.bf, 10
  br i1 %i.bg, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.bh = add i8 %i.bd, -48
  %i.bi = icmp ult i8 %i.bh, 10
  %spec.select = select i1 %i.bi, i8 2, i8 1
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bj = zext nneg i32 %i.bf to i64
  %i.bk = add i64 %i.bb, %i.bj                    ; 3 uses
  %i.bl = icmp ult i64 %i.bk, %i.bb
  br i1 %i.bl, label %.loopexit, label %.preheader56.i, !prof !7

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.bs, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.br, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.bu, %bb.i ], [ 0, %.preheader.i ]
  %i.bm = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !217, !noundef !6
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 10
  br i1 %i.bp, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.bq = mul i64 %.sroa.042.267.i, 10
  %i.br = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not53.i = icmp eq i64 %i.br, 0
  br i1 %.not53.i, label %_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.c, %bb.d, %bb.d
  %.sroa.5.0.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.o, label %bb.j

bb.j:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !218
  store i64 0, ptr %i.w, align 8, !noalias !218
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !218
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !218
  %i.bv = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 1610612768, ptr %i.bv, align 8, !noalias !218
  store ptr %i.w, ptr %i.v, align 8, !noalias !218
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr @17, ptr %i.bw, align 8, !noalias !218
  %i.bx = invoke noundef zeroext i1 @_RNvXs9_NtNtCs2C93r1qUspC_12clap_builder7builder3argNtB5_3ArgNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(600) %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %bb.l unwind label %bb.k, !noalias !219

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #26
          to label %common.resume unwind label %bb.n, !noalias !219

bb.l:                                             ; preds = %bb.j
  br i1 %i.bx, label %bb.m, label %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i, !prof !7

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #24
          to label %.noexc.i.i unwind label %bb.k, !noalias !219

.noexc.i.i:                                       ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !219
  unreachable

common.resume:                                    ; preds = %bb.dp, %bb.aj, %bb.k, %bb.af
  %common.resume.op = phi { ptr, i32 } [ %i.dq, %bb.aj ], [ %.pn.ph.i, %bb.af ], [ %i.by, %bb.k ], [ %.pn.pn.ph, %bb.dp ]
  resume { ptr, i32 } %common.resume.op

_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.l
  %.sroa.020.0.copyload.i = load i64, ptr %i.w, align 8, !noalias !220
  %.sroa.421.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !220
  %.sroa.522.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !218
  br label %bb.q

bb.o:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !221
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !221
  %i.ca = load i64, ptr %i.u, align 8, !range !12, !noalias !221, !noundef !6
  %i.cb = trunc nuw i64 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.cd = load i64, ptr %i.cc, align 8, !range !13, !noalias !221, !noundef !6 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.cb, label %bb.p, label %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i, !prof !7

bb.p:                                             ; preds = %bb.o
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !221
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cd, i64 %i.cf) #28, !noalias !221
  unreachable

_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i: ; preds = %bb.o
  %i.cg = load ptr, ptr %i.ce, align 8, !noalias !221, !nonnull !6, !noundef !6 ; 2 uses
  %i.ch = icmp samesign ugt i64 %i.cd, 2
  tail call void @llvm.assume(i1 %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !221
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cg, i8 46, i64 3, i1 false), !noalias !221
  br label %bb.q

bb.q:                                             ; preds = %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i
  %.sroa.6.023.i = phi i64 [ 3, %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i ], [ %.sroa.522.0.copyload.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i ]
  %.sroa.5.0.i = phi ptr [ %i.cg, %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i ], [ %.sroa.421.0.copyload.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i ]
  %.sroa.0.0.i34 = phi i64 [ %i.cd, %_RNCNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB9_20RangedU64ValueParserNtB9_16TypedValueParser9parse_refs1_0s_0Cs3WYoaQ2jqaU_5wasmi.exit.i ], [ %.sroa.020.0.copyload.i, %_RNvXsC_NtCsexYYUdYSQU6_5alloc6stringNtNtNtCs2C93r1qUspC_12clap_builder7builder3arg3ArgNtB5_12SpecToString14spec_to_stringCs3WYoaQ2jqaU_5wasmi.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !222
  store i64 %.sroa.0.0.i34, ptr %i.aa, align 8, !noalias !222
  %.sroa.5.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx12.i, align 8, !noalias !222
  %.sroa.6.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.sroa.6.023.i, ptr %.sroa.6.0..sroa_idx15.i, align 8, !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !222
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4)
          to label %bb.s unwind label %bb.r, !noalias !222

bb.r:                                             ; preds = %bb.w, %bb.u, %bb.q
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.q
  %i.cj = load i64, ptr %i.y, align 8, !range !10, !noalias !222, !noundef !6
  %.not7.i = icmp eq i64 %i.cj, -1
  br i1 %.not7.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false), !noalias !222
  br label %bb.aa

bb.u:                                             ; preds = %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !222, !nonnull !6, !noundef !6
  %i.cm = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cn = load i64, ptr %i.cm, align 8, !noalias !222, !noundef !6 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !222
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.x, i64 noundef %i.cn, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.v unwind label %bb.r, !noalias !222

bb.v:                                             ; preds = %bb.u
  %i.co = load i64, ptr %i.x, align 8, !range !12, !noalias !222, !noundef !6
  %i.cp = trunc nuw i64 %i.co to i1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.cr = load i64, ptr %i.cq, align 8, !range !13, !noalias !222, !noundef !6 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  br i1 %i.cp, label %bb.w, label %bb.x, !prof !7

bb.w:                                             ; preds = %bb.v
  %i.ct = load i64, ptr %i.cs, align 8, !noalias !222
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.cr, i64 %i.ct) #28
          to label %bb.ac unwind label %bb.r, !noalias !222

bb.x:                                             ; preds = %bb.v
  %i.cu = load ptr, ptr %i.cs, align 8, !noalias !222, !nonnull !6, !noundef !6 ; 2 uses
  %i.cv = icmp ule i64 %i.cn, %i.cr
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !222
  %.not8.i = icmp eq i64 %i.cn, 0
  br i1 %.not8.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.z, %bb.x
  store i64 %i.cr, ptr %i.z, align 8, !noalias !222
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.cu, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !222
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.cn, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !222
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cu, ptr nonnull align 1 %i.cl, i64 %i.cn, i1 false), !noalias !222
  br label %bb.y

bb.aa:                                            ; preds = %bb.y, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !222
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !222
  %i.cw = call noundef dereferenceable_or_null(1) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 0, 49) 1, i64 noundef range(i64 1, 9) 1) #27, !noalias !222 ; 3 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %bb.ab, label %_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs1_0Cs3WYoaQ2jqaU_5wasmi.exit, !prof !15

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #28
          to label %.noexc.i unwind label %bb.ad, !noalias !222

.noexc.i:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.w
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.z) #26
          to label %bb.af unwind label %bb.ae, !noalias !222

bb.ae:                                            ; preds = %bb.af, %bb.ad
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #25, !noalias !222
  unreachable

bb.af:                                            ; preds = %bb.ad, %bb.r
  %.pn.ph.i = phi { ptr, i32 } [ %i.ci, %bb.r ], [ %i.cy, %bb.ad ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa) #26
          to label %common.resume unwind label %bb.ae, !noalias !222

_RNCNvXsy_NtNtCs2C93r1qUspC_12clap_builder7builder12value_parserNtB7_20RangedU64ValueParserNtB7_16TypedValueParser9parse_refs1_0Cs3WYoaQ2jqaU_5wasmi.exit: ; preds = %bb.aa
  store i8 %.sroa.5.0.ph, ptr %i.cw, align 1, !noalias !222
  %i.da = call noundef nonnull align 8 ptr @_RNvMNtCs2C93r1qUspC_12clap_builder5errorNtB2_5Error16value_validationCs3WYoaQ2jqaU_5wasmi(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.z, ptr noundef nonnull %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @4), !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !222
  br label %bb.dn

_RNvMsD_NtCskKLDkoKarTP_4core3numy27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.i, %.preheader.i
  %.sroa.1264.0 = phi i64 [ %i.bu, %bb.i ], [ 0, %.preheader.i ], [ %i.bk, %.preheader56.i ] ; 6 uses
  store i64 %.sroa.1264.0, ptr %i.am, align 8
  %i.db = load i64, ptr %0, align 8, !range !16, !alias.scope !223, !noundef !6 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  switch i64 %i.db, label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

end_hunk_0
