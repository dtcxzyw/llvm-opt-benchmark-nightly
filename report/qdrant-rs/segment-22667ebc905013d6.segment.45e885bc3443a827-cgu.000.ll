Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qdrant-rs/original/segment-22667ebc905013d6.segment.45e885bc3443a827-cgu.000?download=true
inline.NumInlined: 13187
inline.NumDeleted: 6664
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 85
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtB2d_5array4iter8IntoIterB11_Kj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB3H_16MutableIdTracker13segment_files0EE9from_iterB3L_:bb.a

bb.t:                                             ; preds = %bb.u
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.v

bb.u:                                             ; preds = %bb.s
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.bk, i64 noundef 1, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i unwind label %bb.t

bb.v:                                             ; preds = %bb.t, %.body.i.i
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtB1G_5array4iter8IntoIterBG_Kj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB39_16MutableIdTracker13segment_files0EEB3d_.exit.i: ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i, %.loopexit.i.i, %bb.l
  %i.bw = phi i64 [ %.pre21.i.i, %.loopexit.i.i ], [ %i.at, %bb.l ], [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  %i.bx = phi i64 [ %.pre.i.i, %.loopexit.i.i ], [ %i.at, %bb.l ], [ %i.br, %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18056
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsG258MDvU3F_3std4path7PathBufEj2_NtB4_11PartialDrop12partial_dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.ap, i64 noundef %i.bx, i64 noundef %i.bw)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtB1U_5array4iter8IntoIterBR_Kj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB3n_16MutableIdTracker13segment_files0EE11spec_extendB3r_.exit unwind label %bb.w

bb.w:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtB1G_5array4iter8IntoIterBG_Kj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB39_16MutableIdTracker13segment_files0EEB3d_.exit.i
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %.body8

.body8:                                           ; preds = %.body.i.i, %bb.w
  %eh.lpad-body9 = phi { ptr, i32 } [ %i.by, %bb.w ], [ %.pn.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5array4iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufKj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB2r_16MutableIdTracker13segment_files0EEB2v_.exit unwind label %bb.x

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtB1U_5array4iter8IntoIterBR_Kj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB3n_16MutableIdTracker13segment_files0EE11spec_extendB3r_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters6filter6FilterINtNtNtB1G_5array4iter8IntoIterBG_Kj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB39_16MutableIdTracker13segment_files0EEB3d_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.h

bb.x:                                             ; preds = %bb.y, %bb.i, %.body8
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5array4iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufKj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB2r_16MutableIdTracker13segment_files0EEB2v_.exit: ; preds = %bb.y, %.body8
  %.pn16 = phi { ptr, i32 } [ %eh.lpad-body9, %.body8 ], [ %.pn.ph, %bb.y ]
  resume { ptr, i32 } %.pn16

bb.y:                                             ; preds = %bb.c, %bb.g, %bb.i
  %.pn.ph = phi { ptr, i32 } [ %i.y, %bb.c ], [ %i.aa, %bb.g ], [ %i.af, %bb.i ]
  %i.ca = load i64, ptr %1, align 8, !alias.scope !18072, !noundef !14
  %i.cb = load i64, ptr %i.o, align 8, !alias.scope !18072, !noundef !14
  invoke void @_RNvXs_NtNtNtCskKLDkoKarTP_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCsG258MDvU3F_3std4path7PathBufEj2_NtB4_11PartialDrop12partial_dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, i64 noundef %i.ca, i64 noundef %i.cb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtB4_5array4iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufKj2_ENCNvMNtNtCs607s0NAIaWN_7segment10id_tracker18mutable_id_trackerNtB2r_16MutableIdTracker13segment_files0EEB2v_.exit unwind label %bb.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB15_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBS_NtNtNtNtNtB3K_5index11field_index16field_index_base11field_index10FieldIndexEEIB25_INtNtNtB2d_5slice4iter4IterB4t_EINtNtB4_9into_iter8IntoIterB11_ENCNCNvXNtNtB4B_20struct_payload_index13payload_indexNtB6Z_18StructPayloadIndexNtNtB4B_18payload_index_base12PayloadIndex5files00ENCB6U_0EE9from_iterB3K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(216) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [216 x i8], align 8               ; 26 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB21_5index11field_index16field_index_base11field_index10FieldIndexEEIBR_INtNtNtBb_5slice4iter4IterB3d_EINtNtB2J_9into_iter8IntoIterNtNtB1d_4path7PathBufENCNCNvXNtNtB3l_20struct_payload_index13payload_indexNtB5Z_18StructPayloadIndexNtNtB3l_18payload_index_base12PayloadIndex5files00ENCB5U_0ENtNtNtB9_6traits8iterator8Iterator4nextB21_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 dereferenceable(216) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !19, !noundef !14
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18142)
  %i.j = load i64, ptr %1, align 8, !range !24, !alias.scope !18143, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1
  br i1 %i.k, label %bb.e, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18144, !noundef !14
  %.not.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !18145, !nonnull !14, !noundef !14
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !18145, !nonnull !14, !noundef !14
  %i.p = ptrtoint ptr %.val3.i.i.i.i.i.i.i to i64
  %i.q = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %i.r = sub nuw i64 %i.p, %i.q
  %i.s = udiv exact i64 %i.r, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.s, %bb.f ], [ 0, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !18144, !noundef !14
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not53.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i62.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !18146, !nonnull !14, !noundef !14
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val3.i63.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !18146, !nonnull !14, !noundef !14
  %i.x = ptrtoint ptr %.val3.i63.i.i.i.i.i.i to i64
  %i.y = ptrtoint ptr %.val.i62.i.i.i.i.i.i to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %i.aa, %bb.g ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i ]
  %i.ab = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !18144, !noundef !14 ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val61.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !18144, !nonnull !14
  %i.af = icmp eq ptr %.val61.i.i.i.i.i.i, %i.ad
  %or.cond.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.af ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i.i.i.i.i, i64 %i.ab, i64 undef
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i, %bb.d
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i ], [ 0, %bb.d ]
  %.sroa.5.0.i.i = phi i1 [ %or.cond.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i ], [ true, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ab, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ah = load i64, ptr %i.ag, align 8, !range !24, !alias.scope !18143, !noundef !14
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !18147, !noundef !14
  %.not.i.i.i.i59.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i59.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val.i.i.i.i.i60.i.i = load ptr, ptr %i.al, align 8, !alias.scope !18148, !nonnull !14, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.val3.i.i.i.i.i61.i.i = load ptr, ptr %i.am, align 8, !alias.scope !18148, !nonnull !14, !noundef !14
  %i.an = ptrtoint ptr %.val3.i.i.i.i.i61.i.i to i64
  %i.ao = ptrtoint ptr %.val.i.i.i.i.i60.i.i to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = udiv exact i64 %i.ap, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i: ; preds = %bb.i, %bb.h
  %.sroa.7.0.i.i.i.i63.i.i = phi i64 [ %i.aq, %bb.i ], [ 0, %bb.h ]
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !18147, !noundef !14
  %.not53.i.i.i.i64.i.i = icmp eq ptr %i.as, null
  br i1 %.not53.i.i.i.i64.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val.i62.i.i.i.i65.i.i = load ptr, ptr %i.at, align 8, !alias.scope !18149, !nonnull !14, !noundef !14
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val3.i63.i.i.i.i66.i.i = load ptr, ptr %i.au, align 8, !alias.scope !18149, !nonnull !14, !noundef !14
  %i.av = ptrtoint ptr %.val3.i63.i.i.i.i66.i.i to i64
  %i.aw = ptrtoint ptr %.val.i62.i.i.i.i65.i.i to i64
  %i.ax = sub nuw i64 %i.av, %i.aw
  %i.ay = udiv exact i64 %i.ax, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i: ; preds = %bb.j, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i
  %.sroa.8.0.i.i.i.i68.i.i = phi i64 [ %i.ay, %bb.j ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i ]
  %i.az = add nuw nsw i64 %.sroa.8.0.i.i.i.i68.i.i, %.sroa.7.0.i.i.i.i63.i.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !18147, !noundef !14 ; 2 uses
  %.not54.i.i.i.i69.i.i = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val61.i.i.i.i70.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !18147, !nonnull !14
  %.val61.i.i.i.i70.i.i.fr = freeze ptr %.val61.i.i.i.i70.i.i
  %i.bd = icmp eq ptr %.val61.i.i.i.i70.i.i.fr, %i.bb
  %or.cond.i.i.i.i71.i.i = or i1 %.not54.i.i.i.i69.i.i, %i.bd ; 2 uses
  %spec.select89.i.i = select i1 %or.cond.i.i.i.i71.i.i, i64 %i.az, i64 undef
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i
  %.sroa.8.1.i.i = phi i64 [ %spec.select89.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i ]
  %.sroa.582.0.i.i = phi i1 [ %or.cond.i.i.i.i71.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i ], [ true, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i ] ; 2 uses
  %.sroa.081.0.i.i = phi i64 [ %i.az, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i ]
  %i.be = add nuw nsw i64 %.sroa.081.0.i.i, %.sroa.0.0.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !18143, !noundef !14
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val.i.i = load i64, ptr %i.bh, align 8, !alias.scope !18143, !noundef !14
  %i.bi = icmp eq i64 %.val.i.i, 0
  %op.rdx13 = and i1 %i.bi, %.sroa.582.0.i.i
  %op.rdx14 = select i1 %op.rdx13, i1 %.sroa.5.0.i.i, i1 false
  br i1 %op.rdx14, label %bb.m, label %bb.q

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i
  %or.cond53.i.i = and i1 %.sroa.5.0.i.i, %.sroa.582.0.i.i
  br i1 %or.cond53.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = add i64 %.sroa.8.1.i.i, %.sroa.7.1.i.i
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2e_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3q_EINtNtB2W_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNvXNtNtB3y_20struct_payload_index13payload_indexNtB6c_18StructPayloadIndexNtNtB3y_18payload_index_base12PayloadIndex5files00ENCB67_0EEB2e_(ptr noalias nofree noundef align 8 dereferenceable(216) %1)
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBV_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBI_NtNtNtNtNtB3q_5index11field_index16field_index_base11field_index10FieldIndexEEIB1M_INtNtNtB1U_5slice4iter4IterB49_EINtNtB4_9into_iter8IntoIterBR_ENCNCNvXNtNtB4h_20struct_payload_index13payload_indexNtB6E_18StructPayloadIndexNtNtB4h_18payload_index_base12PayloadIndex5files00ENCB6z_0EE11spec_extendB3q_.exit, %bb.n
  ret void

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.an unwind label %bb.al

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sink92.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.m ], [ %.sroa.5, %bb.l ], [ %.sroa.5, %bb.k ]
  %.sink.i.i = phi i64 [ %i.bj, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i, ptr %.sink92.i.i.sroa.phi, align 8, !alias.scope !18150
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bn = tail call i64 @llvm.umax.i64(i64 %i.be, i64 3) ; 2 uses
  %..i = add nuw nsw i64 %i.bn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.q
  %i.bo = load i64, ptr %i.c, align 8, !range !24, !noundef !14
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !56, !noundef !14 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %.noexc
  %i.bt = load i64, ptr %i.bs, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #37
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.noexc
  %i.bu = load ptr, ptr %i.bs, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bv = icmp ult i64 %i.bn, %i.br
  tail call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 %i.br, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.d, ptr noundef nonnull align 8 dereferenceable(216) %1, i64 216, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18154)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  br label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18155
  invoke fastcc void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB21_5index11field_index16field_index_base11field_index10FieldIndexEEIBR_INtNtNtBb_5slice4iter4IterB3d_EINtNtB2J_9into_iter8IntoIterNtNtB1d_4path7PathBufENCNCNvXNtNtB3l_20struct_payload_index13payload_indexNtB5Z_18StructPayloadIndexNtNtB3l_18payload_index_base12PayloadIndex5files00ENCB5U_0ENtNtNtB9_6traits8iterator8Iterator4nextB21_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.d)
          to label %bb.v unwind label %bb.u

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.ah, %bb.u
  %.pn.i.i = phi { ptr, i32 } [ %i.cp, %bb.u ], [ %i.eg, %bb.ah ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2e_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3q_EINtNtB2W_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNvXNtNtB3y_20struct_payload_index13payload_indexNtB6c_18StructPayloadIndexNtNtB3y_18payload_index_base12PayloadIndex5files00ENCB67_0EEB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.d) #30
          to label %.body unwind label %bb.aj

bb.u:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i

bb.v:                                             ; preds = %bb.t
  %i.cq = load i64, ptr %i.b, align 8, !range !19, !noalias !18155, !noundef !14
  %.not.i.i5 = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i5, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBK_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBx_NtNtNtNtNtB3c_5index11field_index16field_index_base11field_index10FieldIndexEEIB1y_INtNtNtB1G_5slice4iter4IterB3V_EINtNtB6_9into_iter8IntoIterBG_ENCNCNvXNtNtB43_20struct_payload_index13payload_indexNtB6q_18StructPayloadIndexNtNtB43_18payload_index_base12PayloadIndex5files00ENCB6l_0EEB3c_.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !18155
  %i.cr = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18156, !noundef !14 ; 5 uses
  %i.cs = icmp ult i64 %i.cr, 384307168202282326
  call void @llvm.assume(i1 %i.cs)
  %i.ct = load i64, ptr %i.g, align 8, !range !15, !alias.scope !18156, !noundef !14
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.x, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18157)
  call void @llvm.experimental.noalias.scope.decl(metadata !18158)
  call void @llvm.experimental.noalias.scope.decl(metadata !18159)
  call void @llvm.experimental.noalias.scope.decl(metadata !18160)
  %i.cv = load i64, ptr %i.d, align 8, !range !24, !alias.scope !18161, !noundef !14
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.y, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.cx = load ptr, ptr %i.bw, align 8, !alias.scope !18162, !noundef !14
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !18163, !nonnull !14, !noundef !14
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !18163, !nonnull !14, !noundef !14
  %i.cy = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i.i to i64
  %i.cz = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  %i.db = udiv exact i64 %i.da, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i: ; preds = %bb.z, %bb.y
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.z ], [ 0, %bb.y ]
  %i.dc = load ptr, ptr %i.bz, align 8, !alias.scope !18162, !noundef !14
  %.not53.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not53.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %.val.i62.i.i.i.i.i.i.i.i = load ptr, ptr %i.ca, align 8, !alias.scope !18164, !nonnull !14, !noundef !14
  %.val3.i63.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !18164, !nonnull !14, !noundef !14
  %i.dd = ptrtoint ptr %.val3.i63.i.i.i.i.i.i.i.i to i64
  %i.de = ptrtoint ptr %.val.i62.i.i.i.i.i.i.i.i to i64
  %i.df = sub nuw i64 %i.dd, %i.de
  %i.dg = udiv exact i64 %i.df, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.dg, %bb.aa ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i.i.i.i.i ]
  %i.dh = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.di = load ptr, ptr %i.cc, align 8, !alias.scope !18162, !noundef !14 ; 2 uses
  %.not54.i.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  %.val61.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !18162, !nonnull !14
  %i.dj = icmp eq ptr %.val61.i.i.i.i.i.i.i.i, %i.di
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i.i.i, i1 true, i1 %i.dj ; 2 uses
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i64 %i.dh, i64 undef
  %i.dk = add nuw nsw i64 %i.dh, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i, %bb.x
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i ], [ 0, %bb.x ]
  %.sroa.5.0.i.i.i.i = phi i1 [ %or.cond.i.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i ], [ true, %bb.x ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.dk, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i.i.i.i.i ], [ 1, %bb.x ]
  %i.dl = load i64, ptr %i.ce, align 8, !range !24, !alias.scope !18161, !noundef !14
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.ab, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i

bb.ab:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i
  %i.dn = load ptr, ptr %i.cf, align 8, !alias.scope !18165, !noundef !14
  %.not.i.i.i.i59.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i59.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val.i.i.i.i.i60.i.i.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !18166, !nonnull !14, !noundef !14
  %.val3.i.i.i.i.i61.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !18166, !nonnull !14, !noundef !14
  %i.do = ptrtoint ptr %.val3.i.i.i.i.i61.i.i.i.i to i64
  %i.dp = ptrtoint ptr %.val.i.i.i.i.i60.i.i.i.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  %i.dr = udiv exact i64 %i.dq, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.sroa.7.0.i.i.i.i63.i.i.i.i = phi i64 [ %i.dr, %bb.ac ], [ 0, %bb.ab ]
  %i.ds = load ptr, ptr %i.ci, align 8, !alias.scope !18165, !noundef !14
  %.not53.i.i.i.i64.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not53.i.i.i.i64.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i.i.i
  %.val.i62.i.i.i.i65.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !18167, !nonnull !14, !noundef !14
  %.val3.i63.i.i.i.i66.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !18167, !nonnull !14, !noundef !14
  %i.dt = ptrtoint ptr %.val3.i63.i.i.i.i66.i.i.i.i to i64
  %i.du = ptrtoint ptr %.val.i62.i.i.i.i65.i.i.i.i to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  %i.dw = udiv exact i64 %i.dv, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i: ; preds = %bb.ad, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i.i.i
  %.sroa.8.0.i.i.i.i68.i.i.i.i = phi i64 [ %i.dw, %bb.ad ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit.i.i.i.i62.i.i.i.i ]
  %i.dx = add nuw nsw i64 %.sroa.8.0.i.i.i.i68.i.i.i.i, %.sroa.7.0.i.i.i.i63.i.i.i.i ; 2 uses
  %i.dy = load ptr, ptr %i.cl, align 8, !alias.scope !18165, !noundef !14 ; 2 uses
  %.not54.i.i.i.i69.i.i.i.i = icmp eq ptr %i.dy, null
  %.val61.i.i.i.i70.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !18165, !nonnull !14
  %.val61.i.i.i.i70.i.i.i.i.fr = freeze ptr %.val61.i.i.i.i70.i.i.i.i
  %i.dz = icmp eq ptr %.val61.i.i.i.i70.i.i.i.i.fr, %i.dy
  %or.cond.i.i.i.i71.i.i.i.i = or i1 %.not54.i.i.i.i69.i.i.i.i, %i.dz ; 2 uses
  %spec.select89.i.i.i.i = select i1 %or.cond.i.i.i.i71.i.i.i.i, i64 %i.dx, i64 undef
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i
  %.sroa.8.1.i.i.i.i = phi i64 [ %spec.select89.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ]
  %.sroa.582.0.i.i.i.i = phi i1 [ %or.cond.i.i.i.i71.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i ], [ true, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ] ; 2 uses
  %.sroa.081.0.i.i.i.i = phi i64 [ %i.dx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs607s0NAIaWN_7segment.exit64.i.i.i.i67.i.i.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ]
  %i.ea = load ptr, ptr %i.cn, align 8, !alias.scope !18161, !noundef !14
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !18161, !noundef !14
  %i.eb = icmp eq i64 %.val.i.i.i.i, 0
  %op.rdx = and i1 %i.eb, %.sroa.582.0.i.i.i.i
  %op.rdx12 = select i1 %op.rdx, i1 %.sroa.5.0.i.i.i.i, i1 false
  br i1 %op.rdx12, label %bb.ag, label %bb.ai

bb.af:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB4S_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex5files00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i
  %or.cond53.i.i.i.i = and i1 %.sroa.5.0.i.i.i.i, %.sroa.582.0.i.i.i.i
  br i1 %or.cond53.i.i.i.i, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ec = add i64 %.sroa.8.1.i.i.i.i, %.sroa.7.1.i.i.i.i
  br label %bb.ai

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i: ; preds = %bb.ai, %bb.w
  %i.ed = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !18156, !nonnull !14, !noundef !14
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ef = add nuw nsw i64 %i.cr, 1
  store i64 %i.ef, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18155
  br label %bb.t

bb.ah:                                            ; preds = %bb.ai
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ag, %bb.af, %bb.ae
  %.sink92.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.ag ], [ %.sroa.5.i.i, %bb.af ], [ %.sroa.5.i.i, %bb.ae ]
  %.sink.i.i.i.i = phi i64 [ %i.ec, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ]
  store i64 %.sink.i.i.i.i, ptr %.sink92.i.i.sroa.phi.i.i, align 8, !alias.scope !18168, !noalias !18155
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.eh = add nuw nsw i64 %.sroa.081.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cr, i64 noundef %i.eh, i64 noundef 8, i64 noundef 24)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufE7reserveCs607s0NAIaWN_7segment.exit.i.i unwind label %bb.ah

bb.aj:                                            ; preds = %bb.ah, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBK_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBx_NtNtNtNtNtB3c_5index11field_index16field_index_base11field_index10FieldIndexEEIB1y_INtNtNtB1G_5slice4iter4IterB3V_EINtNtB6_9into_iter8IntoIterBG_ENCNCNvXNtNtB43_20struct_payload_index13payload_indexNtB6q_18StructPayloadIndexNtNtB43_18payload_index_base12PayloadIndex5files00ENCB6l_0EEB3c_.exit.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18155
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2e_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3q_EINtNtB2W_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNvXNtNtB3y_20struct_payload_index13payload_indexNtB6c_18StructPayloadIndexNtNtB3y_18payload_index_base12PayloadIndex5files00ENCB67_0EEB2e_(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.d)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBV_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBI_NtNtNtNtNtB3q_5index11field_index16field_index_base11field_index10FieldIndexEEIB1M_INtNtNtB1U_5slice4iter4IterB49_EINtNtB4_9into_iter8IntoIterBR_ENCNCNvXNtNtB4h_20struct_payload_index13payload_indexNtB6E_18StructPayloadIndexNtNtB4h_18payload_index_base12PayloadIndex5files00ENCB6z_0EE11spec_extendB3q_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBK_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBx_NtNtNtNtNtB3c_5index11field_index16field_index_base11field_index10FieldIndexEEIB1y_INtNtNtB1G_5slice4iter4IterB3V_EINtNtB6_9into_iter8IntoIterBG_ENCNCNvXNtNtB43_20struct_payload_index13payload_indexNtB6q_18StructPayloadIndexNtNtB43_18payload_index_base12PayloadIndex5files00ENCB6l_0EEB3c_.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.ej, %bb.ak ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsG258MDvU3F_3std4path7PathBufECs607s0NAIaWN_7segment.exit.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtCsG258MDvU3F_3std4path7PathBufEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #30
          to label %bb.am unwind label %bb.al

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtCsG258MDvU3F_3std4path7PathBufEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBV_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBI_NtNtNtNtNtB3q_5index11field_index16field_index_base11field_index10FieldIndexEEIB1M_INtNtNtB1U_5slice4iter4IterB49_EINtNtB4_9into_iter8IntoIterBR_ENCNCNvXNtNtB4h_20struct_payload_index13payload_indexNtB6E_18StructPayloadIndexNtNtB4h_18payload_index_base12PayloadIndex5files00ENCB6z_0EE11spec_extendB3q_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtCsG258MDvU3F_3std4path7PathBufE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtBK_11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathIBx_NtNtNtNtNtB3c_5index11field_index16field_index_base11field_index10FieldIndexEEIB1y_INtNtNtB1G_5slice4iter4IterB3V_EINtNtB6_9into_iter8IntoIterBG_ENCNCNvXNtNtB43_20struct_payload_index13payload_indexNtB6q_18StructPayloadIndexNtNtB43_18payload_index_base12PayloadIndex5files00ENCB6l_0EEB3c_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.al:                                            ; preds = %bb.p, %bb.an, %.body
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.am:                                            ; preds = %.body, %bb.an
  %.pn10 = phi { ptr, i32 } [ %.pn.ph, %bb.an ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn10

bb.an:                                            ; preds = %bb.b, %bb.p
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bm, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map6ValuesNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2e_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3q_EINtNtB2W_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNvXNtNtB3y_20struct_payload_index13payload_indexNtB6c_18StructPayloadIndexNtNtB3y_18payload_index_base12PayloadIndex5files00ENCB67_0EEB2e_(ptr noalias nofree noundef align 8 dereferenceable(216) %1) #30
          to label %bb.am unwind label %bb.al
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtB2N_5slice4iter4IterB11_EIBS_jEENCNvNtB15_15query_estimator30combine_min_should_estimations0EE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtBb_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtNtCsexYYUdYSQU6_5alloc3vec3VecjEENCNvNtB2s_15query_estimator30combine_min_should_estimations0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.h, ptr noalias nofree noundef align 8 dereferenceable(80) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.h, align 8, !range !19, !noundef !14
  %.not = icmp eq i64 %i.k, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvXs4_NtCs9XvERIT2X68_9itertools12combinationsINtB5_19CombinationsGenericINtNtNtCskKLDkoKarTP_4core5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtNtCsexYYUdYSQU6_5alloc3vec3VecjEENtNtNtNtB1h_4iter6traits8iterator8Iterator9size_hintB1W_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
          to label %bb.j unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecjENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtB4_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtNtCsexYYUdYSQU6_5alloc3vec3VecjEENCNvNtB2F_15query_estimator30combine_min_should_estimations0EEB2H_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.aa, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %.pn.ph, %bb.aa ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtB4_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtNtCsexYYUdYSQU6_5alloc3vec3VecjEENCNvNtB2F_15query_estimator30combine_min_should_estimations0EEB2H_.exit: ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecRNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.q)
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtB2u_5slice4iter4IterBR_EIBI_jEENCNvNtBV_15query_estimator30combine_min_should_estimations0EE11spec_extendBX_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtB4_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtNtCsexYYUdYSQU6_5alloc3vec3VecjEENCNvNtB2F_15query_estimator30combine_min_should_estimations0EEB2H_.exit
  ret void

bb.i:                                             ; preds = %bb.k, %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.g) #30
          to label %bb.aa unwind label %bb.z

bb.j:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.f, align 8, !noundef !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.t = tail call i64 @llvm.uadd.sat.i64(i64 %i.s, i64 1)
  %..i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.t, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 48)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.j
  %i.u = load i64, ptr %i.d, align 8, !range !24, !noundef !14
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !56, !noundef !14 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.v, label %bb.k, label %bb.l, !prof !16

bb.k:                                             ; preds = %.noexc
  %i.z = load i64, ptr %i.y, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #37
          to label %.noexc4 unwind label %bb.i

.noexc4:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %i.y, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.ab = icmp ule i64 %..i, %i.x
  tail call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aa, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  store i64 %i.x, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18178)
  br label %bb.m

bb.m:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationE7reserveBK_.exit.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18179
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtCs9XvERIT2X68_9itertools12combinations19CombinationsGenericINtNtNtBb_5slice4iter4IterNtNtNtCs607s0NAIaWN_7segment5index11field_index21CardinalityEstimationEINtNtCsexYYUdYSQU6_5alloc3vec3VecjEENCNvNtB2s_15query_estimator30combine_min_should_estimations0ENtNtNtB9_6traits8iterator8Iterator4nextB2u_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.p unwind label %bb.o

end_hunk_0
begin_hunk_1_@_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtB6_6string6StringjEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterB12_jEE9from_iterCs607s0NAIaWN_7segment:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18222
  br label %bb.i

bb.l:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit.i.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %.val.i.i = load i64, ptr %i.w, align 8, !alias.scope !18224, !noundef !14
  %i.ah = call i64 @llvm.uadd.sat.i64(i64 %.val.i.i, i64 1)
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.z, i64 noundef %i.ah, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtB6_6string6StringjEE7reserveCs607s0NAIaWN_7segment.exit.i.i unwind label %bb.l

bb.n:                                             ; preds = %bb.l, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtB8_6string6StringjEE16extend_desugaredINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBH_jEECs607s0NAIaWN_7segment.exit.i: ; preds = %_RNvXsF_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringjENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCs607s0NAIaWN_7segment.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18222
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringjEEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBS_jEE11spec_extendCs607s0NAIaWN_7segment.exit unwind label %bb.o

bb.o:                                             ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtB8_6string6StringjEE16extend_desugaredINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBH_jEECs607s0NAIaWN_7segment.exit.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit.i.i, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.o ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit.i.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtBG_6string6StringjEEECs607s0NAIaWN_7segment(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #30
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit unwind label %bb.p

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTNtNtB6_6string6StringjEEINtB2_10SpecExtendBR_INtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBS_jEE11spec_extendCs607s0NAIaWN_7segment.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtB8_6string6StringjEE16extend_desugaredINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterBH_jEECs607s0NAIaWN_7segment.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.p:                                             ; preds = %bb.q, %bb.e, %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit: ; preds = %bb.q, %.body
  %.pn9 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn.ph, %bb.q ]
  resume { ptr, i32 } %.pn9

bb.q:                                             ; preds = %bb.b, %bb.e
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.l, %bb.e ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTNtNtCsexYYUdYSQU6_5alloc6string6StringjEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIterNtNtCsexYYUdYSQU6_5alloc6string6StringjEECs607s0NAIaWN_7segment.exit unwind label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1P_11collections4hash3map4IterB12_IBS_NtNtNtNtNtB16_5index11field_index16field_index_base11field_index10FieldIndexEEIB2Q_INtNtNtB2Y_5slice4iter4IterB4x_EINtNtB2U_3map3MapINtNtB4_9into_iter8IntoIterB1L_ENCNCNCNvXNtNtB4F_20struct_payload_index13payload_indexNtB7m_18StructPayloadIndexNtNtB4F_18payload_index_base12PayloadIndex15immutable_files000ENCB7f_0ENCB7h_0EE9from_iterB16_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [264 x i8], align 8               ; 26 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [72 x i8], align 8                ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke fastcc void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB1Z_5index11field_index16field_index_base11field_index10FieldIndexEEIBR_INtNtNtBb_5slice4iter4IterB3b_EINtNtB7_3map3MapINtNtB2H_9into_iter8IntoIterNtNtB1d_4path7PathBufENCNCNCNvXNtNtB3j_20struct_payload_index13payload_indexNtB6f_18StructPayloadIndexNtNtB3j_18payload_index_base12PayloadIndex15immutable_files000ENCB68_0ENCB6a_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Z_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.f, ptr noalias nofree noundef align 8 dereferenceable(264) %1)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.f, align 8, !range !19, !noundef !14
  %.not = icmp eq i64 %i.i, -1
  br i1 %.not, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18291)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18294)
  %i.j = load i64, ptr %1, align 8, !range !24, !alias.scope !18295, !noundef !14
  %i.k = trunc nuw i64 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  br i1 %i.k, label %bb.e, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !18296, !noundef !14
  %.not.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !18297, !nonnull !14, !noundef !14
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !18297, !nonnull !14, !noundef !14
  %i.q = ptrtoint ptr %.val3.i.i.i.i.i.i.i to i64
  %i.r = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.t, %bb.f ], [ 0, %bb.e ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !18296, !noundef !14
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not53.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i62.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !18298, !nonnull !14, !noundef !14
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val3.i63.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !18298, !nonnull !14, !noundef !14
  %i.y = ptrtoint ptr %.val3.i63.i.i.i.i.i.i to i64
  %i.z = ptrtoint ptr %.val.i62.i.i.i.i.i.i to i64
  %i.aa = sub nuw i64 %i.y, %i.z
  %i.ab = udiv exact i64 %i.aa, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %i.ab, %bb.g ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i ]
  %i.ac = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i ; 2 uses
  %i.ad = load ptr, ptr %i.l, align 8, !alias.scope !18296, !noundef !14 ; 2 uses
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val61.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !18296, !nonnull !14
  %i.af = icmp eq ptr %.val61.i.i.i.i.i.i, %i.ad
  %or.cond.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i, i1 true, i1 %i.af ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i.i.i.i.i, i64 %i.ac, i64 undef
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i, %bb.d
  %.sroa.7.1.i.i = phi i64 [ %spec.select.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i ], [ 0, %bb.d ]
  %.sroa.5.0.i.i = phi i1 [ %or.cond.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i ], [ true, %bb.d ] ; 2 uses
  %.sroa.0.0.i.i = phi i64 [ %i.ac, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i ], [ 0, %bb.d ]
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ah = load i64, ptr %i.ag, align 8, !range !24, !alias.scope !18295, !noundef !14
  %i.ai = trunc nuw i64 %i.ah to i1
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 120
  br i1 %i.ai, label %bb.h, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i

bb.h:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !18299, !noundef !14
  %.not.i.i.i.i59.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i59.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.val.i.i.i.i.i60.i.i = load ptr, ptr %i.am, align 8, !alias.scope !18300, !nonnull !14, !noundef !14
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.val3.i.i.i.i.i61.i.i = load ptr, ptr %i.an, align 8, !alias.scope !18300, !nonnull !14, !noundef !14
  %i.ao = ptrtoint ptr %.val3.i.i.i.i.i61.i.i to i64
  %i.ap = ptrtoint ptr %.val.i.i.i.i.i60.i.i to i64
  %i.aq = sub nuw i64 %i.ao, %i.ap
  %i.ar = udiv exact i64 %i.aq, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i: ; preds = %bb.i, %bb.h
  %.sroa.7.0.i.i.i.i63.i.i = phi i64 [ %i.ar, %bb.i ], [ 0, %bb.h ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !18299, !noundef !14
  %.not53.i.i.i.i64.i.i = icmp eq ptr %i.at, null
  br i1 %.not53.i.i.i.i64.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i, label %bb.j

bb.j:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 192
  %.val.i62.i.i.i.i65.i.i = load ptr, ptr %i.au, align 8, !alias.scope !18301, !nonnull !14, !noundef !14
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.val3.i63.i.i.i.i66.i.i = load ptr, ptr %i.av, align 8, !alias.scope !18301, !nonnull !14, !noundef !14
  %i.aw = ptrtoint ptr %.val3.i63.i.i.i.i66.i.i to i64
  %i.ax = ptrtoint ptr %.val.i62.i.i.i.i65.i.i to i64
  %i.ay = sub nuw i64 %i.aw, %i.ax
  %i.az = udiv exact i64 %i.ay, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i: ; preds = %bb.j, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i
  %.sroa.8.0.i.i.i.i68.i.i = phi i64 [ %i.az, %bb.j ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i ]
  %i.ba = add nuw nsw i64 %.sroa.8.0.i.i.i.i68.i.i, %.sroa.7.0.i.i.i.i63.i.i ; 2 uses
  %i.bb = load ptr, ptr %i.aj, align 8, !alias.scope !18299, !noundef !14 ; 2 uses
  %.not54.i.i.i.i69.i.i = icmp eq ptr %i.bb, null
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val61.i.i.i.i70.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !18299, !nonnull !14
  %.val61.i.i.i.i70.i.i.fr = freeze ptr %.val61.i.i.i.i70.i.i
  %i.bd = icmp eq ptr %.val61.i.i.i.i70.i.i.fr, %i.bb
  %or.cond.i.i.i.i71.i.i = or i1 %.not54.i.i.i.i69.i.i, %i.bd ; 2 uses
  %spec.select89.i.i = select i1 %or.cond.i.i.i.i71.i.i, i64 %i.ba, i64 undef
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i
  %.sroa.8.1.i.i = phi i64 [ %spec.select89.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i ]
  %.sroa.582.0.i.i = phi i1 [ %or.cond.i.i.i.i71.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i ], [ true, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i ] ; 2 uses
  %.sroa.081.0.i.i = phi i64 [ %i.ba, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i ]
  %i.be = add nuw nsw i64 %.sroa.081.0.i.i, %.sroa.0.0.i.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !18295, !noundef !14
  %.not.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i = load i64, ptr %i.bh, align 8, !alias.scope !18295, !noundef !14
  %i.bi = icmp eq i64 %.val.i.i, 0
  %op.rdx13 = and i1 %i.bi, %.sroa.582.0.i.i
  %op.rdx14 = select i1 %op.rdx13, i1 %.sroa.5.0.i.i, i1 false
  br i1 %op.rdx14, label %bb.m, label %bb.q

bb.l:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i
  %or.cond53.i.i = and i1 %.sroa.5.0.i.i, %.sroa.582.0.i.i
  br i1 %or.cond53.i.i, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bj = add i64 %.sroa.8.1.i.i, %.sroa.7.1.i.i
  br label %bb.q

bb.n:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2c_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3o_EINtNtBG_3map3MapINtNtB2U_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNCNvXNtNtB3w_20struct_payload_index13payload_indexNtB6s_18StructPayloadIndexNtNtB3w_18payload_index_base12PayloadIndex15immutable_files000ENCB6l_0ENCB6n_0EEB2c_(ptr noalias nofree noundef align 8 dereferenceable(264) %1)
  br label %bb.o

bb.o:                                             ; preds = %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1F_11collections4hash3map4IterBS_IBI_NtNtNtNtNtBW_5index11field_index16field_index_base11field_index10FieldIndexEEIB2x_INtNtNtB2F_5slice4iter4IterB4d_EINtNtB2B_3map3MapINtNtB4_9into_iter8IntoIterB1B_ENCNCNCNvXNtNtB4l_20struct_payload_index13payload_indexNtB71_18StructPayloadIndexNtNtB4l_18payload_index_base12PayloadIndex15immutable_files000ENCB6U_0ENCB6W_0EE11spec_extendBW_.exit, %bb.n
  ret void

bb.p:                                             ; preds = %bb.r, %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.e) #30
          to label %bb.ao unwind label %bb.am

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.m
  %.sink92.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.m ], [ %.sroa.5, %bb.l ], [ %.sroa.5, %bb.k ]
  %.sink.i.i = phi i64 [ %i.bj, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ]
  store i64 %.sink.i.i, ptr %.sink92.i.i.sroa.phi, align 8, !alias.scope !18302
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.bn = tail call i64 @llvm.umax.i64(i64 %i.be, i64 3) ; 2 uses
  %..i = add nuw nsw i64 %i.bn, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 72)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.q
  %i.bo = load i64, ptr %i.c, align 8, !range !24, !noundef !14
  %i.bp = trunc nuw i64 %i.bo to i1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !range !56, !noundef !14 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.bp, label %bb.r, label %bb.s, !prof !16

bb.r:                                             ; preds = %.noexc
  %i.bt = load i64, ptr %i.bs, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.br, i64 %i.bt) #37
          to label %.noexc4 unwind label %bb.p

.noexc4:                                          ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %.noexc
  %i.bu = load ptr, ptr %i.bs, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.bv = icmp ult i64 %i.bn, %i.br
  tail call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bu, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  store i64 %i.br, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.bu, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.d, ptr noundef nonnull align 8 dereferenceable(264) %1, i64 264, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18305)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18306)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.cg = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.ch = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.ci = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.cj = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.cl = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  %i.cm = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 256
  br label %bb.t

bb.t:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE7reserveBJ_.exit.i.i, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18307
  invoke fastcc void @_RNvXs1_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB1Z_5index11field_index16field_index_base11field_index10FieldIndexEEIBR_INtNtNtBb_5slice4iter4IterB3b_EINtNtB7_3map3MapINtNtB2H_9into_iter8IntoIterNtNtB1d_4path7PathBufENCNCNCNvXNtNtB3j_20struct_payload_index13payload_indexNtB6f_18StructPayloadIndexNtNtB3j_18payload_index_base12PayloadIndex15immutable_files000ENCB68_0ENCB6a_0ENtNtNtB9_6traits8iterator8Iterator4nextB1Z_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.d)
          to label %bb.w unwind label %bb.v

bb.u:                                             ; preds = %bb.ai, %bb.v
  %.pn.i.i = phi { ptr, i32 } [ %i.eg, %bb.ai ], [ %i.cp, %bb.v ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2c_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3o_EINtNtBG_3map3MapINtNtB2U_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNCNvXNtNtB3w_20struct_payload_index13payload_indexNtB6s_18StructPayloadIndexNtNtB3w_18payload_index_base12PayloadIndex15immutable_files000ENCB6l_0ENCB6n_0EEB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.d) #30
          to label %.body unwind label %bb.ak

bb.v:                                             ; preds = %bb.t
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  %i.cq = load i64, ptr %i.b, align 8, !range !19, !noalias !18307, !noundef !14
  %.not.i.i5 = icmp eq i64 %i.cq, -1
  br i1 %.not.i.i5, label %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1u_11collections4hash3map4IterBH_IBx_NtNtNtNtNtBL_5index11field_index16field_index_base11field_index10FieldIndexEEIB2j_INtNtNtB2r_5slice4iter4IterB3Z_EINtNtB2n_3map3MapINtNtB6_9into_iter8IntoIterB1q_ENCNCNCNvXNtNtB47_20struct_payload_index13payload_indexNtB6N_18StructPayloadIndexNtNtB47_18payload_index_base12PayloadIndex15immutable_files000ENCB6G_0ENCB6I_0EEBL_.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !18307
  %i.cr = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18308, !noundef !14 ; 5 uses
  %i.cs = icmp ult i64 %i.cr, 128102389400760776
  call void @llvm.assume(i1 %i.cs)
  %i.ct = load i64, ptr %i.g, align 8, !range !15, !alias.scope !18308, !noundef !14
  %i.cu = icmp eq i64 %i.cr, %i.ct
  br i1 %i.cu, label %bb.y, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE7reserveBJ_.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !18309)
  call void @llvm.experimental.noalias.scope.decl(metadata !18310)
  call void @llvm.experimental.noalias.scope.decl(metadata !18311)
  call void @llvm.experimental.noalias.scope.decl(metadata !18312)
  %i.cv = load i64, ptr %i.d, align 8, !range !24, !alias.scope !18313, !noundef !14
  %i.cw = trunc nuw i64 %i.cv to i1
  br i1 %i.cw, label %bb.z, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  %i.cx = load ptr, ptr %i.bx, align 8, !alias.scope !18314, !noundef !14
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cx, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.by, align 8, !alias.scope !18315, !nonnull !14, !noundef !14
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !18315, !nonnull !14, !noundef !14
  %i.cy = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i.i to i64
  %i.cz = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.da = sub nuw i64 %i.cy, %i.cz
  %i.db = udiv exact i64 %i.da, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.db, %bb.aa ], [ 0, %bb.z ]
  %i.dc = load ptr, ptr %i.ca, align 8, !alias.scope !18314, !noundef !14
  %.not53.i.i.i.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not53.i.i.i.i.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i.i.i
  %.val.i62.i.i.i.i.i.i.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !18316, !nonnull !14, !noundef !14
  %.val3.i63.i.i.i.i.i.i.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !18316, !nonnull !14, !noundef !14
  %i.dd = ptrtoint ptr %.val3.i63.i.i.i.i.i.i.i.i to i64
  %i.de = ptrtoint ptr %.val.i62.i.i.i.i.i.i.i.i to i64
  %i.df = sub nuw i64 %i.dd, %i.de
  %i.dg = udiv exact i64 %i.df, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i: ; preds = %bb.ab, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.dg, %bb.ab ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i.i.i.i.i ]
  %i.dh = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.di = load ptr, ptr %i.bw, align 8, !alias.scope !18314, !noundef !14 ; 2 uses
  %.not54.i.i.i.i.i.i.i.i = icmp eq ptr %i.di, null
  %.val61.i.i.i.i.i.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !18314, !nonnull !14
  %i.dj = icmp eq ptr %.val61.i.i.i.i.i.i.i.i, %i.di
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i.i.i, i1 true, i1 %i.dj ; 2 uses
  %spec.select.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i64 %i.dh, i64 undef
  %i.dk = add nuw nsw i64 %i.dh, 1
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i, %bb.y
  %.sroa.7.1.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i ], [ 0, %bb.y ]
  %.sroa.5.0.i.i.i.i = phi i1 [ %or.cond.i.i.i.i.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i ], [ true, %bb.y ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.dk, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i.i.i.i.i ], [ 1, %bb.y ]
  %i.dl = load i64, ptr %i.ce, align 8, !range !24, !alias.scope !18313, !noundef !14
  %i.dm = trunc nuw i64 %i.dl to i1
  br i1 %i.dm, label %bb.ac, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i

bb.ac:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i
  %i.dn = load ptr, ptr %i.cg, align 8, !alias.scope !18317, !noundef !14
  %.not.i.i.i.i59.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not.i.i.i.i59.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.val.i.i.i.i.i60.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !18318, !nonnull !14, !noundef !14
  %.val3.i.i.i.i.i61.i.i.i.i = load ptr, ptr %i.ci, align 8, !alias.scope !18318, !nonnull !14, !noundef !14
  %i.do = ptrtoint ptr %.val3.i.i.i.i.i61.i.i.i.i to i64
  %i.dp = ptrtoint ptr %.val.i.i.i.i.i60.i.i.i.i to i64
  %i.dq = sub nuw i64 %i.do, %i.dp
  %i.dr = udiv exact i64 %i.dq, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i.i.i: ; preds = %bb.ad, %bb.ac
  %.sroa.7.0.i.i.i.i63.i.i.i.i = phi i64 [ %i.dr, %bb.ad ], [ 0, %bb.ac ]
  %i.ds = load ptr, ptr %i.cj, align 8, !alias.scope !18317, !noundef !14
  %.not53.i.i.i.i64.i.i.i.i = icmp eq ptr %i.ds, null
  br i1 %.not53.i.i.i.i64.i.i.i.i, label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i.i.i
  %.val.i62.i.i.i.i65.i.i.i.i = load ptr, ptr %i.ck, align 8, !alias.scope !18319, !nonnull !14, !noundef !14
  %.val3.i63.i.i.i.i66.i.i.i.i = load ptr, ptr %i.cl, align 8, !alias.scope !18319, !nonnull !14, !noundef !14
  %i.dt = ptrtoint ptr %.val3.i63.i.i.i.i66.i.i.i.i to i64
  %i.du = ptrtoint ptr %.val.i62.i.i.i.i65.i.i.i.i to i64
  %i.dv = sub nuw i64 %i.dt, %i.du
  %i.dw = udiv exact i64 %i.dv, 24
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i: ; preds = %bb.ae, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i.i.i
  %.sroa.8.0.i.i.i.i68.i.i.i.i = phi i64 [ %i.dw, %bb.ae ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit.i.i.i.i62.i.i.i.i ]
  %i.dx = add nuw nsw i64 %.sroa.8.0.i.i.i.i68.i.i.i.i, %.sroa.7.0.i.i.i.i63.i.i.i.i ; 2 uses
  %i.dy = load ptr, ptr %i.cf, align 8, !alias.scope !18317, !noundef !14 ; 2 uses
  %.not54.i.i.i.i69.i.i.i.i = icmp eq ptr %i.dy, null
  %.val61.i.i.i.i70.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !18317, !nonnull !14
  %.val61.i.i.i.i70.i.i.i.i.fr = freeze ptr %.val61.i.i.i.i70.i.i.i.i
  %i.dz = icmp eq ptr %.val61.i.i.i.i70.i.i.i.i.fr, %i.dy
  %or.cond.i.i.i.i71.i.i.i.i = or i1 %.not54.i.i.i.i69.i.i.i.i, %i.dz ; 2 uses
  %spec.select89.i.i.i.i = select i1 %or.cond.i.i.i.i71.i.i.i.i, i64 %i.dx, i64 undef
  br label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i: ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i
  %.sroa.8.1.i.i.i.i = phi i64 [ %spec.select89.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ]
  %.sroa.582.0.i.i.i.i = phi i1 [ %or.cond.i.i.i.i71.i.i.i.i, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i ], [ true, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ] ; 2 uses
  %.sroa.081.0.i.i.i.i = phi i64 [ %i.dx, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtNtCs607s0NAIaWN_7segment5index20struct_payload_index13payload_indexNtB2P_18StructPayloadIndexNtNtB2R_18payload_index_base12PayloadIndex15immutable_files000EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB2T_.exit64.i.i.i.i67.i.i.i.i ], [ 0, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit.i.i.i.i ]
  %i.ea = load ptr, ptr %i.cn, align 8, !alias.scope !18313, !noundef !14
  %.not.i.i.i.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i
  %.val.i.i.i.i = load i64, ptr %i.co, align 8, !alias.scope !18313, !noundef !14
  %i.eb = icmp eq i64 %.val.i.i.i.i, 0
  %op.rdx = and i1 %i.eb, %.sroa.582.0.i.i.i.i
  %op.rdx12 = select i1 %op.rdx, i1 %.sroa.5.0.i.i.i.i, i1 false
  br i1 %op.rdx12, label %bb.ah, label %bb.aj

bb.ag:                                            ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters7flatten7FlatMapINtNtNtB5_5slice4iter4IterNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index16field_index_base11field_index10FieldIndexEINtNtBO_3map3MapINtNtNtCsexYYUdYSQU6_5alloc3vec9into_iter8IntoIterNtNtCsG258MDvU3F_3std4path7PathBufENCNCNCNvXNtNtB1X_20struct_payload_index13payload_indexNtB5a_18StructPayloadIndexNtNtB1X_18payload_index_base12PayloadIndex15immutable_files000ENCB53_0EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB1Z_.exit74.i.i.i.i
  %or.cond53.i.i.i.i = and i1 %.sroa.5.0.i.i.i.i, %.sroa.582.0.i.i.i.i
  br i1 %or.cond53.i.i.i.i, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ec = add i64 %.sroa.8.1.i.i.i.i, %.sroa.7.1.i.i.i.i
  br label %bb.aj

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE7reserveBJ_.exit.i.i: ; preds = %bb.aj, %bb.x
  %i.ed = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !18308, !nonnull !14, !noundef !14
  %i.ee = getelementptr inbounds nuw [72 x i8], ptr %i.ed, i64 %i.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ee, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.ef = add nuw nsw i64 %i.cr, 1
  store i64 %i.ef, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18307
  br label %bb.t

bb.ai:                                            ; preds = %bb.aj
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #30
          to label %bb.u unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %.sink92.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.ah ], [ %.sroa.5.i.i, %bb.ag ], [ %.sroa.5.i.i, %bb.af ]
  %.sink.i.i.i.i = phi i64 [ %i.ec, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ]
  store i64 %.sink.i.i.i.i, ptr %.sink92.i.i.sroa.phi.i.i, align 8, !alias.scope !18320, !noalias !18307
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.eh = add nuw nsw i64 %.sroa.081.0.i.i.i.i, %.sroa.0.0.i.i.i.i
  invoke void @_RINvNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef %i.cr, i64 noundef range(i64 1, 0) %i.eh, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE7reserveBJ_.exit.i.i unwind label %bb.ai

bb.ak:                                            ; preds = %bb.ai, %bb.u
  %i.ei = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1u_11collections4hash3map4IterBH_IBx_NtNtNtNtNtBL_5index11field_index16field_index_base11field_index10FieldIndexEEIB2j_INtNtNtB2r_5slice4iter4IterB3Z_EINtNtB2n_3map3MapINtNtB6_9into_iter8IntoIterB1q_ENCNCNCNvXNtNtB47_20struct_payload_index13payload_indexNtB6N_18StructPayloadIndexNtNtB47_18payload_index_base12PayloadIndex15immutable_files000ENCB6G_0ENCB6I_0EEBL_.exit.i: ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18307
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2c_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3o_EINtNtBG_3map3MapINtNtB2U_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNCNvXNtNtB3w_20struct_payload_index13payload_indexNtB6s_18StructPayloadIndexNtNtB3w_18payload_index_base12PayloadIndex15immutable_files000ENCB6l_0ENCB6n_0EEB2c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.d)
          to label %_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1F_11collections4hash3map4IterBS_IBI_NtNtNtNtNtBW_5index11field_index16field_index_base11field_index10FieldIndexEEIB2x_INtNtNtB2F_5slice4iter4IterB4d_EINtNtB2B_3map3MapINtNtB4_9into_iter8IntoIterB1B_ENCNCNCNvXNtNtB4l_20struct_payload_index13payload_indexNtB71_18StructPayloadIndexNtNtB4l_18payload_index_base12PayloadIndex15immutable_files000ENCB6U_0ENCB6W_0EE11spec_extendBW_.exit unwind label %bb.al

bb.al:                                            ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1u_11collections4hash3map4IterBH_IBx_NtNtNtNtNtBL_5index11field_index16field_index_base11field_index10FieldIndexEEIB2j_INtNtNtB2r_5slice4iter4IterB3Z_EINtNtB2n_3map3MapINtNtB6_9into_iter8IntoIterB1q_ENCNCNCNvXNtNtB47_20struct_payload_index13payload_indexNtB6N_18StructPayloadIndexNtNtB47_18payload_index_base12PayloadIndex15immutable_files000ENCB6G_0ENCB6I_0EEBL_.exit.i
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.u, %bb.al
  %eh.lpad-body = phi { ptr, i32 } [ %i.ej, %bb.al ], [ %.pn.i.i, %bb.u ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.g) #30
          to label %bb.an unwind label %bb.am

_RNvXNtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB4_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEEINtB2_10SpecExtendBR_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1F_11collections4hash3map4IterBS_IBI_NtNtNtNtNtBW_5index11field_index16field_index_base11field_index10FieldIndexEEIB2x_INtNtNtB2F_5slice4iter4IterB4d_EINtNtB2B_3map3MapINtNtB4_9into_iter8IntoIterB1B_ENCNCNCNvXNtNtB4l_20struct_payload_index13payload_indexNtB71_18StructPayloadIndexNtNtB4l_18payload_index_base12PayloadIndex15immutable_files000ENCB6U_0ENCB6W_0EE11spec_extendBW_.exit: ; preds = %_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecTNtNtCs607s0NAIaWN_7segment9json_path8JsonPathNtNtCsG258MDvU3F_3std4path7PathBufEE16extend_desugaredINtNtNtNtCskKLDkoKarTP_4core4iter8adapters7flatten7FlatMapINtNtNtNtB1u_11collections4hash3map4IterBH_IBx_NtNtNtNtNtBL_5index11field_index16field_index_base11field_index10FieldIndexEEIB2j_INtNtNtB2r_5slice4iter4IterB3Z_EINtNtB2n_3map3MapINtNtB6_9into_iter8IntoIterB1q_ENCNCNCNvXNtNtB47_20struct_payload_index13payload_indexNtB6N_18StructPayloadIndexNtNtB47_18payload_index_base12PayloadIndex15immutable_files000ENCB6G_0ENCB6I_0EEBL_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.o

bb.am:                                            ; preds = %bb.ao, %.body, %bb.p
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.an:                                            ; preds = %.body, %bb.ao
  %.pn10 = phi { ptr, i32 } [ %.pn.ph, %bb.ao ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn10

bb.ao:                                            ; preds = %bb.p, %bb.b
  %.pn.ph = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.bm, %bb.p ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtNtCsG258MDvU3F_3std11collections4hash3map4IterNtNtCs607s0NAIaWN_7segment9json_path8JsonPathINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtNtNtB2c_5index11field_index16field_index_base11field_index10FieldIndexEEIBC_INtNtNtB4_5slice4iter4IterB3o_EINtNtBG_3map3MapINtNtB2U_9into_iter8IntoIterNtNtB1q_4path7PathBufENCNCNCNvXNtNtB3w_20struct_payload_index13payload_indexNtB6s_18StructPayloadIndexNtNtB3w_18payload_index_base12PayloadIndex15immutable_files000ENCB6l_0ENCB6n_0EEB2c_(ptr noalias nofree noundef align 8 dereferenceable(264) %1) #30
          to label %bb.an unwind label %bb.am
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsexYYUdYSQU6_5alloc3vec21spec_from_iter_nestedINtB4_3VecTNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringjEEINtB2_18SpecFromIterNestedB11_INtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtB2i_10take_while9TakeWhileINtNtNtNtB6_11collections5btree3set5RangeB12_ENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB4p_17mutable_map_index9in_memory16InMemoryMapIndexeENtB4l_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB4i_s_0EE9from_iterB4v_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.f, ptr noalias nofree noundef align 8 dereferenceable(72) %1) #31
  %i.h = load i64, ptr %i.f, align 8, !range !24, !noundef !14
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit, label %bb.b

_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 4, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc5 unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c

bb.c:                                             ; preds = %.loopexit9, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void

bb.d:                                             ; preds = %bb.f, %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.o = load i8, ptr %i.n, align 1, !alias.scope !18343, !noundef !14
  %.not.i.i.i.i = icmp sgt i8 %i.o, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringjEECs607s0NAIaWN_7segment.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs7_NtCs9zPlAsQS9gd_4ecow3vecINtB5_6EcoVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs607s0NAIaWN_7segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringjEECs607s0NAIaWN_7segment.exit unwind label %bb.l

.noexc5:                                          ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit
  %i.p = load i64, ptr %i.c, align 8, !range !24, !noundef !14
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !56, !noundef !14 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %.noexc5
  %i.u = load i64, ptr %i.t, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #37
          to label %.noexc6 unwind label %bb.d

.noexc6:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc5
  %i.v = load ptr, ptr %i.t, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.w = icmp ugt i64 %i.s, 3
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  store i64 %i.s, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18344)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18346
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #31
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.g
  %i.x = load i64, ptr %i.b, align 8, !range !24, !noalias !18346, !noundef !14
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %.lr.ph.i.i, label %.loopexit9

.lr.ph.i.i:                                       ; preds = %.noexc7
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %.noexc8, %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false), !noalias !18346
  %i.aa = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18347, !noundef !14 ; 5 uses
  %i.ab = icmp ult i64 %i.aa, 384307168202282326
  call void @llvm.assume(i1 %i.ab)
  %i.ac = load i64, ptr %i.g, align 8, !range !15, !alias.scope !18347, !noundef !14
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringjEE7reserveCs607s0NAIaWN_7segment.exit.i.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringjEE7reserveCs607s0NAIaWN_7segment.exit.i.i: ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit.i.i, %bb.h
  %i.ae = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !18347, !nonnull !14, !noundef !14
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  %i.ag = add nuw nsw i64 %i.aa, 1
  store i64 %i.ag, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !18347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18346
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18346
  invoke fastcc void @_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #31
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecTNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringjEE7reserveCs607s0NAIaWN_7segment.exit.i.i
  %i.ah = load i64, ptr %i.b, align 8, !range !24, !noalias !18346, !noundef !14
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.h, label %.loopexit9

bb.i:                                             ; preds = %_RNvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB5_3MapINtNtB7_10take_while9TakeWhileINtNtNtNtCsexYYUdYSQU6_5alloc11collections5btree3set5RangeNtNtCs9zPlAsQS9gd_4ecow6string9EcoStringENCNvXNtNtNtNtNtCs607s0NAIaWN_7segment5index11field_index9map_index12prefix_index8map_readINtNtNtB3a_17mutable_map_index9in_memory16InMemoryMapIndexeENtB36_21StrMapIndexPrefixRead23prefix_keys_with_counts0ENCB33_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB3g_.exit.i.i
  %i.aj = landingpad { ptr, i32 }
end_hunk_1
