Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_linter-a493efaf0d7bc454.ruff_linter.791b0b95983ac5d-cgu.13?download=true
inline.NumInlined: 4418
inline.NumDeleted: 1702
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 82
loop-unroll.NumUnrolled: 90
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECsEhZmuQNqkz_11ruff_linter
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtNtCs2AWtUsOyxgP_3std4sync4mpmc5waker5EntryEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecRNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersEECsEhZmuQNqkz_11ruff_linter(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(56) %.0.val)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #40
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 56, i64 noundef 8) #40
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !659)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 39
  %i.d = load i8, ptr %i.c, align 1, !range !24, !alias.scope !661, !noundef !4
  %i.e = and i8 %i.d, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !663, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !663
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, !prof !13

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.i) #38
          to label %bb.h unwind label %bb.g, !inline_history !650

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !664, !align !6, !noundef !4 ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.f, !noalias !665, !inline_history !655

bb.f:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 72, i64 noundef 8) #40, !noalias !665, !inline_history !655
  br label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef 72, i64 noundef 8) #40, !noalias !665, !inline_history !655
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter.exit

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !inline_history !650
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #40
  ret void

bb.h:                                             ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.m, %bb.f ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 56, i64 noundef 8) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #40
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 6 uses
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
          to label %bb.b unwind label %bb.d, !inline_history !666

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
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #38
          to label %bb.c unwind label %bb.e, !inline_history !666

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !inline_history !666
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #40
  resume { ptr, i32 } %i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8) #40
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECsEhZmuQNqkz_11ruff_linter.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECsEhZmuQNqkz_11ruff_linter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i32, ptr %i.a, align 8, !alias.scope !669, !noundef !4
  switch i32 %.val2.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
    i32 2, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
    i32 0, label %bb.c
  ], !prof !25

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @85, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #37, !noalias !669
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !669, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !669, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #40, !noalias !669
  br label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit

_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters8peekable8PeekableINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEEB2e_(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB13_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEB1w_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEEB19_(ptr noalias noundef align 8 dereferenceable(32) %0) #38
          to label %common.resume unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEB1w_.exit: ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !range !10, !alias.scope !672, !noundef !4
  %i.d = icmp ugt i64 %i.c, -4
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEEB19_.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEB1w_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEEB19_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEEB19_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort8comments7CommentEEB1w_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i.i.i.i
  ret void

bb.f:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3kOHrDoa4ON_8bitflags6parser10ParseErrorECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19, !alias.scope !675, !noundef !4
  switch i64 %i.a, label %bb.b [
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3kOHrDoa4ON_8bitflags6parser14ParseErrorKindECsEhZmuQNqkz_11ruff_linter.exit
    i64 1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume.i:                                  ; preds = %bb.f, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.c, %bb.c ], [ %i.f, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

.sink.split.i:                                    ; preds = %bb.e, %bb.b
  %.sink.i = phi ptr [ %i.e, %bb.e ], [ %i.b, %bb.b ]
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs3kOHrDoa4ON_8bitflags6parser14ParseErrorKindECsEhZmuQNqkz_11ruff_linter.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.sink.split.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECsEhZmuQNqkz_11ruff_linter:bb.a
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %i.w, %bb.k ]
  %.val1.i = load ptr, ptr %i.n, align 8, !alias.scope !787, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef 56, i64 noundef 8) #40, !noalias !787, !inline_history !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit

.noexc11:                                         ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !787, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 56, i64 noundef 8) #40, !noalias !787, !inline_history !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit7, %bb.f
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit7 ], [ %.pn, %bb.f ], [ %eh.lpad-body.i, %.body.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !797, !nonnull !4, !noundef !4
  %i.ad = icmp eq ptr %i.ac, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.ad, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14, label %bb.n, !prof !27

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14 unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12: ; preds = %.noexc11, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit9
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !798, !nonnull !4, !noundef !4
  %i.ag = icmp eq ptr %i.af, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.ag, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16, label %bb.o, !prof !27

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16 unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit, %bb.n, %bb.q
  %.pn4 = phi { ptr, i32 } [ %i.ak, %bb.q ], [ %.pn2, %bb.n ], [ %.pn2, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !799, !align !6, !noundef !4
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %common.resume, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %common.resume unwind label %bb.x, !inline_history !737

bb.q:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit12, %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !800, !align !6, !noundef !4 ; 5 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !801)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !803), !noalias !801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !804), !noalias !801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805), !noalias !801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !806), !noalias !801
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 39
  %i.aq = load i8, ptr %i.ap, align 1, !range !24, !alias.scope !807, !noalias !801, !noundef !4
  %i.ar = and i8 %i.aq, -2
  %switch.i.i.i.i.i26 = icmp eq i8 %i.ar, -48
  br i1 %switch.i.i.i.i.i26, label %bb.s, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !808), !noalias !801
  %.pn.i.i.i.i.i.i27 = load ptr, ptr %i.ao, align 8, !alias.scope !809, !noalias !801, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i.i.i28 = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i27, i64 -8
  %i.as = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i28, i64 -1 release, align 8, !noalias !810
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30, !prof !13

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ao)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30 unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.av) #38
          to label %.body.i20 unwind label %bb.v, !noalias !801, !inline_history !754

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30: ; preds = %bb.s, %bb.r, %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.aw)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24 unwind label %bb.w, !noalias !801, !inline_history !754

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !801, !inline_history !754
  unreachable

bb.w:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %.body.i20

common.resume:                                    ; preds = %bb.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14, %.body.i20
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i21, %.body.i20 ], [ %.pn4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit14 ], [ %.pn4, %bb.p ]
  resume { ptr, i32 } %common.resume.op

.body.i20:                                        ; preds = %bb.u, %bb.w
  %eh.lpad-body.i21 = phi { ptr, i32 } [ %i.ay, %bb.w ], [ %i.au, %bb.u ]
  %.val1.i22 = load ptr, ptr %i.al, align 8, !alias.scope !801, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i22, i64 noundef 56, i64 noundef 8) #40, !noalias !801, !inline_history !755
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECsEhZmuQNqkz_11ruff_linter.exit30
  %.val.i23 = load ptr, ptr %i.al, align 8, !alias.scope !801, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i23, i64 noundef 56, i64 noundef 8) #40, !noalias !801, !inline_history !755
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECsEhZmuQNqkz_11ruff_linter.exit19: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECsEhZmuQNqkz_11ruff_linter.exit16, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECsEhZmuQNqkz_11ruff_linter.exit24
  ret void

bb.x:                                             ; preds = %bb.p, %bb.n, %bb.f, %bb.d
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !825)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 95
  %i.b = load i8, ptr %i.a, align 1, !range !22, !alias.scope !825, !noundef !4 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !826)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !828)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !830)
  %i.e = and i8 %i.b, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !832, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !832
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %0) #38
          to label %bb.g unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %0)
  ret void

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !844)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !844, !nonnull !4, !noundef !4 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !844, !noundef !4 ; 6 uses
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
          to label %bb.b unwind label %bb.d, !noalias !844, !inline_history !835

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
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #38
          to label %bb.c unwind label %bb.e, !noalias !844, !inline_history !835

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !844, !inline_history !835
  unreachable

.body3:                                           ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #40, !noalias !844
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !845, !nonnull !4, !noundef !4
  %i.p = icmp eq ptr %i.o, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.f, !prof !27

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.b
  %i.q = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.q, i64 noundef 8) #40, !noalias !844
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit

bb.f:                                             ; preds = %.body3
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.h

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !846, !nonnull !4, !noundef !4
  %i.t = icmp eq ptr %i.s, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1, label %bb.g, !prof !27

bb.g:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit1: ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %.body3, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated14StmtImportFromECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 47
  %i.b = load i8, ptr %i.a, align 1, !range !22, !alias.scope !861, !noundef !4 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !862)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  %i.e = and i8 %i.b, -2
  %switch.i.i.i.i.i.i = icmp eq i8 %i.e, -48
  br i1 %switch.i.i.i.i.i.i, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %.pn.i.i.i.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !868, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i.i, i64 -8
  %i.f = atomicrmw add ptr %.sroa.0.0.i.i.i.i.i.i.i, i64 -1 release, align 8, !noalias !868
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(24) %0) #38
          to label %common.resume unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.f ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasEECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierEECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5AliasENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !16, !noundef !4
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
    i32 13, label %bb.ax
    i32 14, label %bb.ba
    i32 15, label %bb.bc
    i32 16, label %bb.bl
    i32 17, label %bb.bn
    i32 18, label %bb.bx
    i32 19, label %bb.ce
    i32 20, label %bb.cq
    i32 21, label %bb.cw
    i32 22, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit
    i32 23, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit
    i32 24, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit
    i32 25, label %bb.cz
    i32 26, label %bb.df
    i32 27, label %bb.di
    i32 28, label %bb.dk
    i32 29, label %bb.dn
    i32 30, label %bb.dq
    i32 31, label %bb.dt
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #40
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %common.resume145 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

common.resume.sink.split:                         ; preds = %bb.i, %bb.l, %bb.n, %bb.r, %bb.w, %bb.aw, %bb.az, %bb.bb, %bb.dh, %bb.dj, %bb.dz
  %.sink = phi ptr [ %i.hq, %bb.dz ], [ %i.gq, %bb.dj ], [ %i.gn, %bb.dh ], [ %i.cp, %bb.bb ], [ %i.cl, %bb.az ], [ %i.ci, %bb.aw ], [ %i.as, %bb.w ], [ %i.ag, %bb.r ], [ %i.y, %bb.n ], [ %i.v, %bb.l ], [ %i.n, %bb.i ]
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1061, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit unwind label %bb.an, !noalias !1061, !inline_history !917

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #40, !noalias !1061, !inline_history !917
  br label %.body64

.body64:                                          ; preds = %bb.an, %.body69
  %.pn.i3 = phi { ptr, i32 } [ %i.bs, %.body69 ], [ %i.bw, %bb.an ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo) #38
          to label %common.resume145 unwind label %bb.ao, !inline_history !914

bb.ao:                                            ; preds = %.body64, %.body69
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !inline_history !914
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #40, !noalias !1061, !inline_history !917
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit61: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ar:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !1062, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit unwind label %.body75, !noalias !1062, !inline_history !920

.body75:                                          ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #40, !noalias !1062, !inline_history !920
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca) #38
          to label %common.resume145 unwind label %bb.as, !inline_history !921

bb.as:                                            ; preds = %.body75
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !inline_history !921
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.ar
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #40, !noalias !1062, !inline_history !920
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECsEhZmuQNqkz_11ruff_linter.exit72: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECsEhZmuQNqkz_11ruff_linter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.av:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !1063, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ci)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit80 unwind label %bb.aw, !noalias !1063, !inline_history !924

bb.aw:                                            ; preds = %bb.av
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit80: ; preds = %bb.av
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 72, i64 noundef 8) #40, !noalias !1063, !inline_history !924
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ax:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !1064, !align !6, !noundef !4 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i82 unwind label %bb.az, !noalias !1065, !inline_history !929

bb.az:                                            ; preds = %bb.ay
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit.i82: ; preds = %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 72, i64 noundef 8) #40, !noalias !1065, !inline_history !929
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ba:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1066)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !1066, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit87 unwind label %bb.bb, !noalias !1066, !inline_history !932

bb.bb:                                            ; preds = %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter.exit87: ; preds = %bb.ba
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 72, i64 noundef 8) #40, !noalias !1066, !inline_history !932
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bc:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !1067, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.cs)
          to label %bb.be unwind label %.body91, !noalias !1067, !inline_history !935

.body91:                                          ; preds = %bb.bc
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #40, !noalias !1067, !inline_history !935
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load i64, ptr %i.cu, align 8, !alias.scope !1068, !noundef !4 ; 2 uses
  %i.cv = icmp eq i64 %.val4.i, 0
  br i1 %i.cv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88, label %bb.bd

bb.bd:                                            ; preds = %.body91
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.cw, align 8, !alias.scope !1068, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %.val4.i, i64 noundef 1) #40
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88

bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #40, !noalias !1067, !inline_history !935
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.cx, align 8, !alias.scope !1068, !noundef !4 ; 2 uses
  %i.cy = icmp eq i64 %.val2.i, 0
  br i1 %i.cy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.cz, align 8, !alias.scope !1068, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #40
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88: ; preds = %bb.bd, %.body91
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.da) #38
          to label %common.resume145 unwind label %bb.bg, !inline_history !938

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECsEhZmuQNqkz_11ruff_linter.exit88
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !inline_history !938
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bf, %bb.be
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1069)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !1069, !nonnull !4, !noundef !4 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !1069, !noundef !4 ; 6 uses
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
          to label %bb.bh unwind label %bb.bj, !noalias !1069, !inline_history !941

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
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.dn) #38
          to label %bb.bi unwind label %bb.bk, !noalias !1069, !inline_history !941

bb.bk:                                            ; preds = %.lr.ph156
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !1069, !inline_history !941
  unreachable

.body.i:                                          ; preds = %bb.bi, %bb.bj
  %i.dp = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dp, i64 noundef 8) #40, !noalias !1069, !inline_history !942
  br label %common.resume145

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bh
  %i.dq = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dq, i64 noundef 8) #40, !noalias !1069, !inline_history !942
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bl:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1070)
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !1070, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(72) %i.ds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECsEhZmuQNqkz_11ruff_linter.exit unwind label %.body96, !noalias !1070, !inline_history !945

.body96:                                          ; preds = %bb.bl
  %i.dt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #40, !noalias !1070, !inline_history !945
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.du) #38
          to label %common.resume145 unwind label %bb.bm, !inline_history !946

bb.bm:                                            ; preds = %.body96
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !inline_history !946
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECsEhZmuQNqkz_11ruff_linter.exit: ; preds = %bb.bl
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #40, !noalias !1070, !inline_history !945
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.dw), !inline_history !946
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bn:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  %i.dy = load i64, ptr %i.dx, align 8, !range !28, !alias.scope !1074, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dy, -2
  br i1 %.not.i.i.i, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1075)
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !1076, !noundef !4 ; 2 uses
  %i.eb = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !1076, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #40, !noalias !1076
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.bu
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.bx:                                            ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !range !7, !alias.scope !1077, !noundef !4
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
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
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECsEhZmuQNqkz_11ruff_linter.exit.i.i.i: ; preds = %bb.cb
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ce:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1079)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.eq = load i64, ptr %i.ep, align 8, !range !7, !alias.scope !1081, !noundef !4
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !1081, !noundef !4 ; 2 uses
  %i.et = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.et, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !1081, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #40, !noalias !1081
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECsEhZmuQNqkz_11ruff_linter.exit

bb.ch:                                            ; preds = %bb.ce
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ep)
          to label %bb.cj unwind label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ev = landingpad { ptr, i32 }
          cleanup
end_hunk_2
begin_hunk_3_@_RNvNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules15repeated_append15repeated_append:bb.a
  br label %.thread15.thread37.i

bb.ap:                                            ; preds = %bb.ba
  unreachable

._crit_edge:                                      ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !6889
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2u_5slice4iter4IterNtNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules6refurb5rules15repeated_append6AppendENCNvB3C_15make_suggestion0EE9from_iterB3K_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %.val, ptr noundef nonnull %i.ek)
          to label %bb.aq unwind label %.thread.i20.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

bb.aq:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !6889
  store i32 -2, ptr %i.dd, align 8, !noalias !6889
  store i32 0, ptr %i.de, align 8, !noalias !6889
  store i32 0, ptr %i.df, align 4, !noalias !6889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !noalias !6889
  store i8 0, ptr %i.dg, align 1, !noalias !6889
  store i8 1, ptr %i.dh, align 4, !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !6889
  %i.ev = load ptr, ptr %.val, align 8, !noalias !6889, !nonnull !4, !align !6, !noundef !4 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = invoke noundef i32 @_RNvXsc_NtCskLngH8kgpZI_15ruff_python_ast10node_indexNtB5_15AtomicNodeIndexNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noundef nonnull align 4 %i.ew)
          to label %bb.ar unwind label %.thread28.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

.thread28.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.aq, %bb.at
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %.thread23.i

bb.ar:                                            ; preds = %bb.aq
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ez = load <2 x i32>, ptr %i.ey, align 8, !noalias !6889
  call void @llvm.experimental.noalias.scope.decl(metadata !6892)
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 15
  %i.fb = load i8, ptr %i.fa, align 1, !range !24, !alias.scope !6892, !noalias !6889, !noundef !4
  %i.fc = and i8 %i.fb, -2
  %switch.i.i = icmp eq i8 %i.fc, -48
  br i1 %switch.i.i, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  %.pn.i.i = load ptr, ptr %i.ev, align 8, !alias.scope !6892, !noalias !6889, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.pn.i.i, i64 -8
  %i.fd = atomicrmw add ptr %.sroa.0.0.i.i, i64 1 monotonic, align 8, !noalias !6893
  %i.fe = icmp slt i64 %i.fd, 0
  br i1 %i.fe, label %bb.at, label %bb.au, !prof !13

bb.at:                                            ; preds = %bb.as
  invoke void @_RNvNvMNtCsj8vhLppEnlJ_8char_str4reprNtB4_4Repr18make_shallow_clone18ref_count_overflow(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ev) #37
          to label %.noexc.i unwind label %.thread28.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

.noexc.i:                                         ; preds = %bb.at
  unreachable

bb.au:                                            ; preds = %bb.as, %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.di, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ev, i64 16, i1 false), !noalias !6889
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ev, i64 28
  %i.fg = load i8, ptr %i.ff, align 4, !range !17, !noalias !6889, !noundef !4
  store <2 x i32> %i.ez, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !6889
  store i32 %i.ex, ptr %.sroa.65.0..sroa_idx.i, align 8, !noalias !6889
  store i8 %i.fg, ptr %.sroa.76.0..sroa_idx.i, align 4, !noalias !6889
  store i32 28, ptr %i.l, align 8, !noalias !6889
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6894
  %i.fh = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 72, i64 noundef range(i64 1, 9) 8) #40, !noalias !6894 ; 4 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.av, label %bb.ay, !prof !46

bb.av:                                            ; preds = %bb.au
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc61.i unwind label %bb.aw, !noalias !6889

.noexc61.i:                                       ; preds = %bb.av
  unreachable

bb.aw:                                            ; preds = %bb.av
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.l) #38
          to label %.thread23.i unwind label %bb.ax, !noalias !6889

bb.ax:                                            ; preds = %bb.aw
  %i.fk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6889
  unreachable

bb.ay:                                            ; preds = %bb.au
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fh, ptr noundef nonnull align 8 dereferenceable(72) %i.l, i64 72, i1 false), !noalias !6889
  store ptr %i.fh, ptr %i.m, align 8, !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6889
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bb, %bb.ay, %bb.ba
  %lpad.loopexit.split-lp300 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.m) #38
          to label %.thread23.i unwind label %bb.bs, !noalias !6889

bb.az:                                            ; preds = %bb.ay
  %i.fl = load i64, ptr %i.c, align 8, !range !8, !noalias !6889, !noundef !4
  %i.fm = trunc nuw i64 %i.fl to i1
  %i.fn = load i64, ptr %i.dj, align 8, !range !12, !noalias !6889, !noundef !4 ; 3 uses
  br i1 %i.fm, label %bb.ba, label %bb.bb, !prof !13

bb.ba:                                            ; preds = %bb.az
  %i.fo = load i64, ptr %i.dk, align 8, !noalias !6889
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fn, i64 %i.fo) #37
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

bb.bb:                                            ; preds = %bb.az
  %i.fp = load ptr, ptr %i.dk, align 8, !noalias !6889, !nonnull !4, !noundef !4 ; 2 uses
  %i.fq = icmp samesign ugt i64 %i.fn, 5
  call void @llvm.assume(i1 %i.fq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.fp, ptr noundef nonnull align 1 dereferenceable(6) @214, i64 6, i1 false), !noalias !6889
  store i64 %i.fn, ptr %i.k, align 8, !noalias !6889
  store ptr %i.fp, ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !6889
  store i64 6, ptr %.sroa.640.0..sroa_idx.i, align 8, !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6889
  invoke fastcc void @_RNvXsq_NtCsj8vhLppEnlJ_8char_str8char_strNtB5_7CharStrINtNtCs4NRVxsYgnAr_4core7convert4FromNtNtCscdodAO9FK5_5alloc6string6StringE4from(ptr noalias noundef align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !6889

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !6889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !6889
  store i32 0, ptr %i.dl, align 8, !noalias !6889
  store i32 0, ptr %.sroa.01.sroa.4.0..sroa_idx.i, align 4, !noalias !6889
  store i32 -2, ptr %.sroa.01.sroa.6.0..sroa_idx.i, align 8, !noalias !6889
  store ptr %i.fh, ptr %.sroa.4.0..sroa_idx.i21, align 8, !noalias !6889
  store i32 0, ptr %.sroa.5.0..sroa_idx.i22, align 8, !noalias !6889
  store i32 0, ptr %.sroa.6.0..sroa_idx.i23, align 4, !noalias !6889
  store i32 -2, ptr %.sroa.7.0..sroa_idx.i24, align 8, !noalias !6889
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !noalias !6889
  store i32 25, ptr %i.i, align 8, !noalias !6889
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6895
  %i.fr = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 72, i64 noundef range(i64 1, 9) 8) #40, !noalias !6895 ; 4 uses
  %i.fs = icmp eq ptr %i.fr, null
  br i1 %i.fs, label %bb.bd, label %bb.bg, !prof !46

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc62.i unwind label %bb.be, !noalias !6889

.noexc62.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bd
  %i.ft = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #38
          to label %.thread23.i unwind label %bb.bf, !noalias !6889

bb.bf:                                            ; preds = %bb.be
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6889
  unreachable

bb.bg:                                            ; preds = %bb.bc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fr, ptr noundef nonnull align 8 dereferenceable(72) %i.i, i64 72, i1 false), !noalias !6889
  store ptr %i.fr, ptr %i.j, align 8, !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.427.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(40) %.sroa.427.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false), !noalias !6889
  store i32 30, ptr %i.g, align 8, !noalias !6889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.427.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.427.i, i64 44, i1 false), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.427.i)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6896
  %i.fv = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 72, i64 noundef range(i64 1, 9) 8) #40, !noalias !6896 ; 4 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.bh, label %bb.bk, !prof !46

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc64.i unwind label %bb.bi, !noalias !6889

.noexc64.i:                                       ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bh
  %i.fx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %.body.i unwind label %bb.bj, !noalias !6889

bb.bj:                                            ; preds = %bb.bi
  %i.fy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6889
  unreachable

.body.i:                                          ; preds = %bb.bl, %bb.bi
  %.pn.i = phi { ptr, i32 } [ %i.ga, %bb.bl ], [ %i.fx, %bb.bi ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(8) %i.j) #38
          to label %.thread15.thread37.i unwind label %bb.bs, !noalias !6889

bb.bk:                                            ; preds = %bb.bg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.fv, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false), !noalias !6889
  store ptr %i.fv, ptr %i.h, align 8, !noalias !6889
  store i64 1, ptr %i.dm, align 8, !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6889
  %i.fz = invoke noundef i64 @_RNvMs3_CsaSrGj5dYoxL_8thin_vecINtB5_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordE13with_capacityCsEhZmuQNqkz_11ruff_linter(i64 noundef 0)
          to label %_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB1C_7sources5empty5EmptyBH_EECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bl, !noalias !6889

bb.bl:                                            ; preds = %bb.bk
  %i.ga = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(16) %i.h) #38
          to label %.body.i unwind label %bb.bs, !noalias !6889

_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB1C_7sources5empty5EmptyBH_EECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6889
  store ptr %i.fr, ptr %i.dn, align 8, !noalias !6889
  store ptr %i.fv, ptr %.sroa.414.0..sroa_idx.i, align 8, !noalias !6889
  store i64 1, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !6889
  store i64 %i.fz, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !6889
  store i32 0, ptr %.sroa.414.sroa.6.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !6889
  store i32 0, ptr %.sroa.414.sroa.7.0..sroa.414.0..sroa_idx.sroa_idx.i, align 4, !noalias !6889
  store i32 -2, ptr %.sroa.414.sroa.8.0..sroa.414.0..sroa_idx.sroa_idx.i, align 8, !noalias !6889
  store i32 0, ptr %.sroa.515.0..sroa_idx.i, align 8, !noalias !6889
  store i32 0, ptr %.sroa.616.0..sroa_idx.i, align 4, !noalias !6889
  store i32 -2, ptr %.sroa.717.0..sroa_idx.i, align 8, !noalias !6889
  store i32 16, ptr %i.f, align 8, !noalias !6889
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !6897
  %i.gb = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 0, 81) 72, i64 noundef range(i64 1, 9) 8) #40, !noalias !6897 ; 3 uses
  %i.gc = icmp eq ptr %i.gb, null
  br i1 %i.gc, label %bb.bm, label %bb.bp, !prof !46

bb.bm:                                            ; preds = %_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB1C_7sources5empty5EmptyBH_EECsEhZmuQNqkz_11ruff_linter.exit.i
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #37
          to label %.noexc68.i unwind label %bb.bn, !noalias !6889

.noexc68.i:                                       ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bm
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.f) #38
          to label %.thread15.thread37.i unwind label %bb.bo, !noalias !6889

bb.bo:                                            ; preds = %bb.bn
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6889
  unreachable

bb.bp:                                            ; preds = %_RINvXst_CsaSrGj5dYoxL_8thin_vecINtB6_7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorBH_E9from_iterINtNtNtB1C_7sources5empty5EmptyBH_EECsEhZmuQNqkz_11ruff_linter.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gb, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6889
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i64 56, i1 false), !noalias !6898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6889
  store ptr %i.gb, ptr %i.d, align 8, !noalias !6889
  store i32 0, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !6889
  store i32 0, ptr %.sroa.532.0..sroa_idx.i, align 4, !noalias !6889
  store i32 -2, ptr %.sroa.633.0..sroa_idx.i, align 8, !noalias !6889
  store i8 21, ptr %i.do, align 4, !noalias !6889
  invoke void @_RNvMs0_NtCsjSXNr8pNfhj_19ruff_python_codegen9generatorNtB5_9Generator4stmt(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.al, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.e, ptr noundef nonnull align 8 %i.d)
          to label %bb.br unwind label %bb.bq, !noalias !6899

bb.bq:                                            ; preds = %bb.bp
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(88) %i.d) #38
          to label %.body25 unwind label %bb.bs, !noalias !6889

bb.br:                                            ; preds = %bb.bp
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4StmtECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(88) %i.d)
          to label %bb.bv unwind label %.split

bb.bs:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i, %.thread23.i, %bb.bq, %bb.bl, %.body.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body41

.body41:                                          ; preds = %bb.bt, %bb.bs
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6898
  unreachable

.thread23.i:                                      ; preds = %.thread28.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.be, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aw
  %.pn4514.i = phi { ptr, i32 } [ %i.fj, %bb.aw ], [ %i.ft, %bb.be ], [ %lpad.loopexit.split-lp300, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp297, %.thread28.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated9ExprTupleECsEhZmuQNqkz_11ruff_linter(ptr noalias noundef align 8 dereferenceable(40) %i.n) #38
          to label %.thread15.thread37.i unwind label %bb.bs, !noalias !6889

.thread15.thread37.i:                             ; preds = %.thread.i20.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.thread23.i, %bb.bn, %.body.i
  %.pn474.i = phi { ptr, i32 } [ %.pn4514.i, %.thread23.i ], [ %.pn.i, %.body.i ], [ %i.gd, %bb.bn ], [ %lpad.loopexit.split-lp295, %.thread.i20.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ak)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i unwind label %bb.bt, !noalias !6898

bb.bt:                                            ; preds = %.thread15.thread37.i
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ak)
          to label %.body41 unwind label %bb.bu, !noalias !6898

bb.bu:                                            ; preds = %bb.bt
  %i.gi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #39, !noalias !6898
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsEhZmuQNqkz_11ruff_linter.exit.i: ; preds = %.thread15.thread37.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ak)
          to label %.body25 unwind label %bb.bs

bb.bv:                                            ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !6889
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  %.val18 = load i64, ptr %i.dc, align 8, !noundef !4 ; 2 uses
  %i.gj = icmp ult i64 %.val18, 230584300921369396
  call void @llvm.assume(i1 %i.gj)
  %i.gk = icmp eq i64 %.val18, 0
  br i1 %i.gk, label %bb.bw, label %bb.by, !prof !13

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @90, i64 noundef 42, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #37
          to label %.noexc unwind label %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.bw
  unreachable

bb.bx:                                            ; preds = %.body30.thread
  br i1 %.sroa.01.2, label %.thread, label %.body25

.split:                                           ; preds = %bb.ai, %bb.br, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECsEhZmuQNqkz_11ruff_linter.exit.i, %bb.cx
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body25

bb.by:                                            ; preds = %bb.bv
  %.val17 = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.gl = load ptr, ptr %.val17, align 8, !nonnull !4, !align !6, !noundef !4 ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 15
  %i.gn = load i8, ptr %i.gm, align 1, !range !24, !alias.scope !6900, !noundef !4 ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !6900, !noundef !4
  %i.gq = and i64 %i.gp, 72057594037927935
  %i.gr = icmp ult i8 %i.gn, -48
  %i.gs = zext i8 %i.gn to i64
  %i.gt = add nsw i64 %i.gs, -192
  %spec.store.select.i.i = call i64 @llvm.umin.i64(i64 %i.gt, i64 16)
  %.sroa.0.0.i.i27 = select i1 %i.gr, i64 %spec.store.select.i.i, i64 %i.gq ; 5 uses
  %i.gu = icmp ugt i8 %i.gn, -49
  %i.gv = load ptr, ptr %i.gl, align 8, !alias.scope !6900
  %.sroa.01.0.i.i = select i1 %i.gu, ptr %i.gv, ptr %i.gl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsEhZmuQNqkz_11ruff_linter(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, i64 noundef %.sroa.0.0.i.i27, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bz unwind label %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.gw = load i64, ptr %i.ac, align 8, !range !8, !noundef !4
  %i.gx = trunc nuw i64 %i.gw to i1
  %i.gy = load i64, ptr %i.dp, align 8, !range !12, !noundef !4 ; 3 uses
  br i1 %i.gx, label %bb.ca, label %bb.cb, !prof !13

bb.ca:                                            ; preds = %bb.bz
  %i.gz = load i64, ptr %i.dq, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.gy, i64 %i.gz) #37
          to label %bb.dh unwind label %.loopexit.split-lp75.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bz
  %i.ha = load ptr, ptr %i.dq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.hb = icmp samesign ule i64 %.sroa.0.0.i.i27, %i.gy
  call void @llvm.assume(i1 %i.hb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %.not9 = icmp eq i64 %.sroa.0.0.i.i27, 0
  br i1 %.not9, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cd, %bb.cb
  store i64 %i.gy, ptr %i.ah, align 8
  store ptr %i.ha, ptr %.sroa.45.0..sroa_idx, align 8
  store i64 %.sroa.0.0.i.i27, ptr %.sroa.66.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al)
          to label %bb.cf unwind label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ha, ptr align 1 %.sroa.01.0.i.i, i64 %.sroa.0.0.i.i27, i1 false)
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cc
  %i.hc = landingpad { ptr, i32 }
          cleanup
end_hunk_3
