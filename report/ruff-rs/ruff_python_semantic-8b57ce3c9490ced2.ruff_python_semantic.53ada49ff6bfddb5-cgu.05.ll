inline.NumInlined: 139
inline.NumDeleted: 80
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic:bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3rev3RevINtCsheqz6YZvxwl_8smallvec8IntoIterARej4_EEECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !57, !noundef !9 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.b, align 8, !alias.scope !57
  %.not1.i.i = icmp eq i64 %.promoted.i.i, %i.d
  br i1 %.not1.i.i, label %_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterARej4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  store i64 %i.d, ptr %i.b, align 8, !alias.scope !57
  br label %_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterARej4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic.exit.i

_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterARej4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !60)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !66, !noundef !9 ; 2 uses
  %i.g = icmp ugt i64 %i.f, 4
  br i1 %i.g, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterARej4_EECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.b:                                             ; preds = %_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterARej4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  %i.h = load ptr, ptr %0, align 8, !alias.scope !66, !nonnull !9, !noundef !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !66, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !66
  store i64 %i.f, ptr %i.a, align 8, !noalias !66
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %i.k, align 8, !noalias !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.j, ptr %i.l, align 8, !noalias !66
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i unwind label %bb.c, !noalias !66

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i unwind label %bb.d, !noalias !66

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19, !noalias !66
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i: ; preds = %bb.b
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !66
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterARej4_EECs7bpTdHNYxeX_20ruff_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsheqz6YZvxwl_8smallvec8IntoIterARej4_EECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RNvXsG_Csheqz6YZvxwl_8smallvecINtB5_8IntoIterARej4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !9
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.c)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name13QualifiedNameECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !67, !noundef !9
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name20QualifiedNameBuilderECs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !alias.scope !70, !noundef !9
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXNtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB2_8ArrayVecReKj8_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.d

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecReENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name11SegmentsVecECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdj4_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !73, !noalias !76, !noundef !9 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !73, !noalias !76, !nonnull !9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !73, !noalias !76 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !78
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not42.i = icmp eq i64 %i.c, %i.m
  br i1 %.not42.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 2                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 2305843009213693951
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit.i, label %bb.p, !prof !81

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit.i
  %i.r = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit44.i, label %bb.p, !prof !81

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !78
  %i.s = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 4) #22, !noalias !78 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit44.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 2
  %i.u = tail call noundef align 4 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 4, i64 noundef %i.p) #22, !noalias !78 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit44.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit44.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !78
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !78
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !78
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 8 dereferenceable(24) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(24) %0, ptr nonnull align 4 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !78
  %i.y = icmp ult i64 %i.c, 2305843009213693952
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBH_.exit.i, label %bb.n, !prof !81

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !82
  store i64 0, ptr %i.a, align 8, !noalias !82
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !82
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBH_.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 4) #22, !noalias !78
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBJ_.exit44.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 4, i64 noundef %i.p) #21
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateNtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph7BlockIdEBH_.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph9Conditionj4_E21reserve_one_uncheckedBO_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !85, !noalias !88, !noundef !9 ; 4 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.e, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.b, i1 true)
  %i.f = lshr i64 -1, %i.e
  %.sroa.02.0 = select i1 %i.d, i64 0, i64 %i.f   ; 2 uses
  %i.g = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.g, label %bb.e, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.h = add nuw i64 %.sroa.02.0, 1
  %.not.i = icmp ult i64 %i.h, %i.b
  br i1 %.not.i, label %bb.d, label %_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph9Conditionj4_E8try_growBO_.exit, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !90
  unreachable

_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs7bpTdHNYxeX_20ruff_python_semantic3cfg5graph9Conditionj4_E8try_growBO_.exit: ; preds = %bb.c
  ret void

bb.e:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden void @_RNvMsd_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecARej4_E21reserve_one_uncheckedCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !93, !noalias !96, !noundef !9 ; 8 uses
  %i.d = icmp ugt i64 %i.c, 4
  %i.e = load ptr, ptr %0, align 8, !alias.scope !93, !noalias !96, !nonnull !9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !93, !noalias !96 ; 3 uses
  %.sink9.i = select i1 %i.d, i64 %i.g, i64 %i.c  ; 5 uses
  %i.h = icmp eq i64 %.sink9.i, -1
  br i1 %i.h, label %bb.q, label %bb.b, !prof !40

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %.sink9.i, 0
  %i.j = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.sink9.i, i1 true)
  %i.k = lshr i64 -1, %i.j
  %.sroa.02.0 = select i1 %i.i, i64 0, i64 %i.k   ; 4 uses
  %i.l = icmp eq i64 %.sroa.02.0, -1
  br i1 %i.l, label %bb.q, label %bb.c, !prof !40

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw i64 %.sroa.02.0, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.n = icmp ult i64 %i.c, 5                     ; 2 uses
  %.sink.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 2 uses
  %.not.i = icmp ult i64 %i.m, %.sink9.i
  br i1 %.not.i, label %bb.d, label %bb.e, !prof !40

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !98
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ult i64 %.sroa.02.0, 4
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not43.i = icmp eq i64 %i.c, %i.m
  br i1 %.not43.i, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %bb.m

bb.h:                                             ; preds = %bb.f
  %i.p = shl nuw nsw i64 %i.m, 4                  ; 3 uses
  %i.q = icmp ult i64 %.sroa.02.0, 576460752303423487
  br i1 %i.q, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i, label %bb.p, !prof !81

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.h
  br i1 %i.n, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  %i.r = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.r, label %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit45.i, label %bb.p, !prof !81

bb.j:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !98
  %i.s = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef %i.p, i64 noundef 8) #22, !noalias !98 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.o, label %bb.l

_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit45.i: ; preds = %bb.i
  %1 = shl nuw nsw i64 %.sink.i.i, 4
  %i.u = tail call noundef align 8 ptr @_RNvCs9wFQrvczXsK_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %1, i64 noundef 8, i64 noundef %i.p) #22, !noalias !98 ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.l, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit45.i
  %.sroa.030.0.i = phi ptr [ %i.s, %bb.l ], [ %i.u, %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit45.i ]
  store ptr %.sroa.030.0.i, ptr %0, align 8, !alias.scope !98
  store i64 %.sink9.i, ptr %i.f, align 8, !alias.scope !98
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !98
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.l:                                             ; preds = %bb.j
  %i.w = shl nuw nsw i64 %i.c, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 dereferenceable(72) %0, i64 %i.w, i1 false)
  br label %bb.k

bb.m:                                             ; preds = %bb.g
  %i.x = shl i64 %i.g, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(72) %0, ptr nonnull align 8 %i.e, i64 %i.x, i1 false)
  store i64 %i.g, ptr %i.b, align 8, !alias.scope !98
  %i.y = icmp ult i64 %i.c, 576460752303423488
  br i1 %i.y, label %_RINvCsheqz6YZvxwl_8smallvec10deallocateReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i, label %bb.n, !prof !81

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !101
  store i64 0, ptr %i.a, align 8, !noalias !101
  call void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #21, !noalias !101
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10deallocateReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i: ; preds = %bb.m
  %2 = shl nuw nsw i64 %.sink.i.i, 4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %2, i64 noundef 8) #22, !noalias !98
  br label %_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit

bb.o:                                             ; preds = %_RINvCsheqz6YZvxwl_8smallvec12layout_arrayReECs7bpTdHNYxeX_20ruff_python_semantic.exit45.i, %bb.j
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 -1, -9223372036854775807) 8, i64 noundef %i.p) #21
  unreachable

bb.p:                                             ; preds = %bb.i, %bb.h
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #21
  unreachable

_RINvCsheqz6YZvxwl_8smallvec10infallibleuECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %_RINvCsheqz6YZvxwl_8smallvec10deallocateReECs7bpTdHNYxeX_20ruff_python_semantic.exit.i, %bb.f, %bb.k, %bb.g
  ret void

bb.q:                                             ; preds = %bb.b, %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 17, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #21
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsr_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_13QualifiedName16from_dotted_name(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(144) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 14 uses
  %.sroa.513.i = alloca [24 x i8], align 8        ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 14 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [24 x i8], align 8          ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [144 x i8], align 8               ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %.sroa.863 = alloca [112 x i8], align 8         ; 4 uses
  %i.j = alloca [144 x i8], align 8               ; 4 uses
  %i.k = alloca [144 x i8], align 8               ; 18 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.a
  %i.l = phi i64 [ 0, %bb.a ], [ %i.aa, %.backedge.i.backedge ] ; 4 uses
  %i.m = sub nuw i64 %2, %i.l                     ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.l ; 2 uses
  %i.o = icmp samesign ult i64 %i.m, 16
  br i1 %i.o, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %.backedge.i
  %.not.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.backedge.i
  %i.p = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef 46, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef range(i64 0, -9223372036854775808) %i.m), !noalias !104
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

._crit_edge.i.i.i:                                ; preds = %bb.c, %.lr.ph.i.i.i, %.preheader.i.i.i
  %.sroa.01.0.lcssa.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ %i.m, %bb.c ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ 0, %.preheader.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i ]
  %i.q = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i, 0
  %i.r = insertvalue { i64, i64 } %i.q, i64 %.sroa.01.0.lcssa.i.i.i, 1
  br label %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.v, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.05.i.i.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !108, !noalias !104, !noundef !9
  %i.u = icmp eq i8 %i.t, 46
  br i1 %i.u, label %._crit_edge.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.v = add nuw nsw i64 %.sroa.01.05.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.merged.i.i.i = phi { i64, i64 } [ %i.r, %._crit_edge.i.i.i ], [ %i.p, %bb.b ] ; 2 uses
  %i.w = extractvalue { i64, i64 } %.merged.i.i.i, 0
  %i.x = trunc nuw i64 %i.w to i1
  br i1 %i.x, label %bb.d, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread

bb.d:                                             ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i
  %i.y = extractvalue { i64, i64 } %.merged.i.i.i, 1 ; 2 uses
  %i.z = add i64 %i.l, 1
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %.not13.i.i = icmp ugt i64 %i.aa, %2            ; 2 uses
  %i.ab = add i64 %i.y, %i.l                      ; 5 uses
  %or.cond.i.not.i = icmp ult i64 %i.ab, %2
  br i1 %or.cond.i.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %.not13.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread, label %.backedge.i.backedge

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %lhsc.i = load i8, ptr %i.ac, align 1, !alias.scope !113
  %i.ad = icmp eq i8 %lhsc.i, 46                  ; 2 uses
  %brmerge.i = or i1 %.not13.i.i, %i.ad
  br i1 %brmerge.i, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit, label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.f, %bb.e
  br label %.backedge.i

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit: ; preds = %bb.f
  br i1 %i.ad, label %bb.g, label %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread

bb.g:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXsz_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVecNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(address) dereferenceable(144) %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.k, ptr noundef nonnull align 8 dereferenceable(144) %i.j, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.ae = load i64, ptr %i.k, align 8, !range !6, !alias.scope !114, !noalias !117, !noundef !9
  %i.af = trunc nuw i64 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 21 uses
  br i1 %i.af, label %bb.l, label %bb.n

_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread: ; preds = %bb.e, %_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr6memchr.exit.i.i, %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.863)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 0, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 %2, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !119
  call void @_RNvXs4_NtCs5FdkxsZ6Z9m_8arrayvec8arrayvecINtB5_8ArrayVecReKj8_EINtNtCs4NRVxsYgnAr_4core7convert7TryFromRSBS_E8try_fromCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull sret([144 x i8]) align 8 captures(none) dereferenceable(144) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.i, i64 noundef 2), !noalias !123
  %i.ak = load i64, ptr %i.h, align 8, !range !6, !noalias !119, !noundef !9
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !119
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7bpTdHNYxeX_20ruff_python_semantic(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef 2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !123
  %i.am = load i64, ptr %i.g, align 8, !range !6, !noalias !119, !noundef !9
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !39, !noalias !119, !noundef !9 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.an, label %bb.j, label %bb.k, !prof !40

bb.i:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core3stre4findcECs7bpTdHNYxeX_20ruff_python_semantic.exit.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.461.8.copyload = load i64, ptr %i.ar, align 8, !noalias !124
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.8.copyload = load ptr, ptr %.sroa.6.8..sroa_idx, align 8, !noalias !124
  %.sroa.762.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.762.8.copyload = load i64, ptr %.sroa.762.8..sroa_idx, align 8, !noalias !124
  %.sroa.863.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.863, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.863.8..sroa_idx, i64 112, i1 false), !noalias !124
  br label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit

bb.j:                                             ; preds = %bb.h
  %i.as = load i64, ptr %i.aq, align 8, !noalias !119
  call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.as) #21, !noalias !123
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.aq, align 8, !noalias !119, !nonnull !9, !noundef !9 ; 2 uses
  %i.au = icmp samesign ugt i64 %i.ap, 1
  call void @llvm.assume(i1 %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !123
  br label %_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit

_RNvMsy_NtCskLngH8kgpZI_15ruff_python_ast4nameNtB5_11SegmentsVec10from_slice.exit: ; preds = %bb.i, %bb.k
  %.sroa.461.0 = phi i64 [ %i.ap, %bb.k ], [ %.sroa.461.8.copyload, %bb.i ]
  %.sroa.6.0 = phi ptr [ %i.at, %bb.k ], [ %.sroa.6.8.copyload, %bb.i ]
  %.sroa.762.0 = phi i64 [ 2, %bb.k ], [ %.sroa.762.8.copyload, %bb.i ]
  %storemerge.i = phi i64 [ 1, %bb.k ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !119
  store i64 %storemerge.i, ptr %0, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.461.0, ptr %.sroa.461.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.762.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.762.0, ptr %.sroa.762.0..sroa_idx, align 8
  %.sroa.863.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.863.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.863, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.863)
  br label %bb.ba

.loopexit:                                        ; preds = %bb.ah
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %select.unfold.i
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %.split67.i, %bb.af, %bb.o, %bb.n, %bb.m, %bb.ae
  %lpad.loopexit.split-lp79 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i25, %bb.ay, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i ], [ %i.fa, %bb.ay ], [ %i.ck, %bb.z ], [ %eh.lpad-body.i26, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecReEECs7bpTdHNYxeX_20ruff_python_semantic.exit.i.i.i25 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit78, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp79, %.loopexit.split-lp.loopexit.split-lp ]
end_hunk_0
