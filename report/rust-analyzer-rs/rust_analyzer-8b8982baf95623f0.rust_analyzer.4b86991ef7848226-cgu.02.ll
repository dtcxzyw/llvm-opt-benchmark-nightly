Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/rust_analyzer-8b8982baf95623f0.rust_analyzer.4b86991ef7848226-cgu.02?download=true
inline.NumInlined: 6777
inline.NumDeleted: 3627
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB2m_INtNtB2q_7flatten7FlattenINtNtB2u_6option8IntoIterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB51_12global_state11GlobalState3runs_0ENCINvB4V_28register_did_save_capabilityB39_E0EE11spec_extendB51_:bb.a
_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.loopexit.split-lp.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.loopexit.split-lp.i.i.i.i ]
  store ptr null, ptr %i.e, align 8, !alias.scope !4123, !noalias !4124
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i
  store ptr null, ptr %i.e, align 8, !alias.scope !4123, !noalias !4124
  %.pre.i.i.i.i = load i64, ptr %1, align 8, !range !18, !alias.scope !4134, !noalias !4147
  call void @llvm.experimental.noalias.scope.decl(metadata !4148)
  %i.y = trunc nuw i64 %.pre.i.i.i.i to i1
  br i1 %i.y, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4149)
  %.sroa.0.0.copyload10.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4150, !noalias !4138 ; 2 uses
  store ptr null, ptr %i.h, align 8, !alias.scope !4139, !noalias !4151
  %.not1.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload10.i.i.i.i.i, null
  br i1 %.not1.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, !llvm.loop !4085

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i.peel.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.peel.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4152)
  %i.z = load ptr, ptr %i.i, align 8, !alias.scope !4153, !noalias !4154, !noundef !10
  %.not.i2.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i2.i.i.i.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.thread.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4155)
  call void @llvm.experimental.noalias.scope.decl(metadata !4156)
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !4157, !noalias !4158, !nonnull !10, !noundef !10
  %i.ab = load ptr, ptr %i.k, align 8, !alias.scope !4157, !noalias !4158, !nonnull !10, !noundef !10 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, %i.aa
  br i1 %i.ac, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i8.i.i.i.i.i, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i3.i.i.i.i.i

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i3.i.i.i.i.i: ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr %i.ad, ptr %i.k, align 8, !alias.scope !4157, !noalias !4158
  %.sroa.021.0.copyload.i.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !4159 ; 2 uses
  %.not6.i5.i.i.i.i.i = icmp eq i64 %.sroa.021.0.copyload.i.i.i.i.i, -1
  br i1 %.not6.i5.i.i.i.i.i, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i8.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i8.i.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i3.i.i.i.i.i, %bb.d
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread8.i.i.i unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i6.i.i.i.i.i, !noalias !4160

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread8.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i8.i.i.i.i.i
  store ptr null, ptr %i.i, align 8, !alias.scope !4153, !noalias !4154
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.thread.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i6.i.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i8.i.i.i.i.i
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.i, align 8, !alias.scope !4153, !noalias !4154
  br label %.body.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i3.i.i.i.i.i, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.peel.i.i.i.i
  %.sink.i.i = phi ptr [ %i.ab, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i3.i.i.i.i.i ], [ %i.p, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.peel.i.i.i.i ], [ %i.v, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i ]
  %.sroa.0.14.i.i.i = phi i64 [ %.sroa.021.0.copyload.i.i.i.i.i, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i3.i.i.i.i.i ], [ %.sroa.018.0.copyload.i.peel.i.i.i.i, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.peel.i.i.i.i ], [ %.sroa.018.0.copyload.i.i.i.i.i, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBc_6string6StringENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1n_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i ]
  %.sroa.623.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !4161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i.i, i64 16, i1 false), !noalias !4162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4162
  store i64 %.sroa.0.14.i.i.i, ptr %i.b, align 8, !noalias !4162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4163
  store ptr %i.b, ptr %i.a, align 8, !noalias !4163
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !4163
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @20, ptr noundef nonnull %i.a)
          to label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.i.i unwind label %bb.e, !noalias !4161

bb.e:                                             ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.f, !noalias !4164

bb.f:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !4164
  unreachable

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.thread.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1t_6string6StringEEEINtB5_8FuseImplBY_E4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread8.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  br label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB28_INtNtB2c_7flatten7FlattenINtNtB2g_6option8IntoIterINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB4N_12global_state11GlobalState3runs_0ENCINvB4H_28register_did_save_capabilityB2V_E0EEB4N_.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1z_6string6StringEEENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4163
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc.i unwind label %bb.g

.noexc.i:                                         ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4162
  %.sroa.0.0.copyload2.i.i = load i64, ptr %i.c, align 8, !noalias !4165 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx3.i.i, i64 16, i1 false), !noalias !4165
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4162
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i)
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload2.i.i, -1
  br i1 %.not.i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB28_INtNtB2c_7flatten7FlattenINtNtB2g_6option8IntoIterINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB4N_12global_state11GlobalState3runs_0ENCINvB4H_28register_did_save_capabilityB2V_E0EEB4N_.exit, label %bb.h

.body.i:                                          ; preds = %bb.l, %bb.g, %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i6.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i
  %.pn.i = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %i.ah, %bb.g ], [ %i.ae, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i6.i.i.i.i.i ], [ %lpad.phi.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i ], [ %i.af, %bb.e ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB26_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB3m_12global_state11GlobalState3runs_0ENCINvB3g_28register_did_save_capabilityB19_E0EEB3m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1) #30
          to label %bb.n unwind label %bb.m

bb.g:                                             ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.h:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.i, i64 16, i1 false), !noalias !4166
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  store i64 -2, ptr %i.d, align 8, !noalias !4166
  store i64 2, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !4166
  store i64 -1, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4166
  store i64 -1, ptr %.sroa.94.0..sroa_idx.i, align 8, !noalias !4166
  store i64 -1, ptr %.sroa.105.0..sroa_idx.i, align 8, !noalias !4166
  store i64 %.sroa.0.0.copyload2.i.i, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !4166
  %i.ai = load i64, ptr %i.l, align 8, !alias.scope !4118, !noalias !4119, !noundef !10 ; 5 uses
  %i.aj = icmp ult i64 %i.ai, 42700796466920259
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %0, align 8, !range !13, !alias.scope !4118, !noalias !4119, !noundef !10
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.e, align 8, !alias.scope !4167, !noalias !4168, !noundef !10
  %.not.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4169, !noalias !4170, !nonnull !10, !noundef !10
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4169, !noalias !4170, !nonnull !10, !noundef !10
  %i.an = ptrtoint ptr %.val3.i.i.i.i.i.i to i64
  %i.ao = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = udiv exact i64 %i.ap, 24
  %i.ar = add nuw nsw i64 %i.aq, 1
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %.sroa.7.0.i.i.i.i.i = phi i64 [ %i.ar, %bb.j ], [ 1, %bb.i ]
  %i.as = load ptr, ptr %i.i, align 8, !alias.scope !4167, !noalias !4168, !noundef !10
  %.not53.i.i.i.i.i = icmp eq ptr %i.as, null
  br i1 %.not53.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.val.i60.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4171, !noalias !4172, !nonnull !10, !noundef !10
  %.val3.i61.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !4171, !noalias !4172, !nonnull !10, !noundef !10
  %i.at = ptrtoint ptr %.val3.i61.i.i.i.i.i to i64
  %i.au = ptrtoint ptr %.val.i60.i.i.i.i.i to i64
  %i.av = sub nuw i64 %i.at, %i.au
  %i.aw = udiv exact i64 %i.av, 24
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i.i.i

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i.i.i, %bb.h
  %i.ax = load ptr, ptr %i.m, align 8, !alias.scope !4118, !noalias !4119, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw [216 x i8], ptr %i.ax, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.ay, ptr noundef nonnull align 8 dereferenceable(216) %i.d, i64 216, i1 false)
  %i.az = add nuw nsw i64 %i.ai, 1
  store i64 %i.az, ptr %i.l, align 8, !alias.scope !4118, !noalias !4119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4166
  br label %bb.b

bb.l:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i.i.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(216) %i.d) #30
          to label %.body.i unwind label %bb.m

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit62.i.i.i.i.i: ; preds = %bb.k, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i = phi i64 [ %i.aw, %bb.k ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtBQ_6string6StringEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i ]
  %i.bb = add nuw nsw i64 %.sroa.7.0.i.i.i.i.i, %.sroa.8.0.i.i.i.i.i
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.ai, i64 noundef range(i64 1, 0) %i.bb, i64 noundef 8, i64 noundef 216)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.l

bb.m:                                             ; preds = %bb.l, %.body.i
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.n:                                             ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs1lnireelaHN_13gen_lsp_types9generated8enum_ors14DocumentFilterE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapIB28_INtNtB2c_7flatten7FlattenINtNtB2g_6option8IntoIterINtNtB6_9into_iter8IntoIterNtNtB8_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB4N_12global_state11GlobalState3runs_0ENCINvB4H_28register_did_save_capabilityB2V_E0EEB4N_.exit: ; preds = %.noexc.i, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB1P_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB35_12global_state11GlobalState3runs_0ENtNtNtB9_6traits8iterator8Iterator4nextB35_.exit.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapIBC_INtNtBG_7flatten7FlattenINtNtB4_6option8IntoIterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtB26_6string6StringEEENCNvMs0_NtCs6u1mgJOKDyY_13rust_analyzer9main_loopNtNtB3m_12global_state11GlobalState3runs_0ENCINvB3g_28register_did_save_capabilityB19_E0EEB3m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB1Z_INtNtB23_6filter6FilterINtNtB23_7flatten7FlatMapIB36_IB3t_IB1Z_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtBX_8ScopeDefENCINvNtBV_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EIBI_NtBX_4ImplENCB5f_s_0ENCB5f_s0_0EIBI_NtBX_9AssocItemENCB5f_s1_0ENCB5f_s2_0ENvMs10_BX_B70_8as_constENCB5f_s3_0EE11spec_extendCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i.i = alloca i64, align 8          ; 3 uses
  %.sroa.7.i.i.i.i = alloca i64, align 8          ; 3 uses
  %i.a = alloca [72 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 6 uses
  %i.c = alloca [72 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 16               ; 8 uses
  %.sroa.5.i.i.i = alloca [64 x i8], align 8      ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4268)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 12 uses
  %.sroa.7.0..sroa_idx28.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 7 uses
  %.sroa.741.0..sroa_idx42.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.f, i64 1
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4269)
  call void @llvm.experimental.noalias.scope.decl(metadata !4270)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4271)
  call void @llvm.experimental.noalias.scope.decl(metadata !4272)
  call void @llvm.experimental.noalias.scope.decl(metadata !4273)
  call void @llvm.experimental.noalias.scope.decl(metadata !4274)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4275
  store <2 x ptr> %3, ptr %i.d, align 16, !noalias !4276
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 16, !noalias !4276
  call void @llvm.experimental.noalias.scope.decl(metadata !4277)
  %i.x = load ptr, ptr %i.h, align 8, !alias.scope !4278, !noalias !4279, !noundef !10
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4280
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1y_8adapters6filter15filter_try_foldBX_uINtNtNtB1A_3ops12control_flow11ControlFlowNtNtNtBZ_11term_search4expr4ExprENCINvNtB46_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB2F_10filter_map19filter_map_try_foldBX_NtBZ_5ConstuB3m_NvMs10_BZ_BX_8as_constNCINvNvB1s_8find_map5checkB6w_B42_QNCB4B_s3_0E0E0E0B3m_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc.i unwind label %bb.r

.noexc.i:                                         ; preds = %bb.c
  %i.y = load i64, ptr %i.c, align 8, !range !62, !alias.scope !4281, !noalias !4282, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4280
  %.pr.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4283, !noalias !4279
  %i.z = icmp eq ptr %.pr.i.i.i.i.i.i.i.i, null
  br i1 %i.z, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !4284

bb.f:                                             ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx28.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !4285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4280
  br label %bb.s

bb.g:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.h, align 8, !alias.scope !4278, !noalias !4279
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d, %bb.b
  store ptr null, ptr %i.h, align 8, !alias.scope !4278, !noalias !4279
  call void @llvm.experimental.noalias.scope.decl(metadata !4286)
  %i.ab = load ptr, ptr %i.g, align 8, !alias.scope !4287, !noalias !4288, !noundef !10
  %.not.i18.i.i.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i18.i.i.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4289
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_7flatten7FlatMapINtNtB8_10filter_map9FilterMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtCs8Xq8PKFYOms_3hir8ScopeDefENCINvNtNtB35_11term_search7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB35_4ImplENCB3z_s_0ENCB3z_s0_0ENCB3z_s1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvMsg_B1m_INtB1m_13FlattenCompatppE13iter_try_fold7flattenIB4X_NtB35_9AssocItemEuINtNtNtBc_3ops12control_flow11ControlFlowNtNtB3E_4expr4ExprENCINvNvXsi_B1m_B78_B6b_8try_fold7flattenINtNtB4Z_9into_iter8IntoIterB7Z_EuB8h_NCINvB10_15filter_try_foldB7Z_uB8h_NCB3z_s2_0NCINvB1K_19filter_map_try_foldB7Z_NtB35_5ConstuB8h_NvMs10_B35_B7Z_8as_constNCINvNvB6b_8find_map5checkBbM_B8W_QNCB3z_s3_0E0E0E0E0E0B8h_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %.noexc3.i unwind label %bb.r

.noexc3.i:                                        ; preds = %bb.h
  %i.ac = load i64, ptr %i.a, align 8, !range !62, !alias.scope !4290, !noalias !4291, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ac, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc3.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx3.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !4285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4289
  br label %bb.s

bb.j:                                             ; preds = %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4289
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !4292, !noalias !4279
  %i.ad = icmp eq ptr %.pre.i.i.i.i.i.i.i.i, null
  br i1 %i.ad, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i.i.i unwind label %bb.l, !noalias !4284

bb.l:                                             ; preds = %bb.k
  %i.ae = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.h, align 8, !alias.scope !4278, !noalias !4279
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i
  store ptr null, ptr %i.h, align 8, !alias.scope !4278, !noalias !4279
  %i.af = load ptr, ptr %i.i, align 8, !alias.scope !4278, !noalias !4279, !noundef !10
  %.not15.i.i.i.i.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not15.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB1L_INtNtB1P_6filter6FilterINtNtB1P_7flatten7FlatMapIB2S_IB3f_IB1L_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtBM_8ScopeDefENCINvNtBK_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EIBx_NtBM_4ImplENCB51_s_0ENCB51_s0_0EIBx_NtBM_9AssocItemENCB51_s1_0ENCB51_s2_0ENvMs10_BM_B6M_8as_constENCB51_s3_0EECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4280
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1y_8adapters6filter15filter_try_foldBX_uINtNtNtB1A_3ops12control_flow11ControlFlowNtNtNtBZ_11term_search4expr4ExprENCINvNtB46_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseEs2_0NCINvNtB2F_10filter_map19filter_map_try_foldBX_NtBZ_5ConstuB3m_NvMs10_BZ_BX_8as_constNCINvNvB1s_8find_map5checkB6w_B42_QNCB4B_s3_0E0E0E0B3m_ECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.noexc4.i unwind label %bb.r

.noexc4.i:                                        ; preds = %bb.m
  %i.ag = load i64, ptr %i.b, align 8, !range !62, !alias.scope !4293, !noalias !4294, !noundef !10 ; 2 uses
  %.not.i23.i.i.i.i.i.i.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not.i23.i.i.i.i.i.i.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4280
  %.pr53.i.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !4295, !noalias !4279
  %i.ah = icmp eq ptr %.pr53.i.i.i.i.i.i.i.i, null
  br i1 %i.ah, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB1L_INtNtB1P_6filter6FilterINtNtB1P_7flatten7FlatMapIB2S_IB3f_IB1L_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtBM_8ScopeDefENCINvNtBK_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EIBx_NtBM_4ImplENCB51_s_0ENCB51_s0_0EIBx_NtBM_9AssocItemENCB51_s1_0ENCB51_s2_0ENvMs10_BM_B6M_8as_constENCB51_s3_0EECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapIB1L_INtNtB1P_6filter6FilterINtNtB1P_7flatten7FlatMapIB2S_IB3f_IB1L_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtBM_8ScopeDefENCINvNtBK_7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EIBx_NtBM_4ImplENCB51_s_0ENCB51_s0_0EIBx_NtBM_9AssocItemENCB51_s1_0ENCB51_s2_0ENvMs10_BM_B6M_8as_constENCB51_s3_0EECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.q, !noalias !4284

bb.p:                                             ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.741.0..sroa_idx42.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !4285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4280
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.i, align 8, !alias.scope !4278, !noalias !4279
  br label %.body.i

.body.i:                                          ; preds = %bb.aa, %bb.r, %bb.q, %bb.l, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.br, %bb.aa ], [ %i.aj, %bb.r ], [ %i.ai, %bb.q ], [ %i.ae, %bb.l ], [ %i.aa, %bb.g ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapIBC_INtNtBG_6filter6FilterINtNtBG_7flatten7FlatMapIB1s_IB1O_IBC_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtCs8Xq8PKFYOms_3hir8ScopeDefENCINvNtNtB3j_11term_search7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB3j_4ImplENCB3N_s_0ENCB3N_s0_0EIB5b_NtB3j_9AssocItemENCB3N_s1_0ENCB3N_s2_0ENvMs10_B3j_B6j_8as_constENCB3N_s3_0EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %1) #30
          to label %bb.ad unwind label %bb.ac

bb.r:                                             ; preds = %bb.m, %bb.h, %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.s:                                             ; preds = %bb.p, %bb.i, %bb.f
  %.sink.i.i.i.i.ph.i.i.i = phi i64 [ %i.ag, %bb.p ], [ %i.ac, %bb.i ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4275
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4296
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, i64 64, i1 false), !noalias !4296
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  store i64 %.sink.i.i.i.i.ph.i.i.i, ptr %i.e, align 8, !noalias !4296
  %i.ak = load i64, ptr %i.j, align 8, !alias.scope !4267, !noalias !4268, !noundef !10 ; 5 uses
  %i.al = icmp ult i64 %i.ak, 128102389400760776
  call void @llvm.assume(i1 %i.al)
  %i.am = load i64, ptr %0, align 8, !range !13, !alias.scope !4267, !noalias !4268, !noundef !10
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.t, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !4297)
  call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4300)
  call void @llvm.experimental.noalias.scope.decl(metadata !4301)
  call void @llvm.experimental.noalias.scope.decl(metadata !4302)
  call void @llvm.experimental.noalias.scope.decl(metadata !4303)
  %i.ao = load ptr, ptr %i.h, align 8, !alias.scope !4304, !noalias !4305, !noundef !10
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !4306, !noalias !4307, !nonnull !10, !noundef !10
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4306, !noalias !4307, !nonnull !10, !noundef !10
  %i.ap = ptrtoint ptr %.val3.i.i.i.i.i.i.i to i64
  %i.aq = ptrtoint ptr %.val.i.i.i.i.i.i.i to i64
  %i.ar = sub nuw i64 %i.ap, %i.aq
  %i.as = udiv exact i64 %i.ar, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i: ; preds = %bb.u, %bb.t
  %.sroa.7.0.i.i.i.i.i.i = phi i64 [ %i.as, %bb.u ], [ 0, %bb.t ]
  %i.at = load ptr, ptr %i.i, align 8, !alias.scope !4304, !noalias !4305, !noundef !10
  %.not53.i.i.i.i.i.i = icmp eq ptr %i.at, null
  br i1 %.not53.i.i.i.i.i.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit63.i.i.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i
  %.val.i61.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !4308, !noalias !4309, !nonnull !10, !noundef !10
  %.val3.i62.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !4308, !noalias !4309, !nonnull !10, !noundef !10
  %i.au = ptrtoint ptr %.val3.i62.i.i.i.i.i.i to i64
  %i.av = ptrtoint ptr %.val.i61.i.i.i.i.i.i to i64
  %i.aw = sub nuw i64 %i.au, %i.av
  %i.ax = udiv exact i64 %i.aw, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit63.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit63.i.i.i.i.i.i: ; preds = %bb.v, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i
  %.sroa.8.0.i.i.i.i.i.i = phi i64 [ %i.ax, %bb.v ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i ]
  %i.ay = add nuw nsw i64 %.sroa.8.0.i.i.i.i.i.i, %.sroa.7.0.i.i.i.i.i.i
  %i.az = load ptr, ptr %i.g, align 8, !alias.scope !4304, !noalias !4305, !noundef !10
  %.not54.i.i.i.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not54.i.i.i.i.i.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir9AssocItemEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit63.i.i.i.i.i.i
  %i.ba = load ptr, ptr %i.o, align 8, !alias.scope !4310, !noalias !4311, !noundef !10
  %.not.i.i.i.i.i.i.i.i.i5.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i.i.i.i.i5.i, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.val.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !4312, !noalias !4313, !nonnull !10, !noundef !10
  %.val3.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !4312, !noalias !4313, !nonnull !10, !noundef !10
  %i.bb = ptrtoint ptr %.val3.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bc = ptrtoint ptr %.val.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.bd = sub nuw i64 %i.bb, %i.bc
  %i.be = udiv exact i64 %i.bd, 12
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir4ImplEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %bb.x ], [ 0, %bb.w ] ; 2 uses
  %i.bf = load ptr, ptr %i.r, align 8, !alias.scope !4310, !noalias !4311, !noundef !10
  %.not53.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not53.i.i.i.i.i.i.i.i.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_6filter6FilterINtNtB7_7flatten7FlatMapINtNtB7_10filter_map9FilterMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtCs8Xq8PKFYOms_3hir8ScopeDefENCINvNtNtB34_11term_search7tactics11assoc_constNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB34_4ImplENCB3y_s_0ENCB3y_s0_0ENCB3y_s1_0ENtNtNtB9_6traits8iterator8Iterator9size_hintCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i, label %bb.y

end_hunk_0
begin_hunk_1_@_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB23_7flatten7FlattenIB1Z_INtNtB23_6filter6FilterIB3v_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtBX_4TypeENCINvNtBV_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB55_s_0ENCB55_s0_0EENCB55_s1_0EE11spec_extendCs6u1mgJOKDyY_13rust_analyzer:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4481
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.09.0.copyload10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.09.0.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.09.0.copyload10.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.5.0.copyload12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.sroa.613.0.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread10.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.613.0.copyload15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  %i.df = icmp ult i64 %.sroa.613.0.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 128102389400760776
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [72 x i8], ptr %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.613.0.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4512)
  %i.dh = load ptr, ptr %i.v, align 8, !alias.scope !4513, !noalias !4514, !noundef !10
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.aw, !noalias !4515

bb.aw:                                            ; preds = %bb.av
  %i.dj = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !alias.scope !4516, !noalias !4517
  store ptr %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4517
  store i64 %.sroa.09.0.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4517
  store ptr %i.dg, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4517
  br label %.body.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs0_0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.i, %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i.i.i.i.i.i.i.i.i.i.i)
  br label %bb.ax

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.av, %bb.au
  store ptr %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.v, align 8, !alias.scope !4516, !noalias !4517
  store ptr %.sroa.5.0.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..8.val.sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4517
  store i64 %.sroa.09.0.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.6.0..8.val.sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4517
  store ptr %i.dg, ptr %.sroa.7.0..8.val.sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !4516, !noalias !4517
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduQNCINvNvB1J_8find_map5checkBX_BX_QNCINvNtB11_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0E0INtNtNtB1R_3ops12control_flow11ControlFlowBX_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc10.i unwind label %.loopexit.i

.noexc10.i:                                       ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !alias.scope !4518, !noalias !4519 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.613.i.i.i.i.i.i.i.i.i.i.i)
  %.not.i2.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.pr.i.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i2.i.i.i.i.i.i.i.i.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.noexc10.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4474
  invoke void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_11RawIntoIterTNtCs8Xq8PKFYOms_3hir4TypeuEENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1)
          to label %.noexc11.i unwind label %.loopexit.i

.noexc11.i:                                       ; preds = %bb.ax
  %i.dk = load i32, ptr %i.y, align 8, !range !44, !noalias !4474, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.dk, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

bb.ay:                                            ; preds = %.noexc10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx11.i.i.i.i.i.i.i.i.i.i.i, i64 64, i1 false), !noalias !4465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !4476
  br label %bb.bg

.loopexit.i.i.i.i.i.i:                            ; preds = %.noexc11.i, %.noexc3.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !4474
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !4520, !noalias !4460
  %i.dl = icmp eq ptr %.pre.i.i.i.i.i.i, null
  br i1 %i.dl, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i, label %bb.az

bb.az:                                            ; preds = %.loopexit.i.i.i.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i unwind label %bb.ba, !noalias !4464

bb.ba:                                            ; preds = %bb.az
  %i.dm = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.v, align 8, !alias.scope !4459, !noalias !4460
  br label %.body.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i: ; preds = %bb.az, %.loopexit.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i
  store ptr null, ptr %i.v, align 8, !alias.scope !4459, !noalias !4460
  %i.dn = load ptr, ptr %i.ao, align 8, !alias.scope !4459, !noalias !4460, !noundef !10
  %.not15.i.i.i.i.i.i = icmp eq ptr %i.dn, null
  br i1 %.not15.i.i.i.i.i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB1P_7flatten7FlattenIB1L_INtNtB1P_6filter6FilterIB3h_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtBM_4TypeENCINvNtBK_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB4R_s_0ENCB4R_s0_0EENCB4R_s1_0EECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4458
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduQNCINvNvB1J_8find_map5checkBX_BX_QNCINvNtB11_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseEs1_0E0INtNtNtB1R_3ops12control_flow11ControlFlowBX_EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %.noexc12.i unwind label %.loopexit.split-lp.i

.noexc12.i:                                       ; preds = %bb.bb
  %i.do = load i64, ptr %i.q, align 8, !range !62, !alias.scope !4521, !noalias !4522, !noundef !10 ; 2 uses
  %.not.i23.i.i.i.i.i.i = icmp eq i64 %i.do, -1
  br i1 %.not.i23.i.i.i.i.i.i, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %.noexc12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4458
  %.pr53.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !4523, !noalias !4460
  %i.dp = icmp eq ptr %.pr53.i.i.i.i.i.i, null
  br i1 %i.dp, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB1P_7flatten7FlattenIB1L_INtNtB1P_6filter6FilterIB3h_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtBM_4TypeENCINvNtBK_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB4R_s_0ENCB4R_s0_0EENCB4R_s1_0EECs6u1mgJOKDyY_13rust_analyzer.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao)
          to label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB1P_7flatten7FlattenIB1L_INtNtB1P_6filter6FilterIB3h_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtBM_4TypeENCINvNtBK_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB4R_s_0ENCB4R_s0_0EENCB4R_s1_0EECs6u1mgJOKDyY_13rust_analyzer.exit unwind label %bb.bf, !noalias !4464

bb.be:                                            ; preds = %.noexc12.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.741.0..sroa_idx42.i.i.i.i.i.i, i64 64, i1 false), !noalias !4465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4458
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.dq = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ao, align 8, !alias.scope !4459, !noalias !4460
  br label %.body.i

.body.i:                                          ; preds = %bb.bh, %.loopexit.split-lp.i, %.loopexit.i, %bb.bf, %bb.ba, %bb.aw, %bb.as, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.dy, %bb.bh ], [ %i.au, %bb.g ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.dj, %bb.aw ], [ %i.cd, %bb.w ], [ %.pn.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.as ], [ %i.dq, %bb.bf ], [ %i.dm, %bb.ba ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlattenIBC_INtNtBG_6filter6FilterIB1Q_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENCINvNtNtB3e_11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3E_s_0ENCB3E_s0_0EENCB3E_s1_0EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1) #30
          to label %bb.bj unwind label %bb.bi

.loopexit.i:                                      ; preds = %bb.ax, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter15filter_try_foldNtCs8Xq8PKFYOms_3hir4TypeuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtB17_11term_search4expr4ExprENCINvNtB2e_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCIB2_B15_uB1v_NCB2K_s_0NCINvNtB6_10filter_map19filter_map_try_foldB15_INtNtCsbSS6DM8SDEO_5alloc3vec3VecB2a_EuB1v_NCB2K_s0_0NCINvNvMsg_NtB6_7flattenINtB61_13FlattenCompatppE13iter_try_fold7flattenB4Z_uB1v_NCINvNvXsi_B61_B6e_NtNtNtB8_6traits8iterator8Iterator8try_fold7flattenINtNtB52_9into_iter8IntoIterB2a_EuB1v_NCINvNvB7s_8find_map5checkB2a_B2a_QNCB2K_s1_0E0E0E0E0E0E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCscFGNKo4Sl5v_9itertools8adaptors13multi_product17MultiProductInnerINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.q, %bb.p, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.j, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.bb, %bb.h, %bb.c
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bg:                                            ; preds = %bb.be, %bb.ay, %bb.f
  %.sink.i.i.ph.i.i.i = phi i64 [ %i.do, %bb.be ], [ %.pr.i.i.i.i.i.i.i.i.i.i.i, %bb.ay ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.i.i.i, i64 64, i1 false), !noalias !4524
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  store i64 %.sink.i.i.ph.i.i.i, ptr %i.t, align 8, !noalias !4524
  %i.dr = load i64, ptr %i.ap, align 8, !alias.scope !4450, !noalias !4451, !noundef !10 ; 5 uses
  %i.ds = icmp ult i64 %i.dr, 128102389400760776
  call void @llvm.assume(i1 %i.ds)
  %i.dt = load i64, ptr %0, align 8, !range !13, !alias.scope !4450, !noalias !4451, !noundef !10
  %i.du = icmp eq i64 %i.dr, %i.dt
  br i1 %i.du, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.bg
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.dr, i64 noundef 1, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.bh

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, %bb.bg
  %i.dv = load ptr, ptr %i.aq, align 8, !alias.scope !4450, !noalias !4451, !nonnull !10, !noundef !10
  %i.dw = getelementptr inbounds nuw [72 x i8], ptr %i.dv, i64 %i.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dw, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  %i.dx = add nuw nsw i64 %i.dr, 1
  store i64 %i.dx, ptr %i.ap, align 8, !alias.scope !4450, !noalias !4451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !4524
  br label %bb.b

bb.bh:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE6map_orTjIBw_jEENvYBJ_NtNtNtNtB5_4iter6traits8iterator8Iterator9size_hintECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.t) #30
          to label %.body.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.body.i
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

bb.bj:                                            ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters10filter_map9FilterMapINtNtB1P_7flatten7FlattenIB1L_INtNtB1P_6filter6FilterIB3h_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtBM_4TypeENCINvNtBK_7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB4R_s_0ENCB4R_s0_0EENCB4R_s1_0EECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit22.i.i.i.i.i.i, %bb.bc, %bb.bd
  store ptr null, ptr %i.ao, align 8, !alias.scope !4459, !noalias !4460
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4457
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtBG_7flatten7FlattenIBC_INtNtBG_6filter6FilterIB1Q_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterNtCs8Xq8PKFYOms_3hir4TypeENCINvNtNtB3e_11term_search7tactics10make_tupleNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3E_s_0ENCB3E_s0_0EENCB3E_s1_0EECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(200) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB23_7inspect7InspectINtNtNtB27_5array4iter8IntoIterBR_Kj3_ENCINvNtBV_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3W_s_0EE11spec_extendCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(264) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.6.i.i.i.i.i.i = alloca [64 x i8], align 8 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 10 uses
  %i.f = alloca [72 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4598)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4601)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4603
  store ptr %i.i, ptr %i.e, align 8, !noalias !4603
  store i64 3, ptr %i.j, align 8, !noalias !4603
  store ptr %1, ptr %i.k, align 8, !noalias !4603
  store ptr %i.g, ptr %i.l, align 8, !noalias !4603
  %i.n = load i64, ptr %i.h, align 8, !alias.scope !4604, !noalias !4605, !noundef !10 ; 5 uses
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !4604, !noalias !4605, !noundef !10 ; 3 uses
  %i.p = icmp ule i64 %i.n, %i.o
  tail call void @llvm.assume(i1 %i.p)
  %.not10.i.i.i.i.i27.i = icmp eq i64 %i.n, %i.o
  br i1 %.not10.i.i.i.i.i27.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB1P_7inspect7InspectINtNtNtB1T_5array4iter8IntoIterBG_Kj3_ENCINvNtBK_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3I_s_0EECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i.i.i.i.lr.ph.i

.lr.ph.i.i.i.i.i.lr.ph.i:                         ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %2 = insertelement <2 x ptr> poison, ptr %1, i64 0
  %3 = insertelement <2 x ptr> %2, ptr %i.g, i64 1
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i, %.lr.ph.i.i.i.i.i.lr.ph.i
  %i.s = phi i64 [ %i.o, %.lr.ph.i.i.i.i.i.lr.ph.i ], [ %i.ar, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  %i.t = phi i64 [ %i.n, %.lr.ph.i.i.i.i.i.lr.ph.i ], [ %i.aq, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4606)
  call void @llvm.experimental.noalias.scope.decl(metadata !4607)
  call void @llvm.experimental.noalias.scope.decl(metadata !4608)
  call void @llvm.experimental.noalias.scope.decl(metadata !4609)
  call void @llvm.experimental.noalias.scope.decl(metadata !4610)
  call void @llvm.experimental.noalias.scope.decl(metadata !4611)
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i.i.i
  %i.u = phi i64 [ %i.t, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.i ] ; 3 uses
  %i.v = add nuw i64 %i.u, 1                      ; 3 uses
  store i64 %i.v, ptr %i.h, align 8, !alias.scope !4612, !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !4614)
  %i.w = load ptr, ptr %i.e, align 8, !alias.scope !4615, !noalias !4616, !nonnull !10, !align !15, !noundef !10
  %i.x = load i64, ptr %i.j, align 8, !alias.scope !4615, !noalias !4616, !noundef !10
  %i.y = icmp ult i64 %i.u, %i.x
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw [72 x i8], ptr %i.w, i64 %i.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4617
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false), !noalias !4618
  call void @llvm.experimental.noalias.scope.decl(metadata !4619)
  %i.aa = load ptr, ptr %i.k, align 8, !alias.scope !4620, !noalias !4621, !nonnull !10, !align !15, !noundef !10 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.aa, align 8, !noalias !4622, !nonnull !10, !align !15, !noundef !10
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !noalias !4622, !nonnull !10, !align !15, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4623
  invoke void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d, ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) @6)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !4624

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4623
  invoke fastcc void @_RNvXs0_NtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB5_4ExprNtNtCshzWfHUSfYae_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.d) #36
          to label %.noexc4.i.i.i.i.i.i.i.i unwind label %bb.g, !noalias !4624

.noexc4.i.i.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i.i.i.i
  invoke void @_RINvMs_NtCs8Xq8PKFYOms_3hir11term_searchNtB5_11LookupTable6insertINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceNtNtB5_4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(104) %.val.i.i.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.g, !noalias !4624

bb.c:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4625
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !4626
  call void @llvm.experimental.noalias.scope.decl(metadata !4627)
  %i.ac = invoke noundef zeroext i1 @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNtNtCs8Xq8PKFYOms_3hir11term_search7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseEs_0INtB7_5FnMutTRNtNtBV_4expr4ExprEE8call_mutCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c)
          to label %bb.e unwind label %bb.d, !noalias !4628

bb.d:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c) #30
          to label %.body.i unwind label %bb.f, !noalias !4628

bb.e:                                             ; preds = %bb.c
  br i1 %i.ac, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i, label %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i: ; preds = %bb.e
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
          to label %.noexc.i unwind label %bb.j

.noexc.i:                                         ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4617
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !4628
  unreachable

bb.g:                                             ; preds = %.noexc4.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i, %bb.b
  %lpad.thr_comm.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.d) #30
          to label %.body.i unwind label %bb.h, !noalias !4624

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28, !noalias !4624
  unreachable

_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i: ; preds = %bb.e
  %.sroa.04.0.copyload.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !4629, !noalias !4630 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 64, i1 false), !alias.scope !4629, !noalias !4630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4617
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp eq i64 %i.v, %i.s
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i, label %bb.b

.body.i:                                          ; preds = %bb.l, %bb.j, %bb.g, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.at, %bb.l ], [ %i.ai, %bb.j ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %bb.g ], [ %i.ad, %bb.d ]
  %i.ag = load i64, ptr %i.h, align 8, !alias.scope !4631, !noalias !4597, !noundef !10
  %i.ah = load i64, ptr %i.m, align 8, !alias.scope !4631, !noalias !4597, !noundef !10
  invoke void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEj3_NtB4_11PartialDrop12partial_dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.i, i64 noundef %i.ag, i64 noundef %i.ah)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_7inspect7InspectINtNtNtB4_5array4iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprKj3_ENCINvNtB2b_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB2Z_s_0EECs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.n

bb.j:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i.i.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %_RNCINvMs8_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerINtB8_15PolymorphicIterSINtNtNtBe_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEE8try_folduNCINvNtNtNtBe_4iter8adapters7inspect16inspect_try_foldB1X_uINtNtNtBe_3ops12control_flow11ControlFlowB1X_ENCINvNtB21_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0NCINvNvNtNtNtB33_6traits8iterator8Iterator4find5checkB1X_QNCB4D_s_0E0E0B3R_E0Cs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4632
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.6.i.i.i.i.i.i, i64 64, i1 false), !noalias !4632
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4633
  store i64 %.sroa.04.0.copyload.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !4632
  %i.aj = load i64, ptr %i.q, align 8, !alias.scope !4597, !noalias !4598, !noundef !10 ; 5 uses
  %i.ak = icmp ult i64 %i.aj, 128102389400760776
  call void @llvm.assume(i1 %i.ak)
  %i.al = load i64, ptr %0, align 8, !range !13, !alias.scope !4597, !noalias !4598, !noundef !10
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.m, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i

.loopexit.i:                                      ; preds = %bb.i
  %.pre.i = load i64, ptr %i.h, align 8, !alias.scope !4634, !noalias !4597
  %.pre28.i = load i64, ptr %i.m, align 8, !alias.scope !4634, !noalias !4597
  br label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB1P_7inspect7InspectINtNtNtB1T_5array4iter8IntoIterBG_Kj3_ENCINvNtBK_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3I_s_0EECs6u1mgJOKDyY_13rust_analyzer.exit

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %bb.m, %bb.k
  %i.an = load ptr, ptr %i.r, align 8, !alias.scope !4597, !noalias !4598, !nonnull !10, !noundef !10
  %i.ao = getelementptr inbounds nuw [72 x i8], ptr %i.an, i64 %i.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ao, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  %i.ap = add nuw nsw i64 %i.aj, 1
  store i64 %i.ap, ptr %i.q, align 8, !alias.scope !4597, !noalias !4598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4632
  call void @llvm.experimental.noalias.scope.decl(metadata !4635)
  call void @llvm.experimental.noalias.scope.decl(metadata !4636)
  call void @llvm.experimental.noalias.scope.decl(metadata !4637)
  call void @llvm.experimental.noalias.scope.decl(metadata !4638)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4639
  store ptr %i.i, ptr %i.e, align 8, !noalias !4639
  store i64 3, ptr %i.j, align 8, !noalias !4639
  store <2 x ptr> %3, ptr %i.k, align 8, !noalias !4639
  %i.aq = load i64, ptr %i.h, align 8, !alias.scope !4640, !noalias !4641, !noundef !10 ; 5 uses
  %i.ar = load i64, ptr %i.m, align 8, !alias.scope !4640, !noalias !4641, !noundef !10 ; 3 uses
  %i.as = icmp ule i64 %i.aq, %i.ar
  call void @llvm.assume(i1 %i.as)
  %.not10.i.i.i.i.i.i = icmp eq i64 %i.aq, %i.ar
  br i1 %.not10.i.i.i.i.i.i, label %_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB1P_7inspect7InspectINtNtNtB1T_5array4iter8IntoIterBG_Kj3_ENCINvNtBK_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3I_s_0EECs6u1mgJOKDyY_13rust_analyzer.exit, label %.lr.ph.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #30
          to label %.body.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RINvNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.aj, i64 noundef 1, i64 noundef 8, i64 noundef 72)
          to label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i unwind label %bb.l

bb.n:                                             ; preds = %bb.l, %.body.i
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #28
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters6filter6FilterINtNtBG_7inspect7InspectINtNtNtB4_5array4iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprKj3_ENCINvNtB2b_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB2Z_s_0EECs6u1mgJOKDyY_13rust_analyzer.exit.i: ; preds = %.body.i
  resume { ptr, i32 } %.pn.i

_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE16extend_desugaredINtNtNtNtCshzWfHUSfYae_4core4iter8adapters6filter6FilterINtNtB1P_7inspect7InspectINtNtNtB1T_5array4iter8IntoIterBG_Kj3_ENCINvNtBK_7tactics12famous_typesNtCs6oosyzwIepl_6ide_db12RootDatabaseE0ENCB3I_s_0EECs6u1mgJOKDyY_13rust_analyzer.exit: ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.a, %.loopexit.i
  %i.av = phi i64 [ %.pre28.i, %.loopexit.i ], [ %i.n, %bb.a ], [ %i.aq, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  %i.aw = phi i64 [ %.pre.i, %.loopexit.i ], [ %i.n, %bb.a ], [ %i.aq, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4633
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEj3_NtB4_11PartialDrop12partial_dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(216) %i.i, i64 noundef %i.aw, i64 noundef %i.av)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCsbSS6DM8SDEO_5alloc3vec11spec_extendINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEINtB2_10SpecExtendBR_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtB23_10filter_map9FilterMapIB1Z_IB2V_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtBX_8ScopeDefENCINvNtBV_7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EENCB4I_s_0EEE11spec_extendCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [16 x i8], align 16               ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [16 x i8], align 16               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 3 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.063.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %.sroa.867.i.i.i = alloca [16 x i8], align 8    ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [24 x i8], align 8                ; 3 uses
  %i.o = alloca [160 x i8], align 8               ; 9 uses
  %i.p = alloca [48 x i8], align 8                ; 6 uses
  %.sroa.058.i.i.i = alloca [24 x i8], align 8    ; 6 uses
  %.sroa.8.i.i.i = alloca [16 x i8], align 8      ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 11 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 10 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [24 x i8], align 8                ; 4 uses
  %i.aa = alloca [16 x i8], align 4               ; 4 uses
  %i.ab = alloca [16 x i8], align 4               ; 4 uses
  %i.ac = alloca [160 x i8], align 8              ; 30 uses
  %i.ad = alloca [40 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = alloca [40 x i8], align 8               ; 8 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 12 uses
  %i.aj = alloca [16 x i8], align 4               ; 8 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [24 x i8], align 8               ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 6 uses
  %i.an = alloca [8 x i8], align 8                ; 7 uses
  %i.ao = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.5.i = alloca i64, align 8                ; 3 uses
  %.sroa.7.i = alloca i64, align 8                ; 3 uses
  %i.ap = alloca [72 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4886)
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 16 uses
  %.sroa.7.0..sroa_idx28.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 224
  %.sroa.08.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 3 uses
  %.sroa.08.sroa.6.sroa.4.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %.sroa.08.sroa.6.sroa.5.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  %.sroa.08.sroa.6.sroa.6.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 3 uses
  %.sroa.08.sroa.6.sroa.6.sroa.4.0..sroa.08.sroa.6.sroa.6.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  %.sroa.08.sroa.6.sroa.6.sroa.5.0..sroa.08.sroa.6.sroa.6.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 80
  %.sroa.08.sroa.6.sroa.6.sroa.6.0..sroa.08.sroa.6.sroa.6.0..sroa.08.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ac, <2 x i64> <i64 96, i64 112>
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ac, i64 112
  %.sroa.412.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 120
  %.sroa.513.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %.sroa.614.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.bp = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 5 uses
  %.sroa.5.0..8.val.sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %.sroa.6.0..8.val.sroa_idx4.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %.sroa.7.0..8.val.sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i28.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.659.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, <2 x i64> <i64 96, i64 112>
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.8.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.664.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.867.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.7.0..sroa_idx6.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %.sroa.741.0..sroa_idx42.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx39.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %.sroa.649.0..sroa_idx50.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.by = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprE7reserveCs6u1mgJOKDyY_13rust_analyzer.exit.i, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4887)
  call void @llvm.experimental.noalias.scope.decl(metadata !4888)
  %.pre.i.i.i = load ptr, ptr %1, align 8, !alias.scope !4889, !noalias !4890
  %i.cj = icmp eq ptr %.pre.i.i.i, null
  call void @llvm.experimental.noalias.scope.decl(metadata !4891)
  br i1 %i.cj, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !4892)
  call void @llvm.experimental.noalias.scope.decl(metadata !4893)
  %i.ck = load ptr, ptr %i.aq, align 8, !alias.scope !4894, !noalias !4895, !nonnull !10, !noundef !10
  %i.cl = load ptr, ptr %i.ar, align 8, !alias.scope !4894, !noalias !4895, !nonnull !10, !noundef !10 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, %i.ck
  br i1 %i.cm, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i: ; preds = %bb.c
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store ptr %i.cn, ptr %i.ar, align 8, !alias.scope !4894, !noalias !4895
  %.sroa.054.0.copyload.i.i.i = load i64, ptr %i.cl, align 8, !noalias !4896 ; 2 uses
  %.not6.i.i.i.i = icmp eq i64 %.sroa.054.0.copyload.i.i.i, -1
  br i1 %.not6.i.i.i.i, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlattenINtNtB7_10filter_map9FilterMapIBR_IB15_INtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtCs8Xq8PKFYOms_3hir8ScopeDefENCINvNtNtB2B_11term_search7tactics13free_functionNtCs6oosyzwIepl_6ide_db12RootDatabaseE0EENCB35_s_0EENtNtNtB9_6traits8iterator8Iterator4nextCs6u1mgJOKDyY_13rust_analyzer.exit.i

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, %bb.c
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6u1mgJOKDyY_13rust_analyzer(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %1)
          to label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6u1mgJOKDyY_13rust_analyzer.exit.thread74.i.i.i unwind label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i.i, !noalias !4897

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs6u1mgJOKDyY_13rust_analyzer.exit.thread74.i.i.i: ; preds = %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextINtNtNtB1N_3ops8function6FnOnceTQB5_EE9call_onceCs6u1mgJOKDyY_13rust_analyzer.exit.thread.i.i.i.i
  store ptr null, ptr %1, align 8, !alias.scope !4889, !noalias !4890
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs8Xq8PKFYOms_3hir11term_search4expr4ExprEECs6u1mgJOKDyY_13rust_analyzer.exit.i.i.i
end_hunk_1
