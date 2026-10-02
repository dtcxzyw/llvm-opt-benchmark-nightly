Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_formatter-8484042226fb24b2.ruff_python_formatter.6465bac6d8d74cf2-cgu.06?download=true
inline.NumInlined: 778
inline.NumDeleted: 393
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm12ActiveStatesECs8CpBcHC8tKo_21ruff_python_formatter:bb.a
bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.a, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson6pikevm9SlotTableECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBJ_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionNtNtNtCs98D8VPWzHuM_14regex_automata4util10primitives11NonMaxUsizeEENtNtNtBQ_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata3nfa8thompson9backtrack7VisitedECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs98D8VPWzHuM_14regex_automata4util11determinize5state17StateBuilderEmptyECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtB8_4Once15call_once_forceNCNvMNtBa_9lazy_lockINtB1a_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0E0Cs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !8, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val = load i8, ptr %i.d, align 4, !range !14, !noundef !5
  %i.e = trunc nuw i8 %.val to i1
  br i1 %i.e, label %bb.c, label %_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0Cs8CpBcHC8tKo_21ruff_python_formatter.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #25
  unreachable

_RNCNvMNtNtCs2AWtUsOyxgP_3std4sync9lazy_lockINtB4_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0Cs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !inline_history !556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNSNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBd_4Once15call_once_forceNCNvMNtBf_9lazy_lockINtB1f_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBd_9OnceStateEE9call_once6vtableCs8CpBcHC8tKo_21ruff_python_formatter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !562, !noalias !563, !align !8, !noundef !5 ; 3 uses
  store ptr null, ptr %i.b, align 8, !alias.scope !562, !noalias !563
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %bb.d, label %bb.b, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 4
  %.val.i.i = load i8, ptr %i.d, align 4, !range !14, !noalias !564, !noundef !5
  %i.e = trunc nuw i8 %.val.i.i to i1
  br i1 %i.e, label %bb.c, label %_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8CpBcHC8tKo_21ruff_python_formatter.exit, !prof !11

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCs2AWtUsOyxgP_3std4sync9lazy_lock14panic_poisoned() #25, !noalias !564
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #25, !noalias !564
  unreachable

_RNvYNCINvMs0_NtNtCs2AWtUsOyxgP_3std4sync4onceNtBb_4Once15call_once_forceNCNvMNtBd_9lazy_lockINtB1d_8LazyLockNtNtNtCs44bUZaa7qIB_5regex5regex6string5RegexE5force0E0INtNtNtCs4NRVxsYgnAr_4core3ops8function6FnOnceTRNtBb_9OnceStateEE9call_onceCs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !564, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !564
  call void %i.f(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !564, !inline_history !561
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !564
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB2_20DocstringLinePrinter16run_action_queue(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(152) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [224 x i8], align 8               ; 4 uses
  %.sroa.443.i.i = alloca [31 x i8], align 1      ; 4 uses
  %.sroa.611.i.i = alloca [24 x i8], align 8      ; 7 uses
  %i.n = alloca [88 x i8], align 8                ; 7 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [104 x i8], align 8               ; 7 uses
  %i.r = alloca [104 x i8], align 8               ; 11 uses
  %i.s = alloca [80 x i8], align 8                ; 23 uses
  %i.t = alloca [56 x i8], align 8                ; 14 uses
  %i.u = alloca [104 x i8], align 8               ; 7 uses
  %.sroa.6.i.i = alloca [40 x i8], align 8        ; 6 uses
  %i.v = alloca [104 x i8], align 8               ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [80 x i8], align 8                ; 15 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [104 x i8], align 8               ; 9 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [16 x i8], align 8               ; 5 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [24 x i8], align 8               ; 14 uses
  %i.ah = alloca [88 x i8], align 8               ; 13 uses
  %i.ai = alloca [88 x i8], align 8               ; 9 uses
  %.sroa.6.i = alloca [3 x i8], align 1           ; 5 uses
  %i.aj = alloca [24 x i8], align 8               ; 9 uses
  %i.ak = alloca [24 x i8], align 8               ; 13 uses
  %i.al = alloca [24 x i8], align 8               ; 10 uses
  %i.am = alloca [24 x i8], align 8               ; 4 uses
  %i.an = alloca [24 x i8], align 8               ; 4 uses
  %i.ao = alloca [32 x i8], align 8               ; 16 uses
  %i.ap = alloca [24 x i8], align 8               ; 6 uses
  %i.aq = alloca [32 x i8], align 8               ; 12 uses
  %.sroa.8360 = alloca [24 x i8], align 8         ; 7 uses
  %i.ar = alloca [32 x i8], align 8               ; 10 uses
  %i.as = alloca [24 x i8], align 8               ; 12 uses
  %i.at = alloca [64 x i8], align 8               ; 14 uses
  %i.au = alloca [32 x i8], align 8               ; 16 uses
  %i.av = alloca [24 x i8], align 8               ; 6 uses
  %i.aw = alloca [32 x i8], align 8               ; 12 uses
  %.sroa.8351 = alloca [24 x i8], align 8         ; 7 uses
  %i.ax = alloca [32 x i8], align 8               ; 10 uses
  %i.ay = alloca [24 x i8], align 8               ; 12 uses
  %i.az = alloca [80 x i8], align 8               ; 18 uses
  %i.ba = alloca [32 x i8], align 8               ; 16 uses
  %i.bb = alloca [24 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 12 uses
  %.sroa.8342 = alloca [24 x i8], align 8         ; 7 uses
  %i.bd = alloca [32 x i8], align 8               ; 9 uses
  %i.be = alloca [32 x i8], align 8               ; 13 uses
  %i.bf = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.7338 = alloca [24 x i8], align 8         ; 5 uses
  %i.bg = alloca [32 x i8], align 8               ; 13 uses
  %i.bh = alloca [32 x i8], align 8               ; 12 uses
  %i.bi = alloca [16 x i8], align 8               ; 8 uses
  %.sroa.636.sroa.8 = alloca [16 x i8], align 8   ; 4 uses
  %.sroa.16 = alloca [16 x i8], align 8           ; 7 uses
  %i.bj = alloca [24 x i8], align 8               ; 13 uses
  %i.bk = alloca [80 x i8], align 8               ; 7 uses
  %i.bl = alloca [80 x i8], align 8               ; 31 uses
  %i.bm = alloca [32 x i8], align 8               ; 18 uses
  %i.bn = alloca [24 x i8], align 8               ; 6 uses
  %i.bo = alloca [32 x i8], align 8               ; 10 uses
  %i.bp = alloca [32 x i8], align 8               ; 18 uses
  %i.bq = alloca [24 x i8], align 8               ; 6 uses
  %i.br = alloca [80 x i8], align 8               ; 10 uses
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring20CodeExampleAddActionE9pop_frontB1a_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.bs = load i64, ptr %i.br, align 8, !range !677, !noundef !5 ; 2 uses
  %.not596 = icmp eq i64 %i.bs, -1
  br i1 %.not596, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 44
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %.sroa.717.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bm, i64 28
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 8 uses
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.bl, i64 16 ; 5 uses
  %.sroa.11.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 5 uses
  %.sroa.13.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 4 uses
  %.sroa.14.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.bl, i64 40 ; 3 uses
  %.sroa.15.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.bl, i64 44
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 52
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.4133.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 149
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.531.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2.0..sroa_idx137.i = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  %.sroa.3.0..sroa_idx139.i = getelementptr inbounds nuw i8, ptr %i.s, i64 22
  %.sroa.3141.0..sroa_idx142.i = getelementptr inbounds nuw i8, ptr %i.s, i64 23
  %.sroa.4144.0..sroa_idx145.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.4147.0..sroa_idx148.i = getelementptr inbounds nuw i8, ptr %i.s, i64 26
  %.sroa.5150.0..sroa_idx151.i = getelementptr inbounds nuw i8, ptr %i.s, i64 27
  %.sroa.5153.0..sroa_idx154.i = getelementptr inbounds nuw i8, ptr %i.s, i64 28
  %.sroa.6.0..sroa_idx156.i = getelementptr inbounds nuw i8, ptr %i.s, i64 29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %2 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.cl = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %.sroa.235.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 57
  %i.cm = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 72
  %i.co = getelementptr inbounds nuw i8, ptr %i.s, i64 66
  %i.cp = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.541.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.547.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.438.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.460.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.sroa.561.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.sroa.561.sroa.4.0..sroa.561.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.561.sroa.5.0..sroa.561.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.561.sroa.6.0..sroa.561.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.561.sroa.7.0..sroa.561.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.561.sroa.8.0..sroa.561.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 60
  %.sroa.561.sroa.9.0..sroa.561.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.662.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 72
  %.sroa.763.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 73
  %i.da = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %.sroa.454.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %.sroa.443.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.443.i.i, i64 7
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 9
  %.sroa.16.8..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.de = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %.sroa.4355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.sroa.5356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.df = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.751.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %.sroa.8360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.3.0.in.i251 = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.42.0..sroa_idx.i.i253 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i254 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.di = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.dm = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  %.sroa.5346.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %.sroa.6.0..sroa_idx347 = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %.sroa.646.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.747.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  %.sroa.8351.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  %.sroa.3.0.in.i187 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.42.0..sroa_idx.i.i189 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.46.0..sroa_idx.i.i190 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.dq = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.aw, i64 28
  %i.ds = getelementptr inbounds nuw i8, ptr %i.au, i64 28
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.sroa.7338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 2 uses
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.ea = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bg, i64 28
  %i.ec = getelementptr inbounds nuw i8, ptr %i.be, i64 28
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bd, i64 24 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 3 uses
  %.sroa.8342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %.sroa.3.0.in.i145 = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.42.0..sroa_idx.i.i147 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.46.0..sroa_idx.i.i148 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ba, i64 28
  %i.el = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.626.sroa.6.0..sroa.626.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.en = getelementptr inbounds nuw i8, ptr %i.bp, i64 28
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.eo = phi i64 [ %i.bs, %.lr.ph ], [ %i.ev, %.backedge ] ; 4 uses
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 4 uses
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 5 uses
  %.sroa.14.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx, align 8 ; 2 uses
  %i.ep = icmp ne i64 %i.eo, -9223372036854775803
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nsw i64 %i.eo, 9223372036854775805
  %i.er = icmp ugt i64 %i.eo, -9223372036854775806
  %i.es = select i1 %i.er, i64 %i.eq, i64 2
  switch i64 %i.es, label %.loopexit466 [
    i64 0, label %bb.c
    i64 1, label %.backedge
    i64 2, label %bb.d
    i64 3, label %bb.cm
  ]

._crit_edge:                                      ; preds = %.backedge, %bb.a
  store i32 -1, ptr %0, align 8
  br label %bb.if

.loopexit466:                                     ; preds = %bb.db, %bb.b, %bb.eq, %bb.cz
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.et = inttoptr i64 %.sroa.7.0.copyload to ptr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  %.not110 = icmp eq i64 %.sroa.11.0.copyload, 0
  store i64 -1, ptr %i.bp, align 8
  store ptr %i.et, ptr %.sroa.463.0..sroa_idx, align 8
  store i64 %.sroa.9.0.copyload, ptr %.sroa.564.0..sroa_idx, align 8
  store i32 %.sroa.14.0.copyload, ptr %i.em, align 8
  %i.eu = zext i1 %.not110 to i8
  store i8 %i.eu, ptr %i.en, align 4
  invoke fastcc void @_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB2_20DocstringLinePrinter9print_one(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.bq, ptr noalias noundef align 8 dereferenceable(152) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bp)
          to label %bb.co unwind label %bb.cn

.backedge:                                        ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring19OutputDocstringLineEBH_.exit125, %bb.gp, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring15CodeExampleLineENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, %bb.gb
  call void @_RNvMs3_NtNtCscdodAO9FK5_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring20CodeExampleAddActionE9pop_frontB1a_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.br, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  %i.ev = load i64, ptr %i.br, align 8, !range !677, !noundef !5 ; 2 uses
  %.not = icmp eq i64 %i.ev, -1
  br i1 %.not, label %._crit_edge, label %bb.b

bb.d:                                             ; preds = %bb.b
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  store i64 %i.eo, ptr %i.bl, align 8
  store i64 %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx2, align 8
  store i64 %.sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx5, align 8
  store i64 %.sroa.11.0.copyload, ptr %.sroa.11.0..sroa_idx8, align 8
  store i64 %.sroa.13.0.copyload, ptr %.sroa.13.0..sroa_idx11, align 8
  store i32 %.sroa.14.0.copyload, ptr %.sroa.14.0..sroa_idx13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.15.0..sroa_idx15, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.15.0..sroa_idx, i64 36, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16)
  call void @llvm.experimental.noalias.scope.decl(metadata !678)
  call void @llvm.experimental.noalias.scope.decl(metadata !679)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.ew = load ptr, ptr %i.bv, align 8, !alias.scope !678, !noalias !680, !nonnull !5, !align !8, !noundef !5 ; 7 uses
  %i.ex = invoke noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %.noexc unwind label %.thread379.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 2
  %i.ez = load i16, ptr %i.ey, align 2, !noalias !681, !noundef !5 ; 2 uses
  %i.fa = icmp eq i16 %i.ez, 0
  br i1 %i.fa, label %bb.e, label %._RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtCs7Ma6rQP8bRy_14ruff_formatter9LineWidthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8CpBcHC8tKo_21ruff_python_formatter.exit_crit_edge.i

._RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtCs7Ma6rQP8bRy_14ruff_formatter9LineWidthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8CpBcHC8tKo_21ruff_python_formatter.exit_crit_edge.i: ; preds = %.noexc
  %.pre.i = load i64, ptr %i.bl, align 8, !range !16, !alias.scope !682, !noalias !683 ; 2 uses
  %.pre173.i = xor i64 %.pre.i, -9223372036854775808
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtCs7Ma6rQP8bRy_14ruff_formatter9LineWidthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.e:                                             ; preds = %.noexc
  %i.fb = invoke noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %.noexc114 unwind label %.thread379.loopexit.split-lp

.noexc114:                                        ; preds = %bb.e
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i16, ptr %i.fc, align 2, !range !684, !noalias !681, !noundef !5
  %i.fe = invoke noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %.noexc115 unwind label %.thread379.loopexit.split-lp

.noexc115:                                        ; preds = %.noexc114
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 6
  %i.fg = load i8, ptr %i.ff, align 2, !range !685, !noalias !681, !noundef !5
  %i.fh = load ptr, ptr %i.ew, align 8, !noalias !681, !nonnull !5, !noundef !5
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB2_20DocstringLinePrinter16run_action_queue:bb.a
  %i.hn = add i64 %i.hm, %reass.sub.i.i
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i

_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i: ; preds = %bb.v, %bb.u, %bb.t, %_RNvMs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_15CodeExampleKind6indent.exit.i, %_RNvMs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_15CodeExampleKind6indent.exit.i
  %.sroa.0.0.i.i = phi i64 [ %i.hg, %_RNvMs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_15CodeExampleKind6indent.exit.i ], [ %i.hh, %bb.t ], [ %i.hk, %bb.u ], [ %i.hn, %bb.v ], [ %i.hg, %_RNvMs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_15CodeExampleKind6indent.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !681
  %.sroa.0.0.copyload.i = load i32, ptr %i.bz, align 8, !alias.scope !678, !noalias !680
  %.sroa.4133.0.copyload.i = load i64, ptr %.sroa.4133.0..sroa_idx.i, align 8, !alias.scope !678, !noalias !680 ; 5 uses
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !678, !noalias !680 ; 2 uses
  switch i32 %.sroa.0.0.copyload.i, label %default.unreachable4.i93.i [
    i32 0, label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i
    i32 1, label %bb.w
    i32 2, label %bb.x
    i32 3, label %bb.y
    i32 4, label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i
  ]

default.unreachable4.i93.i:                       ; preds = %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i
  unreachable

bb.w:                                             ; preds = %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i
  %i.ho = shl i64 %.sroa.4133.0.copyload.i, 3
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i

bb.x:                                             ; preds = %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i
  %i.hp = shl i64 %.sroa.4133.0.copyload.i, 3
  %i.hq = add i64 %i.hp, %.sroa.5.0.copyload.i
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i

bb.y:                                             ; preds = %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i
  %reass.sub.i92.i = and i64 %.sroa.4133.0.copyload.i, -8
  %i.hr = shl i64 %.sroa.5.0.copyload.i, 3
  %i.hs = add i64 %i.hr, %reass.sub.i92.i
  br label %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i

_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i: ; preds = %bb.y, %bb.x, %bb.w, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i
  %.sroa.0.0.i91.i = phi i64 [ %.sroa.4133.0.copyload.i, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i ], [ %i.ho, %bb.w ], [ %i.hq, %bb.x ], [ %i.hs, %bb.y ], [ %.sroa.4133.0.copyload.i, %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit.i ]
  %i.ht = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i.i, i64 %.sroa.0.0.i91.i) ; 2 uses
  %i.hu = icmp ugt i64 %i.ht, 65535
  br i1 %i.hu, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtCs7Ma6rQP8bRy_14ruff_formatter9LineWidthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %bb.z

bb.z:                                             ; preds = %_RNvMs7_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_11Indentation7columns.exit94.i
  %i.hv = trunc nuw i64 %i.ht to i16
  %i.hw = call i16 @llvm.uadd.sat.i16(i16 %.sroa.06.0.i, i16 %i.hv)
  %i.hx = call i16 @llvm.usub.sat.i16(i16 %i.fd, i16 %i.hw)
  %i.hy = call range(i16 1, 0) i16 @llvm.umax.i16(i16 %i.hx, i16 1)
  br label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultNtCs7Ma6rQP8bRy_14ruff_formatter9LineWidthNtNtNtB4_3num5error15TryFromIntErrorE6expectCs8CpBcHC8tKo_21ruff_python_formatter.exit.i

bb.aa:                                            ; preds = %_RNvMs2_NtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstringNtB5_15CodeExampleKind4code.exit.i
  %i.hz = getelementptr [56 x i8], ptr %.pn3.i.i, i64 %.pn1.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !681
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1I_5slice4iter4IterNtNtNtCs8CpBcHC8tKo_21ruff_python_formatter6string9docstring15CodeExampleLineENCNvMB2Q_NtB2Q_20DocstringLinePrinter6format0EE9from_iterB2U_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.aj, ptr noundef nonnull %.pn3.i.i, ptr noundef nonnull %i.hz)
          to label %.noexc120 unwind label %.thread379.loopexit.split-lp

.noexc120:                                        ; preds = %bb.aa
  %i.ia = load ptr, ptr %i.ca, align 8, !noalias !681, !nonnull !5, !noundef !5
  %i.ib = load i64, ptr %i.cb, align 8, !noalias !681, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !681
  invoke void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehReECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.w, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ia, i64 noundef %i.ib, ptr noalias noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 1)
          to label %bb.ac unwind label %bb.ab, !noalias !681

bb.ab:                                            ; preds = %.noexc120
  %i.ic = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #24
          to label %.thread374 unwind label %bb.ce, !noalias !681

bb.ac:                                            ; preds = %.noexc120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !681
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %bb.ae unwind label %bb.ad, !noalias !681

bb.ad:                                            ; preds = %bb.ac
  %i.id = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body.i unwind label %bb.af, !noalias !681

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i unwind label %bb.ag, !noalias !681

bb.af:                                            ; preds = %bb.ad
  %i.ie = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !681
  unreachable

.body.i:                                          ; preds = %.body114.i, %.body.i.i, %bb.ag, %bb.ad
  %.pn84.i = phi { ptr, i32 } [ %.pn82.i, %.body114.i ], [ %i.id, %bb.ad ], [ %i.if, %bb.ag ], [ %.pn61.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24) %i.ak) #24
          to label %.thread374 unwind label %bb.ce, !noalias !681

bb.ag:                                            ; preds = %bb.cl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit125.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit71.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i, %bb.ah, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, %bb.ae
  %i.if = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !681
  %i.ig = invoke noundef nonnull align 2 ptr @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter9formatterINtB2_9FormatterNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE7optionsB12_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ew)
          to label %bb.ah unwind label %bb.ag, !noalias !681 ; 6 uses

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i
  %.sroa.0135.0.copyload.i = load i32, ptr %i.ig, align 2, !noalias !681
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 6
  %.sroa.3.0.copyload.i = load i8, ptr %.sroa.3.0..sroa_idx.i, align 2, !noalias !681
  %.sroa.3141.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 7
  %.sroa.3141.0.copyload.i = load i8, ptr %.sroa.3141.0..sroa_idx.i, align 1, !noalias !681 ; 2 uses
  %.sroa.4144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %.sroa.4144.0.copyload.i = load i16, ptr %.sroa.4144.0..sroa_idx.i, align 2, !noalias !681
  %.sroa.5150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 11
  %.sroa.5150.0.copyload.i = load i8, ptr %.sroa.5150.0..sroa_idx.i, align 1, !noalias !681
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ig, i64 13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx.i, i64 3, i1 false), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !681
  %i.ih = load i8, ptr %i.cc, align 1, !range !14, !alias.scope !678, !noalias !680, !noundef !5 ; 2 uses
  %i.ii = load ptr, ptr %i.cd, align 8, !noalias !681, !nonnull !5, !noundef !5 ; 3 uses
  %i.ij = load i64, ptr %i.ce, align 8, !noalias !681, !noundef !5 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !697)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.611.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !698
  %i.ik = icmp eq i8 %.sroa.3141.0.copyload.i, 2
  %..i.i = select i1 %i.ik, i8 3, i8 0
  %.sroa.056.4.insert.ext.i.i = zext nneg i8 %..i.i to i48
  %.sroa.056.4.insert.shift.i.i = shl nuw nsw i48 %.sroa.056.4.insert.ext.i.i, 32
  %.sroa.056.4.insert.insert.i.i = or disjoint i48 %.sroa.056.4.insert.shift.i.i, 13240835
  invoke void @_RNvCsb6FLkjZuKG_18ruff_python_parser5parse(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.u, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ij, i48 %.sroa.056.4.insert.insert.i.i)
          to label %.noexc.i unwind label %bb.ag, !noalias !681

.noexc.i:                                         ; preds = %bb.ah
  %i.il = load i64, ptr %i.u, align 8, !range !9, !noalias !698, !noundef !5 ; 2 uses
  %i.im = icmp eq i64 %i.il, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !noalias !698
  br i1 %i.im, label %.thread.i, label %bb.ai

.thread.i:                                        ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !699
  store i64 -1, ptr %i.ah, align 8, !alias.scope !697, !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.i.i)
  %.pre172.i = load i8, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !range !700, !noalias !681
  br label %bb.bh

bb.ai:                                            ; preds = %.noexc.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.58.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.531.0..sroa_idx.i.i, i64 56, i1 false), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.47.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i.i, i64 40, i1 false), !noalias !698
  store i64 %i.il, ptr %i.v, align 8, !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !698
  invoke void @_RNvXs5_NtNtCskLngH8kgpZI_15ruff_python_ast5token6tokensNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesINtNtCs4NRVxsYgnAr_4core7convert4FromRNtB5_6TokensE4from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cg)
          to label %bb.ak unwind label %bb.aj, !noalias !701

.body.i.i:                                        ; preds = %.body.i64.i.i, %.body.i.i.i, %bb.al, %bb.aj
  %.pn61.i.i = phi { ptr, i32 } [ %.pn.i96.i, %bb.al ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.in, %bb.aj ], [ %eh.lpad-body.i65.i.i, %.body.i64.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated3ModEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(104) %i.v) #24
          to label %.body.i unwind label %bb.bg, !noalias !701

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i68.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i, %bb.ai
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.io = load i64, ptr %i.v, align 8, !range !4, !noalias !698, !noundef !5
  %i.ip = invoke noundef nonnull ptr @_RNvNvMs0_NtCs8CpBcHC8tKo_21ruff_python_formatter8commentsNtB7_8Comments8from_ast16collect_comments(i64 noundef %i.io, ptr noundef nonnull %.sroa.47.0..sroa_idx.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ii, i64 noundef %i.ij, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %bb.an unwind label %bb.am, !noalias !701

bb.al:                                            ; preds = %bb.ar, %bb.am
  %.pn.i96.i = phi { ptr, i32 } [ %i.iq, %bb.am ], [ %i.it, %bb.ar ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(56) %i.t) #24
          to label %.body.i.i unwind label %bb.bg, !noalias !701

bb.am:                                            ; preds = %bb.av, %bb.au, %bb.an, %bb.ak
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.an:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !698
  store i32 %.sroa.0135.0.copyload.i, ptr %i.ch, align 8, !noalias !702
  store i16 %.sroa.02.0.i, ptr %.sroa.2.0..sroa_idx137.i, align 4, !noalias !702
  store i8 %.sroa.3.0.copyload.i, ptr %.sroa.3.0..sroa_idx139.i, align 2, !noalias !702
  store i8 %.sroa.3141.0.copyload.i, ptr %.sroa.3141.0..sroa_idx142.i, align 1, !noalias !702
  store i16 %.sroa.4144.0.copyload.i, ptr %.sroa.4144.0..sroa_idx145.i, align 8, !noalias !702
  store i8 1, ptr %.sroa.4147.0..sroa_idx148.i, align 2, !noalias !702
  store i8 %.sroa.5150.0.copyload.i, ptr %.sroa.5150.0..sroa_idx151.i, align 1, !noalias !702
  store i8 0, ptr %.sroa.5153.0..sroa_idx154.i, align 4, !noalias !702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.0..sroa_idx156.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.6.i, i64 3, i1 false), !noalias !702
  store ptr %i.ii, ptr %i.s, align 8, !noalias !698
  store i64 %i.ij, ptr %i.ci, align 8, !noalias !698
  store ptr %i.ip, ptr %i.cj, align 8, !noalias !698
  store ptr %i.t, ptr %i.ck, align 8, !noalias !698
  store ptr %i.cg, ptr %2, align 8, !noalias !698
  store i8 0, ptr %i.cl, align 8, !noalias !698
  store i8 1, ptr %.sroa.235.0..sroa_idx.i.i, align 1, !noalias !698
  store i16 0, ptr %i.cm, align 8, !noalias !698
  store i8 %i.ih, ptr %i.cn, align 8, !noalias !698
  store i16 2, ptr %i.co, align 2, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !698
  store ptr %i.v, ptr %i.o, align 8, !noalias !698
  store ptr %i.o, ptr %i.p, align 8, !noalias !698
  store ptr @67, ptr %i.cp, align 8, !noalias !698
  invoke void @_RINvCs7Ma6rQP8bRy_14ruff_formatter6formatNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEBH_(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.p, i64 noundef 1)
          to label %bb.ao unwind label %bb.am, !noalias !701

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !698
  %i.ir = load i64, ptr %i.q, align 8, !range !12, !noalias !698, !noundef !5 ; 2 uses
  %i.is = icmp eq i64 %i.ir, -1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cq, i64 24, i1 false), !noalias !698
  br i1 %i.is, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.443.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.443.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.i.i, i64 24, i1 false), !noalias !698
  store i8 44, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !697, !noalias !699
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.443.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.443.i.i, i64 31, i1 false), !noalias !699
  store i64 -1, ptr %i.ah, align 8, !alias.scope !697, !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.443.i.i)
  br label %bb.bb

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.517.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.541.0..sroa_idx.i.i, i64 72, i1 false), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.416.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.i.i, i64 24, i1 false), !noalias !698
  store i64 %i.ir, ptr %i.r, align 8, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !698
  invoke void @_RNvMsg_Cs7Ma6rQP8bRy_14ruff_formatterINtB5_9FormattedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextE14create_printerBT_(ptr noalias noundef nonnull sret([224 x i8]) align 8 captures(address) dereferenceable(224) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.r)
          to label %bb.as unwind label %bb.ar, !noalias !701

bb.ar:                                            ; preds = %bb.as, %bb.aq
  %i.it = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs7Ma6rQP8bRy_14ruff_formatter9FormattedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEEB1m_(ptr noalias noundef align 8 dereferenceable(104) %i.r) #24
          to label %bb.al unwind label %bb.bg, !noalias !701

bb.as:                                            ; preds = %bb.aq
  invoke void @_RNvMNtCs7Ma6rQP8bRy_14ruff_formatter7printerNtB2_7Printer5print(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(224) %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r)
          to label %bb.at unwind label %bb.ar, !noalias !701

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !698
  %i.iu = load i64, ptr %i.n, align 8, !range !12, !noalias !698, !noundef !5 ; 2 uses
  %i.iv = icmp eq i64 %i.iu, -1
  %.sroa.048.0.copyload.i.i = load i64, ptr %i.cr, align 8, !noalias !698 ; 2 uses
  br i1 %i.iv, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !698
  store i8 45, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !697, !noalias !699
  store i64 %.sroa.048.0.copyload.i.i, ptr %.sroa.454.0..sroa_idx.i.i, align 4, !alias.scope !697, !noalias !699
  store i64 -1, ptr %i.ah, align 8, !alias.scope !697, !noalias !699
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs7Ma6rQP8bRy_14ruff_formatter9FormattedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEEB1m_(ptr noalias noundef align 8 dereferenceable(104) %i.r)
          to label %bb.bb unwind label %bb.am, !noalias !701

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.3.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.547.0..sroa_idx.i.i, i64 72, i1 false), !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !698
  store i64 %i.iu, ptr %i.ah, align 8, !alias.scope !697, !noalias !699
  store i64 %.sroa.048.0.copyload.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !alias.scope !697, !noalias !699
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCs7Ma6rQP8bRy_14ruff_formatter9FormattedNtNtCs8CpBcHC8tKo_21ruff_python_formatter7context15PyFormatContextEEB1m_(ptr noalias noundef align 8 dereferenceable(104) %i.r)
          to label %bb.aw unwind label %bb.am, !noalias !701

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !698
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i unwind label %bb.ax, !noalias !701

bb.ax:                                            ; preds = %bb.aw
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.body.i.i.i unwind label %bb.ay, !noalias !701

bb.ay:                                            ; preds = %bb.ax
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !701
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i: ; preds = %bb.aw
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i unwind label %bb.az, !noalias !701

bb.az:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.az, %bb.ax
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.iy, %bb.az ], [ %i.iw, %bb.ax ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %.body.i.i unwind label %bb.ba, !noalias !701

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i unwind label %bb.aj, !noalias !701

bb.ba:                                            ; preds = %.body.i.i.i
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !701
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !698
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated3ModEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(104) %i.v)
          to label %bb.bi unwind label %bb.ag, !noalias !681

bb.bb:                                            ; preds = %bb.au, %bb.ap
  %i.ja = phi i8 [ 45, %bb.au ], [ 44, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !698
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i67.i.i unwind label %bb.bc, !noalias !701

bb.bc:                                            ; preds = %bb.bb
  %i.jb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %.body.i64.i.i unwind label %bb.bd, !noalias !701

bb.bd:                                            ; preds = %bb.bc
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !701
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i67.i.i: ; preds = %bb.bb
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i68.i.i unwind label %bb.be, !noalias !701

bb.be:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i67.i.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %.body.i64.i.i

.body.i64.i.i:                                    ; preds = %bb.be, %bb.bc
  %eh.lpad-body.i65.i.i = phi { ptr, i32 } [ %i.jd, %bb.be ], [ %i.jb, %bb.bc ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %.body.i.i unwind label %bb.bf, !noalias !701

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i68.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i67.i.i
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cs)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit71.i.i unwind label %bb.aj, !noalias !701

bb.bf:                                            ; preds = %.body.i64.i.i
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !701
  unreachable

bb.bg:                                            ; preds = %bb.ar, %bb.al, %.body.i.i
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21, !noalias !701
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit71.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges13CommentRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i68.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !698
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated3ModEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(104) %i.v)
          to label %.thread181.i unwind label %bb.ag, !noalias !681

.thread181.i:                                     ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit71.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.i.i)
  br label %bb.bh

bb.bh:                                            ; preds = %.thread181.i, %.thread.i
  %i.jg = phi i8 [ %.pre172.i, %.thread.i ], [ %i.ja, %.thread181.i ] ; 2 uses
  %i.jh = icmp eq i8 %i.jg, 44                    ; 2 uses
  br i1 %i.jh, label %.thread183.i, label %bb.ck

bb.bi:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskVZVgnzM3Oh_18ruff_python_trivia14comment_ranges12TriviaRangesECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !698
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.611.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ai, ptr noundef nonnull align 8 dereferenceable(88) %i.ah, i64 88, i1 false), !noalias !681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !681
  %i.ji = trunc nuw i8 %i.ih to i1
  br i1 %i.ji, label %bb.bk, label %bb.bl

.body114.i:                                       ; preds = %bb.cf, %bb.bz, %bb.bn, %bb.bj
  %.pn82.i = phi { ptr, i32 } [ %.pn.i, %bb.bn ], [ %i.kh, %bb.bz ], [ %i.jj, %bb.bj ], [ %i.km, %bb.cf ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCs7Ma6rQP8bRy_14ruff_formatter7PrintedECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(88) %i.ai) #24
          to label %.body.i unwind label %bb.ce, !noalias !681
end_hunk_1
