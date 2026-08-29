Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yr.yr.f14c8b45f5cb0649-cgu.00?download=true
inline.NumInlined: 3700
inline.NumDeleted: 1764
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2D_6filter6FilterQDNtNtNtB2F_6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_NCNvB13_13rules_to_json0ENCB5j_s_0EE9from_iterB19_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ab, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false)
  %i.ac = add nuw nsw i64 %i.w, 1
  store i64 %i.ac, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3573, !noalias !3574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3570
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterQDNtNtNtB9_6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_NCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_json0ENCB2R_s_0ENtNtB1o_8iterator8Iterator4nextB2Z_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(168) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f) #21
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonE7reserveBM_.exit.i.i
  %i.ad = load i64, ptr %i.c, align 8, !range !68, !noalias !3570, !noundef !5
  %.not.i.i = icmp eq i64 %i.ad, -1
  br i1 %.not.i.i, label %.loopexit8, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonEBJ_(ptr noalias nofree noundef align 8 dereferenceable(168) %i.b) #23
          to label %.body unwind label %bb.m

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3575
  %i.af = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3582, !noalias !3574, !noundef !5 ; 2 uses
  %i.ag = load i64, ptr %i.i, align 8, !range !77, !alias.scope !3582, !noalias !3574, !noundef !5
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.l, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonE7reserveBM_.exit.i.i, !prof !57

bb.l:                                             ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.af, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 168)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonE7reserveBM_.exit.i.i unwind label %bb.j

bb.m:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

.loopexit:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonE7reserveBM_.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.h
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler8RuleJsonEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #23
          to label %bb.o unwind label %bb.n

.loopexit8:                                       ; preds = %.noexc7, %.noexc6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3570
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  br label %bb.d

bb.n:                                             ; preds = %.body, %bb.e
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.o:                                             ; preds = %bb.e, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.m, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EE9from_iterCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call noundef align 8 ptr @_RNvXs9_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val = load i64, ptr %i.e, align 8, !noundef !5
  %i.f = tail call i64 @llvm.uadd.sat.i64(i64 %.val, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.f, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.g = load i64, ptr %i.a, align 8, !range !55, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !56, !noundef !5 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit, !prof !57

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %..i, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.m, align 8, !captures !3585
  store i64 %i.j, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3586)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3589)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3591)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3594)
  %i.o = invoke noundef align 8 ptr @_RNvXs9_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit
  %.not3.i.i = icmp eq ptr %i.o, null
  br i1 %.not3.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCskIqAKC4t9Ft_2yr.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  br label %bb.d

bb.d:                                             ; preds = %.noexc8, %.lr.ph.i.i
  %i.q = phi ptr [ %i.o, %.lr.ph.i.i ], [ %i.z, %.noexc8 ]
  %i.r = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3596, !noalias !3597, !noundef !5 ; 5 uses
  %i.s = icmp ult i64 %i.r, 1152921504606846976
  call void @llvm.assume(i1 %i.s)
  %i.t = load i64, ptr %i.c, align 8, !range !77, !alias.scope !3596, !noalias !3597, !noundef !5
  %i.u = icmp eq i64 %i.r, %i.t
  br i1 %i.u, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i, label %.noexc7

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %bb.d
  %.val.i.i = load i64, ptr %i.p, align 8, !alias.scope !3597, !noalias !3596, !noundef !5
  %i.v = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.r, i64 noundef range(i64 1, 0) %i.v, i64 noundef 8, i64 noundef 8)
          to label %.noexc7 unwind label %.loopexit

.noexc7:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i, %bb.d
  %i.w = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !3596, !noalias !3597, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.r
  store ptr %i.q, ptr %i.x, align 8, !captures !3585
  %i.y = add nuw nsw i64 %i.r, 1
  store i64 %i.y, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3596, !noalias !3597
  %i.z = invoke noundef align 8 ptr @_RNvXs9_NtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matchesINtB5_9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.b)
          to label %.noexc8 unwind label %.loopexit ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCskIqAKC4t9Ft_2yr.exit, label %bb.d

bb.e:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ab, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCskIqAKC4t9Ft_2yr.exit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

.loopexit:                                        ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i, %.noexc7
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

.loopexit.split-lp:                               ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtB7_6string6StringENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr.exit unwind label %bb.h

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EE11spec_extendCskIqAKC4t9Ft_2yr.exit: ; preds = %.noexc8, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecRNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr.exit: ; preds = %bb.g
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtB6_6string6StringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1X_7flatten7FlattenINtNtB21_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefB12_EEEINtNtB1X_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterB12_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB69_8commands15create_compiler0EEE9from_iterB69_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %.sroa.11.i.i = alloca i64, align 8             ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [272 x i8], align 8               ; 13 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %.sroa.11 = alloca i64, align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call fastcc noundef align 8 ptr @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator4nextB4U_(ptr noalias nofree noundef align 8 dereferenceable(272) %1) #21 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3598)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3601)
  %i.e = load i64, ptr %1, align 8, !range !250, !alias.scope !3601, !noalias !3598, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.g = load i64, ptr %i.f, align 8, !range !250, !alias.scope !3601, !noalias !3598, !noundef !5
  %.not7.i = icmp eq i64 %i.g, 2                  ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !3601, !noalias !3598, !noundef !5
  %.not.i.i11.i = icmp eq ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val.i.i.i12.i = load i64, ptr %i.j, align 8, !alias.scope !3601, !noalias !3598
  %.sroa.7.0.i.i13.i = select i1 %.not.i.i11.i, i64 0, i64 %.val.i.i.i12.i ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3601, !noalias !3598, !noundef !5
  %.not53.i.i14.i = icmp eq ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val.i60.i.i15.i = load i64, ptr %i.m, align 8, !alias.scope !3601, !noalias !3598
  %.sroa.8.0.i.i16.i = select i1 %.not53.i.i14.i, i64 0, i64 %.val.i60.i.i15.i ; 4 uses
  %i.n = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i17.i = load ptr, ptr %i.o, align 8, !alias.scope !3601, !noalias !3598 ; 2 uses
  br i1 %.not7.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val10.i = load i64, ptr %i.p, align 8, !alias.scope !3601, !noalias !3598, !noundef !5
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.c
  %.not75.i.i.i = icmp ne ptr %.val.i.i17.i, null
  %or.cond.not.i.i.i = select i1 %i.n, i1 %.not75.i.i.i, i1 false ; 2 uses
  %i.q = add i64 %.sroa.8.0.i.i16.i, %.sroa.7.0.i.i13.i ; 2 uses
  %i.r = icmp ult i64 %i.q, %.sroa.7.0.i.i13.i
  %.sroa.6.0.i = select i1 %or.cond.not.i.i.i, i64 undef, i64 %i.q
  %narrow.not.i = select i1 %or.cond.not.i.i.i, i1 true, i1 %i.r
  %i.s = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i13.i, i64 %.sroa.8.0.i.i16.i)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val.i = load i64, ptr %i.t, align 8, !alias.scope !3601, !noalias !3598, !noundef !5
  %i.u = add i64 %.sroa.6.0.i, %.val.i
  %.sroa.46.0.i = select i1 %narrow.not.i, i64 undef, i64 %i.u
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i: ; preds = %bb.c
  %.not75.i.i18.i = icmp eq ptr %.val.i.i17.i, null
  %not. = xor i1 %i.n, true
  %or.cond.not.i.i19.i = select i1 %not., i1 true, i1 %.not75.i.i18.i
  %i.v = xor i64 %.sroa.7.0.i.i13.i, -1
  %i.w = icmp ule i64 %.sroa.8.0.i.i16.i, %i.v
  %narrow = select i1 %or.cond.not.i.i19.i, i1 %i.w, i1 false
  %.55.sink.i.i21.i = zext i1 %narrow to i64
  %i.x = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i13.i, i64 %.sroa.8.0.i.i16.i)
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit: ; preds = %bb.d, %bb.e, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i
  %.sroa.0.0 = phi i64 [ %i.s, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i ], [ 0, %bb.e ], [ %i.x, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i ], [ 0, %bb.d ]
  %.sink27.i.sroa.phi = phi ptr [ %.sroa.11, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i ], [ %.sroa.11, %bb.e ], [ %.sroa.7, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i ], [ %.sroa.11, %bb.d ]
  %.sroa.46.0.sink.i = phi i64 [ %.sroa.46.0.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i ], [ %.val10.i, %bb.e ], [ %.55.sink.i.i21.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i ], [ 0, %bb.d ]
  store i64 %.sroa.46.0.sink.i, ptr %.sink27.i.sroa.phi, align 8, !alias.scope !3598, !noalias !3601
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.y = tail call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.y, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.z = load i64, ptr %i.a, align 8, !range !55, !noundef !5
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !56, !noundef !5 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit, !prof !57

bb.f:                                             ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit
  %i.ae = load i64, ptr %i.ad, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #22
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ag = icmp ule i64 %..i, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.af, align 8, !captures !3585
  store i64 %i.ac, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.b, ptr noundef nonnull align 8 dereferenceable(272) %1, i64 272, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3608)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3611)
  %i.ah = invoke fastcc noundef align 8 ptr @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator4nextB4U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(272) %i.b) #21
          to label %.noexc unwind label %.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskIqAKC4t9Ft_2yr.exit
  %.not6.i.i = icmp eq ptr %i.ah, null
  br i1 %.not6.i.i, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecRNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters5chain5ChainINtNtB1E_7flatten7FlattenINtNtB1I_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefBS_EEEINtNtB1E_10filter_map9FilterMapINtNtNtNtB6_11collections5btree3map4IterBS_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB5O_8commands15create_compiler0EEE11spec_extendB5O_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.noexc10, %.lr.ph.i.i
  %i.ap = phi ptr [ %i.ah, %.lr.ph.i.i ], [ %i.bk, %.noexc10 ]
  %i.aq = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !3613, !noalias !3614, !noundef !5 ; 5 uses
  %i.ar = icmp ult i64 %i.aq, 1152921504606846976
  call void @llvm.assume(i1 %i.ar)
  %i.as = load i64, ptr %i.c, align 8, !range !77, !alias.scope !3613, !noalias !3614, !noundef !5
  %i.at = icmp eq i64 %i.aq, %i.as
  br i1 %i.at, label %bb.h, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  call void @llvm.experimental.noalias.scope.decl(metadata !3618)
  %i.au = load i64, ptr %i.b, align 8, !range !250, !alias.scope !3620, !noalias !3621, !noundef !5 ; 2 uses
  %.not.i.i.i7 = icmp eq i64 %i.au, 2
  %i.av = load i64, ptr %i.ai, align 8, !range !250, !alias.scope !3620, !noalias !3621, !noundef !5
  %.not7.i.i.i = icmp eq i64 %i.av, 2             ; 2 uses
  br i1 %.not.i.i.i7, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load ptr, ptr %i.aj, align 8, !alias.scope !3620, !noalias !3621, !noundef !5
  %.not.i.i11.i.i.i = icmp eq ptr %i.aw, null
  %.val.i.i.i12.i.i.i = load i64, ptr %i.ak, align 8, !alias.scope !3620, !noalias !3621
  %.sroa.7.0.i.i13.i.i.i = select i1 %.not.i.i11.i.i.i, i64 0, i64 %.val.i.i.i12.i.i.i ; 5 uses
  %i.ax = load ptr, ptr %i.al, align 8, !alias.scope !3620, !noalias !3621, !noundef !5
  %.not53.i.i14.i.i.i = icmp eq ptr %i.ax, null
  %.val.i60.i.i15.i.i.i = load i64, ptr %i.am, align 8, !alias.scope !3620, !noalias !3621
  %.sroa.8.0.i.i16.i.i.i = select i1 %.not53.i.i14.i.i.i, i64 0, i64 %.val.i60.i.i15.i.i.i ; 4 uses
  %i.ay = trunc nuw i64 %i.au to i1               ; 2 uses
  %.val.i.i17.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !3620, !noalias !3621 ; 2 uses
  br i1 %.not7.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i.i.i, label %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i.i.i

bb.j:                                             ; preds = %bb.h
  %.val10.i.i.i = load i64, ptr %i.ao, align 8, !alias.scope !3614, !noalias !3613
  %spec.select.i.i = select i1 %.not7.i.i.i, i64 0, i64 %.val10.i.i.i
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit.i.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i.i.i: ; preds = %bb.i
  %.not75.i.i.i.i.i = icmp ne ptr %.val.i.i17.i.i.i, null
  %or.cond.not.i.i.i.i.i = select i1 %i.ay, i1 %.not75.i.i.i.i.i, i1 false ; 2 uses
  %i.az = add i64 %.sroa.8.0.i.i16.i.i.i, %.sroa.7.0.i.i13.i.i.i ; 2 uses
  %i.ba = icmp ult i64 %i.az, %.sroa.7.0.i.i13.i.i.i
  %.sroa.6.0.i.i.i = select i1 %or.cond.not.i.i.i.i.i, i64 undef, i64 %i.az
  %narrow.not.i.i.i = select i1 %or.cond.not.i.i.i.i.i, i1 true, i1 %i.ba
  %i.bb = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i13.i.i.i, i64 %.sroa.8.0.i.i16.i.i.i)
  %.val.i.i.i8 = load i64, ptr %i.ao, align 8, !alias.scope !3620, !noalias !3621, !noundef !5
  %i.bc = add i64 %.val.i.i.i8, %.sroa.6.0.i.i.i
  %.sroa.46.0.i.i.i = select i1 %narrow.not.i.i.i, i64 undef, i64 %i.bc
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit.i.i

_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i.i.i: ; preds = %bb.i
  %.not75.i.i18.i.i.i = icmp eq ptr %.val.i.i17.i.i.i, null
  %not..i.i = xor i1 %i.ay, true
  %or.cond.not.i.i19.i.i.i = select i1 %not..i.i, i1 true, i1 %.not75.i.i18.i.i.i
  %i.bd = xor i64 %.sroa.7.0.i.i13.i.i.i, -1
  %i.be = icmp ule i64 %.sroa.8.0.i.i16.i.i.i, %i.bd
  %narrow.i.i = select i1 %or.cond.not.i.i19.i.i.i, i1 %i.be, i1 false
  %.55.sink.i.i21.i.i.i = zext i1 %narrow.i.i to i64
  %i.bf = call i64 @llvm.uadd.sat.i64(i64 %.sroa.7.0.i.i13.i.i.i, i64 %.sroa.8.0.i.i16.i.i.i)
  br label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit.i.i

_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit.i.i: ; preds = %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i.i.i, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %i.bb, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i.i.i ], [ 0, %bb.j ], [ %i.bf, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i.i.i ]
  %.sink27.i.sroa.phi.i.i = phi ptr [ %.sroa.11.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i.i.i ], [ %.sroa.11.i.i, %bb.j ], [ %.sroa.7.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i.i.i ]
  %.sroa.46.0.sink.i.i.i = phi i64 [ %.sroa.46.0.i.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit.i.i.i ], [ %spec.select.i.i, %bb.j ], [ %.55.sink.i.i21.i.i.i, %_RNvXs9_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEENtNtNtB9_6traits8iterator8Iterator9size_hintCskIqAKC4t9Ft_2yr.exit22.i.i.i ]
  store i64 %.sroa.46.0.sink.i.i.i, ptr %.sink27.i.sroa.phi.i.i, align 8, !alias.scope !3615, !noalias !3622
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  %i.bg = call i64 @llvm.uadd.sat.i64(i64 %.sroa.0.0.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.aq, i64 noundef range(i64 1, 0) %i.bg, i64 noundef 8, i64 noundef 8)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i unwind label %.loopexit

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecRNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i: ; preds = %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters5chainINtB4_5ChainINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtCsexYYUdYSQU6_5alloc6string6StringEEEINtNtB6_10filter_map9FilterMapINtNtNtNtB32_11collections5btree3map4IterB2Y_NtNtCskIqAKC4t9Ft_2yr6config13WarningConfigENCNvNtB4U_8commands15create_compiler0EENtNtNtB8_6traits8iterator8Iterator9size_hintB4U_.exit.i.i, %bb.g
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterQDNtNtNtB9_6traits10exact_size17ExactSizeIteratorp4ItemNtNtCs7gfv9tzbXmh_6yara_x6models4RuleEL_NCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_json0ENCB2R_s_0ENtNtB1o_8iterator8Iterator4nextB2Z_:bb.a
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4170
  store i64 %i.df, ptr %i.c, align 8, !noalias !4170
  store ptr %i.dh, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !4170
  store i64 %i.dc, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !4170
  %i.dj = load i64, ptr %.sroa.6.0..sroa_idx.i20.i, align 8, !alias.scope !4171, !noalias !4172, !noundef !5 ; 5 uses
  %i.dk = icmp ult i64 %i.dj, 384307168202282326
  call void @llvm.assume(i1 %i.dk)
  %i.dl = load i64, ptr %i.h, align 8, !range !77, !alias.scope !4171, !noalias !4172, !noundef !5
  %i.dm = icmp eq i64 %i.dj, %i.dl
  br i1 %i.dm, label %bb.aj, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i.i.i: ; preds = %bb.aj, %bb.ah
  %i.dn = load ptr, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !alias.scope !4171, !noalias !4172, !nonnull !5, !noundef !5
  %i.do = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4173
  %i.dp = add nuw nsw i64 %i.dj, 1                ; 2 uses
  store i64 %i.dp, ptr %.sroa.6.0..sroa_idx.i20.i, align 8, !alias.scope !4171, !noalias !4172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4170
  %i.dq = icmp eq ptr %i.cy, %i.bt
  br i1 %i.dq, label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.loopexit.i, label %bb.ad

bb.ai:                                            ; preds = %bb.aj
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.ak, !noalias !4173

bb.aj:                                            ; preds = %bb.ah
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.dj, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i.i.i unwind label %bb.ai, !noalias !4173

bb.ak:                                            ; preds = %bb.ai
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !4173
  unreachable

.loopexit.i.i:                                    ; preds = %.noexc6.i.i, %bb.ad
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i:                           ; preds = %bb.ae
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i, %bb.ai
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.dr, %bb.ai ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtBG_6string6StringEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #23
          to label %.body.i unwind label %bb.al, !noalias !4149

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.loopexit.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE7reserveCskIqAKC4t9Ft_2yr.exit.i.i.i.i
  %.sroa.02.0.copyload3.pre.i = load i64, ptr %i.h, align 8, !noalias !4174
  %.sroa.54.0.copyload6.pre.i = load ptr, ptr %.sroa.4.0..sroa_idx.i19.i, align 8, !noalias !4174
  br label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.i

bb.al:                                            ; preds = %.body.i.i, %bb.z
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !4149
  unreachable

bb.am:                                            ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.i, %bb.t
  %i.du = load i64, ptr %.val, align 8, !range !55, !noalias !4125, !noundef !5
  %i.dv = trunc nuw i64 %i.du to i1
  br i1 %i.dv, label %bb.aq, label %_RNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0B9_.exit

.body.i:                                          ; preds = %bb.ap, %bb.ao, %.body.i.i, %bb.z
  %.pn.i = phi { ptr, i32 } [ %i.dz, %bb.ap ], [ %i.dy, %bb.ao ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ck, %bb.z ] ; 2 uses
  %i.dw = load i64, ptr %i.p, align 8, !range !63, !alias.scope !4175, !noalias !4125, !noundef !5
  %i.dx = icmp eq i64 %i.dw, -1
  br i1 %i.dx, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i, label %bb.an

bb.an:                                            ; preds = %.body.i
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5value5ValueECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.p)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbbTh99npV2h_10serde_json5value5ValueEECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.as, !noalias !4127

bb.ao:                                            ; preds = %bb.w, %.noexc21.i, %bb.v
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.i: ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.loopexit.i, %bb.ac, %bb.u
  %.sroa.6.013.i = phi i64 [ 0, %bb.u ], [ %i.dp, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.loopexit.i ], [ 1, %bb.ac ]
  %.sroa.54.0.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.u ], [ %.sroa.54.0.copyload6.pre.i, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.loopexit.i ], [ %i.cr, %bb.ac ]
  %.sroa.02.0.i = phi i64 [ 0, %bb.u ], [ %.sroa.02.0.copyload3.pre.i, %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtB6_6string6StringEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapNtNtCs7gfv9tzbXmh_6yara_x6models4TagsNCNCNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0s0_00EE11spec_extendB3b_.exit.i.loopexit.i ], [ %i.co, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4133
  store i64 %.sroa.02.0.i, ptr %i.o, align 8, !noalias !4125
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.54.0.i, ptr %.sroa.54.0..sroa_idx.i, align 8, !noalias !4125
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %.sroa.6.013.i, ptr %.sroa.6.0..sroa_idx7.i, align 8, !noalias !4125
  br label %bb.am

bb.ap:                                            ; preds = %bb.aq
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtB12_6string6StringEEECskIqAKC4t9Ft_2yr(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #23
          to label %.body.i unwind label %bb.as, !noalias !4127

bb.aq:                                            ; preds = %bb.am
  %i.ea = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !noalias !4125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4125
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4125
  call void @llvm.experimental.noalias.scope.decl(metadata !4178)
  call void @llvm.experimental.noalias.scope.decl(metadata !4181)
  %i.ec = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !4183, !noalias !4184, !align !41, !noundef !5
  %i.ee = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4183, !noalias !4184, !nonnull !5, !align !41, !noundef !5 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 56
  %i.eg = load ptr, ptr %i.ef, align 8, !noalias !4185, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 64
  %i.ei = load i64, ptr %i.eh, align 8, !noalias !4185, !noundef !5 ; 3 uses
  %i.ej = getelementptr inbounds nuw [12 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = icmp ult i64 %i.ei, 768614336404564651
  call void @llvm.assume(i1 %i.ek)
  %i.el = getelementptr inbounds nuw i8, ptr %i.ee, i64 88
  %i.em = load i64, ptr %i.el, align 8, !noalias !4185, !noundef !5 ; 2 uses
  %i.en = sub i64 %i.ei, %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ed, ptr %i.eo, align 8, !alias.scope !4178, !noalias !4186
  store ptr %i.v, ptr %i.j, align 8, !alias.scope !4178, !noalias !4186
  %i.ep = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.eg, ptr %i.ep, align 8, !alias.scope !4178, !noalias !4186
  %i.eq = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store ptr %i.ej, ptr %i.eq, align 8, !alias.scope !4178, !noalias !4186
  %i.er = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i8 0, ptr %i.er, align 8, !alias.scope !4178, !noalias !4186
  %i.es = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 %i.em, ptr %i.es, align 8, !alias.scope !4178, !noalias !4186
  %i.et = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %i.en, ptr %i.et, align 8, !alias.scope !4178, !noalias !4186
  invoke void @_RNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler16patterns_to_json(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.j, i64 noundef %i.eb)
          to label %bb.ar unwind label %bb.ap, !noalias !4127

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4125
  %.sroa.0.0.copyload1.i = load i64, ptr %i.k, align 8, !noalias !4125
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4125
  br label %_RNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0B9_.exit

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.q, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr.exit.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !4127
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskIqAKC4t9Ft_2yr.exit.i
  resume { ptr, i32 } %.pn.pn.pn.i

_RNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0B9_.exit: ; preds = %bb.am, %bb.ar
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload1.i, %bb.ar ], [ -1, %bb.am ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !4122
  %.sroa.05.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !4122
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.p, i64 72, i1 false)
  %.sroa.05.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.05, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !4122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !4125
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.05, i64 72, i1 false)
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.0.0.i, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05)
  br label %bb.au

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4113
  store i64 -1, ptr %0, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %_RNCNvNtNtNtCskIqAKC4t9Ft_2yr8commands4scan14output_handler13rules_to_jsons_0B9_.exit
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapNtNtCs7gfv9tzbXmh_6yara_x8compiler12IgnoredRulesNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtBb_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEs0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1P_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  %.sroa.9 = alloca i64, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4190)
  %i.i = load ptr, ptr %1, align 8, !alias.scope !4190, !noalias !4187, !nonnull !5, !noundef !5 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !4190, !noalias !4187, !nonnull !5, !noundef !5
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_RNvXNtCs7gfv9tzbXmh_6yara_x8compilerNtB2_12IgnoredRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.m, ptr %1, align 8, !alias.scope !4190, !noalias !4187
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.o = load i64, ptr %i.n, align 8, !range !250, !noalias !4192, !noundef !5 ; 2 uses
  switch i64 %i.o, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ]

default.unreachable:                              ; preds = %bb.i, %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !noalias !4192, !nonnull !5, !noundef !5
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.s = load i64, ptr %i.r, align 8, !noalias !4192, !noundef !5
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !noalias !4192, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.w = load i64, ptr %i.v, align 8, !noalias !4192, !noundef !5
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.y = load i64, ptr %i.x, align 8, !noalias !4192, !noundef !5 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !4190, !noalias !4187, !noundef !5 ; 2 uses
  %i.ab = icmp ult i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.g, %bb.d, %bb.c
  %.sroa.7.0.i = phi i64 [ %i.s, %bb.c ], [ %i.w, %bb.d ], [ undef, %bb.g ]
  %.sroa.4.0.i = phi ptr [ %i.q, %bb.c ], [ %i.u, %bb.d ], [ %i.ai, %bb.g ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !4192, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noalias !4192, !noundef !5
  store i64 %i.o, ptr %.sroa.5, align 8, !alias.scope !4187, !noalias !4190
  br label %_RNvXNtCs7gfv9tzbXmh_6yara_x8compilerNtB2_12IgnoredRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !4190, !noalias !4187, !nonnull !5, !align !41, !noundef !5
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ah, i64 %i.y
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.y, i64 noundef %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #27, !noalias !4192
  unreachable

_RNvXNtCs7gfv9tzbXmh_6yara_x8compilerNtB2_12IgnoredRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit: ; preds = %bb.a, %bb.f
  %.sroa.8.0 = phi ptr [ undef, %bb.a ], [ %.sroa.4.0.i, %bb.f ] ; 6 uses
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.af, %bb.f ] ; 5 uses
  %.sroa.0.0 = phi ptr [ undef, %bb.a ], [ %i.ad, %bb.f ] ; 2 uses
  %.sink.i.sroa.phi = phi ptr [ %.sroa.5, %bb.a ], [ %.sroa.9, %bb.f ]
  %.sroa.7.0.sink.i = phi i64 [ -1, %bb.a ], [ %.sroa.7.0.i, %bb.f ]
  store i64 %.sroa.7.0.sink.i, ptr %.sink.i.sroa.phi, align 8, !alias.scope !4187, !noalias !4190
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.16. = load i64, ptr %.sroa.5, align 8, !range !761, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.16., -1
  br i1 %.not, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_RNvXNtCs7gfv9tzbXmh_6yara_x8compilerNtB2_12IgnoredRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit
  %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload = load i64, ptr %.sroa.9, align 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4193
  switch i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.16., label %default.unreachable [
    i64 0, label %.split.i
    i64 1, label %.split32.i
    i64 2, label %.split36.i
  ]

.split.i:                                         ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  store ptr %.sroa.8.0, ptr %i.g, align 8, !noalias !4193, !captures !3585
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload, ptr %i.aj, align 8, !noalias !4193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4193
  store ptr %i.g, ptr %i.f, align 8, !noalias !4193
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.411.0..sroa_idx.i, align 8, !noalias !4193
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @6, ptr noundef nonnull %i.f), !noalias !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4193
  br label %bb.j

.split32.i:                                       ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4193
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  store ptr %.sroa.8.0, ptr %i.e, align 8, !noalias !4193, !captures !3585
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.9.0..sroa.9.0..sroa.9.0..sroa.9.0.copyload, ptr %i.ak, align 8, !noalias !4193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4193
  store ptr %i.e, ptr %i.d, align 8, !noalias !4193
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.47.0..sroa_idx.i, align 8, !noalias !4193
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @7, ptr noundef nonnull %i.d), !noalias !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4193
  br label %bb.j

.split36.i:                                       ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4193
  %i.al = getelementptr i8, ptr %.sroa.8.0, i64 8
  %.sroa.4.0.copyload.val44.i = load ptr, ptr %i.al, align 8, !noalias !4193, !nonnull !5, !noundef !5 ; 2 uses
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.val44.i, i64 8
  %.sroa.49.0.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.val44.i, i64 16
  %.sroa.0.0.i.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !noalias !4193, !nonnull !5, !noundef !5
  %.sroa.49.0.i.i = load i64, ptr %.sroa.49.0.in.i.i, align 8, !noalias !4193, !noundef !5
  store ptr %.sroa.0.0.i.i, ptr %i.c, align 8, !noalias !4193
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.49.0.i.i, ptr %i.am, align 8, !noalias !4193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4193
  store ptr %i.c, ptr %i.b, align 8, !noalias !4193
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIqAKC4t9Ft_2yr, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !4193
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @8, ptr noundef nonnull %i.b), !noalias !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4193
  br label %bb.j

bb.j:                                             ; preds = %.split36.i, %.split32.i, %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4193
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.4.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.l unwind label %bb.k, !noalias !4193

bb.k:                                             ; preds = %bb.m, %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskIqAKC4t9Ft_2yr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i unwind label %bb.q, !noalias !4193

bb.l:                                             ; preds = %bb.j
  %i.ao = load i64, ptr %i.a, align 8, !range !55, !noalias !4193, !noundef !5
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !range !56, !noalias !4193, !noundef !5 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ap, label %bb.m, label %bb.n, !prof !57

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.as, align 8, !noalias !4193
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ar, i64 %i.at) #22
          to label %bb.p unwind label %bb.k, !noalias !4193

bb.n:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %i.as, align 8, !noalias !4193, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = icmp ule i64 %.sroa.4.0, %i.ar
  call void @llvm.assume(i1 %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4193
  %.not.i = icmp eq i64 %.sroa.4.0, 0
  br i1 %.not.i, label %_RNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEs0_0B6_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.au, ptr nonnull align 1 %.sroa.0.0, i64 %.sroa.4.0, i1 false), !noalias !4193
  br label %_RNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEs0_0B6_.exit

bb.p:                                             ; preds = %bb.m
  unreachable

bb.q:                                             ; preds = %bb.k
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #24, !noalias !4193
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIqAKC4t9Ft_2yr.exit.i: ; preds = %bb.k
  resume { ptr, i32 } %i.an

_RNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEs0_0B6_.exit: ; preds = %bb.n, %bb.o
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.68.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4193
  store i64 %i.ar, ptr %0, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0, ptr %.sroa.57.0..sroa_idx, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RNvXNtCs7gfv9tzbXmh_6yara_x8compilerNtB2_12IgnoredRulesNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next.exit
  store i64 -1, ptr %0, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNCINvNtCskIqAKC4t9Ft_2yr8commands13compile_rulesINtNtNtNtCs1ZTs3ySsPIM_12clap_builder6parser7matches11arg_matches9ValuesRefTINtNtCskKLDkoKarTP_4core6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtCsG258MDvU3F_3std4path7PathBufEEEs0_0B6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapNtNtNtBb_3str4iter5LinesNCINvMs0_NtCsfg5wIEEXgBO_9indicatif5multiNtB1t_10MultiState7printlnNtNtCsexYYUdYSQU6_5alloc6string6StringE0ENtNtNtB9_6traits8iterator8Iterator4nextCskIqAKC4t9Ft_2yr(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4206)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 65 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !range !47, !alias.scope !4209, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_RNvXss_NtNtCskKLDkoKarTP_4core3str4iterNtB5_5LinesNtNtNtNtB9_4iter6traits8iterator8Iterator4next.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4209, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !4209, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4213, !noalias !4214, !noundef !5 ; 6 uses
  %.not.i.i.i.i.i = icmp ugt i64 %i.k, %.val1.i.i.i.i
  %.promoted.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !4213, !noalias !4214 ; 2 uses
  %i.l = icmp ult i64 %i.k, %.promoted.i.i.i.i.i
  %or.cond27.i.i.i.i.i = or i1 %.not.i.i.i.i.i, %i.l
  br i1 %or.cond27.i.i.i.i.i, label %_RNvMsf_NtNtCskKLDkoKarTP_4core3str4iterINtB5_13SplitInternalcE7get_endCskIqAKC4t9Ft_2yr.exit.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i:                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !4213, !noalias !4214, !noundef !5 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %.pre.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !4213, !noalias !4214 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i
  %i.t = phi i64 [ %i.ah, %bb.e ], [ %.promoted.i.i.i.i.i, %.lr.ph.split.preheader.i.i.i.i.i ] ; 4 uses
  %i.u = sub nuw i64 %i.k, %i.t                   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.t ; 2 uses
  %i.w = icmp samesign ult i64 %i.u, 16
  br i1 %i.w, label %.preheader.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph.split.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.k, %i.t
  br i1 %.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.x = tail call { i64, i64 } @_RNvNtNtCskKLDkoKarTP_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef range(i64 0, -9223372036854775808) %i.u), !noalias !4216 ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  %i.z = extractvalue { i64, i64 } %i.x, 1
  %i.aa = trunc nuw i64 %i.y to i1
  br i1 %i.aa, label %.loopexit.i.i.i.i.i, label %.loopexit15.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i = phi i64 [ %i.ae, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 %.sroa.04.011.i.i.i.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !4217, !noalias !4216, !noundef !5
  %i.ad = icmp eq i8 %i.ac, %.pre.i.i.i.i.i
  br i1 %i.ad, label %.loopexit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ae = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.loopexit.i.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ %i.z, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.af = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i, %i.u
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = add i64 %i.t, 1
  %i.ah = add i64 %i.ag, %.sroa.5.0.i.i.i.i.i.i   ; 8 uses
  store i64 %i.ah, ptr %i.i, align 8, !alias.scope !4213, !noalias !4214
  %.not11.i.i.i.i.i = icmp ult i64 %i.ah, %i.p
end_hunk_1
