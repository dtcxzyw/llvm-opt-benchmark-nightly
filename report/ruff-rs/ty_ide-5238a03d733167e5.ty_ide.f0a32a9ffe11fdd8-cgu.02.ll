Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.02?download=true
inline.NumInlined: 1218
inline.NumDeleted: 634
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesECskEUeM34gmJU_6ty_ide:bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(40) %i.b) #26
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECskEUeM34gmJU_6ty_ide.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1102 {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskEUeM34gmJU_6ty_ide.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskEUeM34gmJU_6ty_ide.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7VisitedECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1103 {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskEUeM34gmJU_6ty_ide.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECskEUeM34gmJU_6ty_ide.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state17StateBuilderEmptyECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1104 {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskEUeM34gmJU_6ty_ide.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECskEUeM34gmJU_6ty_ide.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECskEUeM34gmJU_6ty_ide.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskEUeM34gmJU_6ty_ide10completion22add_import_completionsINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionEEB4_(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, ptr noalias noundef nonnull align 8 dereferenceable(216) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1135 {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 4                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [12 x i8], align 4                ; 4 uses
  %i.g = alloca [12 x i8], align 4                ; 4 uses
  %i.h = alloca [12 x i8], align 4                ; 7 uses
  %i.i = alloca [160 x i8], align 8               ; 24 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [12 x i8], align 4                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1138
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 212
  store i32 1, ptr %i.l, align 4, !noalias !1138
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load <2 x i32>, ptr %i.m, align 8, !alias.scope !1136
  store <2 x i32> %i.o, ptr %.sroa.49.0..sroa_idx.i, align 4, !noalias !1138
  %.sroa.03.0.copyload.i.i = load i64, ptr %3, align 8, !alias.scope !1139
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !1139, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !1139 ; 3 uses
  %i.p = icmp ult i64 %.sroa.55.0.copyload.i.i, 192153584101141163
  tail call void @llvm.assume(i1 %i.p)
  %.idx.i = mul nuw nsw i64 %.sroa.55.0.copyload.i.i, 48
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.44.0.copyload.i.i, i64 %.idx.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1138
  store ptr %.sroa.44.0.copyload.i.i, ptr %i.k, align 8, !noalias !1138
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  store ptr %.sroa.44.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1138
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.03.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !1138
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !1138
  %i.r = icmp eq i64 %.sroa.55.0.copyload.i.i, 0
  br i1 %i.r, label %_RINvNtCskEUeM34gmJU_6ty_ide10completion27add_import_completions_implINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENCINvB2_22add_import_completionsB14_E0EB4_.exit, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.lr.ph.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.lr.ph.i: ; preds = %bb.a
  %.sroa.6.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.7.4..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.8.4..sroa.6.0..sroa_idx2.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.442.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.230.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 60
  %.sroa.7.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.7.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %.sroa.7.i.sroa.6.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  %.sroa.7.i.sroa.7.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.7.i.sroa.8.0..sroa.5.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.633.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 119
  %.sroa.735.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 143
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 152
  %.sroa.11.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 153
  %.sroa.12.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 154 ; 2 uses
  %.sroa.14.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 155
  %.sroa.15.0..sroa_idx39.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 156 ; 2 uses
  %.sroa.16.0..sroa_idx40.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 157
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.i

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i
  resume { ptr, i32 } %.pn.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i: ; preds = %bb.ag, %bb.af, %bb.ac, %bb.t, %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %bb.af ], [ %lpad.thr_comm.split-lp.i, %.body.i ], [ %i.ar, %bb.ac ], [ %lpad.thr_comm.i, %bb.ag ], [ %i.ai, %bb.s ], [ %i.ai, %bb.t ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %bb.b unwind label %bb.ah, !noalias !1137

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.i: ; preds = %_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions3add.exit.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.lr.ph.i
  %i.t = phi ptr [ %.sroa.44.0.copyload.i.i, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.lr.ph.i ], [ %i.au, %_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions3add.exit.i ] ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1140, !noalias !1138
  %.sroa.032.0.copyload33.i = load i32, ptr %i.t, align 8, !noalias !1141 ; 5 uses
  %.sroa.7.0..sroa_idx34.i = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %.sroa.7.sroa.0.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx34.i, align 4, !noalias !1141 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx34.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.7.sroa.5.0.copyload.i = load i32, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx34.sroa_idx.i, align 8, !noalias !1141 ; 4 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx34.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.7.sroa.6.0.copyload.i = load i32, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx34.sroa_idx.i, align 4, !noalias !1141 ; 2 uses
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx34.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.7.sroa.7.0.copyload.i = load ptr, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx34.sroa_idx.i, align 8, !noalias !1141 ; 6 uses
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx34.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.7.sroa.8.0.copyload.i = load i64, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx34.sroa_idx.i, align 8, !noalias !1141 ; 2 uses
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx34.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %.sroa.7.sroa.10.0.copyload.i = load i64, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx34.sroa_idx.i, align 8, !noalias !1141 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.032.0.copyload33.i, -2
  br i1 %.not.i, label %_RINvNtCskEUeM34gmJU_6ty_ide10completion27add_import_completions_implINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENCINvB2_22add_import_completionsB14_E0EB4_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.i
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx34.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %.sroa.7.sroa.9.0.copyload.i = load i64, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx34.sroa_idx.i, align 8, !noalias !1141 ; 7 uses
  switch i32 %.sroa.032.0.copyload33.i, label %4 [
    i32 -1, label %bb.n
    i32 14, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1142
  invoke void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessh_1__NtB8_17ModuleLiteralType6moduleDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_ECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.h, i32 noundef %.sroa.7.sroa.0.0.copyload.i, i32 noundef %.sroa.7.sroa.5.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1)
          to label %.noexc.i unwind label %bb.af, !noalias !1137

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !1144
  %i.v = invoke noundef zeroext i1 @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module8is_known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.g, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, i8 noundef 0)
          to label %.noexc17.i unwind label %bb.af, !noalias !1137

.noexc17.i:                                       ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1143
  br i1 %i.v, label %bb.j, label %bb.e

bb.e:                                             ; preds = %.noexc17.i
  %i.w = invoke noundef align 8 ptr @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module11search_path(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.h, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1)
          to label %.noexc18.i unwind label %bb.af, !noalias !1137 ; 2 uses

.noexc18.i:                                       ; preds = %bb.e
  %.not.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %.noexc18.i
  %i.x = load ptr, ptr %i.w, align 8, !noalias !1145, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !24, !noalias !1145, !noundef !5 ; 2 uses
  %.off.i.i.i = add nsw i64 %i.z, -2
  %switch.i.i.i = icmp ult i64 %.off.i.i.i, 3
  br i1 %switch.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp eq i64 %i.z, 5
  %..i.i.i = select i1 %i.aa, i8 6, i8 2
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %i.h, i64 12, i1 false), !noalias !1144
  %i.ab = invoke noundef zeroext i1 @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module8is_known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.f, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, i8 noundef 5)
          to label %.noexc19.i unwind label %bb.af, !noalias !1137

.noexc19.i:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1143
  br i1 %i.ab, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.noexc19.i
  %i.ac = invoke noundef zeroext i1 @_RNvMsb_NtCsfDzkztWVnn_18ty_module_resolver6moduleNtB5_6Module8is_known(ptr noalias noundef nonnull align 4 captures(address) dereferenceable(12) %i.h, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, i8 noundef 17)
          to label %.noexc20.i unwind label %bb.af, !noalias !1137

.noexc20.i:                                       ; preds = %bb.i
  %spec.select.i.i.i = select i1 %i.ac, i8 3, i8 4
  br label %bb.j

.body.i:                                          ; preds = %bb.ab, %bb.aa
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i

4:                                                ; preds = %bb.c
  %5 = icmp ne i32 %.sroa.032.0.copyload33.i, 17
  call void @llvm.assume(i1 %5)
  br label %bb.m

bb.j:                                             ; preds = %.noexc20.i, %.noexc19.i, %bb.g, %.noexc18.i, %.noexc17.i
  %.sroa.0.0.i.i.i = phi i8 [ 1, %.noexc17.i ], [ 3, %.noexc19.i ], [ %spec.select.i.i.i, %.noexc20.i ], [ %..i.i.i, %bb.g ], [ 5, %.noexc18.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1142
  %i.ad = load i32, ptr %i.m, align 8, !range !25, !alias.scope !1136, !noundef !5
  %i.ae = load i32, ptr %i.n, align 4, !alias.scope !1136, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1138
  invoke void @_RINvMs9_NvNtCsoTR8nlGN3X_18ty_python_semantic5typessh_1__NtB8_17ModuleLiteralType6moduleDNtNtCs4o81Y09oZk1_10ty_project2db2DbEL_ECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.j, i32 noundef %.sroa.7.sroa.0.0.copyload.i, i32 noundef %.sroa.7.sroa.5.0.copyload.i, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1)
          to label %bb.k unwind label %bb.af, !noalias !1137

bb.k:                                             ; preds = %bb.j
  %i.af = invoke fastcc noundef zeroext i1 @_RNvNtCskEUeM34gmJU_6ty_ide10completion25is_type_check_only_module(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, i32 noundef %i.ad, i32 noundef %i.ae, ptr noalias noundef align 4 captures(address) dereferenceable(12) %i.j)
          to label %bb.l unwind label %bb.af, !noalias !1137

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1138
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %4
  %.sroa.0.0.i78.ph.i = phi i8 [ %.sroa.0.0.i.i.i, %bb.l ], [ -1, %4 ] ; 2 uses
  %.sroa.02.0.ph.i = phi i1 [ %i.af, %bb.l ], [ false, %4 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1146
  store i32 %.sroa.032.0.copyload33.i, ptr %i.c, align 4, !noalias !1146
  store i32 %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx2.i.i, align 4, !noalias !1147
  store i32 %.sroa.7.sroa.5.0.copyload.i, ptr %.sroa.7.4..sroa.6.0..sroa_idx2.i.sroa_idx.i, align 4, !noalias !1147
  store i32 %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.8.4..sroa.6.0..sroa_idx2.i.sroa_idx.i, align 4, !noalias !1147
  invoke void @_RNvMNtCskEUeM34gmJU_6ty_ide4gotoNtB2_11Definitions7from_ty(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1, ptr noundef nonnull align 4 %i.l, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %bb.o unwind label %bb.s, !noalias !1148

bb.n:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1146
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1146
  %i.ag = load i64, ptr %i.e, align 8, !range !12, !noalias !1146, !noundef !5
  %.not16.i.i = icmp eq i64 %i.ag, -1
  br i1 %.not16.i.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1146
  invoke void @_RNvMNtCskEUeM34gmJU_6ty_ide4gotoNtB2_11Definitions9docstring(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(296) %1)
          to label %bb.q unwind label %bb.s, !noalias !1148

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1146
  %.sroa.041.0.copyload.pre.i.i = load i64, ptr %i.d, align 8, !noalias !1146
  br label %bb.u

bb.r:                                             ; preds = %bb.t
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1148
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.13.39.extract.shift.mask.i = and i64 %.sroa.7.sroa.9.0.copyload.i, -72057594037927936
  %i.aj = icmp eq i64 %.sroa.13.39.extract.shift.mask.i, -2882303761517117440
  br i1 %i.aj, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i, !prof !7

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.7.0.copyload.i) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.7.sroa.7.0.copyload.i, i64 noundef %.sroa.7.sroa.9.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.r, !noalias !1148

bb.u:                                             ; preds = %bb.q, %bb.o, %bb.n
  %.sroa.02.091.i = phi i1 [ %.sroa.02.0.ph.i, %bb.q ], [ %.sroa.02.0.ph.i, %bb.o ], [ false, %bb.n ]
  %.sroa.0.0.i7889.i = phi i8 [ %.sroa.0.0.i78.ph.i, %bb.q ], [ %.sroa.0.0.i78.ph.i, %bb.o ], [ -1, %bb.n ] ; 2 uses
  %.sroa.041.0.copyload.i.i = phi i64 [ %.sroa.041.0.copyload.pre.i.i, %bb.q ], [ -1, %bb.o ], [ -1, %bb.n ]
  %.sroa.16.40.extract.trunc.i = trunc i64 %.sroa.7.sroa.10.0.copyload.i to i8
  %.sroa.16.41.extract.shift.i = lshr i64 %.sroa.7.sroa.10.0.copyload.i, 8
  %.sroa.16.41.extract.trunc.i = trunc i64 %.sroa.16.41.extract.shift.i to i8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.442.0..sroa_idx.i.i, i64 16, i1 false), !noalias !1150
  store i64 0, ptr %i.i, align 8, !alias.scope !1151, !noalias !1138
  store i64 %.sroa.041.0.copyload.i.i, ptr %.sroa.230.0..sroa_idx.i.i, align 8, !alias.scope !1151, !noalias !1138
  store i32 %.sroa.032.0.copyload33.i, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !alias.scope !1151, !noalias !1138
  store i32 %.sroa.7.sroa.0.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 4, !noalias !1150
  store i32 %.sroa.7.sroa.5.0.copyload.i, ptr %.sroa.7.i.sroa.4.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !1150
  store i32 %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.7.i.sroa.5.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 4, !noalias !1150
  store ptr %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.7.i.sroa.6.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !1150
  store i64 %.sroa.7.sroa.8.0.copyload.i, ptr %.sroa.7.i.sroa.7.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !1150
  store i64 %.sroa.7.sroa.9.0.copyload.i, ptr %.sroa.7.i.sroa.8.0..sroa.5.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !1150
  store i8 -1, ptr %.sroa.633.0..sroa_idx.i.i, align 1, !alias.scope !1151, !noalias !1138
  store i8 -1, ptr %.sroa.735.0..sroa_idx.i.i, align 1, !alias.scope !1151, !noalias !1138
  store ptr null, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !1151, !noalias !1138
  store i8 %.sroa.16.40.extract.trunc.i, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !1151, !noalias !1138
  store i8 0, ptr %.sroa.11.0..sroa_idx36.i.i, align 1, !alias.scope !1151, !noalias !1138
  store i8 %.sroa.16.41.extract.trunc.i, ptr %.sroa.12.0..sroa_idx37.i.i, align 2, !alias.scope !1151, !noalias !1138
  store i8 0, ptr %.sroa.14.0..sroa_idx38.i.i, align 1, !alias.scope !1151, !noalias !1138
  store i8 -1, ptr %.sroa.15.0..sroa_idx39.i.i, align 4, !alias.scope !1151, !noalias !1138
  store i8 -1, ptr %.sroa.16.0..sroa_idx40.i.i, align 1, !alias.scope !1151, !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1138
  %i.ak = lshr i64 %.sroa.7.sroa.9.0.copyload.i, 56
  %i.al = trunc nuw i64 %i.ak to i8
  br i1 %.sroa.02.091.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.not13.i = icmp eq i8 %.sroa.0.0.i7889.i, -1
  br i1 %.not13.i, label %bb.x, label %bb.ae

bb.w:                                             ; preds = %bb.u
  store i8 1, ptr %.sroa.12.0..sroa_idx37.i.i, align 2, !alias.scope !1152, !noalias !1138
  br label %bb.v

bb.x:                                             ; preds = %bb.ae, %bb.v
  %i.am = icmp ugt i64 %.sroa.7.sroa.9.0.copyload.i, -2882303761517117441
  br i1 %i.am, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.an = add i8 %i.al, 64
  %i.ao = call i8 @llvm.umin.i8(i8 %i.an, i8 24)
  %.sroa.0.0.i.i.i.i = zext nneg i8 %i.ao to i64
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.01.0.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i, %bb.y ], [ %.sroa.7.sroa.8.0.copyload.i, %bb.x ]
  %.sroa.0.0.i.i22.i = phi ptr [ %.sroa.7.i.sroa.6.0..sroa.5.0..sroa_idx.i.sroa_idx.i, %bb.y ], [ %.sroa.7.sroa.7.0.copyload.i, %bb.x ]
  %i.ap = invoke noundef zeroext i1 @_RNvMNtCskEUeM34gmJU_6ty_ide7symbolsNtB2_12QueryPattern20is_match_symbol_name(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i22.i, i64 noundef %.sroa.01.0.i.i.i)
          to label %_RNvMs9_NtCskEUeM34gmJU_6ty_ide10completionNtB5_9UserQuery8is_match.exit.i.i unwind label %bb.ac, !noalias !1137

_RNvMs9_NtCskEUeM34gmJU_6ty_ide10completionNtB5_9UserQuery8is_match.exit.i.i: ; preds = %bb.z
  br i1 %i.ap, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_RNvMs9_NtCskEUeM34gmJU_6ty_ide10completionNtB5_9UserQuery8is_match.exit.i.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion17CompletionBuilderEBF_(ptr noalias noundef align 8 dereferenceable(160) %i.i)
          to label %_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions3add.exit.i unwind label %.body.i, !noalias !1137

bb.ab:                                            ; preds = %_RNvMs9_NtCskEUeM34gmJU_6ty_ide10completionNtB5_9UserQuery8is_match.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.a, ptr noundef nonnull align 8 dereferenceable(160) %i.i, i64 160, i1 false), !noalias !1154
  %i.aq = invoke fastcc noundef zeroext i1 @_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions14add_skip_query(ptr noalias noundef nonnull align 8 dereferenceable(216) %2, ptr noalias noundef align 8 captures(address) dereferenceable(160) %i.a)
          to label %.noexc25.i unwind label %.body.i, !noalias !1137 ; 0 uses

.noexc25.i:                                       ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1153
  br label %_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions3add.exit.i

bb.ac:                                            ; preds = %bb.z
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskEUeM34gmJU_6ty_ide10completion17CompletionBuilderEBF_(ptr noalias noundef align 8 dereferenceable(160) %i.i) #26
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.ad, !noalias !1137

bb.ad:                                            ; preds = %bb.ac
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1137
  unreachable

bb.ae:                                            ; preds = %bb.v
  store i8 %.sroa.0.0.i7889.i, ptr %.sroa.15.0..sroa_idx39.i.i, align 4, !alias.scope !1155, !noalias !1138
  br label %bb.x

_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions3add.exit.i: ; preds = %.noexc25.i, %bb.aa
  %i.at = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1156, !noalias !1138, !nonnull !5, !noundef !5
  %i.au = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1156, !noalias !1138, !nonnull !5, !noundef !5 ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.at
  br i1 %i.av, label %_RINvNtCskEUeM34gmJU_6ty_ide10completion27add_import_completions_implINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENCINvB2_22add_import_completionsB14_E0EB4_.exit, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.i

bb.af:                                            ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.e, %.noexc.i, %bb.d
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.sroa.1241.sroa.5.0.extract.shift.mask.i = and i64 %.sroa.7.sroa.9.0.copyload.i, -72057594037927936
  %i.aw = icmp eq i64 %.sroa.1241.sroa.5.0.extract.shift.mask.i, -2882303761517117440
  br i1 %i.aw, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i, !prof !7

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.7.0.copyload.i) ]
  invoke void @_RNvNvXs2_NtCsg7m2K3K1Fzf_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noundef nonnull %.sroa.7.sroa.7.0.copyload.i, i64 noundef %.sroa.7.sroa.9.0.copyload.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i unwind label %bb.ah, !noalias !1137

bb.ah:                                            ; preds = %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionECskEUeM34gmJU_6ty_ide.exit.i
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1137
  unreachable

_RINvNtCskEUeM34gmJU_6ty_ide10completion27add_import_completions_implINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENCINvB2_22add_import_completionsB14_E0EB4_.exit: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit.i, %_RNvMs_NtCskEUeM34gmJU_6ty_ide10completionNtB4_11Completions3add.exit.i, %bb.a
  call void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsoTR8nlGN3X_18ty_python_semantic14semantic_model10CompletionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k), !noalias !1137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast9generated10AnyNodeRefENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfolduNCINvNtNtB1L_8adapters6copied13copy_try_foldBJ_uINtNtNtBa_3ops12control_flow11ControlFlowRSNtNtCskEUeM34gmJU_6ty_ide10completion17ContextualKeywordENCINvNvNtNtB1J_8iterator8Iterator8find_map5checkBJ_B4d_NCNvMs8_B4h_NtB4h_13ContextCursor19incomplete_keywordss2_0E0E0B3y_EB4j_(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(88) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(12) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !1169 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !alias.scope !1170, !nonnull !5, !noundef !5
  %.promoted = load ptr, ptr %i.a, align 8, !alias.scope !1170
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i = load ptr, ptr %i.c, align 8       ; 3 uses
end_hunk_0
