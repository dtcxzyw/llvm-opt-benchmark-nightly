Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.05?download=true
inline.NumInlined: 3215
inline.NumDeleted: 1068
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17DocstringSectionsEBL_:bb.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring13RaisesSectionEEB17_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring13RaisesSectionEBL_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load i64, ptr %i.g, align 8, !range !3, !alias.scope !311, !noundef !4
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEEB17_.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring13RaisesSectionEEB17_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEBL_.exit.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEBL_.exit.i: ; preds = %bb.f
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEEB17_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEEB17_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring13RaisesSectionEEB17_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEBL_.exit.i
  ret void

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring17ParametersSectionEBL_(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryEEB1h_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryEEB1o_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryEEB1o_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryEEB1h_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring14ParameterEntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBV_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring25DocstringMissingExceptionEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring28DocstringExtraneousExceptionEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtBG_6string6StringEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pydoclint5rules15check_docstring28DocstringExtraneousParameterEBL_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = tail call fastcc noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB4_5utils12OffsetLookupmEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %.not.i = icmp ult i64 %5, %6
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not91.i = icmp ult i64 %2, %3
  br i1 %.not91.i, label %bb.f, label %bb.bk

bb.d:                                             ; preds = %bb.b
  %.sroa.034.0.i = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !321, !noalias !324, !noundef !4 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !57, !alias.scope !321, !noalias !324, !noundef !4
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !324
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !321, !noalias !324, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.l ; 4 uses
  store i64 1, ptr %i.q, align 8, !noalias !326
  %.sroa.4158.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %2, ptr %.sroa.4158.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5159.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 %.sroa.034.0.i, ptr %.sroa.5159.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store i64 %5, ptr %.sroa.6160.0..sroa_idx.i, align 8, !noalias !326
  %i.r = add i64 %i.l, 1
  store i64 %i.r, ptr %i.k, align 8, !alias.scope !321, !noalias !324
  tail call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0), !noalias !326
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %bb.c
  %i.s = tail call fastcc noundef i64 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6) ; 7 uses
  %i.t = add i64 %i.s, %2                         ; 11 uses
  %i.u = add i64 %i.s, %5                         ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !330)
  %i.v = icmp uge i64 %i.t, %3
  %i.w = icmp uge i64 %i.u, %6
  %or.cond.i.i = or i1 %i.v, %i.w
  br i1 %or.cond.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ad = sub nuw i64 %3, %i.t                    ; 2 uses
  %i.ae = sub nuw i64 %6, %i.u                    ; 2 uses
  %i.af = load i64, ptr %i.x, align 8, !alias.scope !332, !noalias !333
  %i.ag = load i64, ptr %i.y, align 8, !alias.scope !332, !noalias !333 ; 2 uses
  %i.ah = load ptr, ptr %i.z, align 8, !alias.scope !332, !noalias !333, !nonnull !4
  %i.ai = load i64, ptr %i.aa, align 8, !alias.scope !334, !noalias !335
  %i.aj = load i64, ptr %i.ab, align 8, !alias.scope !334, !noalias !335 ; 2 uses
  %i.ak = load ptr, ptr %i.ac, align 8, !alias.scope !334, !noalias !335, !nonnull !4
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.i
  %i.al = phi i64 [ %3, %.lr.ph.i.i.i.i.i ], [ %i.ao, %bb.k ]
  %.sroa.01.033.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.aw, %bb.k ] ; 3 uses
  %i.am = phi i64 [ %6, %.lr.ph.i.i.i.i.i ], [ %i.an, %bb.k ]
  %i.an = add i64 %i.am, -1                       ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.01.033.i.i.i.i.i, %i.ad
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = add i64 %i.al, -1                       ; 2 uses
  %i.ap = sub i64 %i.an, %i.af                    ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %i.ag
  br i1 %i.aq, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ap, i64 noundef %i.ag, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191) #28, !noalias !336
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i.i: ; preds = %bb.h
  %i.ar = sub i64 %i.ao, %i.ai                    ; 3 uses
  %i.as = icmp ult i64 %i.ar, %i.aj
  br i1 %i.as, label %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ar, i64 noundef %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192) #28, !noalias !350
  unreachable

_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i: ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit9.i.i.i.i.i.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ap
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ar
  %.val.i.i.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !353, !noundef !4
  %.val10.i.i.i.i.i.i = load i32, ptr %i.au, align 4, !noalias !353, !noundef !4
  %i.av = icmp eq i32 %.val.i.i.i.i.i.i, %.val10.i.i.i.i.i.i
  br i1 %i.av, label %bb.k, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.k:                                             ; preds = %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i
  %i.aw = add nuw i64 %.sroa.01.033.i.i.i.i.i, 1  ; 2 uses
  %exitcond65.not.i.i.i.i.i = icmp eq i64 %i.aw, %i.ae
  br i1 %exitcond65.not.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.g

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.k, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.f ], [ %i.ae, %bb.k ], [ %.sroa.01.033.i.i.i.i.i, %_RNvXs3_NtNtCsiqiOkcJdymw_7similar10algorithms5utilsINtB5_12OffsetLookupmEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i.i ], [ %i.ad, %bb.g ] ; 5 uses
  %i.ax = sub nuw i64 %3, %2                      ; 3 uses
  %i.ay = icmp eq i64 %i.s, %i.ax
  %i.az = sub i64 %6, %5                          ; 3 uses
  %i.ba = icmp eq i64 %i.ax, %i.az
  %or.cond100.i = and i1 %i.ba, %i.ay
  br i1 %or.cond100.i, label %bb.bi, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !354
  %i.bb = sub i64 %3, %.sroa.0.0.i.i              ; 2 uses
  %i.bc = sub i64 %6, %.sroa.0.0.i.i              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %.sroa.013.0.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bb, i64 %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !362
  store ptr null, ptr %i.d, align 8, !noalias !362
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bd, align 8, !noalias !362
  %.not60.not.i.i = icmp ugt i64 %i.bc, %i.u
  br i1 %.not60.not.i.i, label %.lr.ph62.i.i, label %select.unfold._crit_edge.i.i

.lr.ph62.i.i:                                     ; preds = %bb.l
  %spec.select.i.i = sub nuw i64 %i.bc, %i.u      ; 2 uses
  %.not3458.not.i.i = icmp ugt i64 %i.bb, %i.t
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !363, !noalias !364
  %invariant.op63.i.i = sub i64 %i.u, %i.bf
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !363, !noalias !364 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !365, !noalias !366
  %invariant.op.i.i = sub i64 %i.t, %i.bj
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !365, !noalias !366 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !363, !noalias !364, !nonnull !4
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !365, !noalias !366, !nonnull !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3458.not.i.i, label %.lr.ph62.split.i.i, label %.lr.ph62.split.us.i.i

.lr.ph62.split.us.i.i:                            ; preds = %.lr.ph62.i.i, %.preheader.us.i.i
  %.sroa.018.161.us.i.i = phi i64 [ %i.bt, %.preheader.us.i.i ], [ %spec.select.i.i, %.lr.ph62.i.i ]
  %i.bt = add i64 %.sroa.018.161.us.i.i, -1       ; 2 uses
  %i.bu = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split.us.i.i, !noalias !367

bb.m:                                             ; preds = %.lr.ph62.split.us.i.i
  br i1 %i.bu, label %.split.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.m
  %.not.us.i.i = icmp eq i64 %i.bt, 0
  br i1 %.not.us.i.i, label %select.unfold._crit_edge.i.i, label %.lr.ph62.split.us.i.i

.loopexit.split-lp.loopexit.split.us.i.i:         ; preds = %.lr.ph62.split.us.i.i
  %lpad.loopexit46.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.select.unfold.loopexit_crit_edge.i.i:            ; preds = %bb.w
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %select.unfold._crit_edge.i.i, label %.lr.ph62.split.i.i

select.unfold._crit_edge.i.i:                     ; preds = %.preheader.us.i.i, %.select.unfold.loopexit_crit_edge.i.i, %bb.l
  %i.bv = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !368
  store i64 1, ptr %i.h, align 8, !alias.scope !355, !noalias !368
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i

.lr.ph62.split.i.i:                               ; preds = %.lr.ph62.i.i, %.select.unfold.loopexit_crit_edge.i.i
  %.sroa.018.161.i.i = phi i64 [ %i.bw, %.select.unfold.loopexit_crit_edge.i.i ], [ %spec.select.i.i, %.lr.ph62.i.i ] ; 3 uses
  %i.bw = add i64 %.sroa.018.161.i.i, -1          ; 5 uses
  %i.bx = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split.i.i, !noalias !367

.loopexit.i.i:                                    ; preds = %bb.v, %bb.r, %bb.q, %bb.p
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split.i.i:            ; preds = %.lr.ph62.split.i.i
  %lpad.loopexit46.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp47.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.split.i.i, %.loopexit.i.i, %.loopexit.split-lp.loopexit.split.us.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp47.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ], [ %lpad.loopexit46.i.i, %.loopexit.split-lp.loopexit.split.i.i ], [ %lpad.loopexit46.us.i.i, %.loopexit.split-lp.loopexit.split.us.i.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.x, !noalias !367

bb.n:                                             ; preds = %.lr.ph62.split.i.i
  br i1 %i.bx, label %.split.us.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %.reass64.i.i = add i64 %i.bw, %invariant.op63.i.i ; 3 uses
  %i.by = icmp ult i64 %.reass64.i.i, %i.bh
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.reass64.i.i
  br i1 %i.by, label %.lr.ph.split.i.i, label %.invoke.i.i

.split.us.i.i:                                    ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.h, align 8, !alias.scope !355, !noalias !368
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !367
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB4_5utils12OffsetLookupmEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i

.lr.ph.split.i.i:                                 ; preds = %.preheader.i.i, %bb.w
  %.sroa.026.059.i.i = phi i64 [ %i.ca, %bb.w ], [ %.sroa.013.0.i.i, %.preheader.i.i ] ; 3 uses
  %i.ca = add i64 %.sroa.026.059.i.i, -1          ; 5 uses
  %.reass.i.i = add i64 %i.ca, %invariant.op.i.i  ; 3 uses
  %i.cb = icmp ult i64 %.reass.i.i, %i.bl
  br i1 %i.cb, label %bb.o, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %.preheader.i.i, %.lr.ph.split.i.i
  %i.cc = phi i64 [ %.reass.i.i, %.lr.ph.split.i.i ], [ %.reass64.i.i, %.preheader.i.i ]
  %i.cd = phi i64 [ %i.bl, %.lr.ph.split.i.i ], [ %i.bh, %.preheader.i.i ]
  %i.ce = phi ptr [ @16, %.lr.ph.split.i.i ], [ @15, %.preheader.i.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.cc, i64 noundef %i.cd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ce) #28
          to label %.cont.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !367

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.o:                                             ; preds = %.lr.ph.split.i.i
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %.reass.i.i
  %.val.i.i = load i32, ptr %i.bz, align 4, !noalias !367, !noundef !4
  %.val43.i.i = load i32, ptr %i.cf, align 4, !noalias !367, !noundef !4
  %i.cg = icmp eq i32 %.val.i.i, %.val43.i.i
  br i1 %i.cg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !362
  store i64 %.sroa.018.161.i.i, ptr %i.b, align 8, !noalias !362
  store i64 %i.ca, ptr %i.bq, align 8, !noalias !362
  %i.ch = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.r unwind label %.loopexit.i.i, !noalias !367 ; 2 uses

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !362
  store i64 %.sroa.018.161.i.i, ptr %i.c, align 8, !noalias !362
  store i64 %.sroa.026.059.i.i, ptr %i.bs, align 8, !noalias !362
  %i.ci = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.u unwind label %.loopexit.i.i, !noalias !367 ; 2 uses

bb.r:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !362
  store i64 %i.bw, ptr %i.a, align 8, !noalias !362
  store i64 %.sroa.026.059.i.i, ptr %i.br, align 8, !noalias !362
  %i.cj = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.s unwind label %.loopexit.i.i, !noalias !367 ; 2 uses

bb.s:                                             ; preds = %bb.r
  %.not35.i.i = icmp eq ptr %i.ch, null
  %..i.i = select i1 %.not35.i.i, ptr @17, ptr %i.ch
  %.not36.i.i = icmp eq ptr %i.cj, null
  %.39.i.i = select i1 %.not36.i.i, ptr @17, ptr %i.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !369)
  call void @llvm.experimental.noalias.scope.decl(metadata !372)
  call void @llvm.experimental.noalias.scope.decl(metadata !374)
  call void @llvm.experimental.noalias.scope.decl(metadata !377)
  %i.ck = load i32, ptr %.39.i.i, align 4, !alias.scope !379, !noalias !380, !noundef !4
  %i.cl = load i32, ptr %..i.i, align 4, !alias.scope !381, !noalias !382, !noundef !4
  %i.cm = call i32 @llvm.umax.i32(i32 %i.ck, i32 %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !362
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !362
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.02.0.i.i = phi i32 [ %i.co, %bb.u ], [ %i.cm, %bb.s ] ; 2 uses
  %.not38.i.i = icmp eq i32 %.sroa.02.0.i.i, 0
  br i1 %.not38.i.i, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.q
  %.not37.i.i = icmp eq ptr %i.ci, null
  %.40.i.i = select i1 %.not37.i.i, ptr @17, ptr %i.ci
  %i.cn = load i32, ptr %.40.i.i, align 4, !noalias !367, !noundef !4
  %i.co = add i32 %i.cn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !362
  br label %bb.t

bb.v:                                             ; preds = %bb.t
  %i.cp = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bw, i64 noundef %i.ca, i32 noundef %.sroa.02.0.i.i)
          to label %bb.w unwind label %.loopexit.i.i, !noalias !367 ; 0 uses

bb.w:                                             ; preds = %bb.v, %bb.t
  %.not34.i.i = icmp eq i64 %i.ca, 0
  br i1 %.not34.i.i, label %.select.unfold.loopexit_crit_edge.i.i, label %.lr.ph.split.i.i

bb.x:                                             ; preds = %.loopexit.split-lp.i.i
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !367
  unreachable

common.resume.i:                                  ; preds = %bb.bh, %bb.ah, %bb.y, %.loopexit.split-lp.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.bh ], [ %lpad.phi.i, %bb.ah ], [ %lpad.thr_comm.split-lp.i, %bb.y ]
  resume { ptr, i32 } %common.resume.op.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs13diff_deadlineINtNtB4_5utils12OffsetLookupmEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter:bb.a
  store i64 %i.ed, ptr %.sroa.4168.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5169.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  store i64 1, ptr %.sroa.5169.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6170.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  store i64 %i.ee, ptr %.sroa.6170.0..sroa_idx.i, align 8, !noalias !326
  %i.fh = add i64 %i.ez, 1
  store i64 %i.fh, ptr %i.dw, align 8, !alias.scope !410, !noalias !413
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit103.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit106.i
  %.sroa.016.2.i = phi i64 [ %i.fo, %bb.au ], [ %i.ev, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit106.i ], [ %.sroa.016.0231.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit103.i ] ; 3 uses
  %.sroa.0.2.i = phi i64 [ %i.fn, %bb.au ], [ %.sroa.0.0232.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit106.i ], [ %i.eq, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit103.i ] ; 3 uses
  %i.fi = icmp ult i64 %.sroa.016.2.i, %i.ct
  %i.fj = icmp ult i64 %.sroa.0.2.i, %i.cu
  %or.cond3.i = select i1 %i.fi, i1 %i.fj, i1 false
  br i1 %or.cond3.i, label %bb.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECsEhZmuQNqkz_11ruff_linter.exit.i

bb.au:                                            ; preds = %bb.am, %bb.al
  %i.fk = load ptr, ptr %i.dx, align 8, !alias.scope !400, !noalias !403, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw [40 x i8], ptr %i.fk, i64 %i.es ; 4 uses
  store i64 0, ptr %i.fl, align 8, !noalias !326
  %.sroa.4148.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.ed, ptr %.sroa.4148.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5149.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 %i.ee, ptr %.sroa.5149.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 24
  store i64 1, ptr %.sroa.6150.0..sroa_idx.i, align 8, !noalias !326
  %i.fm = add i64 %i.es, 1
  store i64 %i.fm, ptr %i.dw, align 8, !alias.scope !400, !noalias !403
  %i.fn = add nuw i64 %.sroa.0.0232.i, 1
  %i.fo = add nuw i64 %.sroa.016.0231.i, 1
  br label %bb.at

bb.av:                                            ; preds = %bb.bh, %bb.ah
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !326
  unreachable

bb.aw:                                            ; preds = %bb.ae, %bb.ad
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !alias.scope !395, !noalias !398, !nonnull !4, !noundef !4
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.fr, i64 %i.ea ; 4 uses
  store i64 1, ptr %i.fs, align 8, !noalias !326
  %.sroa.4173.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  store i64 %i.t, ptr %.sroa.4173.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5174.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 16
  store i64 %i.cu, ptr %.sroa.5174.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 24
  store i64 %i.u, ptr %.sroa.6175.0..sroa_idx.i, align 8, !noalias !326
  %i.ft = add i64 %i.ea, 1                        ; 3 uses
  store i64 %i.ft, ptr %i.dz, align 8, !alias.scope !395, !noalias !398
  %i.fu = load i64, ptr %i.dy, align 8, !range !57, !alias.scope !415, !noalias !418, !noundef !4
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.ax, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit105.i

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dy), !noalias !326
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit105.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit105.i: ; preds = %bb.ax, %bb.aw
  %i.fw = load ptr, ptr %i.fq, align 8, !alias.scope !415, !noalias !418, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw [40 x i8], ptr %i.fw, i64 %i.ft ; 4 uses
  store i64 2, ptr %i.fx, align 8, !noalias !326
  %.sroa.4188.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  store i64 %i.t, ptr %.sroa.4188.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5189.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store i64 %i.u, ptr %.sroa.5189.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fx, i64 24
  store i64 %i.ct, ptr %.sroa.6190.0..sroa_idx.i, align 8, !noalias !326
  %i.fy = add i64 %i.ea, 2
  store i64 %i.fy, ptr %i.dz, align 8, !alias.scope !415, !noalias !418
  br label %bb.ag

bb.ay:                                            ; preds = %bb.ag
  %i.fz = add i64 %.sroa.0.1.i, %i.t
  %i.ga = sub nuw i64 %i.cu, %.sroa.0.1.i
  %i.gb = add i64 %.sroa.016.1.i, %i.u
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !alias.scope !420, !noalias !423, !noundef !4 ; 3 uses
  %i.gf = load i64, ptr %i.gc, align 8, !range !57, !alias.scope !420, !noalias !423, !noundef !4
  %i.gg = icmp eq i64 %i.ge, %i.gf
  br i1 %i.gg, label %bb.az, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gc), !noalias !326
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.az, %bb.ay
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gi = load ptr, ptr %i.gh, align 8, !alias.scope !420, !noalias !423, !nonnull !4, !noundef !4
  %i.gj = getelementptr inbounds nuw [40 x i8], ptr %i.gi, i64 %i.ge ; 4 uses
  store i64 1, ptr %i.gj, align 8, !noalias !326
  %.sroa.4163.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 %i.fz, ptr %.sroa.4163.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5164.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  store i64 %i.ga, ptr %.sroa.5164.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gj, i64 24
  store i64 %i.gb, ptr %.sroa.6165.0..sroa_idx.i, align 8, !noalias !326
  %i.gk = add i64 %i.ge, 1
  store i64 %i.gk, ptr %i.gd, align 8, !alias.scope !420, !noalias !423
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ag
  %.sroa.0.3.i = phi i64 [ %.sroa.0.1.i, %bb.ag ], [ %i.cu, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ]
  %i.gl = icmp ult i64 %.sroa.016.1.i, %i.ct
  br i1 %i.gl, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.gm = add i64 %.sroa.0.3.i, %i.t
  %i.gn = add i64 %.sroa.016.1.i, %i.u
  %i.go = sub nuw i64 %i.ct, %.sroa.016.1.i
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !425, !noalias !428, !noundef !4 ; 3 uses
  %i.gs = load i64, ptr %i.gp, align 8, !range !57, !alias.scope !425, !noalias !428, !noundef !4
  %i.gt = icmp eq i64 %i.gr, %i.gs
  br i1 %i.gt, label %bb.bc, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gp), !noalias !326
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bc, %bb.bb
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !425, !noalias !428, !nonnull !4, !noundef !4
  %i.gw = getelementptr inbounds nuw [40 x i8], ptr %i.gv, i64 %i.gr ; 4 uses
  store i64 2, ptr %i.gw, align 8, !noalias !326
  %.sroa.4183.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.gm, ptr %.sroa.4183.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5184.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store i64 %i.gn, ptr %.sroa.5184.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store i64 %i.go, ptr %.sroa.6185.0..sroa_idx.i, align 8, !noalias !326
  %i.gx = add i64 %i.gr, 1
  store i64 %i.gx, ptr %i.gq, align 8, !alias.scope !425, !noalias !428
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ba
  %.not93.i = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not93.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.bd
  call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0), !noalias !326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !354
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.bf:                                            ; preds = %bb.bd
  %i.gy = add i64 %i.cu, %i.t
  %i.gz = add i64 %i.ct, %i.u
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !alias.scope !430, !noalias !433, !noundef !4 ; 3 uses
  %i.hd = load i64, ptr %i.ha, align 8, !range !57, !alias.scope !430, !noalias !433, !noundef !4
  %i.he = icmp eq i64 %i.hc, %i.hd
  br i1 %i.he, label %bb.bg, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ha), !noalias !326
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bg, %bb.bf
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !430, !noalias !433, !nonnull !4, !noundef !4
  %i.hh = getelementptr inbounds nuw [40 x i8], ptr %i.hg, i64 %i.hc ; 4 uses
  store i64 0, ptr %i.hh, align 8, !noalias !326
  %.sroa.4143.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store i64 %i.gy, ptr %.sroa.4143.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5144.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store i64 %i.gz, ptr %.sroa.5144.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store i64 %.sroa.0.0.i.i, ptr %.sroa.6145.0..sroa_idx.i, align 8, !noalias !326
  %i.hi = add i64 %i.hc, 1
  store i64 %i.hi, ptr %i.hb, align 8, !alias.scope !430, !noalias !433
  br label %bb.be

bb.bh:                                            ; preds = %bb.y
  %i.hj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hj)
          to label %common.resume.i unwind label %bb.av, !noalias !326

bb.bi:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtB2_12OffsetLookupmEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !alias.scope !435, !noalias !438, !noundef !4 ; 3 uses
  %i.hn = load i64, ptr %i.hk, align 8, !range !57, !alias.scope !435, !noalias !438, !noundef !4
  %i.ho = icmp eq i64 %i.hm, %i.hn
  br i1 %i.ho, label %bb.bj, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit137.i

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hk), !noalias !438
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit137.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit137.i: ; preds = %bb.bj, %bb.bi
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hq = load ptr, ptr %i.hp, align 8, !alias.scope !435, !noalias !438, !nonnull !4, !noundef !4
  %i.hr = getelementptr inbounds nuw [40 x i8], ptr %i.hq, i64 %i.hm ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hr, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hr, i8 0, i64 24, i1 false), !noalias !326
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !326
  %i.hs = add i64 %i.hm, 1
  store i64 %i.hs, ptr %i.hl, align 8, !alias.scope !435, !noalias !438
  tail call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0), !noalias !326
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.bk:                                            ; preds = %bb.c
  %i.ht = sub i64 %6, %5
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !440, !noalias !443, !noundef !4 ; 3 uses
  %i.hx = load i64, ptr %i.hu, align 8, !range !57, !alias.scope !440, !noalias !443, !noundef !4
  %i.hy = icmp eq i64 %i.hw, %i.hx
  br i1 %i.hy, label %bb.bl, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit138.i

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hu), !noalias !443
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit138.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit138.i: ; preds = %bb.bl, %bb.bk
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ia = load ptr, ptr %i.hz, align 8, !alias.scope !440, !noalias !443, !nonnull !4, !noundef !4
  %i.ib = getelementptr inbounds nuw [40 x i8], ptr %i.ia, i64 %i.hw ; 4 uses
  store i64 2, ptr %i.ib, align 8, !noalias !326
  %.sroa.4178.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store i64 %2, ptr %.sroa.4178.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.5179.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store i64 %5, ptr %.sroa.5179.0..sroa_idx.i, align 8, !noalias !326
  %.sroa.6180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ib, i64 24
  store i64 %i.ht, ptr %.sroa.6180.0..sroa_idx.i, align 8, !noalias !326
  %i.ic = add i64 %i.hw, 1
  store i64 %i.ic, ptr %i.hv, align 8, !alias.scope !440, !noalias !443
  tail call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB7_5utils12OffsetLookupmEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0), !noalias !326
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB4_5utils12OffsetLookupmEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit138.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit137.i, %bb.be, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs13diff_deadlineINtNtB6_4text12TextDiffSideeEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef range(i32 -1, 1000000000) %8) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = tail call fastcc noundef zeroext i1 @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms9preflight29maybe_emit_disjoint_fast_pathINtNtB6_4text12TextDiffSideeEB1j_INtNtB4_7compact7CompactB1j_B1j_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(160) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %5, i64 noundef %6, i64 %7, i32 noundef %8)
  br i1 %i.j, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  %.not.i = icmp ult i64 %5, %6
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not91.i = icmp ult i64 %2, %3
  br i1 %.not91.i, label %bb.f, label %bb.bk

bb.d:                                             ; preds = %bb.b
  %.sroa.034.0.i = tail call i64 @llvm.usub.sat.i64(i64 %3, i64 %2)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !448, !noalias !451, !noundef !4 ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !range !57, !alias.scope !448, !noalias !451, !noundef !4
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k), !noalias !455
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !448, !noalias !451, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.q, i64 %i.m ; 4 uses
  store i64 1, ptr %i.r, align 8
  %.sroa.4160.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %2, ptr %.sroa.4160.0..sroa_idx.i, align 8
  %.sroa.5161.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.034.0.i, ptr %.sroa.5161.0..sroa_idx.i, align 8
  %.sroa.6162.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 %5, ptr %.sroa.6162.0..sroa_idx.i, align 8
  %i.s = add i64 %i.m, 1
  store i64 %i.s, ptr %i.l, align 8, !alias.scope !448, !noalias !451
  tail call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !456
  call void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_3ops5range5RangejEBW_EINtB5_7ZipImplBW_BW_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.e, i64 noundef %5, i64 noundef %6, i64 noundef %2, i64 noundef %3), !noalias !460
  %.sroa.6.16.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !456
  %.sroa.82.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.82.16.copyload.i.i = load i64, ptr %.sroa.82.16..sroa_idx.i.i, align 8, !noalias !456
  %.sroa.93.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.93.16.copyload.i.i = load i64, ptr %.sroa.93.16..sroa_idx.i.i, align 8, !noalias !456 ; 3 uses
  %.sroa.10.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.10.16.copyload.i.i = load i64, ptr %.sroa.10.16..sroa_idx.i.i, align 8, !noalias !456 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !456
  %i.t = icmp ult i64 %.sroa.93.16.copyload.i.i, %.sroa.10.16.copyload.i.i
  br i1 %i.t, label %.lr.ph.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.f
  %i.u = sub nuw i64 %.sroa.10.16.copyload.i.i, %.sroa.93.16.copyload.i.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.sroa.01.024.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.ah, %bb.h ] ; 3 uses
  %i.v = phi i64 [ %.sroa.93.16.copyload.i.i, %.lr.ph.i.i.i.i.i ], [ %i.w, %bb.h ] ; 3 uses
  %i.w = add nuw i64 %i.v, 1
  %i.x = add nuw i64 %i.v, %.sroa.6.16.copyload.i.i
  %i.y = add nuw i64 %i.v, %.sroa.82.16.copyload.i.i
  %i.z = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @189), !noalias !461 ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 1       ; 2 uses
  %i.ab = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @190), !noalias !461 ; 2 uses
  %i.ac = extractvalue { ptr, i64 } %i.ab, 1
  %i.ad = icmp eq i64 %i.aa, %i.ac
  br i1 %i.ad, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i: ; preds = %bb.g
  %i.ae = extractvalue { ptr, i64 } %i.ab, 0
  %i.af = extractvalue { ptr, i64 } %i.z, 0
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.af, ptr nonnull readonly %i.ae, i64 %i.aa), !alias.scope !473, !noalias !461
  %i.ag = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %bb.h, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.h:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i
  %i.ah = add nuw i64 %.sroa.01.024.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ah, %i.u
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.g

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i, %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.f ], [ %.sroa.01.024.i.i.i.i.i, %bb.g ], [ %.sroa.01.024.i.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i.i ], [ %i.u, %bb.h ] ; 7 uses
  %i.ai = add i64 %.sroa.0.0.i.i, %2              ; 11 uses
  %i.aj = add i64 %.sroa.0.0.i.i, %5              ; 11 uses
  %i.ak = icmp uge i64 %i.ai, %3
  %i.al = icmp uge i64 %i.aj, %6
  %or.cond.i110.i = or i1 %i.ak, %i.al
  br i1 %or.cond.i110.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph.i.i.i.i111.i

.lr.ph.i.i.i.i111.i:                              ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.am = sub nuw i64 %3, %i.ai                   ; 2 uses
  %i.an = sub nuw i64 %6, %i.aj                   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i111.i
  %i.ao = phi i64 [ %3, %.lr.ph.i.i.i.i111.i ], [ %i.ar, %bb.k ]
  %.sroa.01.022.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i111.i ], [ %i.ba, %bb.k ] ; 4 uses
  %i.ap = phi i64 [ %6, %.lr.ph.i.i.i.i111.i ], [ %i.aq, %bb.k ]
  %i.aq = add i64 %i.ap, -1                       ; 2 uses
  %exitcond.not.i.i.i.i112.i = icmp eq i64 %.sroa.01.022.i.i.i.i.i, %i.am
  br i1 %exitcond.not.i.i.i.i112.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add i64 %i.ao, -1                       ; 2 uses
  %i.as = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.aq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @191), !noalias !477 ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 1      ; 2 uses
  %i.au = tail call { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @192), !noalias !477 ; 2 uses
  %i.av = extractvalue { ptr, i64 } %i.au, 1
  %i.aw = icmp eq i64 %i.at, %i.av
  br i1 %i.aw, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i114.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i114.i: ; preds = %bb.j
  %i.ax = extractvalue { ptr, i64 } %i.au, 0
  %i.ay = extractvalue { ptr, i64 } %i.as, 0
  %bcmp.i.i.i.i.i.i115.i = tail call i32 @bcmp(ptr nonnull readonly %i.ay, ptr nonnull readonly %i.ax, i64 %i.at), !alias.scope !489, !noalias !477
  %i.az = icmp eq i32 %bcmp.i.i.i.i.i.i115.i, 0
  br i1 %i.az, label %bb.k, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.k:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i114.i
  %i.ba = add nuw i64 %.sroa.01.022.i.i.i.i.i, 1  ; 2 uses
  %exitcond27.not.i.i.i.i.i = icmp eq i64 %i.ba, %i.an
  br i1 %exitcond27.not.i.i.i.i.i, label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.k, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i114.i, %bb.j, %bb.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i113.i = phi i64 [ 0, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_prefix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %.sroa.01.022.i.i.i.i.i, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i.i.i.i114.i ], [ %i.am, %bb.i ], [ %i.an, %bb.k ], [ %.sroa.01.022.i.i.i.i.i, %bb.j ] ; 5 uses
  %i.bb = sub nuw i64 %3, %2                      ; 3 uses
  %i.bc = icmp eq i64 %.sroa.0.0.i.i, %i.bb
  %i.bd = sub i64 %6, %5                          ; 3 uses
  %i.be = icmp eq i64 %i.bb, %i.bd
  %or.cond100.i = and i1 %i.be, %i.bc
  br i1 %or.cond100.i, label %bb.bi, label %bb.l

bb.l:                                             ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !493
  %i.bf = sub i64 %3, %.sroa.0.0.i113.i           ; 2 uses
  %i.bg = sub i64 %6, %.sroa.0.0.i113.i           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !494)
  %.sroa.013.0.i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.bf, i64 %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !497
  store ptr null, ptr %i.d, align 8, !noalias !497
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.bh, align 8, !noalias !497
  %.not45.not.i.i = icmp ugt i64 %i.bg, %i.aj
  br i1 %.not45.not.i.i, label %.lr.ph47.i.i, label %select.unfold._crit_edge.i.i

.lr.ph47.i.i:                                     ; preds = %bb.l
  %spec.select.i.i = sub nuw i64 %i.bg, %i.aj     ; 2 uses
  %.not3443.not.i.i = icmp ugt i64 %i.bf, %i.ai
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br i1 %.not3443.not.i.i, label %.lr.ph47.split.i.i, label %.lr.ph47.split.us.i.i

.lr.ph47.split.us.i.i:                            ; preds = %.lr.ph47.i.i, %.preheader.us.i.i
  %.sroa.018.146.us.i.i = phi i64 [ %i.bl, %.preheader.us.i.i ], [ %spec.select.i.i, %.lr.ph47.i.i ]
  %i.bl = add i64 %.sroa.018.146.us.i.i, -1       ; 2 uses
  %i.bm = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.m unwind label %.loopexit.split-lp.split.us.i.i, !noalias !500

bb.m:                                             ; preds = %.lr.ph47.split.us.i.i
  br i1 %i.bm, label %.split.us.i.i, label %.preheader.us.i.i

.preheader.us.i.i:                                ; preds = %bb.m
  %.not.us.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.us.i.i, label %select.unfold._crit_edge.i.i, label %.lr.ph47.split.us.i.i

.loopexit.split-lp.split.us.i.i:                  ; preds = %.lr.ph47.split.us.i.i
  %lpad.loopexit.split-lp.us.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.select.unfold.loopexit_crit_edge.i.i:            ; preds = %bb.x
  %.not.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not.i.i, label %select.unfold._crit_edge.i.i, label %.lr.ph47.split.i.i

select.unfold._crit_edge.i.i:                     ; preds = %.preheader.us.i.i, %.select.unfold.loopexit_crit_edge.i.i, %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !501
  store i64 1, ptr %i.i, align 8, !alias.scope !494, !noalias !501
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i

.lr.ph47.split.i.i:                               ; preds = %.lr.ph47.i.i, %.select.unfold.loopexit_crit_edge.i.i
  %.sroa.018.146.i.i = phi i64 [ %i.bo, %.select.unfold.loopexit_crit_edge.i.i ], [ %spec.select.i.i, %.lr.ph47.i.i ] ; 3 uses
  %i.bo = add i64 %.sroa.018.146.i.i, -1          ; 5 uses
  %i.bp = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %7, i32 noundef range(i32 -1, 1000000000) %8)
          to label %bb.n unwind label %.loopexit.split-lp.split.i.i, !noalias !494

.loopexit.i.i:                                    ; preds = %bb.w, %bb.s, %bb.r, %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i, %bb.p, %bb.o
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.split.i.i:                     ; preds = %.lr.ph47.split.i.i
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.split.i.i, %.loopexit.i.i, %.loopexit.split-lp.split.us.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.split.i.i ], [ %lpad.loopexit.split-lp.us.i.i, %.loopexit.split-lp.split.us.i.i ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.y, !noalias !494

bb.n:                                             ; preds = %.lr.ph47.split.i.i
  br i1 %i.bp, label %.split.us.i.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.n
  %i.bq = add i64 %i.bo, %i.aj
  br label %bb.o

.split.us.i.i:                                    ; preds = %bb.m, %bb.n
  store i64 0, ptr %i.i, align 8, !alias.scope !494, !noalias !501
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d), !noalias !494
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i

bb.o:                                             ; preds = %bb.x, %.preheader.i.i
  %.sroa.026.044.i.i = phi i64 [ %.sroa.013.0.i.i, %.preheader.i.i ], [ %i.br, %bb.x ] ; 3 uses
  %i.br = add i64 %.sroa.026.044.i.i, -1          ; 5 uses
  %i.bs = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %4, i64 noundef %i.bq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15)
          to label %bb.p unwind label %.loopexit.i.i, !noalias !494 ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bt = add i64 %i.br, %i.ai
  %i.bu = invoke { ptr, i64 } @_RNvXs0_NtCsiqiOkcJdymw_7similar4textINtB5_12TextDiffSideeEINtNtNtCs4NRVxsYgnAr_4core3ops5index5IndexjE5indexCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, i64 noundef %i.bt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16)
          to label %bb.q unwind label %.loopexit.i.i, !noalias !494 ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bv = extractvalue { ptr, i64 } %i.bs, 1      ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bu, 1
  %i.bx = icmp eq i64 %i.bv, %i.bw
  br i1 %i.bx, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i: ; preds = %bb.q
  %i.by = extractvalue { ptr, i64 } %i.bu, 0
  %i.bz = extractvalue { ptr, i64 } %i.bs, 0
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull readonly %i.bz, ptr nonnull readonly %i.by, i64 %i.bv), !alias.scope !502, !noalias !494
  %i.ca = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ca, label %bb.r, label %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i

_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i: ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !497
  store i64 %.sroa.018.146.i.i, ptr %i.b, align 8, !noalias !497
  store i64 %i.br, ptr %i.bi, align 8, !noalias !497
  %i.cb = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.s unwind label %.loopexit.i.i, !noalias !494 ; 2 uses

bb.r:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !497
  store i64 %.sroa.018.146.i.i, ptr %i.c, align 8, !noalias !497
  store i64 %.sroa.026.044.i.i, ptr %i.bk, align 8, !noalias !497
  %i.cc = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c)
          to label %bb.v unwind label %.loopexit.i.i, !noalias !494 ; 2 uses

bb.s:                                             ; preds = %_RNvXs_NtNtCs4NRVxsYgnAr_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !497
  store i64 %i.bo, ptr %i.a, align 8, !noalias !497
  store i64 %.sroa.026.044.i.i, ptr %i.bj, align 8, !noalias !497
  %i.cd = invoke noundef align 4 ptr @_RINvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB6_8BTreeMapTjjEmE3getB17_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
          to label %bb.t unwind label %.loopexit.i.i, !noalias !494 ; 2 uses

bb.t:                                             ; preds = %bb.s
  %.not35.i.i = icmp eq ptr %i.cb, null
  %..i.i = select i1 %.not35.i.i, ptr @17, ptr %i.cb
  %.not36.i.i = icmp eq ptr %i.cd, null
  %.39.i.i = select i1 %.not36.i.i, ptr @17, ptr %i.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !506)
  call void @llvm.experimental.noalias.scope.decl(metadata !509)
  call void @llvm.experimental.noalias.scope.decl(metadata !511)
  call void @llvm.experimental.noalias.scope.decl(metadata !514)
  %i.ce = load i32, ptr %.39.i.i, align 4, !alias.scope !516, !noalias !517, !noundef !4
  %i.cf = load i32, ptr %..i.i, align 4, !alias.scope !518, !noalias !519, !noundef !4
  %i.cg = call i32 @llvm.umax.i32(i32 %i.ce, i32 %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !497
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !497
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %bb.t
  %.sroa.02.0.i.i = phi i32 [ %i.ci, %bb.v ], [ %i.cg, %bb.t ] ; 2 uses
  %.not38.i.i = icmp eq i32 %.sroa.02.0.i.i, 0
  br i1 %.not38.i.i, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.r
  %.not37.i.i = icmp eq ptr %i.cc, null
  %.40.i.i = select i1 %.not37.i.i, ptr @17, ptr %i.cc
  %i.ch = load i32, ptr %.40.i.i, align 4, !noalias !494, !noundef !4
  %i.ci = add i32 %i.ch, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !497
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.cj = invoke { i32, i32 } @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapTjjEmE6insertCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.bo, i64 noundef %i.br, i32 noundef %.sroa.02.0.i.i)
          to label %bb.x unwind label %.loopexit.i.i, !noalias !494 ; 0 uses

bb.x:                                             ; preds = %bb.w, %bb.u
  %.not34.i.i = icmp eq i64 %i.br, 0
  br i1 %.not34.i.i, label %.select.unfold.loopexit_crit_edge.i.i, label %bb.o

bb.y:                                             ; preds = %.loopexit.split-lp.i.i
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27, !noalias !494
  unreachable

common.resume.i:                                  ; preds = %bb.bh, %bb.ai, %bb.z, %.loopexit.split-lp.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %lpad.phi.i.i, %.loopexit.split-lp.i.i ], [ %lpad.thr_comm.split-lp.i, %bb.bh ], [ %i.dp, %bb.ai ], [ %lpad.thr_comm.split-lp.i, %bb.z ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.split.us.i.i, %select.unfold._crit_edge.i.i
  %i.cl = phi i1 [ true, %select.unfold._crit_edge.i.i ], [ false, %.split.us.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !497
  %i.cm = add i64 %.sroa.0.0.i113.i, %.sroa.0.0.i.i ; 3 uses
  %i.cn = sub i64 %i.bd, %i.cm                    ; 5 uses
  %i.co = sub i64 %i.bb, %i.cm                    ; 7 uses
  %.not92.i = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %.not92.i, label %bb.aa, label %bb.ab

bb.z:                                             ; preds = %bb.ac
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.cl, label %bb.bh, label %common.resume.i

bb.aa:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit102.i, %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.cl, label %bb.ad, label %bb.ae

bb.ab:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs10make_tableINtNtB6_4text12TextDiffSideeEBU_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !520, !noalias !523, !noundef !4 ; 3 uses
  %i.cs = load i64, ptr %i.cp, align 8, !range !57, !alias.scope !520, !noalias !523, !noundef !4
end_hunk_1
begin_hunk_2_@_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs13diff_deadlineINtNtB6_4text12TextDiffSideeEBX_INtNtB4_7compact7CompactBX_BX_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter:bb.a
  store i64 %i.dl, ptr %.sroa.4170.0..sroa_idx.i, align 8
  %.sroa.5171.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store i64 1, ptr %.sroa.5171.0..sroa_idx.i, align 8
  %.sroa.6172.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i64 %i.dm, ptr %.sroa.6172.0..sroa_idx.i, align 8
  %i.eo = add i64 %i.eg, 1
  store i64 %i.eo, ptr %i.de, align 8, !alias.scope !545, !noalias !548
  br label %bb.at

bb.at:                                            ; preds = %bb.au, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit103.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit106.i
  %.sroa.016.2.i = phi i64 [ %i.ev, %bb.au ], [ %i.ec, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit106.i ], [ %.sroa.016.0212.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit103.i ] ; 3 uses
  %.sroa.0.2.i = phi i64 [ %i.eu, %bb.au ], [ %.sroa.0.0213.i, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit106.i ], [ %i.dx, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit103.i ] ; 3 uses
  %i.ep = icmp ult i64 %.sroa.016.2.i, %i.cn
  %i.eq = icmp ult i64 %.sroa.0.2.i, %i.co
  %or.cond3.i = select i1 %i.ep, i1 %i.eq, i1 false
  br i1 %or.cond3.i, label %bb.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapTjjEmEECsEhZmuQNqkz_11ruff_linter.exit.i

bb.au:                                            ; preds = %bb.am, %bb.al
  %i.er = load ptr, ptr %i.df, align 8, !alias.scope !534, !noalias !537, !nonnull !4, !noundef !4
  %i.es = getelementptr inbounds nuw [40 x i8], ptr %i.er, i64 %i.dz ; 4 uses
  store i64 0, ptr %i.es, align 8
  %.sroa.4150.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store i64 %i.dl, ptr %.sroa.4150.0..sroa_idx.i, align 8
  %.sroa.5151.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store i64 %i.dm, ptr %.sroa.5151.0..sroa_idx.i, align 8
  %.sroa.6152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.es, i64 24
  store i64 1, ptr %.sroa.6152.0..sroa_idx.i, align 8
  %i.et = add i64 %i.dz, 1
  store i64 %i.et, ptr %i.de, align 8, !alias.scope !534, !noalias !537
  %i.eu = add nuw i64 %.sroa.0.0213.i, 1
  %i.ev = add nuw i64 %.sroa.016.0212.i, 1
  br label %bb.at

bb.av:                                            ; preds = %bb.bh, %bb.ai
  %i.ew = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.aw:                                            ; preds = %bb.af, %bb.ae
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !alias.scope !525, !noalias !528, !nonnull !4, !noundef !4
  %i.ez = getelementptr inbounds nuw [40 x i8], ptr %i.ey, i64 %i.di ; 4 uses
  store i64 1, ptr %i.ez, align 8
  %.sroa.4175.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  store i64 %i.ai, ptr %.sroa.4175.0..sroa_idx.i, align 8
  %.sroa.5176.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  store i64 %i.co, ptr %.sroa.5176.0..sroa_idx.i, align 8
  %.sroa.6177.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ez, i64 24
  store i64 %i.aj, ptr %.sroa.6177.0..sroa_idx.i, align 8
  %i.fa = add i64 %i.di, 1                        ; 3 uses
  store i64 %i.fa, ptr %i.dh, align 8, !alias.scope !525, !noalias !528
  %i.fb = load i64, ptr %i.dg, align 8, !range !57, !alias.scope !550, !noalias !553, !noundef !4
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ax, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit105.i

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dg)
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit105.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit105.i: ; preds = %bb.ax, %bb.aw
  %i.fd = load ptr, ptr %i.ex, align 8, !alias.scope !550, !noalias !553, !nonnull !4, !noundef !4
  %i.fe = getelementptr inbounds nuw [40 x i8], ptr %i.fd, i64 %i.fa ; 4 uses
  store i64 2, ptr %i.fe, align 8
  %.sroa.4190.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  store i64 %i.ai, ptr %.sroa.4190.0..sroa_idx.i, align 8
  %.sroa.5191.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store i64 %i.aj, ptr %.sroa.5191.0..sroa_idx.i, align 8
  %.sroa.6192.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  store i64 %i.cn, ptr %.sroa.6192.0..sroa_idx.i, align 8
  %i.ff = add i64 %i.di, 2
  store i64 %i.ff, ptr %i.dh, align 8, !alias.scope !550, !noalias !553
  br label %bb.ah

bb.ay:                                            ; preds = %bb.ah
  %i.fg = add i64 %.sroa.0.1.i, %i.ai
  %i.fh = sub nuw i64 %i.co, %.sroa.0.1.i
  %i.fi = add i64 %.sroa.016.1.i, %i.aj
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !555, !noalias !558, !noundef !4 ; 3 uses
  %i.fm = load i64, ptr %i.fj, align 8, !range !57, !alias.scope !555, !noalias !558, !noundef !4
  %i.fn = icmp eq i64 %i.fl, %i.fm
  br i1 %i.fn, label %bb.az, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

bb.az:                                            ; preds = %bb.ay
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fj)
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.az, %bb.ay
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.fp = load ptr, ptr %i.fo, align 8, !alias.scope !555, !noalias !558, !nonnull !4, !noundef !4
  %i.fq = getelementptr inbounds nuw [40 x i8], ptr %i.fp, i64 %i.fl ; 4 uses
  store i64 1, ptr %i.fq, align 8
  %.sroa.4165.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  store i64 %i.fg, ptr %.sroa.4165.0..sroa_idx.i, align 8
  %.sroa.5166.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  store i64 %i.fh, ptr %.sroa.5166.0..sroa_idx.i, align 8
  %.sroa.6167.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  store i64 %i.fi, ptr %.sroa.6167.0..sroa_idx.i, align 8
  %i.fr = add i64 %i.fl, 1
  store i64 %i.fr, ptr %i.fk, align 8, !alias.scope !555, !noalias !558
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ah
  %.sroa.0.3.i = phi i64 [ %.sroa.0.1.i, %bb.ah ], [ %i.co, %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6deleteCsEhZmuQNqkz_11ruff_linter.exit.i ]
  %i.fs = icmp ult i64 %.sroa.016.1.i, %i.cn
  br i1 %i.fs, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.ft = add i64 %.sroa.0.3.i, %i.ai
  %i.fu = add i64 %.sroa.016.1.i, %i.aj
  %i.fv = sub nuw i64 %i.cn, %.sroa.016.1.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fy = load i64, ptr %i.fx, align 8, !alias.scope !560, !noalias !563, !noundef !4 ; 3 uses
  %i.fz = load i64, ptr %i.fw, align 8, !range !57, !alias.scope !560, !noalias !563, !noundef !4
  %i.ga = icmp eq i64 %i.fy, %i.fz
  br i1 %i.ga, label %bb.bc, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.fw)
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bc, %bb.bb
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gc = load ptr, ptr %i.gb, align 8, !alias.scope !560, !noalias !563, !nonnull !4, !noundef !4
  %i.gd = getelementptr inbounds nuw [40 x i8], ptr %i.gc, i64 %i.fy ; 4 uses
  store i64 2, ptr %i.gd, align 8
  %.sroa.4185.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  store i64 %i.ft, ptr %.sroa.4185.0..sroa_idx.i, align 8
  %.sroa.5186.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  store i64 %i.fu, ptr %.sroa.5186.0..sroa_idx.i, align 8
  %.sroa.6187.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  store i64 %i.fv, ptr %.sroa.6187.0..sroa_idx.i, align 8
  %i.ge = add i64 %i.fy, 1
  store i64 %i.ge, ptr %i.fx, align 8, !alias.scope !560, !noalias !563
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6insertCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.ba
  %.not93.i = icmp eq i64 %.sroa.0.0.i113.i, 0
  br i1 %.not93.i, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.bd
  call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !493
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.bf:                                            ; preds = %bb.bd
  %i.gf = add i64 %i.co, %i.ai
  %i.gg = add i64 %i.cn, %i.aj
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gj = load i64, ptr %i.gi, align 8, !alias.scope !565, !noalias !568, !noundef !4 ; 3 uses
  %i.gk = load i64, ptr %i.gh, align 8, !range !57, !alias.scope !565, !noalias !568, !noundef !4
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bg, label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gh)
  br label %_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook5equalCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bg, %bb.bf
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gn = load ptr, ptr %i.gm, align 8, !alias.scope !565, !noalias !568, !nonnull !4, !noundef !4
  %i.go = getelementptr inbounds nuw [40 x i8], ptr %i.gn, i64 %i.gj ; 4 uses
  store i64 0, ptr %i.go, align 8
  %.sroa.4145.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store i64 %i.gf, ptr %.sroa.4145.0..sroa_idx.i, align 8
  %.sroa.5146.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store i64 %i.gg, ptr %.sroa.5146.0..sroa_idx.i, align 8
  %.sroa.6147.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  store i64 %.sroa.0.0.i113.i, ptr %.sroa.6147.0..sroa_idx.i, align 8
  %i.gp = add i64 %i.gj, 1
  store i64 %i.gp, ptr %i.gi, align 8, !alias.scope !565, !noalias !568
  br label %bb.be

bb.bh:                                            ; preds = %bb.z
  %i.gq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapTjjEmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gq)
          to label %common.resume.i unwind label %bb.av

bb.bi:                                            ; preds = %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms5utils17common_suffix_lenINtNtB6_4text12TextDiffSideeEB13_ECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !alias.scope !570, !noalias !573, !noundef !4 ; 3 uses
  %i.gu = load i64, ptr %i.gr, align 8, !range !57, !alias.scope !570, !noalias !573, !noundef !4
  %i.gv = icmp eq i64 %i.gt, %i.gu
  br i1 %i.gv, label %bb.bj, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit139.i

bb.bj:                                            ; preds = %bb.bi
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gr), !noalias !575
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit139.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit139.i: ; preds = %bb.bj, %bb.bi
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.gx = load ptr, ptr %i.gw, align 8, !alias.scope !570, !noalias !573, !nonnull !4, !noundef !4
  %i.gy = getelementptr inbounds nuw [40 x i8], ptr %i.gx, i64 %i.gt ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gy, i8 0, i64 24, i1 false)
  store i64 %.sroa.0.0.i.i, ptr %.sroa.6.0..sroa_idx.i, align 8
  %i.gz = add i64 %i.gt, 1
  store i64 %i.gz, ptr %i.gs, align 8, !alias.scope !570, !noalias !573
  tail call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

bb.bk:                                            ; preds = %bb.c
  %i.ha = sub i64 %6, %5
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !576, !noalias !579, !noundef !4 ; 3 uses
  %i.he = load i64, ptr %i.hb, align 8, !range !57, !alias.scope !576, !noalias !579, !noundef !4
  %i.hf = icmp eq i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.bl, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit140.i

bb.bl:                                            ; preds = %bb.bk
  tail call void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hb), !noalias !581
  br label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit140.i

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit140.i: ; preds = %bb.bl, %bb.bk
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.hh = load ptr, ptr %i.hg, align 8, !alias.scope !576, !noalias !579, !nonnull !4, !noundef !4
  %i.hi = getelementptr inbounds nuw [40 x i8], ptr %i.hh, i64 %i.hd ; 4 uses
  store i64 2, ptr %i.hi, align 8
  %.sroa.4180.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  store i64 %2, ptr %.sroa.4180.0..sroa_idx.i, align 8
  %.sroa.5181.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  store i64 %5, ptr %.sroa.5181.0..sroa_idx.i, align 8
  %.sroa.6182.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hi, i64 24
  store i64 %i.ha, ptr %.sroa.6182.0..sroa_idx.i, align 8
  %i.hj = add i64 %i.hd, 1
  store i64 %i.hj, ptr %i.hc, align 8, !alias.scope !576, !noalias !579
  tail call fastcc void @_RNvXs1_NtNtCsiqiOkcJdymw_7similar10algorithms7compactINtB5_7CompactINtNtB9_4text12TextDiffSideeEB13_INtNtB7_7replace7ReplaceNtNtB7_7capture7CaptureEENtNtB7_4hook8DiffHook6finishCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(160) %0)
  br label %_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtNtCsiqiOkcJdymw_7similar10algorithms3lcs18diff_deadline_implINtNtB6_4text12TextDiffSideeEB12_INtNtB4_7compact7CompactB12_B12_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit140.i, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit139.i, %bb.be, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsiqiOkcJdymw_7similar5types6DiffOpE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsiqiOkcJdymw_7similar10algorithms4hunt12hunt_anchorsINtNtB4_5utils12OffsetLookupjEECsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4, i64 %5, i32 noundef range(i32 -1, 1000000000) %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 4 uses
  store i64 0, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 7 uses
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 4 uses
  store i64 0, ptr %i.k, align 8
  %i.l = icmp ult i64 %2, %3
  br i1 %i.l, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8              ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !4
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.t = load i64, ptr %i.s, align 8
  %.fr139 = freeze i64 %i.t
  %i.u = icmp eq i64 %.fr139, 0
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %4, align 8, !nonnull !4   ; 2 uses
  br i1 %i.u, label %.lr.ph133.split.us.preheader, label %.lr.ph133.split

.lr.ph133.split.us.preheader:                     ; preds = %.lr.ph133
  %i.z = sub i64 %2, %i.n
  %umax = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.z)
  br label %.lr.ph133.split.us

.lr.ph133.split.us:                               ; preds = %.lr.ph133.split.us.preheader, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread.us
  %.sroa.026.0131.us = phi i64 [ %i.aa, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread.us ], [ %2, %.lr.ph133.split.us.preheader ] ; 2 uses
  %i.aa = add i64 %.sroa.026.0131.us, 1           ; 2 uses
  %i.ab = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %5, i32 noundef %6)
          to label %bb.b unwind label %.loopexit.split-lp81.loopexit.split.us

bb.b:                                             ; preds = %.lr.ph133.split.us
  br i1 %i.ab, label %.split.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ac = sub i64 %.sroa.026.0131.us, %i.n
  %i.ad = icmp ult i64 %i.ac, %i.p
  br i1 %i.ad, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread.us, label %.split136.us.invoke

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread.us: ; preds = %bb.c
  %exitcond181.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond181.not, label %._crit_edge134, label %.lr.ph133.split.us

.loopexit.split-lp81.loopexit.split.us:           ; preds = %.lr.ph133.split.us
  %lpad.loopexit86.us = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp81

._crit_edge134:                                   ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread.us, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ae = load i64, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %i.af = icmp ult i64 %i.ae, 1152921504606846976
  call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.ae, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.d unwind label %.loopexit.split-lp81.loopexit.split-lp

.lr.ph133.split:                                  ; preds = %.lr.ph133, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread
  %.sroa.026.0131 = phi i64 [ %i.ag, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtCscdodAO9FK5_5alloc3vec3VecjENtNtNtCs2AWtUsOyxgP_3std4hash6random11RandomStateE3getjECsEhZmuQNqkz_11ruff_linter.exit.thread ], [ %2, %.lr.ph133 ] ; 3 uses
  %i.ag = add i64 %.sroa.026.0131, 1              ; 2 uses
  %i.ah = invoke noundef zeroext i1 @_RNvNtCsiqiOkcJdymw_7similar16deadline_support17deadline_exceeded(i64 %5, i32 noundef %6)
          to label %bb.af unwind label %.loopexit.split-lp81.loopexit.split

.loopexit.split-lp81:                             ; preds = %.loopexit80, %.loopexit.split-lp81.loopexit.split, %.loopexit.split-lp81.loopexit.split.us, %.loopexit.split-lp81.loopexit.split-lp, %bb.q
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.q ], [ %lpad.loopexit82, %.loopexit80 ], [ %lpad.loopexit.split-lp87, %.loopexit.split-lp81.loopexit.split-lp ], [ %lpad.loopexit86, %.loopexit.split-lp81.loopexit.split ], [ %lpad.loopexit86.us, %.loopexit.split-lp81.loopexit.split.us ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsiqiOkcJdymw_7similar10algorithms4hunt9CandidateEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.c) #26
          to label %.body unwind label %bb.ae

.loopexit80:                                      ; preds = %bb.ap, %bb.au, %bb.ay
  %lpad.loopexit82 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp81

.loopexit.split-lp81.loopexit.split:              ; preds = %bb.ah, %.lr.ph133.split
  %lpad.loopexit86 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp81

.loopexit.split-lp81.loopexit.split-lp:           ; preds = %.split136.us.invoke, %bb.e, %._crit_edge134
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp81

bb.d:                                             ; preds = %._crit_edge134
  %i.ai = load i64, ptr %i.a, align 8, !range !47, !noundef !4
  %i.aj = trunc nuw i64 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !range !582, !noundef !4 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.e, label %bb.f, !prof !207

bb.e:                                             ; preds = %bb.d
  %i.an = load i64, ptr %i.am, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.al, i64 %i.an) #28
          to label %bb.r unwind label %.loopexit.split-lp81.loopexit.split-lp

bb.f:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.am, align 8, !nonnull !4, !noundef !4
  %i.ap = icmp samesign ule i64 %i.ae, %i.al
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.al, ptr %i.b, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.ao, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.ar, align 8
  %i.as = load i64, ptr %i.i, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.at = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.au = getelementptr [8 x i8], ptr %i.at, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 -8
  %i.aw = load i64, ptr %i.av, align 8, !noundef !4
  br label %bb.m

bb.i:                                             ; preds = %.split.us, %bb.g
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsiqiOkcJdymw_7similar10algorithms4hunt9CandidateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiqiOkcJdymw_7similar10algorithms4hunt9CandidateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsiqiOkcJdymw_7similar10algorithms4hunt9CandidateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsiqiOkcJdymw_7similar10algorithms4hunt9CandidateEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.x

end_hunk_2
