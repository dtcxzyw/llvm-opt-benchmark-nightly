Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/collection-65f4deb478ee6f80.collection.9c3f6a4bd60d140-cgu.004?download=true
inline.NumInlined: 5142
inline.NumDeleted: 3641
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipIBO_INtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB1m_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB2k_6common12score_fusion12score_fusionIB26_B25_EE0EINtNtB8_5chain5ChainIB1i_fEINtNtNtBa_7sources6repeat6RepeatfEEENCB33_s_0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCsyIGusAaLFh_5ahash8hash_map8AHashMapNtB2i_15ExtendedPointIdB2g_ENCINvNvMsg_NtB8_7flattenINtB77_13FlattenCompatppE9iter_fold7flattenIBO_IB1i_B2g_ENCNCB33_s_00EB5O_NCINvNvXsi_B77_B7k_B5b_4fold7flattenB81_B5O_NCB33_s0_0E0E0ECsPYQCUnoTxQ_10collection:bb.a
  %.sroa.74.64..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.87.64..sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.64..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.sroa.01.032.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.ae, %bb.s ]
  %i.ae = add nuw i64 %.sroa.01.032.i.i.i, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3712
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.620.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3718)
  call void @llvm.experimental.noalias.scope.decl(metadata !3719)
  %i.af = load ptr, ptr %i.j, align 8, !alias.scope !3720, !noalias !3721, !nonnull !7, !noundef !7
  %i.ag = load ptr, ptr %i.i, align 8, !alias.scope !3720, !noalias !3721, !nonnull !7, !noundef !7 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, %i.af
  br i1 %i.ah, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterINtB11_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENCINvNtNtB1Z_6common12score_fusion12score_fusionIB1L_B1K_EE0ENtNtNtB9_6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i, label %_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i.i

_RNvXs4_NtNtCsexYYUdYSQU6_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs607s0NAIaWN_7segment5types11ScoredPointEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsPYQCUnoTxQ_10collection.exit.i.i.i.i: ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.ai, ptr %i.i, align 8, !alias.scope !3720, !noalias !3721
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.ag, align 8, !noalias !3722 ; 2 uses
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
  %i.c = add i64 %i.b, %.sroa.65.0.copyload6      ; 2 uses
  %i.d = shl i64 %.sroa.52.0.copyload, 2          ; 2 uses
  %i.e = add i64 %i.d, %.sroa.0.0.copyload7
  %i.f = sub i64 %i.e, %i.c
  %diff.check = icmp ugt i64 %i.f, -32
  %i.g = add i64 %i.d, %.sroa.41.0.copyload8
  %i.h = sub i64 %i.g, %i.c
  %diff.check9 = icmp ugt i64 %i.h, -32
  %conflict.rdx = or i1 %diff.check, %diff.check9
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, -8                       ; 4 uses
  %i.i = add i64 %.sroa.44.0.copyload, %n.vec     ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %.sroa.44.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.k = add i64 %index, %.sroa.52.0.copyload     ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.k ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <4 x float>, ptr %i.l, align 4, !noalias !3759 ; 2 uses
  %wide.load10 = load <4 x float>, ptr %i.n, align 4, !noalias !3759 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %wide.load11 = load <4 x float>, ptr %i.m, align 4, !noalias !3759
  %wide.load12 = load <4 x float>, ptr %i.o, align 4, !noalias !3759
  %i.p = fadd <4 x float> %wide.load, %wide.load
  %i.q = fadd <4 x float> %wide.load10, %wide.load10
  %i.r = fsub <4 x float> %i.p, %wide.load11
  %i.s = fsub <4 x float> %i.q, %wide.load12
  %i.t = getelementptr [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <4 x float> %i.r, ptr %i.t, align 4, !noalias !3760
  store <4 x float> %i.s, ptr %i.u, align 4, !noalias !3760
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !3757

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i.i, %middle.block
  %.ph = phi i64 [ %.sroa.44.0.copyload, %vector.memcheck ], [ %.sroa.44.0.copyload, %.lr.ph.i.i ], [ %i.i, %middle.block ] ; 3 uses
  %.sroa.0.015.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ] ; 4 uses
  %2 = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload
  %i.w = xor i64 %.sroa.0.015.i.i.ph, -1
  %i.x = add i64 %.sroa.6.0.copyload, %i.w
  %xtraiter = and i64 %2, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.y = or disjoint i64 %.sroa.0.015.i.i.ph, 1
  %i.z = add i64 %.sroa.0.015.i.i.ph, %.sroa.52.0.copyload ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.z
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.z
  %.val13.i.i.prol = load float, ptr %i.aa, align 4, !noalias !3759, !noundef !7 ; 2 uses
  %.val14.i.i.prol = load float, ptr %i.ab, align 4, !noalias !3759, !noundef !7
  %i.ac = fadd float %.val13.i.i.prol, %.val13.i.i.prol
  %i.ad = fsub float %i.ac, %.val14.i.i.prol
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %.ph
  store float %i.ad, ptr %i.ae, align 4, !noalias !3760
  %i.af = add i64 %.ph, 1                         ; 2 uses
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.sroa.0.015.i.i.unr = phi i64 [ %.sroa.0.015.i.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.ag = icmp eq i64 %i.x, %.sroa.52.0.copyload
  br i1 %i.ag, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op = add i64 1, %.sroa.52.0.copyload
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ah = phi i64 [ %.unr, %scalar.ph.preheader.new ], [ %i.av, %scalar.ph ] ; 3 uses
  %.sroa.0.015.i.i = phi i64 [ %.sroa.0.015.i.i.unr, %scalar.ph.preheader.new ], [ %i.ao, %scalar.ph ] ; 3 uses
  %i.ai = add i64 %.sroa.0.015.i.i, %.sroa.52.0.copyload ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %i.ai
  %.val13.i.i = load float, ptr %i.aj, align 4, !noalias !3759, !noundef !7 ; 2 uses
  %.val14.i.i = load float, ptr %i.ak, align 4, !noalias !3759, !noundef !7
  %i.al = fadd float %.val13.i.i, %.val13.i.i
  %i.am = fsub float %i.al, %.val14.i.i
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.ah
  store float %i.am, ptr %i.an, align 4, !noalias !3760
  %i.ao = add nuw i64 %.sroa.0.015.i.i, 2         ; 2 uses
  %.reass = add i64 %.sroa.0.015.i.i, %invariant.op ; 2 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.reass
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.41.0.copyload, i64 %.reass
  %.val13.i.i.1 = load float, ptr %i.ap, align 4, !noalias !3759, !noundef !7 ; 2 uses
  %.val14.i.i.1 = load float, ptr %i.aq, align 4, !noalias !3759, !noundef !7
  %i.ar = fadd float %.val13.i.i.1, %.val13.i.i.1
  %i.as = fsub float %i.ar, %.val14.i.i.1
  %i.at = getelementptr [4 x i8], ptr %.sroa.65.0.copyload, i64 %i.ah
  %i.au = getelementptr i8, ptr %i.at, i64 4
  store float %i.as, ptr %i.au, align 4, !noalias !3760
  %i.av = add i64 %i.ah, 2                        ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.ao, %i.a
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit, label %scalar.ph, !llvm.loop !3758

_RINvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterfEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRfB2u_EfuNCNvNtCsPYQCUnoTxQ_10collection15recommendations31merge_positive_and_negative_avg0NCINvNvB1s_8for_each4callfNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB4w_3VecfE14extend_trustedINtB2b_3MapBM_B2D_EE0E0E0EB2J_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %.val12.i.i = phi i64 [ %.sroa.44.0.copyload, %bb.a ], [ %i.i, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.av, %scalar.ph ]
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

bb.g:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 472 ; 2 uses
  store ptr %i.aj, ptr %i.r, align 8, !alias.scope !3799, !noalias !3800
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.16..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx8.i.i.i, i64 16, i1 false), !noalias !3790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3798
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3802
  store ptr %1, ptr %i.i, align 8, !noalias !3802
  store ptr %i.ac, ptr %i.u, align 8, !noalias !3802
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3802
  store i64 %.sroa.0.0.copyload7.i.i.i, ptr %i.g, align 8, !noalias !3803
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 336
  %i.al = load i64, ptr %i.ak, align 8, !range !34, !alias.scope !3804, !noalias !3801, !noundef !7 ; 2 uses
  %i.am = xor i64 %i.al, -9223372036854775808
  %i.an = icmp slt i64 %i.al, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 5
  switch i64 %i.ao, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.n
  ]

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  %i.aq = load i64, ptr %i.ap, align 8, !range !9, !alias.scope !3804, !noalias !3801, !noundef !7
  %.not5.i.i.i.i = icmp eq i64 %i.aq, -1
  br i1 %.not5.i.i.i.i, label %bb.o, label %.sink.split.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 392
  %i.as = load i64, ptr %i.ar, align 8, !range !9, !alias.scope !3804, !noalias !3801, !noundef !7
  %.not4.i.i.i.i = icmp eq i64 %i.as, -1
  br i1 %.not4.i.i.i.i, label %bb.o, label %.sink.split.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 392
  %i.au = load i64, ptr %i.at, align 8, !range !9, !alias.scope !3804, !noalias !3801, !noundef !7
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTmyEENCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB1B_26SliceBufferedUpdateWrapperNtNtB1F_4mmap8MmapFileyE7flushers_0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3T_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB56_3VecyE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection:bb.a
  %i.as = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ae
  %i.at = getelementptr i8, ptr %i.as, i64 24
  store i64 %.val15.i.3, ptr %i.at, align 8, !noalias !6980
  %i.au = add i64 %i.ae, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.e
  br i1 %i.aw, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTmyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_yuNCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB2u_26SliceBufferedUpdateWrapperNtNtB2y_4mmap8MmapFileyE7flushers_0s0_0NCINvNvBV_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %scalar.ph, !llvm.loop !6975

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTmyEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB11_8adapters3map8map_foldRBQ_yuNCNCNvMs_NtNtNtCslmvYCXbQjWR_6common12universal_io8wrappers15buffered_updateINtB2u_26SliceBufferedUpdateWrapperNtNtB2y_4mmap8MmapFileyE7flushers_0s0_0NCINvNvBV_8for_each4callyNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5j_3VecyE14extend_trustedINtB1L_3MapBF_B2l_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6977
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRB1n_yNCNvMNtNtNtB1v_6shards11replica_set6updateNtB3A_15ShardReplicaSet31merge_successful_update_resultss0_0E0EB2z_4foldINtNtBc_3cmp11KeyAndValueyB3n_ENvYB5j_NtB5m_3Ord3maxEB1v_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %2, i64 noundef %3) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c                   ; 3 uses
  %i.e = lshr exact i64 %i.d, 6                   ; 2 uses
  %i.f = icmp eq i64 %i.d, 64
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.e, 288230376151711742
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.sroa.05.0.i = phi i64 [ 0, %.new ], [ %i.n, %bb.c ] ; 3 uses
  %.sroa.6.0.i = phi i64 [ %3, %.new ], [ %..i.i.i.i.1, %bb.c ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %2, %.new ], [ %.2.i.i.i.i.1, %bb.c ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6988, !noalias !6989, !noundef !7 ; 2 uses
  %i.i = icmp ult i64 %i.h, %.sroa.6.0.i
  %..i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %.sroa.6.0.i) ; 2 uses
  %.2.i.i.i.i = select i1 %i.i, ptr %.sroa.02.0.i, ptr %i.g
  %i.j = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !6988, !noalias !6989, !noundef !7 ; 2 uses
  %i.m = icmp ult i64 %i.l, %..i.i.i.i
  %..i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.l, i64 %..i.i.i.i) ; 3 uses
  %.2.i.i.i.i.1 = select i1 %i.m, ptr %.2.i.i.i.i, ptr %i.k ; 3 uses
  %i.n = add nuw i64 %.sroa.05.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.o = and i64 %i.d, 64
  %lcmp.mod.not = icmp eq i64 %i.o, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa, %bb.b
  %.sroa.05.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.n, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ]
  %.sroa.6.0.i.epil.init = phi i64 [ %3, %bb.b ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.02.0.i.epil.init = phi ptr [ %2, %bb.b ], [ %.2.i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.05.0.i.epil.init ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !6988, !noalias !6989, !noundef !7 ; 2 uses
  %i.r = icmp ult i64 %i.q, %.sroa.6.0.i.epil.init
  %..i.i.i.i.epil = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %.sroa.6.0.i.epil.init)
  %.2.i.i.i.i.epil = select i1 %i.r, ptr %.sroa.02.0.i.epil.init, ptr %i.p
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa, %bb.a
  %.pn16.i = phi ptr [ %2, %bb.a ], [ %.2.i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ], [ %.2.i.i.i.i.epil, %.epil.preheader ]
  %.pn14.i = phi i64 [ %3, %bb.a ], [ %..i.i.i.i.1, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterTyNtNtNtCsPYQCUnoTxQ_10collection10operations5types12UpdateResultEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValueyRBQ_ENCINvNtNtB21_8adapters3map8map_foldB35_B2F_B2F_NCINvNvB1V_10max_by_key3keyB35_yNCNvMNtNtNtBY_6shards11replica_set6updateNtB4y_15ShardReplicaSet31merge_successful_update_resultss0_0E0NvYB2F_NtB2I_3Ord3maxE0EBY_.exit.loopexit.unr-lcssa ], [ %..i.i.i.i.epil, %.epil.preheader ]
  %.pn.i = insertvalue { ptr, i64 } poison, ptr %.pn16.i, 0
  %.merged.i = insertvalue { ptr, i64 } %.pn.i, i64 %.pn14.i, 1
  ret { ptr, i64 } %.merged.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callNtNtCsexYYUdYSQU6_5alloc6string6StringNCINvXsk_B3v_B3t_INtNtB2u_7collect6ExtendB3t_E6extendBN_E0E0EB1z_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7003)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB30_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.y, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7004
  store ptr %i.l, ptr %i.c, align 8, !noalias !7005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7005
  store ptr %i.c, ptr %i.b, align 8, !noalias !7005
  store ptr @_RNvXs1o_NtCskKLDkoKarTP_4core3fmtRhNtB6_8LowerHex3fmtCsPYQCUnoTxQ_10collection, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !7005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7006
  call void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @26, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7004
  call void @llvm.experimental.noalias.scope.decl(metadata !7007)
  %i.m = load ptr, ptr %i.h, align 8, !alias.scope !7007, !noalias !7006, !nonnull !7, !noundef !7
  %i.n = load i64, ptr %i.i, align 8, !alias.scope !7007, !noalias !7006, !noundef !7 ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.n)
          to label %.noexc.i.i.i.i unwind label %bb.d, !noalias !7008

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #39
          to label %common.resume.i.i.i.i unwind label %bb.i, !noalias !7009

.noexc.i.i.i.i:                                   ; preds = %bb.c
  %i.p = load i64, ptr %i.j, align 8, !alias.scope !7010, !noalias !7011, !noundef !7 ; 3 uses
  %i.q = icmp sgt i64 %i.p, -1
  call void @llvm.assume(i1 %i.q)
  %.not.i.i.i.i.i = icmp eq i64 %i.n, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.r = load ptr, ptr %i.k, align 8, !alias.scope !7010, !noalias !7011, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull readonly align 1 %i.m, i64 %i.n, i1 false), !noalias !7008
  %.pre.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !7010, !noalias !7011
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i.i.i.i
  %i.t = phi i64 [ %.pre.i.i.i.i.i, %bb.e ], [ %i.p, %.noexc.i.i.i.i ]
  %i.u = add i64 %i.t, %i.n
  store i64 %i.u, ptr %i.j, align 8, !alias.scope !7010, !noalias !7011
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i unwind label %bb.g, !noalias !7009

bb.g:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i.i.i unwind label %bb.h, !noalias !7009

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !7009
  unreachable

common.resume.i.i.i.i:                            ; preds = %bb.g, %bb.d
  %common.resume.op.i.i.i.i = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i

bb.i:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38, !noalias !7009
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsPYQCUnoTxQ_10collection(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !7009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7006
  %i.y = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.g
  br i1 %i.z, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB30_.exit, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvBS_8for_each4callB2d_NCINvXsk_B2f_B2d_INtNtBW_7collect6ExtendB2d_E6extendINtB1I_3MapBF_B2Q_EE0E0E0EB30_.exit: ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRhNtNtCsexYYUdYSQU6_5alloc6string6StringuNCNCNvNtNtCsPYQCUnoTxQ_10collection6common7sha_2569hash_file00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvXsk_BY_BW_INtNtB2K_7collect6ExtendBW_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterhEB1z_EE0E0E0B1J_.exit.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2a_8for_each4callhNCINvMsk_NtB1v_3vecINtB3n_3VechE14extend_trustedBN_E0E0ECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.a, %i.c
  br i1 %i.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %xtraiter = and i64 %i.k, 1
  %2 = add i64 %i.i, -1
  %i.l = icmp eq i64 %2, %i.j
  br i1 %i.l, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.k, -2
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %i.m = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.z, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.aa, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.n, align 1, !noalias !7020, !noundef !7 ; 2 uses
  %i.o = load i8, ptr %i.e, align 1, !noalias !7021, !noundef !7
  %i.p = icmp eq i8 %.val15.i, %i.o
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.q = load i8, ptr %i.g, align 1, !noalias !7021, !noundef !7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.q, %bb.d ], [ %.val15.i, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.m
  store i8 %.sroa.0.0.i.i.i, ptr %i.r, align 1, !noalias !7022
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.val15.i.1 = load i8, ptr %i.t, align 1, !noalias !7020, !noundef !7 ; 2 uses
  %i.u = load i8, ptr %i.e, align 1, !noalias !7021, !noundef !7
  %i.v = icmp eq i8 %.val15.i.1, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = load i8, ptr %i.g, align 1, !noalias !7021, !noundef !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.w, %bb.f ], [ %.val15.i.1, %bb.e ]
  %i.x = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.m
  %i.y = getelementptr i8, ptr %i.x, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.y, align 1, !noalias !7022
  %i.z = add i64 %i.m, 2                          ; 3 uses
  %i.aa = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.z, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load i8, ptr %i.ab, align 1, !noalias !7020, !noundef !7 ; 2 uses
  %i.ac = load i8, ptr %i.e, align 1, !noalias !7021, !noundef !7
  %i.ad = icmp eq i8 %.val15.i.epil, %i.ac
  br i1 %i.ad, label %bb.h, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.ae = load i8, ptr %i.g, align 1, !noalias !7021, !noundef !7
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.ae, %bb.h ], [ %.val15.i.epil, %.epil.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.af, align 1, !noalias !7022
  %i.ag = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit: ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.z, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.unr-lcssa ], [ %i.ag, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCsexYYUdYSQU6_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsk_NtB2l_3vecINtB3x_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsPYQCUnoTxQ_10collection.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7020
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterjENCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB1w_16SegmentsSearcher6search0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3d_8for_each4callNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestNCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5d_3VecB4g_E14extend_trustedBN_E0E0EB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [472 x i8], align 8               ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !align !6, !noundef !7
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.g = icmp eq ptr %i.b, %i.d
  br i1 %i.g, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestuNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB39_16SegmentsSearcher6search0s0_0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5q_3VecB2d_E14extend_trustedINtB1I_3MapBF_B32_EE0E0E0EB3d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.b to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 3
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.u, %bb.e ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.v, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.l, align 8, !noalias !7033, !noundef !7 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7034
  %i.m = load ptr, ptr %i.f, align 8, !noalias !7035, !nonnull !7, !noundef !7 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load i64, ptr %i.n, align 8, !noalias !7035, !noundef !7 ; 2 uses
  %i.p = icmp ult i64 %.val15.i, %i.o
  br i1 %i.p, label %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB6_16SegmentsSearcher6search0s0_0Ba_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.val15.i, i64 noundef %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #43
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !7033

.noexc.i:                                         ; preds = %bb.d
  unreachable

_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB6_16SegmentsSearcher6search0s0_0Ba_.exit.i.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !noalias !7035, !nonnull !7, !noundef !7
  %i.s = getelementptr inbounds nuw [472 x i8], ptr %i.r, i64 %.val15.i
  invoke fastcc void @_RNvXs2_NtCs5QaNqjAn6vc_5shard6searchNtB5_17CoreSearchRequestNtNtCskKLDkoKarTP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(472) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.s) #41
          to label %bb.e unwind label %.loopexit.i, !noalias !7033

bb.e:                                             ; preds = %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB6_16SegmentsSearcher6search0s0_0Ba_.exit.i.i
  %i.t = getelementptr inbounds nuw [472 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(472) %i.a, i64 472, i1 false), !noalias !7036
  %i.u = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7034
  %i.v = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.k
  br i1 %i.w, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestuNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB39_16SegmentsSearcher6search0s0_0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5q_3VecB2d_E14extend_trustedINtB1I_3MapBF_B32_EE0E0E0EB3d_.exit, label %bb.c

.loopexit.i:                                      ; preds = %_RNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB6_16SegmentsSearcher6search0s0_0Ba_.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

.loopexit.split-lp.i:                             ; preds = %bb.d
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.f:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !7033
  resume { ptr, i32 } %lpad.phi.i

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterjENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRjNtNtCs5QaNqjAn6vc_5shard6search17CoreSearchRequestuNCNCNvMNtNtCsPYQCUnoTxQ_10collection18collection_manager17segments_searcherNtB39_16SegmentsSearcher6search0s0_0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB5q_3VecB2d_E14extend_trustedINtB1I_3MapBF_B32_EE0E0E0EB3d_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.u, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !7033
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4ItermENCINvNvNtNtNtBa_6traits8iterator8Iterator10max_by_key3keyRmjNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2x_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0EB1w_4foldINtNtBc_3cmp11KeyAndValuejB2k_ENvYB5t_NtB5w_3Ord3maxECsPYQCUnoTxQ_10collection(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4ItermENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtBb_3cmp11KeyAndValuejRmENCINvNtNtBY_8adapters3map8map_foldB22_B1C_B1C_NCINvNvBS_10max_by_key3keyB22_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB3u_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYB1C_NtB1F_3Ord3maxE0ECsPYQCUnoTxQ_10collection.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !align !6, !noundef !7 ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h
  %i.j = lshr exact i64 %i.i, 2
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !7044, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRmINtNtBa_3cmp11KeyAndValuejBU_EBW_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBU_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2C_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYBW_NtBZ_3Ord3maxE0CsPYQCUnoTxQ_10collection.exit.i, %bb.b
  %.sroa.05.0.i = phi i64 [ 0, %bb.b ], [ %i.x, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRmINtNtBa_3cmp11KeyAndValuejBU_EBW_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBU_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2C_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYBW_NtBZ_3Ord3maxE0CsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %2, %bb.b ], [ %..i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRmINtNtBa_3cmp11KeyAndValuejBU_EBW_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBU_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2C_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYBW_NtBZ_3Ord3maxE0CsPYQCUnoTxQ_10collection.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi ptr [ %1, %bb.b ], [ %.2.i.i.i.i, %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRmINtNtBa_3cmp11KeyAndValuejBU_EBW_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBU_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2C_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYBW_NtBZ_3Ord3maxE0CsPYQCUnoTxQ_10collection.exit.i ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.05.0.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7045)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7046)
  %i.o = load i32, ptr %i.n, align 4, !alias.scope !7047, !noalias !7048, !noundef !7
  %i.p = zext i32 %i.o to i64                     ; 3 uses
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRmINtNtBa_3cmp11KeyAndValuejBU_EBW_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBU_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2C_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYBW_NtBZ_3Ord3maxE0CsPYQCUnoTxQ_10collection.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #43, !noalias !7044
  unreachable

_RNCINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3map8map_foldRmINtNtBa_3cmp11KeyAndValuejBU_EBW_NCINvNvNtNtNtB8_6traits8iterator8Iterator10max_by_key3keyBU_jNCNCINvMs_NtNtNtCs607s0NAIaWN_7segment5index10hnsw_index20graph_layers_builderNtB2C_18GraphLayersBuilder21subgraph_connectivityNtNtNtCsdS7EUc5kOLy_4rand4rngs6thread9ThreadRngEs0_00E0NvYBW_NtBZ_3Ord3maxE0CsPYQCUnoTxQ_10collection.exit.i: ; preds = %bb.c
  %i.r = load ptr, ptr %i.m, align 8, !noalias !7044, !nonnull !7, !noundef !7
end_hunk_1
