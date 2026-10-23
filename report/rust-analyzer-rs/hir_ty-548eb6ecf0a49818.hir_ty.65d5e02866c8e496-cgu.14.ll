Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.14?download=true
inline.NumInlined: 5511
inline.NumDeleted: 2265
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RNvMs0_NtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysisNtB9_16InferenceContext24analyze_closures_in_expr:bb.a
  %i.aal = getelementptr i8, ptr %i.aaf, i64 16
  %.val4.i.i.i.i.i.i.i.i387.i = load i64, ptr %i.aal, align 8, !noalias !4630, !noundef !9
  %i.aam = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i.i.i.i.i.i.i386.i, i64 %.val4.i.i.i.i.i.i.i.i387.i ; 2 uses
  store ptr %.val.i.i.i.i.i.i.i.i386.i, ptr %i.yx, align 8, !alias.scope !4627, !noalias !4613
  store ptr %i.aam, ptr %i.yy, align 8, !alias.scope !4627, !noalias !4613
  br label %bb.gb

bb.gd:                                            ; preds = %select.unfold.i.i.i.i.i.i.i.i383.i
  %i.aan = load ptr, ptr %i.za, align 8, !alias.scope !4631, !noalias !4613, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i.i.i.i.i388.i = icmp eq ptr %i.aan, null
  br i1 %.not.i7.i.i.i.i.i.i.i.i388.i, label %select.unfold.i.i.i.i.i389.i, label %.sink.split.i8.i.i.i.i.i.i.i.i.i

.sink.split.i8.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.gd
  %i.aao = load ptr, ptr %i.zb, align 8, !alias.scope !4632, !noalias !4613, !nonnull !9, !noundef !9
  %i.aap = icmp eq ptr %i.aan, %i.aao             ; 2 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aan, i64 104
  %spec.select.i9.i.i.i.i.i.i.i.i.i = select i1 %i.aap, ptr null, ptr %i.aaq
  store ptr %spec.select.i9.i.i.i.i.i.i.i.i.i, ptr %i.za, align 8, !alias.scope !4631, !noalias !4613
  br i1 %i.aap, label %select.unfold.i.i.i.i.i389.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread870.i

select.unfold.i.i.i.i.i389.i:                     ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i.i, %bb.gd
  store i64 0, ptr %i.x, align 8, !alias.scope !4633, !noalias !4613
  br label %bb.ge

bb.ge:                                            ; preds = %select.unfold.i.i.i.i.i389.i, %bb.fz
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aab, 2
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i373.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.i.i.i.i.i: ; preds = %bb.ge
  store i64 0, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4634, !noalias !4613
  %i.aar = trunc nuw i64 %i.aab to i1
  br i1 %i.aar, label %bb.gf, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i373.i

bb.gf:                                            ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0402.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0402.sroa.8.0..sroa_idx.i, i64 48, i1 false), !alias.scope !4622, !noalias !4613
  store i64 1, ptr %i.x, align 8, !alias.scope !4622, !noalias !4613
  br label %bb.fz

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i373.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.i.i.i.i.i, %bb.ge
  call void @llvm.experimental.noalias.scope.decl(metadata !4635), !noalias !4616
  %i.aas = load i64, ptr %.sroa.0402.sroa.5.0..sroa_idx.i, align 8, !range !27, !alias.scope !4636, !noalias !4613, !noundef !9
  %i.aat = trunc nuw i64 %i.aas to i1
  br i1 %i.aat, label %bb.gg, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread.i

bb.gg:                                            ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i373.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4637), !noalias !4616
  call void @llvm.experimental.noalias.scope.decl(metadata !4638), !noalias !4616
  call void @llvm.experimental.noalias.scope.decl(metadata !4639), !noalias !4616
  %.promoted.i.i.i.i3.i.i.i.i.i = load ptr, ptr %i.zc, align 8, !alias.scope !4640, !noalias !4613
  %.promoted19.i.i.i.i4.i.i.i.i.i = load ptr, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4640, !noalias !4613
  %i.aau = load ptr, ptr %i.ze, align 8, !alias.scope !4640, !noalias !4613, !nonnull !9
  %.promoted20.i.i.i.i5.i.i.i.i.i = load ptr, ptr %i.zd, align 8, !alias.scope !4640, !noalias !4613
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gi, %bb.gg
  %i.aav = phi ptr [ %i.abd, %bb.gi ], [ %.promoted20.i.i.i.i5.i.i.i.i.i, %bb.gg ]
  %i.aaw = phi ptr [ %i.aba, %bb.gi ], [ %.promoted19.i.i.i.i4.i.i.i.i.i, %bb.gg ] ; 5 uses
  %spec.select.i18.i.i.i.i6.i.i.i.i.i = phi ptr [ %.val.i.i.i.i13.i.i.i.i378.i, %bb.gi ], [ %.promoted.i.i.i.i3.i.i.i.i.i, %bb.gg ] ; 4 uses
  %.not.i.i.i.i.i7.i.i.i.i374.i = icmp eq ptr %spec.select.i18.i.i.i.i6.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i7.i.i.i.i374.i, label %select.unfold.i.i.i.i10.i.i.i.i375.i, label %.sink.split.i.i.i.i.i8.i.i.i.i.i

.sink.split.i.i.i.i.i8.i.i.i.i.i:                 ; preds = %bb.gh
  %i.aax = icmp eq ptr %spec.select.i18.i.i.i.i6.i.i.i.i.i, %i.aav ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i6.i.i.i.i.i, i64 104
  %spec.select.i.i.i.i.i9.i.i.i.i.i = select i1 %i.aax, ptr null, ptr %i.aay
  store ptr %spec.select.i.i.i.i.i9.i.i.i.i.i, ptr %i.zc, align 8, !alias.scope !4641, !noalias !4613
  br i1 %i.aax, label %select.unfold.i.i.i.i10.i.i.i.i375.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread870.i

select.unfold.i.i.i.i10.i.i.i.i375.i:             ; preds = %.sink.split.i.i.i.i.i8.i.i.i.i.i, %bb.gh
  %.not.i5.i.i.i.i11.i.i.i.i376.i = icmp eq ptr %i.aaw, null
  %i.aaz = icmp eq ptr %i.aaw, %i.aau
  %or.cond.i.i.i.i.i12.i.i.i.i377.i = select i1 %.not.i5.i.i.i.i11.i.i.i.i376.i, i1 true, i1 %i.aaz
  br i1 %or.cond.i.i.i.i.i12.i.i.i.i377.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %select.unfold.i.i.i.i10.i.i.i.i375.i
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaw, i64 40 ; 2 uses
  store ptr %i.aba, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4642, !noalias !4613
  %i.abb = getelementptr i8, ptr %i.aaw, i64 8
  %.val.i.i.i.i13.i.i.i.i378.i = load ptr, ptr %i.abb, align 8, !noalias !4643, !nonnull !9, !noundef !9 ; 3 uses
  %i.abc = getelementptr i8, ptr %i.aaw, i64 16
  %.val4.i.i.i.i14.i.i.i.i379.i = load i64, ptr %i.abc, align 8, !noalias !4643, !noundef !9
  %i.abd = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i.i.i13.i.i.i.i378.i, i64 %.val4.i.i.i.i14.i.i.i.i379.i ; 2 uses
  store ptr %.val.i.i.i.i13.i.i.i.i378.i, ptr %i.zc, align 8, !alias.scope !4640, !noalias !4613
  store ptr %i.abd, ptr %i.zd, align 8, !alias.scope !4640, !noalias !4613
  br label %bb.gh

bb.gj:                                            ; preds = %select.unfold.i.i.i.i10.i.i.i.i375.i
  %i.abe = load ptr, ptr %i.zf, align 8, !alias.scope !4644, !noalias !4613, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i15.i.i.i.i380.i = icmp eq ptr %i.abe, null
  br i1 %.not.i7.i.i.i.i15.i.i.i.i380.i, label %select.unfold.i18.i.i.i.i.i, label %.sink.split.i8.i.i.i.i16.i.i.i.i381.i

.sink.split.i8.i.i.i.i16.i.i.i.i381.i:            ; preds = %bb.gj
  %i.abf = load ptr, ptr %i.zg, align 8, !alias.scope !4645, !noalias !4613, !nonnull !9, !noundef !9
  %i.abg = icmp eq ptr %i.abe, %i.abf             ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abe, i64 104
  %spec.select.i9.i.i.i.i17.i.i.i.i.i = select i1 %i.abg, ptr null, ptr %i.abh
  store ptr %spec.select.i9.i.i.i.i17.i.i.i.i.i, ptr %i.zf, align 8, !alias.scope !4644, !noalias !4613
  br i1 %i.abg, label %select.unfold.i18.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread870.i

select.unfold.i18.i.i.i.i.i:                      ; preds = %.sink.split.i8.i.i.i.i16.i.i.i.i381.i, %bb.gj
  store i64 0, ptr %.sroa.0402.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4636, !noalias !4613
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i: ; preds = %bb.fx
  store i64 0, ptr %.sroa.4403.0..sroa_idx.i, align 8, !alias.scope !4619, !noalias !4613
  %i.abi = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBb_6option8IntoIterIB3_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEENtNtNtB9_6traits8iterator8Iterator3nthB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x, i64 noundef %i.zz) #45, !noalias !4616 ; 2 uses
  %.not.i371.i = icmp eq ptr %i.abi, null
  br i1 %.not.i371.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread870.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread870.i: ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i8.i.i.i.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i, %.sink.split.i8.i.i.i.i16.i.i.i.i381.i
  %.sroa.0.0.i6.i.i = phi ptr [ %i.abi, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i ], [ %spec.select.i18.i.i.i.i6.i.i.i.i.i, %.sink.split.i.i.i.i.i8.i.i.i.i.i ], [ %i.abe, %.sink.split.i8.i.i.i.i16.i.i.i.i381.i ], [ %spec.select.i18.i.i.i.i.i.i.i.i.i, %.sink.split.i.i.i.i.i.i.i.i.i.i ], [ %i.aan, %.sink.split.i8.i.i.i.i.i.i.i.i.i ]
  %i.abj = load i64, ptr %.sroa.4.0..sroa_idx.i284.i, align 8, !alias.scope !4617, !noalias !4613, !noundef !9 ; 2 uses
  %i.abk = add i64 %i.abj, 1
  store i64 %i.abk, ptr %.sroa.4.0..sroa_idx.i284.i, align 8, !alias.scope !4617, !noalias !4613
  store i64 %i.abj, ptr %i.s, align 8, !noalias !4613
  %i.abl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.0.0.i6.i.i, ptr %i.abl, align 8, !noalias !4613
  br label %bb.gk

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i
  store i64 %.sroa.437.0.copyload.i.i, ptr %i.s, align 8, !noalias !4613
  %i.abm = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %.sroa.538.0.copyload.i.i, ptr %i.abm, align 8, !noalias !4613
  %.not41.i.i = icmp eq ptr %.sroa.538.0.copyload.i.i, null
  br i1 %.not41.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread.i, label %bb.gk

bb.gk:                                            ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread870.i
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedINtNtB4_6option6OptionTjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEBM_EB1f_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) @22, ptr noundef nonnull @23, ptr nonnull inttoptr (i64 49 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #40
          to label %bb.gl unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4616

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.thread.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i, %select.unfold.i18.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i373.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !4613
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4613
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.r, ptr noundef nonnull align 8 dereferenceable(88) %i.y, i64 88, i1 false), !noalias !4613
  invoke void @_RNvXsM_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2Tyja_ENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterBO_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ca, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.r)
          to label %bb.hr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i

bb.gl:                                            ; preds = %.thread.i295.i, %bb.gk
  unreachable

bb.gm:                                            ; preds = %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2Tyja_E4pushBO_.exit.i.i, %.loopexit164.i.i
  %.sroa.022.0.copyload337.i.i = phi i64 [ %.sroa.036.0.copyload.i.i, %.loopexit164.i.i ], [ %.pre.i293.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2Tyja_E4pushBO_.exit.i.i ]
  %i.abn = phi i64 [ %i.zm, %.loopexit164.i.i ], [ %.pre.i293.i, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2Tyja_E4pushBO_.exit.i.i ]
  %.sroa.05.0.i.i = phi i1 [ false, %.loopexit164.i.i ], [ true, %_RNvMsd_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2Tyja_E4pushBO_.exit.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !4646)
  %i.abo = trunc nuw i64 %i.abn to i1
  br i1 %i.abo, label %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit_crit_edge.i.i, label %bb.gn

._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit_crit_edge.i.i: ; preds = %bb.gm
  %.pre336.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i289.i, align 8, !noalias !4613
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit.i.i

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.experimental.noalias.scope.decl(metadata !4647)
  call void @llvm.experimental.noalias.scope.decl(metadata !4648), !noalias !4646
  %i.abp = load i64, ptr %.sroa.4403.0..sroa_idx.i, align 8, !alias.scope !4649, !noalias !4650, !noundef !9 ; 2 uses
  %.not.i.i65.i.i = icmp eq i64 %i.abp, 0
  br i1 %.not.i.i65.i.i, label %bb.go, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i, !prof !13

bb.go:                                            ; preds = %bb.gn
  call void @llvm.experimental.noalias.scope.decl(metadata !4651), !noalias !4646
  call void @llvm.experimental.noalias.scope.decl(metadata !4652), !noalias !4646
  %.promoted.i.i.i.i72.i.i = load i64, ptr %i.x, align 8, !alias.scope !4653, !noalias !4650
  %.promoted27.i.i.i.i74.i.i = load i64, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4653, !noalias !4650 ; 2 uses
  %i.abq = trunc nuw i64 %.promoted.i.i.i.i72.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4654), !noalias !4646
  br i1 %i.abq, label %bb.gq, label %select.unfold.i.i.i.i.i109.i.i

bb.gp:                                            ; preds = %select.unfold.i.i.i.i.i109.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0402.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0402.sroa.8.0..sroa_idx.i, i64 48, i1 false), !alias.scope !4653, !noalias !4650
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.abr = phi i64 [ 0, %bb.gp ], [ %.promoted27.i.i.i.i74.i.i, %bb.go ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4655), !noalias !4646
  call void @llvm.experimental.noalias.scope.decl(metadata !4656), !noalias !4646
  call void @llvm.experimental.noalias.scope.decl(metadata !4657), !noalias !4646
  %.promoted.i.i.i.i.i.i.i.i94.i.i = load ptr, ptr %i.yx, align 8, !alias.scope !4658, !noalias !4650 ; 3 uses
  %.promoted19.i.i.i.i.i.i.i.i95.i.i = load ptr, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4658, !noalias !4650 ; 5 uses
  %i.abs = load ptr, ptr %i.yz, align 8, !alias.scope !4658, !noalias !4650, !nonnull !9 ; 2 uses
  %.promoted20.i.i.i.i.i.i.i.i96.i.i = load ptr, ptr %i.yy, align 8, !alias.scope !4658, !noalias !4650 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i98.i613.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i94.i.i, null
  %i.abt = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i94.i.i, %.promoted20.i.i.i.i.i.i.i.i96.i.i
  %or.cond483.i614.i = select i1 %.not.i.i.i.i.i.i.i.i.i98.i613.i, i1 true, i1 %i.abt
  br i1 %or.cond483.i614.i, label %select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i

select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader:   ; preds = %bb.gq
  %.not.i5.i.i.i.i.i.i.i.i102.i.i124 = icmp eq ptr %.promoted19.i.i.i.i.i.i.i.i95.i.i, null
  %i.abu = icmp eq ptr %.promoted19.i.i.i.i.i.i.i.i95.i.i, %i.abs
  %or.cond.i.i.i.i.i.i.i.i.i103.i.i125 = select i1 %.not.i5.i.i.i.i.i.i.i.i102.i.i124, i1 true, i1 %i.abu
  br i1 %or.cond.i.i.i.i.i.i.i.i.i103.i.i125, label %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge, label %.lr.ph

select.unfold.i.i.i.i.i.i.i.i101.i.i:             ; preds = %.lr.ph
  %i.abv = icmp eq ptr %i.abx, %i.abs
  br i1 %i.abv, label %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader, %select.unfold.i.i.i.i.i.i.i.i101.i.i
  %i.abw = phi ptr [ %i.abx, %select.unfold.i.i.i.i.i.i.i.i101.i.i ], [ %.promoted19.i.i.i.i.i.i.i.i95.i.i, %select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader ] ; 4 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 40 ; 4 uses
  %i.aby = getelementptr i8, ptr %i.abw, i64 16
  %.val4.i.i.i.i.i.i.i.i105.i.i = load i64, ptr %i.aby, align 8, !noalias !4659, !noundef !9 ; 3 uses
  %i.abz = icmp eq i64 %.val4.i.i.i.i.i.i.i.i105.i.i, 0
  br i1 %i.abz, label %select.unfold.i.i.i.i.i.i.i.i101.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.i.i.i.i101.i.i
  %i.aca = getelementptr i8, ptr %i.abw, i64 8
  %.val.i.i.i.i.i.i.i.i104.i.i.le388 = load ptr, ptr %i.aca, align 8, !noalias !4659, !nonnull !9, !noundef !9
  %.idx651.i.le385 = mul nuw nsw i64 %.val4.i.i.i.i.i.i.i.i105.i.i, 104
  %i.acb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i104.i.i.le388, i64 %.idx651.i.le385
  br label %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge

select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge:  ; preds = %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader
  %.lcssa58 = phi ptr [ %.promoted19.i.i.i.i.i.i.i.i95.i.i, %select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader ], [ %i.abx, %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge.loopexit ]
  %.lcssa56 = phi ptr [ %.promoted20.i.i.i.i.i.i.i.i96.i.i, %select.unfold.i.i.i.i.i.i.i.i101.i.i.preheader ], [ %i.acb, %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge.loopexit ]
  store ptr null, ptr %i.yx, align 8, !noalias !4613
  store ptr %.lcssa58, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa56, ptr %i.yy, align 8, !noalias !4613
  %i.acc = load ptr, ptr %i.za, align 8, !alias.scope !4660, !noalias !4650, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i.i.i.i.i106.i.i = icmp eq ptr %i.acc, null
  br i1 %.not.i7.i.i.i.i.i.i.i.i106.i.i, label %select.unfold.i.i.i.i.i109.i.i, label %.sink.split.i8.i.i.i.i.i.i.i.i107.i.i

.sink.split.i8.i.i.i.i.i.i.i.i107.i.i:            ; preds = %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge
  %i.acd = load ptr, ptr %i.zb, align 8, !alias.scope !4661, !noalias !4650, !nonnull !9, !noundef !9
  %i.ace = icmp eq ptr %i.acc, %i.acd             ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acc, i64 104
  %spec.select.i9.i.i.i.i.i.i.i.i108.i.i = select i1 %i.ace, ptr null, ptr %i.acf
  store ptr %spec.select.i9.i.i.i.i.i.i.i.i108.i.i, ptr %i.za, align 8, !alias.scope !4660, !noalias !4650
  br i1 %i.ace, label %select.unfold.i.i.i.i.i109.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit163.i.i

select.unfold.i.i.i.i.i109.i.i:                   ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i107.i.i, %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge, %bb.go
  %i.acg = phi i64 [ %i.abr, %.sink.split.i8.i.i.i.i.i.i.i.i107.i.i ], [ %i.abr, %select.unfold.i.i.i.i.i.i.i.i101.i.i._crit_edge ], [ %.promoted27.i.i.i.i74.i.i, %bb.go ] ; 2 uses
  switch i64 %i.acg, label %bb.gp [
    i64 2, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i
    i64 0, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i
  ]

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i: ; preds = %select.unfold.i.i.i.i.i109.i.i, %select.unfold.i.i.i.i.i109.i.i
  store i64 0, ptr %i.x, align 8, !noalias !4613
  store i64 %i.acg, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !noalias !4613
  call void @llvm.experimental.noalias.scope.decl(metadata !4662), !noalias !4646
  %i.ach = load i64, ptr %.sroa.0402.sroa.5.0..sroa_idx.i, align 8, !range !27, !alias.scope !4663, !noalias !4650, !noundef !9
  %i.aci = trunc nuw i64 %i.ach to i1
  br i1 %i.aci, label %bb.gr, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i

bb.gr:                                            ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4664), !noalias !4646
  call void @llvm.experimental.noalias.scope.decl(metadata !4665), !noalias !4646
  call void @llvm.experimental.noalias.scope.decl(metadata !4666), !noalias !4646
  %.promoted.i.i.i.i3.i.i.i.i78.i.i = load ptr, ptr %i.zc, align 8, !alias.scope !4667, !noalias !4650 ; 3 uses
  %.promoted19.i.i.i.i4.i.i.i.i79.i.i = load ptr, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4667, !noalias !4650 ; 5 uses
  %i.acj = load ptr, ptr %i.ze, align 8, !alias.scope !4667, !noalias !4650, !nonnull !9 ; 2 uses
  %.promoted20.i.i.i.i5.i.i.i.i80.i.i = load ptr, ptr %i.zd, align 8, !alias.scope !4667, !noalias !4650 ; 3 uses
  %.not.i.i.i.i.i7.i.i.i.i82.i626.i = icmp eq ptr %.promoted.i.i.i.i3.i.i.i.i78.i.i, null
  %i.ack = icmp eq ptr %.promoted.i.i.i.i3.i.i.i.i78.i.i, %.promoted20.i.i.i.i5.i.i.i.i80.i.i
  %or.cond484.i627.i = select i1 %.not.i.i.i.i.i7.i.i.i.i82.i626.i, i1 true, i1 %i.ack
  br i1 %or.cond484.i627.i, label %select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i

select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader:  ; preds = %bb.gr
  %.not.i5.i.i.i.i11.i.i.i.i86.i.i127 = icmp eq ptr %.promoted19.i.i.i.i4.i.i.i.i79.i.i, null
  %i.acl = icmp eq ptr %.promoted19.i.i.i.i4.i.i.i.i79.i.i, %i.acj
  %or.cond.i.i.i.i.i12.i.i.i.i87.i.i128 = select i1 %.not.i5.i.i.i.i11.i.i.i.i86.i.i127, i1 true, i1 %i.acl
  br i1 %or.cond.i.i.i.i.i12.i.i.i.i87.i.i128, label %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge, label %.lr.ph129

select.unfold.i.i.i.i10.i.i.i.i85.i.i:            ; preds = %.lr.ph129
  %i.acm = icmp eq ptr %i.aco, %i.acj
  br i1 %i.acm, label %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge.loopexit, label %.lr.ph129

.lr.ph129:                                        ; preds = %select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader, %select.unfold.i.i.i.i10.i.i.i.i85.i.i
  %i.acn = phi ptr [ %i.aco, %select.unfold.i.i.i.i10.i.i.i.i85.i.i ], [ %.promoted19.i.i.i.i4.i.i.i.i79.i.i, %select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader ] ; 4 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 40 ; 4 uses
  %i.acp = getelementptr i8, ptr %i.acn, i64 16
  %.val4.i.i.i.i14.i.i.i.i89.i.i = load i64, ptr %i.acp, align 8, !noalias !4668, !noundef !9 ; 3 uses
  %i.acq = icmp eq i64 %.val4.i.i.i.i14.i.i.i.i89.i.i, 0
  br i1 %i.acq, label %select.unfold.i.i.i.i10.i.i.i.i85.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i.loopexit

select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i10.i.i.i.i85.i.i
  %i.acr = getelementptr i8, ptr %i.acn, i64 8
  %.val.i.i.i.i13.i.i.i.i88.i.i.le398 = load ptr, ptr %i.acr, align 8, !noalias !4668, !nonnull !9, !noundef !9
  %.idx652.i.le395 = mul nuw nsw i64 %.val4.i.i.i.i14.i.i.i.i89.i.i, 104
  %i.acs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i13.i.i.i.i88.i.i.le398, i64 %.idx652.i.le395
  br label %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge

select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge: ; preds = %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader
  %.lcssa64 = phi ptr [ %.promoted19.i.i.i.i4.i.i.i.i79.i.i, %select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader ], [ %i.aco, %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge.loopexit ]
  %.lcssa62 = phi ptr [ %.promoted20.i.i.i.i5.i.i.i.i80.i.i, %select.unfold.i.i.i.i10.i.i.i.i85.i.i.preheader ], [ %i.acs, %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge.loopexit ]
  store ptr null, ptr %i.zc, align 8, !noalias !4613
  store ptr %.lcssa64, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa62, ptr %i.zd, align 8, !noalias !4613
  %i.act = load ptr, ptr %i.zf, align 8, !alias.scope !4669, !noalias !4650, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i15.i.i.i.i90.i.i = icmp eq ptr %i.act, null
  br i1 %.not.i7.i.i.i.i15.i.i.i.i90.i.i, label %select.unfold.i18.i.i.i.i93.i.i, label %.sink.split.i8.i.i.i.i16.i.i.i.i91.i.i

.sink.split.i8.i.i.i.i16.i.i.i.i91.i.i:           ; preds = %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge
  %i.acu = load ptr, ptr %i.zg, align 8, !alias.scope !4670, !noalias !4650, !nonnull !9, !noundef !9
  %i.acv = icmp eq ptr %i.act, %i.acu             ; 2 uses
  %i.acw = getelementptr inbounds nuw i8, ptr %i.act, i64 104
  %spec.select.i9.i.i.i.i17.i.i.i.i92.i.i = select i1 %i.acv, ptr null, ptr %i.acw
  store ptr %spec.select.i9.i.i.i.i17.i.i.i.i92.i.i, ptr %i.zf, align 8, !alias.scope !4669, !noalias !4650
  br i1 %i.acv, label %select.unfold.i18.i.i.i.i93.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i

select.unfold.i18.i.i.i.i93.i.i:                  ; preds = %.sink.split.i8.i.i.i.i16.i.i.i.i91.i.i, %select.unfold.i.i.i.i10.i.i.i.i85.i.i._crit_edge
  store i64 0, ptr %.sroa.0402.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4663, !noalias !4650
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i: ; preds = %bb.gn
  store i64 0, ptr %.sroa.4403.0..sroa_idx.i, align 8, !alias.scope !4649, !noalias !4650
  %i.acx = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBb_6option8IntoIterIB3_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEENtNtNtB9_6traits8iterator8Iterator3nthB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x, i64 noundef %i.abp) #45, !noalias !4671 ; 2 uses
  %.not.i67.i.i = icmp eq ptr %i.acx, null
  br i1 %.not.i67.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i.loopexit: ; preds = %.lr.ph
  %i.acy = getelementptr i8, ptr %i.abw, i64 8
  %.val.i.i.i.i.i.i.i.i104.i.i.le = load ptr, ptr %i.acy, align 8, !noalias !4659, !nonnull !9, !noundef !9 ; 2 uses
  %.idx651.i.le = mul nuw nsw i64 %.val4.i.i.i.i.i.i.i.i105.i.i, 104
  %i.acz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i104.i.i.le, i64 %.idx651.i.le
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i.loopexit, %bb.gq
  %.lcssa520.i = phi ptr [ %.promoted20.i.i.i.i.i.i.i.i96.i.i, %bb.gq ], [ %i.acz, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i.loopexit ]
  %.lcssa518.i = phi ptr [ %.promoted19.i.i.i.i.i.i.i.i95.i.i, %bb.gq ], [ %i.abx, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i.loopexit ]
  %spec.select.i18.i.i.i.i.i.i.i.i97.i.lcssa.i = phi ptr [ %.promoted.i.i.i.i.i.i.i.i94.i.i, %bb.gq ], [ %.val.i.i.i.i.i.i.i.i104.i.i.le, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i.loopexit ] ; 2 uses
  %i.ada = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.i.i.i.i97.i.lcssa.i, i64 104
  store i64 1, ptr %i.x, align 8, !noalias !4613
  store i64 %i.abr, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %i.ada, ptr %i.yx, align 8, !noalias !4613
  store ptr %.lcssa518.i, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa520.i, ptr %i.yy, align 8, !noalias !4613
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i.loopexit: ; preds = %.lr.ph129
  %i.adb = getelementptr i8, ptr %i.acn, i64 8
  %.val.i.i.i.i13.i.i.i.i88.i.i.le = load ptr, ptr %i.adb, align 8, !noalias !4668, !nonnull !9, !noundef !9 ; 2 uses
  %.idx652.i.le = mul nuw nsw i64 %.val4.i.i.i.i14.i.i.i.i89.i.i, 104
  %i.adc = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i13.i.i.i.i88.i.i.le, i64 %.idx652.i.le
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i.loopexit, %bb.gr
  %.lcssa533.i = phi ptr [ %.promoted20.i.i.i.i5.i.i.i.i80.i.i, %bb.gr ], [ %i.adc, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i.loopexit ]
  %.lcssa531.i = phi ptr [ %.promoted19.i.i.i.i4.i.i.i.i79.i.i, %bb.gr ], [ %i.aco, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i.loopexit ]
  %spec.select.i18.i.i.i.i6.i.i.i.i81.i.lcssa.i = phi ptr [ %.promoted.i.i.i.i3.i.i.i.i78.i.i, %bb.gr ], [ %.val.i.i.i.i13.i.i.i.i88.i.i.le, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i.loopexit ] ; 2 uses
  %i.add = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i6.i.i.i.i81.i.lcssa.i, i64 104
  store ptr %i.add, ptr %i.zc, align 8, !noalias !4613
  store ptr %.lcssa531.i, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa533.i, ptr %i.zd, align 8, !noalias !4613
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit163.i.i: ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i107.i.i
  store i64 1, ptr %i.x, align 8, !noalias !4613
  store i64 %i.abr, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !noalias !4613
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit163.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i, %.sink.split.i8.i.i.i.i16.i.i.i.i91.i.i
  %.sroa.0.0.i6.i69.i.i = phi ptr [ %i.acx, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i ], [ %spec.select.i18.i.i.i.i.i.i.i.i97.i.lcssa.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit.i.i ], [ %i.act, %.sink.split.i8.i.i.i.i16.i.i.i.i91.i.i ], [ %spec.select.i18.i.i.i.i6.i.i.i.i81.i.lcssa.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit162.i.i ], [ %i.acc, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.loopexit163.i.i ]
  %i.ade = load i64, ptr %.sroa.4.0..sroa_idx.i284.i, align 8, !alias.scope !4647, !noalias !4650, !noundef !9 ; 2 uses
  %i.adf = add i64 %i.ade, 1
  store i64 %i.adf, ptr %.sroa.4.0..sroa_idx.i284.i, align 8, !alias.scope !4647, !noalias !4650
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i, %select.unfold.i18.i.i.i.i93.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i
  %.sroa.2.0.i70.i.i = phi ptr [ %.sroa.0.0.i6.i69.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i ], [ null, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i ], [ null, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i ], [ null, %select.unfold.i18.i.i.i.i93.i.i ] ; 2 uses
  %.sroa.0.0.i71.i.i = phi i64 [ %i.ade, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i68.i.i ], [ undef, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i66.i.i ], [ undef, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i77.i.i ], [ undef, %select.unfold.i18.i.i.i.i93.i.i ]
  store i64 1, ptr %i.yw, align 8, !alias.scope !4646, !noalias !4613
  store i64 %.sroa.0.0.i71.i.i, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !alias.scope !4646, !noalias !4613
  store ptr %.sroa.2.0.i70.i.i, ptr %.sroa.5.0..sroa_idx.i.i289.i, align 8, !alias.scope !4646, !noalias !4613
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i, %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit_crit_edge.i.i
  %.sroa.022.0.copyload.i.i = phi i64 [ %.sroa.022.0.copyload337.i.i, %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit_crit_edge.i.i ], [ 1, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i ] ; 2 uses
  %.sroa.5.0.copyload.i.i = phi ptr [ %.pre336.i.i, %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit_crit_edge.i.i ], [ %.sroa.2.0.i70.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtB6_4skip4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIB1q_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4I_.exit110.i.i ] ; 5 uses
  %.not42.i.i = icmp eq ptr %.sroa.5.0.copyload.i.i, null
  br i1 %.not42.i.i, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread.i.i, label %bb.gs

bb.gs:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit.i.i
  %i.adg = load ptr, ptr %i.w, align 8, !noalias !4613, !nonnull !9, !align !12, !noundef !9 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4672)
  call void @llvm.experimental.noalias.scope.decl(metadata !4673)
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 32
  %i.adi = load i32, ptr %i.adh, align 8, !range !28, !alias.scope !4672, !noalias !4616, !noundef !9
  %i.adj = icmp eq i32 %i.adi, 3
  br i1 %i.adj, label %bb.gt, label %.invoke481.i.i, !prof !13

bb.gt:                                            ; preds = %bb.gs
  %i.adk = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 32
  %i.adl = load i32, ptr %i.adk, align 8, !range !28, !alias.scope !4673, !noalias !4616, !noundef !9
  %i.adm = icmp eq i32 %i.adl, 3
  br i1 %i.adm, label %bb.gu, label %.invoke481.i.i, !prof !13

.invoke481.i.i:                                   ; preds = %bb.gt, %bb.gs
  %i.adn = phi ptr [ @467, %bb.gs ], [ @466, %bb.gt ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @465, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.adn) #42
          to label %.cont482.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4616

.cont482.i.i:                                     ; preds = %.invoke481.i.i
  unreachable

bb.gu:                                            ; preds = %bb.gt
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adg, i64 40
  %i.adp = load i32, ptr %i.ado, align 8, !alias.scope !4672, !noalias !4616, !noundef !9
  %i.adq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 40
  %i.adr = load i32, ptr %i.adq, align 8, !alias.scope !4673, !noalias !4616, !noundef !9
  %i.ads = icmp eq i32 %i.adp, %i.adr
  br i1 %i.ads, label %bb.gv, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread.i.i

bb.gv:                                            ; preds = %bb.gu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4674
  invoke void @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3zip3zipRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionEBN_EB1v_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %.sroa.5.0.copyload.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.adg)
          to label %.noexc52.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4616

.noexc52.i.i:                                     ; preds = %bb.gv
  call void @llvm.experimental.noalias.scope.decl(metadata !4675)
  %i.adt = load i64, ptr %i.zi, align 8, !alias.scope !4676, !noalias !4674, !noundef !9 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.zh, align 8, !alias.scope !4676, !noalias !4674 ; 2 uses
  %i.adu = icmp ult i64 %.promoted.i.i.i.i, %i.adt
  br i1 %i.adu, label %.lr.ph.i.i.i296.i, label %.loopexit.i290.i

.lr.ph.i.i.i296.i:                                ; preds = %.noexc52.i.i
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !4676, !noalias !4674, !nonnull !9, !noundef !9
  %.val.i.i.i.i.i.i = load ptr, ptr %i.zj, align 8, !alias.scope !4676, !noalias !4674, !nonnull !9, !noundef !9
  br label %bb.gw

bb.gw:                                            ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionB1c_ENCNvB1h_39child_prefix_matches_parent_projections0E0B1n_.exit.backedge.i.i.i.i, %.lr.ph.i.i.i296.i
  %i.adv = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i296.i ], [ %i.adw, %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionB1c_ENCNvB1h_39child_prefix_matches_parent_projections0E0B1n_.exit.backedge.i.i.i.i ] ; 3 uses
  %i.adw = add i64 %i.adv, 1                      ; 2 uses
  %i.adx = getelementptr inbounds nuw [24 x i8], ptr %.val1.i.i.i.i.i.i, i64 %i.adv ; 3 uses
  %i.ady = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.adv ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4677)
  call void @llvm.experimental.noalias.scope.decl(metadata !4678)
  call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  call void @llvm.experimental.noalias.scope.decl(metadata !4680)
  %i.adz = getelementptr inbounds nuw i8, ptr %i.adx, i64 8
  %i.aea = load i32, ptr %i.adz, align 8, !range !34, !alias.scope !4681, !noalias !4682, !noundef !9 ; 2 uses
  %i.aeb = getelementptr inbounds nuw i8, ptr %i.ady, i64 8
  %i.aec = load i32, ptr %i.aeb, align 8, !range !34, !alias.scope !4683, !noalias !4682, !noundef !9
  %i.aed = icmp eq i32 %i.aea, %i.aec
  br i1 %i.aed, label %bb.gx, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread157.i.i

bb.gx:                                            ; preds = %bb.gw
  %i.aee = icmp eq i32 %i.aea, 1
  br i1 %i.aee, label %bb.gy, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionB1c_ENCNvB1h_39child_prefix_matches_parent_projections0E0B1n_.exit.backedge.i.i.i.i

bb.gy:                                            ; preds = %bb.gx
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adx, i64 12
  %i.aeg = load i32, ptr %i.aef, align 4, !alias.scope !4681, !noalias !4682, !noundef !9
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.ady, i64 12
  %i.aei = load i32, ptr %i.aeh, align 4, !alias.scope !4683, !noalias !4682, !noundef !9
  %i.aej = icmp eq i32 %i.aeg, %i.aei
  br i1 %i.aej, label %.split.i.i.i297.i, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread157.i.i

.split.i.i.i297.i:                                ; preds = %bb.gy
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adx, i64 16
  %i.ael = load i32, ptr %i.aek, align 8, !alias.scope !4681, !noalias !4682, !noundef !9
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ady, i64 16
  %i.aen = load i32, ptr %i.aem, align 8, !alias.scope !4683, !noalias !4682, !noundef !9
  %.not.i.i.i298.i = icmp eq i32 %i.ael, %i.aen
  br i1 %.not.i.i.i298.i, label %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionB1c_ENCNvB1h_39child_prefix_matches_parent_projections0E0B1n_.exit.backedge.i.i.i.i, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread157.i.i

_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionB1c_ENCNvB1h_39child_prefix_matches_parent_projections0E0B1n_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i297.i, %bb.gx
  %exitcond.not.i.i.i.i = icmp eq i64 %i.adw, %i.adt
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i290.i, label %bb.gw

_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread.i.i: ; preds = %bb.gu, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionIBw_TjRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEE18get_or_insert_withNCNvMs3_NtNtNtB5_4iter8adapters8peekableINtB24_8PeekableINtNtB26_9enumerate9EnumerateINtNtB26_4skip4SkipINtNtB26_7flatten7FlattenINtB3_8IntoIterIB3D_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecBP_EEEEEEEE4peek0EBT_.exit.i.i, %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread157.i.i
  br i1 %.sroa.05.0.i.i, label %bb.fw, label %bb.gz, !prof !13

_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread157.i.i: ; preds = %.split.i.i.i297.i, %bb.gy, %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4674
  br label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread.i.i

.loopexit.i290.i:                                 ; preds = %_RNCINvNvNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator3all5checkTRNtNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitor10ProjectionB1c_ENCNvB1h_39child_prefix_matches_parent_projections0E0B1n_.exit.backedge.i.i.i.i, %.noexc52.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !4674
  store i64 0, ptr %i.yw, align 8, !noalias !4613
  %i.aeo = trunc nuw i64 %.sroa.022.0.copyload.i.i to i1
  br i1 %i.aeo, label %bb.hf, label %bb.ha

bb.gz:                                            ; preds = %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis39child_prefix_matches_parent_projections.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4613
  store ptr %i.w, ptr %i.t, align 8, !noalias !4613
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtB6_5Debug3fmtBA_, ptr %.sroa.435.0..sroa_idx.i.i, align 8, !noalias !4613
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.hg, %bb.gz
  %i.aep = phi ptr [ @26, %bb.gz ], [ @29, %bb.hg ]
  %i.aeq = phi ptr [ %i.t, %bb.gz ], [ %i.u, %bb.hg ]
  %i.aer = phi ptr [ @27, %bb.gz ], [ @30, %bb.hg ]
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull %i.aep, ptr noundef nonnull %i.aeq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aer) #40
          to label %.cont.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4616

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.ha:                                            ; preds = %.loopexit.i290.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  call void @llvm.experimental.noalias.scope.decl(metadata !4685)
  %i.aes = load i64, ptr %.sroa.4403.0..sroa_idx.i, align 8, !alias.scope !4686, !noalias !4613, !noundef !9 ; 2 uses
  %.not.i.i53.i.i = icmp eq i64 %i.aes, 0
  br i1 %.not.i.i53.i.i, label %bb.hb, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i.i, !prof !13

bb.hb:                                            ; preds = %bb.ha
  call void @llvm.experimental.noalias.scope.decl(metadata !4687)
  call void @llvm.experimental.noalias.scope.decl(metadata !4688)
  %.promoted.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !4689, !noalias !4613
  %.promoted27.i.i.i.i.i.i = load i64, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4689, !noalias !4613 ; 4 uses
  %i.aet = trunc nuw i64 %.promoted.i.i.i.i.i.i to i1
  call void @llvm.experimental.noalias.scope.decl(metadata !4690)
  br i1 %i.aet, label %bb.hc, label %select.unfold.i.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.hb
  call void @llvm.experimental.noalias.scope.decl(metadata !4691)
  call void @llvm.experimental.noalias.scope.decl(metadata !4692)
  call void @llvm.experimental.noalias.scope.decl(metadata !4693)
  %.promoted.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.yx, align 8, !alias.scope !4694, !noalias !4613 ; 3 uses
  %.promoted19.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4694, !noalias !4613 ; 5 uses
  %.promoted20.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.yy, align 8, !alias.scope !4694, !noalias !4613 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i631.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i, null
  %i.aeu = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i, %.promoted20.i.i.i.i.i.i.i.i.i.i
  %or.cond485.i632.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i631.i, i1 true, i1 %i.aeu
  br i1 %or.cond485.i632.i, label %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i

bb.hd:                                            ; preds = %select.unfold.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0402.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0402.sroa.8.0..sroa_idx.i, i64 48, i1 false), !alias.scope !4689, !noalias !4613
  %.promoted.i.i.i.i.i.i.i.i.i.i.jt0 = load ptr, ptr %i.yx, align 8, !alias.scope !4695, !noalias !4613 ; 3 uses
  %.promoted19.i.i.i.i.i.i.i.i.i.i.jt0 = load ptr, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4695, !noalias !4613 ; 4 uses
  %.promoted20.i.i.i.i.i.i.i.i.i.i.jt0 = load ptr, ptr %i.yy, align 8, !alias.scope !4695, !noalias !4613 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i631.i.jt0 = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.jt0, null
  %i.aev = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i.i.i.jt0, %.promoted20.i.i.i.i.i.i.i.i.i.i.jt0
  %or.cond485.i632.i.jt0 = select i1 %.not.i.i.i.i.i.i.i.i.i.i631.i.jt0, i1 true, i1 %i.aev
  br i1 %or.cond485.i632.i.jt0, label %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i

select.unfold.i.i.i.i.i.i.i.i.i.i.preheader:      ; preds = %bb.hc
  %i.aew = load ptr, ptr %i.yz, align 8, !alias.scope !4694, !noalias !4613, !nonnull !9 ; 2 uses
  %.not.i5.i.i.i.i.i.i.i.i.i.i132 = icmp eq ptr %.promoted19.i.i.i.i.i.i.i.i.i.i, null
  %i.aex = icmp eq ptr %.promoted19.i.i.i.i.i.i.i.i.i.i, %i.aew
  %or.cond.i.i.i.i.i.i.i.i.i.i.i133 = select i1 %.not.i5.i.i.i.i.i.i.i.i.i.i132, i1 true, i1 %i.aex
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i133, label %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge, label %.lr.ph134.preheader

select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0:  ; preds = %bb.hd
  %i.aey = load ptr, ptr %i.yz, align 8, !alias.scope !4695, !noalias !4613, !nonnull !9 ; 2 uses
  %.not.i5.i.i.i.i.i.i.i.i.i.i132.jt0 = icmp eq ptr %.promoted19.i.i.i.i.i.i.i.i.i.i.jt0, null
  %i.aez = icmp eq ptr %.promoted19.i.i.i.i.i.i.i.i.i.i.jt0, %i.aey
  %or.cond.i.i.i.i.i.i.i.i.i.i.i133.jt0 = select i1 %.not.i5.i.i.i.i.i.i.i.i.i.i132.jt0, i1 true, i1 %i.aez
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i133.jt0, label %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.jt0, label %.lr.ph134.preheader

.lr.ph134.preheader:                              ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader
  %i.afa = phi ptr [ %i.aey, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0 ], [ %i.aew, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.promoted19.i.i.i.i.i.i.i.i.i.i319 = phi ptr [ %.promoted19.i.i.i.i.i.i.i.i.i.i.jt0, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0 ], [ %.promoted19.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.afb = phi i64 [ 0, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0 ], [ %.promoted27.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  br label %.lr.ph134

select.unfold.i.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph134
  %i.afc = icmp eq ptr %i.afe, %i.afa
  br i1 %i.afc, label %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %select.unfold.i.i.i.i.i.i.i.i.i.i
  %i.afd = phi ptr [ %i.afe, %select.unfold.i.i.i.i.i.i.i.i.i.i ], [ %.promoted19.i.i.i.i.i.i.i.i.i.i319, %.lr.ph134.preheader ] ; 4 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.afd, i64 40 ; 4 uses
  %i.aff = getelementptr i8, ptr %i.afd, i64 16
  %.val4.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.aff, align 8, !noalias !4696, !noundef !9 ; 3 uses
  %i.afg = icmp eq i64 %.val4.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.afg, label %select.unfold.i.i.i.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit

select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i
  %i.afh = getelementptr i8, ptr %i.afd, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.le408 = load ptr, ptr %i.afh, align 8, !noalias !4696, !nonnull !9, !noundef !9
  %.idx653.i.le405 = mul nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 104
  %i.afi = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.le408, i64 %.idx653.i.le405
  br label %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge:     ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader
  %i.afj = phi i64 [ %i.afb, %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.loopexit ], [ %.promoted27.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %.lcssa70 = phi ptr [ %i.afe, %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.loopexit ], [ %.promoted19.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.lcssa68 = phi ptr [ %i.afi, %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.loopexit ], [ %.promoted20.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader ]
  store ptr null, ptr %i.yx, align 8, !noalias !4613
  store ptr %.lcssa70, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa68, ptr %i.yy, align 8, !noalias !4613
  %i.afk = load ptr, ptr %i.za, align 8, !alias.scope !4697, !noalias !4613, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.afk, null
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i.i, label %.sink.split.i8.i.i.i.i.i.i.i.i.i.i

select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.jt0: ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i.preheader.jt0
  store ptr null, ptr %i.yx, align 8, !noalias !4613
  %i.afl = load ptr, ptr %i.za, align 8, !alias.scope !4697, !noalias !4613, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i.i.i.i.i.i.i.jt0 = icmp eq ptr %i.afl, null
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i.i.jt0, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i, label %.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0

.sink.split.i8.i.i.i.i.i.i.i.i.i.i:               ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge
  %i.afm = load ptr, ptr %i.zb, align 8, !alias.scope !4698, !noalias !4613, !nonnull !9, !noundef !9
  %i.afn = icmp eq ptr %i.afk, %i.afm             ; 2 uses
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afk, i64 104
  %spec.select.i9.i.i.i.i.i.i.i.i.i.i = select i1 %i.afn, ptr null, ptr %i.afo
  store ptr %spec.select.i9.i.i.i.i.i.i.i.i.i.i, ptr %i.za, align 8, !alias.scope !4697, !noalias !4613
  br i1 %i.afn, label %select.unfold.i.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit161.i.i

.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0:           ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.jt0
  %i.afp = load ptr, ptr %i.zb, align 8, !alias.scope !4698, !noalias !4613, !nonnull !9, !noundef !9
  %i.afq = icmp eq ptr %i.afl, %i.afp             ; 2 uses
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afl, i64 104
  %spec.select.i9.i.i.i.i.i.i.i.i.i.i.jt0 = select i1 %i.afq, ptr null, ptr %i.afr
  store ptr %spec.select.i9.i.i.i.i.i.i.i.i.i.i.jt0, ptr %i.za, align 8, !alias.scope !4697, !noalias !4613
  br i1 %i.afq, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit161.i.i

select.unfold.i.i.i.i.i.i.i:                      ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge, %bb.hb
  %i.afs = phi i64 [ %i.afj, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i ], [ %i.afj, %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge ], [ %.promoted27.i.i.i.i.i.i, %bb.hb ] ; 3 uses
  switch i64 %i.afs, label %bb.hd [
    i64 2, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i
    i64 0, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i
  ]

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i: ; preds = %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.jt0, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0, %select.unfold.i.i.i.i.i.i.i, %select.unfold.i.i.i.i.i.i.i
  %i.aft = phi i64 [ %i.afs, %select.unfold.i.i.i.i.i.i.i ], [ %i.afs, %select.unfold.i.i.i.i.i.i.i ], [ 0, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0 ], [ 0, %select.unfold.i.i.i.i.i.i.i.i.i.i._crit_edge.jt0 ]
  store i64 %i.aft, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !noalias !4613
  store i64 0, ptr %i.x, align 8, !noalias !4613
  call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  %i.afu = load i64, ptr %.sroa.0402.sroa.5.0..sroa_idx.i, align 8, !range !27, !alias.scope !4700, !noalias !4613, !noundef !9
  %i.afv = trunc nuw i64 %i.afu to i1
  br i1 %i.afv, label %bb.he, label %.thread.i295.i

bb.he:                                            ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4701)
  call void @llvm.experimental.noalias.scope.decl(metadata !4702)
  call void @llvm.experimental.noalias.scope.decl(metadata !4703)
  %.promoted.i.i.i.i3.i.i.i.i.i.i = load ptr, ptr %i.zc, align 8, !alias.scope !4704, !noalias !4613 ; 3 uses
  %.promoted19.i.i.i.i4.i.i.i.i.i.i = load ptr, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4704, !noalias !4613 ; 5 uses
  %i.afw = load ptr, ptr %i.ze, align 8, !alias.scope !4704, !noalias !4613, !nonnull !9 ; 2 uses
  %.promoted20.i.i.i.i5.i.i.i.i.i.i = load ptr, ptr %i.zd, align 8, !alias.scope !4704, !noalias !4613 ; 3 uses
  %.not.i.i.i.i.i7.i.i.i.i.i644.i = icmp eq ptr %.promoted.i.i.i.i3.i.i.i.i.i.i, null
  %i.afx = icmp eq ptr %.promoted.i.i.i.i3.i.i.i.i.i.i, %.promoted20.i.i.i.i5.i.i.i.i.i.i
  %or.cond475645.i = select i1 %.not.i.i.i.i.i7.i.i.i.i.i644.i, i1 true, i1 %i.afx
  br i1 %or.cond475645.i, label %select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader, label %.thread399.loopexit.i.i

select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader:    ; preds = %bb.he
  %.not.i5.i.i.i.i11.i.i.i.i.i.i137 = icmp eq ptr %.promoted19.i.i.i.i4.i.i.i.i.i.i, null
  %i.afy = icmp eq ptr %.promoted19.i.i.i.i4.i.i.i.i.i.i, %i.afw
  %or.cond.i.i.i.i.i12.i.i.i.i.i.i138 = select i1 %.not.i5.i.i.i.i11.i.i.i.i.i.i137, i1 true, i1 %i.afy
  br i1 %or.cond.i.i.i.i.i12.i.i.i.i.i.i138, label %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge, label %.lr.ph139

select.unfold.i.i.i.i10.i.i.i.i.i.i:              ; preds = %.lr.ph139
  %i.afz = icmp eq ptr %i.agb, %i.afw
  br i1 %i.afz, label %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge.loopexit, label %.lr.ph139

.lr.ph139:                                        ; preds = %select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader, %select.unfold.i.i.i.i10.i.i.i.i.i.i
  %i.aga = phi ptr [ %i.agb, %select.unfold.i.i.i.i10.i.i.i.i.i.i ], [ %.promoted19.i.i.i.i4.i.i.i.i.i.i, %select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader ] ; 4 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.aga, i64 40 ; 4 uses
  %i.agc = getelementptr i8, ptr %i.aga, i64 16
  %.val4.i.i.i.i14.i.i.i.i.i.i = load i64, ptr %i.agc, align 8, !noalias !4705, !noundef !9 ; 3 uses
  %i.agd = icmp eq i64 %.val4.i.i.i.i14.i.i.i.i.i.i, 0
  br i1 %i.agd, label %select.unfold.i.i.i.i10.i.i.i.i.i.i, label %.thread399.loopexit.i.i.loopexit

select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge.loopexit: ; preds = %select.unfold.i.i.i.i10.i.i.i.i.i.i
  %i.age = getelementptr i8, ptr %i.aga, i64 8
  %.val.i.i.i.i13.i.i.i.i.i.i.le418 = load ptr, ptr %i.age, align 8, !noalias !4705, !nonnull !9, !noundef !9
  %.idx654.i.le415 = mul nuw nsw i64 %.val4.i.i.i.i14.i.i.i.i.i.i, 104
  %i.agf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i13.i.i.i.i.i.i.le418, i64 %.idx654.i.le415
  br label %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge

select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge:   ; preds = %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge.loopexit, %select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader
  %.lcssa92 = phi ptr [ %.promoted19.i.i.i.i4.i.i.i.i.i.i, %select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader ], [ %i.agb, %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge.loopexit ]
  %.lcssa90 = phi ptr [ %.promoted20.i.i.i.i5.i.i.i.i.i.i, %select.unfold.i.i.i.i10.i.i.i.i.i.i.preheader ], [ %i.agf, %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge.loopexit ]
  store ptr null, ptr %i.zc, align 8, !noalias !4613
  store ptr %.lcssa92, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa90, ptr %i.zd, align 8, !noalias !4613
  %i.agg = load ptr, ptr %i.zf, align 8, !alias.scope !4706, !noalias !4613, !noundef !9 ; 4 uses
  %.not.i7.i.i.i.i15.i.i.i.i.i.i = icmp eq ptr %i.agg, null
  br i1 %.not.i7.i.i.i.i15.i.i.i.i.i.i, label %.thread.i295.i, label %.sink.split.i8.i.i.i.i16.i.i.i.i.i.i

.sink.split.i8.i.i.i.i16.i.i.i.i.i.i:             ; preds = %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge
  %i.agh = load ptr, ptr %i.zg, align 8, !alias.scope !4707, !noalias !4613, !nonnull !9, !noundef !9
  %i.agi = icmp eq ptr %i.agg, %i.agh             ; 2 uses
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agg, i64 104
  %spec.select.i9.i.i.i.i17.i.i.i.i.i.i = select i1 %i.agi, ptr null, ptr %i.agj
  store ptr %spec.select.i9.i.i.i.i17.i.i.i.i.i.i, ptr %i.zf, align 8, !alias.scope !4706, !noalias !4613
  br i1 %i.agi, label %.thread.i295.i, label %.thread399.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i.i: ; preds = %bb.ha
  store i64 0, ptr %.sroa.4403.0..sroa_idx.i, align 8, !alias.scope !4686, !noalias !4613
  %i.agk = call fastcc noundef align 8 ptr @_RNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlattenINtNtBb_6option8IntoIterIB3_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEENtNtNtB9_6traits8iterator8Iterator3nthB3S_(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.x, i64 noundef %i.aes) #45, !noalias !4616 ; 2 uses
  %.not.i.i291.i = icmp eq ptr %i.agk, null
  br i1 %.not.i.i291.i, label %.thread.i295.i, label %.thread399.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit: ; preds = %.lr.ph134
  %i.agl = getelementptr i8, ptr %i.afd, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.le = load ptr, ptr %i.agl, align 8, !noalias !4696, !nonnull !9, !noundef !9 ; 2 uses
  %.idx653.i.le = mul nuw nsw i64 %.val4.i.i.i.i.i.i.i.i.i.i, 104
  %i.agm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i.i.i.le, i64 %.idx653.i.le
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit, %bb.hc, %bb.hd
  %i.agn = phi i64 [ %.promoted27.i.i.i.i.i.i, %bb.hc ], [ 0, %bb.hd ], [ %i.afb, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit ]
  %.lcssa538.i = phi ptr [ %.promoted20.i.i.i.i.i.i.i.i.i.i, %bb.hc ], [ %.promoted20.i.i.i.i.i.i.i.i.i.i.jt0, %bb.hd ], [ %i.agm, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit ]
  %.lcssa536.i = phi ptr [ %.promoted19.i.i.i.i.i.i.i.i.i.i, %bb.hc ], [ %.promoted19.i.i.i.i.i.i.i.i.i.i.jt0, %bb.hd ], [ %i.afe, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit ]
  %spec.select.i18.i.i.i.i.i.i.i.i.i.lcssa.i = phi ptr [ %.promoted.i.i.i.i.i.i.i.i.i.i, %bb.hc ], [ %.promoted.i.i.i.i.i.i.i.i.i.i.jt0, %bb.hd ], [ %.val.i.i.i.i.i.i.i.i.i.i.le, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i.loopexit ] ; 2 uses
  store i64 %i.agn, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !noalias !4613
  %i.ago = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i.i.i.i.i.i.lcssa.i, i64 104
  store i64 1, ptr %i.x, align 8, !noalias !4613
  store ptr %i.ago, ptr %i.yx, align 8, !noalias !4613
  store ptr %.lcssa536.i, ptr %.sroa.0402.sroa.4.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa538.i, ptr %i.yy, align 8, !noalias !4613
  br label %.thread399.i.i

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit161.i.i: ; preds = %.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i
  %i.agp = phi ptr [ %i.afl, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0 ], [ %i.afk, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i ]
  %i.agq = phi i64 [ 0, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i.jt0 ], [ %i.afj, %.sink.split.i8.i.i.i.i.i.i.i.i.i.i ]
  store i64 %i.agq, ptr %.sroa.0402.sroa.7.0..sroa_idx.i, align 8, !noalias !4613
  store i64 1, ptr %i.x, align 8, !noalias !4613
  br label %.thread399.i.i

.thread399.loopexit.i.i.loopexit:                 ; preds = %.lr.ph139
  %i.agr = getelementptr i8, ptr %i.aga, i64 8
  %.val.i.i.i.i13.i.i.i.i.i.i.le = load ptr, ptr %i.agr, align 8, !noalias !4705, !nonnull !9, !noundef !9 ; 2 uses
  %.idx654.i.le = mul nuw nsw i64 %.val4.i.i.i.i14.i.i.i.i.i.i, 104
  %i.ags = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i13.i.i.i.i.i.i.le, i64 %.idx654.i.le
  br label %.thread399.loopexit.i.i

.thread399.loopexit.i.i:                          ; preds = %.thread399.loopexit.i.i.loopexit, %bb.he
  %.lcssa551.i = phi ptr [ %.promoted20.i.i.i.i5.i.i.i.i.i.i, %bb.he ], [ %i.ags, %.thread399.loopexit.i.i.loopexit ]
  %.lcssa549.i = phi ptr [ %.promoted19.i.i.i.i4.i.i.i.i.i.i, %bb.he ], [ %i.agb, %.thread399.loopexit.i.i.loopexit ]
  %spec.select.i18.i.i.i.i6.i.i.i.i.i.lcssa.i = phi ptr [ %.promoted.i.i.i.i3.i.i.i.i.i.i, %bb.he ], [ %.val.i.i.i.i13.i.i.i.i.i.i.le, %.thread399.loopexit.i.i.loopexit ] ; 2 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i.i.i6.i.i.i.i.i.lcssa.i, i64 104
  store ptr %i.agt, ptr %i.zc, align 8, !noalias !4613
  store ptr %.lcssa549.i, ptr %.sroa.0402.sroa.6.0..sroa_idx.i, align 8, !noalias !4613
  store ptr %.lcssa551.i, ptr %i.zd, align 8, !noalias !4613
  br label %.thread399.i.i

.thread399.i.i:                                   ; preds = %.thread399.loopexit.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit161.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i.i, %.sink.split.i8.i.i.i.i16.i.i.i.i.i.i
  %.sroa.0.0.i6.i.i.i = phi ptr [ %i.agk, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i.i ], [ %spec.select.i18.i.i.i.i.i.i.i.i.i.lcssa.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit.i.i ], [ %i.agg, %.sink.split.i8.i.i.i.i16.i.i.i.i.i.i ], [ %i.agp, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.thread.i.loopexit161.i.i ], [ %spec.select.i18.i.i.i.i6.i.i.i.i.i.lcssa.i, %.thread399.loopexit.i.i ]
  %i.agu = load i64, ptr %.sroa.4.0..sroa_idx.i284.i, align 8, !alias.scope !4684, !noalias !4613, !noundef !9
  %i.agv = add i64 %i.agu, 1
  store i64 %i.agv, ptr %.sroa.4.0..sroa_idx.i284.i, align 8, !alias.scope !4684, !noalias !4613
  br label %bb.hf

bb.hf:                                            ; preds = %.thread399.i.i, %.loopexit.i290.i
  %.sroa.6.0402.i.i = phi ptr [ %.sroa.0.0.i6.i.i.i, %.thread399.i.i ], [ %.sroa.5.0.copyload.i.i, %.loopexit.i290.i ] ; 7 uses
  store ptr %.sroa.6.0402.i.i, ptr %i.v, align 8, !noalias !4613, !captures !56
  %i.agw = getelementptr inbounds nuw i8, ptr %.sroa.6.0402.i.i, i64 16
  %i.agx = load i64, ptr %i.agw, align 8, !noalias !4616, !noundef !9 ; 7 uses
  %i.agy = icmp ult i64 %i.agx, 384307168202282326
  call void @llvm.assume(i1 %i.agy)
  %i.agz = load ptr, ptr %i.w, align 8, !noalias !4613, !nonnull !9, !align !12, !noundef !9
  %i.aha = getelementptr inbounds nuw i8, ptr %i.agz, i64 16
  %i.ahb = load i64, ptr %i.aha, align 8, !noalias !4616, !noundef !9 ; 2 uses
  %i.ahc = icmp ult i64 %i.ahb, 384307168202282326
  call void @llvm.assume(i1 %i.ahc)
  %.not44.i.i = icmp samesign ult i64 %i.agx, %i.ahb
  br i1 %.not44.i.i, label %bb.hg, label %bb.hh, !prof !10

.thread.i295.i:                                   ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4skipINtB4_4SkipINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterIBY_INtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEENtNtNtB8_6traits8iterator8Iterator4nextB4f_.exit.i.i.i, %.sink.split.i8.i.i.i.i16.i.i.i.i.i.i, %select.unfold.i.i.i.i10.i.i.i.i.i.i._crit_edge, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtB7_7flatten7FlattenINtNtNtCs3gqD4ldeioo_8indexmap3map4iter6ValuesINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceEEEEEINtB5_8FuseImplBY_E4nextB4c_.exit.thread.i.i.i.i.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #40
          to label %bb.gl unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4616

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !4613
  store ptr %i.w, ptr %i.u, align 8, !noalias !4613
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtB6_5Debug3fmtBA_, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !noalias !4613
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.v, ptr %i.ahd, align 8, !noalias !4613
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs8K4cjrcxBsw_6hir_ty5infer13CapturedPlaceNtB6_5Debug3fmtBA_, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !4613
  br label %.invoke.i.i

bb.hh:                                            ; preds = %bb.hf
  %.val47.i.i = load i64, ptr %i.zw, align 8, !noalias !4616 ; 4 uses
  %.val48.i.i = load i8, ptr %i.zx, align 8, !range !29, !noalias !4616, !noundef !9
  call void @llvm.experimental.noalias.scope.decl(metadata !4708)
  call void @llvm.experimental.noalias.scope.decl(metadata !4709)
  %switch.i.i = icmp samesign ult i8 %.val48.i.i, 3
  %.phi.trans.insert1.i.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.6.0402.i.i, i64 8
  %.pre2.i.pre.i.i = load ptr, ptr %.phi.trans.insert1.i.phi.trans.insert.i.i, align 8, !alias.scope !4708, !noalias !4616 ; 5 uses
  br i1 %switch.i.i, label %.loopexit.i.i.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ahe = getelementptr inbounds nuw [24 x i8], ptr %.pre2.i.pre.i.i, i64 %i.agx ; 2 uses
  %i.ahf = icmp ult i64 %.val47.i.i, 384307168202282326
  call void @llvm.assume(i1 %i.ahf)
  %.not.i.i.i.i.i = icmp eq i64 %.val47.i.i, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i294.i, label %bb.hm

._crit_edge.i.i.i.i294.i:                         ; preds = %bb.hm, %bb.hi
  %.promoted.i.i.i.i.i.i.i = phi ptr [ %.pre2.i.pre.i.i, %bb.hi ], [ %i.ahw, %bb.hm ] ; 2 uses
  %.not.i.i.i.i.i58.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i, %i.ahe
  br i1 %.not.i.i.i.i.i58.i.i, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis52should_reborrow_from_env_of_parent_coroutine_closure.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i294.i
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.6.0402.i.i, i64 24
  br label %bb.hj

bb.hj:                                            ; preds = %.backedge.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ahh = phi ptr [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ahj, %.backedge.i.i.i.i.i.i.i ] ; 2 uses
  %i.ahi = phi i64 [ %.val47.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.aht, %.backedge.i.i.i.i.i.i.i ] ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 24 ; 2 uses
  %i.ahk = getelementptr i8, ptr %i.ahh, i64 8
  %.val6.i.i.i.i.i.i.i = load i32, ptr %i.ahk, align 8, !range !34, !noalias !4710, !noundef !9
  %i.ahl = icmp eq i32 %.val6.i.i.i.i.i.i.i, 0
  br i1 %i.ahl, label %bb.hk, label %.backedge.i.i.i.i.i.i.i

bb.hk:                                            ; preds = %bb.hj
  %i.ahm = icmp ult i64 %i.ahi, %i.agx
  br i1 %i.ahm, label %_RNvMNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB2_5Place20ty_before_projection.exit.i.i.i.i.i.i.i.i.i.i, label %bb.hl, !prof !13

bb.hl:                                            ; preds = %bb.hk
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @293, i64 noundef 59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @294) #42
          to label %.noexc59.i.i unwind label %.thread.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4616

.noexc59.i.i:                                     ; preds = %bb.hl
  unreachable

_RNvMNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB2_5Place20ty_before_projection.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.hk
  %i.ahn = icmp eq i64 %i.ahi, 0
  %i.aho = getelementptr [24 x i8], ptr %.pre2.i.pre.i.i, i64 %i.ahi
  %i.ahp = getelementptr i8, ptr %i.aho, i64 -24
  %.pn.in.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ahn, ptr %i.ahg, ptr %i.ahp
  %.pn.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.pn.in.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4711, !nonnull !9, !noundef !9 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4710 ; 2 uses
  %i.ahq = icmp ne i32 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, 27
  call void @llvm.assume(i1 %i.ahq)
  %i.ahr = icmp eq i32 %.sroa.01.0.copyload.i.i.i.i.i.i.i.i.i.i, 14
  br i1 %i.ahr, label %.split.i.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %_RNvMNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB2_5Place20ty_before_projection.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !4710
  %i.ahs = trunc i8 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ahs, label %.backedge.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i

.backedge.i.i.i.i.i.i.i:                          ; preds = %.split.i.i.i.i.i.i.i, %_RNvMNtNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis16expr_use_visitorNtB2_5Place20ty_before_projection.exit.i.i.i.i.i.i.i.i.i.i, %bb.hj
  %i.aht = add i64 %i.ahi, 1
  %.not18.i.i.i.i.i.i.i = icmp eq ptr %i.ahj, %i.ahe
  br i1 %.not18.i.i.i.i.i.i.i, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis52should_reborrow_from_env_of_parent_coroutine_closure.exit.i.i.i, label %bb.hj

bb.hm:                                            ; preds = %bb.hi
  %i.ahu = add nsw i64 %.val47.i.i, -1            ; 2 uses
  %.not.i.not.i.i.i.i.i.i = icmp samesign ult i64 %i.ahu, %i.agx
  %i.ahv = getelementptr inbounds nuw [24 x i8], ptr %.pre2.i.pre.i.i, i64 %i.ahu
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.ahv, i64 24
  br i1 %.not.i.not.i.i.i.i.i.i, label %._crit_edge.i.i.i.i294.i, label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis52should_reborrow_from_env_of_parent_coroutine_closure.exit.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.split.i.i.i.i.i.i.i, %bb.hh
  %i.ahx = getelementptr inbounds nuw i8, ptr %.sroa.6.0402.i.i, i64 88
  %i.ahy = load i8, ptr %i.ahx, align 8, !range !29, !alias.scope !4712, !noalias !4616, !noundef !9
  %i.ahz = icmp eq i8 %i.ahy, 2
  br label %_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis52should_reborrow_from_env_of_parent_coroutine_closure.exit.i.i.i

_RNvNtNtNtCs8K4cjrcxBsw_6hir_ty5infer7closure8analysis52should_reborrow_from_env_of_parent_coroutine_closure.exit.i.i.i: ; preds = %.backedge.i.i.i.i.i.i.i, %.loopexit.i.i.i.i, %bb.hm, %._crit_edge.i.i.i.i294.i
  %.sroa.0.0.i.i.i.i = phi i1 [ %i.ahz, %.loopexit.i.i.i.i ], [ true, %bb.hm ], [ true, %._crit_edge.i.i.i.i294.i ], [ true, %.backedge.i.i.i.i.i.i.i ]
  %.not.i.i56.i.i = icmp eq i64 %i.agx, 0
  %i.aia = getelementptr [24 x i8], ptr %.pre2.i.pre.i.i, i64 %i.agx
  %i.aib = getelementptr i8, ptr %i.aia, i64 -24  ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %.sroa.6.0402.i.i, i64 24
  %.not.i1.i.i.i.i = icmp eq ptr %i.aib, null
  %.not.i.i2.i.i.i = select i1 %.not.i.i56.i.i, i1 true, i1 %.not.i1.i.i.i.i
  %spec.select.i.i.i.i = select i1 %.not.i.i2.i.i.i, ptr %i.aic, ptr %i.aib
  %.val.i.pn.i.i.i.i = load ptr, ptr %spec.select.i.i.i.i, align 8, !noalias !4616, !nonnull !9, !noundef !9
end_hunk_0
