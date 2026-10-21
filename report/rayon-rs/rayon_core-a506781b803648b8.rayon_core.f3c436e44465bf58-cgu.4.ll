Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon_core-a506781b803648b8.rayon_core.f3c436e44465bf58-cgu.4?download=true
inline.NumInlined: 202
inline.NumDeleted: 122
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECskVyUMSjkkSy_10rayon_core:bb.a
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !6, !invariant.load !4, !noalias !14 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !7, !invariant.load !4, !noalias !14
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.n, i64 noundef range(i64 1, 536870913) %i.q) #22, !noalias !14
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i.i.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b, %bb.e, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBC_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB1W_NtB1Y_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTIBy_DNtNtBP_3any3AnyNtNtBP_6marker4SendEL_EEEp6OutputuB1J_NtB1L_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB1Q_4SyncEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnTjEEp6OutputuNtNtBP_6marker4SendNtB1D_4SyncEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit.i.i: ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit.i.i
  %.sroa.0.0.i.i2 = phi i64 [ %i.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [256 x i8], ptr %.val, i64 %.sroa.0.0.i.i2
  %i.f = add nuw nsw i64 %.sroa.0.0.i.i2, 1       ; 4 uses
  invoke void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit.i.i unwind label %bb.b

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit7.i.i: ; preds = %.lr.ph4
  %i.g = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph4

bb.b:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit7.i.i
  %.sroa.0.1.i.i3 = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit7.i.i ], [ %i.f, %bb.b ] ; 2 uses
  %i.k = getelementptr inbounds nuw [256 x i8], ptr %.val, i64 %.sroa.0.1.i.i3
  invoke void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit7.i.i unwind label %bb.c

bb.c:                                             ; preds = %.lr.ph4
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit7.i.i, %bb.b
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEEB1j_.exit unwind label %bb.d

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEBF_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEEB1j_.exit: ; preds = %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1c_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !35, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !35, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i.i
  %.sroa.0.09.i.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.09.i.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i.i, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !37)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !41, !noalias !35, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !42
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.f) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i.i unwind label %bb.c, !noalias !35

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i.i: ; preds = %bb.b, %.lr.ph.i.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i.i
  %.sroa.0.110.i.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.110.i.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !47, !noalias !35, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !48
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.m) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i.i unwind label %bb.e, !noalias !35

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i.i: ; preds = %bb.d, %.lr.ph12.i.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !49
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i.i, %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1j_.exit unwind label %bb.f

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.f:                                             ; preds = %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1j_.exit: ; preds = %.body
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtBP_6marker4SendEL_ENtNtBN_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef range(i64 1, 536870913) %i.f) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.c, %bb.d
  ret void

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, -9223372036854775808) %i.i, i64 noundef range(i64 1, 536870913) %i.l) #22
  br label %_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4

_RNvXs8_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core.exit4: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !72)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !73, !nonnull !4, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !73, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2o_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i
  %.sroa.0.09.i.i.i.i = phi i64 [ %i.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.09.i.i.i.i ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.09.i.i.i.i, 1   ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !75)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.i = load ptr, ptr %i.g, align 8, !alias.scope !78, !noalias !73, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !79
  %i.j = icmp eq i64 %1, 1
  br i1 %i.j, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.g) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i unwind label %bb.c, !noalias !73

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.k = icmp eq i64 %i.h, %i.e
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2o_.exit, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.e
  br i1 %i.m, label %.body.i.i, label %.lr.ph12.i.i.i.i

.lr.ph12.i.i.i.i:                                 ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i
  %.sroa.0.110.i.i.i.i = phi i64 [ %i.o, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %.sroa.0.110.i.i.i.i ; 2 uses
  %i.o = add i64 %.sroa.0.110.i.i.i.i, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !82)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !83, !noalias !73, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !84
  %i.q = icmp eq i64 %2, 1
  br i1 %i.q, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i

bb.d:                                             ; preds = %.lr.ph12.i.i.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.n) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i unwind label %bb.e, !noalias !73

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i: ; preds = %bb.d, %.lr.ph12.i.i.i.i
  %i.r = icmp eq i64 %i.o, %i.e
  br i1 %i.r, label %.body.i.i, label %.lr.ph12.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !85
  unreachable

.body.i.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i.i.i.i, %bb.c
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB26_.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %.body.i.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB26_.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %i.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2o_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i.i.i.i, %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !92, !noundef !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !93
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.a) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch14CountLatchKindEBF_.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5scope9ScopeBaseEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !116, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !116
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %0) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !119, !noundef !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !120
  %i.f = icmp eq i64 %2, 1
  br i1 %i.f, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.d) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !123, !noundef !4 ; 2 uses
  %.not.i.i2 = icmp eq ptr %i.h, null
  br i1 %.not.i.i2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit
  %3 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !124
  %i.i = icmp eq i64 %3, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.g) #24
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5latch10CountLatchEBF_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCskVyUMSjkkSy_10rayon_core5scopeNtB2_5Scope3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef align 128 %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %1, null
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 272
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry(), !noalias !132
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.05.0.i = phi ptr [ %i.d, %bb.d ], [ %i.c, %bb.c ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !132
  %i.e = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !133, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !noalias !132
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !133, !nonnull !4, !noundef !4 ; 3 uses
  store ptr %i.h, ptr %i.b, align 8, !noalias !132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !132
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noundef align 128 %1)
          to label %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit unwind label %bb.h, !noalias !132

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  %3 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !134
  %i.j = icmp eq i64 %3, 1
  br i1 %i.j, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit.i

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit.i unwind label %bb.j, !noalias !132

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !132
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEEB1d_.exit.i: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.i

_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit: ; preds = %bb.f
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !132
  store ptr %i.h, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase12job_panicked(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, -9223372036854775808) %i.f, i64 noundef range(i64 1, 536870913) %i.i) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef range(i64 1, -9223372036854775808) %i.l, i64 noundef range(i64 1, 536870913) %i.o) #22
  br label %common.resume

common.resume:                                    ; preds = %bb.j, %bb.s, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.j, %bb.g ], [ %i.ac, %bb.s ], [ %i.r, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.p = tail call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 16, i64 noundef 8) #22 ; 7 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %bb.l, !prof !8

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 16) #25
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr nonnull %1, ptr nonnull %2) #26
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.t, %bb.l
  ret void

bb.l:                                             ; preds = %bb.h
  store ptr %1, ptr %i.p, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %2, ptr %i.t, align 8
  %i.u = cmpxchg ptr %i.a, ptr null, ptr %i.p release monotonic, align 8
  %i.v = extractvalue { ptr, i1 } %i.u, 1
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val.i = load ptr, ptr %i.p, align 8           ; 5 uses
  %.val1.i = load ptr, ptr %i.t, align 8, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #22
  br label %bb.t

bb.q:                                             ; preds = %bb.n
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #22
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 16, i64 noundef 8) #22
  br label %common.resume

bb.t:                                             ; preds = %bb.p, %bb.o
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef 16, i64 noundef 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase21maybe_propagate_panic(ptr nofree noundef nonnull align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw xchg ptr %i.a, ptr null monotonic, align 8 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !9, !noundef !4
  invoke void @_RNvNtCskVyUMSjkkSy_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.f) #25
          to label %bb.d unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 16, i64 noundef 8) #22
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE16into_boxed_sliceB1D_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 3 uses
  %i.d = icmp ugt i64 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = invoke { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef range(i64 0, 9223372036854775807) %i.c, i64 noundef 8, i64 noundef 16)
          to label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit unwind label %bb.d ; 2 uses

bb.c:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge, %bb.a
  %.sroa.511.0.copyload = phi i64 [ %.sroa.511.0.copyload.pre, %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge ], [ %i.c, %bb.a ] ; 2 uses
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.410.0.copyload = load ptr, ptr %.sroa.410.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.f = icmp ult i64 %.sroa.511.0.copyload, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.410.0.copyload, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %.sroa.511.0.copyload, 1
  ret { ptr, i64 } %i.h

bb.d:                                             ; preds = %bb.b, %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1R_.exit unwind label %bb.g

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.b
  %i.j = extractvalue { i64, i64 } %i.e, 0        ; 2 uses
  %.not = icmp eq i64 %i.j, -1
  br i1 %.not, label %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge, label %bb.e, !prof !135

_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit._crit_edge: ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit
  %.sroa.511.0.copyload.pre = load i64, ptr %i.b, align 8
  br label %bb.c

bb.e:                                             ; preds = %_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner6shrinkCskVyUMSjkkSy_10rayon_core.exit
  %i.k = extractvalue { i64, i64 } %i.e, 1
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.k) #25
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1R_.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs_NtCskVyUMSjkkSy_10rayon_core5scopeNtB4_9ScopeFifo3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef align 128 %1, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not9.i = icmp eq ptr %1, null
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 272
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry(), !noalias !150
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.05.0.i = phi ptr [ %i.h, %bb.d ], [ %i.g, %bb.c ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !150
  %i.i = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !149, !nonnull !4, !noundef !4
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !150
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %.sroa.05.0.i, align 8, !noalias !149, !nonnull !4, !noundef !4 ; 4 uses
  store ptr %i.l, ptr %i.e, align 8, !noalias !150
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !150
  invoke void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.d, ptr noundef align 128 %1)
          to label %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit unwind label %bb.h, !noalias !150

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !151
  %i.n = icmp eq i64 %3, 1
  br i1 %i.n, label %bb.i, label %common.resume

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.e) #24
          to label %common.resume unwind label %bb.j, !noalias !150

bb.j:                                             ; preds = %bb.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !150
  unreachable

common.resume:                                    ; preds = %.body, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.m, %bb.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit: ; preds = %bb.f
  store ptr %i.l, ptr %i.f, align 8, !alias.scope !149
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr null, ptr %i.p, align 8, !alias.scope !149
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !noalias !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !150
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 520
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 4 uses
  %i.t = icmp ult i64 %i.s, 192153584101141163
  call void @llvm.assume(i1 %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !153
  invoke void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 192153584101141163) %i.s, i1 noundef zeroext false, i64 noundef 128, i64 noundef 256)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit
  %i.u = load i64, ptr %i.b, align 8, !range !5, !noalias !153, !noundef !4
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !10, !noalias !153, !noundef !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.v, label %bb.k, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i, !prof !8

bb.k:                                             ; preds = %.noexc
  %i.z = load i64, ptr %i.y, align 8, !noalias !153
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.x, i64 %i.z) #25
          to label %.noexc1 unwind label %bb.n

.noexc1:                                          ; preds = %bb.k
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i: ; preds = %.noexc
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !153, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = icmp ule i64 %i.s, %i.x
  call void @llvm.assume(i1 %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !153
  store i64 %i.x, ptr %i.c, align 8, !noalias !153
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.aa, ptr %i.ac, align 8, !noalias !153
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.ad, align 8, !noalias !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.aa, ptr %i.ae, align 8, !noalias !154
  store ptr %i.ad, ptr %i.a, align 8, !noalias !154
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.af, align 8, !noalias !154
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCskVyUMSjkkSy_10rayon_core5scopeNtB1w_9ScopeFifo3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callNtNtB1y_3job7JobFifoNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3W_3VecB3t_E14extend_trustedBN_E0E0EB1y_(i64 noundef 0, i64 noundef range(i64 0, 192153584101141163) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.o unwind label %bb.l, !noalias !153

bb.l:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #26
          to label %.body unwind label %bb.m, !noalias !153

bb.m:                                             ; preds = %bb.l
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !153
  unreachable

bb.n:                                             ; preds = %bb.k, %_RNvMs0_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeBase3new.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ag, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5scope9ScopeBaseEBF_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #26
          to label %common.resume unwind label %bb.p

bb.o:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1M_3ops5range5RangejENCNvMs_NtBK_5scopeNtB31_9ScopeFifo3new0EEBK_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !153
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.p:                                             ; preds = %.body
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke void @_RNvXs2_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 128 dereferenceable(256) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 384, i64 noundef range(i64 1, 536870913) 128) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit: ; preds = %bb.a
  %i.g = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = atomicrmw sub ptr %i.h, i64 1 release, align 8
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 384, i64 noundef range(i64 1, 536870913) 128) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB2s_.exit, %bb.e, %bb.f
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEERNtNtBG_5alloc6GlobalEEB31_.exit: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  invoke void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.d = load ptr, ptr %i.b, align 8, !alias.scope !174, !noundef !4 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %1 = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !175
  %i.f = icmp eq i64 %1, 1
  br i1 %i.f, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i unwind label %bb.p

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.g = load ptr, ptr %i.b, align 8, !alias.scope !177, !noundef !4 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !178
  %i.i = icmp eq i64 %2, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i unwind label %bb.h

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.h, %bb.d, %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.h ], [ %i.c, %bb.d ], [ %i.c, %bb.b ], [ %i.c, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell10UnsafeCellINtNtB4_6option6OptionINtNtB4_6result6ResultuINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEEECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #26
          to label %.body unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i: ; preds = %bb.g, %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !180)
  %i.m = load i64, ptr %i.l, align 8, !range !5, !alias.scope !181, !noundef !4
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !181, !noundef !4 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val1.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !181 ; 6 uses
  %i.q = icmp eq ptr %.val.i.i.i, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.r = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !4, !noalias !182 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void %i.r(ptr noundef nonnull %.val.i.i.i)
          to label %bb.l unwind label %bb.n, !noalias !182

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !6, !invariant.load !4, !noalias !182 ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.v = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !7, !invariant.load !4, !noalias !182
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.t, i64 noundef range(i64 1, 536870913) %i.w) #22, !noalias !182
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit

bb.n:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !6, !invariant.load !4, !noalias !182 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.body, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !7, !invariant.load !4, !noalias !182
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #22, !noalias !182
  br label %.body

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i, %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i, %bb.n, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit.i ], [ %i.x, %bb.n ], [ %i.x, %bb.o ]
  %i.ae = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit, label %bb.q

bb.q:                                             ; preds = %.body
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = atomicrmw sub ptr %i.af, i64 1 release, align 8
  %i.ag = icmp eq i64 %3, 1
  br i1 %i.ag, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit

bb.r:                                             ; preds = %bb.q
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.m, %bb.l, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataEEECskVyUMSjkkSy_10rayon_core.exit3.i
  %i.ah = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ah, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2, label %bb.s

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = atomicrmw sub ptr %i.ai, i64 1 release, align 8
  %i.aj = icmp eq i64 %4, 1
  br i1 %i.aj, label %bb.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2

bb.t:                                             ; preds = %bb.s
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 48, i64 noundef range(i64 1, 536870913) 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEECskVyUMSjkkSy_10rayon_core.exit, %bb.s, %bb.t
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuERNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.r, %bb.q, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 24 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 504
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit.i unwind label %bb.aa

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit21.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit.i: ; preds = %bb.d, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.d, %bb.b ]
  invoke void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit.i unwind label %bb.aa

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit21.i: ; preds = %bb.c
  invoke void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit22.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit.i: ; preds = %bb.e, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit.i
  %.pn2.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %.pn.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit.i ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #26
          to label %bb.f unwind label %bb.aa

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit21.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit22.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit21.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEEB2O_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.j)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit.i
  %.pn4.i = phi { ptr, i32 } [ %i.m, %bb.g ], [ %.pn2.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %.val11.i = load ptr, ptr %i.k, align 8, !alias.scope !185, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %.val12.i = load ptr, ptr %i.l, align 8, !alias.scope !185
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.val11.i, ptr %.val12.i) #26
          to label %.body.i unwind label %bb.aa

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit22.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit22.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  %.val.i = load ptr, ptr %i.n, align 8, !alias.scope !185, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  %.val10.i = load ptr, ptr %i.o, align 8, !alias.scope !185 ; 6 uses
  %i.p = icmp eq ptr %.val.i, null
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10.i) ]
  %i.q = load ptr, ptr %.val10.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void %i.q(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.s, i64 noundef range(i64 1, 536870913) %i.v) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i

bb.m:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.val10.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, -9223372036854775808) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #22
  br label %.body.i

.body.i:                                          ; preds = %bb.n, %bb.m, %bb.f
  %.pn6.i = phi { ptr, i32 } [ %.pn4.i, %bb.f ], [ %i.w, %bb.m ], [ %i.w, %bb.n ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %.val19.i = load ptr, ptr %i.ac, align 8, !alias.scope !185, !noundef !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %.val20.i = load ptr, ptr %i.ad, align 8, !alias.scope !185
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.val19.i, ptr %.val20.i) #26
          to label %.body24.i unwind label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.l, %bb.k, %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %.val17.i = load ptr, ptr %i.ae, align 8, !alias.scope !185, !noundef !4 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 440
  %.val18.i = load ptr, ptr %i.af, align 8, !alias.scope !185 ; 6 uses
  %i.ag = icmp eq ptr %.val17.i, null
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val18.i) ]
  %i.ah = load ptr, ptr %.val18.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i23.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i23.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void %i.ah(ptr noundef nonnull %.val17.i)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.am = load i64, ptr %i.al, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, -9223372036854775808) %i.aj, i64 noundef range(i64 1, 536870913) %i.am) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i

bb.s:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.val18.i, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %.body24.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %.val18.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17.i, i64 noundef range(i64 1, -9223372036854775808) %i.ap, i64 noundef range(i64 1, 536870913) %i.as) #22
  br label %.body24.i

.body24.i:                                        ; preds = %bb.t, %bb.s, %.body.i
  %.pn8.i = phi { ptr, i32 } [ %.pn6.i, %.body.i ], [ %i.an, %bb.s ], [ %i.an, %bb.t ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %.val15.i = load ptr, ptr %i.at, align 8, !alias.scope !185, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %.val16.i = load ptr, ptr %i.au, align 8, !alias.scope !185
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core(ptr %.val15.i, ptr %.val16.i) #26
          to label %.body unwind label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.r, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTIBY_DNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEEp6OutputuB2i_NtB2k_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %.val13.i = load ptr, ptr %i.av, align 8, !alias.scope !185, !noundef !4 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  %.val14.i = load ptr, ptr %i.aw, align 8, !alias.scope !185 ; 6 uses
  %i.ax = icmp eq ptr %.val13.i, null
  br i1 %i.ax, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEBF_.exit, label %bb.u

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val14.i) ]
  %i.ay = load ptr, ptr %.val14.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i26.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i26.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void %i.ay(ptr noundef nonnull %.val13.i)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.ba = load i64, ptr %i.az, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEBF_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bc = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef range(i64 1, -9223372036854775808) %i.ba, i64 noundef range(i64 1, 536870913) %i.bd) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEBF_.exit

bb.y:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.val14.i, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !6, !invariant.load !4 ; 2 uses
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.body, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bi = getelementptr inbounds nuw i8, ptr %.val14.i, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !range !7, !invariant.load !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i, i64 noundef range(i64 1, -9223372036854775808) %i.bg, i64 noundef range(i64 1, 536870913) %i.bj) #22
  br label %.body

bb.aa:                                            ; preds = %.body24.i, %.body.i, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core5sleep5SleepEBF_.exit.i, %bb.b
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

.body:                                            ; preds = %.body24.i, %bb.y, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %.pn8.i, %.body24.i ], [ %i.be, %bb.y ], [ %i.be, %bb.z ]
  %i.bl = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bl, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit, label %bb.ab

bb.ab:                                            ; preds = %.body
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.bm, i64 1 release, align 8
  %i.bn = icmp eq i64 %1, 1
  br i1 %i.bn, label %bb.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 640, i64 noundef range(i64 1, 536870913) 128) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEBF_.exit: ; preds = %bb.x, %bb.w, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnTjEEp6OutputuNtNtB4_6marker4SendNtB2c_4SyncEL_EEECskVyUMSjkkSy_10rayon_core.exit.i
  %i.bo = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.bo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit2, label %bb.ad

bb.ad:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEBF_.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = atomicrmw sub ptr %i.bp, i64 1 release, align 8
  %i.bq = icmp eq i64 %2, 1
  br i1 %i.bq, label %bb.ae, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit2

bb.ae:                                            ; preds = %bb.ad
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 640, i64 noundef range(i64 1, 536870913) 128) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryEBF_.exit, %bb.ad, %bb.ae
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtCskVyUMSjkkSy_10rayon_core8registry8RegistryRNtNtBG_5alloc6GlobalEEB1e_.exit: ; preds = %bb.ac, %bb.ab, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !201, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !201
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECskVyUMSjkkSy_10rayon_core.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECskVyUMSjkkSy_10rayon_core.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 536870913) 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.a, %bb.b
  %i.i = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECskVyUMSjkkSy_10rayon_core.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %3 = atomicrmw sub ptr %i.j, i64 1 release, align 8
  %i.k = icmp eq i64 %3, 1
  br i1 %i.k, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 1, -9223372036854775808) 40, i64 noundef range(i64 1, 536870913) 8) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit2: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataECskVyUMSjkkSy_10rayon_core.exit, %bb.f, %bb.g
  ret void

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataRNtNtBG_5alloc6GlobalEECskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.e, %bb.d, %bb.c
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef nonnull align 8 ptr @_RNvMsz_NtCsdS7Q0PB8o3V_15crossbeam_epoch6atomicINtB5_6SharedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE5derefB1N_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !4
  %i.b = and i64 %i.a, -8
  %i.c = inttoptr i64 %i.b to ptr
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define { ptr, ptr } @_RNvNtCskVyUMSjkkSy_10rayon_core5scope28get_in_place_thread_registry(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @0) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry() ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.f = tail call noundef align 128 ptr @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry14current_thread(ptr noundef nonnull align 128 %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.sroa.3.0 = phi ptr [ %i.c, %bb.c ], [ %0, %bb.a ], [ %0, %bb.b ]
  %.sroa.0.0 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.a ], [ null, %bb.b ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: noreturn nonlazybind uwtable
define void @_RNvNtCskVyUMSjkkSy_10rayon_core6unwind16resume_unwinding(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) unnamed_addr #4 {
bb.a:
  tail call void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1) #25
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXNtCskVyUMSjkkSy_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull readnone captures(none) %0) unnamed_addr #5 {
bb.a:
  tail call void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull @1, ptr noundef nonnull inttoptr (i64 87 to ptr))
  tail call void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB2_12SpecFromIterBU_INtNtNtNtB11_4iter8adapters3map3MapINtNtNtB11_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB42_6BufferB1P_E5alloc0EE9from_iterB1T_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !208
  %spec.select.i.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !208
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16), !noalias !208
  %i.d = load i64, ptr %i.b, align 8, !range !5, !noalias !208, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !noalias !208, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB3F_6BufferB1B_E5alloc0EEB1F_.exit.i.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !noalias !208
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #25, !noalias !208
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB3F_6BufferB1B_E5alloc0EEB1F_.exit.i.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !noalias !208, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !208
  store i64 %i.g, ptr %i.c, align 8, !noalias !208
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8, !noalias !208
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8, !noalias !208
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !209
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !209
  store ptr %i.m, ptr %i.a, align 8, !noalias !209
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !209
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1w_6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0EB2r_(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB4i_6BufferB1Y_E5alloc0EE9from_iterB22_.exit unwind label %bb.c, !noalias !208

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB3F_6BufferB1B_E5alloc0EEB1F_.exit.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1R_.exit.i unwind label %bb.d, !noalias !208

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !208
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtNtB4_3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEEB1R_.exit.i: ; preds = %bb.c
  resume { ptr, i32 } %i.p

_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtB4_18SpecFromIterNestedB13_INtNtNtNtB1a_4iter8adapters3map3MapINtNtNtB1a_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB4i_6BufferB1Y_E5alloc0EE9from_iterB22_.exit: ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE14extend_trustedINtNtNtNtBN_4iter8adapters3map3MapINtNtNtBN_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB3F_6BufferB1B_E5alloc0EEB1F_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !209
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !208
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs1_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_5ScopeNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %i.a, align 8
  %i.f = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 19, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  %i.k = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtB8_6option6OptionjENtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !213)
  %i.c = load i64, ptr %i.b, align 8, !range !5, !alias.scope !213, !noundef !4
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !214
  store ptr %i.e, ptr %i.a, align 8, !noalias !214
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !214
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 4), !noalias !213
  br label %_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core.exit

_RNvXsR_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionjENtNtB7_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRINtNtNtB8_4sync6atomic6AtomicjENtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs15_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCskVyUMSjkkSy_10rayon_core5scopeNtB5_9ScopeFifoNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  store i64 %i.e, ptr %i.b, align 8
  %i.f = icmp ult i64 %i.e, 36028797018963968
  call void @llvm.assume(i1 %i.f)
  %i.g = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.k = ptrtoint ptr %i.j to i64
  store i64 %i.k, ptr %i.a, align 8
  %i.l = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 5, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 19, ptr noundef nonnull %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7)
  %i.q = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneB2d_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !244)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !246)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !247, !noundef !4 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !range !6, !alias.scope !247, !noundef !4
  %i.e = icmp eq i64 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.f unwind label %bb.c, !noalias !248

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !250)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !251)
  %i.g = load ptr, ptr %1, align 8, !alias.scope !252, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.g, i64 1 release, align 8, !noalias !252
  %i.h = icmp eq i64 %2, 1
  br i1 %i.h, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %1) #24
          to label %bb.l unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !248
  unreachable

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !247, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.m = add i64 %i.c, 1
  store i64 %i.m, ptr %i.b, align 8, !alias.scope !247
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i8, ptr %i.q, align 8, !range !11, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !253)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !254)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !253
  store ptr %i.p, ptr %i.a, align 8, !noalias !255
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.r, ptr %i.s, align 8, !noalias !255
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !255, !noundef !4 ; 3 uses
  %i.v = load i64, ptr %i.n, align 8, !range !6, !alias.scope !255, !noundef !4
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1E_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.k unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %3 = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !256
  %i.y = icmp eq i64 %3, 1
  br i1 %i.y, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.a) #24
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !255, !nonnull !4, !noundef !4
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.u ; 2 uses
  store ptr %i.p, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i8 %i.r, ptr %i.ad, align 8
  %i.ae = add i64 %i.u, 1
  store i64 %i.ae, ptr %i.t, align 8, !alias.scope !255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !253
  ret void

.body:                                            ; preds = %bb.l, %bb.m, %bb.h, %bb.i
  %eh.lpad-body6 = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.f, %bb.l ], [ %i.x, %bb.i ], [ %i.f, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body6

bb.l:                                             ; preds = %bb.c, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !258)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !260, !nonnull !4, !noundef !4
  %4 = atomicrmw sub ptr %i.ag, i64 1 release, align 8, !noalias !260
  %i.ah = icmp eq i64 %4, 1
  br i1 %i.ah, label %bb.m, label %.body

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.af) #24
          to label %.body unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs2_NtNtNtCs3oUPovFnLWP_4core4iter6traits7collectTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedB2d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !265, !noundef !4 ; 3 uses
  %i.c = icmp ult i64 %i.b, 288230376151711744
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !265, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !265
  %i.g = add nuw nsw i64 %i.b, 1
  store i64 %i.g, ptr %i.a, align 8, !alias.scope !265
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load i8, ptr %i.j, align 8, !range !11, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !266, !noundef !4 ; 3 uses
  %i.n = icmp ult i64 %i.m, 576460752303423488
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !266, !nonnull !4, !noundef !4
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %i.m ; 2 uses
  store ptr %i.i, ptr %i.q, align 8, !noalias !266
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i8 %i.k, ptr %i.r, align 8, !noalias !266
  %i.s = add nuw nsw i64 %i.m, 1
  store i64 %i.s, ptr %i.l, align 8, !alias.scope !266
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs7_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB5_6AtomicOINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB9_3any3AnyNtNtB9_6marker4SendEL_EENtNtB9_3fmt5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr nofree noundef nonnull align 8 captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load atomic ptr, ptr %0 monotonic, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvXsl_NtCs3oUPovFnLWP_4core3fmtPINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_ENtB5_7Pointer3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_RNvXs8_NtNtCs3oUPovFnLWP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.c ], [ %i.g, %bb.e ], [ %i.f, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCskVyUMSjkkSy_10rayon_core9broadcastNtB4_16BroadcastContextNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 16)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !align !267, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  %i.g = load i64, ptr %i.f, align 128, !noundef !4
  store i64 %i.g, ptr %i.c, align 8
  %i.h = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 5, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 272 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 520
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  store i64 %i.l, ptr %i.b, align 8
  %i.m = icmp ult i64 %i.l, 192153584101141163
  call void @llvm.assume(i1 %i.m)
  %i.n = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 11, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = load ptr, ptr %i.i, align 16, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.q = ptrtoint ptr %i.p to i64
  store i64 %i.q, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3)
  %i.s = call noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i1 %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB3B_3ops5range5RangejENCNvMB26_NtB26_5Sleep3new0EE9from_iterB28_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 128, i64 noundef 128)
  %i.d = load i64, ptr %i.b, align 8, !range !5, !noundef !4
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !10, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB30_3ops5range5RangejENCNvMB1J_NtB1J_5Sleep3new0EEB1L_.exit.i, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #25
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB30_3ops5range5RangejENCNvMB1J_NtB1J_5Sleep3new0EEB1L_.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !272
  store ptr %i.m, ptr %i.a, align 8, !noalias !272
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !272
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB1u_5Sleep3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2k_8for_each4callINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtB1u_16WorkerSleepStateENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB3n_E14extend_trustedBN_E0E0EB1w_(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB30_3ops5range5RangejENCNvMB1J_NtB1J_5Sleep3new0EEB1L_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEEB2d_.exit unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB30_3ops5range5RangejENCNvMB1J_NtB1J_5Sleep3new0EEB1L_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEEEB2d_.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtB17_3job6JobRefEENvMs5_B15_B13_3newEE9from_iterB17_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnE0EE6extendB2u_:bb.a
  %i.f = sub i64 %i.e, %i.d
  %i.g = icmp ugt i64 %spec.select.i.i, %i.f
  br i1 %i.g, label %bb.c, label %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.d, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 32)
  br label %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i

_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !302, !noundef !4 ; 2 uses
  %i.k = load i64, ptr %i.h, align 8, !range !6, !alias.scope !302, !noundef !4
  %i.l = sub i64 %i.k, %i.j
  %i.m = icmp ugt i64 %spec.select.i.i, %i.l
  br i1 %i.m, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.j, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i, %bb.d
  tail call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0EB1A_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NvNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect14default_extendTINtNtCs1xwejQucwHj_5alloc3vec3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEIB17_INtB1G_7StealerB2q_EEEINtB4_10SpecExtendINtNtNtBa_8adapters3map3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtB2u_8registryNtB4S_8Registry3newNtB4S_12DefaultSpawnEs_0EE6extendB2u_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 4 uses
  %.not.not = icmp ugt i64 %2, %1
  br i1 %.not.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !313, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !6, !alias.scope !313, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %spec.select.i.i, %i.d
  br i1 %i.e, label %bb.c, label %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.b, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 32)
  br label %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i

_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i: ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !314, !noundef !4 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !6, !alias.scope !314, !noundef !4
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ugt i64 %spec.select.i.i, %i.j
  br i1 %i.k, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.h, i64 noundef range(i64 1, 0) %spec.select.i.i, i64 noundef 8, i64 noundef 16)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_RNvXsj_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendBF_E14extend_reserveB1w_.exit.i, %bb.d
  tail call void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0EB1A_(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsg_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_10RegistryIdNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @13)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsh_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatchNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 7, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @21)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuEp6OutputuNtNtB15_6marker4SendEL_EENtNtB13_4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !317)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit.i
  %.sroa.0.010.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.010.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.010.i, 1        ; 4 uses
  %.val8.i = load ptr, ptr %i.f, align 8, !alias.scope !317 ; 5 uses
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val9.i = load ptr, ptr %i.h, align 8, !alias.scope !317, !nonnull !4, !align !9, !noundef !4 ; 5 uses
  %i.i = load ptr, ptr %.val9.i, align 8, !invariant.load !4, !noalias !317 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  invoke void %i.i(ptr noundef nonnull %.val8.i)
          to label %bb.c unwind label %bb.e, !noalias !317

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !6, !invariant.load !4, !noalias !317 ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !range !7, !invariant.load !4, !noalias !317
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val8.i) ]
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.k, i64 noundef range(i64 1, 536870913) %i.n) #22, !noalias !317
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit.i

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = getelementptr inbounds nuw i8, ptr %.val9.i, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !6, !invariant.load !4, !noalias !317 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %.body.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %.val9.i, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !7, !invariant.load !4, !noalias !317
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef range(i64 1, -9223372036854775808) %i.q, i64 noundef range(i64 1, 536870913) %i.t) #22, !noalias !317
  br label %.body.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit.i: ; preds = %bb.d, %bb.c
  %i.u = icmp eq i64 %i.g, %i.d
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph
  %i.v = add i64 %.sroa.0.1.i17, 1                ; 2 uses
  %i.w = icmp eq i64 %i.v, %i.d
  br i1 %i.w, label %._crit_edge, label %.lr.ph

.body.i:                                          ; preds = %bb.f, %bb.e
  %i.x = icmp eq i64 %i.g, %i.d
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.g
  %.sroa.0.1.i17 = phi i64 [ %i.v, %bb.g ], [ %i.g, %.body.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i17 ; 2 uses
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !317
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %.val7.i = load ptr, ptr %i.z, align 8, !alias.scope !317, !nonnull !4, !align !9, !noundef !4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core(ptr %.val.i, ptr nonnull %.val7.i) #26
          to label %bb.g unwind label %bb.h, !noalias !317

._crit_edge:                                      ; preds = %bb.g, %.body.i
  resume { ptr, i32 } %i.o

bb.h:                                             ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !317
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function6FnOnceuEp6OutputuNtNtB4_6marker4SendEL_EECskVyUMSjkkSy_10rayon_core.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1K_(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1w_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !335)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !336, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !336
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.f) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !340, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !340
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.m) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !332
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1s_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !359, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !359
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.f) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !363, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !363
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.m) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !355
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1u_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEB1t_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBG_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !387, !nonnull !4, !noundef !4
  %1 = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !387
  %i.i = icmp eq i64 %1, 1
  br i1 %i.i, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.f) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i unwind label %bb.c

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i: ; preds = %bb.b, %.lr.ph.i
  %i.j = icmp eq i64 %i.g, %i.d
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBG_.exit, label %.lr.ph.i

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.g, %i.d
  br i1 %i.l, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i ], [ %i.g, %bb.c ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.n = add i64 %.sroa.0.110.i, 1                ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.o = load ptr, ptr %i.m, align 8, !alias.scope !392, !nonnull !4, !noundef !4
  %2 = atomicrmw sub ptr %i.o, i64 1 release, align 8, !noalias !392
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i

bb.d:                                             ; preds = %.lr.ph12.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedINtNtCsjayvGk2fZH7_15crossbeam_deque5deque5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEEE9drop_slowB2x_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %i.m) #24
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i unwind label %bb.e

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i: ; preds = %bb.d, %.lr.ph12.i
  %i.q = icmp eq i64 %i.n, %i.d
  br i1 %i.q, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit8.i, %bb.c
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23, !noalias !382
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBG_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoEBF_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0) unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1f_6option6OptionQIB1U_INtNtB1f_4cell4CellPNtB8_12WorkerThreadEEEEE9call_onceBa_(ptr noalias nofree readnone align 8 captures(none) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCskVyUMSjkkSy_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL)
  ret ptr %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCsdS7Q0PB8o3V_15crossbeam_epoch8deferredNtB5_8Deferred3newNCINvMNtB7_5guardNtB19_5Guard15defer_uncheckedNCNvMs4_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1V_6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE6resize0uE0EB2Q_(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs6_NtCsdS7Q0PB8o3V_15crossbeam_epoch8internalNtB5_5Local5defer(ptr noundef nonnull align 128, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtNtCskVyUMSjkkSy_10rayon_core5sleep16WorkerSleepStateEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1R_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1D_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs3oUPovFnLWP_4core3mem12maybe_uninit11MaybeUninitNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtBT_3ops4drop4Drop4dropB1L_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core3job7JobFifoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskVyUMSjkkSy_10rayon_core8registry10ThreadInfoENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs2_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_5InnerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef align 128 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsh_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB5_8InjectorNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB11_(ptr noalias nofree noundef align 128 dereferenceable(256)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB1O_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs0_NtNtCsaL1QbXo9JQH_3std6thread9lifecycleINtB5_6PacketuENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsaL1QbXo9JQH_3std3env3var5inner(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtNtCsaL1QbXo9JQH_3std3sys3env4unix6getenv(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0EB1A_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCs1xwejQucwHj_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0EB1A_(i64 noundef, i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMNtCskVyUMSjkkSy_10rayon_core5sleepNtB1u_5Sleep3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2k_8for_each4callINtNtCsfI5zKgsrATz_15crossbeam_utils12cache_padded11CachePaddedNtB1u_16WorkerSleepStateENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4W_3VecB3n_E14extend_trustedBN_E0E0EB1w_(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCsjayvGk2fZH7_15crossbeam_deque5dequeINtB1w_6BufferNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefE5alloc0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3b_8for_each4callINtNtNtBc_3mem12maybe_uninit11MaybeUninitB2n_ENCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB57_3VecB4e_E14extend_trustedBN_E0E0EB2r_(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvMs_NtCskVyUMSjkkSy_10rayon_core5scopeNtB1w_9ScopeFifo3new0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2q_8for_each4callNtNtB1y_3job7JobFifoNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3W_3VecB3t_E14extend_trustedBN_E0E0EB1y_(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEENvMs5_NtB2D_8registryNtB3m_10ThreadInfo3newENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Y_8for_each4callB3B_NCINvMsk_B12_INtB12_3VecB3B_E14extend_trustedBN_E0E0EB2D_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #14

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #10

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtCskVyUMSjkkSy_10rayon_core8registry15global_registry() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs8_NtCskVyUMSjkkSy_10rayon_core5latchNtB5_10CountLatch3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef align 128) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #16

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskVyUMSjkkSy_10rayon_core(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #17

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque6WorkerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1D_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtCsjayvGk2fZH7_15crossbeam_deque5deque7StealerNtNtCskVyUMSjkkSy_10rayon_core3job6JobRefEE8grow_oneB1E_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold nonlazybind uwtable
declare hidden void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #18

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellPNtNtCskVyUMSjkkSy_10rayon_core8registry12WorkerThreadEE4withNvMs8_BX_BU_3getB1s_EB1x_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef align 128 ptr @_RNvMs4_NtCskVyUMSjkkSy_10rayon_core8registryNtB5_8Registry14current_thread(ptr noundef nonnull align 128) unnamed_addr #0

; Function Attrs: noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std5panic13resume_unwind(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std2io5stdio7__eprint(ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() unnamed_addr #5

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs15_NtNtCs3oUPovFnLWP_4core4sync6atomicINtB6_6AtomicjENtNtBa_3fmt5Debug3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsl_NtCs3oUPovFnLWP_4core3fmtPINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB7_3any3AnyNtNtB7_6marker4SendEL_ENtB5_7Pointer3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRjNtB6_5Debug3fmtCskVyUMSjkkSy_10rayon_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
