Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.004?download=true
inline.NumInlined: 5142
inline.NumDeleted: 3641
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2k_6common12score_fusion12score_fusionIB26_B25_EE0EINtNtB8_5chain5ChainIB1i_fEINtNtNtBa_7sources6repeat6RepeatfEEENCB33_s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtB2i_15ExtendedPointIdB2g_ENCINvNvMsg_NtB8_7flattenINtB77_13FlattenCompatppE9iter_fold7flattenIBO_IB1i_B2g_ENCNCB33_s_00EB5O_NCINvNvXsi_B77_B7k_B5b_4fold7flattenB81_B5O_NCB33_s0_0E0E0ECsPYQCUnoTxQ_10collection:bb.a
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB1Z_6common12score_fusion12score_fusionIB1L_B1K_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 16, i1 false), !noalias !3724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3723
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.c, align 8, !noalias !3723
  %.val.i12.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !3725, !noalias !3726, !nonnull !7, !noundef !7
  %i.aj = load i8, ptr %.val.i12.i.i.i, align 1, !range !23, !noalias !3727, !noundef !7
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs607s0NAIaWN_7segment6common12score_fusion10distr_norm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCINvNtNtCs607s0NAIaWN_7segment6common12score_fusion12score_fusionINtNtCsexYYUdYSQU6_5alloc3vec3VecIB14_NtNtB8_5types11ScoredPointEEE0CsPYQCUnoTxQ_10collection.exit.i.i.i.i unwind label %.thread29.i.i.i, !noalias !3728

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvNtNtCs607s0NAIaWN_7segment6common12score_fusion12min_max_norm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %_RNCINvNtNtCs607s0NAIaWN_7segment6common12score_fusion12score_fusionINtNtCsexYYUdYSQU6_5alloc3vec3VecIB14_NtNtB8_5types11ScoredPointEEE0CsPYQCUnoTxQ_10collection.exit.i.i.i.i unwind label %.thread29.i.i.i, !noalias !3728

_RNCINvNtNtCs607s0NAIaWN_7segment6common12score_fusion12score_fusionINtNtCsexYYUdYSQU6_5alloc3vec3VecIB14_NtNtB8_5types11ScoredPointEEE0CsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3723
  %.sroa.018.0.copyload19.i.i.i = load i64, ptr %i.d, align 8, !noalias !3729
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx21.i.i.i, i64 16, i1 false), !noalias !3729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3723
  br label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB1Z_6common12score_fusion12score_fusionIB1L_B1K_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.s, %_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1h_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2f_6common12score_fusion12score_fusionIB21_B20_EE0EINtNtB7_5chain5ChainIB1d_fEINtNtNtB9_7sources6repeat6RepeatfEEEINtB5_7ZipImplBW_B3V_E9size_hintCsPYQCUnoTxQ_10collection.exit.i.i.i, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !3730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3712
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.al)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1e_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2c_6common12score_fusion12score_fusionIB1Y_B1X_EE0EECsPYQCUnoTxQ_10collection.exit.i.i.i.i unwind label %bb.j, !noalias !3728

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = load ptr, ptr %i.o, align 8, !alias.scope !3731, !noalias !3732, !noundef !7
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %common.resume.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %common.resume.i.i.i unwind label %bb.m, !noalias !3728

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1e_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2c_6common12score_fusion12score_fusionIB1Y_B1X_EE0EECsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %._crit_edge.i.i.i
  %i.ap = load ptr, ptr %i.o, align 8, !alias.scope !3733, !noalias !3732, !noundef !7
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1h_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2f_6common12score_fusion12score_fusionIB21_B20_EE0EINtNtB7_5chain5ChainIB1d_fEINtNtNtB9_7sources6repeat6RepeatfEEENtNtNtB9_6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtB2d_15ExtendedPointIdB2b_ENCINvBZ_8map_foldTB20_fEIBX_IB1d_B2b_ENCNCB2Y_s_00EB5z_NCB2Y_s_0NCINvNvMsg_NtB7_7flattenINtB7U_13FlattenCompatppE9iter_fold7flattenB75_B5z_NCINvNvXsi_B7U_B87_B4W_4fold7flattenB75_B5z_NCB2Y_s0_0E0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1e_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2c_6common12score_fusion12score_fusionIB1Y_B1X_EE0EECsPYQCUnoTxQ_10collection.exit.i.i.i.i
  call void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o), !noalias !3728
  br label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1h_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2f_6common12score_fusion12score_fusionIB21_B20_EE0EINtNtB7_5chain5ChainIB1d_fEINtNtNtB9_7sources6repeat6RepeatfEEENtNtNtB9_6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtB2d_15ExtendedPointIdB2b_ENCINvBZ_8map_foldTB20_fEIBX_IB1d_B2b_ENCNCB2Y_s_00EB5z_NCB2Y_s_0NCINvNvMsg_NtB7_7flattenINtB7U_13FlattenCompatppE9iter_fold7flattenB75_B5z_NCINvNvXsi_B7U_B87_B4W_4fold7flattenB75_B5z_NCB2Y_s0_0E0E0E0ECsPYQCUnoTxQ_10collection.exit

bb.m:                                             ; preds = %bb.k
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !3728
  unreachable

common.resume.i.i.i:                              ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB1j_11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i, %bb.k, %bb.j
  %common.resume.op.i.i.i = phi { ptr, i32 } [ %i.am, %bb.j ], [ %i.am, %bb.k ], [ %.pn27.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB1j_11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i.i

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB1Z_6common12score_fusion12score_fusionIB1L_B1K_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %_RNCINvNtNtCs607s0NAIaWN_7segment6common12score_fusion12score_fusionINtNtCsexYYUdYSQU6_5alloc3vec3VecIB14_NtNtB8_5types11ScoredPointEEE0CsPYQCUnoTxQ_10collection.exit.i.i.i.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i.i, %bb.f
  %.sroa.03.sroa.0.0.copyload.i.i.i = phi i64 [ %.sroa.018.0.copyload19.i.i.i, %_RNCINvNtNtCs607s0NAIaWN_7segment6common12score_fusion12score_fusionINtNtCsexYYUdYSQU6_5alloc3vec3VecIB14_NtNtB8_5types11ScoredPointEEE0CsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ -1, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i.i ], [ -1, %bb.f ] ; 5 uses
  %i.as = icmp ne i64 %.sroa.03.sroa.0.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.as)
  store i64 %.sroa.03.sroa.0.0.copyload.i.i.i, ptr %i.f, align 8, !noalias !3712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.620.i.i.i, i64 16, i1 false), !noalias !3712
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3734)
  call void @llvm.experimental.noalias.scope.decl(metadata !3735)
  %i.at = load ptr, ptr %i.o, align 8, !alias.scope !3736, !noalias !3732, !noundef !7
  %.not.i.i14.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i14.i.i.i, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB1Z_6common12score_fusion12score_fusionIB1L_B1K_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3737)
  call void @llvm.experimental.noalias.scope.decl(metadata !3738)
  %i.au = load ptr, ptr %i.aa, align 8, !alias.scope !3739, !noalias !3732, !nonnull !7, !noundef !7
  %i.av = load ptr, ptr %i.ab, align 8, !alias.scope !3739, !noalias !3732, !nonnull !7, !noundef !7 ; 3 uses
  %i.aw = icmp eq ptr %i.av, %i.au
  br i1 %i.aw, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXse_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterfENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i unwind label %.body.i.i.i, !noalias !3728

.body.i.i.i:                                      ; preds = %bb.o
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !alias.scope !3736, !noalias !3732
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #39
          to label %.thread.i.i.i unwind label %bb.t, !noalias !3728

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i: ; preds = %bb.o
  store ptr null, ptr %i.o, align 8, !alias.scope !3736, !noalias !3732
  br label %bb.p

bb.p:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterfEEECsPYQCUnoTxQ_10collection.exit.i.i.i.i.i, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB1Z_6common12score_fusion12score_fusionIB1L_B1K_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i
  %.val4.i.i.i.i = load i32, ptr %i.h, align 8, !alias.scope !3740, !noalias !3732
  %.val15.i.i.i.i = load float, ptr %i.ac, align 4, !alias.scope !3740, !noalias !3732
  %i.ay = trunc i32 %.val4.i.i.i.i to i1
  %.sroa.3.0.i.i6.i.i.i.i = select i1 %i.ay, float %.val15.i.i.i.i, float undef
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store ptr %i.az, ptr %i.ab, align 8, !alias.scope !3739, !noalias !3732
  %i.ba = load float, ptr %i.av, align 4, !noalias !3741, !noundef !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bb = phi float [ %i.ba, %bb.q ], [ %.sroa.3.0.i.i6.i.i.i.i, %bb.p ] ; 2 uses
  %.sroa.03.sroa.4.0.copyload.i.i.i = load ptr, ptr %.sroa.620.0..sroa_idx.i.i.i, align 8, !noalias !3712, !nonnull !7, !noundef !7 ; 5 uses
  %.sroa.03.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.03.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !3712 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false), !noalias !3712
  %i.bc = icmp ult i64 %.sroa.03.sroa.5.0.copyload.i.i.i, 44343134792571038
  call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [208 x i8], ptr %.sroa.03.sroa.4.0.copyload.i.i.i, i64 %.sroa.03.sroa.5.0.copyload.i.i.i ; 2 uses
  %i.be = icmp sgt i64 %.sroa.03.sroa.0.0.copyload.i.i.i, -1
  call void @llvm.assume(i1 %i.be)
  store ptr %.sroa.03.sroa.4.0.copyload.i.i.i, ptr %i.ad, align 8, !noalias !3743
  store ptr %.sroa.03.sroa.4.0.copyload.i.i.i, ptr %.sroa.74.64..sroa_idx.i.i.i.i, align 8, !noalias !3743
  store i64 %.sroa.03.sroa.0.0.copyload.i.i.i, ptr %.sroa.87.64..sroa_idx.i.i.i.i, align 8, !noalias !3743
  store ptr %i.bd, ptr %.sroa.9.64..sroa_idx.i.i.i.i, align 8, !noalias !3743
  store float %i.bb, ptr %.sroa.10.64..sroa_idx.i.i.i.i, align 8, !noalias !3743
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3744
  store ptr %.sroa.03.sroa.4.0.copyload.i.i.i, ptr %i.a, align 8, !noalias !3743
  store ptr %.sroa.03.sroa.4.0.copyload.i.i.i, ptr %.sroa.74.64..sroa_idx5.i.i.i.i, align 8, !noalias !3743
  store i64 %.sroa.03.sroa.0.0.copyload.i.i.i, ptr %.sroa.87.64..sroa_idx8.i.i.i.i, align 8, !noalias !3743
  store ptr %i.bd, ptr %.sroa.9.64..sroa_idx10.i.i.i.i, align 8, !noalias !3743
  invoke void @_RINvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtBZ_15ExtendedPointIdBX_ENCINvNtNtB1N_8adapters3map8map_foldBX_BX_B2H_NCNCINvNtNtB11_6common12score_fusion12score_fusionINtB8_3VecIB5l_BX_EEEs_00QNCB4A_s0_0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull %3, float noundef %i.bb)
          to label %bb.s unwind label %bb.e, !noalias !3728

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3742
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false), !noalias !3712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3712
  %exitcond.not.i.i.i = icmp eq i64 %i.ae, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %bb.f

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB1j_11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i, %.thread.i.i.i, %.body.i.i.i
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !3728
  unreachable

.thread.i.i.i:                                    ; preds = %.body.i.i.i, %.thread29.i.i.i
  %.pn28.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.thread29.i.i.i ], [ %i.ax, %.body.i.i.i ]
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtBR_11ScoredPointEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB1j_11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.t, !noalias !3728

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtNtCs607s0NAIaWN_7segment5types15ExtendedPointIdNtB1j_11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %.thread.i.i.i, %bb.e
  %.pn27.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i, %bb.e ], [ %.pn28.i.i.i, %.thread.i.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3zip3ZipINtNtBG_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1u_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2s_6common12score_fusion12score_fusionIB2e_B2d_EE0EINtNtBG_5chain5ChainIB1q_fEINtNtNtBI_7sources6repeat6RepeatfEEEECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %i.h) #39
          to label %common.resume.i.i.i unwind label %bb.t, !noalias !3728

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtB7_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1h_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2f_6common12score_fusion12score_fusionIB21_B20_EE0EINtNtB7_5chain5ChainIB1d_fEINtNtNtB9_7sources6repeat6RepeatfEEENtNtNtB9_6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtB2d_15ExtendedPointIdB2b_ENCINvBZ_8map_foldTB20_fEIBX_IB1d_B2b_ENCNCB2Y_s_00EB5z_NCB2Y_s_0NCINvNvMsg_NtB7_7flattenINtB7U_13FlattenCompatppE9iter_fold7flattenB75_B5z_NCINvNvXsi_B7U_B87_B4W_4fold7flattenB75_B5z_NCB2Y_s0_0E0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1e_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2c_6common12score_fusion12score_fusionIB1Y_B1X_EE0EECsPYQCUnoTxQ_10collection.exit.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterfEB1d_ENCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB35_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4i_3VecfE14extend_trustedBN_E0E0EB1Q_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 6 uses
  %.sroa.0.0.copyload7 = ptrtoaddr ptr %.sroa.0.0.copyload to i64
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8 ; 6 uses
  %.sroa.41.0.copyload8 = ptrtoaddr ptr %.sroa.41.0.copyload to i64
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8 ; 9 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.44.0.copyload = load i64, ptr %.sroa.44.0..sroa_idx, align 8 ; 6 uses
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.65.0.copyload = load ptr, ptr %.sroa.65.0..sroa_idx, align 8 ; 5 uses
  %.sroa.65.0.copyload6 = ptrtoaddr ptr %.sroa.65.0.copyload to i64
  %i.a = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload ; 4 uses
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %min.iters.check = icmp ult i64 %i.a, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i
  %i.b = shl i64 %.sroa.44.0.copyload, 2
  %2 = add i64 %i.b, %.sroa.65.0.copyload6        ; 2 uses
  %3 = shl i64 %.sroa.52.0.copyload, 2            ; 2 uses
  %i.c = add i64 %3, %.sroa.0.0.copyload7
  %i.d = sub i64 %i.c, %2
  %diff.check = icmp ugt i64 %i.d, -32
  %i.e = add i64 %3, %.sroa.41.0.copyload8
  %i.f = sub i64 %i.e, %2
  %diff.check9 = icmp ugt i64 %i.f, -32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -8                       ; 4 uses
  %i.g = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.i ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <4 x float>, ptr %i.j, align 4, !noalias !3759 ; 2 uses
  %wide.load10 = load <4 x float>, ptr %i.l, align 4, !noalias !3759 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load11 = load <4 x float>, ptr %i.k, align 4, !noalias !3759
  %wide.load12 = load <4 x float>, ptr %i.m, align 4, !noalias !3759
  %i.n = fadd <4 x float> %wide.load, %wide.load
  %i.o = fadd <4 x float> %wide.load10, %wide.load10
  %i.p = fsub <4 x float> %i.n, %wide.load11
  %i.q = fsub <4 x float> %i.o, %wide.load12
  %i.r = getelementptr [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <4 x float> %i.p, ptr %i.r, align 4, !noalias !3760
  store <4 x float> %i.q, ptr %i.s, align 4, !noalias !3760
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !3757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.g, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %i.u = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %i.v = xor i64 %.sroa.0.015.i.i.ph, -1
  %i.w = add i64 %.sroa.6.0.copyload, %i.v
  %xtraiter = and i64 %i.u, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.x = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %i.y = add i64 %.sroa.0.015.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.y
  %.val13.i.i.prol = load float, ptr %i.z, align 4, !noalias !3759, !noundef !7
  %.val14.i.i.prol = load float, ptr %i.aa, align 4, !noalias !3759, !noundef !7
  %i.ab = fmul float %.val13.i.i.prol, 2.000000e+00
  %i.ac = fsub float %i.ab, %.val14.i.i.prol
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %.ph
  store float %i.ac, ptr %i.ad, align 4, !noalias !3760
  %i.ae = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.ae, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %i.af = icmp eq i64 %i.w, %.sroa.52.0.copyload
  br i1 %i.af, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ag = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.au, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.an, %scalar.ph ] ; 3 uses
  %i.ah = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ah
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ah
  %.val13.i.i = load float, ptr %i.ai, align 4, !noalias !3759, !noundef !7
  %.val14.i.i = load float, ptr %i.aj, align 4, !noalias !3759, !noundef !7
  %i.ak = fmul float %.val13.i.i, 2.000000e+00
  %i.al = fsub float %i.ak, %.val14.i.i
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.ag
  store float %i.al, ptr %i.am, align 4, !noalias !3760
  %i.an = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %.reass
  %.val13.i.i.1 = load float, ptr %i.ao, align 4, !noalias !3759, !noundef !7
  %.val14.i.i.1 = load float, ptr %i.ap, align 4, !noalias !3759, !noundef !7
  %i.aq = fmul float %.val13.i.i.1, 2.000000e+00
  %i.ar = fsub float %i.aq, %.val14.i.i.1
  %i.as = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.ag
  %i.at = getelementptr i8, ptr %i.as, i64 4
  store float %i.ar, ptr %i.at, align 4, !noalias !3760
  %i.au = add i64 %i.ag, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.an, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %scalar.ph, !llvm.loop !3758

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.g, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val12.i.i, ptr %.sroa.03.0.copyload, align 8, !noalias !3759
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1i_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6searchNtB4m_10LocalShard14do_search_impl0s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropB21_ENCINvNtB1i_16in_place_collect24write_in_place_with_dropB21_E0INtNtBc_6result6ResultB6A_zEEB4q_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3788)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3789)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3790
  store ptr %1, ptr %i.k, align 8, !noalias !3790
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %2, ptr %i.l, align 8, !noalias !3790
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !3791, !noalias !3792, !nonnull !7, !noundef !7 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i = load ptr, ptr %i.o, align 8, !alias.scope !3791, !noalias !3792 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3793
  %i.p = icmp eq ptr %.promoted.i, %i.n
  br i1 %i.p, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBW_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB30_EB1F_B4x_INtNtBc_6result6ResultB4x_zENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6searchNtB6y_10LocalShard14do_search_impl0s_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5X_EB6C_.exit, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.lr.ph.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.lr.ph.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3788, !noalias !3789, !nonnull !7
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !3789, !noalias !3788 ; 2 uses
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.4.0..sroa_idx.i.i6.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.promoted30.i = load ptr, ptr %i.r, align 8, !alias.scope !3788, !noalias !3789
  br label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %bb.aa, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.lr.ph.i
  %i.ab = phi ptr [ %.promoted30.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.lr.ph.i ], [ %i.aj, %bb.aa ] ; 14 uses
  %i.ac = phi ptr [ %2, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.lr.ph.i ], [ %i.bu, %bb.aa ] ; 5 uses
  %i.ad = phi ptr [ %.promoted.i, %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.lr.ph.i ], [ %i.ae, %bb.aa ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  call void @llvm.experimental.noalias.scope.decl(metadata !3795)
  call void @llvm.experimental.noalias.scope.decl(metadata !3796)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 3 uses
  store ptr %i.ae, ptr %i.o, align 8, !alias.scope !3791, !noalias !3792
  %.sroa.0.0.copyload7.i.i.i = load i64, ptr %i.ad, align 8, !noalias !3797 ; 5 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload7.i.i.i, -1
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBW_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB30_EB1F_B4x_INtNtBc_6result6ResultB4x_zENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6searchNtB6y_10LocalShard14do_search_impl0s_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5X_EB6C_.exit, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i
  %.sroa.7.0..sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.413.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i.i, i64 16, i1 false), !noalias !3798
  store i64 %.sroa.0.0.copyload7.i.i.i, ptr %i.j, align 8, !noalias !3798
  %i.af = icmp eq ptr %i.ab, %i.t
  br i1 %i.af, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i unwind label %bb.d, !noalias !3798

bb.d:                                             ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.ab unwind label %bb.e, !noalias !3798

bb.e:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !3798
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtCs607s0NAIaWN_7segment5types11ScoredPointENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtBW_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEEINtNtNtBc_5slice4iter4IterNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB30_EB1F_B4x_INtNtBc_6result6ResultB4x_zENCNCNvMNtNtNtCsPYQCUnoTxQ_10collection6shards11local_shard6searchNtB6y_10LocalShard14do_search_impl0s_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5X_EB6C_.exit unwind label %bb.f, !noalias !3790

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEECsPYQCUnoTxQ_10collection.exit.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab
end_hunk_0
