Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ignore-3a593d569c0a9edb.ignore.d86a19068445227b-cgu.10?download=true
inline.NumInlined: 295
inline.NumDeleted: 179
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa5CacheECsizY4S0OBG5z_6ignore:bb.a
          cleanup
  br label %.body23

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state17StateBuilderEmptyECsizY4S0OBG5z_6ignore.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsizY4S0OBG5z_6ignore.exit.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.aq = load i32, ptr %i.ap, align 8, !range !10, !alias.scope !168, !noundef !3
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.ab, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverECsizY4S0OBG5z_6ignore.exit25

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state17StateBuilderEmptyECsizY4S0OBG5z_6ignore.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !172, !nonnull !3, !noundef !3
  %i.au = atomicrmw add ptr %i.at, i64 -1 release, align 8, !noalias !172
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverECsizY4S0OBG5z_6ignore.exit25

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcShE9drop_slowCs98D8VPWzHuM_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.as)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverECsizY4S0OBG5z_6ignore.exit25

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverECsizY4S0OBG5z_6ignore.exit25: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state17StateBuilderEmptyECsizY4S0OBG5z_6ignore.exit, %bb.ab, %bb.ac
  ret void

bb.ad:                                            ; preds = %bb.z, %.body16, %.body21, %.body19, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state5StateNtNtNtB1E_6hybrid2id11LazyStateIDEECsizY4S0OBG5z_6ignore.exit, %.body13, %.body
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata6hybrid3dfa10StateSaverECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.y, %.body23, %bb.z
  resume { ptr, i32 } %.pn10
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesECsizY4S0OBG5z_6ignore(ptr noalias noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4util10sparse_set9SparseSetECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECsizY4S0OBG5z_6ignore(ptr noalias noundef align 8 dereferenceable(40) %i.b) #24
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECsizY4S0OBG5z_6ignore.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsizY4S0OBG5z_6ignore.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsizY4S0OBG5z_6ignore.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsizY4S0OBG5z_6ignore.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7VisitedECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsizY4S0OBG5z_6ignore.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsizY4S0OBG5z_6ignore.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsizY4S0OBG5z_6ignore.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state17StateBuilderEmptyECsizY4S0OBG5z_6ignore(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsizY4S0OBG5z_6ignore.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsizY4S0OBG5z_6ignore.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsizY4S0OBG5z_6ignore.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsizY4S0OBG5z_6ignore.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEEENCNvMsf_B31_NtB31_5Stack19new_for_each_thread0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4p_8for_each4callB3Q_NCINvMsj_B1u_INtB1u_3VecB3Q_E14extend_trustedBN_E0E0EB33_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !177
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !177
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !176, !noundef !3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !176
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !176
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.f, ptr %i.g, align 8, !noalias !177
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2t_8adapters9enumerateINtB3y_9EnumeratepEB2n_4fold9enumerateBW_uNCINvNtB3A_3map8map_foldTjBW_ENtB1L_5StackuNCNvMsf_B1L_B59_19new_for_each_thread0NCINvNvB2n_8for_each4callB59_NCINvMsj_B8_INtB8_3VecB59_E14extend_trustedINtB4K_3MapIB40_BH_EB5m_EE0E0E0E0EB1N_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !177
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !177
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB1w_6BufferNtNtCsizY4S0OBG5z_6ignore4walk7MessageE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB54_3VecB4b_E14extend_trustedBN_E0E0EB2r_(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !3, !noundef !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %i.a = tail call i64 @llvm.usub.sat.i64(i64 %1, i64 %0)
  %.val5.i = add i64 %.sroa.4.0.copyload, %i.a
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !181
  ret void
}

; Function Attrs: nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEENvMs4_B1q_B1n_7stealerENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtB1q_7StealerB2a_ENCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4H_3VecB4e_E14extend_trustedBN_E0E0EB2e_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2n_8adapters3map8map_foldRBQ_INtBT_7StealerB1D_EuNvMs4_BT_BQ_7stealerNCINvNvB2h_8for_each4callB3F_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4V_3VecB3F_E14extend_trustedINtB37_3MapBF_B3Z_EE0E0E0EB1H_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 5
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.f = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.e ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.01.0.i ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !noalias !190, !nonnull !3, !noundef !3
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8, !noalias !190
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %i.g, align 8, !noalias !190, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.m = load i8, ptr %i.l, align 8, !range !11, !noalias !190, !noundef !3
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %.sroa.7.0.copyload, i64 %i.f ; 2 uses
  store ptr %i.k, ptr %i.n, align 8, !noalias !191
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i8 %i.m, ptr %i.o, align 8, !noalias !191
  %i.p = add i64 %i.f, 1                          ; 2 uses
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.e
  br i1 %i.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2n_8adapters3map8map_foldRBQ_INtBT_7StealerB1D_EuNvMs4_BT_BQ_7stealerNCINvNvB2h_8for_each4callB3F_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4V_3VecB3F_E14extend_trustedINtB37_3MapBF_B3Z_EE0E0E0EB1H_.exit, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterINtNtCsjulH565TUV7_15crossbeam_deque5deque6WorkerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB2n_8adapters3map8map_foldRBQ_INtBT_7StealerB1D_EuNvMs4_BT_BQ_7stealerNCINvNvB2h_8for_each4callB3F_NCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4V_3VecB3F_E14extend_trustedINtB37_3MapBF_B3Z_EE0E0E0EB1H_.exit: ; preds = %bb.e, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %bb.e ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !192
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtCsizY4S0OBG5z_6ignore5ErrorENCNvXs1_B1p_B1n_NtNtBc_3fmt7Display3fmt0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2w_8for_each4callNtNtCscdodAO9FK5_5alloc6string6StringNCINvMsj_NtB3D_3vecINtB4j_3VecB3z_E14extend_trustedBN_E0E0EB1p_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.e = icmp eq ptr %0, %1
  br i1 %i.e, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCsizY4S0OBG5z_6ignore5ErrorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs1_BS_BQ_NtNtBb_3fmt7Display3fmt0NCINvNvB1k_8for_each4callB2I_NCINvMsj_NtB2M_3vecINtB4y_3VecB2I_E14extend_trustedINtB2a_3MapBF_B3k_EE0E0E0EBS_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %1 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = sub nuw i64 %i.f, %i.g
  %i.i = udiv exact i64 %i.h, 56
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.p, %bb.g ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.q, %bb.g ] ; 2 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.01.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208
  store i64 0, ptr %i.c, align 8, !noalias !208
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !208
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.i.i, align 8, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !208
  store i32 1610612768, ptr %i.j, align 8, !noalias !208
  store i16 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !208
  store i16 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 2, !noalias !208
  store ptr %i.c, ptr %i.b, align 8, !noalias !208
  store ptr @61, ptr %i.k, align 8, !noalias !208
  %i.m = invoke noundef zeroext i1 @_RNvXs1_CsizY4S0OBG5z_6ignoreNtB5_5ErrorNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !209

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.e
  %lpad.loopexit.split-lp15 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #24
          to label %bb.h unwind label %bb.f, !noalias !209

bb.d:                                             ; preds = %bb.c
  br i1 %i.m, label %bb.e, label %bb.g, !prof !12

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #25
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, !noalias !209

.noexc.i.i.i.i:                                   ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22, !noalias !209
  unreachable

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %.val15.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !211
  %i.p = add i64 %.val15.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.q = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.i
  br i1 %i.r, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCsizY4S0OBG5z_6ignore5ErrorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs1_BS_BQ_NtNtBb_3fmt7Display3fmt0NCINvNvB1k_8for_each4callB2I_NCINvMsj_NtB2M_3vecINtB4y_3VecB2I_E14extend_trustedINtB2a_3MapBF_B3k_EE0E0E0EBS_.exit, label %bb.c

bb.h:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i, ptr %.sroa.0.0.copyload, align 8, !noalias !212
  resume { ptr, i32 } %lpad.loopexit.split-lp15

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterNtCsizY4S0OBG5z_6ignore5ErrorENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1q_8adapters3map8map_foldRBQ_NtNtCscdodAO9FK5_5alloc6string6StringuNCNvXs1_BS_BQ_NtNtBb_3fmt7Display3fmt0NCINvNvB1k_8for_each4callB2I_NCINvMsj_NtB2M_3vecINtB4y_3VecB2I_E14extend_trustedINtB2a_3MapBF_B3k_EE0E0E0EBS_.exit: ; preds = %bb.g, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.p, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !212
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs2AWtUsOyxgP_3std4path7PathBufENCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB25_11WalkBuilder14build_matchers0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB38_8for_each4callNtNtB27_11incremental17IncrementalIgnoreNCINvMsj_NtCscdodAO9FK5_5alloc3vecINtB4Y_3VecB4b_E14extend_trustedBN_E0E0EB27_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 16               ; 12 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [184 x i8], align 8               ; 8 uses
  %i.d = alloca [96 x i8], align 16               ; 17 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 72 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(72) %0, i64 72, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !270)
  %i.j = icmp eq ptr %i.f, %i.h
  br i1 %i.j, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 24                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 49
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 49 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 80 ; 4 uses
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !nonnull !3 ; 5 uses
  %.val2.i.i.i = load ptr, ptr %i.p, align 16
  %.val2.i.i.i.fr = freeze ptr %.val2.i.i.i       ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.val2.i.i.i.fr, null
  %i.y = load <6 x i64>, ptr %i.d, align 16       ; 3 uses
  %i.z = load <2 x i64>, ptr %i.d, align 16
  %i.aa = load i8, ptr %i.q, align 16, !range !11 ; 2 uses
  %i.ab = load i8, ptr %i.r, align 1, !range !11  ; 2 uses
  %i.ac = load ptr, ptr %i.w, align 8             ; 2 uses
  br i1 %.not.i.i.i.i, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.b
  %i.ad = shufflevector <6 x i64> %i.y, <6 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.ae = shufflevector <6 x i64> %i.y, <6 x i64> poison, <2 x i32> <i32 4, i32 5>
  br label %.split

.split.us:                                        ; preds = %bb.b, %bb.c
  %.sroa.01.0.i.us = phi i64 [ %i.al, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.01.0.i.us
  call void @llvm.experimental.noalias.scope.decl(metadata !271)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !273
  invoke void @_RNvXsa_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.af)
          to label %.noexc.i.us unwind label %.split4.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !270

.noexc.i.us:                                      ; preds = %.split.us
  %i.ag = atomicrmw add ptr %.val.i.i.i, i64 1 monotonic, align 8, !noalias !274
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %.split6.us, label %_RNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB7_11WalkBuilder14build_matchers0B9_.exit.i.i.us

_RNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB7_11WalkBuilder14build_matchers0B9_.exit.i.i.us: ; preds = %.noexc.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !273
  store <6 x i64> %i.y, ptr %i.a, align 16, !noalias !273
  store i8 %i.aa, ptr %i.u, align 16, !noalias !273
  store i8 %i.ab, ptr %i.v, align 1, !noalias !273
  invoke void @_RNvMNtCsizY4S0OBG5z_6ignore11incrementalNtB2_17IncrementalIgnore3new(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(none) dereferenceable(184) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.val.i.i.i, ptr noundef null, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.a)
          to label %bb.c unwind label %.split4.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !270

bb.c:                                             ; preds = %_RNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB7_11WalkBuilder14build_matchers0B9_.exit.i.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !273
  call void @llvm.experimental.noalias.scope.decl(metadata !275)
  call void @llvm.experimental.noalias.scope.decl(metadata !276)
  %i.ai = load i64, ptr %i.x, align 16, !alias.scope !277, !noundef !3 ; 2 uses
  %i.aj = getelementptr inbounds nuw [184 x i8], ptr %i.ac, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.aj, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.c, i64 184, i1 false), !noalias !277
  %i.ak = add i64 %i.ai, 1                        ; 2 uses
  store i64 %i.ak, ptr %i.x, align 16, !alias.scope !277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !272
  %i.al = add nuw i64 %.sroa.01.0.i.us, 1         ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.n
  br i1 %i.am, label %.split8.us, label %.split.us

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !278)
  %.val.i.i = load ptr, ptr %i.i, align 8, !alias.scope !279, !nonnull !3, !align !6, !noundef !3
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.val1.i.i = load i64, ptr %i.an, align 16, !alias.scope !279, !noundef !3
  store i64 %.val1.i.i, ptr %.val.i.i, align 8, !noalias !279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !280)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !281)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !284, !nonnull !3, !noundef !3
  %i.aq = atomicrmw add ptr %i.ap, i64 -1 release, align 8, !noalias !284
  %i.ar = icmp eq i64 %i.aq, 1
  br i1 %i.ar, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerE9drop_slowBJ_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcNtNtCsizY4S0OBG5z_6ignore3dir11IgnoreInnerEEB1c_.exit.i.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.au = load ptr, ptr %i.at, align 16, !alias.scope !286, !noundef !3 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %common.resume.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = atomicrmw add ptr %i.au, i64 -1 release, align 8, !noalias !287
  %i.ax = icmp eq i64 %i.aw, 1
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB29_8for_each4callhNCINvMsj_NtB1v_3vecINtB3m_3VechE14extend_trustedBN_E0E0ECsizY4S0OBG5z_6ignore:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.0.0.i.i.i = phi i8 [ %i.r, %bb.d ], [ %.val16.i, %bb.c ]
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.n
  store i8 %.sroa.0.0.i.i.i, ptr %i.s, align 1, !noalias !439
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %.val16.i.1 = load i8, ptr %i.u, align 1, !noalias !437, !noundef !3 ; 2 uses
  %i.v = load i8, ptr %i.e, align 1, !noalias !438, !noundef !3
  %i.w = icmp eq i8 %.val16.i.1, %i.v
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %i.g, align 1, !noalias !438, !noundef !3
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.0.0.i.i.i.1 = phi i8 [ %i.x, %bb.f ], [ %.val16.i.1, %bb.e ]
  %i.y = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.n
  %i.z = getelementptr i8, ptr %i.y, i64 1
  store i8 %.sroa.0.0.i.i.i.1, ptr %i.z, align 1, !noalias !439
  %i.aa = add i64 %i.n, 2                         ; 3 uses
  %i.ab = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ab, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.k to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val16.i.epil = load i8, ptr %i.ac, align 1, !noalias !437, !noundef !3 ; 2 uses
  %i.ad = load i8, ptr %i.e, align 1, !noalias !438, !noundef !3
  %i.ae = icmp eq i8 %.val16.i.epil, %i.ad
  br i1 %i.ae, label %bb.h, label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.epilog-lcssa

bb.h:                                             ; preds = %.epil.preheader
  %i.af = load i8, ptr %i.g, align 1, !noalias !438, !noundef !3
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.epilog-lcssa

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.epilog-lcssa: ; preds = %bb.h, %.epil.preheader
  %.sroa.0.0.i.i.i.epil = phi i8 [ %i.af, %bb.h ], [ %.val16.i.epil, %.epil.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %.sroa.0.0.i.i.i.epil, ptr %i.ag, align 1, !noalias !439
  %i.ah = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit

_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit: ; preds = %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.epilog-lcssa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.aa, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.unr-lcssa ], [ %i.ah, %_RINvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhhuNCNvNtCscdodAO9FK5_5alloc3str13replace_ascii0NCINvNvBS_8for_each4callhNCINvMsj_NtB2l_3vecINtB3w_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0ECsizY4S0OBG5z_6ignore.exit.loopexit.epilog-lcssa ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !437
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsizY4S0OBG5z_6ignore4walk5StackENCNvMsd_B1M_NtB1M_12WalkParallel5visit0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Z_8for_each4callNtB1M_6WorkerNCINvMsj_B12_INtB12_3VecB42_E14extend_trustedBN_E0E0EB1O_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsizY4S0OBG5z_6ignore4walk5StackENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1D_8adapters3map8map_foldBW_NtBY_6WorkeruNCNvMsd_BY_NtBY_12WalkParallel5visit0NCINvNvB1x_8for_each4callB3a_NCINvMsj_B8_INtB8_3VecB3a_E14extend_trustedINtB2D_3MapBH_B3n_EE0E0E0EB10_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3mapINtB6_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCsizY4S0OBG5z_6ignore4walk6WorkerENCNCNvMsd_B1M_NtB1M_12WalkParallel5visits_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtNtCs2AWtUsOyxgP_3std6thread6scoped16ScopedJoinHandleuEENCINvNtB12_16in_place_collect24write_in_place_with_dropB4n_E0INtNtBc_6result6ResultB3M_zEEB1O_(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtCsizY4S0OBG5z_6ignore4walk6WorkerENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtNtCs2AWtUsOyxgP_3std6thread6scoped16ScopedJoinHandleuEENCINvNtNtB1E_8adapters3map12map_try_foldBW_B3c_B2C_INtNtB1G_6result6ResultB2C_zENCNCNvMsd_BY_NtBY_12WalkParallel5visits_00NCINvNtB8_16in_place_collect24write_in_place_with_dropB3c_E0E0B4Z_EB10_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterINtNtCsjulH565TUV7_15crossbeam_deque5deque7StealerNtNtCsizY4S0OBG5z_6ignore4walk7MessageEEB10_ENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldRB1q_INtB1t_5StealB2e_EuINtNtNtBb_3ops12control_flow11ControlFlowB2e_ENCNvMsf_B2g_NtB2g_5Stack5steal0NCINvNvB2X_8find_map5checkB4c_B2e_NCB5h_s_0E0E0B4v_EB2i_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 8 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 6 uses
  %i.b = alloca [144 x i8], align 8               ; 6 uses
  %i.c = load ptr, ptr %1, align 8, !noundef !3   ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !462, !nonnull !3, !noundef !3 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit37, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %2, align 8, !noalias !463, !nonnull !3, !align !6, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 24
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.c
  %i.h = phi ptr [ %i.i, %bb.c ], [ %i.c, %.lr.ph.i.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !alias.scope !462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !464
  call void @_RNvMs8_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB5_7StealerNtNtCsizY4S0OBG5z_6ignore4walk7MessageE30steal_batch_with_limit_and_popB10_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h, ptr noundef nonnull align 8 %i.g, i64 noundef 32), !noalias !465
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.b, align 8, !noalias !463 ; 3 uses
  %i.j = icmp ne i64 %.sroa.0.0.copyload.i.i.i, 4
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ult i64 %.sroa.0.0.copyload.i.i.i, 3
  br i1 %i.k, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  %i.l = icmp eq ptr %i.i, %i.e
  br i1 %i.l, label %.loopexit37, label %.lr.ph.i

bb.d:                                             ; preds = %.loopexit37, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noundef !3 ; 3 uses
  %.not4 = icmp eq ptr %i.n, null
  br i1 %.not4, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %i.o, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  br label %.loopexit

.loopexit37:                                      ; preds = %bb.c, %bb.b
  store ptr null, ptr %1, align 8
  br label %bb.d

.loopexit:                                        ; preds = %bb.h, %bb.f, %bb.d, %bb.i, %bb.e
  %.sink = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.e ], [ -1, %bb.d ], [ %.sroa.0.0.copyload.i.i, %bb.i ], [ -1, %bb.f ], [ -1, %bb.h ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !468, !nonnull !3, !noundef !3 ; 2 uses
  %i.r = icmp eq ptr %i.n, %i.q
  br i1 %i.r, label %.loopexit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %bb.f
  %.val.i.i8 = load ptr, ptr %2, align 8, !alias.scope !467, !noalias !469, !nonnull !3, !align !6, !noundef !3
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i8, i64 24
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i7
  %i.t = phi ptr [ %i.n, %.lr.ph.i7 ], [ %i.u, %bb.h ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %i.m, align 8, !alias.scope !468
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !470
  call void @_RNvMs8_NtCsjulH565TUV7_15crossbeam_deque5dequeINtB5_7StealerNtNtCsizY4S0OBG5z_6ignore4walk7MessageE30steal_batch_with_limit_and_popB10_(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, ptr noundef nonnull align 8 %i.s, i64 noundef 32), !noalias !471
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !472 ; 3 uses
  %i.v = icmp ne i64 %.sroa.0.0.copyload.i.i, 4
  tail call void @llvm.assume(i1 %i.v)
  %i.w = icmp samesign ult i64 %.sroa.0.0.copyload.i.i, 3
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  %i.x = icmp eq ptr %i.u, %i.q
  br i1 %i.x, label %.loopexit, label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %i.y, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  br label %.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 -1, 2) i8 @_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build00Bb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !9, !invariant.load !3
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = tail call { ptr, i64 } @_RNvMNtCsesAwPL3NJIw_7walkdir4dentNtB2_8DirEntry9file_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.j, 0        ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = tail call { ptr, i64 } @_RNvMNtCsesAwPL3NJIw_7walkdir4dentNtB2_8DirEntry9file_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) ; 2 uses
  %i.n = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.o = extractvalue { ptr, i64 } %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !nonnull !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k), "nonnull"(ptr %i.n) ]
  %i.r = tail call noundef i8 %i.q(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.l, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.o)
  ret i8 %i.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 -1, 2) i8 @_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build0s_0Bb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !3, !align !6, !noundef !3 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !9, !invariant.load !3
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !3, !noundef !3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !3
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !3, !noundef !3
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !3
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !3, !nonnull !3
  %i.t = tail call noundef i8 %i.s(ptr noundef nonnull %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.k, i64 noundef %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.q)
  ret i8 %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 -1, 2) i8 @_RNSNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBe_11WalkBuilder5build00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1R_EE9call_once6vtableBg_(ptr nofree noundef readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !494
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.e, align 8, !noalias !494
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !9, !invariant.load !3, !alias.scope !493, !noalias !495
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = invoke { ptr, i64 } @_RNvMNtCsesAwPL3NJIw_7walkdir4dentNtB2_8DirEntry9file_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1)
          to label %.noexc.i unwind label %bb.b, !noalias !496 ; 2 uses

.noexc.i:                                         ; preds = %bb.a
  %i.m = invoke { ptr, i64 } @_RNvMNtCsesAwPL3NJIw_7walkdir4dentNtB2_8DirEntry9file_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %2)
          to label %.noexc2.i unwind label %bb.b  ; 2 uses

.noexc2.i:                                        ; preds = %.noexc.i
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  %i.o = extractvalue { ptr, i64 } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, i64 } %i.m, 0        ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.m, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !3, !alias.scope !493, !noalias !497, !nonnull !3
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o), "nonnull"(ptr %i.p) ]
  %i.t = invoke noundef range(i8 -1, 2) i8 %i.s(ptr noundef nonnull %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.o, i64 noundef %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.q)
          to label %_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build00Bb_.exit.i unwind label %bb.b, !inline_history !498

bb.b:                                             ; preds = %.noexc2.i, %.noexc.i, %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !500)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.v = load ptr, ptr %i.a, align 8, !alias.scope !502, !noalias !494, !nonnull !3, !noundef !3
  %i.w = atomicrmw add ptr %i.v, i64 -1 release, align 8, !noalias !502
  %i.x = icmp eq i64 %i.w, 1
  br i1 %i.x, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBL_11WalkBuilder5build00EBN_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrRL0_B1u_EEp6OutputNtNtBQ_3cmp8OrderingNtNtBQ_6marker4SendNtB2N_4SyncEL_E9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBL_11WalkBuilder5build00EBN_.exit.i unwind label %bb.e

_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build00Bb_.exit.i: ; preds = %.noexc2.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  %i.y = load ptr, ptr %i.a, align 8, !alias.scope !506, !noalias !494, !nonnull !3, !noundef !3
  %i.z = atomicrmw add ptr %i.y, i64 -1 release, align 8, !noalias !506
  %i.aa = icmp eq i64 %i.z, 1
  br i1 %i.aa, label %bb.d, label %_RNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBc_11WalkBuilder5build00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1P_EE9call_onceBe_.exit

bb.d:                                             ; preds = %_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build00Bb_.exit.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_NtNtNtCs2AWtUsOyxgP_3std3ffi6os_str5OsStrRL0_B1u_EEp6OutputNtNtBQ_3cmp8OrderingNtNtBQ_6marker4SendNtB2N_4SyncEL_E9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBc_11WalkBuilder5build00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1P_EE9call_onceBe_.exit

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBL_11WalkBuilder5build00EBN_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.u

_RNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBc_11WalkBuilder5build00INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1P_EE9call_onceBe_.exit: ; preds = %_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build00Bb_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.t
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef range(i8 -1, 2) i8 @_RNSNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBe_11WalkBuilder5build0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1T_EE9call_once6vtableBg_(ptr nofree noundef readonly captures(none) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !3, !noundef !3 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !align !6, !noundef !3 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.e, align 8, !alias.scope !528, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !alias.scope !528, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !alias.scope !529, !nonnull !3, !noundef !3
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load i64, ptr %i.h, align 8, !alias.scope !529, !noundef !3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !530
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %i.i, align 8, !noalias !530
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !9, !invariant.load !3, !alias.scope !530, !noalias !531
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !3, !alias.scope !530, !noalias !531, !nonnull !3
  %i.r = invoke noundef range(i8 -1, 2) i8 %i.q(ptr noundef nonnull %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val2, i64 noundef %.val3)
          to label %_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build0s_0Bb_.exit.i unwind label %bb.b, !inline_history !532

bb.b:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !533
  %i.u = icmp eq i64 %i.t, 1
  br i1 %i.u, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBL_11WalkBuilder5build0s_0EBN_.exit.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_NtNtCs2AWtUsOyxgP_3std4path4PathRL0_B1u_EEp6OutputNtNtBQ_3cmp8OrderingNtNtBQ_6marker4SendNtB2E_4SyncEL_E9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBL_11WalkBuilder5build0s_0EBN_.exit.i unwind label %bb.e

_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build0s_0Bb_.exit.i: ; preds = %bb.a
  %i.v = atomicrmw add ptr %i.b, i64 -1 release, align 8, !noalias !534
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.d, label %_RNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBc_11WalkBuilder5build0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1R_EE9call_onceBe_.exit

bb.d:                                             ; preds = %_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build0s_0Bb_.exit.i
  fence acquire
  call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDG0_INtNtNtCs4NRVxsYgnAr_4core3ops8function2FnTRL1_NtNtCs2AWtUsOyxgP_3std4path4PathRL0_B1u_EEp6OutputNtNtBQ_3cmp8OrderingNtNtBQ_6marker4SendNtB2E_4SyncEL_E9drop_slowCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBc_11WalkBuilder5build0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1R_EE9call_onceBe_.exit

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBL_11WalkBuilder5build0s_0EBN_.exit.i: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.s

_RNvYNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtBc_11WalkBuilder5build0s_0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryB1R_EE9call_onceBe_.exit: ; preds = %_RNCNCNvMs3_NtCsizY4S0OBG5z_6ignore4walkNtB9_11WalkBuilder5build0s_0Bb_.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i8 %i.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsizY4S0OBG5z_6ignore9overridesNtB5_15OverrideBuilder3add(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 16)) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 -1, ptr %i.a, align 8
  call void @_RNvMs0_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_16GitignoreBuilder8add_line(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = load i64, ptr %i.b, align 8, !range !535, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.c, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.511.0..sroa_idx, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.410.0.copyload.sink = phi ptr [ %.sroa.410.0.copyload, %bb.b ], [ %1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.410.0.copyload.sink, ptr %i.d, align 8
  store i64 %i.c, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCsizY4S0OBG5z_6ignore9overridesNtB5_15OverrideBuilder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 64)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 6 uses
  %.sroa.6 = alloca [56 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCsizY4S0OBG5z_6ignore9gitignoreNtB5_16GitignoreBuilder5build(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.b = load i64, ptr %i.a, align 8, !range !4, !noundef !3 ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.66.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.58.0..sroa_idx, i64 40, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  store i64 %i.b, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolINtNtCscdodAO9FK5_5alloc3vec3VecjEFEB16_E3newCsizY4S0OBG5z_6ignore(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [64 x i8], align 64               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsizY4S0OBG5z_6ignore(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 64, i64 noundef 64)
  %i.d = load i64, ptr %i.a, align 8, !range !13, !noundef !3
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !539, !noundef !3 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d, !prof !12

bb.b:                                             ; preds = %.body
  resume { ptr, i32 } %i.u

bb.c:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #25
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3 ; 2 uses
end_hunk_1
