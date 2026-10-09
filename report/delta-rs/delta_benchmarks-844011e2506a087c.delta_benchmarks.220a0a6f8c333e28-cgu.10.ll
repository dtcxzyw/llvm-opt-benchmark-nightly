Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.10?download=true
inline.NumInlined: 5210
inline.NumDeleted: 2104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB5_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB5_16TypedValueParser9parse_refB1m_:bb.a
  store ptr %i.l, ptr %i.k, align 8, !noalias !9578
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @256, ptr %i.ar, align 8, !noalias !9578
  %i.as = invoke noundef zeroext i1 @_RNvXs9_NtNtCs4s1dLWtJWRF_12clap_builder7builder3argNtB5_3ArgNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.o unwind label %bb.n, !noalias !9579

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #38
          to label %.body.i unwind label %bb.q, !noalias !9579

bb.o:                                             ; preds = %bb.m
  br i1 %i.as, label %bb.p, label %bb.v, !prof !17

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #37
          to label %.noexc.i.i unwind label %bb.n, !noalias !9579

.noexc.i.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9579
  unreachable

bb.r:                                             ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9580)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9581
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i unwind label %bb.t, !noalias !9577

.noexc.i:                                         ; preds = %bb.r
  %i.av = load i64, ptr %i.j, align 8, !range !15, !noalias !9581, !noundef !14
  %i.aw = trunc nuw i64 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !16, !noalias !9581, !noundef !14 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  br i1 %i.aw, label %bb.s, label %_RNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB9_16TypedValueParser9parse_refs0_00B1q_.exit.i, !prof !17

bb.s:                                             ; preds = %.noexc.i
  %i.ba = load i64, ptr %i.az, align 8, !noalias !9581
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ay, i64 %i.ba) #37
          to label %.noexc10.i unwind label %bb.t, !noalias !9577

.noexc10.i:                                       ; preds = %bb.s
  unreachable

_RNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB9_16TypedValueParser9parse_refs0_00B1q_.exit.i: ; preds = %.noexc.i
  %i.bb = load ptr, ptr %i.az, align 8, !noalias !9581, !nonnull !14, !noundef !14 ; 2 uses
  %i.bc = icmp samesign ugt i64 %i.ay, 2
  call void @llvm.assume(i1 %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !9581
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bb, i8 46, i64 3, i1 false), !noalias !9581
  store i64 %i.ay, ptr %i.n, align 8, !alias.scope !9580, !noalias !9577
  %.sroa.4.0..sroa_idx.i9.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.bb, ptr %.sroa.4.0..sroa_idx.i9.i, align 8, !alias.scope !9580, !noalias !9577
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !9580, !noalias !9577
  br label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.s, %bb.r
  %.sroa.02.2.i = phi i1 [ false, %bb.u ], [ true, %bb.s ], [ true, %bb.r ]
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.t, %bb.n
  %.sroa.02.2.lpad-body.i = phi i1 [ %.sroa.02.2.i, %bb.t ], [ true, %bb.n ]
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bd, %bb.t ], [ %i.at, %bb.n ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.o) #38
          to label %bb.l unwind label %bb.z, !noalias !9577

bb.u:                                             ; preds = %bb.v, %_RNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB9_16TypedValueParser9parse_refs0_00B1q_.exit.i
  %i.be = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.an, i64 noundef %i.ap, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.w unwind label %bb.t, !noalias !9577

bb.v:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !9578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !9578
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !9577
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs0_0B1o_.exit unwind label %bb.x, !noalias !9577

bb.x:                                             ; preds = %bb.w
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.y, !noalias !9577

bb.y:                                             ; preds = %bb.x
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9577
  unreachable

bb.z:                                             ; preds = %bb.aa, %.body.i
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9577
  unreachable

common.resume:                                    ; preds = %bb.ai, %bb.au, %bb.ax, %bb.ab, %bb.l, %bb.x, %bb.aa
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %bb.ab ], [ %eh.lpad-body.i, %bb.l ], [ %i.bf, %bb.x ], [ %.pn15.i, %bb.aa ], [ %i.cv, %bb.au ], [ %.pn14.i15, %bb.ax ], [ %eh.lpad-body.i24, %bb.ai ]
  resume { ptr, i32 } %common.resume.op

bb.aa:                                            ; preds = %bb.l, %.body12.thread18.i
  %.pn15.i = phi { ptr, i32 } [ %i.al, %.body12.thread18.i ], [ %eh.lpad-body.i, %bb.l ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #38
          to label %common.resume unwind label %bb.z, !noalias !9577

_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs0_0B1o_.exit: ; preds = %bb.w
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !9577
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !9577
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bi, align 8
  br label %bb.ay

_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i: ; preds = %bb.c
  %i.bj = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noundef !14 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %.sroa.5.0..sroa_idx.i.i10 = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %.sroa.81.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 3 uses
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9582
  store i64 0, ptr %i.i, align 8, !noalias !9582
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !9582
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !9582
  store i64 -9223372036854775808, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9582
  store ptr @218, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !9582
  store i64 6, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !9582
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !9582
  %i.bn = invoke noundef zeroext i1 @_RNvMs_NtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i unwind label %bb.ab, !noalias !9582

bb.ab:                                            ; preds = %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2, %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1, %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.i) #38
          to label %common.resume unwind label %bb.ac, !noalias !9582

bb.ac:                                            ; preds = %bb.ab
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9582
  unreachable

_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i: ; preds = %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.i), !noalias !9582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9582
  br i1 %i.bn, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1

_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1: ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9582
  store i64 0, ptr %i.i, align 8, !noalias !9582
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !9582
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !9582
  store i64 -9223372036854775808, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9582
  store ptr @219, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !9582
  store i64 6, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !9582
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !9582
  %i.bq = invoke noundef zeroext i1 @_RNvMs_NtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1 unwind label %bb.ab, !noalias !9582

_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1: ; preds = %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.1
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.i), !noalias !9582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9582
  br i1 %i.bq, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit, label %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2

_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2: ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !9582
  store i64 0, ptr %i.i, align 8, !noalias !9582
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.5.0..sroa_idx.i.i10, align 8, !noalias !9582
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i11, align 8, !noalias !9582
  store i64 -9223372036854775808, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !9582
  store ptr @220, ptr %.sroa.81.0..sroa_idx.i.i, align 8, !noalias !9582
  store i64 6, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !9582
  store i8 0, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !9582
  %i.br = invoke noundef zeroext i1 @_RNvMs_NtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bk, i64 noundef %i.bm, i1 noundef zeroext %storemerge)
          to label %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2 unwind label %bb.ab, !noalias !9582

_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2: ; preds = %_RNvXs2_Cs2VbMhdeEr66_16delta_benchmarksNtB5_6OpKindNtNtCs4s1dLWtJWRF_12clap_builder6derive9ValueEnum17to_possible_value.exit.i.i.2
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4s1dLWtJWRF_12clap_builder7builder14possible_value13PossibleValueECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(72) %i.i), !noalias !9582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !9582
  br i1 %i.br, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit, label %bb.ad

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit: ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i
  %.ptr.lcssa21 = phi ptr [ @217, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i ], [ getelementptr inbounds nuw (i8, ptr @217, i64 1), %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @217, i64 2), %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2 ]
  %.val = load i8, ptr %.ptr.lcssa21, align 1, !range !21, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.val, ptr %i.bs, align 1
  br label %bb.ay

bb.ad:                                            ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs1_0B1o_.exit.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !9583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !9583
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bm, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !9583
  %i.bt = load i64, ptr %i.e, align 8, !range !15, !noalias !9583, !noundef !14
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !range !16, !noalias !9583, !noundef !14 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bu, label %bb.ae, label %bb.af, !prof !17

bb.ae:                                            ; preds = %bb.ad
  %i.by = load i64, ptr %i.bx, align 8, !noalias !9583
  call void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.bw, i64 %i.by) #37, !noalias !9583
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.bz = load ptr, ptr %i.bx, align 8, !noalias !9583, !nonnull !14, !noundef !14 ; 2 uses
  %i.ca = icmp ule i64 %i.bm, %i.bw
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !9583
  %.not.i12 = icmp eq i64 %i.bm, 0
  br i1 %.not.i12, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.ah, %bb.af
  store i64 %i.bw, ptr %i.h, align 8, !noalias !9583
  %.sroa.4.0..sroa_idx.i13 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bz, ptr %.sroa.4.0..sroa_idx.i13, align 8, !noalias !9583
  %.sroa.6.0..sroa_idx.i14 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.bm, ptr %.sroa.6.0..sroa_idx.i14, align 8, !noalias !9583
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !9583
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB4A_15EnumValueParserB3K_ENtB4A_16TypedValueParser9parse_refs_00ENCB4s_s_0ENCB4s_s0_0EE9from_iterB3M_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull @217, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @217, i64 3))
          to label %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16 unwind label %.body11.thread17.i, !noalias !9583

.body11.thread17.i:                               ; preds = %bb.ag
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.ah:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull align 1 %i.bk, i64 %i.bm, i1 false), !noalias !9583
  br label %bb.ag

bb.ai:                                            ; preds = %.body.i22
  br i1 %.sroa.02.2.lpad-body.i23, label %bb.ax, label %common.resume

_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16: ; preds = %bb.ag
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !9583, !nonnull !14, !noundef !14
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !9583, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !9583
  br i1 %.not, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !9584
  store i64 0, ptr %i.d, align 8, !noalias !9584
  %.sroa.42.0..sroa_idx.i.i18 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i18, align 8, !noalias !9584
  %.sroa.53.0..sroa_idx.i.i19 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i19, align 8, !noalias !9584
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9584
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 1610612768, ptr %i.cg, align 8, !noalias !9584
  %.sroa.4.0..sroa_idx.i.i20 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i20, align 4, !noalias !9584
  %.sroa.5.0..sroa_idx.i.i21 = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i21, align 2, !noalias !9584
  store ptr %i.d, ptr %i.c, align 8, !noalias !9584
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @256, ptr %i.ch, align 8, !noalias !9584
  %i.ci = invoke noundef zeroext i1 @_RNvXs9_NtNtCs4s1dLWtJWRF_12clap_builder7builder3argNtB5_3ArgNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(640) %2, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.al unwind label %bb.ak, !noalias !9585

bb.ak:                                            ; preds = %bb.am, %bb.aj
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #38
          to label %.body.i22 unwind label %bb.an, !noalias !9585

bb.al:                                            ; preds = %bb.aj
  br i1 %i.ci, label %bb.am, label %bb.as, !prof !17

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @257, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @259) #37
          to label %.noexc.i.i26 unwind label %bb.ak, !noalias !9585

.noexc.i.i26:                                     ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %bb.ak
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9585
  unreachable

bb.ao:                                            ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs_0B1o_.exit.i16
  call void @llvm.experimental.noalias.scope.decl(metadata !9586)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9587
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 3, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i27 unwind label %bb.aq, !noalias !9583

.noexc.i27:                                       ; preds = %bb.ao
  %i.cl = load i64, ptr %i.b, align 8, !range !15, !noalias !9587, !noundef !14
  %i.cm = trunc nuw i64 %i.cl to i1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !range !16, !noalias !9587, !noundef !14 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cm, label %bb.ap, label %_RNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB9_16TypedValueParser9parse_refs2_00B1q_.exit.i, !prof !17

bb.ap:                                            ; preds = %.noexc.i27
  %i.cq = load i64, ptr %i.cp, align 8, !noalias !9587
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.co, i64 %i.cq) #37
          to label %.noexc9.i unwind label %bb.aq, !noalias !9583

.noexc9.i:                                        ; preds = %bb.ap
  unreachable

_RNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB9_16TypedValueParser9parse_refs2_00B1q_.exit.i: ; preds = %.noexc.i27
  %i.cr = load ptr, ptr %i.cp, align 8, !noalias !9587, !nonnull !14, !noundef !14 ; 2 uses
  %i.cs = icmp samesign ugt i64 %i.co, 2
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9587
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.cr, i8 46, i64 3, i1 false), !noalias !9587
  store i64 %i.co, ptr %i.f, align 8, !alias.scope !9586, !noalias !9583
  %.sroa.4.0..sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.cr, ptr %.sroa.4.0..sroa_idx.i8.i, align 8, !alias.scope !9586, !noalias !9583
  %.sroa.6.0..sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 3, ptr %.sroa.6.0..sroa_idx.i.i28, align 8, !alias.scope !9586, !noalias !9583
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.02.2.i25 = phi i1 [ false, %bb.ar ], [ true, %bb.ap ], [ true, %bb.ao ]
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i22

.body.i22:                                        ; preds = %bb.aq, %bb.ak
  %.sroa.02.2.lpad-body.i23 = phi i1 [ %.sroa.02.2.i25, %bb.aq ], [ true, %bb.ak ]
  %eh.lpad-body.i24 = phi { ptr, i32 } [ %i.ct, %bb.aq ], [ %i.cj, %bb.ak ] ; 2 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.g) #38
          to label %bb.ai unwind label %bb.aw, !noalias !9583

bb.ar:                                            ; preds = %bb.as, %_RNCNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB9_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB9_16TypedValueParser9parse_refs2_00B1q_.exit.i
  %i.cu = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCs4s1dLWtJWRF_12clap_builder5errorNtB2_5Error13invalid_valueCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.cd, i64 noundef %i.cf, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.at unwind label %bb.aq, !noalias !9583

bb.as:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !9583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !9584
  br label %bb.ar

bb.at:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !9583
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs2_0B1o_.exit unwind label %bb.au, !noalias !9583

bb.au:                                            ; preds = %bb.at
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.av, !noalias !9583

bb.av:                                            ; preds = %bb.au
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9583
  unreachable

bb.aw:                                            ; preds = %bb.ax, %.body.i22
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !9583
  unreachable

bb.ax:                                            ; preds = %bb.ai, %.body11.thread17.i
  %.pn14.i15 = phi { ptr, i32 } [ %i.cb, %.body11.thread17.i ], [ %eh.lpad-body.i24, %bb.ai ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #38
          to label %common.resume unwind label %bb.aw, !noalias !9583

_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs2_0B1o_.exit: ; preds = %bb.at
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !9583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !9583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !9583
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.cy, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs0_0B1o_.exit, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs2_0B1o_.exit, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit
  %.sink = phi i8 [ 1, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs0_0B1o_.exit ], [ 1, %_RNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB7_15EnumValueParserNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtB7_16TypedValueParser9parse_refs2_0B1o_.exit ], [ 0, %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtCs2VbMhdeEr66_16delta_benchmarks6OpKindENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvXso_NtNtCs4s1dLWtJWRF_12clap_builder7builder12value_parserINtB2o_15EnumValueParserBQ_ENtB2o_16TypedValueParser9parse_refs1_0EBS_.exit ]
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
end_hunk_0
