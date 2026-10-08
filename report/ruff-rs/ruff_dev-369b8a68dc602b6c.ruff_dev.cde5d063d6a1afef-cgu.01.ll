Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_dev-369b8a68dc602b6c.ruff_dev.cde5d063d6a1afef-cgu.01?download=true
inline.NumInlined: 3314
inline.NumDeleted: 1340
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEECshFZivb7RUAJ_8ruff_dev:bb.a
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrEEECshFZivb7RUAJ_8ruff_dev.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrEEECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder13arg_predicate12ArgPredicateECshFZivb7RUAJ_8ruff_dev.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder6os_str5OsStrEECshFZivb7RUAJ_8ruff_dev.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTjNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5RegexEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5805)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !5808, !nonnull !10, !noundef !10
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !5808
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5RegexECshFZivb7RUAJ_8ruff_dev.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex6RegexIE9drop_slowBL_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5RegexECshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !5805, !nonnull !10, !noundef !10
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3p_10UnwindSafeNtB36_4SyncEL_EEECshFZivb7RUAJ_8ruff_dev(ptr nonnull %.val1.i) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.e

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5RegexECshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !5805, !nonnull !10, !noundef !10
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3p_10UnwindSafeNtB36_4SyncEL_EEECshFZivb7RUAJ_8ruff_dev(ptr nonnull %.val.i)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCsg7jhnslYu1x_5rayon4iter13from_par_iterINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1W_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEINtB5_20FromParallelIteratorB1h_E13from_par_iterINtNtB5_10while_some9WhileSomeINtNtB5_3map3MapIB4Y_INtNtB7_3vec8IntoIterIB1j_NtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB1W_18format_dev_project0ENCINvNvXs2_NtB7_6resultIB1j_ppEIB3I_IB1j_ppEE13from_par_iter2okB1h_NtCsiXichZnxgbf_6anyhow5ErrorE0EEEB1Y_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvNtNtCsg7jhnslYu1x_5rayon4iter13from_par_iter16collect_extendedINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB2d_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEINtNtB4_10while_some9WhileSomeINtNtB4_3map3MapIB4t_INtNtB6_3vec8IntoIterIB1A_NtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB2d_18format_dev_project0ENCINvNvXs2_NtB6_6resultIB1A_ppEINtB4_20FromParallelIteratorIB1A_ppEE13from_par_iter2okB1y_NtCsiXichZnxgbf_6anyhow5ErrorE0EEEB2f_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXsv_NtNtCsg7jhnslYu1x_5rayon4iter6extendINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1R_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEINtB8_14ParallelExtendB1c_E10par_extendINtNtB8_10while_some9WhileSomeINtNtB8_3map3MapIB4K_INtNtBa_3vec8IntoIterIB1e_NtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvB1R_18format_dev_project0ENCINvNvXs2_NtBa_6resultIB1e_ppEINtB8_20FromParallelIteratorIB1e_ppEE13from_par_iter2okB1c_NtCsiXichZnxgbf_6anyhow5ErrorE0EEEB1T_(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RINvXs_NtNtCsg7jhnslYu1x_5rayon4iter10while_someINtB5_9WhileSomeINtNtB7_3map3MapIB11_INtNtB9_3vec8IntoIterINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorEENCNvNtCshFZivb7RUAJ_8ruff_dev10format_dev18format_dev_project0ENCINvNvXs2_NtB9_6resultIB1H_ppEINtB7_20FromParallelIteratorIB1H_ppEE13from_par_iter2okTIB1H_NtB3M_10StatisticsNtB3M_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufENtCsiXichZnxgbf_6anyhow5ErrorE0EENtB7_16ParallelIterator15drive_unindexedNtNtB7_6extend15ListVecConsumerEB3O_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1)
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8              ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.h, null
  br i1 %.not.i.i32, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread48, label %.lr.ph.ithread-pre-split.preheader

.lr.ph.ithread-pre-split.preheader:               ; preds = %.lr.ph.i.preheader
  %i.i = add i64 %i.f, -1                         ; 2 uses
  %i.j = getelementptr i8, ptr %i.h, i64 16
  %.val.i50 = load i64, ptr %i.j, align 8, !noalias !5817, !noundef !10 ; 3 uses
  %i.k = icmp ult i64 %.val.i50, 104811045873349726
  call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread48: ; preds = %.lr.ph.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.ithread-pre-split.preheader, %.lr.ph.ithread-pre-split
  %i.o = phi i64 [ %i.w, %.lr.ph.ithread-pre-split ], [ %.val.i50, %.lr.ph.ithread-pre-split.preheader ] ; 2 uses
  %i.p = phi i64 [ %i.t, %.lr.ph.ithread-pre-split ], [ %i.i, %.lr.ph.ithread-pre-split.preheader ]
  %i.q = phi ptr [ %i.s, %.lr.ph.ithread-pre-split ], [ %i.h, %.lr.ph.ithread-pre-split.preheader ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 1              ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit, label %.lr.ph.ithread-pre-split

.lr.ph.ithread-pre-split:                         ; preds = %.lr.ph.i
  %i.t = add i64 %i.p, -1                         ; 2 uses
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val.i = load i64, ptr %i.u, align 8, !noalias !5817, !noundef !10 ; 2 uses
  %i.v = icmp ult i64 %.val.i, 104811045873349726
  call void @llvm.assume(i1 %i.v)
  %i.w = add i64 %.val.i, %i.o                    ; 2 uses
  %i.x = icmp eq i64 %i.t, 0
  br i1 %i.x, label %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit, label %.lr.ph.i

_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit: ; preds = %.lr.ph.ithread-pre-split, %.lr.ph.i, %.lr.ph.ithread-pre-split.preheader
  %.lcssa = phi i64 [ %.val.i50, %.lr.ph.ithread-pre-split.preheader ], [ %i.w, %.lr.ph.ithread-pre-split ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !5818, !noundef !10 ; 2 uses
  %i.aa = load i64, ptr %0, align 8, !range !22, !alias.scope !5818, !noundef !10
  %i.ab = sub i64 %i.aa, %i.z
  %i.ac = icmp ugt i64 %.lcssa, %i.ab
  br i1 %i.ac, label %bb.b, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit, !prof !5819

bb.b:                                             ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.z, i64 noundef %.lcssa, i64 noundef 8, i64 noundef 88)
          to label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit unwind label %bb.j

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit: ; preds = %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread48, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread, %bb.b
  %i.ad = phi ptr [ %i.n, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread ], [ %i.y, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit ], [ %i.y, %bb.b ], [ %i.m, %_RINvYINtNtNtCscdodAO9FK5_5alloc11collections11linked_list4IterINtNtBa_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1T_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtNtB1k_4iter6traits8iterator8Iterator4foldjNCINvNtNtB3L_8adapters3map8map_foldRBY_jjNvMs_B11_BY_3lenNCINvXsK_NtB3J_5accumjNtB5v_3Sum3sumINtB4w_3MapB3_B56_EE0E0EB1V_.exit.thread48 ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtB4_6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1w_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEEB1y_.exit, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs6_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB25_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEE9pop_frontB27_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.e unwind label %bb.d

.body:                                            ; preds = %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.h ], [ %i.ah, %bb.d ]
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB25_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.thread unwind label %bb.i

bb.d:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1j_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit, %bb.c
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.c
  %i.ai = load i64, ptr %i.b, align 8, !range !12, !noundef !10
  %.not = icmp eq i64 %i.ai, -1
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecTINtNtB4_6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB2f_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEEEB2h_.exit12, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.aj = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10
  %i.ak = load i64, ptr %i.af, align 8, !noundef !10 ; 5 uses
  %i.al = load i64, ptr %i.ad, align 8, !alias.scope !5820, !noundef !10 ; 5 uses
  %i.am = load i64, ptr %0, align 8, !range !22, !alias.scope !5820, !noundef !10
  %i.an = sub i64 %i.am, %i.al
  %i.ao = icmp ugt i64 %i.ak, %i.an
  br i1 %i.ao, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.thread.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.i, !prof !18

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.thread.i: ; preds = %bb.f
  invoke void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.al, i64 noundef %i.ak, i64 noundef 8, i64 noundef 88)
          to label %.noexc10 unwind label %bb.h

.noexc10:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.thread.i
  %i.ap = load i64, ptr %i.ad, align 8, !alias.scope !5821, !noundef !10 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 104811045873349726
  call void @llvm.assume(i1 %i.aq)
  br label %bb.g

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.i: ; preds = %bb.f
  %i.ar = icmp ult i64 %i.al, 104811045873349726
  call void @llvm.assume(i1 %i.ar)
  %.not.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1j_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.i, %.noexc10
  %i.as = phi i64 [ %i.ap, %.noexc10 ], [ %i.al, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.i ]
  %i.at = load ptr, ptr %i.ag, align 8, !alias.scope !5821, !nonnull !10, !noundef !10
  %i.au = getelementptr inbounds nuw [88 x i8], ptr %i.at, i64 %i.as
  %i.av = mul i64 %i.ak, 88
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.au, ptr nonnull readonly align 8 %i.aj, i64 %i.av, i1 false)
  %.pre.i = load i64, ptr %i.ad, align 8, !alias.scope !5821
  br label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1j_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc11collections11linked_list8IntoIterINtNtBI_3vec3VecTINtNtB4_6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB2f_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEEEB2h_.exit12: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB25_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.h:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.thread.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtB4_6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1w_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEEB1y_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #21
          to label %.body unwind label %bb.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1j_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.i, %bb.g
  %i.ax = phi i64 [ %.pre.i, %bb.g ], [ %i.al, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1i_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEE7reserveB1k_.exit.i ]
  %i.ay = add i64 %i.ax, %i.ak
  store i64 %i.ay, ptr %i.ad, align 8, !alias.scope !5821
  store i64 0, ptr %i.af, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1q_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEENtNtNtBR_3ops4drop4Drop4dropB1s_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtB4_6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1w_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEEB1y_.exit unwind label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTINtNtB4_6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1w_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEEB1y_.exit: ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB1j_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEENtNtNtBK_3ops4drop4Drop4dropB1l_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

bb.i:                                             ; preds = %bb.j, %.body, %bb.h
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCshFZivb7RUAJ_8ruff_dev10format_dev10StatisticsNtB25_14CheckFileErrorENtNtCs2AWtUsOyxgP_3std4path7PathBufEEENtNtNtB1w_3ops4drop4Drop4dropB27_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %.thread unwind label %bb.i

.thread:                                          ; preds = %.body, %bb.j
  %.pn7 = phi { ptr, i32 } [ %i.ba, %bb.j ], [ %.pn, %.body ]
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtCscdodAO9FK5_5alloc3vecINtB5_3VechE17extend_from_sliceCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5828, !noundef !10 ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !22, !alias.scope !5828, !noundef !10
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %2, %i.d
  br i1 %i.e, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.thread.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, !prof !18

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.thread.i.i: ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCscdodAO9FK5_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %2, i64 noundef 1, i64 noundef 1)
  %i.f = load i64, ptr %i.a, align 8, !alias.scope !5829, !noundef !10 ; 2 uses
  %i.g = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.g)
  br label %bb.b

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i: ; preds = %bb.a
  %i.h = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.thread.i.i
  %i.i = phi i64 [ %i.f, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.thread.i.i ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !5829, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !5829
  br label %_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit

_RNvXs2_NtNtCscdodAO9FK5_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterhEE11spec_extendCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i, %bb.b
  %i.m = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCshFZivb7RUAJ_8ruff_dev.exit.i.i ]
  %i.n = add i64 %i.m, %2
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !5829
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtCs1hjZZAukk1a_12thread_local5EntryINtNtCs4NRVxsYgnAr_4core4cell7RefCellIBu_NtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEEE16into_boxed_sliceCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtCs1hjZZAukk1a_12thread_local5EntryINtNtB4_4cell7RefCellIBC_NtNtCs3pBv9WGWlWf_12tracing_core8metadata11LevelFilterEEEEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %0) #21
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge, label %bb.e, !prof !39

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtCsb0GAtLbz3Z0_12sharded_slab4page6SharedNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtBI_3cfg13DefaultConfigEE16into_boxed_sliceCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 40)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 230584300921369396
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsb0GAtLbz3Z0_12sharded_slab4page6SharedNtNtNtCsj06xRw2G0SJ_18tracing_subscriber8registry7sharded9DataInnerNtNtB1c_3cfg13DefaultConfigEEECshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 dereferenceable(24) %0) #21
          to label %bb.h unwind label %bb.g

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge, label %bb.e, !prof !39

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge: ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #23
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecINtNtNtCs4NRVxsYgnAr_4core3mem12maybe_uninit11MaybeUninitNtNtCsfRVkQhu4QG3_10rayon_core3job6JobRefEE16into_boxed_sliceCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !10 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCshFZivb7RUAJ_8ruff_dev(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner6shrinkCshFZivb7RUAJ_8ruff_dev.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
end_hunk_0
