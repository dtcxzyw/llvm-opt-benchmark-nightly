Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.10?download=true
inline.NumInlined: 4756
inline.NumDeleted: 1858
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 57
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1b_EEECsEhZmuQNqkz_11ruff_linter
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1b_EEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBI_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1i_EEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprB1i_EEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTRReRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecjEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecjEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(56) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #47
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #47
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !263)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.d = load i8, ptr %i.c, align 1, !range !25, !alias.scope !264, !noundef !11
  %i.e = and i8 %i.d, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !266, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !266
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.i) #49
          to label %bb.h unwind label %bb.g, !inline_history !267

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !268, !align !20, !noundef !11 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.f, !noalias !269, !inline_history !270

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 72, i64 noundef 8) #47, !noalias !269
  br label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 72, i64 noundef 8) #47, !noalias !269
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !inline_history !267
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #47
  ret void

bb.h:                                             ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #47
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #47
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #47
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !271

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #49
          to label %bb.c unwind label %bb.e, !inline_history !271

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !inline_history !271
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #47
  resume { ptr, i32 } %i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8) #47
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !11
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtB7_6string6StringEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtBG_6string6StringEEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtB7_6string6StringEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtBG_6string6StringEEEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtBG_6string6StringEEEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtBG_6string6StringEEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjINtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatPartNtNtB7_6string6StringEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i32, ptr %i.a, align 8, !alias.scope !274, !noundef !11
  switch i32 %.val2.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
    i32 2, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
    i32 0, label %bb.c
  ], !prof !26

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @88, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @90) #46, !noalias !274
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !274, !noundef !11 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !274, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #47, !noalias !274
  br label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1A_5error10ParseErrorEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !27, !alias.scope !281, !noundef !11
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1p_5error10ParseErrorEEECsEhZmuQNqkz_11ruff_linter.exit
    i64 -1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(104) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1p_5error10ParseErrorEEECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1p_5error10ParseErrorEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1p_5error10ParseErrorEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !288, !noundef !11
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCscdodAO9FK5_5alloc6string6StringEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter7sources4once4OnceNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !312)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.a = load i32, ptr %0, align 8, !range !28, !alias.scope !314, !noundef !11
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option8IntoIterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !316)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.d = load i8, ptr %i.c, align 1, !range !22, !alias.scope !317, !noundef !11 ; 2 uses
  %i.e = icmp eq i8 %i.d, -1
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsEhZmuQNqkz_11ruff_linter.exit.i.i.i, label %bb.c

end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECsEhZmuQNqkz_11ruff_linter:bb.a

.body.i20:                                        ; preds = %bb.x, %bb.v
  %eh.lpad-body.i21 = phi { ptr, i32 } [ %i.aw, %bb.v ], [ %i.bb, %bb.x ]
  %.val1.i22 = load ptr, ptr %i.an, align 8, !alias.scope !425, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i22, i64 noundef 56, i64 noundef 8) #47, !noalias !425, !inline_history !373
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i29, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit38
  %.val.i23 = load ptr, ptr %i.an, align 8, !alias.scope !425, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23, i64 noundef 56, i64 noundef 8) #47, !noalias !425, !inline_history !373
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24
  ret void

bb.z:                                             ; preds = %bb.q, %bb.o, %bb.f, %bb.d
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.c) #49
          to label %bb.d unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.d)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0) #49
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.g ], [ %.pn, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.f
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.i:                                             ; preds = %bb.d, %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.c) #49
          to label %common.resume unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !441, !align !20, !noundef !11 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.e) #50
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.e, !noalias !442, !inline_history !30

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 72, i64 noundef 8) #47, !noalias !442, !inline_history !31
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.d
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 72, i64 noundef 8) #47, !noalias !442, !inline_history !31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i
  ret void

bb.f:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.b = load i8, ptr %i.a, align 1, !range !22, !alias.scope !457, !noundef !11 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.e = and i8 %i.b, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !464, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !464
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit, !prof !10

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %0) #49
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %0)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !476, !nonnull !11, !noundef !11 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !476, !noundef !11 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !476, !inline_history !467

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add nuw i64 %.sroa.0.1.i6, 1             ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.c
  br i1 %i.h, label %.body3, label %.lr.ph7

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %i.c
  br i1 %i.j, label %.body3, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i6 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #49
          to label %bb.c unwind label %bb.e, !noalias !476, !inline_history !467

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !476, !inline_history !467
  unreachable

.body3:                                           ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #47, !noalias !476
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !477, !nonnull !11, !noundef !11
  %i.p = icmp eq ptr %i.o, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.f, !prof !12

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.q = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.q, i64 noundef 8) #47, !noalias !476
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %.body3
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.h

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !478, !nonnull !11, !noundef !11
  %i.t = icmp eq ptr %i.s, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1, label %bb.g, !prof !12

bb.g:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1: ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body3, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !495)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.c = load i8, ptr %i.b, align 1, !range !25, !alias.scope !500, !noundef !11
  %i.d = and i8 %i.c, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.d, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !502, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.e = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !502
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, !prof !10

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.h) #49
          to label %common.resume unwind label %bb.g

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !503, !align !20, !noundef !11 ; 4 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.j) #50
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.f, !noalias !504, !inline_history !30

common.resume:                                    ; preds = %bb.d, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.g, %bb.d ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 72, i64 noundef 8) #47, !noalias !504, !inline_history !31
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 72, i64 noundef 8) #47, !noalias !504, !inline_history !31
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i
  ret void

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast7helpers21RaiseStatementVisitorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB1t_EENtNtNtB1y_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB1W_EEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB1A_EENtNtNtB1F_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB23_EEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB23_EEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtB4_6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB1W_EEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeINtNtCs4NRVxsYgnAr_4core6option6OptionRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEB1A_EENtNtNtB1F_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast7helpers22ReturnStatementVisitorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated10StmtReturnENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !32, !noundef !11
  switch i32 %i.a, label %bb.b [
    i32 0, label %bb.d
    i32 1, label %bb.g
    i32 2, label %bb.j
    i32 3, label %bb.m
    i32 4, label %bb.o
    i32 5, label %bb.s
    i32 6, label %bb.x
    i32 7, label %bb.aa
    i32 8, label %bb.ad
    i32 9, label %bb.ah
    i32 10, label %bb.al
    i32 11, label %bb.ar
    i32 12, label %bb.av
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !698, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.an, !noalias !698, !inline_history !554

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #47, !noalias !698, !inline_history !554
  br label %.body64

.body64:                                          ; preds = %bb.an, %.body69
  %.pn.i3 = phi { ptr, i32 } [ %i.bs, %.body69 ], [ %i.bw, %bb.an ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo) #49
          to label %common.resume145 unwind label %bb.ao, !inline_history !551

bb.ao:                                            ; preds = %.body64, %.body69
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !inline_history !551
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #47, !noalias !698, !inline_history !554
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit61 unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %common.resume145 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit61: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ar:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !699)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !699, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit unwind label %.body75, !noalias !699, !inline_history !557

.body75:                                          ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #47, !noalias !699, !inline_history !557
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca) #49
          to label %common.resume145 unwind label %bb.as, !inline_history !558

bb.as:                                            ; preds = %.body75
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !inline_history !558
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ar
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #47, !noalias !699, !inline_history !557
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit72 unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %common.resume145 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.av:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !700, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ci)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit80 unwind label %bb.aw, !noalias !700, !inline_history !561

bb.aw:                                            ; preds = %bb.av
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit80: ; preds = %bb.av
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 72, i64 noundef 8) #47, !noalias !700, !inline_history !561
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ax:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701)
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !701, !align !20, !noundef !11 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i82 unwind label %bb.az, !noalias !702, !inline_history !566

bb.az:                                            ; preds = %bb.ay
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i82: ; preds = %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 72, i64 noundef 8) #47, !noalias !702, !inline_history !567
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ba:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !703)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !703, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit87 unwind label %bb.bb, !noalias !703, !inline_history !570

bb.bb:                                            ; preds = %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit87: ; preds = %bb.ba
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 72, i64 noundef 8) #47, !noalias !703, !inline_history !570
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bc:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !704)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !704, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cs)
          to label %bb.be unwind label %.body91, !noalias !704, !inline_history !573

.body91:                                          ; preds = %bb.bc
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #47, !noalias !704, !inline_history !573
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load i64, ptr %i.cu, align 8, !alias.scope !705, !noundef !11 ; 2 uses
  %i.cv = icmp eq i64 %.val4.i, 0
  br i1 %i.cv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88, label %bb.bd

bb.bd:                                            ; preds = %.body91
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.cw, align 8, !alias.scope !705, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %.val4.i, i64 noundef 1) #47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88

bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #47, !noalias !704, !inline_history !573
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.cx, align 8, !alias.scope !705, !noundef !11 ; 2 uses
  %i.cy = icmp eq i64 %.val2.i, 0
  br i1 %i.cy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.cz, align 8, !alias.scope !705, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #47
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88: ; preds = %bb.bd, %.body91
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.da) #49
          to label %common.resume145 unwind label %bb.bg, !inline_history !576

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !inline_history !576
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bf, %bb.be
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !706)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !706, !nonnull !11, !noundef !11 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !706, !noundef !11 ; 6 uses
  %cond = icmp eq i64 %i.df, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.bh:                                            ; preds = %.lr.ph
  %i.dg = icmp eq i64 %i.di, %i.df
  br i1 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit, %bb.bh
  %.sroa.0.0.i.i154 = phi i64 [ %i.di, %bb.bh ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.sroa.0.0.i.i154
  %i.di = add nuw i64 %.sroa.0.0.i.i154, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dh)
          to label %bb.bh unwind label %bb.bj, !noalias !706, !inline_history !579

bb.bi:                                            ; preds = %.lr.ph156
  %i.dj = add nuw i64 %.sroa.0.1.i.i155, 1        ; 2 uses
  %i.dk = icmp eq i64 %i.dj, %i.df
  br i1 %i.dk, label %.body.i, label %.lr.ph156

bb.bj:                                            ; preds = %.lr.ph
  %i.dl = landingpad { ptr, i32 }
          cleanup
  %i.dm = icmp eq i64 %i.di, %i.df
  br i1 %i.dm, label %.body.i, label %.lr.ph156

.lr.ph156:                                        ; preds = %bb.bj, %bb.bi
  %.sroa.0.1.i.i155 = phi i64 [ %i.dj, %bb.bi ], [ %i.di, %bb.bj ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.sroa.0.1.i.i155
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dn) #49
          to label %bb.bi unwind label %bb.bk, !noalias !706, !inline_history !579

bb.bk:                                            ; preds = %.lr.ph156
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !706, !inline_history !579
  unreachable

.body.i:                                          ; preds = %bb.bi, %bb.bj
  %i.dp = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dp, i64 noundef 8) #47, !noalias !706, !inline_history !580
  br label %common.resume145

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bh
  %i.dq = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dq, i64 noundef 8) #47, !noalias !706, !inline_history !580
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bl:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !707, !nonnull !11, !noundef !11 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECsEhZmuQNqkz_11ruff_linter.exit unwind label %.body96, !noalias !707, !inline_history !708

.body96:                                          ; preds = %bb.bl
  %i.dt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #47, !noalias !707, !inline_history !708
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.du) #49
          to label %common.resume145 unwind label %bb.bm, !inline_history !709

bb.bm:                                            ; preds = %.body96
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !inline_history !709
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bl
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #47, !noalias !707, !inline_history !708
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.dw), !inline_history !709
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bn:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  %i.dy = load i64, ptr %i.dx, align 8, !range !27, !alias.scope !713, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dy, -2
  br i1 %.not.i.i.i, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !715, !noundef !11 ; 2 uses
  %i.eb = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !715, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #47, !noalias !715
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.br:                                            ; preds = %bb.bo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %common.resume145 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.br
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bu:                                            ; preds = %bb.bn
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %common.resume145 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.bu
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bx:                                            ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !range !13, !alias.scope !716, !noundef !11
  %.not.i.i.i5 = icmp eq i64 %i.ej, -1
  br i1 %.not.i.i.i5, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %common.resume145 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.by
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.cb:                                            ; preds = %bb.bx
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %common.resume145 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.cb
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ce:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  %i.eq = load i64, ptr %i.ep, align 8, !range !13, !alias.scope !720, !noundef !11
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !720, !noundef !11 ; 2 uses
  %i.et = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.et, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !720, !nonnull !11, !noundef !11
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #47, !noalias !720
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ch:                                            ; preds = %bb.ce
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ev = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNvMs_NtCsEhZmuQNqkz_11ruff_linter7locatorNtB4_7Locator13full_line_str:bb.a

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsEhZmuQNqkz_11ruff_linter7locatorNtB4_7Locator8line_str(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call { ptr, i64 } @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges8line_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i32 noundef %1)
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCsEhZmuQNqkz_11ruff_linter7locatorNtB4_7Locator9lines_str(ptr nofree noundef nonnull readonly align 8 captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !11
  %i.d = tail call { ptr, i64 } @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges9lines_str(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c, i32 noundef %1, i32 noundef %2)
  ret { ptr, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules18print_empty_stringNtB4_14EmptyStringFix9from_call(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noundef nonnull align 8 %1, i1 noundef zeroext %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  %i.b = alloca [120 x i8], align 8               ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [120 x i8], align 8               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 10 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [72 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [1 x i8], align 1                 ; 6 uses
  %i.r = alloca [64 x i8], align 8                ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.v = load i32, ptr %i.u, align 4, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3231)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.x = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.w)
          to label %.noexc unwind label %bb.h, !inline_history !1

.noexc:                                           ; preds = %bb.a
  %i.y = load <2 x i32>, ptr %i.s, align 8, !noalias !3231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3231
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3232)
  %i.z = invoke noundef nonnull align 8 ptr @_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE13new_uninit_inCsEhZmuQNqkz_11ruff_linter()
          to label %.noexc14 unwind label %bb.h, !inline_history !1 ; 4 uses

.noexc14:                                         ; preds = %.noexc
  %i.aa = load ptr, ptr %1, align 8, !alias.scope !3232, !noalias !3231, !nonnull !11, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3233
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.i, ptr noundef nonnull align 8 %i.aa) #50
          to label %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.b, !noalias !3233, !inline_history !3195

bb.b:                                             ; preds = %.noexc14
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 72, i64 noundef 8) #47, !noalias !3233, !inline_history !3196
  br label %bb.ao

_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.noexc14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.z, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !3233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3233
  store ptr %i.z, ptr %i.j, align 8, !noalias !3231
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !noalias !3234
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.af = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.ae)
          to label %.noexc.i unwind label %bb.f, !noalias !3231, !inline_history !1

.noexc.i:                                         ; preds = %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3234
  %i.ah = invoke { ptr, i64 } @_RNvXse_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
          to label %.noexc4.i unwind label %bb.f, !noalias !3231, !inline_history !1 ; 2 uses

.noexc4.i:                                        ; preds = %.noexc.i
  %i.ai = extractvalue { ptr, i64 } %i.ah, 0      ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  store ptr %i.ai, ptr %i.h, align 8, !noalias !3234
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !noalias !3234
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !noalias !3234, !nonnull !11, !noundef !11
  %i.an = icmp eq ptr %i.am, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.an, label %bb.i, label %bb.c, !prof !12

bb.c:                                             ; preds = %.noexc4.i
  %i.ao = invoke noundef i64 @_RINvNvXsr_CsaSrGj5dYoxL_8thin_vecINtB8_7ThinVecpENtNtCs4NRVxsYgnAr_4core5clone5Clone5clone19clone_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEB1P_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.al)
          to label %bb.i unwind label %bb.d, !noalias !3234, !inline_history !1

bb.d:                                             ; preds = %bb.c
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.h) #49
          to label %.body.i unwind label %bb.e, !noalias !3234, !inline_history !1

bb.e:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3234, !inline_history !1
  unreachable

bb.f:                                             ; preds = %.noexc.i, %_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.d
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.f ], [ %i.ap, %bb.d ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.j) #49
          to label %bb.ao unwind label %bb.g, !noalias !3231, !inline_history !1

bb.g:                                             ; preds = %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3231, !inline_history !1
  unreachable

bb.h:                                             ; preds = %.noexc, %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.i:                                             ; preds = %bb.c, %.noexc4.i
  %.sroa.02.0.i.i = phi i64 [ %i.ao, %bb.c ], [ ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), %.noexc4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3234
  %i.au = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  store i32 %i.x, ptr %i.au, align 8, !alias.scope !3231
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store <2 x i32> %i.y, ptr %i.av, align 8, !alias.scope !3231
  store ptr %i.z, ptr %i.r, align 8, !alias.scope !3231
  %i.aw = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 6 uses
  store ptr %i.ai, ptr %i.aw, align 8, !alias.scope !3231
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 5 uses
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3231
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 8 uses
  store i64 %.sroa.02.0.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3231
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store <2 x i32> %i.ad, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3231
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i32 %i.af, ptr %.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3231
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3231
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 2, ptr %i.q, align 1
  %i.ax = invoke noundef zeroext i1 @_RNvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB5_13CommentRanges10intersects(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4, i32 noundef %i.t, i32 noundef %i.v)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.l, %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.k:                                             ; preds = %bb.i
  br i1 %i.ax, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.az = load ptr, ptr %i.aw, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ba = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noundef !11
  %i.bb = getelementptr inbounds nuw [72 x i8], ptr %i.az, i64 %i.ba
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters6cloned6ClonedINtNtB2o_6filter6FilterINtNtNtB2s_5slice4iter4IterB10_ENCNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules18print_empty_stringNtB4d_14EmptyStringFix9from_call0EEE9from_iterB4l_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %i.az, ptr noundef nonnull %i.bb)
          to label %bb.n unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  store i8 1, ptr %i.q, align 1
  br label %bb.l

bb.n:                                             ; preds = %bb.l
  %i.bc = invoke { ptr, i64 } @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE16into_boxed_sliceCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
          to label %bb.o unwind label %bb.j       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bd = extractvalue { ptr, i64 } %i.bc, 0      ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bc, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !3235)
  %i.bf = load ptr, ptr %i.aw, align 8, !alias.scope !3235, !nonnull !11, !noundef !11 ; 4 uses
  %i.bg = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3235, !noundef !11 ; 6 uses
  %cond = icmp eq i64 %i.bg, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit, label %.lr.ph

bb.p:                                             ; preds = %.lr.ph
  %i.bh = icmp eq i64 %i.bj, %i.bg
  br i1 %i.bh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o, %bb.p
  %.sroa.0.0.i.i53 = phi i64 [ %i.bj, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr %i.bf, i64 %.sroa.0.0.i.i53
  %i.bj = add nuw i64 %.sroa.0.0.i.i53, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.bi) #50
          to label %bb.p unwind label %bb.r, !noalias !3235, !inline_history !3201

bb.q:                                             ; preds = %.lr.ph55
  %i.bk = add nuw i64 %.sroa.0.1.i.i54, 1         ; 2 uses
  %i.bl = icmp eq i64 %i.bk, %i.bg
  br i1 %i.bl, label %.body.i15, label %.lr.ph55

bb.r:                                             ; preds = %.lr.ph
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = icmp eq i64 %i.bj, %i.bg
  br i1 %i.bn, label %.body.i15, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.r, %bb.q
  %.sroa.0.1.i.i54 = phi i64 [ %i.bk, %bb.q ], [ %i.bj, %bb.r ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [72 x i8], ptr %i.bf, i64 %.sroa.0.1.i.i54
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.bo) #51
          to label %bb.q unwind label %bb.s, !noalias !3235, !inline_history !3201

bb.s:                                             ; preds = %.lr.ph55
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3235, !inline_history !3201
  unreachable

.body.i15:                                        ; preds = %bb.q, %bb.r
  %i.bq = mul nuw nsw i64 %i.bg, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.bq, i64 noundef 8) #47, !noalias !3235, !inline_history !3236
  store ptr %i.bd, ptr %i.aw, align 8
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  br label %.body21

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.p
  %i.br = mul nuw nsw i64 %i.bg, 72
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef range(i64 1, 0) %i.br, i64 noundef 8) #47, !noalias !3235, !inline_history !3236
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.o, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i
  store ptr %i.bd, ptr %i.aw, align 8
  store i64 %i.be, ptr %.sroa.4.0..sroa_idx.i, align 8
  br i1 %2, label %bb.af, label %bb.t

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit
  %i.bs = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3237, !nonnull !11, !noundef !11 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %i.bu = load i64, ptr %i.bs, align 8, !noundef !11
  %i.bv = getelementptr inbounds nuw [120 x i8], ptr %i.bt, i64 %i.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3238
  store i64 ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), ptr %i.g, align 8, !noalias !3238
  call void @llvm.experimental.noalias.scope.decl(metadata !3239)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3238
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3240
  store ptr %i.bt, ptr %i.f, align 8, !alias.scope !3241, !noalias !3239
  %.sroa.4.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx26, align 8, !alias.scope !3241, !noalias !3239
  %.sroa.5.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx27, align 8, !alias.scope !3241, !noalias !3239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3240
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENCNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules18print_empty_stringNtB2I_14EmptyStringFix9from_calls_0EENtNtNtB8_6traits8iterator8Iterator9size_hintB2Q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc.i20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3238

.noexc.i20:                                       ; preds = %bb.t
  %i.bw = load i64, ptr %i.e, align 8, !noalias !3240, !noundef !11 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3240
  %.not.i.i = icmp eq i64 %i.bw, 0
  br i1 %.not.i.i, label %.loopexit14.i, label %bb.u

.loopexit14.i:                                    ; preds = %bb.w, %.noexc7.i, %.noexc.i20
  %.sroa.0.0.copyload20.i = phi i64 [ ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), %.noexc.i20 ], [ %i.bz, %.noexc7.i ], [ %i.bz, %bb.w ]
  %.pre.i.i = phi ptr [ @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER, %.noexc.i20 ], [ %.val.i.i, %.noexc7.i ], [ %.val.i.i, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !3240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3240
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENCNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules18print_empty_stringNtB2I_14EmptyStringFix9from_calls_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc5.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3238

.noexc5.i:                                        ; preds = %.loopexit14.i
  %i.bx = load i32, ptr %i.b, align 8, !range !28, !noalias !3240, !noundef !11
  %.not710.i.i = icmp eq i32 %i.bx, -1
  br i1 %.not710.i.i, label %bb.ac, label %.lr.ph.i.i

bb.u:                                             ; preds = %.noexc.i20
  invoke void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef %i.bw)
          to label %.noexc6.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3238

.noexc6.i:                                        ; preds = %bb.u
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !3239, !noalias !3238 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16
  %i.bz = ptrtoint ptr %.val.i.i to i64           ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.noexc6.i
  %.sroa.0.09.i.i = phi i64 [ %i.bw, %.noexc6.i ], [ %i.cb, %bb.w ]
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENCNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules18print_empty_stringNtB2I_14EmptyStringFix9from_calls_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.noexc7.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3238

.noexc7.i:                                        ; preds = %bb.v
  %i.ca = load i32, ptr %i.d, align 8, !range !28, !noalias !3240, !noundef !11
  %.not6.i.i = icmp eq i32 %i.ca, -1
  br i1 %.not6.i.i, label %.loopexit14.i, label %bb.w

bb.w:                                             ; preds = %.noexc7.i
  %i.cb = add i64 %.sroa.0.09.i.i, -1             ; 2 uses
  %i.cc = load i64, ptr %.val.i.i, align 8, !noalias !3242, !noundef !11 ; 2 uses
  %i.cd = getelementptr inbounds nuw [120 x i8], ptr %i.by, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cd, ptr noundef nonnull align 8 dereferenceable(120) %i.d, i64 120, i1 false), !noalias !3240
  %i.ce = add i64 %i.cc, 1
  store i64 %i.ce, ptr %.val.i.i, align 8, !noalias !3242
  %i.cf = icmp eq i64 %i.cb, 0
  br i1 %i.cf, label %.loopexit14.i, label %bb.v

.lr.ph.i.i:                                       ; preds = %.noexc5.i, %.noexc8.i
  %i.cg = phi ptr [ %i.cn, %.noexc8.i ], [ %.pre.i.i, %.noexc5.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !3240
  call void @llvm.experimental.noalias.scope.decl(metadata !3243)
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !3244, !noundef !11 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !3244, !noundef !11
  %i.ck = icmp eq i64 %i.ch, %i.cj
  br i1 %i.ck, label %bb.x, label %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.x:                                             ; preds = %.lr.ph.i.i
  invoke void @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE7reserveCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 1)
          to label %._crit_edge.i.i.i unwind label %bb.y, !noalias !3245

._crit_edge.i.i.i:                                ; preds = %bb.x
  %.val.pre.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !3246, !noalias !3238 ; 2 uses
  %.pre.i.i.i = load i64, ptr %.val.pre.i.i.i, align 8, !noalias !3247
  br label %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i

bb.y:                                             ; preds = %bb.x
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(120) %i.a) #49
          to label %.body.i18 unwind label %bb.z, !noalias !3248

bb.z:                                             ; preds = %bb.y
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3248
  unreachable

_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %._crit_edge.i.i.i, %.lr.ph.i.i
  %i.cn = phi ptr [ %.val.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.cg, %.lr.ph.i.i ] ; 3 uses
  %i.co = phi i64 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.ch, %.lr.ph.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cq = getelementptr inbounds nuw [120 x i8], ptr %i.cp, i64 %i.co
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.cq, ptr noundef nonnull align 8 dereferenceable(120) %i.b, i64 120, i1 false), !noalias !3240
  %i.cr = add i64 %i.co, 1
  store i64 %i.cr, ptr %i.cn, align 8, !noalias !3247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3240
  invoke void @_RNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordENCNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules18print_empty_stringNtB2I_14EmptyStringFix9from_calls_0EENtNtNtB8_6traits8iterator8Iterator4nextB2Q_(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc8.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !3238

.noexc8.i:                                        ; preds = %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.cs = load i32, ptr %i.b, align 8, !range !28, !noalias !3240, !noundef !11
  %.not7.i.i = icmp eq i32 %i.cs, -1
  br i1 %.not7.i.i, label %.loopexit10.loopexit.i, label %.lr.ph.i.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE4pushCsEhZmuQNqkz_11ruff_linter.exit.i.i, %bb.v, %bb.u, %.loopexit14.i, %bb.t
  %lpad.loopexit.split-lp57 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i18

.body.i18:                                        ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.y
  %eh.lpad-body.i19 = phi { ptr, i32 } [ %i.cl, %bb.y ], [ %lpad.loopexit.split-lp57, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ct = load ptr, ptr %i.g, align 8, !alias.scope !3249, !noalias !3238, !nonnull !11, !noundef !11
  %i.cu = icmp eq ptr %i.ct, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.cu, label %.body21, label %bb.aa, !prof !12

bb.aa:                                            ; preds = %.body.i18
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.body21 unwind label %bb.ab, !noalias !3238

.loopexit10.loopexit.i:                           ; preds = %.noexc8.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.g, align 8, !noalias !3238
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3238
  unreachable

bb.ac:                                            ; preds = %.loopexit10.loopexit.i, %.noexc5.i
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.pre.i, %.loopexit10.loopexit.i ], [ %.sroa.0.0.copyload20.i, %.noexc5.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3240
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3238
  %i.cw = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3250, !nonnull !11, !noundef !11
  %i.cx = icmp eq ptr %i.cw, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.cx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.ad, !prof !12

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.5.0..sroa_idx.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = landingpad { ptr, i32 }
end_hunk_3
begin_hunk_4_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_errmsg5rules19string_in_exception19string_in_exception:bb.a
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h) #49
          to label %bb.u unwind label %bb.t

bb.af:                                            ; preds = %bb.ad
  %i.de = extractvalue { ptr, i64 } %i.dc, 0      ; 2 uses
  %.not20 = icmp eq ptr %i.de, null
  br i1 %.not20, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.df = extractvalue { ptr, i64 } %i.dc, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !11, !align !20, !noundef !11
  %i.di = load ptr, ptr %i.cv, align 8, !nonnull !11, !align !20, !noundef !11
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_errmsg5rules19string_in_exception12generate_fix(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.g, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.de, i64 noundef %i.df, ptr noundef nonnull align 8 %i.dh, ptr noundef nonnull align 8 %i.di, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.k)
          to label %bb.ah unwind label %bb.ae

bb.ah:                                            ; preds = %bb.ag
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.g)
          to label %bb.ai unwind label %bb.ae

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.af, %bb.ai
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.c

bb.ak:                                            ; preds = %bb.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dk = tail call noundef i64 @_RNvMs15_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_17BytesLiteralValue3len(ptr noundef nonnull align 8 %i.dj)
  %i.dl = load ptr, ptr %i.al, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 40
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !11, !align !20, !noundef !11
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 2376
  %i.dp = load i64, ptr %i.do, align 8, !noundef !11
  %.not17 = icmp ult i64 %i.dk, %i.dp
  br i1 %.not17, label %bb.c, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.dq = tail call fastcc { i32, i32 } @_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %i.p) ; 2 uses
  %i.dr = extractvalue { i32, i32 } %i.dq, 0
  %i.ds = extractvalue { i32, i32 } %i.dq, 1
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules13flake8_errmsg5rules19string_in_exception20RawStringInExceptionEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.f, ptr noundef nonnull align 8 %i.dl, i32 noundef %i.dr, i32 noundef %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 1000 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !11, !noundef !11
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !noundef !11
  %i.dy = tail call fastcc { i32, i32 } @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %1)
  %i.dz = extractvalue { i32, i32 } %i.dy, 0
  %i.ea = invoke { ptr, i64 } @_RNvNtCskVZVgnzM3Oh_18ruff_python_trivia10whitespace21indentation_at_offset(i32 noundef %i.dz, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dv, i64 noundef %i.dx)
          to label %bb.an unwind label %bb.am     ; 2 uses

bb.am:                                            ; preds = %bb.ap, %bb.ao, %bb.al
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f) #49
          to label %bb.u unwind label %bb.t

bb.an:                                            ; preds = %bb.al
  %i.ec = extractvalue { ptr, i64 } %i.ea, 0      ; 2 uses
  %.not18 = icmp eq ptr %i.ec, null
  br i1 %.not18, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ed = extractvalue { ptr, i64 } %i.ea, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ef = load ptr, ptr %i.ee, align 8, !nonnull !11, !align !20, !noundef !11
  %i.eg = load ptr, ptr %i.dt, align 8, !nonnull !11, !align !20, !noundef !11
  invoke fastcc void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules13flake8_errmsg5rules19string_in_exception12generate_fix(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.p, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ed, ptr noundef nonnull align 8 %i.ef, ptr noundef nonnull align 8 %i.eg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.k)
          to label %bb.ap unwind label %bb.am

bb.ap:                                            ; preds = %bb.ao
  invoke fastcc void @_RNvMsb_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_15DiagnosticGuard7set_fix(ptr noalias noundef align 8 dereferenceable(48) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %bb.aq unwind label %bb.am

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.an, %bb.aq
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules14flake8_bugbear5rules12assert_false12assert_false(ptr noundef nonnull align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2, ptr noundef align 8 %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [72 x i8], align 8                ; 15 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = alloca [56 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = load i32, ptr %2, align 8, !range !32, !noundef !11
  %i.m = icmp eq i32 %i.l, 22
  br i1 %i.m, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i8, ptr %i.n, align 8, !range !39, !noundef !11
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.av, label %_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit

_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 12
  %.sroa.0.0.i = load i32, ptr %i.q, align 8, !noundef !11
  %.sroa.34.0.i = load i32, ptr %i.r, align 4, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !align !20, !noundef !11
  call void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules14flake8_bugbear5rules12assert_false11AssertFalseEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.k, ptr noundef nonnull align 8 %i.t, i32 noundef %.sroa.0.0.i, i32 noundef %.sroa.34.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %0)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.ap, %.body, %bb.d
  %.pn3 = phi { ptr, i32 } [ %i.u, %bb.d ], [ %i.bn, %bb.ap ], [ %eh.lpad-body, %.body ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.k) #49
          to label %bb.ax unwind label %bb.aw

bb.d:                                             ; preds = %bb.at, %_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.e:                                             ; preds = %_RNvXs12_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3758)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3758
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 8028075845441778497 to ptr), ptr %i.v, align 8, !noalias !3758
  %.sroa.09.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 -3602753878909368978, ptr %.sroa.09.sroa.4.0..sroa_idx.i, align 8, !noalias !3758
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 0, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !3758
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 0, ptr %.sroa.511.0..sroa_idx.i, align 4, !noalias !3758
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 -2, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !3758
  %.sroa.713.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  store i8 0, ptr %.sroa.713.0..sroa_idx.i, align 4, !noalias !3758
  store i32 28, ptr %i.c, align 8, !noalias !3758
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !3759
  %i.w = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 9) 8) #47, !noalias !3759 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.f, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit27.i, !prof !49

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc.i unwind label %bb.g, !noalias !3758

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c) #49
          to label %.body unwind label %bb.h, !noalias !3758

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3758
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit27.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !3758
  store ptr %i.w, ptr %i.d, align 8, !noalias !3758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3758
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxANtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj0_E3newCsEhZmuQNqkz_11ruff_linter.exit.i, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit27.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3758
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3758
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noundef nonnull align 8 %3)
          to label %bb.k unwind label %bb.j, !noalias !3758

.body.i:                                          ; preds = %bb.m, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.ad, %bb.m ], [ %i.aa, %bb.j ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.d) #49
          to label %.body unwind label %bb.s, !noalias !3758

bb.j:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.b, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !3758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3758
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !3760
  %i.ab = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 9) 8) #47, !noalias !3760 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %bb.o, !prof !49

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc28.i unwind label %bb.m, !noalias !3758

.noexc28.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b)
          to label %.body.i unwind label %bb.n, !noalias !3758

bb.n:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3758
  unreachable

bb.o:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !3758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3758
  br label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxANtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj0_E3newCsEhZmuQNqkz_11ruff_linter.exit.i

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxANtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj0_E3newCsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.o, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit27.i
  %i.af = phi i64 [ 1, %bb.o ], [ 0, %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit27.i ]
  %i.ag = phi ptr [ %i.ab, %bb.o ], [ inttoptr (i64 8 to ptr), %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit27.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3758
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.w, ptr %i.ah, align 8, !noalias !3758
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.ag, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !3758
  %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.af, ptr %.sroa.44.sroa.4.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !noalias !3758
  %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), ptr %.sroa.44.sroa.5.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !noalias !3758
  %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i32 0, ptr %.sroa.44.sroa.6.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !noalias !3758
  %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  store i32 0, ptr %.sroa.44.sroa.7.0..sroa.44.0..sroa_idx.sroa_idx.i, align 4, !noalias !3758
  %.sroa.44.sroa.8.0..sroa.44.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i32 -2, ptr %.sroa.44.sroa.8.0..sroa.44.0..sroa_idx.sroa_idx.i, align 8, !noalias !3758
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 0, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !3758
  %.sroa.66.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  store i32 0, ptr %.sroa.66.0..sroa_idx.i, align 4, !noalias !3758
  %.sroa.77.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i32 -2, ptr %.sroa.77.0..sroa_idx.i, align 8, !noalias !3758
  store i32 16, ptr %i.e, align 8, !noalias !3758
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !3761
  %i.ai = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 9) 8) #47, !noalias !3761 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.p, label %bb.t, !prof !49

bb.p:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxANtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj0_E3newCsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc31.i unwind label %bb.q, !noalias !3758

.noexc31.i:                                       ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #49
          to label %.body unwind label %bb.r, !noalias !3758

bb.r:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3758
  unreachable

bb.s:                                             ; preds = %.body.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !3758
  unreachable

.body:                                            ; preds = %bb.g, %.body.i, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %.body.i ], [ %i.ak, %bb.q ], [ %i.y, %bb.g ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsjSXNr8pNfhj_19ruff_python_codegen9generator9GeneratorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(56) %i.g) #49
          to label %bb.c unwind label %bb.aw

bb.t:                                             ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxANtNtCskLngH8kgpZI_15ruff_python_ast9generated4Exprj0_E3newCsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ai, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false), !noalias !3758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3758
  store i32 0, ptr %i.f, align 8, !alias.scope !3758
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !alias.scope !3758
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ai, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3758
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr null, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3758
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 -2, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3758
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 84
  store i8 14, ptr %i.an, align 4, !alias.scope !3758
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4stmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, ptr noundef nonnull align 8 %i.f)
          to label %bb.u unwind label %bb.ap

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ap = load i8, ptr %i.ao, align 4, !range !33, !noundef !11 ; 2 uses
  %i.aq = icmp samesign ugt i8 %i.ap, 1
  %i.ar = zext nneg i8 %i.ap to i64
  %i.as = add nsw i64 %i.ar, -1
  %i.at = select i1 %i.aq, i64 %i.as, i64 0
  switch i64 %i.at, label %bb.v [
    i64 0, label %bb.w
    i64 1, label %bb.aq
    i64 2, label %bb.aq
    i64 3, label %bb.x
    i64 4, label %bb.y
    i64 5, label %bb.z
    i64 6, label %bb.aa
    i64 7, label %bb.ab
    i64 8, label %bb.ac
    i64 9, label %bb.ad
    i64 10, label %bb.ae
    i64 11, label %bb.af
    i64 12, label %bb.ag
    i64 13, label %bb.aq
    i64 14, label %bb.ah
    i64 15, label %bb.ai
    i64 16, label %bb.aj
    i64 17, label %bb.ak
    i64 18, label %bb.al
    i64 19, label %bb.am
    i64 20, label %bb.an
    i64 21, label %bb.aq
    i64 22, label %bb.aq
    i64 23, label %bb.aq
    i64 24, label %bb.ao
  ]

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.aq

bb.x:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.aq

bb.y:                                             ; preds = %bb.u
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.aq

bb.z:                                             ; preds = %bb.u
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.aq

bb.aa:                                            ; preds = %bb.u
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.aq

bb.ab:                                            ; preds = %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.aq

bb.ac:                                            ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.aq

bb.ad:                                            ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.aq

bb.ae:                                            ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.aq

bb.af:                                            ; preds = %bb.u
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.aq

bb.ag:                                            ; preds = %bb.u
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.aq

end_hunk_4
begin_hunk_5_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool13needless_bool:bb.a
  br i1 %i.bs, label %bb.o, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 100
  %i.bu = load i8, ptr %i.bt, align 4, !range !33, !noundef !11
  %i.bv = icmp eq i8 %i.bu, 3
  br i1 %i.bv, label %bb.p, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread

bb.p:                                             ; preds = %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !align !20, !noundef !11 ; 2 uses
  %.not.i142 = icmp eq ptr %i.bx, null
  br i1 %.not.i142, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = load i32, ptr %i.bx, align 8, !range !32, !noundef !11
  %i.bz = icmp eq i32 %i.by, 22
  br i1 %i.bz, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144: ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cb = tail call noundef align 8 ptr @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel24current_statement_parent(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.ca) ; 2 uses
  %.not106 = icmp eq ptr %i.cb, null
  br i1 %.not106, label %bb.t, label %bb.r

bb.r:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144
  call void @_RINvNtCskLngH8kgpZI_15ruff_python_ast9traversal5suiteRNtNtB4_9generated4StmtBP_ECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.cb)
  %i.cc = load ptr, ptr %i.x, align 8, !noundef !11 ; 2 uses
  %.not107 = icmp eq ptr %i.cc, null
  br i1 %.not107, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !noundef !11
  %i.cf = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !11
  %i.ch = add i64 %i.cg, 1                        ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.ce
  br i1 %i.ci, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144, %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread

bb.u:                                             ; preds = %bb.s
  %i.cj = getelementptr inbounds nuw [88 x i8], ptr %i.cc, i64 %i.ch ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 84
  %i.cl = load i8, ptr %i.ck, align 4, !range !33, !noundef !11
  %i.cm = icmp eq i8 %i.cl, 3
  br i1 %i.cm, label %bb.v, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread

bb.v:                                             ; preds = %bb.u
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !nonnull !11, !noundef !11
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cq = load i32, ptr %i.cp, align 8, !noundef !11 ; 2 uses
  %i.cr = call fastcc { i32, i32 } @_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range(ptr noundef nonnull align 8 %i.cj)
  %i.cs = extractvalue { i32, i32 } %i.cr, 1      ; 2 uses
  %.not108 = icmp ugt i32 %i.cq, %i.cs
  br i1 %.not108, label %bb.w, label %bb.e, !prof !10

bb.w:                                             ; preds = %bb.v
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #46
  unreachable

bb.x:                                             ; preds = %bb.m
  %i.ct = getelementptr i8, ptr %i.bn, i64 -192   ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !range !28, !noundef !11
  %.not110 = icmp eq i32 %i.cu, -1
  br i1 %.not110, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit144.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr i8, ptr %i.bn, i64 -112
  %i.cw = load i32, ptr %i.cv, align 8, !noundef !11 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.bn, i64 -12
  %i.cy = load i32, ptr %i.cx, align 4, !noundef !11 ; 2 uses
  %.not111 = icmp ugt i32 %i.cw, %i.cy
  br i1 %.not111, label %bb.z, label %bb.aa, !prof !10

bb.z:                                             ; preds = %bb.y
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 38, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #46
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.cz = getelementptr i8, ptr %i.bn, i64 -24
  %i.da = load ptr, ptr %i.cz, align 8, !alias.scope !3847, !nonnull !11, !noundef !11 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load i64, ptr %i.da, align 8, !noundef !11
  %i.dd = getelementptr i8, ptr %i.bn, i64 -120
  br label %bb.e

bb.ab:                                            ; preds = %bb.l
  %i.de = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.df = load i8, ptr %i.de, align 8, !range !39, !noundef !11
  %i.dg = trunc nuw i8 %.sroa.0.0.i to i1
  %i.dh = trunc nuw i8 %i.df to i1                ; 2 uses
  br i1 %i.dg, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %i.dh, label %bb.ae, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit140.thread

bb.ad:                                            ; preds = %bb.ab
  br i1 %i.dh, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit140.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.026.0 = phi i8 [ 0, %bb.ad ], [ 1, %bb.ac ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.dj = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing20is_sys_version_block(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.di)
  br i1 %i.dj, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit140.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dk = call noundef zeroext i1 @_RNvNtNtCs7bpTdHNYxeX_20ruff_python_semantic7analyze6typing22is_type_checking_block(ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.di)
  br i1 %i.dk, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool23is_one_line_return_bool.exit140.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.dm = load ptr, ptr %i.dl, align 8, !nonnull !11, !align !20, !noundef !11
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.dp = load ptr, ptr %i.do, align 8, !nonnull !11, !align !20, !noundef !11 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !11, !noundef !11
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !11
  %i.dt = call noundef zeroext i1 @_RINvMs1_NtCskVZVgnzM3Oh_18ruff_python_trivia14comment_rangesNtB6_13CommentRanges12has_commentsNtNtCs2MoD74u7shA_14ruff_text_size5range9TextRangeECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dn, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dq, i64 noundef %i.ds)
  br i1 %i.dt, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = trunc nuw i8 %.sroa.026.0 to i1
  %i.dv = load i32, ptr %.sroa.08.0, align 8, !range !32, !noundef !11 ; 2 uses
  br i1 %i.du, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dw = icmp eq i32 %i.dv, 15
  br i1 %i.dw, label %bb.ak, label %bb.al

bb.aj:                                            ; preds = %bb.ah
  switch i32 %i.dv, label %bb.au [
    i32 3, label %bb.ax
    i32 15, label %bb.ay
  ]

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.q, ptr noundef nonnull align 8 %.sroa.08.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bk

bb.al:                                            ; preds = %bb.ai
  %i.dx = call noundef zeroext i1 @_RNvMs_NtCs7bpTdHNYxeX_20ruff_python_semantic5modelNtB4_13SemanticModel19has_builtin_binding(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(472) %i.di, ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 4)
  br i1 %i.dx, label %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit, label %.thread

_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit: ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr inttoptr (i64 1819242338 to ptr), ptr %i.dy, align 8
  %.sroa.044.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 -4323455642275676160, ptr %.sroa.044.sroa.4.0..sroa_idx, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 0, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 0, ptr %.sroa.546.0..sroa_idx, align 4
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store i32 -2, ptr %.sroa.647.0..sroa_idx, align 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  store i8 0, ptr %.sroa.748.0..sroa_idx, align 4
  store i32 28, ptr %i.o, align 8
  %i.dz = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 72)
          to label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit135 unwind label %bb.am, !noalias !3848 ; 3 uses

bb.am:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.o) #49
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %bb.av, %.body129, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit, %bb.bm, %.body132, %bb.am
  %common.resume.op = phi { ptr, i32 } [ %.pn125, %.body132 ], [ %i.ea, %bb.am ], [ %.pn, %.body129 ], [ %.pn116, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit ], [ %.pn125, %bb.bm ], [ %i.ei, %bb.av ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit135: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str8char_strNtB2_7CharStr15from_static_str.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dz, ptr noundef nonnull align 8 dereferenceable(72) %i.o, i64 72, i1 false)
  store ptr %i.dz, ptr %i.p, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.m, ptr noundef nonnull align 8 %.sroa.08.0)
          to label %bb.ap unwind label %bb.ao

.body129:                                         ; preds = %bb.aq, %bb.ao
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.aq ], [ %i.ec, %bb.ao ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.p) #49
          to label %common.resume unwind label %bb.at

bb.ao:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit135
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body129

bb.ap:                                            ; preds = %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.n, ptr noundef nonnull align 8 dereferenceable(72) %i.m, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ed = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 72)
          to label %bb.as unwind label %bb.aq, !noalias !3849 ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  %i.ee = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.n)
          to label %.body129 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ef = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.as:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ed, ptr noundef nonnull align 8 dereferenceable(72) %i.n, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  store i32 16, ptr %i.w, align 8
  %.sroa.466.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.dz, ptr %.sroa.466.0..sroa_idx, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.ed, ptr %.sroa.567.0..sroa_idx, align 8
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 1, ptr %.sroa.668.0..sroa_idx, align 8
  %.sroa.769.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), ptr %.sroa.769.0..sroa_idx, align 8
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i32 0, ptr %.sroa.870.0..sroa_idx, align 8
  %.sroa.971.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 44
  store i32 0, ptr %.sroa.971.0..sroa_idx, align 4
  %.sroa.1072.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i32 -2, ptr %.sroa.1072.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 60
  store i32 0, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i32 -2, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.bk

bb.at:                                            ; preds = %bb.bu, %bb.bm, %bb.co, %bb.ch, %.body, %.body129
  %i.eg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.au:                                            ; preds = %bb.ba, %bb.ay, %bb.ax, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.r, ptr noundef nonnull align 8 %.sroa.08.0)
  %i.eh = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 72)
          to label %_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit134 unwind label %bb.av, !noalias !3850 ; 2 uses

bb.av:                                            ; preds = %bb.au
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.r) #49
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RNvMNtCscdodAO9FK5_5alloc5boxedINtB2_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprE3newCsEhZmuQNqkz_11ruff_linter.exit134: ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.eh, ptr noundef nonnull align 8 dereferenceable(72) %i.r, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  store i32 3, ptr %i.w, align 8
  %.sroa.436.sroa.3.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.eh, ptr %.sroa.436.sroa.3.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 0, ptr %.sroa.436.sroa.4.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 0, ptr %.sroa.436.sroa.5.0..sroa.436.0..sroa_idx.sroa_idx, align 4
  %.sroa.436.sroa.6.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i32 -2, ptr %.sroa.436.sroa.6.0..sroa.436.0..sroa_idx.sroa_idx, align 8
  %.sroa.436.sroa.7.0..sroa.436.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  store i8 1, ptr %.sroa.436.sroa.7.0..sroa.436.0..sroa_idx.sroa_idx, align 4
  br label %bb.bk

bb.ax:                                            ; preds = %bb.aj
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 28
  %i.el = load i8, ptr %i.ek, align 4, !range !52, !noundef !11
  %i.em = icmp eq i8 %i.el, 1
  br i1 %i.em, label %bb.az, label %bb.au

bb.ay:                                            ; preds = %bb.aj
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 24
  %i.ep = load i64, ptr %i.eo, align 8, !noundef !11
  %i.eq = icmp eq i64 %i.ep, 1
  br i1 %i.eq, label %bb.ba, label %bb.au

bb.az:                                            ; preds = %bb.ax
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.es = load ptr, ptr %i.er, align 8, !nonnull !11, !noundef !11
  call fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.v, ptr noundef nonnull align 8 %i.es)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull align 8 dereferenceable(72) %i.v, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bk

bb.ba:                                            ; preds = %bb.ay
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.eu = load ptr, ptr %i.et, align 8, !nonnull !11, !noundef !11
  %i.ev = load i8, ptr %i.eu, align 1, !range !53, !noundef !11 ; 2 uses
  %.off = add nsw i8 %i.ev, -2
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %bb.au, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !nonnull !11, !noundef !11
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 40
  %i.ez = load i64, ptr %i.ey, align 8, !noundef !11
  %i.fa = icmp eq i64 %i.ez, 1
  br i1 %i.fa, label %switch.lookup, label %bb.bc, !prof !3851

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @148, ptr noundef nonnull inttoptr (i64 171 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #46
  unreachable

switch.lookup:                                    ; preds = %bb.bb
  %i.fb = zext nneg i8 %i.ev to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules15flake8_simplify5rules13needless_bool13needless_bool, i64 %i.fb
  %switch.load = load i8, ptr %switch.gep, align 1
  %i.fc = call fastcc noundef nonnull ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 1, i64 noundef 1) ; 3 uses
  store i8 %switch.load, ptr %i.fc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.fd = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtCs4NRVxsYgnAr_4core5clone5Clone5cloneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.en)
          to label %bb.be unwind label %bb.bd     ; 2 uses

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body, %bb.bd
  %.pn116 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.fe, %bb.bd ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fc, i64 noundef range(i64 1, 0) 1, i64 noundef 1) #47
  br label %common.resume

bb.bd:                                            ; preds = %switch.lookup
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit

bb.be:                                            ; preds = %switch.lookup
  store ptr %i.fd, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.ex)
          to label %bb.bg unwind label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bh, %bb.bf
  %eh.lpad-body = phi { ptr, i32 } [ %i.ff, %bb.bf ], [ %i.fh, %bb.bh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.u) #49
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.at

bb.bg:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.t, ptr noundef nonnull align 8 dereferenceable(72) %i.s, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fg = invoke fastcc noundef ptr @_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit(i64 noundef 8, i64 noundef 72)
          to label %bb.bj unwind label %bb.bh, !noalias !3852 ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.fh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.t)
          to label %.body unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

bb.bj:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fg, ptr noundef nonnull align 8 dereferenceable(72) %i.t, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i32 15, ptr %i.w, align 8
  %.sroa.429.sroa.3.0..sroa.429.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.fd, ptr %.sroa.429.sroa.3.0..sroa.429.0..sroa_idx.sroa_idx, align 8
  %.sroa.429.sroa.4.0..sroa.429.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.fc, ptr %.sroa.429.sroa.4.0..sroa.429.0..sroa_idx.sroa_idx, align 8
  %.sroa.429.sroa.5.0..sroa.429.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
end_hunk_5
begin_hunk_6_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type22bad_string_format_type:bb.a
bb.bd:                                            ; preds = %.noexc11.i
  %i.gw = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.gx = and i16 %i.gw, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.gx, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.be:                                            ; preds = %._crit_edge.i.i.i
  %i.gy = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.gz = add i64 %.sroa.01.0.i.i.i.i, %i.gy
  br label %bb.bc

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.noexc11.i
  %i.ha = getelementptr inbounds i8, ptr %i.gq, i64 -8
  %i.hb = load ptr, ptr %i.ha, align 8, !noalias !4397, !nonnull !11, !align !20, !noundef !11
  %i.hc = load ptr, ptr %i.hb, align 8, !noalias !4397, !nonnull !11, !align !20, !noundef !11
  %i.hd = getelementptr i8, ptr %i.hc, i64 56
  %.val.i34 = load i32, ptr %i.hd, align 8, !range !42, !noalias !4397, !noundef !11
  %i.he = invoke fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type10equivalent(i32 %.val.i34, ptr noundef nonnull align 8 %.sroa.01.0.i205)
          to label %bb.bf unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4397

bb.bf:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.i
  br i1 %i.he, label %bb.ay, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread.i

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread.i: ; preds = %bb.bf, %bb.ba, %.lr.ph207, %._crit_edge.i.i.i
  %.sroa.0.0.i32 = phi i1 [ true, %._crit_edge.i.i.i ], [ false, %bb.bf ], [ true, %bb.ba ], [ true, %.lr.ph207 ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit13.i unwind label %bb.aw, !noalias !4397

bb.bg:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit9.i
  %i.hf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4397
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit13.i: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherE3geteECsEhZmuQNqkz_11ruff_linter.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4397
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit13.i, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i29
  %.sroa.0.1.i = phi i1 [ %.sroa.0.0.i32, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit13.i ], [ true, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i29 ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i33 unwind label %bb.bi, !noalias !4397

bb.bi:                                            ; preds = %bb.bh
  %i.hg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.bj, !noalias !4397

bb.bj:                                            ; preds = %bb.bi
  %i.hh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4397
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %._crit_edge208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4397
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i33 unwind label %bb.bk, !noalias !4397

bb.bk:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.bl, !noalias !4397

bb.bl:                                            ; preds = %bb.bk
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4397
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i33: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.bh
  %.sroa.0.2.i = phi i1 [ %.sroa.0.1.i, %bb.bh ], [ true, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMapReRRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecNtCsjp5HOZs6k8V_10rustc_hash13FxBuildHasherEECsEhZmuQNqkz_11ruff_linter.exit.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.ca unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bm:                                            ; preds = %._crit_edge
  %i.hk = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.hn = load i64, ptr %i.hm, align 8, !noundef !11 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4408
  call void @llvm.experimental.noalias.scope.decl(metadata !4409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4410
  store i64 0, ptr %i.a, align 8, !noalias !4410
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ho, align 8, !noalias !4410
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.hp, align 8, !noalias !4410
  %.idx.i.i38 = mul nuw nsw i64 %i.bc, 24
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx.i.i38
  %i.hr = icmp eq i64 %i.bc, 0
  br i1 %i.hr, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i47, label %.lr.ph8.i.i39

.loopexit.i.i46:                                  ; preds = %bb.bp, %.lr.ph8.i.i39
  %i.hs = phi i64 [ %i.hu, %.lr.ph8.i.i39 ], [ %i.il, %bb.bp ]
  %i.ht = icmp eq ptr %i.hv, %i.hq
  br i1 %i.ht, label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i47, label %.lr.ph8.i.i39

.lr.ph8.i.i39:                                    ; preds = %bb.bm, %.loopexit.i.i46
  %i.hu = phi i64 [ %i.hs, %.loopexit.i.i46 ], [ 0, %bb.bm ] ; 2 uses
  %.sroa.0.07.i.i40 = phi ptr [ %i.hv, %.loopexit.i.i46 ], [ %i.bb, %bb.bm ] ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i40, i64 24 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i40, i64 8
  %i.hx = load ptr, ptr %i.hw, align 8, !alias.scope !4411, !nonnull !11, !noundef !11 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i40, i64 16
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !4411, !noundef !11 ; 2 uses
  %.idx9.i.i41 = mul nuw nsw i64 %i.hz, 80
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 %.idx9.i.i41
  %i.ib = icmp eq i64 %i.hz, 0
  br i1 %i.ib, label %.loopexit.i.i46, label %.lr.ph.i.i42

.lr.ph.i.i42:                                     ; preds = %.lr.ph8.i.i39, %bb.bp
  %i.ic = phi i64 [ %i.il, %bb.bp ], [ %i.hu, %.lr.ph8.i.i39 ] ; 4 uses
  %.sroa.02.06.i.i43 = phi ptr [ %i.id, %bb.bp ], [ %i.hx, %.lr.ph8.i.i39 ] ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i43, i64 80 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i.i43, i64 8 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !range !23, !noalias !4410, !noundef !11
  %.not.i.i44 = icmp eq i64 %i.if, -1
  br i1 %.not.i.i44, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i42
  %i.ig = load i64, ptr %i.a, align 8, !range !16, !alias.scope !4412, !noalias !4410, !noundef !11
  %i.ih = icmp eq i64 %i.ic, %i.ig
  br i1 %i.ih, label %bb.bo, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i45

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecE8grow_oneCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i45 unwind label %bb.bq, !noalias !4410

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i45: ; preds = %bb.bo, %bb.bn
  %i.ii = load ptr, ptr %i.ho, align 8, !alias.scope !4412, !noalias !4410, !nonnull !11, !noundef !11
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ic
  store ptr %i.ie, ptr %i.ij, align 8, !noalias !4413
  %i.ik = add i64 %i.ic, 1                        ; 2 uses
  store i64 %i.ik, ptr %i.hp, align 8, !alias.scope !4412, !noalias !4410
  br label %bb.bp

bb.bp:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i45, %.lr.ph.i.i42
  %i.il = phi i64 [ %i.ik, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecE8push_mutCsEhZmuQNqkz_11ruff_linter.exit.i.i45 ], [ %i.ic, %.lr.ph.i.i42 ] ; 2 uses
  %i.im = icmp eq ptr %i.id, %i.ia
  br i1 %i.im, label %.loopexit.i.i46, label %.lr.ph.i.i42

bb.bq:                                            ; preds = %bb.bo
  %i.in = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.a) #49
          to label %.body unwind label %bb.br, !noalias !4410

bb.br:                                            ; preds = %bb.bq
  %i.io = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4410
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i47: ; preds = %.loopexit.i.i46, %bb.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4410
  %i.ip = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !noalias !4408, !noundef !11 ; 3 uses
  %i.ir = icmp ult i64 %i.iq, 1152921504606846976
  call void @llvm.assume(i1 %i.ir)
  %i.is = icmp samesign ugt i64 %i.iq, %i.hn      ; 2 uses
  br i1 %i.is, label %.loopexit14.i, label %bb.bs

bb.bs:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i47
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.iu = load ptr, ptr %i.it, align 8, !noalias !4408, !nonnull !11, !noundef !11 ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.iu, i64 %i.iq
  %i.iw = getelementptr inbounds nuw [72 x i8], ptr %i.hl, i64 %i.hn
  invoke void @_RNvXs3_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEIBX_NtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEINtB5_7ZipImplBW_B2m_E3newCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull %i.iu, ptr noundef nonnull %i.iv, ptr noundef nonnull align 8 %i.hl, ptr noundef nonnull %i.iw)
          to label %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4408

.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph204, %bb.bs
  %lpad.loopexit.split-lp216 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %i.c) #49
          to label %.body unwind label %bb.bz, !noalias !4408

_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bs
  %.sroa.0.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !4408 ; 2 uses
  %.sroa.58.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.58.0.copyload.i = load ptr, ptr %.sroa.58.0..sroa_idx.i, align 8, !noalias !4408 ; 2 uses
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.69.0.copyload.i = load i64, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !4408 ; 3 uses
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.8.0.copyload.i = load i64, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !4408 ; 2 uses
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.8.0.copyload.i, i64 %.sroa.69.0.copyload.i)
  %exitcond.not.i202.not = icmp ult i64 %.sroa.69.0.copyload.i, %.sroa.8.0.copyload.i
  br i1 %exitcond.not.i202.not, label %.lr.ph204.preheader, label %.thread.i

.lr.ph204.preheader:                              ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.58.0.copyload.i) ]
  br label %.lr.ph204

bb.bt:                                            ; preds = %bb.bw
  %i.ix = add nuw i64 %.sroa.69.0.i203, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ix, %umax.i
  br i1 %exitcond.not.i, label %.thread.i, label %.lr.ph204

.lr.ph204:                                        ; preds = %.lr.ph204.preheader, %bb.bt
  %.sroa.69.0.i203 = phi i64 [ %i.ix, %bb.bt ], [ %.sroa.69.0.copyload.i, %.lr.ph204.preheader ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.69.0.i203
  %i.iz = getelementptr inbounds nuw [72 x i8], ptr %.sroa.58.0.copyload.i, i64 %.sroa.69.0.i203
  %i.ja = load ptr, ptr %i.iy, align 8, !noalias !4408, !nonnull !11, !align !20, !noundef !11
  %i.jb = getelementptr i8, ptr %i.ja, i64 56
  %.val.i51 = load i32, ptr %i.jb, align 8, !range !42, !noalias !4408, !noundef !11
  %i.jc = invoke fastcc noundef zeroext i1 @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type10equivalent(i32 %.val.i51, ptr noundef nonnull align 8 %i.iz)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !4408

.thread.i:                                        ; preds = %bb.bt, %_RINvYINtNtNtCs4NRVxsYgnAr_4core5slice4iter4IterRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtNtBa_4iter6traits8iterator8Iterator3zipRSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit7.i unwind label %bb.bu, !noalias !4408

bb.bu:                                            ; preds = %.thread.i
  %i.jd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.bv, !noalias !4408

bb.bv:                                            ; preds = %bb.bu
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4408
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit7.i: ; preds = %.loopexit14.i, %.thread.i
  %.sroa.0.0.i52 = phi i1 [ %i.is, %.loopexit14.i ], [ true, %.thread.i ]
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bw:                                            ; preds = %.lr.ph204
  br i1 %i.jc, label %bb.bt, label %.loopexit14.i

.loopexit14.i:                                    ; preds = %bb.bw, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type13collect_specs.exit.i47
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit7.i unwind label %bb.bx, !noalias !4408

bb.bx:                                            ; preds = %.loopexit14.i
  %i.jf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.by, !noalias !4408

bb.by:                                            ; preds = %bb.bx
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4408
  unreachable

bb.bz:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i48.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.jh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4408
  unreachable

_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4408
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br i1 %.sroa.0.0.i52, label %bb.cc, label %bb.cb

bb.ca:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCsdjunURa2XPj_19ruff_python_literal7cformat11CFormatSpecEECsEhZmuQNqkz_11ruff_linter.exit.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4397
  br i1 %.sroa.0.2.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type17is_valid_constant.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit, %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ji = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jj = load i32, ptr %i.ji, align 8, !noundef !11
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.jl = load i32, ptr %i.jk, align 4, !noundef !11
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.jn = load ptr, ptr %i.jm, align 8, !nonnull !11, !align !20, !noundef !11
  invoke void @_RINvMs8_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB6_11LintContext17report_diagnosticNtNtNtNtNtBa_5rules6pylint5rules22bad_string_format_type19BadStringFormatTypeEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.j, ptr noundef nonnull align 8 %i.jn, i32 noundef %i.jj, i32 noundef %i.jl)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cc:                                            ; preds = %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type17is_valid_constant.exit, %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules22bad_string_format_type14is_valid_tuple.exit, %bb.cg, %bb.ca
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtBG_6string6StringEEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

common.resume:                                    ; preds = %.body, %bb.cd
  %common.resume.op = phi { ptr, i32 } [ %i.jo, %bb.cd ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtBG_6string6StringEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.cc
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCsdjunURa2XPj_19ruff_python_literal7cformat17CFormatStrOrBytesNtNtB7_6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.cf:                                            ; preds = %bb.cb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.j)
          to label %bb.cg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.cc

bb.ch:                                            ; preds = %.body
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules24import_outside_top_level24import_outside_top_level(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 11 uses
  %i.e = alloca [32 x i8], align 8                ; 22 uses
  %.sroa.5 = alloca ptr, align 8                  ; 6 uses
  %.sroa.7 = alloca i64, align 8                  ; 6 uses
  %.sroa.9 = alloca ptr, align 8                  ; 5 uses
  %.sroa.11 = alloca ptr, align 8                 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.g = load i64, ptr %i.f, align 8, !noundef !11 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.i = load i32, ptr %i.h, align 8, !range !46, !noundef !11
  %i.j = add i32 %i.i, -1
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = icmp ugt i64 %i.g, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !11, !noundef !11
  %i.o = getelementptr inbounds nuw [120 x i8], ptr %i.n, i64 %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.q = load i8, ptr %i.p, align 8, !range !51, !noundef !11
  %i.r = icmp eq i8 %i.q, 4
  br i1 %i.r, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #46
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !align !20, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 128
  %i.v = load i64, ptr %i.u, align 8, !noundef !11
  %i.w = and i64 %i.v, 8388608
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.q, label %bb.f

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit27, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_imports26BannedModuleImportPoliciesEBL_.exit, %bb.b, %_RNvXss_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB5_4StmtNtNtCs2MoD74u7shA_14ruff_text_size6traits6Ranged5range.exit
  ret void

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4438)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.z = load i8, ptr %i.y, align 4, !range !33, !noalias !4438, !noundef !11 ; 2 uses
  %i.aa = icmp samesign ugt i8 %i.z, 1
  %i.ab = zext nneg i8 %i.z to i64
  %i.ac = add nsw i64 %i.ab, -1
  %i.ad = select i1 %i.aa, i64 %i.ac, i64 0
  switch i64 %i.ad, label %bb.g [
    i64 16, label %bb.h
    i64 17, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  store i64 -9223372036854775806, ptr %i.e, align 8, !alias.scope !4438
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %1, ptr %i.ae, align 8, !alias.scope !4438
  store i64 -9223372036854775808, ptr %i.e, align 8, !alias.scope !4438
  br label %_RNvMs_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules19flake8_tidy_imports5rules27banned_module_level_importsNtB4_26BannedModuleImportPolicies3new.exit

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.ag = load i32, ptr %i.af, align 4, !noalias !4438, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 47
  %i.ai = load i8, ptr %i.ah, align 1, !range !22, !noalias !4438, !noundef !11 ; 4 uses
  %.not.i = icmp eq i8 %i.ai, -1
  br i1 %.not.i, label %bb.k, label %bb.j
end_hunk_6
begin_hunk_7_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules38convert_typed_dict_functional_to_class38convert_typed_dict_functional_to_class:bb.a

bb.aw:                                            ; preds = %bb.as
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.bo

bb.ax:                                            ; preds = %bb.as
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bo

bb.ay:                                            ; preds = %bb.as
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.bo

bb.az:                                            ; preds = %bb.as
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.bo

bb.ba:                                            ; preds = %bb.as
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bo

bb.bb:                                            ; preds = %bb.as
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bo

bb.bc:                                            ; preds = %bb.as
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.bo

bb.bd:                                            ; preds = %bb.as
  %i.ex = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bo

bb.be:                                            ; preds = %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.bo

bb.bf:                                            ; preds = %bb.as
  %i.ez = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %bb.bo

bb.bg:                                            ; preds = %bb.as
  %i.fa = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.bo

bb.bh:                                            ; preds = %bb.as
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bo

bb.bi:                                            ; preds = %bb.as
  %i.fc = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.bo

bb.bj:                                            ; preds = %bb.as
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bo

bb.bk:                                            ; preds = %bb.as
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.bo

bb.bl:                                            ; preds = %bb.as
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.bo

bb.bm:                                            ; preds = %bb.as
  %i.fg = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.bo

.body.thread:                                     ; preds = %bb.fs, %bb.ft, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i, %.body.i, %.body, %bb.bn
  %.pn = phi { ptr, i32 } [ %i.fh, %bb.bn ], [ %.pn1975.i.i, %.body.i ], [ %i.fq, %.body ], [ %.pn.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i ], [ %i.lh, %bb.ft ], [ %i.lh, %bb.fs ] ; 2 uses
  %.sroa.0.2 = phi i1 [ %.sroa.0.3, %bb.bn ], [ false, %.body.i ], [ false, %.body ], [ false, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditECsEhZmuQNqkz_11ruff_linter.exit.i ], [ false, %bb.ft ], [ false, %bb.fs ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ac) #49
          to label %bb.r unwind label %bb.fu

bb.bn:                                            ; preds = %bb.fq, %bb.bo
  %.sroa.0.3 = phi i1 [ false, %bb.fq ], [ true, %bb.bo ]
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bo:                                            ; preds = %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as, %bb.as
  %.sroa.0.0.in.i16 = phi ptr [ %i.fg, %bb.bm ], [ %1, %bb.as ], [ %1, %bb.as ], [ %1, %bb.as ], [ %i.ff, %bb.bl ], [ %i.fe, %bb.bk ], [ %i.fd, %bb.bj ], [ %i.fc, %bb.bi ], [ %i.fb, %bb.bh ], [ %i.fa, %bb.bg ], [ %i.ez, %bb.bf ], [ %1, %bb.as ], [ %i.ey, %bb.be ], [ %i.ex, %bb.bd ], [ %i.ew, %bb.bc ], [ %i.ev, %bb.bb ], [ %i.eu, %bb.ba ], [ %i.et, %bb.az ], [ %i.es, %bb.ay ], [ %i.er, %bb.ax ], [ %i.eq, %bb.aw ], [ %i.ep, %bb.av ], [ %1, %bb.as ], [ %i.eo, %bb.au ], [ %1, %bb.as ]
  %.sroa.0.0.i17 = load i32, ptr %.sroa.0.0.in.i16, align 8, !noundef !11 ; 2 uses
  %i.fi = load ptr, ptr %i.ei, align 8, !nonnull !11, !noundef !11
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.fk = load i64, ptr %i.fj, align 8, !noundef !11
  %i.fl = invoke noundef i32 @_RNvXNtCs9BeaGo73rC4_16ruff_source_file11line_rangeseNtB2_10LineRanges10line_start(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fk, i32 noundef %.sroa.0.0.i17)
          to label %bb.bp unwind label %bb.bn

bb.bp:                                            ; preds = %bb.bo
  %i.fm = icmp eq i32 %i.fl, %.sroa.0.0.i17
  br i1 %i.fm, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsEhZmuQNqkz_11ruff_linter8checkers3ast15DiagnosticGuardEBH_(ptr noalias noundef align 8 dereferenceable(48) %i.ac)
          to label %bb.bs unwind label %.split.thread

bb.br:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.fn = load i64, ptr %i.ad, align 8            ; 3 uses
  store i64 %i.fn, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  invoke void @_RNvMs2_NtNtCsEhZmuQNqkz_11ruff_linter8checkers3astNtB5_7Checker9generator(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.y, ptr noundef nonnull align 8 %0)
          to label %bb.bu unwind label %bb.fs

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.fo = load ptr, ptr %i.ad, align 8, !alias.scope !4676, !nonnull !11, !noundef !11
  %i.fp = icmp eq ptr %i.fo, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.fp, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bt, !prof !12

bb.bt:                                            ; preds = %bb.bs
  call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ad)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bt, %bb.bs, %bb.fr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules9pyupgrade5rules38convert_typed_dict_functional_to_class23match_typed_dict_assign.exit.thread

.body:                                            ; preds = %bb.fm
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.bu:                                            ; preds = %bb.br
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.fs = load ptr, ptr %i.fr, align 8, !nonnull !11, !align !20, !noundef !11
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !4677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !4677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !4677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.y, i64 56, i1 false), !noalias !4678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !4677
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !4677
  store i64 %i.fn, ptr %i.p, align 8, !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4680
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bv unwind label %.thread.i.i, !noalias !4680

.thread.i.i:                                      ; preds = %bb.by, %bb.bw, %bb.bu
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.noexc.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.fv = load i64, ptr %i.i, align 8, !range !17, !noalias !4680, !noundef !11
  %i.fw = trunc nuw i64 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.fy = load i64, ptr %i.fx, align 8, !range !18, !noalias !4680, !noundef !11 ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  br i1 %i.fw, label %bb.bw, label %bb.bx, !prof !10

bb.bw:                                            ; preds = %bb.bv
  %i.ga = load i64, ptr %i.fz, align 8, !noalias !4680
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fy, i64 %i.ga) #46
          to label %bb.dp unwind label %.thread.i.i, !noalias !4680

bb.bx:                                            ; preds = %bb.bv
  %i.gb = load ptr, ptr %i.fz, align 8, !noalias !4680, !nonnull !11, !noundef !11 ; 2 uses
  %i.gc = icmp ule i64 %.sroa.0.0.i.i, %i.fy
  tail call void @llvm.assume(i1 %i.gc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !4680
  br i1 %.not9, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bz, %bb.bx
  store i64 %i.fy, ptr %i.n, align 8, !noalias !4680
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.gb, ptr %.sroa.410.0..sroa_idx.i.i, align 8, !noalias !4680
  %.sroa.611.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0.0.i.i, ptr %.sroa.611.0..sroa_idx.i.i, align 8, !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4680
  invoke fastcc void @_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.n)
          to label %bb.ca unwind label %.thread.i.i, !noalias !4680

bb.bz:                                            ; preds = %bb.bx
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.gb, ptr nonnull readonly align 1 %.sroa.0.02641, i64 %.sroa.0.0.i.i, i1 false), !noalias !4681
  br label %bb.by

bb.ca:                                            ; preds = %bb.by
  %i.gd = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gd, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false), !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !4680
  store i32 0, ptr %i.o, align 8, !noalias !4680
  %i.ge = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 0, ptr %i.ge, align 4, !noalias !4680
  %i.gf = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i32 -2, ptr %i.gf, align 8, !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !4680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !4680
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.j, ptr noundef nonnull align 8 %i.ay)
          to label %bb.ce unwind label %bb.cd, !noalias !4680

.body.i.i:                                        ; preds = %bb.cy, %.body28.i.i, %bb.cg, %bb.cd
  %.pn.i.i = phi { ptr, i32 } [ %i.hx, %bb.cy ], [ %eh.lpad-body29.i.i, %.body28.i.i ], [ %i.go, %bb.cg ], [ %i.gl, %bb.cd ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4682)
  call void @llvm.experimental.noalias.scope.decl(metadata !4683)
  call void @llvm.experimental.noalias.scope.decl(metadata !4684)
  call void @llvm.experimental.noalias.scope.decl(metadata !4685)
  call void @llvm.experimental.noalias.scope.decl(metadata !4686)
  %i.gg = getelementptr inbounds nuw i8, ptr %i.o, i64 23
  %i.gh = load i8, ptr %i.gg, align 1, !range !25, !alias.scope !4687, !noalias !4680, !noundef !11
  %i.gi = and i8 %i.gh, -2
  %switch.i.i.i.i.i.i.i = icmp eq i8 %i.gi, -48
  br i1 %switch.i.i.i.i.i.i.i, label %bb.cb, label %.noexc.i.i

bb.cb:                                            ; preds = %.body.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4688)
  %.pn.i.i.i.i.i.i.i.i = load ptr, ptr %i.gd, align 8, !alias.scope !4689, !noalias !4680, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i, i64 -8
  %i.gj = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !4690
  %i.gk = icmp eq i64 %i.gj, 1
  br i1 %i.gk, label %bb.cc, label %.noexc.i.i, !prof !10

bb.cc:                                            ; preds = %bb.cb
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.gd)
          to label %.noexc.i.i unwind label %bb.do, !noalias !4680

bb.cd:                                            ; preds = %bb.ca
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ce:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, ptr noundef nonnull align 8 dereferenceable(72) %i.j, i64 72, i1 false), !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4680
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4691
  %i.gm = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, 9) 8) #47, !noalias !4691 ; 4 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.cf, label %bb.ci, !prof !49

bb.cf:                                            ; preds = %bb.ce
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #46
          to label %.noexc24.i.i unwind label %bb.cg, !noalias !4680

.noexc24.i.i:                                     ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.cf
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %.body.i.i unwind label %bb.ch, !noalias !4680

bb.ch:                                            ; preds = %bb.cg
  %i.gp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4680
  unreachable

bb.ci:                                            ; preds = %bb.ce
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gm, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false), !noalias !4680
  store ptr %i.gm, ptr %i.l, align 8, !noalias !4680
  %i.gq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.gq, align 8, !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !4680
  %.not17.i.i = icmp eq ptr %.sroa.14.067, null
  br i1 %.not17.i.i, label %bb.cw, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.058.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.037.i.i)
  %i.gr = getelementptr inbounds nuw i8, ptr %.sroa.14.067, i64 104
  %i.gs = load <2 x i32>, ptr %i.gr, align 8, !noalias !4692 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.14.067, i64 112
  %i.gu = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.gt)
          to label %.noexc26.i.i unwind label %bb.cv, !noalias !4680 ; 3 uses

.noexc26.i.i:                                     ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4692
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.14.067, i64 95
  %i.gw = load i8, ptr %i.gv, align 1, !range !22, !noalias !4692, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.gw, -1
  br i1 %.not.i.i.i, label %bb.cr, label %bb.ck

bb.ck:                                            ; preds = %.noexc26.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.14.067, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4693
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.14.067, i64 80 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4694)
  %i.gz = and i8 %i.gw, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.gz, -48
  br i1 %switch.i.i.i.i.i, label %bb.cl, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %.pn.i.i.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !4694, !noalias !4693, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i, i64 -8
  %i.ha = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i, i64 1 monotonic, align 8, !noalias !4695
  %i.hb = icmp slt i64 %i.ha, 0
  br i1 %i.hb, label %bb.cm, label %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i.i.i, !prof !10

bb.cm:                                            ; preds = %bb.cl
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.gy) #46
          to label %.noexc27.i.i unwind label %bb.cv, !noalias !4680

.noexc27.i.i:                                     ; preds = %bb.cm
  unreachable

_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i.i.i: ; preds = %bb.cl, %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gy, i64 16, i1 false), !noalias !4693
  %i.hc = load <2 x i32>, ptr %i.gx, align 8, !noalias !4693
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.14.067, i64 96
  %i.he = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.hd)
          to label %_RNvXs83_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i unwind label %bb.cn, !noalias !4693

bb.cn:                                            ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i.i.i
  %i.hf = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4696)
  call void @llvm.experimental.noalias.scope.decl(metadata !4697)
  call void @llvm.experimental.noalias.scope.decl(metadata !4698)
  call void @llvm.experimental.noalias.scope.decl(metadata !4699)
  %i.hg = getelementptr inbounds nuw i8, ptr %i.e, i64 15
  %i.hh = load i8, ptr %i.hg, align 1, !range !25, !alias.scope !4700, !noalias !4693, !noundef !11
  %i.hi = and i8 %i.hh, -2
  %switch.i.i.i.i.i.i.i.i = icmp eq i8 %i.hi, -48
  br i1 %switch.i.i.i.i.i.i.i.i, label %bb.co, label %.body28.i.i

bb.co:                                            ; preds = %bb.cn
  call void @llvm.experimental.noalias.scope.decl(metadata !4701)
  %.pn.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4702, !noalias !4693, !nonnull !11, !noundef !11
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i.i.i, i64 -8
  %i.hj = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 1 release, align 8, !noalias !4703
  %i.hk = icmp eq i64 %i.hj, 1
  br i1 %i.hk, label %bb.cp, label %.body28.i.i, !prof !10

bb.cp:                                            ; preds = %bb.co
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.body28.i.i unwind label %bb.cq, !noalias !4693

bb.cq:                                            ; preds = %bb.cp
  %i.hl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4693
  unreachable

_RNvXs83_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i: ; preds = %_RNvMNtCsj8vhLppEnlJ_8char_str4reprNtB2_4Repr18make_shallow_clone.exit.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false), !noalias !4692
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4693
  store <2 x i32> %i.hc, ptr %i.g, align 8, !noalias !4692
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i32 %i.he, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !4692
  br label %bb.cs

bb.cr:                                            ; preds = %.noexc26.i.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.g, i64 23
  store i8 -1, ptr %i.hm, align 1, !noalias !4692
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %_RNvXs83_NtCskLngH8kgpZI_15ruff_python_ast5nodesNtB6_10IdentifierNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4692
  invoke fastcc void @_RNvXsbx_NtCskLngH8kgpZI_15ruff_python_ast9generatedNtB6_4ExprNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(72) %i.f, ptr noundef nonnull align 8 %.sroa.14.067)
          to label %bb.da unwind label %bb.ct, !noalias !4692

bb.ct:                                            ; preds = %bb.cs
  %i.hn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(32) %i.g) #49
          to label %.body28.i.i unwind label %bb.cu, !noalias !4692

bb.cu:                                            ; preds = %bb.ct
  %i.ho = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48, !noalias !4692
  unreachable

bb.cv:                                            ; preds = %bb.cm, %bb.cj
  %i.hp = landingpad { ptr, i32 }
          cleanup
  br label %.body28.i.i

.body28.i.i:                                      ; preds = %bb.dl, %.body.i.i.i, %bb.cv, %bb.ct, %bb.cp, %bb.co, %bb.cn
  %eh.lpad-body29.i.i = phi { ptr, i32 } [ %i.hn, %bb.ct ], [ %i.hf, %bb.cn ], [ %i.hf, %bb.cp ], [ %i.hf, %bb.co ], [ %i.hp, %bb.cv ], [ %eh.lpad-body.i.i.i, %bb.dl ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.l) #49
          to label %.body.i.i unwind label %bb.do, !noalias !4680

bb.cw:                                            ; preds = %bb.dn, %bb.ci
  %.sroa.04.0.i.i = phi i64 [ %.sroa.0.0.copyload.i.i.i, %bb.dn ], [ ptrtoint (ptr @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER to i64), %bb.ci ]
  %i.hq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i32 0, ptr %i.hq, align 8, !noalias !4680
  %i.hr = getelementptr inbounds nuw i8, ptr %i.m, i64 28
  store i32 0, ptr %i.hr, align 4, !noalias !4680
  %i.hs = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i32 -2, ptr %i.hs, align 8, !noalias !4680
  store ptr %i.gm, ptr %i.m, align 8, !noalias !4680
  %i.ht = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 1, ptr %i.ht, align 8, !noalias !4680
  %i.hu = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.04.0.i.i, ptr %i.hu, align 8, !noalias !4680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !4680
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !4704
  %i.hv = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, 9) 8) #47, !noalias !4704 ; 3 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.cx, label %bb.dr, !prof !49
end_hunk_7
begin_hunk_8_@_RNvXs3_NtNtCsEhZmuQNqkz_11ruff_linter7message7groupedNtB5_15RuleCodeAndBodyNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit112: ; preds = %bb.bi
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXs4_CsgFeZUGsc24U_7coloredReNtB6_8Colorize5colorNtNtB6_5color5ColorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 1, i32 6)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvMNtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB2_10Diagnostic15concise_message(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.pre.pre)
          to label %bb.bm unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit112
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.k) #49
          to label %common.resume unwind label %bb.n

bb.bm:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.k, ptr %i.i, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs5_CsgFeZUGsc24U_7coloredNtB5_13ColoredStringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.434.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.j, ptr %i.bz, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXsn_NtCs56aZGHL6Dc6_7ruff_db10diagnosticNtB5_14ConciseMessageNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.438.0..sroa_idx, align 8
  %i.ca = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.bp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.br, ptr noundef nonnull @395, ptr noundef nonnull %i.i)
          to label %bb.bn unwind label %bb.bl

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit114 unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtCsgFeZUGsc24U_7colored13ColoredStringECsEhZmuQNqkz_11ruff_linter.exit114: ; preds = %bb.bn
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ak
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1u_5error10ParseErrorEENtNtNtNtBT_4iter6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 104                 ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !7210
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !7210
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !7210
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCsEhZmuQNqkz_11ruff_linter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #6 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.b = ptrtoint ptr %.val1 to i64
  %i.c = ptrtoint ptr %.val to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24                  ; 2 uses
  store i64 %i.e, ptr %0, align 8, !alias.scope !7213
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !7213
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.g, align 8, !alias.scope !7213
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6pylint5rules18bad_str_strip_callNtB5_11RemovalKindNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i8, ptr %0, align 1, !range !39, !noundef !11
  %i.d = trunc nuw i8 %i.c to i1
  %spec.select = select i1 %i.d, ptr @397, ptr @396
  store ptr %spec.select, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 12, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsEhZmuQNqkz_11ruff_linter, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !align !20, !noundef !11
  %i.i = call noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @74, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB1u_5error10ParseErrorEENtNtNtBT_3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB2y_5error10ParseErrorENtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 4 uses
  %i.o = icmp ult i64 %i.n, 88686269585142076
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !11 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB2y_5error10ParseErrorENtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [104 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB2y_5error10ParseErrorENtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.n, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB12_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.j, %bb.k
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB2y_5error10ParseErrorENtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %0) #49
  resume { ptr, i32 } %i.aj

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f
  %.sroa.0.08.i = phi i64 [ 0, %bb.f ], [ %i.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %.sroa.0.08.i ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.0.08.i, 1        ; 4 uses
  %i.ae = load i64, ptr %i.ac, align 8, !range !13, !alias.scope !7218, !noundef !11
  %.not.i.i5 = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i5, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsb6FLkjZuKG_18ruff_python_parser6ParsedNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ModExpressionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsb6FLkjZuKG_18ruff_python_parser5error10ParseErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.af)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.i, %bb.h
  %i.ag = icmp eq i64 %i.ad, %i.g
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB12_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

bb.j:                                             ; preds = %.lr.ph
  %i.ah = add nuw nsw i64 %.sroa.0.1.i23, 1       ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %i.ad, %i.g
  br i1 %i.ak, label %.body, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.j
  %.sroa.0.1.i23 = phi i64 [ %i.ah, %bb.j ], [ %i.ad, %bb.k ] ; 2 uses
  %i.al = getelementptr inbounds nuw [104 x i8], ptr %i.ab, i64 %.sroa.0.1.i23
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(104) %i.al) #49
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB12_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB11_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !11 ; 3 uses
  %.not.i.i6 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i6, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB2y_5error10ParseErrorENtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB12_5error10ParseErrorEECsEhZmuQNqkz_11ruff_linter.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !11 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 88686269585142076
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !11 ; 2 uses
  %.not3.i.i7 = icmp eq i64 %i.at, %i.aq
  br i1 %.not3.i.i7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.au = add i64 %i.aq, %i.ao
  store i64 %i.au, ptr %i.ap, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtB4_6result6ResultNtNtCsb6FLkjZuKG_18ruff_python_parser6typing16ParsedAnnotationNtNtB2y_5error10ParseErrorENtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.o:                                             ; preds = %bb.m
  %i.av = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [104 x i8], ptr %i.av, i64 %i.at
  %i.ax = getelementptr inbounds nuw [104 x i8], ptr %i.av, i64 %i.aq
  %i.ay = mul i64 %i.ao, 104
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.ay, i1 false)
  br label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtB9_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !11 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %bb.i, %.body.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %0) #49
  resume { ptr, i32 } %eh.lpad-body.i

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.ac = icmp eq i64 %i.ae, %i.g
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i
  %.sroa.0.0.i30 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.0.i30 ; 3 uses
  %i.ae = add nuw nsw i64 %.sroa.0.0.i30, 1       ; 4 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %.body.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ad)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph32
  %i.ah = add nuw nsw i64 %.sroa.0.1.i31, 1       ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.g
  br i1 %i.ai, label %.body, label %.lr.ph32

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.j, %bb.g
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %i.af, %bb.g ]
  %i.ak = icmp eq i64 %i.ae, %i.g
  br i1 %i.ak, label %.body, label %.lr.ph32

.lr.ph32:                                         ; preds = %.body.i, %bb.i
  %.sroa.0.1.i31 = phi i64 [ %i.ah, %bb.i ], [ %i.ae, %.body.i ] ; 2 uses
  %i.al = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.1.i31
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al) #49
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph32
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ao = load i64, ptr %i.an, align 8, !noundef !11 ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !noundef !11 ; 4 uses
  %i.ar = icmp ult i64 %i.aq, 384307168202282326
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !noundef !11 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.at, %i.aq
  br i1 %.not3.i.i6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.au = add i64 %i.aq, %i.ao
  store i64 %i.au, ptr %i.ap, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtBO_6string6StringNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.n:                                             ; preds = %bb.l
  %i.av = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.at
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aq
  %i.ay = mul i64 %i.ao, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ax, ptr nonnull align 8 %i.aw, i64 %i.ay, i1 false)
  br label %bb.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.j = icmp eq ptr %i.c, %i.a
  br i1 %i.j, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq i64 %i.l, 0
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 4 uses
  %i.o = icmp ult i64 %i.n, 384307168202282326
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i64, ptr %i.p, align 8, !noundef !11 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.q, %i.n
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = add i64 %i.n, %i.l
  store i64 %i.r, ptr %i.m, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.q
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.t, i64 %i.n
  %i.w = mul i64 %i.l, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit, %bb.d, %bb.b
  ret void

.body:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit8.i, %bb.i
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %0) #49
  resume { ptr, i32 } %i.ai

bb.f:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub nuw i64 %i.e, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.aa ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.f
  %.sroa.0.09.i = phi i64 [ 0, %bb.f ], [ %i.ad, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit.i ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.09.i ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.0.09.i, 1        ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7237)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7240)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !7241, !nonnull !11, !noundef !11
  %i.af = atomicrmw sub ptr %i.ae, i64 1 release, align 8, !noalias !7242
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit.i

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsjBJLkJIqpmN_4fern(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.h, %bb.g
  %i.ah = icmp eq i64 %i.ad, %i.g
  br i1 %i.ah, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.ad, %i.g
  br i1 %i.aj, label %.body, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.al, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit8.i ], [ %i.ad, %bb.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %.sroa.0.110.i ; 2 uses
  %i.al = add nuw nsw i64 %.sroa.0.110.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7246)
  %i.am = load ptr, ptr %i.ak, align 8, !alias.scope !7247, !nonnull !11, !noundef !11
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !7248
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.j, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit8.i

bb.j:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc7context5InnerE9drop_slowCsjBJLkJIqpmN_4fern(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit8.i unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit8.i: ; preds = %bb.j, %.lr.ph.i
  %i.ap = icmp eq i64 %i.al, %i.g
  br i1 %i.ap, label %.body, label %.lr.ph.i

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #48
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = load i64, ptr %i.ar, align 8, !noundef !11 ; 3 uses
  %.not.i.i5 = icmp eq i64 %i.as, 0
  br i1 %.not.i.i5, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryECsEhZmuQNqkz_11ruff_linter.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !11 ; 4 uses
  %i.av = icmp ult i64 %i.au, 384307168202282326
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !11 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.ax, %i.au
  br i1 %.not3.i.i6, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.ay = add i64 %i.au, %i.as
  store i64 %i.ay, ptr %i.at, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.n:                                             ; preds = %bb.l
  %i.az = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ba = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ax
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.au
  %i.bc = mul i64 %i.as, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bb, ptr nonnull align 8 %i.ba, i64 %i.bc, i1 false)
  br label %bb.m
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9CandidateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9CandidateNtNtBO_5alloc6GlobalEEB2i_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !11 ; 4 uses
  %i.k = icmp ult i64 %i.j, 768614336404564651
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !11 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9CandidateNtNtBO_5alloc6GlobalEEB2i_.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [12 x i8], ptr %i.p, i64 %i.j
  %i.s = mul i64 %i.f, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9CandidateNtNtBO_5alloc6GlobalEEB2i_.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9CandidateNtNtBO_5alloc6GlobalEEB2i_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !11 ; 4 uses
  %i.x = icmp ult i64 %i.w, 768614336404564651
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !11 ; 2 uses
  %.not3.i.i6 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i6, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules4ruff5rules27ambiguous_unicode_character9CandidateNtNtBO_5alloc6GlobalEEB2i_.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.z
  %i.ae = getelementptr inbounds nuw [12 x i8], ptr %i.ac, i64 %i.w
  %i.af = mul i64 %i.f, 12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ae, ptr nonnull align 4 %i.ad, i64 %i.af, i1 false)
  br label %bb.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !11, !noundef !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !11, !noundef !11
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !noundef !11 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0                 ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noundef !11 ; 4 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !11 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j
  %i.s = shl i64 %i.f, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr nonnull align 8 %i.q, i64 %i.s, i1 false)
  br label %bb.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !11 ; 4 uses
  %i.x = icmp ult i64 %i.w, 1152921504606846976
  tail call void @llvm.assume(i1 %i.x)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !noundef !11 ; 2 uses
  %.not3.i.i10 = icmp eq i64 %i.z, %i.w
  br i1 %.not3.i.i10, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f
  store i64 %i.aa, ptr %i.v, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardRNtNtCs5MAO5oZTZb8_16ruff_diagnostics4edit4EditNtNtBO_5alloc6GlobalEECsEhZmuQNqkz_11ruff_linter.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.z
end_hunk_8
