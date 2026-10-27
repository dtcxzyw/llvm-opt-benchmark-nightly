Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quinn-rs/original/perf-b8ae0e33403d20a0.perf.5b1007c131bc3bb7-cgu.15?download=true
inline.NumInlined: 500
inline.NumDeleted: 264
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1I_6filter6FilterINtNtB1I_10filter_map9FilterMapINtNtNtB1M_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB4B_15EnumValueParserB3K_ENtB4B_16TypedValueParser9parse_refs_00ENCB4t_s_0ENCB4t_s0_0EE9from_iterB3M_:bb.a
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i unwind label %bb.j, !dbg !8865, !noalias !8772

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !8866, !noalias !8772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !8866, !noalias !8772
    #dbg_value(i64 0, !8776, !DIExpression(), !8684)
    #dbg_value(i64 4, !8777, !DIExpression(), !8685)
    #dbg_value(i64 4, !8783, !DIExpression(), !8686)
    #dbg_value(i64 4, !8781, !DIExpression(), !8687)
    #dbg_value(i64 4, !8786, !DIExpression(), !8688)
    #dbg_value(i64 4, !4041, !DIExpression(), !8690)
    #dbg_value(i64 4, !4061, !DIExpression(), !8692)
    #dbg_declare(ptr poison, !4045, !DIExpression(), !8693)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8690)
    #dbg_value(i64 8, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8692)
    #dbg_value(i64 24, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8690)
    #dbg_value(i64 24, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8692)
    #dbg_value(i64 0, !4063, !DIExpression(), !8692)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !8867, !noalias !8772
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc.i unwind label %bb.c, !dbg !8867, !noalias !8772

.noexc.i:                                         ; preds = %bb.d
  %i.n = load i64, ptr %i.d, align 8, !dbg !8867, !range !4066, !noalias !8772, !noundef !1442
  %i.o = trunc nuw i64 %i.n to i1, !dbg !8868
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !8869
  %i.q = load i64, ptr %i.p, align 8, !dbg !8869, !range !4067, !noalias !8772, !noundef !1442 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !8869 ; 2 uses
  br i1 %i.o, label %bb.e, label %bb.f, !dbg !8868, !prof !3976

bb.e:                                             ; preds = %.noexc.i
  %i.s = load i64, ptr %i.r, align 8, !dbg !8870, !noalias !8772
    #dbg_value(i64 %i.q, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8694)
    #dbg_value(i64 %i.s, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8694)
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.s) #21
          to label %.noexc14.i unwind label %bb.c, !dbg !8871, !noalias !8772

.noexc14.i:                                       ; preds = %bb.e
  unreachable, !dbg !8871

bb.f:                                             ; preds = %.noexc.i
  %i.t = load ptr, ptr %i.r, align 8, !dbg !8872, !noalias !8772, !nonnull !1442, !noundef !1442 ; 2 uses
    #dbg_value(i64 %i.q, !4047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8695)
    #dbg_value(ptr %i.t, !4047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8695)
    #dbg_value(ptr poison, !4062, !DIExpression(), !8696)
  %i.u = icmp ugt i64 %i.q, 3, !dbg !8873
    #dbg_value(i1 true, !4069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8698)
  call void @llvm.assume(i1 %i.u), !dbg !8874
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !8875, !noalias !8772
    #dbg_value(i64 %i.q, !8778, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8699)
    #dbg_value(ptr %i.t, !8778, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8699)
    #dbg_value(i64 0, !8778, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8699)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !8876, !noalias !8772
    #dbg_value(i64 1, !8778, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !8699)
  store i64 %i.q, ptr %i.g, align 8, !dbg !8877, !noalias !8772
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !8877 ; 2 uses
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !8877, !noalias !8772
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !8877 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8877, !noalias !8772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !8878, !noalias !8772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !8863, !noalias !8772
  call void @llvm.experimental.noalias.scope.decl(metadata !8791), !dbg !8879
    #dbg_value(ptr %i.g, !8792, !DIExpression(), !8704)
    #dbg_value(ptr poison, !8795, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8704)
    #dbg_value(ptr poison, !8795, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8704)
  call void @llvm.experimental.noalias.scope.decl(metadata !8798), !dbg !8880
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8799
  %i.v = load <2 x ptr>, ptr %i.h, align 16, !dbg !8881, !noalias !8772
  store <2 x ptr> %i.v, ptr %i.c, align 16, !noalias !8800
    #dbg_value(ptr %i.g, !8801, !DIExpression(), !8712)
    #dbg_value(ptr %i.g, !8809, !DIExpression(), !8715)
    #dbg_value(ptr %i.g, !8814, !DIExpression(), !8718)
    #dbg_value(ptr %i.g, !8817, !DIExpression(), !8721)
    #dbg_value(ptr %i.g, !8819, !DIExpression(), !8724)
    #dbg_value(ptr %i.g, !8814, !DIExpression(), !8726)
    #dbg_declare(ptr %i.c, !8804, !DIExpression(), !8727)
    #dbg_declare(ptr %i.a, !8805, !DIExpression(), !8728)
    #dbg_value(i64 24, !8825, !DIExpression(), !8733)
    #dbg_value(i64 24, !8825, !DIExpression(), !8736)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8882, !noalias !8800
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB33_15EnumValueParserB2c_ENtB33_16TypedValueParser9parse_refs_00ENCB2V_s_0ENCB2V_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #22
          to label %.noexc15.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8883, !noalias !8772

.noexc15.i:                                       ; preds = %bb.f
  %i.w = load i64, ptr %i.b, align 8, !dbg !8882, !range !2326, !noalias !8800, !noundef !1442
  %.not13.i.i.i = icmp eq i64 %i.w, -1, !dbg !8882
  br i1 %.not13.i.i.i, label %.loopexit17.i, label %.lr.ph.i.i.i, !dbg !8884

.lr.ph.i.i.i:                                     ; preds = %.noexc15.i, %.noexc16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !8885, !noalias !8800
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !8885, !noalias !8800
  %i.x = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8886, !alias.scope !8835, !noalias !8772, !noundef !1442 ; 5 uses
    #dbg_value(i64 %i.x, !8806, !DIExpression(), !8737)
    #dbg_value(i64 %i.x, !8836, !DIExpression(), !8740)
  %i.y = icmp ult i64 %i.x, 384307168202282326, !dbg !8887
  call void @llvm.assume(i1 %i.y), !dbg !8888
    #dbg_value(ptr %i.g, !8831, !DIExpression(), !8741)
  %i.z = load i64, ptr %i.g, align 8, !dbg !8889, !range !2001, !alias.scope !8835, !noalias !8772, !noundef !1442
  %i.aa = icmp eq i64 %i.x, %i.z, !dbg !8890
  br i1 %i.aa, label %bb.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs7OITKvp9Irj_4perf.exit.i.i.i, !dbg !8890

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs7OITKvp9Irj_4perf.exit.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i
  %i.ab = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !8891, !alias.scope !8835, !noalias !8772, !nonnull !1442, !noundef !1442
    #dbg_value(ptr %i.ab, !8839, !DIExpression(), !8740)
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.x, !dbg !8892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !8893, !noalias !8772
  %i.ad = add nuw nsw i64 %i.x, 1, !dbg !8894
    #dbg_value(i64 %i.ad, !8823, !DIExpression(), !8724)
  store i64 %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !8895, !alias.scope !8835, !noalias !8772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !8896, !noalias !8800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8896, !noalias !8800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !8882, !noalias !8800
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB33_15EnumValueParserB2c_ENtB33_16TypedValueParser9parse_refs_00ENCB2V_s_0ENCB2V_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2e_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef align 8 dereferenceable(16) %i.c) #22
          to label %.noexc16.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !8883, !noalias !8772

.noexc16.i:                                       ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs7OITKvp9Irj_4perf.exit.i.i.i
  %i.ae = load i64, ptr %i.b, align 8, !dbg !8882, !range !2326, !noalias !8800, !noundef !1442
  %.not.i.i.i = icmp eq i64 %i.ae, -1, !dbg !8882
  br i1 %.not.i.i.i, label %.loopexit17.i, label %.lr.ph.i.i.i, !dbg !8884

bb.g:                                             ; preds = %bb.h
  %i.af = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !2387, !DIExpression(), !8749)
    #dbg_value(ptr %i.a, !1871, !DIExpression(), !8751)
    #dbg_value(ptr %i.a, !1876, !DIExpression(), !8753)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.i, !dbg !8897, !noalias !8772

bb.h:                                             ; preds = %.lr.ph.i.i.i
    #dbg_value(i64 0, !8807, !DIExpression(), !8754)
    #dbg_value(ptr %i.g, !8841, !DIExpression(), !8757)
    #dbg_value(i64 1, !8843, !DIExpression(), !8757)
    #dbg_value(i64 1, !8845, !DIExpression(), !8760)
    #dbg_value(i64 1, !8852, !DIExpression(), !8763)
    #dbg_value(ptr %i.g, !8849, !DIExpression(), !8764)
    #dbg_value(i64 %i.x, !8850, !DIExpression(), !8760)
    #dbg_value(i64 %i.x, !8854, !DIExpression(), !8763)
    #dbg_value(ptr %i.g, !8853, !DIExpression(), !8763)
    #dbg_value(i64 8, !8855, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8763)
    #dbg_value(i64 24, !8855, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8763)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.x, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs7OITKvp9Irj_4perf.exit.i.i.i unwind label %bb.g, !dbg !8898, !noalias !8772

bb.i:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !8899, !noalias !8772
  unreachable, !dbg !8899

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCs7OITKvp9Irj_4perf.exit.i.i.i, %bb.f
  %lpad.loopexit.split-lp2 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.af, %bb.g ], [ %lpad.loopexit.split-lp2, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i unwind label %bb.j, !dbg !8864, !noalias !8772

.loopexit17.i:                                    ; preds = %.noexc16.i, %.noexc15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !8896, !noalias !8800
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !8900, !noalias !8799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !8901
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtB1W_10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB4P_15EnumValueParserB3Y_ENtB4P_16TypedValueParser9parse_refs_00ENCB4H_s_0ENCB4H_s0_0EE9from_iterB40_.exit, !dbg !8864

bb.j:                                             ; preds = %.body.i, %bb.c
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !8902, !noalias !8772
  unreachable, !dbg !8902

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7OITKvp9Irj_4perf.exit.i: ; preds = %.body.i, %bb.c
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.c ]
  resume { ptr, i32 } %.pn.i, !dbg !8902

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB1W_6filter6FilterINtNtB1W_10filter_map9FilterMapINtNtNtB20_5slice4iter4IterNtCs7OITKvp9Irj_4perf19CongestionAlgorithmENCNCNvXso_NtNtCs172jLVBUT4Z_12clap_builder7builder12value_parserINtB4P_15EnumValueParserB3Y_ENtB4P_16TypedValueParser9parse_refs_00ENCB4H_s_0ENCB4H_s0_0EE9from_iterB40_.exit: ; preds = %bb.b, %.loopexit17.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !8864, !noalias !8772
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !8903
  ret void, !dbg !8904
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtB6_6string6StringEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1M_5slice4iter4IterBU_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB31_5Error13invalid_value0EE9from_iterCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !8909 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !9016, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9020)
    #dbg_value(ptr %2, !9016, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9020)
    #dbg_value(ptr %1, !9021, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8914)
    #dbg_value(ptr %2, !9021, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8914)
    #dbg_declare(ptr %i.c, !9022, !DIExpression(), !8915)
    #dbg_declare(ptr poison, !9025, !DIExpression(), !8920)
    #dbg_declare(ptr poison, !9030, !DIExpression(), !8923)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9103, !noalias !9033
    #dbg_value(ptr poison, !9035, !DIExpression(), !8928)
    #dbg_value(ptr poison, !9041, !DIExpression(), !8934)
    #dbg_value(i64 24, !9048, !DIExpression(), !8942)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !9046, !DIExpression(), !8943)
    #dbg_value(ptr %2, !9062, !DIExpression(), !8944)
    #dbg_value(ptr %1, !9063, !DIExpression(), !8944)
    #dbg_value(ptr %2, !9056, !DIExpression(), !8945)
    #dbg_value(ptr %1, !9057, !DIExpression(), !8945)
    #dbg_value(ptr %1, !9052, !DIExpression(), !8946)
    #dbg_value(ptr %2, !9051, !DIExpression(), !8946)
  %i.d = ptrtoint ptr %2 to i64, !dbg !9104
  %i.e = ptrtoint ptr %1 to i64, !dbg !9104
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !9104
  %i.g = udiv exact i64 %i.f, 24, !dbg !9104      ; 2 uses
    #dbg_value(i64 %i.g, !9023, !DIExpression(), !8947)
    #dbg_value(i64 %i.g, !9028, !DIExpression(), !8948)
    #dbg_value(i64 %i.g, !9026, !DIExpression(), !8949)
    #dbg_value(i64 %i.g, !9031, !DIExpression(), !8950)
    #dbg_value(i64 %i.g, !4041, !DIExpression(), !8952)
    #dbg_value(i64 %i.g, !4061, !DIExpression(), !8954)
    #dbg_declare(ptr poison, !4045, !DIExpression(), !8955)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8952)
    #dbg_value(i64 8, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8954)
    #dbg_value(i64 24, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8952)
    #dbg_value(i64 24, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8954)
    #dbg_value(i64 0, !4063, !DIExpression(), !8954)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9105, !noalias !9033
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24), !dbg !9105, !noalias !9033
  %i.h = load i64, ptr %i.b, align 8, !dbg !9105, !range !4066, !noalias !9033, !noundef !1442
  %i.i = trunc nuw i64 %i.h to i1, !dbg !9106
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9107
  %i.k = load i64, ptr %i.j, align 8, !dbg !9107, !range !4067, !noalias !9033, !noundef !1442 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9107 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterBG_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB2G_5Error13invalid_value0EECs7OITKvp9Irj_4perf.exit.i.i, !dbg !9106, !prof !3976

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !9108, !noalias !9033
    #dbg_value(i64 %i.k, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8956)
    #dbg_value(i64 %i.m, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8956)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !dbg !9109, !noalias !9033
  unreachable, !dbg !9109

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterBG_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB2G_5Error13invalid_value0EECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !9110, !noalias !9033, !nonnull !1442, !noundef !1442 ; 2 uses
    #dbg_value(i64 %i.k, !4047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8957)
    #dbg_value(ptr %i.n, !4047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8957)
    #dbg_value(ptr poison, !4062, !DIExpression(), !8958)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !9111
    #dbg_value(i1 true, !4069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !8960)
  tail call void @llvm.assume(i1 %i.o), !dbg !9112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9113, !noalias !9033
  store i64 %i.k, ptr %i.c, align 8, !dbg !9114, !noalias !9033
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9114
  store ptr %i.n, ptr %i.p, align 8, !dbg !9114, !noalias !9033
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9114 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !9114, !noalias !9033
    #dbg_value(ptr %i.c, !9065, !DIExpression(), !8963)
    #dbg_value(ptr %1, !9068, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8963)
    #dbg_value(ptr %2, !9068, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8963)
    #dbg_value(ptr %1, !9071, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8974)
    #dbg_value(ptr %2, !9071, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8974)
    #dbg_value(ptr %i.c, !9075, !DIExpression(), !8974)
    #dbg_value(ptr poison, !9035, !DIExpression(), !8976)
    #dbg_value(ptr poison, !9041, !DIExpression(), !8978)
    #dbg_value(i64 24, !9048, !DIExpression(), !8982)
    #dbg_value(ptr %2, !9046, !DIExpression(), !8983)
    #dbg_value(ptr %2, !9062, !DIExpression(), !8984)
    #dbg_value(ptr %1, !9063, !DIExpression(), !8984)
    #dbg_value(ptr %2, !9056, !DIExpression(), !8985)
    #dbg_value(ptr %1, !9057, !DIExpression(), !8985)
    #dbg_value(ptr %1, !9052, !DIExpression(), !8986)
    #dbg_value(ptr %2, !9051, !DIExpression(), !8986)
    #dbg_value(i64 poison, !9076, !DIExpression(), !8987)
    #dbg_value(i64 1, !9077, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8987)
    #dbg_value(i64 %i.g, !9077, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8987)
    #dbg_value(i64 %i.g, !9078, !DIExpression(), !8988)
    #dbg_value(ptr %i.n, !9088, !DIExpression(), !8989)
    #dbg_value(ptr %i.q, !9089, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8990)
    #dbg_value(i64 0, !9089, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8990)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9115, !noalias !9091
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9115
  store ptr %i.n, ptr %i.r, align 8, !dbg !9115, !noalias !9091
  store ptr %i.q, ptr %i.a, align 8, !dbg !9115, !noalias !9091
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9115
  store i64 0, ptr %i.s, align 8, !dbg !9115, !noalias !9091
    #dbg_value(ptr %1, !9092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !8998)
    #dbg_value(ptr %2, !9092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !8998)
    #dbg_declare(ptr %i.a, !9098, !DIExpression(), !8999)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsexYYUdYSQU6_5alloc6string6StringENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB25_5Error13invalid_value0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callB1n_NCINvMsk_NtB1r_3vecINtB4o_3VecB1n_E14extend_trustedBN_E0E0ECs7OITKvp9Irj_4perf(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB3i_5Error13invalid_value0EE9from_iterCs7OITKvp9Irj_4perf.exit unwind label %bb.c, !dbg !9116, !noalias !9033

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterBG_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB2G_5Error13invalid_value0EECs7OITKvp9Irj_4perf.exit.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.e unwind label %bb.d, !dbg !9117, !noalias !9033

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !9118, !noalias !9033
  unreachable, !dbg !9118

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !9118

_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtB8_6string6StringEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterB13_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB3i_5Error13invalid_value0EE9from_iterCs7OITKvp9Irj_4perf.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1r_5slice4iter4IterBG_ENCNvMNtCs172jLVBUT4Z_12clap_builder5errorNtB2G_5Error13invalid_value0EECs7OITKvp9Irj_4perf.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9119, !noalias !9091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !9120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !9117, !noalias !9033
  ret void, !dbg !9121
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9131 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %1, !9250, !DIExpression(), !9254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9255), !dbg !9346
    #dbg_declare(ptr %1, !9256, !DIExpression(), !9138)
    #dbg_declare(ptr %i.c, !9257, !DIExpression(), !9139)
    #dbg_declare(ptr poison, !9260, !DIExpression(), !9144)
    #dbg_declare(ptr poison, !9271, !DIExpression(), !9147)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !9347, !noalias !9277
  %.val.i = load i64, ptr %1, align 8, !dbg !9348, !alias.scope !9255, !noundef !1442
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !9348
  %.val5.i = load i64, ptr %i.d, align 8, !dbg !9348, !alias.scope !9255, !noundef !1442
    #dbg_value(ptr poison, !9279, !DIExpression(), !9151)
    #dbg_value(ptr poison, !9286, !DIExpression(), !9154)
  %i.e = sub nuw i64 %.val5.i, %.val.i, !dbg !9349 ; 2 uses
    #dbg_value(i64 %i.e, !9258, !DIExpression(), !9163)
    #dbg_value(i64 %i.e, !9269, !DIExpression(), !9164)
    #dbg_value(i64 %i.e, !9264, !DIExpression(), !9165)
    #dbg_value(i64 %i.e, !9275, !DIExpression(), !9166)
    #dbg_value(i64 %i.e, !4041, !DIExpression(), !9168)
    #dbg_value(i64 %i.e, !4061, !DIExpression(), !9170)
    #dbg_declare(ptr poison, !4045, !DIExpression(), !9171)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9168)
    #dbg_value(i64 8, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9170)
    #dbg_value(i64 16, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9168)
    #dbg_value(i64 16, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9170)
    #dbg_value(i64 0, !4063, !DIExpression(), !9170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9350, !noalias !9277
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !9350, !noalias !9277
  %i.f = load i64, ptr %i.b, align 8, !dbg !9350, !range !4066, !noalias !9277, !noundef !1442
  %i.g = trunc nuw i64 %i.f to i1, !dbg !9351
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !9352
  %i.i = load i64, ptr %i.h, align 8, !dbg !9352, !range !4067, !noalias !9277, !noundef !1442 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !9352 ; 2 uses
  br i1 %i.g, label %.noexc6.i, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5array4iter8IntoIterBG_Kj1_ENCINvMs_NtBK_3argNtB3k_3Arg11value_namesBG_ABG_B38_E0EECs7OITKvp9Irj_4perf.exit.i.i, !dbg !9351, !prof !3976

.noexc6.i:                                        ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !9353, !noalias !9277
    #dbg_value(i64 %i.i, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9172)
    #dbg_value(i64 %i.k, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9172)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !9354, !noalias !9277
  unreachable, !dbg !9354

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5array4iter8IntoIterBG_Kj1_ENCINvMs_NtBK_3argNtB3k_3Arg11value_namesBG_ABG_B38_E0EECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !9355, !noalias !9277, !nonnull !1442, !noundef !1442 ; 2 uses
    #dbg_value(i64 %i.i, !4047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9173)
    #dbg_value(ptr %i.l, !4047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9173)
    #dbg_value(ptr poison, !4062, !DIExpression(), !9174)
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !9356
    #dbg_value(i1 true, !4069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !9176)
  tail call void @llvm.assume(i1 %i.m), !dbg !9357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9358, !noalias !9277
  store i64 %i.i, ptr %i.c, align 8, !dbg !9359, !noalias !9277
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !9359
  store ptr %i.l, ptr %i.n, align 8, !dbg !9359, !noalias !9277
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !9359 ; 2 uses
  store i64 0, ptr %i.o, align 8, !dbg !9359, !noalias !9277
    #dbg_value(ptr %i.c, !9306, !DIExpression(), !9179)
    #dbg_declare(ptr %1, !9309, !DIExpression(), !9180)
    #dbg_value(ptr %i.c, !9312, !DIExpression(), !9191)
    #dbg_declare(ptr %1, !9316, !DIExpression(), !9192)
    #dbg_value(ptr poison, !9279, !DIExpression(), !9194)
    #dbg_value(ptr poison, !9286, !DIExpression(), !9196)
    #dbg_value(i64 poison, !9317, !DIExpression(), !9197)
    #dbg_value(i64 1, !9318, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9197)
    #dbg_value(i64 %i.e, !9318, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9197)
    #dbg_value(i64 %i.e, !9319, !DIExpression(), !9198)
    #dbg_value(ptr %i.l, !9330, !DIExpression(), !9199)
    #dbg_value(ptr %i.o, !9331, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !9200)
    #dbg_value(i64 0, !9331, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !9200)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9360, !noalias !9333
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !9360
  store ptr %i.l, ptr %i.p, align 8, !dbg !9360, !noalias !9333
  store ptr %i.o, ptr %i.a, align 8, !dbg !9360, !noalias !9333
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !9360
  store i64 0, ptr %i.q, align 8, !dbg !9360, !noalias !9333
    #dbg_declare(ptr %1, !9334, !DIExpression(), !9210)
    #dbg_declare(ptr %i.a, !9340, !DIExpression(), !9211)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrKj1_ENCINvMs_NtB1v_3argNtB2s_3Arg11value_namesB1r_AB1r_B2g_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callB1r_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4v_3VecB1r_E14extend_trustedBN_E0E0ECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2v_5array4iter8IntoIterB13_Kj1_ENCINvMs_NtB17_3argNtB3W_3Arg11value_namesB13_AB13_B3K_E0EE9from_iterCs7OITKvp9Irj_4perf.exit unwind label %bb.b, !dbg !9361, !noalias !9345

bb.b:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1U_5array4iter8IntoIterBG_Kj1_ENCINvMs_NtBK_3argNtB3k_3Arg11value_namesBG_ABG_B38_E0EECs7OITKvp9Irj_4perf.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !3812, !DIExpression(), !9213)
    #dbg_value(ptr %i.c, !3819, !DIExpression(), !9215)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs172jLVBUT4Z_12clap_builder7builder3str3StrENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.c, !dbg !9362, !noalias !9277
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB2b_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCINvMs1_NtB10_11certificateNtB4d_17CertificateParams3newIBP_B3I_EE0EINtNtB2f_6result6ResultzNtNtB10_5error5ErrorEEE9from_iterCs7OITKvp9Irj_4perf:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !11292, !noalias !11094
  unreachable, !dbg !11292

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeE16extend_desugaredINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1w_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCINvMs1_NtBI_11certificateNtB3y_17CertificateParams3newIBx_B33_EE0EINtNtB1A_6result6ResultzNtNtBI_5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11282, !noalias !11197
    #dbg_value(ptr %i.e, !11131, !DIExpression(), !10987)
    #dbg_value(ptr %i.e, !11138, !DIExpression(), !10989)
    #dbg_value(ptr %i.e, !11145, !DIExpression(), !10991)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtBT_11certificateNtB3M_17CertificateParams3newIBI_B3h_EE0EINtNtB1O_6result6ResultzNtNtBT_5error5ErrorEEE11spec_extendCs7OITKvp9Irj_4perf.exit.i unwind label %bb.t, !dbg !11293, !noalias !11094

bb.t:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeE16extend_desugaredINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1w_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCINvMs1_NtBI_11certificateNtB3y_17CertificateParams3newIBx_B33_EE0EINtNtB1A_6result6ResultzNtNtBI_5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i, !dbg !11243

.body.i:                                          ; preds = %bb.t, %bb.k
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.t ], [ %.pn.i.i.i, %bb.k ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEECs7OITKvp9Irj_4perf(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #18
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2N_17CertificateParams3newINtB1y_3VecB2h_EE0EINtNtB4_6result6ResultzNtNtB2P_5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i unwind label %bb.u, !dbg !11243, !noalias !11094

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtBT_11certificateNtB3M_17CertificateParams3newIBI_B3h_EE0EINtNtB1O_6result6ResultzNtNtBT_5error5ErrorEEE11spec_extendCs7OITKvp9Irj_4perf.exit.i: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeE16extend_desugaredINtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1w_3map3MapINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringENCINvMs1_NtBI_11certificateNtB3y_17CertificateParams3newIBx_B33_EE0EINtNtB1A_6result6ResultzNtNtBI_5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11294, !noalias !11125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !11295, !noalias !11232
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11243, !noalias !11125
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB23_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtB13_11certificateNtB45_17CertificateParams3newIBS_B3A_EE0EINtNtB27_6result6ResultzNtNtB13_5error5ErrorEEE9from_iterCs7OITKvp9Irj_4perf.exit, !dbg !11243

bb.u:                                             ; preds = %bb.v, %.body.i, %bb.f
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !11296, !noalias !11094
  unreachable, !dbg !11296

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2N_17CertificateParams3newINtB1y_3VecB2h_EE0EINtNtB4_6result6ResultzNtNtB2P_5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.v, %.body.i
  %.pn17.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %.pn.ph.i, %bb.v ]
  resume { ptr, i32 } %.pn17.i, !dbg !11296

bb.v:                                             ; preds = %bb.f, %bb.b
  %.pn.ph.i = phi { ptr, i32 } [ %i.j, %bb.b ], [ %i.n, %bb.f ]
    #dbg_value(ptr %1, !11131, !DIExpression(), !10993)
    #dbg_value(ptr %1, !11138, !DIExpression(), !10995)
    #dbg_value(ptr %1, !11145, !DIExpression(), !10997)
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtB4_4iter8adapters12GenericShuntINtNtBE_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtB1A_6string6StringENCINvMs1_NtCscbFFjjIlwRm_5rcgen11certificateNtB2N_17CertificateParams3newINtB1y_3VecB2h_EE0EINtNtB4_6result6ResultzNtNtB2P_5error5ErrorEEECs7OITKvp9Irj_4perf.exit.i unwind label %bb.u, !dbg !11297, !noalias !11094

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEINtB2_18SpecFromIterNestedB11_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB23_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtB13_11certificateNtB45_17CertificateParams3newIBS_B3A_EE0EINtNtB27_6result6ResultzNtNtB13_5error5ErrorEEE9from_iterCs7OITKvp9Irj_4perf.exit: ; preds = %bb.e, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtCscbFFjjIlwRm_5rcgen7SanTypeEINtB2_10SpecExtendBR_INtNtNtCskKLDkoKarTP_4core4iter8adapters12GenericShuntINtNtB1K_3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtBT_11certificateNtB3M_17CertificateParams3newIBI_B3h_EE0EINtNtB1O_6result6ResultzNtNtBT_5error5ErrorEEE11spec_extendCs7OITKvp9Irj_4perf.exit.i
  ret void, !dbg !11298
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec16in_place_collectINtB6_3VecNtNtB8_6string6StringEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterTdBY_EENCINvNtNtNtCs172jLVBUT4Z_12clap_builder6parser8features11suggestions12did_you_meanRBY_INtNtNtB28_5slice4iter4IterBY_EEs0_0EE9from_iterCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !dbg !11303 {
bb.a:
    #dbg_declare(ptr %1, !11322, !DIExpression(), !11328)
    #dbg_value(ptr @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCs172jLVBUT4Z_12clap_builder6parser8features11suggestions12did_you_meanRB2n_INtNtNtB1f_5slice4iter4IterB2n_EEs0_0EB2n_ECs7OITKvp9Irj_4perf, !11324, !DIExpression(), !11329)
  tail call void @_RINvNtNtCsexYYUdYSQU6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCs172jLVBUT4Z_12clap_builder6parser8features11suggestions12did_you_meanRB2n_INtNtNtB1f_5slice4iter4IterB2n_EEs0_0EB2n_ECs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1), !dbg !11330
  ret void, !dbg !11331
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2o_5slice4iter4IterNtB17_19StreamIntervalStatsENCNvMB15_NtB15_8Interval19from_stats_interval0EE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11339 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_declare(ptr %1, !11443, !DIExpression(), !11449)
    #dbg_declare(ptr %i.c, !11444, !DIExpression(), !11450)
    #dbg_declare(ptr poison, !11451, !DIExpression(), !11459)
    #dbg_declare(ptr poison, !11465, !DIExpression(), !11472)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11549
  %.val = load ptr, ptr %1, align 8, !dbg !11550, !nonnull !1442, !noundef !1442
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11550
  %.val4 = load ptr, ptr %i.d, align 8, !dbg !11550, !nonnull !1442, !noundef !1442
    #dbg_value(ptr poison, !11474, !DIExpression(), !11345)
    #dbg_value(ptr poison, !11481, !DIExpression(), !11351)
    #dbg_value(i64 24, !11488, !DIExpression(), !11359)
    #dbg_value(ptr %.val4, !11486, !DIExpression(), !11360)
    #dbg_value(ptr %.val4, !11503, !DIExpression(), !11361)
    #dbg_value(ptr %.val, !11504, !DIExpression(), !11361)
    #dbg_value(ptr %.val4, !11497, !DIExpression(), !11362)
    #dbg_value(ptr %.val, !11498, !DIExpression(), !11362)
    #dbg_value(ptr %.val, !11492, !DIExpression(), !11363)
    #dbg_value(ptr %.val4, !11491, !DIExpression(), !11363)
  %i.e = ptrtoint ptr %.val4 to i64, !dbg !11551
  %i.f = ptrtoint ptr %.val to i64, !dbg !11551
  %i.g = sub nuw i64 %i.e, %i.f, !dbg !11551
  %i.h = udiv exact i64 %i.g, 24, !dbg !11551     ; 2 uses
    #dbg_value(i64 %i.h, !11445, !DIExpression(), !11506)
    #dbg_value(i64 %i.h, !11463, !DIExpression(), !11507)
    #dbg_value(i64 %i.h, !11455, !DIExpression(), !11508)
    #dbg_value(i64 %i.h, !11469, !DIExpression(), !11509)
    #dbg_value(i64 %i.h, !4041, !DIExpression(), !11365)
    #dbg_value(i64 %i.h, !4061, !DIExpression(), !11367)
    #dbg_declare(ptr poison, !4045, !DIExpression(), !11368)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11365)
    #dbg_value(i64 8, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11367)
    #dbg_value(i64 56, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11365)
    #dbg_value(i64 56, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11367)
    #dbg_value(i64 0, !4063, !DIExpression(), !11367)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11552
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.h, i1 noundef zeroext false, i64 noundef 8, i64 noundef 56), !dbg !11552
  %i.i = load i64, ptr %i.b, align 8, !dbg !11552, !range !4066, !noundef !1442
  %i.j = trunc nuw i64 %i.i to i1, !dbg !11553
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11554
  %i.l = load i64, ptr %i.k, align 8, !dbg !11554, !range !4067, !noundef !1442 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11554 ; 2 uses
  br i1 %i.j, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtBK_19StreamIntervalStatsENCNvMBI_NtBI_8Interval19from_stats_interval0EEBM_.exit.i, !dbg !11553, !prof !3976

bb.b:                                             ; preds = %bb.a
  %i.n = load i64, ptr %i.m, align 8, !dbg !11555
    #dbg_value(i64 %i.l, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11369)
    #dbg_value(i64 %i.n, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11369)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.l, i64 %i.n) #21, !dbg !11556
  unreachable, !dbg !11556

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtBK_19StreamIntervalStatsENCNvMBI_NtBI_8Interval19from_stats_interval0EEBM_.exit.i: ; preds = %bb.a
  %i.o = load ptr, ptr %i.m, align 8, !dbg !11557, !nonnull !1442, !noundef !1442 ; 2 uses
    #dbg_value(i64 %i.l, !4047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11370)
    #dbg_value(ptr %i.o, !4047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11370)
    #dbg_value(ptr poison, !4062, !DIExpression(), !11371)
  %i.p = icmp ule i64 %i.h, %i.l, !dbg !11558
    #dbg_value(i1 true, !4069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11373)
  tail call void @llvm.assume(i1 %i.p), !dbg !11559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11560
  store i64 %i.l, ptr %i.c, align 8, !dbg !11561
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11561
  store ptr %i.o, ptr %i.q, align 8, !dbg !11561
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11561 ; 2 uses
  store i64 0, ptr %i.r, align 8, !dbg !11561
    #dbg_value(ptr %i.c, !11510, !DIExpression(), !11376)
    #dbg_declare(ptr %1, !11513, !DIExpression(), !11377)
    #dbg_value(ptr %i.c, !11516, !DIExpression(), !11388)
    #dbg_declare(ptr %1, !11520, !DIExpression(), !11389)
    #dbg_value(ptr poison, !11474, !DIExpression(), !11391)
    #dbg_value(ptr poison, !11481, !DIExpression(), !11393)
    #dbg_value(i64 24, !11488, !DIExpression(), !11397)
    #dbg_value(ptr %.val4, !11486, !DIExpression(), !11398)
    #dbg_value(ptr %.val4, !11503, !DIExpression(), !11399)
    #dbg_value(ptr %.val, !11504, !DIExpression(), !11399)
    #dbg_value(ptr %.val4, !11497, !DIExpression(), !11400)
    #dbg_value(ptr %.val, !11498, !DIExpression(), !11400)
    #dbg_value(ptr %.val, !11492, !DIExpression(), !11401)
    #dbg_value(ptr %.val4, !11491, !DIExpression(), !11401)
    #dbg_value(i64 poison, !11521, !DIExpression(), !11402)
    #dbg_value(i64 1, !11522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11402)
    #dbg_value(i64 %i.h, !11522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11402)
    #dbg_value(i64 %i.h, !11523, !DIExpression(), !11403)
    #dbg_value(ptr %i.o, !11534, !DIExpression(), !11404)
    #dbg_value(ptr %i.r, !11535, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11405)
    #dbg_value(i64 0, !11535, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11405)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11562, !noalias !11537
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11562
  store ptr %i.o, ptr %i.s, align 8, !dbg !11562, !noalias !11537
  store ptr %i.r, ptr %i.a, align 8, !dbg !11562, !noalias !11537
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11562
  store i64 0, ptr %i.t, align 8, !dbg !11562, !noalias !11537
    #dbg_declare(ptr %1, !11538, !DIExpression(), !11415)
    #dbg_declare(ptr %i.a, !11544, !DIExpression(), !11416)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs7OITKvp9Irj_4perf5stats19StreamIntervalStatsENCNvMNtB1p_4jsonNtB2h_8Interval19from_stats_interval0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB34_8for_each4callNtB2h_6StreamNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4t_3VecB47_E14extend_trustedBN_E0E0EB1r_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !11563

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtBK_19StreamIntervalStatsENCNvMBI_NtBI_8Interval19from_stats_interval0EEBM_.exit.i
  %i.u = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.c, !3094, !DIExpression(), !11418)
    #dbg_value(ptr %i.c, !3101, !DIExpression(), !11420)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEEB1e_.exit unwind label %bb.e, !dbg !11564

bb.d:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1N_5slice4iter4IterNtBK_19StreamIntervalStatsENCNvMBI_NtBI_8Interval19from_stats_interval0EEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11565, !noalias !11537
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !11566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11567
  ret void, !dbg !11568

bb.e:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !11569
  unreachable, !dbg !11569

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json6StreamEEB1e_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.u, !dbg !11569
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json8IntervalEINtB4_18SpecFromIterNestedB13_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB2q_5slice4iter4IterNtB17_8IntervalENvMB15_B13_19from_stats_intervalEE9from_iterB19_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11576 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
    #dbg_value(ptr %1, !11670, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11676)
    #dbg_value(ptr %2, !11670, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11676)
    #dbg_declare(ptr %i.c, !11671, !DIExpression(), !11677)
    #dbg_declare(ptr poison, !11678, !DIExpression(), !11686)
    #dbg_declare(ptr poison, !11692, !DIExpression(), !11699)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11775
    #dbg_value(ptr poison, !11701, !DIExpression(), !11582)
    #dbg_value(ptr poison, !11708, !DIExpression(), !11588)
    #dbg_value(i64 48, !11715, !DIExpression(), !11596)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %2, !11713, !DIExpression(), !11597)
    #dbg_value(ptr %2, !11730, !DIExpression(), !11598)
    #dbg_value(ptr %1, !11731, !DIExpression(), !11598)
    #dbg_value(ptr %2, !11724, !DIExpression(), !11599)
    #dbg_value(ptr %1, !11725, !DIExpression(), !11599)
    #dbg_value(ptr %1, !11719, !DIExpression(), !11600)
    #dbg_value(ptr %2, !11718, !DIExpression(), !11600)
  %i.d = ptrtoint ptr %2 to i64, !dbg !11776
  %i.e = ptrtoint ptr %1 to i64, !dbg !11776
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !11776
  %i.g = udiv exact i64 %i.f, 48, !dbg !11776     ; 2 uses
    #dbg_value(i64 %i.g, !11672, !DIExpression(), !11733)
    #dbg_value(i64 %i.g, !11690, !DIExpression(), !11734)
    #dbg_value(i64 %i.g, !11682, !DIExpression(), !11735)
    #dbg_value(i64 %i.g, !11696, !DIExpression(), !11736)
    #dbg_value(i64 %i.g, !4041, !DIExpression(), !11602)
    #dbg_value(i64 %i.g, !4061, !DIExpression(), !11604)
    #dbg_declare(ptr poison, !4045, !DIExpression(), !11605)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11602)
    #dbg_value(i64 8, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11604)
    #dbg_value(i64 120, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11602)
    #dbg_value(i64 120, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11604)
    #dbg_value(i64 0, !4063, !DIExpression(), !11604)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11777
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 120), !dbg !11777
  %i.h = load i64, ptr %i.b, align 8, !dbg !11777, !range !4066, !noundef !1442
  %i.i = trunc nuw i64 %i.h to i1, !dbg !11778
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11779
  %i.k = load i64, ptr %i.j, align 8, !dbg !11779, !range !4067, !noundef !1442 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11779 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json8IntervalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBK_8IntervalENvMBI_BG_19from_stats_intervalEEBM_.exit.i, !dbg !11778, !prof !3976

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !dbg !11780
    #dbg_value(i64 %i.k, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11606)
    #dbg_value(i64 %i.m, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11606)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #21, !dbg !11781
  unreachable, !dbg !11781

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json8IntervalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBK_8IntervalENvMBI_BG_19from_stats_intervalEEBM_.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !dbg !11782, !nonnull !1442, !noundef !1442 ; 2 uses
    #dbg_value(i64 %i.k, !4047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11607)
    #dbg_value(ptr %i.n, !4047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11607)
    #dbg_value(ptr poison, !4062, !DIExpression(), !11608)
  %i.o = icmp ule i64 %i.g, %i.k, !dbg !11783
    #dbg_value(i1 true, !4069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11610)
  tail call void @llvm.assume(i1 %i.o), !dbg !11784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11785
  store i64 %i.k, ptr %i.c, align 8, !dbg !11786
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !11786
  store ptr %i.n, ptr %i.p, align 8, !dbg !11786
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !11786 ; 2 uses
  store i64 0, ptr %i.q, align 8, !dbg !11786
    #dbg_value(ptr %i.c, !11737, !DIExpression(), !11613)
    #dbg_value(ptr %1, !11740, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11613)
    #dbg_value(ptr %2, !11740, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11613)
    #dbg_value(ptr %1, !11743, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11624)
    #dbg_value(ptr %2, !11743, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11624)
    #dbg_value(ptr %i.c, !11747, !DIExpression(), !11624)
    #dbg_value(ptr poison, !11701, !DIExpression(), !11626)
    #dbg_value(ptr poison, !11708, !DIExpression(), !11628)
    #dbg_value(i64 48, !11715, !DIExpression(), !11632)
    #dbg_value(ptr %2, !11713, !DIExpression(), !11633)
    #dbg_value(ptr %2, !11730, !DIExpression(), !11634)
    #dbg_value(ptr %1, !11731, !DIExpression(), !11634)
    #dbg_value(ptr %2, !11724, !DIExpression(), !11635)
    #dbg_value(ptr %1, !11725, !DIExpression(), !11635)
    #dbg_value(ptr %1, !11719, !DIExpression(), !11636)
    #dbg_value(ptr %2, !11718, !DIExpression(), !11636)
    #dbg_value(i64 poison, !11748, !DIExpression(), !11637)
    #dbg_value(i64 1, !11749, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11637)
    #dbg_value(i64 %i.g, !11749, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11637)
    #dbg_value(i64 %i.g, !11750, !DIExpression(), !11638)
    #dbg_value(ptr %i.n, !11760, !DIExpression(), !11639)
    #dbg_value(ptr %i.q, !11761, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11640)
    #dbg_value(i64 0, !11761, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11640)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11787, !noalias !11763
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11787
  store ptr %i.n, ptr %i.r, align 8, !dbg !11787, !noalias !11763
  store ptr %i.q, ptr %i.a, align 8, !dbg !11787, !noalias !11763
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11787
  store i64 0, ptr %i.s, align 8, !dbg !11787, !noalias !11763
    #dbg_value(ptr %1, !11764, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11648)
    #dbg_value(ptr %2, !11764, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11648)
    #dbg_declare(ptr %i.a, !11770, !DIExpression(), !11649)
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs7OITKvp9Irj_4perf5stats8IntervalENvMNtB1p_4jsonNtB23_8Interval19from_stats_intervalENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callB2e_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB45_3VecB2e_E14extend_trustedBN_E0E0EB1r_(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c, !dbg !11788

bb.c:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json8IntervalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBK_8IntervalENvMBI_BG_19from_stats_intervalEEBM_.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json8IntervalEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #18
          to label %bb.f unwind label %bb.e, !dbg !11789

bb.d:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtCs7OITKvp9Irj_4perf5stats4json8IntervalE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB1P_5slice4iter4IterNtBK_8IntervalENvMBI_BG_19from_stats_intervalEEBM_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11790, !noalias !11763
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !11791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11789
  ret void, !dbg !11792

bb.e:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !dbg !11793
  unreachable, !dbg !11793

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.t, !dbg !11793
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs172jLVBUT4Z_12clap_builder4util2id2IdENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs7OITKvp9Irj_4perf(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11795 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr poison, !11915, !DIExpression(), !11837)
    #dbg_value(ptr poison, !11956, !DIExpression(), !11838)
    #dbg_value(ptr poison, !11970, !DIExpression(), !11839)
    #dbg_value(ptr poison, !11982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11840)
    #dbg_value(ptr %1, !11911, !DIExpression(), !12011)
    #dbg_value(ptr %1, !12012, !DIExpression(), !12018)
    #dbg_value(ptr %1, !12019, !DIExpression(), !12024)
    #dbg_value(ptr %1, !12025, !DIExpression(), !12029)
    #dbg_value(ptr %1, !12030, !DIExpression(), !12036)
    #dbg_declare(ptr poison, !11912, !DIExpression(), !12037)
    #dbg_declare(ptr poison, !12005, !DIExpression(), !12038)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12107
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12108
  %i.d = load ptr, ptr %i.c, align 8, !dbg !12108, !nonnull !1442, !noundef !1442 ; 2 uses
  %i.e = load i64, ptr %i.b, align 8, !dbg !12109, !noundef !1442 ; 4 uses
    #dbg_value(ptr %i.d, !12004, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12047)
    #dbg_value(i64 %i.e, !12004, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12048), !dbg !12110
    #dbg_value(ptr %i.d, !11979, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11852)
    #dbg_value(ptr %i.d, !12049, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11855)
    #dbg_value(ptr %i.d, !12053, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11861)
    #dbg_value(i64 %i.e, !11979, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11852)
    #dbg_value(i64 %i.e, !12049, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11855)
    #dbg_value(i64 %i.e, !12053, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11861)
    #dbg_declare(ptr poison, !11980, !DIExpression(), !11862)
    #dbg_declare(ptr poison, !12059, !DIExpression(), !11865)
    #dbg_declare(ptr poison, !12065, !DIExpression(), !11868)
    #dbg_value(i64 %i.e, !12063, !DIExpression(), !11869)
    #dbg_value(i64 %i.e, !12069, !DIExpression(), !11870)
    #dbg_value(i64 %i.e, !12055, !DIExpression(), !11871)
    #dbg_value(i64 %i.e, !12071, !DIExpression(), !11874)
    #dbg_value(i64 %i.e, !4041, !DIExpression(), !11876)
    #dbg_value(i64 %i.e, !4061, !DIExpression(), !11878)
    #dbg_declare(ptr poison, !4045, !DIExpression(), !11879)
    #dbg_value(i64 8, !4046, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11876)
    #dbg_value(i64 8, !4064, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11878)
    #dbg_value(i64 16, !4046, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11876)
    #dbg_value(i64 16, !4064, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11878)
    #dbg_value(i64 0, !4063, !DIExpression(), !11878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12111, !noalias !12074
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7OITKvp9Irj_4perf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 576460752303423488) %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !dbg !12111, !noalias !12074
  %i.f = load i64, ptr %i.a, align 8, !dbg !12111, !range !4066, !noalias !12074, !noundef !1442
  %i.g = trunc nuw i64 %i.f to i1, !dbg !12112
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12113
  %i.i = load i64, ptr %i.h, align 8, !dbg !12113, !range !4067, !noalias !12074, !noundef !1442 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12113 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7OITKvp9Irj_4perf.exit.i, !dbg !12112, !prof !3976

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !12114, !noalias !12074
    #dbg_value(i64 %i.i, !4048, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11881)
    #dbg_value(i64 %i.k, !4048, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11881)
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #21, !dbg !12115, !noalias !12074
  unreachable, !dbg !12115

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7OITKvp9Irj_4perf.exit.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !12116, !noalias !12074, !nonnull !1442, !noundef !1442 ; 2 uses
    #dbg_value(i64 %i.i, !4047, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11882)
    #dbg_value(ptr %i.l, !4047, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11882)
    #dbg_value(ptr poison, !4062, !DIExpression(), !11883)
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !12117
    #dbg_value(i1 true, !4069, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !11885)
  tail call void @llvm.assume(i1 %i.m), !dbg !12118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12119, !noalias !12074
    #dbg_value(i64 %i.i, !11981, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12075)
    #dbg_value(ptr %i.l, !11981, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12075)
    #dbg_value(ptr undef, !11982, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11840)
    #dbg_value(i64 0, !11982, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11840)
    #dbg_value(ptr %i.l, !12072, !DIExpression(), !11890)
    #dbg_value(i64 0, !12071, !DIExpression(), !11890)
    #dbg_value(ptr %i.l, !11983, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11891)
    #dbg_value(i64 %i.i, !11983, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11891)
    #dbg_value(ptr %i.d, !12056, !DIExpression(), !11892)
    #dbg_value(ptr %i.d, !12072, !DIExpression(), !11874)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.e, !dbg !12120
    #dbg_value(ptr %i.d, !11984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11893)
    #dbg_value(ptr %i.n, !11984, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11893)
    #dbg_value(i64 0, !11984, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11893)
    #dbg_value(i64 %i.i, !11984, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11893)
    #dbg_value(ptr undef, !11970, !DIExpression(), !11839)
  %i.o = icmp eq i64 %i.i, 0, !dbg !12121
  br i1 %i.o, label %_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtNtCs172jLVBUT4Z_12clap_builder4util2id2IdNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7OITKvp9Irj_4perf.exit, label %.lr.ph.i, !dbg !12121

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7OITKvp9Irj_4perf.exit.i, %bb.c
  %.sroa.039.048.i = phi ptr [ %i.s, %bb.c ], [ %i.d, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7OITKvp9Irj_4perf.exit.i ] ; 4 uses
  %.sroa.7.047.i = phi i64 [ %i.r, %bb.c ], [ 0, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7OITKvp9Irj_4perf.exit.i ] ; 2 uses
  %.sroa.10.046.i = phi i64 [ %i.q, %bb.c ], [ %i.i, %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7OITKvp9Irj_4perf.exit.i ]
    #dbg_value(ptr %.sroa.039.048.i, !11984, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11893)
end_hunk_1
