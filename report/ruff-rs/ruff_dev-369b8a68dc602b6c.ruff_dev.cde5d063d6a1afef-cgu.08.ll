Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.08?download=true
inline.NumInlined: 1053
inline.NumDeleted: 553
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1L_4find5checkBW_QNCNvMs3_NtB1a_5udiffINtB3o_11UnifiedDiffeE10iter_hunks0E0INtNtNtB1T_3ops12control_flow11ControlFlowBW_EECshFZivb7RUAJ_8ruff_dev:bb.a
bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit.thread unwind label %bb.f, !noalias !787

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i unwind label %bb.g, !noalias !787

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !787
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.c ]
  resume { ptr, i32 } %common.resume.op.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit.thread: ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !787
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.d
  %.sroa.05.0.copyload = load i64, ptr %i.a, align 8, !alias.scope !788, !noalias !789 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, i64 16, i1 false), !alias.scope !788, !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not.i = icmp eq i64 %.sroa.05.0.copyload, -1
  br i1 %.not.i, label %bb.j, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %storemerge = phi i64 [ %.sroa.05.0.copyload, %bb.i ], [ -1, %bb.a ], [ -1, %bb.j ]
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  br label %._crit_edge

bb.j:                                             ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit.thread, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4find5checkINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpEQNCNvMs3_NtB1M_5udiffINtB2v_11UnifiedDiffeE10iter_hunks0E0CshFZivb7RUAJ_8ruff_dev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.not = icmp eq ptr %i.g, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1I_8adapters3map8map_foldBW_TINtNtB1K_6option6OptionNtNtB10_19upstream_categories25UpstreamCategoryAndPrefixEBW_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvB1C_8for_each4callB3f_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB2I_3MapBH_B4D_EB3g_BW_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0EB4J_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 8 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [2 x i8], align 2                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.i, align 8        ; 2 uses
  %.not.not15 = icmp eq ptr %.promoted, %i.h
  br i1 %.not.not15, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEECshFZivb7RUAJ_8ruff_dev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.66.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.10.16..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleTINtNtBa_6option6OptionNtNtBY_19upstream_categories25UpstreamCategoryAndPrefixEBU_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB2V_EB1A_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0B31_.exit
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleTINtNtBa_6option6OptionNtNtBY_19upstream_categories25UpstreamCategoryAndPrefixEBU_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB2V_EB1A_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0B31_.exit ] ; 2 uses
  %i.n = load i16, ptr %i.m, align 2, !range !33, !noundef !8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i16 %i.n, ptr %i.e, align 2, !noalias !804
  invoke void @_RNvMNtCsEhZmuQNqkz_11ruff_linter19upstream_categoriesNtNtB4_5codes4Rule17upstream_category(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %2)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  store i16 %i.n, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !805
  invoke void @_RNvMNtCsgQfI1edjipl_9hashbrown11rustc_entryINtNtB4_3map7HashMapINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_5codes4RuleENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE11rustc_entryCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d)
          to label %.noexc7 unwind label %bb.f

.noexc7:                                          ; preds = %.noexc
  %i.p = load ptr, ptr %i.c, align 8, !noalias !805, !noundef !8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc7
  %.sroa.44.0.copyload.i.i.i = load i64, ptr %i.k, align 8, !noalias !805
  %.sroa.55.0.copyload.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i, align 8, !noalias !805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !806
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.16..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.66.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !805
  store ptr %.sroa.55.0.copyload.i.i.i, ptr %i.b, align 8, !noalias !805
  store i64 0, ptr %i.l, align 8, !noalias !806
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !806
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !806
  %i.q = invoke noundef nonnull ptr @_RNvMs6_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1v_5codes4RuleEEE14insert_no_growCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, i64 noundef %.sroa.44.0.copyload.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.b)
          to label %.noexc8 unwind label %bb.f

.noexc8:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !806
  br label %_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1I_5codes4RuleEE10or_defaultCshFZivb7RUAJ_8ruff_dev.exit.i.i.i

bb.d:                                             ; preds = %.noexc7
  %i.r = load ptr, ptr %i.k, align 8, !noalias !805, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !805
  br label %_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1I_5codes4RuleEE10or_defaultCshFZivb7RUAJ_8ruff_dev.exit.i.i.i

_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1I_5codes4RuleEE10or_defaultCshFZivb7RUAJ_8ruff_dev.exit.i.i.i: ; preds = %bb.d, %.noexc8
  %.pn.i.i.i.i = phi ptr [ %i.q, %.noexc8 ], [ %i.r, %bb.d ] ; 3 uses
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -24 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !807, !noalias !805, !noundef !8 ; 3 uses
  %i.u = load i64, ptr %.sroa.0.0.i.i.i.i, align 8, !range !24, !alias.scope !807, !noalias !805, !noundef !8
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %bb.e, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleTINtNtBa_6option6OptionNtNtBY_19upstream_categories25UpstreamCategoryAndPrefixEBU_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB2V_EB1A_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0B31_.exit

bb.e:                                             ; preds = %_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1I_5codes4RuleEE10or_defaultCshFZivb7RUAJ_8ruff_dev.exit.i.i.i
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i.i.i.i)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleTINtNtBa_6option6OptionNtNtBY_19upstream_categories25UpstreamCategoryAndPrefixEBU_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB2V_EB1A_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0B31_.exit unwind label %bb.f

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleTINtNtBa_6option6OptionNtNtBY_19upstream_categories25UpstreamCategoryAndPrefixEBU_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB2V_EB1A_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0B31_.exit: ; preds = %bb.e, %_RNvMs19_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB6_5EntryINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtCsEhZmuQNqkz_11ruff_linter19upstream_categories25UpstreamCategoryAndPrefixEINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1I_5codes4RuleEE10or_defaultCshFZivb7RUAJ_8ruff_dev.exit.i.i.i
  %i.w = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -16
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !807, !noalias !805, !nonnull !8, !noundef !8
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.t
  store i16 %i.n, ptr %i.y, align 2, !noalias !805
  %i.z = add i64 %i.t, 1
  store i64 %i.z, ptr %i.s, align 8, !alias.scope !807, !noalias !805
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.not.not = icmp eq ptr %i.o, %i.h
  br i1 %.not.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEECshFZivb7RUAJ_8ruff_dev.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map8map_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleTINtNtBa_6option6OptionNtNtBY_19upstream_categories25UpstreamCategoryAndPrefixEBU_EuNCNvNtCshFZivb7RUAJ_8ruff_dev20generate_rules_table8generates_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1z_NCINvNtCs6Wt4yPw39th_9itertools9group_map26into_group_map_with_hasherINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBU_EB2V_EB1A_BU_NtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE0E0E0B31_.exit, %bb.a
  %i.aa = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.ac, ptr %i.f, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.aa, ptr %i.ad, align 8
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c, %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %.val5 = load ptr, ptr %0, align 8, !alias.scope !808, !nonnull !8, !noundef !8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load i64, ptr %i.ae, align 8, !alias.scope !808, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !809
  store i64 %.val6, ptr %i.a, align 8, !noalias !809
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val5, ptr %i.af, align 8, !noalias !809
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !809
  resume { ptr, i32 } %lpad.thr_comm

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBW_ENCINvNtNtB1I_8adapters6filter15filter_try_foldBW_B2G_INtNtB1K_6result6ResultB2G_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB8_16in_place_collect24write_in_place_with_dropBW_E0E0B4b_EB4M_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.a, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.not12 = icmp eq ptr %i.d, %i.c
  br i1 %.not12, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val.i.a = load ptr, ptr %3, align 8, !nonnull !8, !align !13, !noundef !8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit
  %i.e = phi ptr [ %i.s, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ], [ %i.c, %.lr.ph.preheader ]
  %i.f = phi ptr [ %i.r, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %.pn2.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %i.g = load i16, ptr %i.f, align 2, !range !33, !noundef !8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 2 uses
  store ptr %i.h, ptr %i.b, align 8
  %i.i = and i16 %i.g, 63
  %i.j = zext nneg i16 %i.i to i64
  %i.k = shl nuw i64 1, %i.j
  %i.l = lshr i16 %i.g, 6
  %i.m = zext nneg i16 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.val.i.a, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8, !noundef !8
  %i.p = and i64 %i.o, %i.k
  %.not.i = icmp eq i64 %i.p, 0
  br i1 %.not.i, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  store i16 %i.g, ptr %.sroa.4.013, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 2
  %.pre = load ptr, ptr %i.a, align 8
  %.pre14 = load ptr, ptr %i.b, align 8
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit: ; preds = %.lr.ph, %bb.b
  %i.r = phi ptr [ %.pre14, %bb.b ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.s = phi ptr [ %.pre, %bb.b ], [ %i.e, %.lr.ph ] ; 2 uses
  %.pn2.i = phi ptr [ %i.q, %bb.b ], [ %.sroa.4.013, %.lr.ph ] ; 2 uses
  %.not = icmp eq ptr %i.r, %i.s
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn2.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtCsEhZmuQNqkz_11ruff_linter5codes4RuleINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1K_zENCNCNvNtCshFZivb7RUAJ_8ruff_dev22generate_default_rules8generate00NCINvNtB1P_16in_place_collect24write_in_place_with_dropB15_E0E0B3l_.exit ]
  %i.t = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.u = insertvalue { ptr, ptr } %i.t, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.u
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtBa_6string6StringENCINvNtNtB2e_8adapters6filter15filter_try_foldBW_B3c_INtNtB2g_6result6ResultB3c_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB4f_3map12map_try_foldBW_B3M_B3c_B4Z_NCB5u_s_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3M_E0E0E0B4Z_EB5y_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readnone align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [80 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [96 x i8], align 8                ; 6 uses
  %i.i = alloca [80 x i8], align 8                ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.not10 = icmp eq ptr %i.m, %i.l
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink1.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit
  %i.u = phi ptr [ %i.l, %.lr.ph ], [ %i.af, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit ]
  %i.v = phi ptr [ %i.m, %.lr.ph ], [ %i.ae, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit ] ; 2 uses
  %.sroa.4.011 = phi ptr [ %2, %.lr.ph ], [ %.pn1.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80 ; 2 uses
  store ptr %i.w, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %1, ptr %i.h, align 8
  store ptr %.sroa.4.011, ptr %i.n, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.o, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %.val.i = load i8, ptr %i.p, align 8, !range !31, !alias.scope !829, !noundef !8
  %i.x = trunc nuw i8 %.val.i to i1
  br i1 %i.x, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.e, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !830
  store ptr %1, ptr %i.g, align 8, !noalias !830
  store ptr %.sroa.4.011, ptr %i.q, align 8, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !830
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !832
  %.sink.i.i.i = load i64, ptr %.sink.in.i.i.i, align 8, !alias.scope !831, !noalias !833, !noundef !8
  %.sink1.i.i.i = load ptr, ptr %.sink1.in.i.i.i, align 8, !alias.scope !831, !noalias !833, !nonnull !8, !noundef !8
  store ptr %.sink1.i.i.i, ptr %i.d, align 8, !noalias !832
  store i64 %.sink.i.i.i, ptr %i.r, align 8, !noalias !832
  %i.y = load i64, ptr %i.s, align 8, !range !17, !alias.scope !831, !noalias !833, !noundef !8
  %.not.i.i.i = icmp eq i64 %i.y, -1
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !834
  store ptr %i.s, ptr %i.c, align 8, !noalias !835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !835
  store ptr %i.d, ptr %i.b, align 8, !noalias !835
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !noalias !835
  store ptr %i.c, ptr %i.t, align 8, !noalias !835
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i, align 8, !noalias !835
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @25, ptr noundef nonnull %i.b)
          to label %.noexc.i.i.i unwind label %bb.f, !noalias !830

.noexc.i.i.i:                                     ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !835
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !834
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_optionss_00NCB2C_s_0EB2I_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !836
  store ptr %i.d, ptr %i.a, align 8, !noalias !836
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCshFZivb7RUAJ_8ruff_dev, ptr %.sroa.42.0..sroa_idx.i5.i.i.i.i, align 8, !noalias !836
  invoke void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @24, ptr noundef nonnull %i.a)
          to label %.noexc2.i.i.i unwind label %bb.f, !noalias !837

.noexc2.i.i.i:                                    ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !836
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_optionss_00NCB2C_s_0EB2I_.exit.i.i.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e) #29
          to label %.body.i.i unwind label %bb.g, !noalias !833

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_optionss_00NCB2C_s_0EB2I_.exit.i.i.i: ; preds = %.noexc2.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !832
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.e)
          to label %bb.k unwind label %bb.h, !noalias !830

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !833
  unreachable

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_optionss_00NCB2C_s_0EB2I_.exit.i.i.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.h, %bb.f
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ab, %bb.h ], [ %i.z, %bb.f ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtBI_6string6StringEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(16) %i.g) #29
          to label %.body.i unwind label %bb.i, !noalias !830

bb.i:                                             ; preds = %.body.i.i
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !830
  unreachable

bb.j:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o)
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit

bb.k:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrE11map_or_elseNtNtCscdodAO9FK5_5alloc6string6StringNCNCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_optionss_00NCB2C_s_0EB2I_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !830
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.011, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !830
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.4.011, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !830
  %.pre = load ptr, ptr %i.j, align 8
  %.pre12 = load ptr, ptr %i.k, align 8
  br label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit

.body.i:                                          ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit: ; preds = %bb.j, %bb.k
  %i.ae = phi ptr [ %.pre12, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.af = phi ptr [ %.pre, %bb.k ], [ %i.u, %bb.j ] ; 2 uses
  %.pn1.i = phi ptr [ %i.ad, %bb.k ], [ %.sroa.4.011, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq ptr %i.ae, %i.af
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn1.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6filter15filter_try_foldNtNtNtCsdjW2DEjcQy2_12clap_builder7builder14possible_value13PossibleValueINtNtNtCscdodAO9FK5_5alloc3vec13in_place_drop11InPlaceDropNtNtB2n_6string6StringEINtNtBa_6result6ResultB2g_zENCNvNtCshFZivb7RUAJ_8ruff_dev25generate_ty_cli_reference21emit_possible_options0NCINvNtB6_3map12map_try_foldB15_B3c_B2g_B3z_NCB43_s_0NCINvNtB2l_16in_place_collect24write_in_place_with_dropB3c_E0E0E0B47_.exit ]
  %i.ag = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.ah = insertvalue { ptr, ptr } %i.ag, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directive9DirectiveENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB28_8find_map5checkBW_NtNtB12_9directive15StaticDirectiveQNCINvMBY_BW_11make_tablesINtB8_3VecBW_EE0E0INtNtNtB2g_3ops12control_flow11ControlFlowB3G_EECshFZivb7RUAJ_8ruff_dev(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not12 = icmp eq ptr %.promoted, %i.e
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.g = phi ptr [ %i.h, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.g, i64 80, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !842
  call void @_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core3ops8function5implsQNCINvMNtNtNtCsj06xRw2G0SJ_18tracing_subscriber6filter3env9directiveNtBU_9Directive11make_tablesINtNtCscdodAO9FK5_5alloc3vec3VecB1T_EE0INtB7_5FnMutTB1T_EE8call_mutCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.a), !noalias !843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !842
  %i.i = load i64, ptr %i.b, align 8, !range !844, !noalias !842, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.i, -2
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.b
  %storemerge = phi i64 [ %i.i, %bb.b ], [ -2, %bb.a ], [ -2, %bb.c ]
  store i64 %storemerge, ptr %0, align 8
end_hunk_0
