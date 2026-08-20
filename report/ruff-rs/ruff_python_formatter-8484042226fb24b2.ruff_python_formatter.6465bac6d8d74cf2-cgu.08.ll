inline.NumInlined: 680
inline.NumDeleted: 347
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageEECs8CpBcHC8tKo_21ruff_python_formatter:bb.a
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs7Ma6rQP8bRy_14ruff_formatter14format_element13FormatElementEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder5error7context12ContextValueEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1v_4SyncEL_EECs8CpBcHC8tKo_21ruff_python_formatter(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !16 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !297, !invariant.load !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !298, !invariant.load !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !297, !invariant.load !16 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !298, !invariant.load !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtCs4NRVxsYgnAr_4core5error5ErrorNtNtBL_6marker4SendNtB1i_4SyncEL_ENtNtNtBL_3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 72, i64 noundef 8) #22
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit4, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !inline_history !346

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
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
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #24
          to label %bb.c unwind label %bb.e, !inline_history !346

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !inline_history !346
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #22
  resume { ptr, i32 } %i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  %i.n = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.n, i64 noundef 8) #22
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit4

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit4: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxeEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #22
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc6borrow3CoweEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !81, !noundef !16
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscvBHLZPbXnS_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !353
  %.sroa.06.0.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !353 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !353
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !353 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !353
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !353
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !353
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !353
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !353
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !353
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %bb.b
  %.sink1.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]  ; 2 uses
  %.sroa.58.0.copyload.i.sink.i = phi i64 [ %.sroa.58.0.copyload.i.i, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink1.i, ptr %i.a, align 8, !noalias !353
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink1.i, ptr %i.b, align 8, !noalias !353
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.i.sink.i, ptr %i.c, align 8, !noalias !353
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.a), !noalias !353, !inline_history !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !353
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs2AWtUsOyxgP_3std4sync9once_lock8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load i32, ptr %i.a, align 8, !alias.scope !355, !noundef !16
  switch i32 %.val.i, label %bb.b [
    i32 3, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit
    i32 2, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit
    i32 0, label %bb.c
  ], !prof !358

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23, !noalias !355
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.b, align 8, !alias.scope !362, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %.val1.i.i, 0
  br i1 %i.c, label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !362, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #22, !noalias !362
  br label %_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit

_RNvXs9_NtNtCs2AWtUsOyxgP_3std4sync9once_lockINtB5_8OnceLockINtNtCscdodAO9FK5_5alloc5boxed3BoxeEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map8IntoIterNtNtBK_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !363
  call fastcc void @_RNvMsz_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE10dying_nextCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(72) %0), !inline_history !366
  %i.c = load ptr, ptr %i.b, align 8, !noalias !363, !noundef !16 ; 2 uses
  %.not.i10 = icmp eq ptr %i.c, null
  br i1 %.not.i10, label %_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs8CpBcHC8tKo_21ruff_python_formatter.exit
  %i.d = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %_RNvMsT_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueNtB1l_14LeafOrInternalENtB1l_2KVE12drop_key_valCs8CpBcHC8tKo_21ruff_python_formatter.exit ] ; 2 uses
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !noalias !363 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !363
  store ptr %0, ptr %i.a, align 8, !noalias !363
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.42.0.copyload ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %.sroa.42.0.copyload ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i unwind label %bb.c, !noalias !367, !inline_history !370

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body.i unwind label %bb.d, !noalias !367, !inline_history !370

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECs8CpBcHC8tKo_21ruff_python_formatter:bb.a
  %i.b = load i8, ptr %i.a, align 1, !range !321, !alias.scope !422, !noundef !16
  %i.c = and i8 %i.b, -2
  %switch.i.i.i = icmp eq i8 %i.c, -48
  br i1 %switch.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423)
  %.pn.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !426, !nonnull !16, !noundef !16
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i, i64 -8
  %i.d = atomicrmw sub ptr %.sroa.0.0.i.i.i.i, i64 1 release, align 8, !noalias !426
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs8CpBcHC8tKo_21ruff_python_formatter.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsj8vhLppEnlJ_8char_str8char_str7CharStrECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 23
  %i.c = load i8, ptr %i.b, align 1, !range !321, !alias.scope !439, !noundef !16
  %i.d = and i8 %i.c, -2
  %switch.i.i.i.i = icmp eq i8 %i.d, -48
  br i1 %switch.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  %.pn.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !443, !nonnull !16, !noundef !16
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i, i64 -8
  %i.e = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i, i64 1 release, align 8, !noalias !443
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECs8CpBcHC8tKo_21ruff_python_formatter.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast4name4NameECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10ParametersECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !alias.scope !444, !nonnull !16, !noundef !16
  %i.b = icmp eq ptr %i.a, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !449, !nonnull !16, !noundef !16
  %i.f = icmp eq ptr %i.e, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.f, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7 unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !454, !nonnull !16, !noundef !16
  %i.i = icmp eq ptr %i.h, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit9, label %bb.e, !prof !28

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit9 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7: ; preds = %bb.c, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.c, %bb.d ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j) #24
          to label %.body unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit9: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !459)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !459, !align !299, !noundef !16 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit9
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i unwind label %bb.h, !noalias !462, !inline_history !465

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 56, i64 noundef 8) #22, !noalias !462
  br label %.body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef 56, i64 noundef 8) #22, !noalias !462
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit

.body:                                            ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7
  %.pn2 = phi { ptr, i32 } [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7 ], [ %i.o, %bb.h ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !466, !nonnull !16, !noundef !16
  %i.r = icmp eq ptr %i.q, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.r, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11, label %bb.i, !prof !28

bb.i:                                             ; preds = %.body
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11 unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !471, !nonnull !16, !noundef !16
  %i.u = icmp eq ptr %i.t, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit13, label %bb.j, !prof !28

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit13 unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11: ; preds = %.body, %bb.i, %bb.k
  %.pn4 = phi { ptr, i32 } [ %i.w, %bb.k ], [ %.pn2, %bb.i ], [ %.pn2, %.body ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v) #24
          to label %common.resume unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit13: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit, %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !476)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !476, !align !299, !noundef !16 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit17, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit13
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(56) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i15 unwind label %bb.m, !noalias !479, !inline_history !465

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.m ], [ %.pn4, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11 ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 56, i64 noundef 8) #22, !noalias !479
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i15: ; preds = %bb.l
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef 56, i64 noundef 8) #22, !noalias !479
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit17

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEEECs8CpBcHC8tKo_21ruff_python_formatter.exit17: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit13, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i15
  ret void

bb.n:                                             ; preds = %bb.i, %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit11, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes20ParameterWithDefaultEECs8CpBcHC8tKo_21ruff_python_formatter.exit7
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !482)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !482, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !482, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.c, 0
  br i1 %cond, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %i.c
  br i1 %i.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.a, i64 %.sroa.0.0.i5
  %i.f = add nuw i64 %.sroa.0.0.i5, 1             ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.b unwind label %bb.d, !noalias !482, !inline_history !485

bb.c:                                             ; preds = %.lr.ph7
  %i.g = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
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
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.k) #24
          to label %bb.c unwind label %bb.e, !noalias !482, !inline_history !485

bb.e:                                             ; preds = %.lr.ph7
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !482, !inline_history !485
  unreachable

.body3:                                           ; preds = %bb.c, %bb.d
  %i.m = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.m, i64 noundef 8) #22, !noalias !482
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !486, !nonnull !16, !noundef !16
  %i.p = icmp eq ptr %i.o, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.f, !prof !28

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b
  %i.q = mul nuw nsw i64 %i.c, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, 0) %i.q, i64 noundef 8) #22, !noalias !482
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.f:                                             ; preds = %.body3
  invoke void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.h

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !491, !nonnull !16, !noundef !16
  %i.t = icmp eq ptr %i.s, @_RNvCsaSrGj5dYoxL_8thin_vec12EMPTY_HEADER
  br i1 %i.t, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECs8CpBcHC8tKo_21ruff_python_formatter.exit1, label %bb.g, !prof !28

bb.g:                                             ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit
  tail call void @_RINvCsaSrGj5dYoxL_8thin_vec18drop_non_singletonNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEBN_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECs8CpBcHC8tKo_21ruff_python_formatter.exit1

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECs8CpBcHC8tKo_21ruff_python_formatter.exit1: ; preds = %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtCsaSrGj5dYoxL_8thin_vec7ThinVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7KeywordEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %.body3, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ParameterECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !496)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !499)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !505)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !508)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 39
  %i.c = load i8, ptr %i.b, align 1, !range !321, !alias.scope !511, !noundef !16
  %i.d = and i8 %i.c, -2
  %switch.i.i.i.i.i = icmp eq i8 %i.d, -48
  br i1 %switch.i.i.i.i.i, label %bb.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !512)
  %.pn.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !515, !nonnull !16, !noundef !16
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  %i.e = atomicrmw sub ptr %.sroa.0.0.i.i.i.i.i.i, i64 1 release, align 8, !noalias !515
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter.exit, !prof !6

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvMNtNtCsj8vhLppEnlJ_8char_str4repr11heap_bufferNtB2_10HeapBuffer22dealloc_last_reference(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !516, !align !299, !noundef !16
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %common.resume unwind label %bb.h, !inline_history !519

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.b, %bb.a, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !520, !align !299, !noundef !16 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECs8CpBcHC8tKo_21ruff_python_formatter.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.g, !noalias !523, !inline_history !526

common.resume:                                    ; preds = %bb.e, %bb.d, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.g, %bb.d ], [ %i.g, %bb.e ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 72, i64 noundef 8) #22, !noalias !523, !inline_history !526
  br label %common.resume

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.f
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 72, i64 noundef 8) #22, !noalias !523, !inline_history !526
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECs8CpBcHC8tKo_21ruff_python_formatter.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECs8CpBcHC8tKo_21ruff_python_formatter.exit2: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes10IdentifierECs8CpBcHC8tKo_21ruff_python_formatter.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  ret void

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !527, !noundef !16
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
    i32 22, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit
    i32 23, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit
    i32 24, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit
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
  %.val1 = load i64, ptr %i.b, align 8, !alias.scope !528, !noundef !16 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #22, !noalias !531
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated10ExprBoolOpECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %common.resume145 unwind label %bb.f
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter:bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !596, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.bv)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %bb.an, !noalias !596, !inline_history !599

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #22, !noalias !596, !inline_history !599
  br label %.body64

.body64:                                          ; preds = %bb.an, %.body69
  %.pn.i3 = phi { ptr, i32 } [ %i.bs, %.body69 ], [ %i.bw, %bb.an ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo) #24
          to label %common.resume145 unwind label %bb.ao, !inline_history !595

bb.ao:                                            ; preds = %.body64, %.body69
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !inline_history !595
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef 72, i64 noundef 8) #22, !noalias !596, !inline_history !599
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter.exit61 unwind label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECs8CpBcHC8tKo_21ruff_python_formatter.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
          to label %common.resume145 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter.exit61: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated12ExprDictCompECs8CpBcHC8tKo_21ruff_python_formatter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.bo)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.ar:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !600, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.cc)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %.body75, !noalias !600, !inline_history !603

.body75:                                          ; preds = %bb.ar
  %i.cd = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #22, !noalias !600, !inline_history !603
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca) #24
          to label %common.resume145 unwind label %bb.as, !inline_history !604

bb.as:                                            ; preds = %.body75
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !inline_history !604
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.ar
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cc, i64 noundef 72, i64 noundef 8) #22, !noalias !600, !inline_history !603
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter.exit72 unwind label %bb.at

bb.at:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECs8CpBcHC8tKo_21ruff_python_formatter.exit
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
          to label %common.resume145 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionEECs8CpBcHC8tKo_21ruff_python_formatter.exit72: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated13ExprGeneratorECs8CpBcHC8tKo_21ruff_python_formatter.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13ComprehensionENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ca)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.av:                                            ; preds = %bb.a
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !605)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !605, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.ci)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit80 unwind label %bb.aw, !noalias !605, !inline_history !608

bb.aw:                                            ; preds = %bb.av
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit80: ; preds = %bb.av
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ci, i64 noundef 72, i64 noundef 8) #22, !noalias !605, !inline_history !608
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.ax:                                            ; preds = %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %i.cl = load ptr, ptr %i.ck, align 8, !alias.scope !609, !align !299, !noundef !16 ; 4 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.cl)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i82 unwind label %bb.az, !noalias !612, !inline_history !615

bb.az:                                            ; preds = %bb.ay
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i82: ; preds = %bb.ay
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cl, i64 noundef 72, i64 noundef 8) #22, !noalias !612, !inline_history !616
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.ba:                                            ; preds = %bb.a
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !617)
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !617, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.cp)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit87 unwind label %bb.bb, !noalias !617, !inline_history !620

bb.bb:                                            ; preds = %bb.ba
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter.exit87: ; preds = %bb.ba
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cp, i64 noundef 72, i64 noundef 8) #22, !noalias !617, !inline_history !620
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.bc:                                            ; preds = %bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.cs = load ptr, ptr %i.cr, align 8, !alias.scope !621, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.cs)
          to label %bb.be unwind label %.body91, !noalias !621, !inline_history !624

.body91:                                          ; preds = %bb.bc
  %i.ct = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #22, !noalias !621, !inline_history !624
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4.i = load i64, ptr %i.cu, align 8, !alias.scope !625, !noundef !16 ; 2 uses
  %i.cv = icmp eq i64 %.val4.i, 0
  br i1 %i.cv, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECs8CpBcHC8tKo_21ruff_python_formatter.exit88, label %bb.bd

bb.bd:                                            ; preds = %.body91
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3.i = load ptr, ptr %i.cw, align 8, !alias.scope !625, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef range(i64 1, 0) %.val4.i, i64 noundef 1) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECs8CpBcHC8tKo_21ruff_python_formatter.exit88

bb.be:                                            ; preds = %bb.bc
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cs, i64 noundef 72, i64 noundef 8) #22, !noalias !621, !inline_history !624
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load i64, ptr %i.cx, align 8, !alias.scope !625, !noundef !16 ; 2 uses
  %i.cy = icmp eq i64 %.val2.i, 0
  br i1 %i.cy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.cz, align 8, !alias.scope !625, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #22
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECs8CpBcHC8tKo_21ruff_python_formatter.exit88: ; preds = %bb.bd, %.body91
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.da) #24
          to label %common.resume145 unwind label %bb.bg, !inline_history !628

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxSNtNtCskLngH8kgpZI_15ruff_python_ast5nodes5CmpOpEECs8CpBcHC8tKo_21ruff_python_formatter.exit88
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !inline_history !628
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.bf, %bb.be
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !629)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !629, !nonnull !16, !noundef !16 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !629, !noundef !16 ; 6 uses
  %cond = icmp eq i64 %i.df, 0
  br i1 %cond, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.lr.ph

bb.bh:                                            ; preds = %.lr.ph
  %i.dg = icmp eq i64 %i.di, %i.df
  br i1 %i.dg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECs8CpBcHC8tKo_21ruff_python_formatter.exit, %bb.bh
  %.sroa.0.0.i.i154 = phi i64 [ %i.di, %bb.bh ], [ 0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated11ExprCompareECs8CpBcHC8tKo_21ruff_python_formatter.exit ] ; 2 uses
  %i.dh = getelementptr inbounds nuw [72 x i8], ptr %i.dd, i64 %.sroa.0.0.i.i154
  %i.di = add nuw i64 %.sroa.0.0.i.i154, 1        ; 4 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.dh)
          to label %bb.bh unwind label %bb.bj, !noalias !629, !inline_history !632

bb.bi:                                            ; preds = %.lr.ph156
  %i.dj = add i64 %.sroa.0.1.i.i155, 1            ; 2 uses
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
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.dn) #24
          to label %bb.bi unwind label %bb.bk, !noalias !629, !inline_history !632

bb.bk:                                            ; preds = %.lr.ph156
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !629, !inline_history !632
  unreachable

.body.i:                                          ; preds = %bb.bi, %bb.bj
  %i.dp = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dp, i64 noundef 8) #22, !noalias !629, !inline_history !633
  br label %common.resume145

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueSNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter.exit.i: ; preds = %bb.bh
  %i.dq = mul nuw nsw i64 %i.df, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dd, i64 noundef range(i64 1, 0) %i.dq, i64 noundef 8) #22, !noalias !629, !inline_history !633
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.bl:                                            ; preds = %bb.a
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !634, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated4ExprECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(72) %i.ds)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECs8CpBcHC8tKo_21ruff_python_formatter.exit unwind label %.body96, !noalias !634, !inline_history !637

.body96:                                          ; preds = %bb.bl
  %i.dt = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #22, !noalias !634, !inline_history !637
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(40) %i.du) #24
          to label %common.resume145 unwind label %bb.bm, !inline_history !638

bb.bm:                                            ; preds = %.body96
  %i.dv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !inline_history !638
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated8ExprCallECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.bl
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ds, i64 noundef 72, i64 noundef 8) #22, !noalias !634, !inline_history !637
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes9ArgumentsECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(40) %i.dw), !inline_history !638
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.bn:                                            ; preds = %bb.a
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645)
  %i.dy = load i64, ptr %i.dx, align 8, !range !344, !alias.scope !648, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.dy, -2
  br i1 %.not.i.i.i, label %bb.bu, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649)
  %i.dz = icmp eq i64 %i.dy, -1
  br i1 %i.dz, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.ea, align 8, !alias.scope !652, !noundef !16 ; 2 uses
  %i.eb = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.eb, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ec, align 8, !alias.scope !655, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #22, !noalias !656
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.br:                                            ; preds = %bb.bo
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
          to label %common.resume145 unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7FStringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i: ; preds = %bb.br
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.dx)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.bu:                                            ; preds = %bb.bn
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
          to label %common.resume145 unwind label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %bb.bu
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes11FStringPartENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ef)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.bx:                                            ; preds = %bb.a
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ej = load i64, ptr %i.ei, align 8, !range !81, !alias.scope !659, !noundef !16
  %.not.i.i.i5 = icmp eq i64 %i.ej, -1
  br i1 %.not.i.i.i5, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %bb.bx
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i unwind label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ek = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
          to label %common.resume145 unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %bb.by
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast9generated25InterpolatedStringElementENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ei)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.cb:                                            ; preds = %bb.bx
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
          to label %common.resume145 unwind label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i: ; preds = %bb.cb
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes7TStringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.em)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.ce:                                            ; preds = %bb.a
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.eq = load i64, ptr %i.ep, align 8, !range !81, !alias.scope !675, !noundef !16
  %i.er = icmp eq i64 %i.eq, -1
  br i1 %i.er, label %bb.cf, label %bb.ch

bb.cf:                                            ; preds = %bb.ce
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.es, align 8, !alias.scope !676, !noundef !16 ; 2 uses
  %i.et = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.et, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.eu, align 8, !alias.scope !675, !nonnull !16, !noundef !16
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #22, !noalias !679
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCskLngH8kgpZI_15ruff_python_ast9generated20ExprIpyEscapeCommandECs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.ch:                                            ; preds = %bb.ce
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCskLngH8kgpZI_15ruff_python_ast5nodes13StringLiteralENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.ep)
end_hunk_2
begin_hunk_3_@_RNvMNtCsdjW2DEjcQy2_12clap_builder5errorNtB2_5Error8with_cmdCs8CpBcHC8tKo_21ruff_python_formatter:bb.a
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ar, %bb.k ], [ %i.ap, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !850
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorECs8CpBcHC8tKo_21ruff_python_formatter(ptr nonnull align 8 %0) #24
          to label %.body unwind label %bb.l, !noalias !843

bb.l:                                             ; preds = %.body.i
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !843
  unreachable

bb.m:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !850
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %0

.body:                                            ; preds = %.body.i, %bb.b, %bb.n
  %.pn = phi { ptr, i32 } [ %i.at, %bb.n ], [ %i.e, %bb.b ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error5ErrorECs8CpBcHC8tKo_21ruff_python_formatter(ptr %0) #24
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.n
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE15bulk_steal_leftCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 362 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !16
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 362 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !16
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 51, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 3 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr nonnull align 8 %i.h, i64 %i.r, i1 false), !alias.scope !851
  %i.s = add nuw nsw i64 %i.n, 1                  ; 3 uses
  %i.t = sub nuw nsw i64 %i.f, %i.s               ; 3 uses
  %i.u = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !857)
  %i.v = icmp eq i64 %i.t, %i.u
  br i1 %i.v, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23, !noalias !859
  unreachable

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %bb.e
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.s
  %i.x = shl nuw nsw i64 %i.t, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull readonly align 8 %i.w, i64 %i.x, i1 false), !alias.scope !859
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  %.val18 = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.z, align 8, !noundef !16
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %.val18, i64 %.val19 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 32, i1 false)
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !16
  %i.ae = icmp eq i64 %i.ad, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ag = load i64, ptr %i.af, align 8, !noundef !16
  %i.ah = icmp eq i64 %i.ag, 0                    ; 2 uses
  br i1 %i.ae, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8CpBcHC8tKo_21ruff_python_formatter.exit
  br i1 %i.ah, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.j, !prof !28

bb.h:                                             ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node13move_to_sliceNtNtB4_7set_val9SetValZSTECs8CpBcHC8tKo_21ruff_python_formatter.exit
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !6

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.bq, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ai, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ai = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.0.06.i.epil
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 352
  store ptr %i.h, ptr %i.al, align 8
  %i.am = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 360
  store i16 %i.am, ptr %i.an, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit, label %bb.i, !llvm.loop !860

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @32) #23
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 368 ; 8 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %1
  %i.aq = shl nuw nsw i64 %i.k, 3
  %i.ar = add nuw nsw i64 %i.aq, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull align 8 dereferenceable(1) %i.ao, i64 %i.ar, i1 false), !alias.scope !861
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.s
  %i.au = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.at, i64 %i.au, i1 false), !alias.scope !864
  %i.av = add nuw nsw i64 %1, %i.k
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %xtraiter = and i64 %i.aw, 3                    ; 3 uses
  %i.ax = icmp samesign ult i64 %i.l, 3
  br i1 %i.ax, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.aw, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.bq, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.ay = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %.sroa.0.06.i
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 352
  store ptr %i.h, ptr %i.bb, align 8
  %i.bc = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 360
  store i16 %i.bc, ptr %i.bd, align 8
  %i.be = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ay
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 352
  store ptr %i.h, ptr %i.bh, align 8
  %i.bi = trunc nuw nsw i64 %i.ay to i16
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 360
  store i16 %i.bi, ptr %i.bj, align 8
  %i.bk = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.be
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 352
  store ptr %i.h, ptr %i.bn, align 8
  %i.bo = trunc nuw nsw i64 %i.be to i16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 360
  store i16 %i.bo, ptr %i.bp, align 8
  %i.bq = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bk
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 352
  store ptr %i.h, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bk to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 360
  store i16 %i.bu, ptr %i.bv, align 8
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTE16bulk_steal_rightCs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !16, !noundef !16 ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 362 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !16 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 11 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 362 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !16
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !28

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 50, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !6

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #23
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  %.val21 = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.s, align 8, !noundef !16
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %.val21, i64 %.val22 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.v = add nuw nsw i64 %i.f, 1                  ; 4 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.v
  %i.x = shl nuw nsw i64 %i.q, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.w, ptr nonnull readonly align 8 %i.h, i64 %i.x, i1 false), !alias.scope !868
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.z = shl nuw nsw i64 %i.n, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.y, i64 %i.z, i1 false), !alias.scope !872
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !16
  %i.ac = icmp eq i64 %i.ab, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !16
  %i.af = icmp eq i64 %i.ae, 0                    ; 2 uses
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.af, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25, label %bb.h, !prof !28

bb.g:                                             ; preds = %bb.e
  br i1 %i.af, label %bb.h, label %bb.i, !prof !6

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader ], [ %i.cx, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ag, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil ], [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil.preheader ]
  %i.ag = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ah = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.0.06.i23.epil
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 352
  store ptr %i.h, ptr %i.ak, align 8
  %i.al = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 360
  store i16 %i.al, ptr %i.am, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil, !llvm.loop !875

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 368 ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 368 ; 6 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.v
  %i.aq = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.an, i64 %i.aq, i1 false), !alias.scope !876
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %1
  %i.as = shl nuw nsw i64 %i.n, 3
  %i.at = add nuw nsw i64 %i.as, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.an, ptr noundef nonnull align 8 dereferenceable(1) %i.ar, i64 %i.at, i1 false), !alias.scope !880
  %i.au = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.v
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 352
  store ptr %i.c, ptr %i.ax, align 8
  %i.ay = trunc nuw nsw i64 %i.v to i16
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 360
  store i16 %i.ay, ptr %i.az, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bb = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bb)
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ba
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 352
  store ptr %i.c, ptr %i.be, align 8
  %i.bf = trunc nuw nsw i64 %i.ba to i16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 360
  store i16 %i.bf, ptr %i.bg, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bi = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bh
  %i.bk = load ptr, ptr %i.bj, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 352
  store ptr %i.c, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %i.bh to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 360
  store i16 %i.bm, ptr %i.bn, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bo = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bp = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 352
  store ptr %i.c, ptr %i.bs, align 8
  %i.bt = trunc nuw nsw i64 %i.bo to i16
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 360
  store i16 %i.bt, ptr %i.bu, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bv = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.bw = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.bw)
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.bv
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 352
  store ptr %i.c, ptr %i.bz, align 8
  %i.ca = trunc nuw nsw i64 %i.bv to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 360
  store i16 %i.ca, ptr %i.cb, align 8
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cc = add nuw nsw i64 %i.k, 1
  %i.cd = sub nsw i64 %i.cc, %1                   ; 2 uses
  %xtraiter = and i64 %i.cd, 3                    ; 3 uses
  %i.ce = icmp samesign ult i64 %i.n, 3
  br i1 %i.ce, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.epil.preheader, label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader.new

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader
  %unroll_iter = and i64 %i.cd, -4
  br label %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit

_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit: ; preds = %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader.new ], [ %i.cx, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCscdodAO9FK5_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB8_7set_val9SetValZSTNtB19_8InternalE30correct_childrens_parent_linksINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs8CpBcHC8tKo_21ruff_python_formatter.exit ]
  %i.cf = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.sroa.0.06.i23
end_hunk_3
begin_hunk_4_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueE6insertCs8CpBcHC8tKo_21ruff_python_formatter:bb.a
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cy, ptr nonnull align 8 %i.cx, i64 %i.cz, i1 false), !alias.scope !972, !noalias !974
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ai, %bb.ah
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !975
  unreachable

.thread.i.i:                                      ; preds = %bb.r, %bb.q
  %i.db = add nuw nsw i16 %i.bd, 1
  %i.dc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.13.0, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !976, !noalias !977
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i16 %i.db, ptr %i.bc, align 2, !noalias !977
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !910
  br label %bb.al

bb.ah:                                            ; preds = %bb.ac, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.ce, %.thread.i.i.i.i ], [ %i.cg, %bb.ac ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m) #24
          to label %bb.ai unwind label %bb.ag, !noalias !978

bb.ai:                                            ; preds = %bb.ah
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #24
          to label %.thread unwind label %bb.ag, !noalias !975

bb.aj:                                            ; preds = %bb.af, %bb.ae
  %i.dd = add i16 %i.cp, 1
  %i.de = getelementptr inbounds nuw [32 x i8], ptr %spec.select31.i.i.i, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.de, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.f, i64 32, i1 false), !alias.scope !979, !noalias !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i16 %i.dd, ptr %i.co, align 2, !noalias !958
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.426.i.i, i64 48, i1 false), !noalias !980
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.426.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !910
  %.not.i.i = icmp eq i64 %.sroa.025.0.copyload.i.i, -1
  br i1 %.not.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7245.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7245.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i.i, i64 48, i1 false), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.13.0, i64 352
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !981, !noundef !16 ; 2 uses
  %.not.i145.i.i = icmp eq ptr %i.dg, null
  br i1 %.not.i145.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ak
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7245.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7245.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.7245.i.i, i64 16 ; 5 uses
  br label %bb.bb

bb.al:                                            ; preds = %bb.aj, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.co

._crit_edge.i.i:                                  ; preds = %bb.cj, %bb.ak
  %.sroa.0.0.i.i10 = phi i64 [ %.sroa.025.0.copyload.i.i, %bb.ak ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cj ]
  %.lcssa137.i.i = phi i64 [ 0, %bb.ak ], [ %i.eg, %bb.cj ] ; 3 uses
  %.lcssa129.i.i = phi ptr [ %i.br, %bb.ak ], [ %i.gv, %bb.cj ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.13.0, %bb.ak ], [ %i.ec, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !910
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7245.i.i, i64 48, i1 false), !noalias !910
  store i64 %.sroa.0.0.i.i10, ptr %i.j, align 8, !noalias !910
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !910
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 %.lcssa137.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !910
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr %.lcssa129.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !910
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  store i64 %.lcssa137.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !910
  %i.di = load ptr, ptr %1, align 8, !noalias !984, !noundef !16 ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.not.i23.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i23.i.i, label %bb.am, label %bb.ao, !prof !6

bb.am:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.an unwind label %bb.ay, !noalias !984

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !987)
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !987, !noalias !984, !noundef !16 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !990
  %i.dl = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 729) 728, i64 noundef 8) #22, !noalias !990 ; 11 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %bb.ap, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i, !prof !6

bb.ap:                                            ; preds = %bb.ao
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #23
          to label %.noexc.i.i.i.i unwind label %bb.at, !noalias !990

.noexc.i.i.i.i:                                   ; preds = %bb.ap
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i: ; preds = %bb.ao
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 352
  store ptr null, ptr %i.dn, align 8, !noalias !990
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 626 ; 2 uses
  store i16 0, ptr %i.do, align 2, !noalias !990
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 632
  store ptr %i.di, ptr %i.dp, align 8, !noalias !990
  %i.dq = add i64 %i.dk, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.dq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.aq, label %bb.au, !prof !6

bb.aq:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %bb.ar unwind label %bb.as, !noalias !990

bb.ar:                                            ; preds = %bb.aq
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dl, i64 noundef 728, i64 noundef 8) #22, !noalias !990
  br label %.body.i.i.i.i

bb.at:                                            ; preds = %bb.ap
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.at, %bb.as
  tail call void @llvm.trap()
  unreachable

bb.au:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.di, i64 352
  store ptr %i.dl, ptr %i.dt, align 8, !noalias !991
  %i.du = getelementptr inbounds nuw i8, ptr %i.di, i64 624
  store i16 0, ptr %i.du, align 8, !noalias !996
  store ptr %i.dl, ptr %1, align 8, !alias.scope !987, !noalias !984
  store i64 %i.dq, ptr %i.dj, align 8, !alias.scope !987, !noalias !984
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !984
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false), !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !984
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.7245.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.dv, i64 32, i1 false), !noalias !910
  %i.dw = icmp eq i64 %.lcssa137.i.i, %i.dk
  br i1 %i.dw, label %bb.ck, label %.invoke.i.i.i.i, !prof !28

.invoke.i.i.i.i:                                  ; preds = %bb.au
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #23
          to label %.cont.i.i.i.i unwind label %bb.av, !noalias !997

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.av:                                            ; preds = %.invoke.i.i.i.i
  %i.dx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #24
          to label %bb.ax unwind label %bb.aw, !noalias !1001

bb.aw:                                            ; preds = %bb.ax, %bb.av
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !984
  unreachable

bb.ax:                                            ; preds = %bb.av
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #24
          to label %.thread unwind label %bb.aw, !noalias !984

bb.ay:                                            ; preds = %bb.am
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.j) #24
          to label %bb.ba unwind label %bb.az, !noalias !910

bb.az:                                            ; preds = %bb.ba, %bb.ay
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !910
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.eb = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32) %i.eb) #24
          to label %.thread unwind label %bb.az, !noalias !910

bb.bb:                                            ; preds = %.lr.ph.i.i, %bb.cj
  %.sroa.0.1.i.i = phi i64 [ %.sroa.025.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.cj ]
  %i.ec = phi ptr [ %i.dg, %.lr.ph.i.i ], [ %i.kv, %bb.cj ] ; 20 uses
  %i.ed = phi ptr [ %.sroa.13.0, %.lr.ph.i.i ], [ %i.ec, %bb.cj ]
  %i.ee = phi i64 [ 0, %.lr.ph.i.i ], [ %i.eg, %bb.cj ]
  %i.ef = phi ptr [ %i.br, %.lr.ph.i.i ], [ %i.gv, %bb.cj ] ; 2 uses
  %i.eg = add nuw i64 %i.ee, 1                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 624
  %i.ei = load i16, ptr %i.eh, align 8, !noalias !981 ; 4 uses
  %i.ej = zext i16 %i.ei to i64                   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !910
  store i64 %.sroa.0.1.i.i, ptr %i.l, align 8, !noalias !910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7245.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7245.i.i, i64 16, i1 false), !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7245.24..sroa_idx.i.i, i64 32, i1 false), !noalias !910
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ec, i64 626 ; 4 uses
  %i.el = load i16, ptr %i.ek, align 2, !noalias !1002, !noundef !16 ; 5 uses
  %i.em = icmp ult i16 %i.el, 11
  br i1 %i.em, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.bm
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.bd:                                            ; preds = %bb.bb
  %i.eo = icmp ult i16 %i.ei, 5
  br i1 %i.eo, label %bb.bl, label %bb.bi

bb.be:                                            ; preds = %bb.bb
  %i.ep = zext nneg i16 %i.el to i64              ; 4 uses
  %i.eq = add nuw nsw i16 %i.el, 1
  %i.er = getelementptr inbounds nuw i8, ptr %i.ec, i64 360 ; 2 uses
  %i.es = add nuw nsw i64 %i.ej, 1                ; 7 uses
  %.not.i.i32.not.i.i = icmp ult i16 %i.ei, %i.el
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.ej ; 3 uses
  br i1 %.not.i.i32.not.i.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1008
  %i.eu = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.ej
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.eu, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7245.24..sroa_idx.i.i, i64 32, i1 false), !noalias !910
  br label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.ev = getelementptr inbounds nuw [24 x i8], ptr %i.er, i64 %i.es
  %i.ew = sub nsw i64 %i.ep, %i.ej                ; 3 uses
  %i.ex = mul nsw i64 %i.ew, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ev, ptr nonnull align 8 %i.et, i64 %i.ex, i1 false), !alias.scope !1009, !noalias !1012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.et, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1008
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.ej ; 2 uses
  %i.ez = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.es
  %i.fa = shl nsw i64 %i.ew, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ez, ptr nonnull align 8 %i.ey, i64 %i.fa, i1 false), !alias.scope !1018, !noalias !1021
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ey, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7245.24..sroa_idx.i.i, i64 32, i1 false), !noalias !910
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ec, i64 632 ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.es
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.ej
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.ff = shl nsw i64 %i.ew, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fe, ptr nonnull align 8 %i.fc, i64 %i.ff, i1 false), !alias.scope !1023, !noalias !1026
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ec, i64 632 ; 6 uses
  %i.fh = add nuw nsw i64 %i.ep, 2                ; 2 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.es
  store ptr %i.ef, ptr %i.fi, align 8, !alias.scope !1023, !noalias !1026
  store i16 %i.eq, ptr %i.ek, align 2, !noalias !1026
  %i.fj = icmp samesign ult i64 %i.es, %i.fh
  br i1 %i.fj, label %.lr.ph.i.i.i.i.i.preheader, label %.thread41.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.bh
  %i.fk = add nuw nsw i64 %i.ep, 1
  %i.fl = sub nsw i64 %i.fk, %i.ej
  %i.fm = sub nsw i64 %i.ep, %i.ej
  %xtraiter417 = and i64 %i.fl, 3                 ; 2 uses
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br i1 %lcmp.mod418.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.prol ], [ %i.es, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter419 = phi i64 [ %prol.iter419.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.fn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.fo = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.fo)
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.fq = load ptr, ptr %i.fp, align 8, !noalias !1026, !nonnull !16, !noundef !16 ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 352
  store ptr %i.ec, ptr %i.fr, align 8, !noalias !1026
  %i.fs = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 624
  store i16 %i.fs, ptr %i.ft, align 8, !noalias !1026
  %prol.iter419.next = add i64 %prol.iter419, 1   ; 2 uses
  %prol.iter419.cmp.not = icmp eq i64 %prol.iter419.next, %xtraiter417
  br i1 %prol.iter419.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1027

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.es, %.lr.ph.i.i.i.i.i.preheader ], [ %i.fn, %.lr.ph.i.i.i.i.i.prol ]
  %i.fu = icmp ult i64 %i.fm, 3
  br i1 %i.fu, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.gn, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.fv = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.sroa.0.06.i.i.i.i.i
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !1026, !nonnull !16, !noundef !16 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 352
  store ptr %i.ec, ptr %i.fy, align 8, !noalias !1026
  %i.fz = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 624
  store i16 %i.fz, ptr %i.ga, align 8, !noalias !1026
  %i.gb = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.fv
  %i.gd = load ptr, ptr %i.gc, align 8, !noalias !1026, !nonnull !16, !noundef !16 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 352
  store ptr %i.ec, ptr %i.ge, align 8, !noalias !1026
  %i.gf = trunc nuw nsw i64 %i.fv to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gd, i64 624
  store i16 %i.gf, ptr %i.gg, align 8, !noalias !1026
  %i.gh = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gb
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !1026, !nonnull !16, !noundef !16 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 352
  store ptr %i.ec, ptr %i.gk, align 8, !noalias !1026
  %i.gl = trunc nuw nsw i64 %i.gb to i16
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 624
  store i16 %i.gl, ptr %i.gm, align 8, !noalias !1026
  %i.gn = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.go = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.gh
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !1026, !nonnull !16, !noundef !16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 352
  store ptr %i.ec, ptr %i.gr, align 8, !noalias !1026
  %i.gs = trunc nuw nsw i64 %i.gh to i16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 624
  store i16 %i.gs, ptr %i.gt, align 8, !noalias !1026
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.gn, %i.fh
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread41.i.i, label %.lr.ph.i.i.i.i.i

bb.bi:                                            ; preds = %bb.bd
  switch i16 %i.ei, label %bb.bj [
    i16 5, label %bb.bl
    i16 6, label %bb.bk
  ]

bb.bj:                                            ; preds = %bb.bi
  %i.gu = add nsw i64 %i.ej, -7
  br label %bb.bl

bb.bk:                                            ; preds = %bb.bi
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bd
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bk ], [ 6, %bb.bj ], [ 4, %bb.bd ], [ 5, %bb.bi ] ; 7 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bk ], [ %i.gu, %bb.bj ], [ %i.ej, %bb.bd ], [ 5, %bb.bi ] ; 9 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bk ], [ true, %bb.bj ], [ false, %bb.bd ], [ false, %bb.bi ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1028
  %i.gv = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 729) 728, i64 noundef 8) #22, !noalias !1028 ; 11 uses
  %i.gw = icmp eq ptr %i.gv, null
  br i1 %i.gw, label %bb.bm, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i, !prof !6

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #23
          to label %.noexc.i31.i.i unwind label %bb.bc, !noalias !1002

.noexc.i31.i.i:                                   ; preds = %bb.bm
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i: ; preds = %bb.bl
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gv, i64 352
  store ptr null, ptr %i.gx, align 8, !noalias !1028
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 626 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1032)
  %i.gz = load i16, ptr %i.ek, align 2, !noalias !1035, !noundef !16
  %i.ha = zext i16 %i.gz to i64
  %i.hb = xor i64 %.sroa.06.0.i.i.i, -1
  %i.hc = add nsw i64 %i.ha, %i.hb                ; 5 uses
  %i.hd = trunc i64 %i.hc to i16
  store i16 %i.hd, ptr %i.gy, align 2, !alias.scope !1032, !noalias !1037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1035
  %i.he = getelementptr inbounds nuw i8, ptr %i.ec, i64 360 ; 2 uses
  %i.hf = getelementptr inbounds nuw [24 x i8], ptr %i.he, i64 %.sroa.06.0.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i64 24, i1 false), !noalias !1035
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1035
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %.sroa.06.0.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i64 32, i1 false), !noalias !1035
  %i.hh = icmp ult i64 %i.hc, 12
  br i1 %i.hh, label %bb.bs, label %bb.bn, !prof !949

bb.bn:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hc, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
          to label %bb.bp unwind label %bb.bo, !noalias !1035

bb.bo:                                            ; preds = %bb.bn
  %i.hi = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32) %i.a) #24
          to label %bb.br unwind label %bb.bq, !noalias !1035

bb.bp:                                            ; preds = %bb.bn
  unreachable

bb.bq:                                            ; preds = %bb.br, %bb.bo
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1035
  unreachable

bb.br:                                            ; preds = %bb.bo
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.cb unwind label %bb.bq, !noalias !1035

bb.bs:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  %i.hk = add nuw nsw i64 %.sroa.06.0.i.i.i, 1    ; 2 uses
  %i.hl = getelementptr inbounds nuw [24 x i8], ptr %i.he, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gv, i64 360
  %i.hn = mul nuw nsw i64 %i.hc, 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hm, ptr nonnull readonly align 8 %i.hl, i64 %i.hn, i1 false), !alias.scope !1038, !noalias !1037
  %i.ho = getelementptr inbounds nuw [32 x i8], ptr %i.ec, i64 %i.hk
  %i.hp = shl nuw nsw i64 %i.hc, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(632) %i.gv, ptr nonnull readonly align 8 %i.ho, i64 %i.hp, i1 false), !alias.scope !1042, !noalias !1037
  %i.hq = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.hq, ptr %i.ek, align 2, !noalias !1035
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.hf, i64 24, i1 false), !noalias !1002
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dh, ptr noundef nonnull align 8 dereferenceable(32) %i.hg, i64 32, i1 false), !noalias !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1035
  %i.hr = load i16, ptr %i.gy, align 2, !noalias !1028, !noundef !16 ; 2 uses
  %i.hs = zext i16 %i.hr to i64                   ; 3 uses
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 3 uses
  %i.hu = icmp ult i16 %i.hr, 12
  br i1 %i.hu, label %bb.bt, label %bb.bv, !prof !949

bb.bt:                                            ; preds = %bb.bs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gv, i64 632 ; 2 uses
  %i.hw = zext i16 %i.el to i64
  %i.hx = sub nuw nsw i64 %i.hw, %.sroa.06.0.i.i.i
  %i.hy = icmp eq i64 %i.hx, %i.ht
  br i1 %i.hy, label %bb.bx, label %bb.bu, !prof !28

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %.noexc.i.i29.i.i unwind label %bb.bw, !noalias !1028

.noexc.i.i29.i.i:                                 ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bs
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.ht, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
          to label %bb.bz unwind label %bb.bw, !noalias !1028

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.hz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringNtNtCscvBHLZPbXnS_10serde_json5value5ValueEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(56) %i.c) #24
          to label %bb.cb unwind label %bb.ca, !noalias !1028

bb.bx:                                            ; preds = %bb.bt
  %i.ia = getelementptr i8, ptr %i.ec, i64 640
  %i.ib = getelementptr [8 x i8], ptr %i.ia, i64 %.sroa.06.0.i.i.i
  %i.ic = shl nuw nsw i64 %i.ht, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hv, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.ib, i64 %i.ic, i1 false), !alias.scope !1046, !noalias !1028
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  br label %bb.by

bb.by:                                            ; preds = %bb.by, %bb.bx
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.bx ], [ %spec.select10.i.i.i.i.i.i, %bb.by ] ; 5 uses
  %i.id = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.hs ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.id, true
  %i.ie = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.ie ; 2 uses
  %i.if = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.ih = load ptr, ptr %i.ig, align 8, !alias.scope !1050, !noalias !1053, !nonnull !16, !noundef !16 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 352
  store ptr %i.gv, ptr %i.ii, align 8, !noalias !1056
  %i.ij = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ih, i64 624
  store i16 %i.ij, ptr %i.ik, align 8, !noalias !1053
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.hs
  %or.cond.i.i.i.i.i.i = select i1 %i.id, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.cc, label %bb.by

bb.bz:                                            ; preds = %bb.bv
  unreachable

bb.ca:                                            ; preds = %bb.bw
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1028
  unreachable

bb.cb:                                            ; preds = %bb.bw, %bb.br
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.hz, %bb.bw ], [ %i.hi, %bb.br ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef 728, i64 noundef 8) #22, !noalias !1028
  br label %bb.ch

bb.cc:                                            ; preds = %bb.by
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.c, align 8, !noalias !1002 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 48, i1 false), !noalias !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1028
  %spec.select.i30.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.gv, ptr %i.ec ; 12 uses
  %i.im = getelementptr inbounds nuw i8, ptr %spec.select.i30.i.i, i64 626 ; 2 uses
  %i.in = load i16, ptr %i.im, align 2, !noalias !1057, !noundef !16 ; 2 uses
  %i.io = zext i16 %i.in to i64                   ; 5 uses
  %i.ip = add i16 %i.in, 1
  %i.iq = getelementptr inbounds nuw i8, ptr %spec.select.i30.i.i, i64 360 ; 2 uses
  %i.ir = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 7 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.io
  %i.is = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1008
  %i.it = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i30.i.i, i64 %.sroa.5.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.it, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7245.24..sroa_idx.i.i, i64 32, i1 false), !noalias !910
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cc
  %i.iu = getelementptr inbounds nuw [24 x i8], ptr %i.iq, i64 %i.ir
  %i.iv = sub nuw nsw i64 %i.io, %.sroa.5.0.i.i.i ; 3 uses
  %i.iw = mul nuw nsw i64 %i.iv, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iu, ptr nonnull align 8 %i.is, i64 %i.iw, i1 false), !alias.scope !1062, !noalias !1065
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.is, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1008
  %i.ix = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i30.i.i, i64 %.sroa.5.0.i.i.i ; 2 uses
  %i.iy = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i30.i.i, i64 %i.ir
  %i.iz = shl nuw nsw i64 %i.iv, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.iy, ptr nonnull align 8 %i.ix, i64 %i.iz, i1 false), !alias.scope !1067, !noalias !1070
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ix, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7245.24..sroa_idx.i.i, i64 32, i1 false), !noalias !910
  %i.ja = getelementptr inbounds nuw i8, ptr %spec.select.i30.i.i, i64 632 ; 2 uses
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %i.ir
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.sroa.5.0.i.i.i
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = shl nuw nsw i64 %i.iv, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jd, ptr nonnull align 8 %i.jb, i64 %i.je, i1 false), !alias.scope !1072, !noalias !1057
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.jf = getelementptr inbounds nuw i8, ptr %spec.select.i30.i.i, i64 632 ; 6 uses
  %i.jg = add nuw nsw i64 %i.io, 2                ; 2 uses
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ir
  store ptr %i.ef, ptr %i.jh, align 8, !alias.scope !1072, !noalias !1057
  store i16 %i.ip, ptr %i.im, align 2, !noalias !1057
  %i.ji = icmp samesign ult i64 %i.ir, %i.jg
  br i1 %i.ji, label %.lr.ph.i.i11.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i11.i.i.i.preheader:                     ; preds = %bb.cf
  %i.jj = add nuw nsw i64 %i.io, 1
  %i.jk = sub nsw i64 %i.jj, %.sroa.5.0.i.i.i
  %i.jl = sub nsw i64 %i.io, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.jk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol

.lr.ph.i.i11.i.i.i.prol:                          ; preds = %.lr.ph.i.i11.i.i.i.preheader, %.lr.ph.i.i11.i.i.i.prol
  %.sroa.0.06.i.i12.i.i.i.prol = phi i64 [ %i.jm, %.lr.ph.i.i11.i.i.i.prol ], [ %i.ir, %.lr.ph.i.i11.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i11.i.i.i.prol ], [ 0, %.lr.ph.i.i11.i.i.i.preheader ]
  %i.jm = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol, 1 ; 2 uses
  %i.jn = icmp samesign ult i64 %.sroa.0.06.i.i12.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.jn)
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.sroa.0.06.i.i12.i.i.i.prol
  %i.jp = load ptr, ptr %i.jo, align 8, !noalias !1057, !nonnull !16, !noundef !16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 352
  store ptr %spec.select.i30.i.i, ptr %i.jq, align 8, !noalias !1057
  %i.jr = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i.prol to i16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 624
  store i16 %i.jr, ptr %i.js, align 8, !noalias !1057
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i11.i.i.i.prol.loopexit, label %.lr.ph.i.i11.i.i.i.prol, !llvm.loop !1075

.lr.ph.i.i11.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i11.i.i.i.prol, %.lr.ph.i.i11.i.i.i.preheader
  %.sroa.0.06.i.i12.i.i.i.unr = phi i64 [ %i.ir, %.lr.ph.i.i11.i.i.i.preheader ], [ %i.jm, %.lr.ph.i.i11.i.i.i.prol ]
  %i.jt = icmp ult i64 %i.jl, 3
  br i1 %i.jt, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

.lr.ph.i.i11.i.i.i:                               ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i
  %.sroa.0.06.i.i12.i.i.i = phi i64 [ %i.km, %.lr.ph.i.i11.i.i.i ], [ %.sroa.0.06.i.i12.i.i.i.unr, %.lr.ph.i.i11.i.i.i.prol.loopexit ] ; 7 uses
  %i.ju = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 1 ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %.sroa.0.06.i.i12.i.i.i
  %i.jw = load ptr, ptr %i.jv, align 8, !noalias !1057, !nonnull !16, !noundef !16 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 352
  store ptr %spec.select.i30.i.i, ptr %i.jx, align 8, !noalias !1057
  %i.jy = trunc nuw nsw i64 %.sroa.0.06.i.i12.i.i.i to i16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 624
  store i16 %i.jy, ptr %i.jz, align 8, !noalias !1057
  %i.ka = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 2 ; 2 uses
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ju
  %i.kc = load ptr, ptr %i.kb, align 8, !noalias !1057, !nonnull !16, !noundef !16 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 352
  store ptr %spec.select.i30.i.i, ptr %i.kd, align 8, !noalias !1057
  %i.ke = trunc nuw nsw i64 %i.ju to i16
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kc, i64 624
  store i16 %i.ke, ptr %i.kf, align 8, !noalias !1057
  %i.kg = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 3 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ka
  %i.ki = load ptr, ptr %i.kh, align 8, !noalias !1057, !nonnull !16, !noundef !16 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 352
  store ptr %spec.select.i30.i.i, ptr %i.kj, align 8, !noalias !1057
  %i.kk = trunc nuw nsw i64 %i.ka to i16
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 624
  store i16 %i.kk, ptr %i.kl, align 8, !noalias !1057
  %i.km = add nuw nsw i64 %.sroa.0.06.i.i12.i.i.i, 4 ; 2 uses
  %i.kn = icmp ult i64 %.sroa.0.06.i.i12.i.i.i, 9
  tail call void @llvm.assume(i1 %i.kn)
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.kg
  %i.kp = load ptr, ptr %i.ko, align 8, !noalias !1057, !nonnull !16, !noundef !16 ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 352
  store ptr %spec.select.i30.i.i, ptr %i.kq, align 8, !noalias !1057
  %i.kr = trunc nuw nsw i64 %i.kg to i16
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kp, i64 624
  store i16 %i.kr, ptr %i.ks, align 8, !noalias !1057
  %exitcond.not.i.i13.i.i.i.3 = icmp eq i64 %i.km, %i.jg
  br i1 %exitcond.not.i.i13.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i11.i.i.i

bb.cg:                                            ; preds = %bb.ci, %bb.ch
  %i.kt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1076
  unreachable

bb.ch:                                            ; preds = %bb.cb, %bb.bc
  %.pn.ph.i27.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.cb ], [ %i.en, %bb.bc ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscvBHLZPbXnS_10serde_json5value5ValueECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k) #24
          to label %bb.ci unwind label %bb.cg, !noalias !1077

bb.ci:                                            ; preds = %bb.ch
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #24
          to label %.thread unwind label %bb.cg, !noalias !1076

.thread41.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !910
  br label %.loopexit45.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i11.i.i.i.prol.loopexit, %.lr.ph.i.i11.i.i.i, %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.0.i.sroa.4.i.i, i64 48, i1 false), !noalias !1078
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !910
  %.not16.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -1
  br i1 %.not16.i.i, label %.loopexit45.i.i, label %bb.cj

bb.cj:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7245.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.718.i.i, i64 48, i1 false), !noalias !910
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ec, i64 352
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !981, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.kv, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.bb

.loopexit45.i.i:                                  ; preds = %.loopexit.i.i, %.thread41.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7245.i.i)
  br label %bb.co

bb.ck:                                            ; preds = %bb.au
  store i16 1, ptr %i.do, align 2, !noalias !997
  %i.kw = getelementptr inbounds nuw i8, ptr %i.dl, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kw, ptr noundef nonnull align 8 dereferenceable(88) %i.j, i64 24, i1 false), !noalias !910
end_hunk_4
begin_hunk_5_@_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB7_7set_val9SetValZSTE6insertCs8CpBcHC8tKo_21ruff_python_formatter:bb.a
bb.ac:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bo, i64 32
  %i.bu = shl nuw nsw i64 %i.bm, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(368) %i.bf, ptr nonnull readonly align 8 %i.bt, i64 %i.bu, i1 false), !alias.scope !1162, !noalias !1161
  %i.bv = trunc nuw nsw i64 %.sroa.013.0.i.i.i to i16
  store i16 %i.bv, ptr %i.au, align 2, !noalias !1159
  %.sroa.0.i.sroa.0.0.copyload.i.i = load i64, ptr %i.bo, align 8, !noalias !1138 ; 3 uses
  %.sroa.0.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.4.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1159
  %spec.select30.i.i.i = select i1 %.sroa.09.0.i.i.i, ptr %i.bf, ptr %.sroa.14.0 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %spec.select30.i.i.i, i64 362 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !noalias !1166, !noundef !16 ; 2 uses
  %i.by = zext i16 %i.bx to i64                   ; 2 uses
  %.not.i16.not.i.i.i = icmp ult i64 %.sroa.510.0.i.i.i, %i.by
  br i1 %.not.i16.not.i.i.i, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.bz = getelementptr inbounds nuw [32 x i8], ptr %spec.select30.i.i.i, i64 %.sroa.510.0.i.i.i ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = sub nuw nsw i64 %i.by, %.sroa.510.0.i.i.i
  %i.cc = shl nuw nsw i64 %i.cb, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ca, ptr nonnull align 8 %i.bz, i64 %i.cc, i1 false), !alias.scope !1171, !noalias !1174
  br label %bb.ag

bb.ae:                                            ; preds = %bb.af
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1176
  unreachable

.thread.i.i:                                      ; preds = %bb.r, %bb.q
  %i.ce = add nuw nsw i16 %i.av, 1
  %i.cf = getelementptr inbounds nuw [32 x i8], ptr %.sroa.14.0, i64 %.sroa.17.0
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 32, i1 false), !noalias !1132
  store i16 %i.ce, ptr %i.au, align 2, !noalias !1177
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1133
  br label %bb.ai

bb.af:                                            ; preds = %bb.ab, %.thread.i.i.i.i
  %.pn.ph.i.i.i = phi { ptr, i32 } [ %i.bq, %.thread.i.i.i.i ], [ %i.bs, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g) #24
          to label %common.resume unwind label %bb.ae, !noalias !1176

bb.ag:                                            ; preds = %bb.ad, %bb.ac
  %i.cg = add i16 %i.bx, 1
  %i.ch = getelementptr inbounds nuw [32 x i8], ptr %spec.select30.i.i.i, i64 %.sroa.510.0.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ch, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 32, i1 false), !noalias !1132
  store i16 %i.cg, ptr %i.bw, align 2, !noalias !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i.sroa.4.i.i, i64 24, i1 false), !noalias !1178
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1133
  %.not.i.i = icmp eq i64 %.sroa.0.i.sroa.0.0.copyload.i.i, -2
  br i1 %.not.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7242.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7242.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i.i, i64 24, i1 false), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.14.0, i64 352
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1179, !noundef !16 ; 2 uses
  %.not.i142.i.i = icmp eq ptr %i.cj, null
  br i1 %.not.i142.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ah
  %.sroa.0.i23.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7242.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.aw

bb.ai:                                            ; preds = %bb.ag, %.thread.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB9_7set_val9SetValZSTE12insert_entryCs8CpBcHC8tKo_21ruff_python_formatter.exit

._crit_edge.i.i:                                  ; preds = %bb.by, %bb.ah
  %.sroa.0.0.i.i9 = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %bb.ah ], [ %.sroa.0.i23.sroa.0.0.copyload.i.i, %bb.by ]
  %.lcssa134.i.i = phi i64 [ 0, %bb.ah ], [ %i.dg, %bb.by ] ; 3 uses
  %.lcssa126.i.i = phi ptr [ %i.bf, %bb.ah ], [ %i.fq, %bb.by ] ; 4 uses
  %.lcssa.i.i = phi ptr [ %.sroa.14.0, %bb.ah ], [ %i.dc, %bb.by ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1133
  %.sroa.02.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.02.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7242.i.i, i64 24, i1 false), !noalias !1133
  store i64 %.sroa.0.0.i.i9, ptr %i.e, align 8, !noalias !1133
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr %.lcssa.i.i, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !1133
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %.lcssa134.i.i, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !1133
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.lcssa126.i.i, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !noalias !1133
  %.sroa.76.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.lcssa134.i.i, ptr %.sroa.76.0..sroa_idx.i.i, align 8, !noalias !1133
  %i.ck = load ptr, ptr %0, align 8, !noalias !1182, !noundef !16 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i19.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i19.i.i, label %bb.aj, label %bb.al, !prof !6

bb.aj:                                            ; preds = %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #23
          to label %bb.ak unwind label %bb.au, !noalias !1182

bb.ak:                                            ; preds = %bb.aj
  unreachable

bb.al:                                            ; preds = %._crit_edge.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !1185, !noalias !1182, !noundef !16 ; 2 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1188
  %i.cn = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 729) 464, i64 noundef 8) #22, !noalias !1188 ; 10 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.am, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i, !prof !6

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #23
          to label %.noexc.i.i.i.i unwind label %bb.aq, !noalias !1188

.noexc.i.i.i.i:                                   ; preds = %bb.am
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i: ; preds = %bb.al
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 352
  store ptr null, ptr %i.cp, align 8, !noalias !1188
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 362 ; 2 uses
  store i16 0, ptr %i.cq, align 2, !noalias !1188
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 368
  store ptr %i.ck, ptr %i.cr, align 8, !noalias !1188
  %i.cs = add i64 %i.cm, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.an, label %bb.ar, !prof !6

bb.an:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %bb.ao unwind label %bb.ap, !noalias !1188

bb.ao:                                            ; preds = %bb.an
  unreachable

bb.ap:                                            ; preds = %bb.an
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cn, i64 noundef 464, i64 noundef 8) #22, !noalias !1188
  br label %.body.i.i.i.i

bb.aq:                                            ; preds = %bb.am
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.aq, %bb.ap
  tail call void @llvm.trap()
  unreachable

bb.ar:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ck, i64 352
  store ptr %i.cn, ptr %i.cv, align 8, !noalias !1189
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ck, i64 360
  store i16 0, ptr %i.cw, align 8, !noalias !1194
  store ptr %i.cn, ptr %0, align 8, !alias.scope !1185, !noalias !1182
  store i64 %i.cs, ptr %i.cl, align 8, !alias.scope !1185, !noalias !1182
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 32, i1 false), !noalias !1133
  %i.cx = icmp eq i64 %.lcssa134.i.i, %i.cm
  br i1 %i.cx, label %bb.bz, label %.invoke.i.i.i.i, !prof !28

.invoke.i.i.i.i:                                  ; preds = %bb.ar
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @42) #23
          to label %.cont.i.i.i.i unwind label %bb.as, !noalias !1195

.cont.i.i.i.i:                                    ; preds = %.invoke.i.i.i.i
  unreachable

bb.as:                                            ; preds = %.invoke.i.i.i.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c) #24
          to label %common.resume unwind label %bb.at, !noalias !1182

bb.at:                                            ; preds = %bb.as
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1182
  unreachable

bb.au:                                            ; preds = %bb.aj
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #24
          to label %common.resume unwind label %bb.av, !noalias !1133

bb.av:                                            ; preds = %bb.au
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1133
  unreachable

bb.aw:                                            ; preds = %.lr.ph.i.i, %bb.by
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.i.sroa.0.0.copyload.i.i, %.lr.ph.i.i ], [ %.sroa.0.i23.sroa.0.0.copyload.i.i, %bb.by ]
  %i.dc = phi ptr [ %i.cj, %.lr.ph.i.i ], [ %i.jf, %bb.by ] ; 16 uses
  %i.dd = phi ptr [ %.sroa.14.0, %.lr.ph.i.i ], [ %i.dc, %bb.by ]
  %i.de = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dg, %bb.by ]
  %i.df = phi ptr [ %i.bf, %.lr.ph.i.i ], [ %i.fq, %bb.by ] ; 2 uses
  %i.dg = add nuw i64 %i.de, 1                    ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 360
  %i.di = load i16, ptr %i.dh, align 8, !noalias !1179 ; 4 uses
  %i.dj = zext i16 %i.di to i64                   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.717.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1133
  store i64 %.sroa.0.1.i.i, ptr %i.f, align 8, !noalias !1133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7242.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7242.i.i, i64 24, i1 false), !noalias !1133
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i23.sroa.4.i.i)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 362 ; 4 uses
  %i.dl = load i16, ptr %i.dk, align 2, !noalias !1198, !noundef !16 ; 5 uses
  %i.dm = icmp ult i16 %i.dl, 11
  br i1 %i.dm, label %bb.az, label %bb.ay

bb.ax:                                            ; preds = %bb.bf
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ay:                                            ; preds = %bb.aw
  %i.do = icmp ult i16 %i.di, 5
  br i1 %i.do, label %bb.be, label %bb.bb

bb.az:                                            ; preds = %bb.aw
  %i.dp = zext nneg i16 %i.dl to i64              ; 4 uses
  %i.dq = add nuw nsw i16 %i.dl, 1
  %i.dr = add nuw nsw i64 %i.dj, 1                ; 6 uses
  %.not.i.i29.not.i.i = icmp ult i16 %i.di, %i.dl
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.dj ; 3 uses
  br i1 %.not.i.i29.not.i.i, label %bb.ba, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i: ; preds = %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1203
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.dt = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %i.dr
  %i.du = sub nsw i64 %i.dp, %i.dj                ; 2 uses
  %i.dv = shl nsw i64 %i.du, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr nonnull align 8 %i.ds, i64 %i.dv, i1 false), !alias.scope !1204, !noalias !1207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1203
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dc, i64 368 ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dr
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dj
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = shl nsw i64 %i.du, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dz, ptr nonnull align 8 %i.dx, i64 %i.ea, i1 false), !alias.scope !1212, !noalias !1215
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i: ; preds = %bb.ba, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dc, i64 368 ; 6 uses
  %i.ec = add nuw nsw i64 %i.dp, 2                ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.dr
  store ptr %i.df, ptr %i.ed, align 8, !alias.scope !1212, !noalias !1215
  store i16 %i.dq, ptr %i.dk, align 2, !noalias !1215
  %i.ee = icmp samesign ult i64 %i.dr, %i.ec
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.preheader, label %.thread38.i.i

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  %i.ef = add nuw nsw i64 %i.dp, 1
  %i.eg = sub nsw i64 %i.ef, %i.dj
  %i.eh = sub nsw i64 %i.dp, %i.dj
  %xtraiter393 = and i64 %i.eg, 3                 ; 2 uses
  %lcmp.mod394.not = icmp eq i64 %xtraiter393, 0
  br i1 %lcmp.mod394.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.prol = phi i64 [ %i.ei, %.lr.ph.i.i.i.i.i.prol ], [ %i.dr, %.lr.ph.i.i.i.i.i.preheader ] ; 4 uses
  %prol.iter395 = phi i64 [ %prol.iter395.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ei = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol, 1 ; 2 uses
  %i.ej = icmp samesign ult i64 %.sroa.0.06.i.i.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.ej)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i.i.i.i.prol
  %i.el = load ptr, ptr %i.ek, align 8, !noalias !1215, !nonnull !16, !noundef !16 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 352
  store ptr %i.dc, ptr %i.em, align 8, !noalias !1215
  %i.en = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i.prol to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 360
  store i16 %i.en, ptr %i.eo, align 8, !noalias !1215
  %prol.iter395.next = add i64 %prol.iter395, 1   ; 2 uses
  %prol.iter395.cmp.not = icmp eq i64 %prol.iter395.next, %xtraiter393
  br i1 %prol.iter395.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !1216

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.06.i.i.i.i.i.unr = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ei, %.lr.ph.i.i.i.i.i.prol ]
  %i.ep = icmp ult i64 %i.eh, 3
  br i1 %i.ep, label %.thread38.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 7 uses
  %i.eq = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.sroa.0.06.i.i.i.i.i
  %i.es = load ptr, ptr %i.er, align 8, !noalias !1215, !nonnull !16, !noundef !16 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 352
  store ptr %i.dc, ptr %i.et, align 8, !noalias !1215
  %i.eu = trunc nuw nsw i64 %.sroa.0.06.i.i.i.i.i to i16
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 360
  store i16 %i.eu, ptr %i.ev, align 8, !noalias !1215
  %i.ew = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 2 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.eq
  %i.ey = load ptr, ptr %i.ex, align 8, !noalias !1215, !nonnull !16, !noundef !16 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 352
  store ptr %i.dc, ptr %i.ez, align 8, !noalias !1215
  %i.fa = trunc nuw nsw i64 %i.eq to i16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 360
  store i16 %i.fa, ptr %i.fb, align 8, !noalias !1215
  %i.fc = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 3 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ew
  %i.fe = load ptr, ptr %i.fd, align 8, !noalias !1215, !nonnull !16, !noundef !16 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 352
  store ptr %i.dc, ptr %i.ff, align 8, !noalias !1215
  %i.fg = trunc nuw nsw i64 %i.ew to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 360
  store i16 %i.fg, ptr %i.fh, align 8, !noalias !1215
  %i.fi = add nuw nsw i64 %.sroa.0.06.i.i.i.i.i, 4 ; 2 uses
  %i.fj = icmp ult i64 %.sroa.0.06.i.i.i.i.i, 9
  tail call void @llvm.assume(i1 %i.fj)
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.fc
  %i.fl = load ptr, ptr %i.fk, align 8, !noalias !1215, !nonnull !16, !noundef !16 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 352
  store ptr %i.dc, ptr %i.fm, align 8, !noalias !1215
  %i.fn = trunc nuw nsw i64 %i.fc to i16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 360
  store i16 %i.fn, ptr %i.fo, align 8, !noalias !1215
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.fi, %i.ec
  br i1 %exitcond.not.i.i.i.i.i.3, label %.thread38.i.i, label %.lr.ph.i.i.i.i.i

bb.bb:                                            ; preds = %bb.ay
  switch i16 %i.di, label %bb.bc [
    i16 5, label %bb.be
    i16 6, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.fp = add nsw i64 %i.dj, -7
  br label %bb.be

bb.bd:                                            ; preds = %bb.bb
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ay
  %.sroa.06.0.i.i.i = phi i64 [ 5, %bb.bd ], [ 6, %bb.bc ], [ 4, %bb.ay ], [ 5, %bb.bb ] ; 5 uses
  %.sroa.5.0.i.i.i = phi i64 [ 0, %bb.bd ], [ %i.fp, %bb.bc ], [ %i.dj, %bb.ay ], [ 5, %bb.bb ] ; 7 uses
  %.sroa.03.0.i.i.i = phi i1 [ true, %bb.bd ], [ true, %bb.bc ], [ false, %bb.ay ], [ false, %bb.bb ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !1217
  %i.fq = tail call noalias noundef align 8 dereferenceable_or_null(464) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 24, 729) 464, i64 noundef 8) #22, !noalias !1217 ; 10 uses
  %i.fr = icmp eq ptr %i.fq, null
  br i1 %i.fr, label %bb.bf, label %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i, !prof !6

bb.bf:                                            ; preds = %bb.be
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 464) #23
          to label %.noexc.i28.i.i unwind label %bb.ax, !noalias !1198

.noexc.i28.i.i:                                   ; preds = %bb.bf
  unreachable

_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i: ; preds = %bb.be
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 352
  store ptr null, ptr %i.fs, align 8, !noalias !1217
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fq, i64 362 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1221)
  %i.fu = load i16, ptr %i.dk, align 2, !noalias !1224, !noundef !16
  %i.fv = zext i16 %i.fu to i64
  %i.fw = xor i64 %.sroa.06.0.i.i.i, -1
  %i.fx = add nsw i64 %i.fv, %i.fw                ; 4 uses
  %i.fy = trunc i64 %i.fx to i16
  store i16 %i.fy, ptr %i.ft, align 2, !alias.scope !1221, !noalias !1226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1224
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.dc, i64 %.sroa.06.0.i.i.i ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.fz, i64 32, i1 false), !noalias !1224
  %i.ga = icmp ult i64 %i.fx, 12
  br i1 %i.ga, label %bb.bk, label %bb.bg, !prof !949

bb.bg:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.fx, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23
          to label %bb.bi unwind label %bb.bh, !noalias !1224

bb.bh:                                            ; preds = %bb.bg
  %i.gb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32) %i.a) #24
          to label %bb.bt unwind label %bb.bj, !noalias !1224

bb.bi:                                            ; preds = %bb.bg
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1224
  unreachable

bb.bk:                                            ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtBK_7set_val9SetValZSTEE13new_uninit_inCs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  %i.gd = getelementptr i8, ptr %i.fz, i64 32
  %i.ge = shl nuw nsw i64 %i.fx, 5
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(368) %i.fq, ptr nonnull readonly align 8 %i.gd, i64 %i.ge, i1 false), !alias.scope !1227, !noalias !1226
  %i.gf = trunc nuw nsw i64 %.sroa.06.0.i.i.i to i16
  store i16 %i.gf, ptr %i.dk, align 2, !noalias !1224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.fz, i64 32, i1 false), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1224
  %i.gg = load i16, ptr %i.ft, align 2, !noalias !1217, !noundef !16 ; 2 uses
  %i.gh = zext i16 %i.gg to i64                   ; 3 uses
  %i.gi = add nuw nsw i64 %i.gh, 1                ; 3 uses
  %i.gj = icmp ult i16 %i.gg, 12
  br i1 %i.gj, label %bb.bl, label %bb.bn, !prof !949

bb.bl:                                            ; preds = %bb.bk
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fq, i64 368 ; 2 uses
  %i.gl = zext i16 %i.dl to i64
  %i.gm = sub nuw nsw i64 %i.gl, %.sroa.06.0.i.i.i
  %i.gn = icmp eq i64 %i.gm, %i.gi
  br i1 %i.gn, label %bb.bp, label %bb.bm, !prof !28

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #23
          to label %.noexc.i.i26.i.i unwind label %bb.bo, !noalias !1217

.noexc.i.i26.i.i:                                 ; preds = %bb.bm
  unreachable

bb.bn:                                            ; preds = %bb.bk
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.gi, i64 noundef 12, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
          to label %bb.br unwind label %bb.bo, !noalias !1217

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.go = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtNtNtCscdodAO9FK5_5alloc11collections5btree7set_val9SetValZSTEECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef align 8 dereferenceable(32) %i.b) #24
          to label %bb.bt unwind label %bb.bs, !noalias !1217

bb.bp:                                            ; preds = %bb.bl
  %i.gp = getelementptr i8, ptr %i.dc, i64 376
  %i.gq = getelementptr [8 x i8], ptr %i.gp, i64 %.sroa.06.0.i.i.i
  %i.gr = shl nuw nsw i64 %i.gi, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.gk, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.gq, i64 %i.gr, i1 false), !alias.scope !1231, !noalias !1217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1235)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %bb.bp
  %.sroa.0.013.i.i.i.i.i.i = phi i64 [ 0, %bb.bp ], [ %spec.select10.i.i.i.i.i.i, %bb.bq ] ; 5 uses
  %i.gs = icmp samesign uge i64 %.sroa.0.013.i.i.i.i.i.i, %i.gh ; 2 uses
  %not..i.i.i.i.i.i = xor i1 %i.gs, true
  %i.gt = zext i1 %not..i.i.i.i.i.i to i64
  %spec.select10.i.i.i.i.i.i = add nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i, %i.gt ; 2 uses
  %i.gu = icmp samesign ult i64 %.sroa.0.013.i.i.i.i.i.i, 12
  tail call void @llvm.assume(i1 %i.gu)
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %.sroa.0.013.i.i.i.i.i.i
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !1235, !noalias !1238, !nonnull !16, !noundef !16 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 352
  store ptr %i.fq, ptr %i.gx, align 8, !noalias !1241
  %i.gy = trunc nuw nsw i64 %.sroa.0.013.i.i.i.i.i.i to i16
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 360
  store i16 %i.gy, ptr %i.gz, align 8, !noalias !1238
  %.not.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %spec.select10.i.i.i.i.i.i, %i.gh
  %or.cond.i.i.i.i.i.i = select i1 %i.gs, i1 true, i1 %.not.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.bu, label %bb.bq

bb.br:                                            ; preds = %bb.bn
  unreachable

bb.bs:                                            ; preds = %bb.bo
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1217
  unreachable

bb.bt:                                            ; preds = %bb.bo, %bb.bh
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.go, %bb.bo ], [ %i.gb, %bb.bh ]
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.fq, i64 noundef 464, i64 noundef 8) #22, !noalias !1217
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bq
  %.sroa.0.i23.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !noalias !1198 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i23.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i23.sroa.4.0..sroa_idx.i.i, i64 24, i1 false), !noalias !1198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1217
  %spec.select.i27.i.i = select i1 %.sroa.03.0.i.i.i, ptr %i.fq, ptr %i.dc ; 10 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 362 ; 2 uses
  %i.hc = load i16, ptr %i.hb, align 2, !noalias !1242, !noundef !16 ; 2 uses
  %i.hd = zext i16 %i.hc to i64                   ; 5 uses
  %i.he = add i16 %i.hc, 1
  %i.hf = add nuw nsw i64 %.sroa.5.0.i.i.i, 1     ; 6 uses
  %.not.i10.not.i.i.i = icmp samesign ult i64 %.sroa.5.0.i.i.i, %i.hd
  %i.hg = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i27.i.i, i64 %.sroa.5.0.i.i.i ; 3 uses
  br i1 %.not.i10.not.i.i.i, label %bb.bv, label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter.exit.i11.i.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter.exit.i11.i.i.i: ; preds = %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1203
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i12.i.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.hh = getelementptr inbounds nuw [32 x i8], ptr %spec.select.i27.i.i, i64 %i.hf
  %i.hi = sub nuw nsw i64 %i.hd, %.sroa.5.0.i.i.i ; 2 uses
  %i.hj = shl nuw nsw i64 %i.hi, 5
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hh, ptr nonnull align 8 %i.hg, i64 %i.hj, i1 false), !alias.scope !1246, !noalias !1249
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.hg, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !1203
  %i.hk = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 368 ; 2 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %i.hf
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %.sroa.5.0.i.i.i
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = shl nuw nsw i64 %i.hi, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.hn, ptr nonnull align 8 %i.hl, i64 %i.ho, i1 false), !alias.scope !1251, !noalias !1242
  br label %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i12.i.i.i

_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i12.i.i.i: ; preds = %bb.bv, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter.exit.i11.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %spec.select.i27.i.i, i64 368 ; 6 uses
  %i.hq = add nuw nsw i64 %i.hd, 2                ; 2 uses
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hf
  store ptr %i.df, ptr %i.hr, align 8, !alias.scope !1251, !noalias !1242
  store i16 %i.he, ptr %i.hb, align 2, !noalias !1242
  %i.hs = icmp samesign ult i64 %i.hf, %i.hq
  br i1 %i.hs, label %.lr.ph.i.i13.i.i.i.preheader, label %.loopexit.i.i

.lr.ph.i.i13.i.i.i.preheader:                     ; preds = %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i12.i.i.i
  %i.ht = add nuw nsw i64 %i.hd, 1
  %i.hu = sub nsw i64 %i.ht, %.sroa.5.0.i.i.i
  %i.hv = sub nsw i64 %i.hd, %.sroa.5.0.i.i.i
  %xtraiter = and i64 %i.hu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol

.lr.ph.i.i13.i.i.i.prol:                          ; preds = %.lr.ph.i.i13.i.i.i.preheader, %.lr.ph.i.i13.i.i.i.prol
  %.sroa.0.06.i.i14.i.i.i.prol = phi i64 [ %i.hw, %.lr.ph.i.i13.i.i.i.prol ], [ %i.hf, %.lr.ph.i.i13.i.i.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i13.i.i.i.prol ], [ 0, %.lr.ph.i.i13.i.i.i.preheader ]
  %i.hw = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol, 1 ; 2 uses
  %i.hx = icmp ult i64 %.sroa.0.06.i.i14.i.i.i.prol, 12
  tail call void @llvm.assume(i1 %i.hx)
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.0.06.i.i14.i.i.i.prol
  %i.hz = load ptr, ptr %i.hy, align 8, !noalias !1242, !nonnull !16, !noundef !16 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 352
  store ptr %spec.select.i27.i.i, ptr %i.ia, align 8, !noalias !1242
  %i.ib = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i.prol to i16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 360
  store i16 %i.ib, ptr %i.ic, align 8, !noalias !1242
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i13.i.i.i.prol.loopexit, label %.lr.ph.i.i13.i.i.i.prol, !llvm.loop !1254

.lr.ph.i.i13.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i13.i.i.i.prol, %.lr.ph.i.i13.i.i.i.preheader
  %.sroa.0.06.i.i14.i.i.i.unr = phi i64 [ %i.hf, %.lr.ph.i.i13.i.i.i.preheader ], [ %i.hw, %.lr.ph.i.i13.i.i.i.prol ]
  %i.id = icmp ult i64 %i.hv, 3
  br i1 %i.id, label %.loopexit.i.i, label %.lr.ph.i.i13.i.i.i

.lr.ph.i.i13.i.i.i:                               ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i
  %.sroa.0.06.i.i14.i.i.i = phi i64 [ %i.iw, %.lr.ph.i.i13.i.i.i ], [ %.sroa.0.06.i.i14.i.i.i.unr, %.lr.ph.i.i13.i.i.i.prol.loopexit ] ; 7 uses
  %i.ie = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.sroa.0.06.i.i14.i.i.i
  %i.ig = load ptr, ptr %i.if, align 8, !noalias !1242, !nonnull !16, !noundef !16 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 352
  store ptr %spec.select.i27.i.i, ptr %i.ih, align 8, !noalias !1242
  %i.ii = trunc nuw nsw i64 %.sroa.0.06.i.i14.i.i.i to i16
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ig, i64 360
  store i16 %i.ii, ptr %i.ij, align 8, !noalias !1242
  %i.ik = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ie
  %i.im = load ptr, ptr %i.il, align 8, !noalias !1242, !nonnull !16, !noundef !16 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 352
  store ptr %spec.select.i27.i.i, ptr %i.in, align 8, !noalias !1242
  %i.io = trunc nuw nsw i64 %i.ie to i16
  %i.ip = getelementptr inbounds nuw i8, ptr %i.im, i64 360
  store i16 %i.io, ptr %i.ip, align 8, !noalias !1242
  %i.iq = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 3 ; 2 uses
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ik
  %i.is = load ptr, ptr %i.ir, align 8, !noalias !1242, !nonnull !16, !noundef !16 ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 352
  store ptr %spec.select.i27.i.i, ptr %i.it, align 8, !noalias !1242
  %i.iu = trunc nuw nsw i64 %i.ik to i16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.is, i64 360
  store i16 %i.iu, ptr %i.iv, align 8, !noalias !1242
  %i.iw = add nuw nsw i64 %.sroa.0.06.i.i14.i.i.i, 4 ; 2 uses
  %i.ix = icmp ult i64 %.sroa.0.06.i.i14.i.i.i, 9
  tail call void @llvm.assume(i1 %i.ix)
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.iq
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !1242, !nonnull !16, !noundef !16 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 352
  store ptr %spec.select.i27.i.i, ptr %i.ja, align 8, !noalias !1242
  %i.jb = trunc nuw nsw i64 %i.iq to i16
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 360
  store i16 %i.jb, ptr %i.jc, align 8, !noalias !1242
  %exitcond.not.i.i15.i.i.i.3 = icmp eq i64 %i.iw, %i.hq
  br i1 %exitcond.not.i.i15.i.i.i.3, label %.loopexit.i.i, label %.lr.ph.i.i13.i.i.i

bb.bw:                                            ; preds = %bb.bx
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1203
  unreachable

bb.bx:                                            ; preds = %bb.bt, %bb.ax
  %.pn.ph.i24.i.i = phi { ptr, i32 } [ %.pn.i.i.i.i, %bb.bt ], [ %i.dn, %bb.ax ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidECs8CpBcHC8tKo_21ruff_python_formatter(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f) #24
          to label %common.resume unwind label %bb.bw, !noalias !1203

.thread38.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1133
  br label %.loopexit42.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i13.i.i.i.prol.loopexit, %.lr.ph.i.i13.i.i.i, %_RINvNtNtNtCscdodAO9FK5_5alloc11collections5btree4node12slice_insertINtNtNtCs4NRVxsYgnAr_4core3ptr8non_null7NonNullINtB2_8LeafNodeNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB4_7set_val9SetValZSTEEECs8CpBcHC8tKo_21ruff_python_formatter.exit.i12.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.717.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.i23.sroa.4.i.i, i64 24, i1 false), !noalias !1255
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i23.sroa.4.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1133
  %.not16.i.i = icmp eq i64 %.sroa.0.i23.sroa.0.0.copyload.i.i, -2
  br i1 %.not16.i.i, label %.loopexit42.i.i, label %bb.by

bb.by:                                            ; preds = %.loopexit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7242.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.717.i.i, i64 24, i1 false), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.717.i.i)
  %i.je = getelementptr inbounds nuw i8, ptr %i.dc, i64 352
  %i.jf = load ptr, ptr %i.je, align 8, !noalias !1179, !noundef !16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i, label %._crit_edge.i.i, label %bb.aw

.loopexit42.i.i:                                  ; preds = %.loopexit.i.i, %.thread38.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.717.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7242.i.i)
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB9_7set_val9SetValZSTE12insert_entryCs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.bz:                                            ; preds = %bb.ar
  store i16 1, ptr %i.cq, align 2, !noalias !1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 32, i1 false), !noalias !1133
  %i.jg = getelementptr inbounds nuw i8, ptr %i.cn, i64 376
  store ptr %.lcssa126.i.i, ptr %i.jg, align 8, !noalias !1195
  %i.jh = getelementptr inbounds nuw i8, ptr %.lcssa126.i.i, i64 352
  store ptr %i.cn, ptr %i.jh, align 8, !noalias !1195
  %i.ji = getelementptr inbounds nuw i8, ptr %.lcssa126.i.i, i64 360
  store i16 1, ptr %i.ji, align 8, !noalias !1195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1133
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7242.i.i)
  br label %_RNvMs4_NtNtNtNtCscdodAO9FK5_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtCscuBBDlOF0VN_8schemars8generate9SchemaUidNtNtB9_7set_val9SetValZSTE12insert_entryCs8CpBcHC8tKo_21ruff_python_formatter.exit

bb.ca:                                            ; preds = %bb.cb
  %i.jj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !1132
end_hunk_5
