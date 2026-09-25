Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.02?download=true
inline.NumInlined: 6777
inline.NumDeleted: 3627
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendCs6u1mgJOKDyY_13rust_analyzer:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !9754, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %i.m
  %i.q = mul nuw nsw i64 %i.d, 40
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !9754
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEECs6u1mgJOKDyY_13rust_analyzer.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.c, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !9754
  %i.t = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs1lnireelaHN_13gen_lsp_types9generated10structures8TextEditEECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB7_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEINtB5_10SpecExtendBU_INtNtB7_9into_iter8IntoIterBU_EE11spec_extendB10_(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = invoke { ptr, i64 } @_RNvMs0_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE8as_sliceB12_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, i64 } %i.b, 0
  %i.d = extractvalue { ptr, i64 } %i.b, 1        ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !9759, !noundef !10 ; 5 uses
  %i.g = load i64, ptr %0, align 8, !range !13, !alias.scope !9759, !noundef !10
  %i.h = sub i64 %i.g, %i.f
  %i.i = icmp ugt i64 %i.d, %i.h
  br i1 %i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.thread.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.i, !prof !14

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.thread.i: ; preds = %bb.b
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.f, i64 noundef %i.d, i64 noundef 8, i64 noundef 88)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.thread.i
  %i.j = load i64, ptr %i.e, align 8, !alias.scope !9760, !noundef !10 ; 2 uses
  %i.k = icmp ult i64 %i.j, 104811045873349726
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.i: ; preds = %bb.b
  %i.l = icmp ult i64 %i.f, 104811045873349726
  tail call void @llvm.assume(i1 %i.l)
  %.not.i = icmp eq i64 %i.d, 0
  br i1 %.not.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEEB1l_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.i, %.noexc
  %i.m = phi i64 [ %i.j, %.noexc ], [ %i.f, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !9760, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw [88 x i8], ptr %i.o, i64 %i.m
  %i.q = mul nuw nsw i64 %i.d, 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.p, ptr readonly align 8 %i.c, i64 %i.q, i1 false)
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !9760
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEEB1l_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc7raw_vec6RawVecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEEB1l_.exit: ; preds = %bb.c, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.i
  %i.r = phi i64 [ %.pre.i, %bb.c ], [ %i.f, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.i ]
  %i.s = add i64 %i.r, %i.d
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !9760
  %i.t = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.v, ptr %i.a, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.t, ptr %i.w, align 8
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEEB1v_.exit: ; preds = %bb.d
  resume { ptr, i32 } %lpad.thr_comm

bb.d:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeE7reserveBK_.exit.thread.i, %bb.a
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB12_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs6u1mgJOKDyY_13rust_analyzer7tracing5hprof4NodeEEB1v_.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtCscFGNKo4Sl5v_9itertools11unique_impl6UniqueINtNtB7_7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide10references21ReferenceSearchResultEINtNtB7_5chain5ChainIB1Y_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtB2q_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtB7_3map3MapIB2m_B62_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB86_s_0EINtNtBb_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB5q_EEENCB88_0EENCB88_s_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB8e_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(416) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.8113.i.i.i = alloca i64, align 8         ; 8 uses
  %.sroa.14.i.i.i = alloca i64, align 8           ; 7 uses
  %.sroa.8.i.i.i = alloca i64, align 8            ; 8 uses
  %.sroa.13.i.i.i = alloca i64, align 8           ; 7 uses
  %.sroa.5.i = alloca i64, align 8                ; 6 uses
  %.sroa.8.i = alloca i64, align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9850)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9853)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9854)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.i.i.i)
  %i.a = load i64, ptr %1, align 8, !range !27, !alias.scope !9855, !noalias !9856, !noundef !10 ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.a, -3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9858)
  br i1 %.not.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9860)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9862)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.a, -2
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.c = load i32, ptr %i.b, align 8, !range !21, !alias.scope !9863, !noalias !9864, !noundef !10 ; 3 uses
  %.not7.i.i.i.i.i.i = icmp eq i32 %i.c, 2        ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i.i.i.i, label %bb.j, label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %.not7.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = zext nneg i32 %i.c to i64
  store i64 1, ptr %.sroa.8.i.i.i, align 8, !alias.scope !9865, !noalias !9866
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  store i64 1, ptr %.sroa.8.i.i.i, align 8, !alias.scope !9867, !noalias !9866
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i

bb.g:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !9868, !noalias !9869, !noundef !10
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !9870, !noalias !9871, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !9870, !noalias !9871, !nonnull !10, !noundef !10
  %i.i = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i.i to i64
  %i.j = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.sroa.7.0.i.i.i.i.i.i.i.i = phi i64 [ %i.l, %bb.h ], [ 0, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !9868, !noalias !9869, !noundef !10
  %.not53.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not53.i.i.i.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val.i61.i.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !9872, !noalias !9873, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i62.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !9872, !noalias !9873, !nonnull !10, !noundef !10
  %i.q = ptrtoint ptr %.val3.i62.i.i.i.i.i.i.i.i to i64
  %i.r = ptrtoint ptr %.val.i61.i.i.i.i.i.i.i.i to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i.i.i.i: ; preds = %bb.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i.i.i.i ]
  %i.u = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i.i.i ; 2 uses
  %.not54.i.i.i.i.i.i.i.i = icmp eq i64 %i.a, -1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !9868, !noalias !9869
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i.i.i.i = select i1 %.not54.i.i.i.i.i.i.i.i, i1 true, i1 %i.w ; 3 uses
  %spec.select.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i64 %i.u, i64 undef
  %i.x = zext nneg i32 %i.c to i64
  %i.y = add i64 %spec.select.i.i.i.i.i.i, %i.x   ; 2 uses
  %i.z = icmp uge i64 %i.y, %i.u
  %.sroa.46.0.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i64 %i.y, i64 undef
  %narrow.i.i.i.i.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i, i1 %i.z, i1 false
  %.sroa.05.0.i.i.i.i.i.i = zext i1 %narrow.i.i.i.i.i.i to i64
  store i64 %.sroa.05.0.i.i.i.i.i.i, ptr %.sroa.8.i.i.i, align 8, !alias.scope !9867, !noalias !9866
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i

bb.j:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9877)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !9878, !noalias !9879, !noundef !10
  %.not.i.i11.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i11.i.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val.i.i.i12.i.i.i.i.i.i = load ptr, ptr %i.ac, align 8, !alias.scope !9880, !noalias !9881, !nonnull !10, !noundef !10
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i.i.i13.i.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !9880, !noalias !9881, !nonnull !10, !noundef !10
  %i.ae = ptrtoint ptr %.val3.i.i.i13.i.i.i.i.i.i to i64
  %i.af = ptrtoint ptr %.val.i.i.i12.i.i.i.i.i.i to i64
  %i.ag = sub nuw i64 %i.ae, %i.af
  %i.ah = udiv exact i64 %i.ag, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.sroa.7.0.i.i15.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.k ], [ 0, %bb.j ]
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !9878, !noalias !9879, !noundef !10
  %.not53.i.i16.i.i.i.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not53.i.i16.i.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val.i61.i.i17.i.i.i.i.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !9882, !noalias !9883, !nonnull !10, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.val3.i62.i.i18.i.i.i.i.i.i = load ptr, ptr %i.al, align 8, !alias.scope !9882, !noalias !9883, !nonnull !10, !noundef !10
  %i.am = ptrtoint ptr %.val3.i62.i.i18.i.i.i.i.i.i to i64
  %i.an = ptrtoint ptr %.val.i61.i.i17.i.i.i.i.i.i to i64
  %i.ao = sub nuw i64 %i.am, %i.an
  %i.ap = udiv exact i64 %i.ao, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i: ; preds = %bb.l, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i.i.i.i
  %.sroa.8.0.i.i20.i.i.i.i.i.i = phi i64 [ %i.ap, %bb.l ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i.i.i.i ]
  %.not54.i.i21.i.i.i.i.i.i = icmp eq i64 %i.a, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val.i.i22.i.i.i.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !9878, !noalias !9879
  %i.ar = icmp eq i64 %.val.i.i22.i.i.i.i.i.i, 0
  %or.cond.i.i23.i.i.i.i.i.i = select i1 %.not54.i.i21.i.i.i.i.i.i, i1 true, i1 %i.ar
  br i1 %or.cond.i.i23.i.i.i.i.i.i, label %bb.m, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i

bb.m:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i
  %i.as = add nuw nsw i64 %.sroa.8.0.i.i20.i.i.i.i.i.i, %.sroa.7.0.i.i15.i.i.i.i.i.i
  store i64 %i.as, ptr %.sroa.13.i.i.i, align 8, !alias.scope !9884, !noalias !9885
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i: ; preds = %bb.m, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i.i.i.i, %bb.f, %bb.e
  %.sink32.i.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.13.i.i.i, %bb.f ], [ %.sroa.13.i.i.i, %bb.e ], [ %.sroa.13.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i.i.i.i ], [ %.sroa.8.i.i.i, %bb.m ], [ %.sroa.8.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i ]
  %.sroa.46.0.sink.i.i.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.d, %bb.e ], [ %.sroa.46.0.i.i.i.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i.i.i.i ], [ 1, %bb.m ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i.i.i.i ]
  store i64 %.sroa.46.0.sink.i.i.i.i.i.i, ptr %.sink32.i.i.i.sroa.phi.i.i.i, align 8, !alias.scope !9867, !noalias !9866
  %.sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.8..pre.i.i.i = load i64, ptr %.sroa.8.i.i.i, align 8, !range !18, !noalias !9886
  %.sroa.13.i.i.i.0..sroa.13.i.i.i.0..sroa.13.i.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.16..pre.i.i.i = load i64, ptr %.sroa.13.i.i.i, align 8, !noalias !9886
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i, %bb.a
  %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i = phi i64 [ %.sroa.13.i.i.i.0..sroa.13.i.i.i.0..sroa.13.i.i.i.0..sroa.13.i.i.0..sroa.13.i.i.0..sroa.13.i.0..sroa.13.i.0..sroa.13.0..sroa.13.0..sroa.13.16..pre.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i = phi i64 [ %.sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.8..pre.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i.i.i.i ], [ 1, %bb.a ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8113.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.au = load i64, ptr %i.at, align 8, !range !27, !alias.scope !9855, !noalias !9856, !noundef !10 ; 4 uses
  %.not53.i.i.i = icmp eq i64 %i.au, -3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9887)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9888)
  br i1 %.not53.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit99.i.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9889)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9890)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9891)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9892)
  %.not.i.i.i62.i.i.i = icmp eq i64 %i.au, -2
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.aw = load i32, ptr %i.av, align 8, !range !21, !alias.scope !9893, !noalias !9894, !noundef !10 ; 3 uses
  %.not7.i.i.i63.i.i.i = icmp eq i32 %i.aw, 2     ; 2 uses
  br i1 %.not.i.i.i62.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not7.i.i.i63.i.i.i, label %bb.v, label %bb.s

bb.p:                                             ; preds = %bb.n
  br i1 %.not7.i.i.i63.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = zext nneg i32 %i.aw to i64
  store i64 1, ptr %.sroa.8113.i.i.i, align 8, !alias.scope !9895, !noalias !9896
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i

bb.r:                                             ; preds = %bb.p
  store i64 1, ptr %.sroa.8113.i.i.i, align 8, !alias.scope !9897, !noalias !9896
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i

bb.s:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !9898, !noalias !9899, !noundef !10
  %.not.i.i.i.i.i64.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i64.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i67.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val.i.i.i.i.i.i65.i.i.i = load ptr, ptr %i.ba, align 8, !alias.scope !9900, !noalias !9901, !nonnull !10, !noundef !10
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val3.i.i.i.i.i.i66.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !9900, !noalias !9901, !nonnull !10, !noundef !10
  %i.bc = ptrtoint ptr %.val3.i.i.i.i.i.i66.i.i.i to i64
  %i.bd = ptrtoint ptr %.val.i.i.i.i.i.i65.i.i.i to i64
  %i.be = sub nuw i64 %i.bc, %i.bd
  %i.bf = udiv exact i64 %i.be, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i67.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i67.i.i.i: ; preds = %bb.t, %bb.s
  %.sroa.7.0.i.i.i.i.i68.i.i.i = phi i64 [ %i.bf, %bb.t ], [ 0, %bb.s ]
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bh = load ptr, ptr %i.bg, align 8, !alias.scope !9898, !noalias !9899, !noundef !10
  %.not53.i.i.i.i.i69.i.i.i = icmp eq ptr %i.bh, null
  br i1 %.not53.i.i.i.i.i69.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i72.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i67.i.i.i
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i61.i.i.i.i.i70.i.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !9902, !noalias !9903, !nonnull !10, !noundef !10
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.val3.i62.i.i.i.i.i71.i.i.i = load ptr, ptr %i.bj, align 8, !alias.scope !9902, !noalias !9903, !nonnull !10, !noundef !10
  %i.bk = ptrtoint ptr %.val3.i62.i.i.i.i.i71.i.i.i to i64
  %i.bl = ptrtoint ptr %.val.i61.i.i.i.i.i70.i.i.i to i64
  %i.bm = sub nuw i64 %i.bk, %i.bl
  %i.bn = udiv exact i64 %i.bm, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i72.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i72.i.i.i: ; preds = %bb.u, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i67.i.i.i
  %.sroa.8.0.i.i.i.i.i73.i.i.i = phi i64 [ %i.bn, %bb.u ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i.i.i.i67.i.i.i ]
  %i.bo = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i73.i.i.i, %.sroa.7.0.i.i.i.i.i68.i.i.i ; 2 uses
  %.not54.i.i.i.i.i74.i.i.i = icmp eq i64 %i.au, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val.i.i.i.i.i75.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !9898, !noalias !9899
  %i.bq = icmp eq i64 %.val.i.i.i.i.i75.i.i.i, 0
  %or.cond.i.i.i.i.i76.i.i.i = select i1 %.not54.i.i.i.i.i74.i.i.i, i1 true, i1 %i.bq ; 3 uses
  %spec.select.i.i.i77.i.i.i = select i1 %or.cond.i.i.i.i.i76.i.i.i, i64 %i.bo, i64 undef
  %i.br = zext nneg i32 %i.aw to i64
  %i.bs = add i64 %spec.select.i.i.i77.i.i.i, %i.br ; 2 uses
  %i.bt = icmp uge i64 %i.bs, %i.bo
  %.sroa.46.0.i.i.i78.i.i.i = select i1 %or.cond.i.i.i.i.i76.i.i.i, i64 %i.bs, i64 undef
  %narrow.i.i.i79.i.i.i = select i1 %or.cond.i.i.i.i.i76.i.i.i, i1 %i.bt, i1 false
  %.sroa.05.0.i.i.i80.i.i.i = zext i1 %narrow.i.i.i79.i.i.i to i64
  store i64 %.sroa.05.0.i.i.i80.i.i.i, ptr %.sroa.8113.i.i.i, align 8, !alias.scope !9897, !noalias !9896
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i

bb.v:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9904)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9907)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !9908, !noalias !9909, !noundef !10
  %.not.i.i11.i.i.i84.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i11.i.i.i84.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i87.i.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.val.i.i.i12.i.i.i85.i.i.i = load ptr, ptr %i.bw, align 8, !alias.scope !9910, !noalias !9911, !nonnull !10, !noundef !10
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val3.i.i.i13.i.i.i86.i.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !9910, !noalias !9911, !nonnull !10, !noundef !10
  %i.by = ptrtoint ptr %.val3.i.i.i13.i.i.i86.i.i.i to i64
  %i.bz = ptrtoint ptr %.val.i.i.i12.i.i.i85.i.i.i to i64
  %i.ca = sub nuw i64 %i.by, %i.bz
  %i.cb = udiv exact i64 %i.ca, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i87.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i87.i.i.i: ; preds = %bb.w, %bb.v
  %.sroa.7.0.i.i15.i.i.i88.i.i.i = phi i64 [ %i.cb, %bb.w ], [ 0, %bb.v ]
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !9908, !noalias !9909, !noundef !10
  %.not53.i.i16.i.i.i89.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not53.i.i16.i.i.i89.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i, label %bb.x

bb.x:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i87.i.i.i
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val.i61.i.i17.i.i.i90.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !9912, !noalias !9913, !nonnull !10, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.val3.i62.i.i18.i.i.i91.i.i.i = load ptr, ptr %i.cf, align 8, !alias.scope !9912, !noalias !9913, !nonnull !10, !noundef !10
  %i.cg = ptrtoint ptr %.val3.i62.i.i18.i.i.i91.i.i.i to i64
  %i.ch = ptrtoint ptr %.val.i61.i.i17.i.i.i90.i.i.i to i64
  %i.ci = sub nuw i64 %i.cg, %i.ch
  %i.cj = udiv exact i64 %i.ci, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i: ; preds = %bb.x, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i87.i.i.i
  %.sroa.8.0.i.i20.i.i.i93.i.i.i = phi i64 [ %i.cj, %bb.x ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit.i.i14.i.i.i87.i.i.i ]
  %.not54.i.i21.i.i.i94.i.i.i = icmp eq i64 %i.au, -1
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 216
  %.val.i.i22.i.i.i95.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !9908, !noalias !9909
  %i.cl = icmp eq i64 %.val.i.i22.i.i.i95.i.i.i, 0
  %or.cond.i.i23.i.i.i96.i.i.i = select i1 %.not54.i.i21.i.i.i94.i.i.i, i1 true, i1 %i.cl
  br i1 %or.cond.i.i23.i.i.i96.i.i.i, label %bb.y, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i

bb.y:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i
  %i.cm = add nuw nsw i64 %.sroa.8.0.i.i20.i.i.i93.i.i.i, %.sroa.7.0.i.i15.i.i.i88.i.i.i
  store i64 %i.cm, ptr %.sroa.14.i.i.i, align 8, !alias.scope !9914, !noalias !9915
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i: ; preds = %bb.y, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i72.i.i.i, %bb.r, %bb.q
  %.sink32.i.i.i82.sroa.phi.i.i.i = phi ptr [ %.sroa.14.i.i.i, %bb.r ], [ %.sroa.14.i.i.i, %bb.q ], [ %.sroa.14.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i72.i.i.i ], [ %.sroa.8113.i.i.i, %bb.y ], [ %.sroa.8113.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i ]
  %.sroa.46.0.sink.i.i.i83.i.i.i = phi i64 [ 0, %bb.r ], [ %i.ax, %bb.q ], [ %.sroa.46.0.i.i.i78.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i.i.i.i72.i.i.i ], [ 1, %bb.y ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB3Q_.exit63.i.i19.i.i.i92.i.i.i ]
  store i64 %.sroa.46.0.sink.i.i.i83.i.i.i, ptr %.sink32.i.i.i82.sroa.phi.i.i.i, align 8, !alias.scope !9897, !noalias !9896
  %.sroa.8113.i.i.i.0..sroa.8113.i.i.i.0..sroa.8113.i.i.i.0..sroa.8113.i.i.0..sroa.8113.i.i.0..sroa.8113.i.0..sroa.8113.i.0..sroa.8113.0..sroa.8113.0..sroa.8113.8..pre.i.i.i = load i64, ptr %.sroa.8113.i.i.i, align 8, !range !18, !noalias !9886
  %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.16..pre.i.i.i = load i64, ptr %.sroa.14.i.i.i, align 8, !noalias !9886
  %i.cn = freeze i64 %.sroa.8113.i.i.i.0..sroa.8113.i.i.i.0..sroa.8113.i.i.i.0..sroa.8113.i.i.0..sroa.8113.i.i.0..sroa.8113.i.0..sroa.8113.i.0..sroa.8113.0..sroa.8113.0..sroa.8113.8..pre.i.i.i
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit99.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit99.i.i.i: ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i
  %.sroa.14.0..sroa.14.0..sroa.14.16..i.i.i = phi i64 [ %.sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.i.0..sroa.14.i.i.0..sroa.14.i.i.0..sroa.14.i.0..sroa.14.i.0..sroa.14.0..sroa.14.0..sroa.14.16..pre.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i ]
  %.sroa.8113.0..sroa.8113.0..sroa.8113.8..i.i.i = phi i64 [ %i.cn, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBa_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBa_3map3MapINtNtB2L_9into_iter8IntoIterB3f_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB5G_s_0EINtNtBe_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2h_EEENtNtNtBc_6traits8iterator8Iterator9size_hintINtNtNtBe_3ops8function6FnOnceTRB5_EE9call_onceB5O_.exit.i81.i.i.i ], [ 1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8113.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i)
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !9855, !noalias !9856, !noundef !10
  %.not54.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not54.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit99.i.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 328
  %.val.i.i.i = load ptr, ptr %i.cq, align 8, !alias.scope !9855, !noalias !9856, !nonnull !10, !noundef !10
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 344
  %.val61.i.i.i = load ptr, ptr %i.cr, align 8, !alias.scope !9855, !noalias !9856, !nonnull !10, !noundef !10
  %i.cs = icmp eq ptr %.val61.i.i.i, %.val.i.i.i
  %i.ct = trunc nuw i64 %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i to i1
  %i.cu = trunc i64 %.sroa.8113.0..sroa.8113.0..sroa.8113.8..i.i.i to i1
  %op.rdx = and i1 %i.cs, %i.cu
  %op.rdx5 = select i1 %op.rdx, i1 %i.ct, i1 false
  br i1 %op.rdx5, label %bb.ab, label %_RNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB5_6UniqueINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide10references21ReferenceSearchResultEINtNtB10_5chain5ChainIBW_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtB1W_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtB10_3map3MapIB1S_B5y_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB7D_s_0EINtNtB14_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB4W_EEENCB7F_0EENtNtNtB12_6traits8iterator8Iterator9size_hintB7L_.exit

bb.aa:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters5chain5ChainINtNtBO_7flatten7FlatMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtBO_3map3MapINtNtB39_9into_iter8IntoIterB3D_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB64_s_0EINtB3_8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB2F_EEEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB6c_.exit99.i.i.i
  %i.cv = and i64 %.sroa.8113.0..sroa.8113.0..sroa.8113.8..i.i.i, %.sroa.8.0..sroa.8.0..sroa.8.8..i.i.i
  %or.cond55.not.i.i.i = icmp eq i64 %i.cv, 0
  br i1 %or.cond55.not.i.i.i, label %_RNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB5_6UniqueINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide10references21ReferenceSearchResultEINtNtB10_5chain5ChainIBW_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtB1W_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtB10_3map3MapIB1S_B5y_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB7D_s_0EINtNtB14_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB4W_EEENCB7F_0EENtNtNtB12_6traits8iterator8Iterator9size_hintB7L_.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cw = add i64 %.sroa.14.0..sroa.14.0..sroa.14.16..i.i.i, %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i ; 2 uses
  %i.cx = icmp uge i64 %i.cw, %.sroa.13.0..sroa.13.0..sroa.13.16..i.i.i
  %.56.i.i.i = zext i1 %i.cx to i64
  store i64 %.56.i.i.i, ptr %.sroa.5.i, align 8, !alias.scope !9916, !noalias !9917
  br label %_RNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB5_6UniqueINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide10references21ReferenceSearchResultEINtNtB10_5chain5ChainIBW_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtB1W_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtB10_3map3MapIB1S_B5y_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB7D_s_0EINtNtB14_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB4W_EEENCB7F_0EENtNtNtB12_6traits8iterator8Iterator9size_hintB7L_.exit

_RNvXs2_NtCscFGNKo4Sl5v_9itertools11unique_implINtB5_6UniqueINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtCslLuZgPVt6hg_3ide10references21ReferenceSearchResultEINtNtB10_5chain5ChainIBW_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterNtCs4sl5YdnrCxp_3vfs6FileIdINtB1W_3VecTNtNtCsuAhG64lL82_9text_size5range9TextRangeNtNtCs6oosyzwIepl_6ide_db6search17ReferenceCategoryEEEINtNtB10_3map3MapIB1S_B5y_ENCNCNCNvNtNtCs6u1mgJOKDyY_13rust_analyzer8handlers7request17handle_references0s_00ENCB7D_s_0EINtNtB14_6option8IntoIterINtNtCs33K2ylI4knu_10hir_expand5files16FileRangeWrapperB4W_EEENCB7F_0EENtNtNtB12_6traits8iterator8Iterator9size_hintB7L_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %.sink126.i.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.ab ], [ %.sroa.5.i, %bb.aa ], [ %.sroa.5.i, %bb.z ]
  %.sink.i.i.i = phi i64 [ %i.cw, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ]
  store i64 %.sink.i.i.i, ptr %.sink126.i.i.sroa.phi.i, align 8, !alias.scope !9916, !noalias !9917
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !range !18, !noalias !9918, !noundef !10
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !9918
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  store i64 0, ptr %0, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i, ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, ptr %i.cz, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_10filter_map9FilterMapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEENCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtB3q_12global_state11GlobalState15reload_flycheck0ENCB3l_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB3q_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [32 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.0.i.i = alloca [144 x i8], align 8       ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [80 x i8], align 8                ; 6 uses
  %i.u = alloca [216 x i8], align 8               ; 16 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [8 x i8], align 8                 ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [80 x i8], align 8                ; 6 uses
  %i.z = alloca [152 x i8], align 8               ; 13 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9977)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9978)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9979)
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9980)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9981
  store ptr %i.ab, ptr %i.aa, align 8, !noalias !9982
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !9982
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !9983, !noalias !9984, !nonnull !10, !noundef !10 ; 2 uses
  %.promoted.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !9983, !noalias !9984 ; 2 uses
  %i.ag = icmp eq ptr %.promoted.i.i.i.i, %i.af
  br i1 %i.ag, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %bb.b
  %i.ah = phi ptr [ %i.ai, %bb.b ], [ %.promoted.i.i.i.i, %bb.a ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 704 ; 3 uses
  store ptr %i.ai, ptr %1, align 8, !alias.scope !9983, !noalias !9984
  call void @llvm.experimental.noalias.scope.decl(metadata !9985)
  %i.aj = load ptr, ptr %i.ad, align 8, !alias.scope !9985, !noalias !9986, !nonnull !10, !align !15, !noundef !10
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !9987, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9988
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtCs6u1mgJOKDyY_13rust_analyzer6reloadNtNtBV_12global_state11GlobalState15reload_flycheck0INtB7_5FnMutTTjRNtNtCsdcPuHeDsw6v_13project_model9workspace16ProjectWorkspaceEEE8call_mutBV_(ptr noalias nofree noundef nonnull sret([152 x i8]) align 8 captures(address) dereferenceable(152) %i.z, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.aa, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(704) %i.ah), !noalias !9989
  %i.al = load i64, ptr %i.z, align 8, !range !24, !noalias !9988, !noundef !10 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.al, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !9988
  %i.am = load ptr, ptr %i.ad, align 8, !alias.scope !9985, !noalias !9986, !nonnull !10, !align !15, !noundef !10 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noalias !9990, !noundef !10
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.am, align 8, !noalias !9990
  %i.ap = icmp eq ptr %i.ai, %i.af
  br i1 %i.ap, label %.loopexit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %.sroa.5.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.43.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.5.0..sroa_idx2.i.i.i.i.i, i64 72, i1 false)
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx, align 8, !noalias !9992 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 88
  %.sroa.5.sroa.5.0.copyload = load i64, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx, align 8, !noalias !9992
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %.sroa.5.sroa.6.0.copyload = load ptr, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx, align 8, !noalias !9992 ; 2 uses
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx2.i.i.i.i.i.sroa_idx, align 8, !noalias !9992 ; 2 uses
end_hunk_0
