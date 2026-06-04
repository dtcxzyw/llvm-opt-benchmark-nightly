inline.NumInlined: 4294
inline.NumDeleted: 1503
begin_hunk_0_@_RINvYNtNtCs7p2uQeJxui2_9deltalake6schema5FieldNtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtNtCs6Po7BT7Nknu_5alloc3vec3VecB3_EEB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  store i64 %.sroa.7.15.i, ptr %i.g, align 8, !noalias !3171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3171
  %.val15.i = load ptr, ptr %i.j, align 8, !noalias !3171, !nonnull !12, !align !13, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3182)
  call void @llvm.experimental.noalias.scope.decl(metadata !3185)
  call void @llvm.experimental.noalias.scope.decl(metadata !3188)
  call void @llvm.experimental.noalias.scope.decl(metadata !3190)
  %i.z = getelementptr inbounds nuw i8, ptr %.val15.i, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !3193, !noalias !3194, !nonnull !12, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %.val15.i, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !3193, !noalias !3194, !nonnull !12, !noundef !12 ; 4 uses
  %i.ad = icmp eq ptr %i.ac, %i.aa
  br i1 %i.ad, label %bb.l, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i: ; preds = %.sink.split.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %i.ae, ptr %i.ab, align 8, !alias.scope !3193, !noalias !3194
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.ac, align 8, !noalias !3196 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.6.0..sroa_idx2.i.i.i, i64 88, i1 false), !noalias !3198
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.66.i.i.i)
  store i64 %.sroa.0.0.copyload1.i.i.i, ptr %i.c, align 8, !noalias !3197
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3199
  invoke void @_RNvMNtCsgbCypRs12E4_4pyo312pyclass_initINtB2_18PyClassInitializerNtNtCs7p2uQeJxui2_9deltalake6schema5FieldE19create_class_objectB15_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(96) %i.c)
          to label %.noexc16.i unwind label %bb.c, !noalias !3175

.noexc16.i:                                       ; preds = %bb.h
  %i.af = load i64, ptr %i.b, align 8, !range !11, !noalias !3199, !noundef !12
  %i.ag = trunc nuw i64 %i.af to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.45.8.copyload.i.i.i = load ptr, ptr %i.ah, align 8, !noalias !3206
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.noexc16.i
  %.sroa.66.8..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.66.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.66.8..sroa_idx.i.i.i, i64 48, i1 false), !noalias !3206
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.noexc16.i
  %.sink.i.i.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %.noexc16.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3197
  store i64 %.sink.i.i.i.i.i, ptr %i.e, align 8, !alias.scope !3207, !noalias !3208
  %.sroa.45.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.45.8.copyload.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i, align 8, !alias.scope !3207, !noalias !3208
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.66.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.66.i.i.i, i64 48, i1 false), !noalias !3208
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.66.i.i.i)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1t_5types3any5PyAnyENtNtB1t_3err5PyErrEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.e)
          to label %bb.k unwind label %bb.c, !noalias !3175

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3171
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @32, ptr noundef nonnull inttoptr (i64 219 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #40
          to label %bb.g unwind label %bb.c, !noalias !3175

bb.l:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextB10_.exit.i.i.i, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3171
  %i.ai = icmp eq i64 %i.o, %.sroa.7.15.i
  br i1 %i.ai, label %bb.p, label %bb.m, !prof !28

bb.m:                                             ; preds = %bb.l
  invoke void @_RINvNtCsbvkFyIu7lgC_4core9panicking13assert_failediiECsGk95n1huYz_5numpy(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g, ptr noundef nonnull @33, ptr nonnull inttoptr (i64 221 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #40
          to label %bb.g unwind label %bb.c, !noalias !3175

bb.n:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %i.s, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB22_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1j_3VecB22_EE0EEB26_.exit unwind label %bb.r

bb.o:                                             ; preds = %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeQQINtNtB7_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB24_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1l_3VecB24_EE0EENtNtNtB9_6traits8iterator8Iterator8try_foldiNCINvNtNtB2Y_5types4list17try_new_from_iterBZ_E0INtNtBb_6result6ResultiNtNtB2Y_3err5PyErrEEB28_.exit.i
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.46.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3171
  call void @_Py_DecRef(ptr noundef nonnull %i.q) #43, !noalias !3175
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.x, ptr %i.ak, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.al, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge = phi i64 [ 0, %bb.p ], [ 1, %bb.o ]
  store i64 %storemerge, ptr %0, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB10_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.r:                                             ; preds = %.body
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB22_NtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1j_3VecB22_EE0EEB26_.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef align 8 ptr @_RINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBR_NtNtBV_6string6StringEECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10 = load i64, ptr %i.b, align 8, !noundef !12 ; 3 uses
  %.idx = mul nuw nsw i64 %.val10, 24
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 %.idx
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3209)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !3209, !noalias !3212, !nonnull !12, !align !13, !noundef !12 ; 3 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @108, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3214
  %cond = icmp eq i64 %.val10, 0
  br i1 %cond, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_seqCs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.split.preheader.i.i

.lr.ph.split.preheader.i.i:                       ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 8
  %.val8.peel.i.i = load ptr, ptr %i.d, align 8, !noalias !3215, !nonnull !12, !noundef !12
  %i.e = getelementptr i8, ptr %.val, i64 16
  %.val9.peel.i.i = load i64, ptr %i.e, align 8, !noalias !3215
  %i.f = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.peel.i.i, i64 noundef %.val9.peel.i.i), !noalias !3222 ; 0 uses
  %i.g = icmp eq i64 %.val10, 1
  br i1 %i.g, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_seqCs7p2uQeJxui2_9deltalake.exit, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.preheader

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.preheader: ; preds = %.lr.ph.split.preheader.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.preheader, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i
  %i.i = phi ptr [ %i.j, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.h, %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i.preheader ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val8.i.i = load ptr, ptr %i.k, align 8, !noalias !3215 ; 2 uses
  %i.l = getelementptr i8, ptr %i.i, i64 16
  %.val9.i.i = load i64, ptr %i.l, align 8, !noalias !3215
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @110, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !3227
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i.i) ]
  %i.m = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %0, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val8.i.i, i64 noundef %.val9.i.i), !noalias !3227 ; 0 uses
  %i.n = icmp eq ptr %i.j, %i.c
  br i1 %i.n, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_seqCs7p2uQeJxui2_9deltalake.exit, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, !llvm.loop !3229

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_seqCs7p2uQeJxui2_9deltalake.exit: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator12try_for_each4callRNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtBe_6result6ResultuNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorENCINvYQINtNtB2o_3ser10SerializerQINtNtB1p_3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIB3z_B1l_EE0E0Cs7p2uQeJxui2_9deltalake.exit.i.i, %.lr.ph.split.preheader.i.i, %bb.a
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @112, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !12
  ret ptr null
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEs1_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @113, ptr noundef nonnull %i.a), !noalias !3230
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret ptr %i.c
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNCINvNtCs8ulvy0Wg6Ot_12delta_kernel6schema19deserialize_decimalINtNtNtNtCs6sYutav3ODB_5serde7private2de7content22ContentRefDeserializerNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorEEs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @114, ptr noundef nonnull %i.a), !noalias !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull align 8 ptr @_RINvXs6_NtCseqDwI8vvjGQ_10serde_json5errorNtB6_5ErrorNtNtCs1gOyXocuPRE_10serde_core2de5Error6customNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  ret ptr %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next0B3_(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(64) %0, ptr captures(address, read_provenance) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 2 uses
  %i.j = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !12
  call void @_RNvMs5_NtCsfYVtenZkBsn_12arrow_schema6schemaNtB5_6Schema15field_with_name(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n)
  %i.o = load i64, ptr %i.h, align 8, !range !3236, !noundef !12
  %.not = icmp eq i64 %i.o, -9223372036854775788
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3237
  store ptr %i.j, ptr %i.b, align 8, !noalias !3237
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs7p2uQeJxui2_9deltalake, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !3237
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @115, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c, !noalias !3242

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.p, %bb.c ], [ %i.s, %bb.e ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #39
          to label %common.resume unwind label %bb.g, !noalias !3243

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3237
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3237
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3237
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3244
  %i.q = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 24) #43, !noalias !3244 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %_RNCNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next00B5_.exit, !prof !20

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #40
          to label %.noexc.i unwind label %bb.e, !noalias !3242

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBP_5PyErr3newNtNtBR_10exceptions12PyValueErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #39
          to label %.body.i unwind label %bb.f, !noalias !3242

bb.f:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !3242
  unreachable

bb.g:                                             ; preds = %.body.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !3243
  unreachable

common.resume.sink.split:                         ; preds = %bb.k, %bb.q
  %.sink = phi ptr [ %.sroa.030.0.copyload, %bb.q ], [ %.sroa.036.0.copyload, %bb.k ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ai, %bb.q ], [ %i.ad, %bb.k ]
  call void @_Py_DecRef(ptr noundef nonnull %.sink) #43
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RNCNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next00B5_.exit: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3237
  %.sroa.227.sroa.4.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.227.sroa.4.0..sroa.227.0..sroa_idx.sroa_idx, i8 0, i64 16, i1 false)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d), !noalias !3243
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.227.0..sroa_idx, align 8
  %.sroa.227.sroa.2.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.q, ptr %.sroa.227.sroa.2.0..sroa.227.0..sroa_idx.sroa_idx, align 8
  %.sroa.227.sroa.3.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @116, ptr %.sroa.227.sroa.3.0..sroa.227.0..sroa_idx.sroa_idx, align 8
  %.sroa.227.sroa.5.0..sroa.227.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %.sroa.227.sroa.5.0..sroa.227.0..sroa_idx.sroa_idx, align 8
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !12, !align !13, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  call fastcc void @_RNvXs2_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y) #44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvXCs3CpK1kANj6B_13arrow_pyarrowNtNtCsfYVtenZkBsn_12arrow_schema8datatype8DataTypeNtB2_11IntoPyArrow12into_pyarrowCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  %i.z = load i64, ptr %i.g, align 8, !range !11, !noundef !12
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.030.0.copyload = load ptr, ptr %i.ab, align 8 ; 4 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.233.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.531.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.030.0.copyload, ptr %i.ac, align 8
  store i64 1, ptr %0, align 8
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTRBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.8.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @120, i64 noundef 6, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2)
          to label %bb.l unwind label %bb.q

bb.k:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.l:                                             ; preds = %bb.j
  %i.ae = load i64, ptr %i.e, align 8, !range !11, !noundef !12
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.036.0.copyload = load ptr, ptr %i.ag, align 8 ; 4 uses
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.239.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.537.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.036.0.copyload, ptr %i.ah, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.030.0.copyload) #43
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store ptr %.sroa.036.0.copyload, ptr %i.f, align 8
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) @121, i64 noundef 4, ptr noundef nonnull %.sroa.030.0.copyload)
          to label %bb.o unwind label %bb.k

bb.o:                                             ; preds = %bb.n
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.036.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.m, %_RNCNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next00B5_.exit, %bb.o
  ret void

bb.q:                                             ; preds = %bb.j
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvCs7p2uQeJxui2_9deltalake45datafusion_task_context_provider_from_session0B3_(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs_NtNtCsbvkFyIu7lgC_4core3str5errorNtB4_9Utf8ErrorNtNtB8_3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @122, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3247
  %i.c = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 24) #43, !noalias !3247 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
end_hunk_0
begin_hunk_1_@_RNvCs7p2uQeJxui2_9deltalake25___pyfunction_init_tracing:bb.a
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.i, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.y, %bb.i ]
  %.val34.i.i = load ptr, ptr %i.e, align 8, !noalias !3502
  %.val35.i.i = load ptr, ptr %i.u, align 8, !noalias !3502, !nonnull !12, !align !13, !noundef !12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorEL_EECs7p2uQeJxui2_9deltalake(ptr %.val34.i.i, ptr nonnull %.val35.i.i) #39
          to label %common.resume.i.i unwind label %bb.p, !noalias !3506

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3502
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3502
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3502
  call void @_RNvCs8mYq7K4qqSA_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !3507
  %i.w = call noundef ptr @_rjem_malloc(i64 noundef range(i64 16, 305) 24) #43, !noalias !3507 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %bb.k, !prof !20

bb.h:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #40
          to label %.noexc.i.i unwind label %bb.i, !noalias !3506

.noexc.i.i:                                       ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCINvMs1_NtCsgbCypRs12E4_4pyo33errNtBP_5PyErr3newNtNtBR_10exceptions14PyRuntimeErrorNtNtCs6Po7BT7Nknu_5alloc6string6StringE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #39
          to label %.body.i.i unwind label %bb.j, !noalias !3506

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !3506
  unreachable

bb.k:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !3506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3502
  %.val32.i.i = load ptr, ptr %i.e, align 8, !noalias !3502 ; 5 uses
  %.val33.i.i = load ptr, ptr %i.u, align 8, !noalias !3502, !nonnull !12, !align !13, !noundef !12 ; 4 uses
  %i.aa = load ptr, ptr %.val33.i.i, align 8, !invariant.load !12, !noalias !3506 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i) ]
  invoke void %i.aa(ptr noundef nonnull %.val32.i.i)
          to label %bb.m unwind label %bb.o, !noalias !3506

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !237, !invariant.load !12, !noalias !3506 ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val33.i.i, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !238, !invariant.load !12, !noalias !3506 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val32.i.i) ]
  %i.ag = icmp samesign ult i64 %i.af, 17
  %i.ah = icmp samesign ule i64 %i.af, %i.ac
  %or.cond.i.i.i.i.i.i.i = and i1 %i.ag, %i.ah
  %i.ai = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 range(i64 1, 536870913) %i.af, i1 true)
  %i.aj = trunc nuw nsw i64 %i.ai to i32
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i, i32 0, i32 %i.aj
  call void @_rjem_sdallocx(ptr noundef nonnull %.val32.i.i, i64 noundef range(i64 1, 0) %i.ac, i32 noundef %.sroa.0.0.i.i.i.i.i.i.i) #43, !noalias !3506
  br label %bb.q

common.resume.i.i:                                ; preds = %bb.o, %.body.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.o:                                             ; preds = %bb.l
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorEL_ENtNtNtBM_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr nonnull %.val32.i.i, ptr nonnull readonly %.val33.i.i) #39, !noalias !3506
  br label %common.resume.i.i

bb.p:                                             ; preds = %.body.i.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !3506
  unreachable

bb.q:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3500
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3500
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.8..sroa_idx, i8 0, i64 16, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.am, align 8, !alias.scope !3510
  %.sroa.417.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.417.8..sroa_idx, align 8, !alias.scope !3510
  %.sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.w, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !3510
  %.sroa.618.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @0, ptr %.sroa.618.8..sroa_idx, align 8, !alias.scope !3510
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 3, ptr %.sroa.8.8..sroa_idx, align 8, !alias.scope !3510
  br label %_RNvMs5_NtNtCsgbCypRs12E4_4pyo35impl_4wrapINtB5_19EmptyTupleConverterINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB9_3err5PyErrEE12map_into_ptr.exit

bb.r:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !3514)
  call void @llvm.experimental.noalias.scope.decl(metadata !3515)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_Py_IncRef(ptr noundef nonnull @_Py_NoneStruct) #43, !noalias !3510
  store ptr @_Py_NoneStruct, ptr %i.an, align 8, !alias.scope !3514, !noalias !3515
  br label %_RNvMs5_NtNtCsgbCypRs12E4_4pyo35impl_4wrapINtB5_19EmptyTupleConverterINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB9_3err5PyErrEE12map_into_ptr.exit

_RNvMs5_NtNtCsgbCypRs12E4_4pyo35impl_4wrapINtB5_19EmptyTupleConverterINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtB9_3err5PyErrEE12map_into_ptr.exit: ; preds = %bb.r, %bb.q, %bb.b, %bb.d
  %.sink = phi i64 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.r ], [ 1, %bb.q ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs7p2uQeJxui2_9deltalake25convert_partition_filters(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !12 ; 2 uses
  %i.f = icmp ult i64 %i.e, 115292150460684698
  tail call void @llvm.assume(i1 %i.f)
  %i.g = getelementptr inbounds nuw [80 x i8], ptr %i.c, i64 %i.e
  %i.h = load i64, ptr %1, align 8, !range !237, !noundef !12
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.h, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1V_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvB2K_25convert_partition_filters0ENtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB4f_6errors15DeltaTableErrorENCINvXso_B5t_IB5r_INtB1b_3VecB47_EB6d_EINtNtNtB4_6traits7collect12FromIteratorIB5r_B47_B6d_EE9from_iterBQ_E0B72_EB2K_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 6 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 3 uses
  %i.h = alloca [64 x i8], align 8                ; 9 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [8 x i8], align 8                 ; 6 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 11 uses
  %i.n = alloca [48 x i8], align 8                ; 5 uses
  %i.o = alloca [48 x i8], align 8                ; 11 uses
  %i.p = alloca [96 x i8], align 16               ; 12 uses
  %i.q = alloca [8 x i8], align 8                 ; 6 uses
  %i.r = alloca [64 x i8], align 8                ; 8 uses
  %i.s = alloca [64 x i8], align 8                ; 4 uses
  %i.t = alloca [64 x i8], align 8                ; 9 uses
  %i.u = alloca [64 x i8], align 8                ; 7 uses
  %i.v = alloca [8 x i8], align 8                 ; 6 uses
  %i.w = alloca [64 x i8], align 8                ; 7 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [64 x i8], align 8                ; 11 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 11 uses
  %i.ab = alloca [96 x i8], align 16              ; 12 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [64 x i8], align 8               ; 7 uses
  %i.ae = alloca [64 x i8], align 8               ; 6 uses
  %i.af = alloca [64 x i8], align 8               ; 7 uses
  %i.ag = alloca [64 x i8], align 8               ; 6 uses
  %i.ah = alloca [48 x i8], align 8               ; 5 uses
  %i.ai = alloca [48 x i8], align 8               ; 11 uses
  %i.aj = alloca [96 x i8], align 16              ; 12 uses
  %i.ak = alloca [48 x i8], align 8               ; 14 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [64 x i8], align 8               ; 7 uses
  %i.an = alloca [64 x i8], align 8               ; 6 uses
  %i.ao = alloca [64 x i8], align 8               ; 7 uses
  %i.ap = alloca [8 x i8], align 8                ; 5 uses
  %i.aq = alloca [64 x i8], align 8               ; 6 uses
  %i.ar = alloca [64 x i8], align 8               ; 7 uses
  %i.as = alloca [8 x i8], align 8                ; 5 uses
  %i.at = alloca [64 x i8], align 8               ; 8 uses
  %i.au = alloca [24 x i8], align 8               ; 14 uses
  %i.av = alloca [48 x i8], align 8               ; 5 uses
  %i.aw = alloca [48 x i8], align 8               ; 11 uses
  %i.ax = alloca [48 x i8], align 8               ; 6 uses
  %i.ay = alloca [24 x i8], align 8               ; 21 uses
  %i.az = alloca [64 x i8], align 8               ; 7 uses
  %i.ba = alloca [8 x i8], align 8                ; 5 uses
  %i.bb = alloca [64 x i8], align 8               ; 8 uses
  %i.bc = alloca [8 x i8], align 8                ; 7 uses
  %i.bd = alloca [64 x i8], align 8               ; 7 uses
  %i.be = alloca [8 x i8], align 8                ; 10 uses
  %i.bf = alloca [64 x i8], align 8               ; 7 uses
  %i.bg = alloca [64 x i8], align 8               ; 7 uses
  %i.bh = alloca [8 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bg, ptr noalias noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 15)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn370 = phi { ptr, i32 } [ %i.bi, %bb.c ], [ %.pn368, %bb.g ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %4)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake.exit unwind label %bb.ay

bb.c:                                             ; preds = %bb.a
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.bj = load i64, ptr %i.bg, align 8, !range !11, !noundef !12
  %i.bk = trunc nuw i64 %i.bj to i1
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %.sroa.0180.0.copyload = load ptr, ptr %i.bl, align 8 ; 5 uses
  br i1 %i.bk, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.5181.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.sroa.2183.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2183.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5181.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0180.0.copyload, ptr %i.bm, align 8
  store i64 1, ptr %0, align 8
  br label %bb.hz

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store ptr %.sroa.0180.0.copyload, ptr %i.bh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.bh, ptr noalias noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef 5)
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %bb.l, %bb.h
  %.pn368 = phi { ptr, i32 } [ %i.bn, %bb.h ], [ %.pn366, %bb.l ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0180.0.copyload) #43
  br label %bb.b

bb.h:                                             ; preds = %bb.f
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.i:                                             ; preds = %bb.f
  %i.bo = load i64, ptr %i.bf, align 8, !range !11, !noundef !12
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %.sroa.0186.0.copyload = load ptr, ptr %i.bq, align 8 ; 10 uses
  br i1 %i.bp, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.5187.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.sroa.2189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2189.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5187.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0186.0.copyload, ptr %i.br, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ic

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.bd, ptr noalias noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 7)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %bb.q, %bb.m
  %.pn366 = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn364, %bb.q ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0186.0.copyload) #43
  br label %bb.g

bb.m:                                             ; preds = %bb.k
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.n:                                             ; preds = %bb.k
  %i.bt = load i64, ptr %i.bd, align 8, !range !11, !noundef !12
  %i.bu = trunc nuw i64 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.0192.0.copyload = load ptr, ptr %i.bv, align 8 ; 2 uses
  br i1 %i.bu, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.sroa.5193.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %.sroa.2195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2195.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5193.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0192.0.copyload, ptr %i.bw, align 8
  store i64 1, ptr %0, align 8
  br label %bb.ib

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  store ptr %.sroa.0192.0.copyload, ptr %i.be, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  invoke void @_RINvMNtNtCsgbCypRs12E4_4pyo35types6moduleNtB3_8PyModule6importReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.az, ptr noalias noundef nonnull readonly captures(address, read_provenance) @162, i64 noundef 8)
          to label %bb.s unwind label %bb.r

bb.q:                                             ; preds = %bb.y, %bb.v, %bb.r
  %.pn364 = phi { ptr, i32 } [ %i.bx, %bb.r ], [ %.pn360.pn.pn, %bb.y ], [ %i.cc, %bb.v ]
  %.val421 = load ptr, ptr %i.be, align 8, !nonnull !12, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.val421) #43
  br label %bb.l

bb.r:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %bb.p
  %i.by = load i64, ptr %i.az, align 8, !range !11, !noundef !12
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.sroa.0198.0.copyload = load ptr, ptr %i.ca, align 8 ; 5 uses
  br i1 %i.bz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.5199.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %.sroa.2201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2201.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5199.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0198.0.copyload, ptr %i.cb, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  br label %bb.ia

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  store ptr %.sroa.0198.0.copyload, ptr %i.ba, align 8
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods7getattrReECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 4)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0198.0.copyload) #43
  br label %bb.q

bb.w:                                             ; preds = %bb.u
  %i.cd = load i64, ptr %i.bb, align 8, !range !11, !noundef !12
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.0204.0.copyload = load ptr, ptr %i.cf, align 8 ; 5 uses
  br i1 %i.ce, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %.sroa.5205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.2207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2207.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5205.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0204.0.copyload, ptr %i.cg, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0198.0.copyload) #43
  br label %bb.ia

bb.y:                                             ; preds = %bb.ab, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit, %.thread, %bb.z
  %.pn360.pn.pn = phi { ptr, i32 } [ %.pn360.pn509, %.thread ], [ %lpad.thr_comm.split-lp, %bb.ab ], [ %i.ch, %bb.z ], [ %.pn353, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit ]
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0204.0.copyload) #43
  br label %bb.q

bb.z:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit470, %bb.bx
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.aa:                                            ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  store ptr %.sroa.0204.0.copyload, ptr %i.bc, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0198.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store i64 0, ptr %i.ay, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 12 uses
  store i64 0, ptr %i.cj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  invoke void @_RNvMNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iteratorsNtB2_15LogicalFileView16partition_values(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4)
          to label %bb.ac unwind label %.thread510

.thread510:                                       ; preds = %bb.az, %bb.dv, %bb.hr, %bb.ag, %.thread513, %bb.aa
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ab:                                            ; preds = %bb.hv
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.ac:                                            ; preds = %bb.aa
  %i.ck = load i64, ptr %i.ax, align 8, !range !62, !noundef !12
  %.not = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef nonnull align 8 dereferenceable(48) %i.ax, i64 48, i1 false)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.co = load i64, ptr %i.cn, align 8, !noundef !12
  %i.cp = getelementptr inbounds nuw [96 x i8], ptr %i.cm, i64 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !12
  %i.cu = getelementptr inbounds nuw [96 x i8], ptr %i.cr, i64 %i.ct
  invoke void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEIBX_NtNtNtB1q_11expressions7scalars6ScalarEEINtB5_7ZipImplBW_B2d_E3newCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.av, ptr noundef nonnull %i.cm, ptr noundef nonnull %i.cp, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cu)
          to label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit unwind label %.loopexit.split-lp599

.body434:                                         ; preds = %.loopexit598, %.loopexit.split-lp599, %bb.br, %bb.ao, %.thread523, %.thread519
  %.pn360 = phi { ptr, i32 } [ %i.du, %bb.ao ], [ %.pn358522, %.thread519 ], [ %i.fb, %bb.br ], [ %eh.lpad-body, %.thread523 ], [ %lpad.loopexit600, %.loopexit598 ], [ %lpad.loopexit.split-lp601, %.loopexit.split-lp599 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aw) #39
          to label %.thread unwind label %bb.ay

.loopexit598:                                     ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.loopexit600 = landingpad { ptr, i32 }
          cleanup
  br label %.body434

.loopexit.split-lp599:                            ; preds = %bb.ai, %bb.bt, %bb.ad
  %lpad.loopexit.split-lp601 = landingpad { ptr, i32 }
          cleanup
  br label %.body434

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.ad
  %.sroa.0479.0.copyload = load ptr, ptr %i.av, align 8 ; 2 uses
  %.sroa.5481.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.5481.0.copyload = load ptr, ptr %.sroa.5481.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %.sroa.6482.0.copyload = load i64, ptr %.sroa.6482.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.cv = icmp ult i64 %.sroa.6482.0.copyload, %.sroa.8.0.copyload
  br i1 %i.cv, label %.lr.ph, label %.thread513

.lr.ph:                                           ; preds = %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0479.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5481.0.copyload) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.cz = load ptr, ptr %1, align 8, !nonnull !12
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit
  %.sroa.6482.0675 = phi i64 [ %.sroa.6482.0.copyload, %.lr.ph ], [ %i.de, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.de = add i64 %.sroa.6482.0675, 1             ; 2 uses
  %i.df = getelementptr inbounds nuw [96 x i8], ptr %.sroa.5481.0.copyload, i64 %.sroa.6482.0675 ; 2 uses
  %i.dg = getelementptr inbounds nuw [96 x i8], ptr %.sroa.0479.0.copyload, i64 %.sroa.6482.0675 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !12, !noundef !12
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !noundef !12 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.dk, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ah unwind label %.loopexit598

.thread513:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_NtNtNtBN_11expressions7scalars6ScalarEECs7p2uQeJxui2_9deltalake.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.aw)
          to label %bb.af unwind label %.thread510

bb.af:                                            ; preds = %.thread513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ac, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.dl = invoke { i64, i64 } @_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @3)
          to label %bb.bz unwind label %.thread510 ; 2 uses

bb.ah:                                            ; preds = %bb.ae
  %i.dm = load i64, ptr %i.b, align 8, !range !11, !noundef !12
  %i.dn = trunc nuw i64 %i.dm to i1
  %i.do = load i64, ptr %i.cw, align 8, !range !62, !noundef !12 ; 3 uses
  br i1 %i.dn, label %bb.ai, label %bb.aj, !prof !20

bb.ai:                                            ; preds = %bb.ah
  %i.dp = load i64, ptr %i.cx, align 8
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.do, i64 %i.dp) #40
          to label %bb.by unwind label %.loopexit.split-lp599

bb.aj:                                            ; preds = %bb.ah
  %i.dq = load ptr, ptr %i.cx, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.dr = icmp ule i64 %i.dk, %i.do
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not355 = icmp eq i64 %i.dk, 0
  br i1 %.not355, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.al, %bb.aj
end_hunk_1
begin_hunk_2_@_RNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_next:bb.a
  br i1 %i.lr, label %.thread766, label %bb.gn

bb.gm:                                            ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0288.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre757 = load i64, ptr %i.m, align 8, !range !11
  %i.ls = trunc nuw i64 %.pre757 to i1
  br i1 %i.ls, label %.thread766, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit468

bb.gn:                                            ; preds = %bb.gl
  %i.lt = load ptr, ptr %i.kw, align 8, !nonnull !12, !noundef !12 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvXsj_NtNtCsgbCypRs12E4_4pyo35types5tupleTRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtB9_4call10PyCallArgs15call_positionalCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz, ptr noundef nonnull %.sroa.0186.0.copyload)
          to label %bb.go unwind label %bb.hj

bb.go:                                            ; preds = %bb.gn
  %i.lu = load i64, ptr %i.i, align 8, !range !11, !noundef !12
  %i.lv = trunc nuw i64 %i.lu to i1
  %.sroa.0288.0.copyload = load ptr, ptr %i.kx, align 8 ; 10 uses
  br i1 %i.lv, label %bb.gp, label %bb.gq

bb.gp:                                            ; preds = %bb.go
  %.sroa.5289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.2291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2291.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5289.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0288.0.copyload, ptr %i.lw, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_Py_DecRef(ptr noundef nonnull %i.lt) #43
  br label %bb.hf

bb.gq:                                            ; preds = %bb.go
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store ptr %.sroa.0288.0.copyload, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias noundef nonnull readonly captures(address, read_provenance) @168, i64 noundef 6, ptr noundef nonnull %i.lt)
          to label %bb.gs unwind label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.lx = landingpad { ptr, i32 }
          cleanup
  br label %.thread570

bb.gs:                                            ; preds = %bb.gq
  %i.ly = invoke noundef zeroext i1 @_RINvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringuNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE12contains_keyBO_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ak, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.kz)
          to label %bb.gt unwind label %bb.hg

.loopexit583:                                     ; preds = %bb.gw
  %lpad.loopexit585 = landingpad { ptr, i32 }
          cleanup
  br label %.thread570

.loopexit.split-lp584:                            ; preds = %bb.gy
  %lpad.loopexit.split-lp586 = landingpad { ptr, i32 }
          cleanup
  br label %.thread570

bb.gt:                                            ; preds = %bb.gs
  br i1 %i.ly, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  br label %bb.gw

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method0ReECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.f, ptr nonnull %.sroa.0288.0.copyload, ptr noalias noundef nonnull readonly captures(address, read_provenance) @163, i64 noundef 7)
          to label %bb.gx unwind label %bb.hg

bb.gw:                                            ; preds = %bb.hc, %bb.gu
  invoke fastcc void @_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1m_5types3any5PyAnyENtNtB1m_3err5PyErrEE8push_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ay, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.g)
          to label %bb.gm unwind label %.loopexit583

bb.gx:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %.sroa.0154.0.copyload = load i64, ptr %i.h, align 8
  %.sroa.5155.0.copyload = load ptr, ptr %.sroa.5155.0..sroa_idx, align 8 ; 6 uses
  %i.lz = trunc nuw i64 %.sroa.0154.0.copyload to i1
  br i1 %i.lz, label %bb.gy, label %bb.gz

bb.gy:                                            ; preds = %bb.gx
  %.sroa.2301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2301.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7156.0..sroa_idx, i64 48, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5155.0.copyload, ptr %i.ma, align 8
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.f)
          to label %bb.he unwind label %.loopexit.split-lp584

bb.gz:                                            ; preds = %bb.gx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5155.0.copyload) ]
  store ptr %.sroa.5155.0.copyload, ptr %i.e, align 8
  %.sroa.0164.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.5165.0.copyload = load ptr, ptr %.sroa.5165.0..sroa_idx, align 8 ; 3 uses
  %i.mb = trunc nuw i64 %.sroa.0164.0.copyload to i1
  br i1 %i.mb, label %bb.hd, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5165.0.copyload) ]
  invoke void @_RINvXs_NtNtCsgbCypRs12E4_4pyo35types3anyINtNtB9_8instance5BoundNtB5_5PyAnyENtB5_12PyAnyMethods12call_method1ReTBC_EECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) @167, i64 noundef 6, ptr noundef nonnull %.sroa.5165.0.copyload)
          to label %bb.hc unwind label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.mc = landingpad { ptr, i32 }
          cleanup
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5155.0.copyload) #43
  br label %.thread570

bb.hc:                                            ; preds = %bb.ha
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5155.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.gw

bb.hd:                                            ; preds = %bb.gz
  %.sroa.2303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.2303.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7166.0..sroa_idx, i64 48, i1 false)
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5165.0.copyload, ptr %i.md, align 8
  store i64 1, ptr %0, align 8
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.5155.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.he

bb.he:                                            ; preds = %bb.gy, %bb.hd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0288.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.gp, %bb.he
  %i.me = load i64, ptr %i.m, align 8, !range !11, !noundef !12
  %i.mf = trunc nuw i64 %i.me to i1
  br i1 %i.mf, label %bb.hh, label %bb.hi

bb.hg:                                            ; preds = %bb.gv, %bb.gs
  %lpad.thr_comm575 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.h) #39
          to label %.thread570 unwind label %bb.ay

bb.hh:                                            ; preds = %bb.hf
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.m)
          to label %bb.hi unwind label %.loopexit.split-lp

bb.hi:                                            ; preds = %bb.hh, %bb.hf, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(48) %i.o)
          to label %bb.hl unwind label %bb.ga

bb.hj:                                            ; preds = %bb.gn
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.thread570

.thread766:                                       ; preds = %bb.gl, %bb.gm
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgbCypRs12E4_4pyo33err5PyErrECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.kw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit468 unwind label %.loopexit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake.exit468: ; preds = %.thread766, %bb.gm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ge

bb.hk:                                            ; preds = %.thread570
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB17_5types3any5PyAnyENtNtB17_3err5PyErrEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(64) %i.m) #39
          to label %bb.fx unwind label %bb.ay

bb.hl:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.mh = load i64, ptr %i.p, align 16, !range !3526, !noundef !12
  switch i64 %i.mh, label %bb.hn [
    i64 -9223372036854775792, label %bb.hm
    i64 -9223372036854775794, label %bb.hm
  ]

bb.hm:                                            ; preds = %bb.hl, %bb.hl, %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.dv

bb.hn:                                            ; preds = %bb.hl
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.p)
          to label %bb.hm unwind label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit448: ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.bx

bb.ho:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0204.0.copyload) #43
  br label %bb.hp

bb.hp:                                            ; preds = %bb.ho, %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.val417 = load ptr, ptr %i.be, align 8, !nonnull !12, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.val417) #43
  br label %bb.ib

bb.hq:                                            ; preds = %bb.fz
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.p) #39
          to label %bb.ca unwind label %bb.ay

.invoke:                                          ; preds = %bb.fv, %bb.gb
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(96) %i.p)
          to label %bb.gc unwind label %bb.cb

bb.hr:                                            ; preds = %bb.gc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit470 unwind label %.thread510

bb.hs:                                            ; preds = %bb.gc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.mi = load ptr, ptr %i.ci, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.mj = load i64, ptr %i.ay, align 8, !range !237, !noundef !12
  %i.mk = getelementptr inbounds nuw [64 x i8], ptr %i.mi, i64 %i.lf
  store ptr %i.mi, ptr %i.c, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.mj, ptr %i.ml, align 8
  %i.mm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.mi, ptr %i.mm, align 8
  %i.mn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.mk, ptr %i.mn, align 8
  invoke fastcc void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1y_5types3any5PyAnyENtNtB1y_3err5PyErrEENtNtNtNtBW_4iter6traits8iterator8Iterator6reduceNCNvCs7p2uQeJxui2_9deltalake28filestats_to_expression_nexts_0EB3H_(ptr noalias noundef align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.ht unwind label %bb.cb

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit470: ; preds = %bb.hr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1E_5types3any5PyAnyENtNtB1E_3err5PyErrEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ay)
          to label %bb.hy unwind label %bb.z

bb.ht:                                            ; preds = %bb.hs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.mo = load i64, ptr %i.d, align 8, !range !212, !noundef !12
  switch i64 %i.mo, label %bb.hw [
    i64 2, label %bb.hu
    i64 0, label %bb.hx
  ]

bb.hu:                                            ; preds = %bb.ht
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hx, %bb.hw, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringuEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit472 unwind label %bb.ab

bb.hw:                                            ; preds = %bb.ht
  %i.mp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.mq, ptr noundef nonnull align 8 dereferenceable(56) %i.mp, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  br label %bb.hv

bb.hx:                                            ; preds = %bb.ht
  %i.mr = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !nonnull !12, !noundef !12
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ms, ptr %i.mt, align 8
  store i64 0, ptr %0, align 8
  br label %bb.hv

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit472: ; preds = %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.hy

bb.hy:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit472, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0204.0.copyload) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  %.val416 = load ptr, ptr %i.be, align 8, !nonnull !12, !noundef !12
  call void @_Py_DecRef(ptr noundef nonnull %.val416) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0186.0.copyload) #43
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0180.0.copyload) #43
  br label %bb.hz

bb.hz:                                            ; preds = %bb.e, %bb.ic, %bb.hy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %4)
  ret void

.thread:                                          ; preds = %.body434, %.thread510, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit
  %.pn360.pn509 = phi { ptr, i32 } [ %.pn353, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set7HashSetNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit ], [ %lpad.thr_comm, %.thread510 ], [ %.pn360, %.body434 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtB4_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB1E_5types3any5PyAnyENtNtB1E_3err5PyErrEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #39
          to label %bb.y unwind label %bb.ay

bb.ia:                                            ; preds = %bb.x, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  br label %bb.hp

bb.ib:                                            ; preds = %bb.hp, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0186.0.copyload) #43
  br label %bb.ic

bb.ic:                                            ; preds = %bb.ib, %bb.j
  call void @_Py_DecRef(ptr noundef nonnull %.sroa.0180.0.copyload) #43
  br label %bb.hz

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators15LogicalFileViewECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn370
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvCs7p2uQeJxui2_9deltalake29___pyfunction_create_deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 11 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [88 x i8], align 8                ; 7 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 6 uses
  %i.e = alloca [88 x i8], align 8                ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.534 = alloca [56 x i8], align 8          ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.531 = alloca [56 x i8], align 8          ; 7 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.528 = alloca [56 x i8], align 8          ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.525 = alloca [56 x i8], align 8          ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.516 = alloca [56 x i8], align 8          ; 7 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.512 = alloca [56 x i8], align 8          ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 9 uses
  %i.r = alloca [64 x i8], align 8                ; 7 uses
  %i.s = alloca [8 x i8], align 8                 ; 9 uses
  %i.t = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca [56 x i8], align 8            ; 7 uses
  %i.u = alloca [24 x i8], align 8                ; 9 uses
  %i.v = alloca [64 x i8], align 8                ; 3 uses
  %i.w = alloca [64 x i8], align 8                ; 6 uses
  %i.x = alloca [88 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, i8 0, i64 88, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @_RINvMs3_NtNtCsgbCypRs12E4_4pyo35impl_16extract_argumentNtB6_19FunctionDescription26extract_arguments_fastcallNtB6_9NoVarargsNtB6_13NoVarkeywordsECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @181, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noalias noundef nonnull align 8 %i.x, i64 noundef 11)
  %i.y = load i64, ptr %i.w, align 8, !range !11, !noundef !12
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %i.aa, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store i64 1, ptr %0, align 8
  br label %bb.au

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @170, i64 noundef 9)
  %i.ac = load i64, ptr %i.t, align 8, !range !11, !noundef !12
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(56) %i.ae, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.bv

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentINtNtB6_6pycell5PyRefNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaEKb0_EB1u_(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.g:                                             ; preds = %bb.e
  %i.ai = load i64, ptr %i.r, align 8, !range !11, !noundef !12
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.061.0.copyload = load ptr, ptr %i.ak, align 8 ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.264.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.562.0..sroa_idx, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.061.0.copyload, ptr %i.al, align 8
  store i64 1, ptr %0, align 8
  br label %bb.br

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store ptr %.sroa.061.0.copyload, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtB1a_6string6StringEKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.am, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @172, i64 noundef 12)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.bm, %bb.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.k:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.p, align 8, !range !11, !noundef !12
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(56) %i.aq, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.512, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtBL_6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.512, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  invoke void @_RINvNtNtCsgbCypRs12E4_4pyo35impl_16extract_argument16extract_argumentNtNtCs6Po7BT7Nknu_5alloc6string6StringKb0_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.as, ptr noalias noundef nonnull %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @173, i64 noundef 4)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake.exit.i, %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.o:                                             ; preds = %bb.m
  %i.au = load i64, ptr %i.n, align 8, !range !11, !noundef !12
  %i.av = trunc nuw i64 %i.au to i1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  br i1 %i.av, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516, ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ax, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.516, i64 56, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.516)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.516, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false)
end_hunk_2
begin_hunk_3_@_RNvXsb_NtCs8ulvy0Wg6Ot_12delta_kernel5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt:bb.a
  store ptr %i.ce, ptr %i.w, align 8
  %i.cf = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1839, i64 noundef 14, ptr noundef nonnull %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.au

bb.v:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.v, align 8
  %i.ch = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1840, i64 noundef 22, ptr noundef nonnull %i.v, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.au

bb.w:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ci, ptr %i.u, align 8
  %i.cj = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1842, i64 noundef 10, ptr noundef nonnull %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1841)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.au

bb.x:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ck, ptr %i.t, align 8
  %i.cl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1844, i64 noundef 13, ptr noundef nonnull %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1843)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.au

bb.y:                                             ; preds = %bb.a
  %i.cm = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1845, i64 noundef 15)
  br label %bb.au

bb.z:                                             ; preds = %bb.a
  %i.cn = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1846, i64 noundef 15)
  br label %bb.au

bb.aa:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.s, align 8
  %i.cp = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1847, i64 noundef 15, ptr noundef nonnull %i.s, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.au

bb.ab:                                            ; preds = %bb.a
  %i.cq = tail call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1848, i64 noundef 26)
  br label %bb.au

bb.ac:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cs, ptr %i.r, align 8
  %i.ct = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1850, i64 noundef 10, ptr noundef nonnull %i.cr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1800, ptr noundef nonnull %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1849)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.au

bb.ad:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %i.q, align 8
  %i.cv = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1851, i64 noundef 11, ptr noundef nonnull %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.au

bb.ae:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.p, align 8
  %i.cx = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1853, i64 noundef 9, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1852)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.au

bb.af:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cy, ptr %i.o, align 8
  %i.cz = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1855, i64 noundef 13, ptr noundef nonnull %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1854)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.au

bb.ag:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.da, ptr %i.n, align 8
  %i.db = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1856, i64 noundef 24, ptr noundef nonnull %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.au

bb.ah:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.m, align 8
  %i.dd = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1857, i64 noundef 20, ptr noundef nonnull %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.au

bb.ai:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %i.l, align 8
  %i.df = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1858, i64 noundef 14, ptr noundef nonnull %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.au

bb.aj:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.k, align 8
  %i.dh = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1859, i64 noundef 17, ptr noundef nonnull %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.au

bb.ak:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.j, align 8
  %i.dj = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1860, i64 noundef 27, ptr noundef nonnull %i.j, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.au

bb.al:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dk, ptr %i.i, align 8
  %i.dl = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1861, i64 noundef 14, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.au

bb.am:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dm, ptr %i.h, align 8
  %i.dn = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1862, i64 noundef 17, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.au

bb.an:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %i.g, align 8
  %i.dp = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1863, i64 noundef 11, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.au

bb.ao:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dq, ptr %i.f, align 8
  %i.dr = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1865, i64 noundef 18, ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1864)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.au

bb.ap:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.e, align 8
  %i.dt = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1867, i64 noundef 25, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1866)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.au

bb.aq:                                            ; preds = %bb.a
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.dv, ptr %i.d, align 8
  %i.dw = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1868, i64 noundef 32, ptr noundef nonnull %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1800, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.au

bb.ar:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %i.c, align 8
  %i.dy = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1869, i64 noundef 17, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.au

bb.as:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.dz = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1871, i64 noundef 31, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1870)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.au

bb.at:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ea, ptr %i.a, align 8
  %i.eb = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1785)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.av, %bb.c ], [ %i.ax, %bb.d ], [ %i.az, %bb.e ], [ %i.bb, %bb.f ], [ %i.be, %bb.g ], [ %i.bg, %bb.h ], [ %i.bi, %bb.i ], [ %i.bk, %bb.j ], [ %i.bm, %bb.k ], [ %i.bo, %bb.l ], [ %i.bq, %bb.m ], [ %i.bs, %bb.n ], [ %i.bu, %bb.o ], [ %i.bw, %bb.p ], [ %i.by, %bb.q ], [ %i.ca, %bb.r ], [ %i.cc, %bb.s ], [ %i.cd, %bb.t ], [ %i.cf, %bb.u ], [ %i.ch, %bb.v ], [ %i.cj, %bb.w ], [ %i.cl, %bb.x ], [ %i.cm, %bb.y ], [ %i.cn, %bb.z ], [ %i.cp, %bb.aa ], [ %i.cq, %bb.ab ], [ %i.ct, %bb.ac ], [ %i.cv, %bb.ad ], [ %i.cx, %bb.ae ], [ %i.cz, %bb.af ], [ %i.db, %bb.ag ], [ %i.dd, %bb.ah ], [ %i.df, %bb.ai ], [ %i.dh, %bb.aj ], [ %i.dj, %bb.ak ], [ %i.dl, %bb.al ], [ %i.dn, %bb.am ], [ %i.dp, %bb.an ], [ %i.dr, %bb.ao ], [ %i.dt, %bb.ap ], [ %i.dw, %bb.aq ], [ %i.dy, %bb.ar ], [ %i.dz, %bb.as ], [ %i.eb, %bb.at ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr captures(address, read_provenance) %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 6 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCs7p2uQeJxui2_9deltalake() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9373
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.0.val)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9373
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
          to label %bb.d unwind label %bb.c, !noalias !9379

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #39
          to label %bb.i unwind label %bb.f, !noalias !9379

bb.c:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9373
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.h unwind label %bb.e, !noalias !9379

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(72) %i.b) #39
          to label %bb.b unwind label %bb.f, !noalias !9379

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !9379
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !9380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !9380
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !9380
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !9381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.e

bb.i:                                             ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn.i.i, %bb.b ]
  call void @_rjem_sdallocx(ptr noundef nonnull %i.e, i64 noundef 144, i32 noundef 0) #43
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtCsbvkFyIu7lgC_4core3fmtbNtB5_5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvXsg_NtCsbvkFyIu7lgC_4core3fmtbNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsf_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_providerNtB5_15DeltaScanConfigNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.e, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field5_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1874, i64 noundef 15, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1875, i64 noundef 16, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1872, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1876, i64 noundef 21, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1802, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1877, i64 noundef 23, ptr noundef nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1802, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1878, i64 noundef 23, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1802, ptr noalias noundef nonnull readonly captures(address, read_provenance) @171, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1873)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4nextNtB5_15SnapshotWrapperNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i64, ptr %0, align 8, !range !11, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1882, i64 noundef 13, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1881)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1880, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1879)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsh_NtCs2y6mmZ7bjoM_12tracing_core5fieldReNtB5_5Value6recordCs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %3) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !12
  tail call void @_RNvXs5_NtCs2y6mmZ7bjoM_12tracing_core5fieldeNtB5_5Value6record(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noundef nonnull %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %3)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXsi_NtCs8ulvy0Wg6Ot_12delta_kernel7actionsNtB5_8MetadataNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef nonnull writable writeonly align 8 captures(none) dereferenceable(256) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [72 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !62, !noundef !12
  %.not = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m)
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.j, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !62, !noundef !12
  %.not1 = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not1, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.m, %bb.f
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.m ], [ %i.q, %bb.f ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k) #39
          to label %bb.aa unwind label %bb.z

bb.f:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o)
          to label %bb.o unwind label %bb.n

bb.i:                                             ; preds = %bb.d
  store i64 -9223372036854775808, ptr %i.i, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.o, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9382
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.r)
          to label %.noexc unwind label %bb.p
end_hunk_3
