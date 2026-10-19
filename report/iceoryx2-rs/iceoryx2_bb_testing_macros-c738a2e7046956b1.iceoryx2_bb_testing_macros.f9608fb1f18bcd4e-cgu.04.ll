Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/iceoryx2-rs/original/iceoryx2_bb_testing_macros-c738a2e7046956b1.iceoryx2_bb_testing_macros.f9608fb1f18bcd4e-cgu.04?download=true
inline.NumInlined: 785
inline.NumDeleted: 284
begin_hunk_0_@_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn8generics9TypeParamECslpqARw9yB40_26iceoryx2_bb_testing_macros:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i8, ptr %i.h, align 8, !range !19, !alias.scope !1572, !noundef !14
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs2TChw36tfyQ_3syn4attr9AttributeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !1572, !noundef !14 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i, 0
  br i1 %i.l, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1572, !nonnull !14, !noundef !14
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #9, !noalias !1572
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %bb.g, %bb.f, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecNtNtCs2TChw36tfyQ_3syn4attr9AttributeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body12 unwind label %bb.j

bb.i:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %bb.h, %bb.k
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.p, %bb.k ], [ %i.n, %bb.h ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundEEECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(8) %i.q) #11
          to label %.body4 unwind label %bb.n, !inline_history !1573

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1574)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1574, !align !13, !noundef !14 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs2TChw36tfyQ_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %bb.l

bb.l:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(120) %i.s)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i unwind label %bb.m, !noalias !1575, !inline_history !1576

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #9, !noalias !1575
  br label %.body4

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i: ; preds = %bb.l
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #9, !noalias !1575
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs2TChw36tfyQ_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

bb.n:                                             ; preds = %.body12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10, !inline_history !1573
  unreachable

.body4:                                           ; preds = %.body12, %bb.m, %.body
  %.pn2 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body13, %.body12 ], [ %i.u, %bb.m ]
  %i.w = load i64, ptr %0, align 8, !range !25, !alias.scope !1577, !noundef !14
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2TChw36tfyQ_3syn2ty4TypeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %bb.o

bb.o:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn2ty4TypeECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2TChw36tfyQ_3syn2ty4TypeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit unwind label %bb.q, !inline_history !1567

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs2TChw36tfyQ_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc3vec3VecTNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCsbqH9stoieM8_5alloc5boxed3BoxNtNtCs2TChw36tfyQ_3syn8generics14TypeParamBoundEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i
  %i.y = load i64, ptr %0, align 8, !range !25, !alias.scope !1578, !noundef !14
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2TChw36tfyQ_3syn2ty4TypeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit6, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs2TChw36tfyQ_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit
  tail call fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn2ty4TypeECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0), !inline_history !1567
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2TChw36tfyQ_3syn2ty4TypeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit6

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2TChw36tfyQ_3syn2ty4TypeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit6: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs2TChw36tfyQ_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, %bb.p
  ret void

bb.q:                                             ; preds = %bb.o, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2TChw36tfyQ_3syn2ty4TypeEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %.body4, %bb.o
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn8lifetime8LifetimeECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1583)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1584)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !19, !alias.scope !1585, !noundef !14
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1585, !noundef !14 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !1585, !nonnull !14, !noundef !14
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #9, !noalias !1585
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro25IdentECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs2TChw36tfyQ_3syn4item4ItemENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtCslhcIeXEYQBj_11proc_macro211TokenStreamENCINvNtNtB1A_8adapters3map12map_try_foldBX_B38_B2y_INtNtB1C_6result6ResultB2y_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB8_16in_place_collect24write_in_place_with_dropB38_E0E0B4E_EB5d_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [352 x i8], align 8               ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 8 uses
  %i.f = alloca [352 x i8], align 8               ; 11 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.k, align 8        ; 2 uses
  %.not17 = icmp eq ptr %.promoted, %i.j
  br i1 %.not17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i = load ptr, ptr %3, align 8, !noalias !1602 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 304
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx4.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit
  %.sroa.4.018 = phi ptr [ %2, %.lr.ph ], [ %i.as, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit ] ; 3 uses
  %i.r = phi ptr [ %.promoted, %.lr.ph ], [ %i.s, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.f, ptr noundef nonnull align 8 dereferenceable(352) %i.r, i64 352, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 352 ; 3 uses
  store ptr %i.s, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1602
  store ptr %1, ptr %i.h, align 8, !noalias !1602
  store ptr %.sroa.4.018, ptr %i.l, align 8, !noalias !1602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1602
  call void @llvm.experimental.noalias.scope.decl(metadata !1603)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1602
  %i.t = load i64, ptr %i.f, align 8, !range !31, !alias.scope !1603, !noalias !1602, !noundef !14 ; 2 uses
  %i.u = icmp ne i64 %i.t, 5
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ult i64 %i.t, 2
  br i1 %i.v, label %bb.c, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro00EB2j_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.m, align 8, !alias.scope !1603, !noalias !1602, !nonnull !14, !noundef !14 ; 2 uses
  %i.x = load i64, ptr %i.n, align 8, !alias.scope !1603, !noalias !1602, !noundef !14 ; 2 uses
  %.idx = shl nuw nsw i64 %i.x, 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  %.not.not.not.i.not.i.i24 = icmp eq i64 %i.x, 0
  br i1 %.not.not.not.i.not.i.i24, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro00EB2j_.exit.i.i, label %.lr.ph26

bb.d:                                             ; preds = %.noexc5.i.i
  %.not.not.not.i.not.i.i = icmp eq ptr %i.aa, %i.y
  br i1 %.not.not.not.i.not.i.i, label %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro00EB2j_.exit.i.i, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.c, %bb.d
  %i.z = phi ptr [ %i.aa, %bb.d ], [ %i.w, %bb.c ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 256 ; 2 uses
  %i.ab = invoke noundef nonnull align 8 ptr @_RNvMNtCs2TChw36tfyQ_3syn4attrNtB2_9Attribute4path(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.z)
          to label %.noexc.i.i unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1604

.noexc.i.i:                                       ; preds = %.lr.ph26
  %i.ac = invoke noundef zeroext i1 @_RINvMs_NtCs2TChw36tfyQ_3syn4pathNtB5_4Path8is_identeECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 4)
          to label %.noexc5.i.i unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1604

.noexc5.i.i:                                      ; preds = %.noexc.i.i
  br i1 %i.ac, label %bb.e, label %bb.d

_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro00EB2j_.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(352) %i.d, ptr noundef nonnull align 8 dereferenceable(352) %i.f, i64 352, i1 false), !noalias !1605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1604
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.s unwind label %bb.r, !noalias !1604

.thread8.loopexit.split-lp.i.i:                   ; preds = %.noexc.i.i, %.lr.ph26, %bb.o, %bb.n, %bb.j, %bb.h, %bb.e
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread4.i.i

bb.e:                                             ; preds = %.noexc5.i.i
  %i.ad = invoke noundef zeroext i1 @_RNvMNtCs2TChw36tfyQ_3syn10punctuatedINtB2_10PunctuatedNtNtB4_8generics12GenericParamNtNtB4_5token5CommaE8is_emptyCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o)
          to label %bb.f unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1605

bb.f:                                             ; preds = %bb.e
  br i1 %i.ad, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  call void @llvm.experimental.noalias.scope.decl(metadata !1608)
  %i.ae = load i64, ptr %.val.i, align 8, !range !22, !alias.scope !1609, !noalias !1604, !noundef !14
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = invoke noundef nonnull ptr @_RNvXs1_NtCslhcIeXEYQBj_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %_RNvXsK_CslhcIeXEYQBj_11proc_macro2NtB5_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1605

bb.i:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !1610)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1611
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1611
  %i.ah = load i32, ptr %i.p, align 8, !alias.scope !1612, !noalias !1604, !noundef !14
  %.not.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs11_Cs10RVWdu8coO_10proc_macroNtB6_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = invoke noundef i32 @_RNvXsa_NtNtCs10RVWdu8coO_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.p)
          to label %_RNvXs11_Cs10RVWdu8coO_10proc_macroNtB6_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i.i unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1605

_RNvXs11_Cs10RVWdu8coO_10proc_macroNtB6_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.aj = phi i32 [ 0, %bb.i ], [ %i.ai, %bb.j ]  ; 3 uses
  store i32 %i.aj, ptr %i.b, align 4, !noalias !1613
  invoke void @_RNvXsb_NtCsbqH9stoieM8_5alloc3vecINtB5_3VecNtCs10RVWdu8coO_10proc_macro9TokenTreeENtNtCs8Chj7Szqq0n_4core5clone5Clone5cloneCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i)
          to label %_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.k, !noalias !1614

bb.k:                                             ; preds = %_RNvXs11_Cs10RVWdu8coO_10proc_macroNtB6_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = icmp eq i32 %i.aj, 0
  br i1 %i.al, label %.thread4.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvXs0_NtNtCs10RVWdu8coO_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.thread4.i.i unwind label %bb.m, !noalias !1614

bb.m:                                             ; preds = %bb.l
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10, !noalias !1614
  unreachable

_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %_RNvXs11_Cs10RVWdu8coO_10proc_macroNtB6_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i.i
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.a, align 8, !noalias !1615
  %.sroa.3.0.copyload3.i.i.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !1615
  %.sroa.4.0.copyload5.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx4.i.i.i, align 8, !noalias !1615
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1611
  br label %_RNvXsK_CslhcIeXEYQBj_11proc_macro2NtB5_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i

_RNvXsK_CslhcIeXEYQBj_11proc_macro2NtB5_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i, %bb.h
  %.sroa.46.0.i.i.i = phi i32 [ %i.aj, %_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ %.sroa.4.0.copyload5.i.i.i, %_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.h ]
  %.sroa.3.0.i.i.i = phi ptr [ %.sroa.3.0.copyload3.i.i.i, %_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ag, %bb.h ]
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %_RNvXsA_NtCslhcIeXEYQBj_11proc_macro23impNtB5_19DeferredTokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i.i.i ], [ -1, %bb.h ]
  store i64 %.sroa.0.0.i.i.i, ptr %i.e, align 8, !alias.scope !1606, !noalias !1604
  store ptr %.sroa.3.0.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !1606, !noalias !1604
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !1606, !noalias !1604
  store i32 %.sroa.46.0.i.i.i, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !alias.scope !1606, !noalias !1604
  br label %bb.o

bb.n:                                             ; preds = %bb.f
  invoke void @_RNvMCslhcIeXEYQBj_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.o unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1605

bb.o:                                             ; preds = %bb.n, %_RNvXsK_CslhcIeXEYQBj_11proc_macro2NtB5_11TokenStreamNtNtCs8Chj7Szqq0n_4core5clone5Clone5clone.exit.i.i
  invoke void @_RNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros8internal17instantiate_tests(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.p unwind label %.thread8.loopexit.split-lp.i.i, !noalias !1602

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.f)
          to label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit unwind label %bb.w, !noalias !1602

bb.q:                                             ; preds = %bb.t, %bb.r
  %.pn.i.i = phi { ptr, i32 } [ %i.ao, %bb.t ], [ %i.an, %bb.r ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(352) %i.d) #11
          to label %.body.i unwind label %bb.v, !noalias !1604

bb.r:                                             ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro00EB2j_.exit.i.i
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.s:                                             ; preds = %_RINvXs2J_NtNtCs8Chj7Szqq0n_4core5slice4iterINtB7_4IterNtNtCs2TChw36tfyQ_3syn4attr9AttributeENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro00EB2j_.exit.i.i
  invoke void @_RNvXsk_NtCs2TChw36tfyQ_3syn4itemNtB5_4ItemNtNtCs2umgazJ8nt4_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(352) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.u unwind label %bb.t, !noalias !1604

bb.t:                                             ; preds = %bb.s
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtCslhcIeXEYQBj_11proc_macro211TokenStreamECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.c) #11
          to label %bb.q unwind label %bb.v, !noalias !1604

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !1616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1604
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(352) %i.d)
          to label %.noexc2.i unwind label %bb.w, !noalias !1602

.noexc2.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1604
  br label %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit

bb.v:                                             ; preds = %.thread4.i.i, %bb.t, %bb.q
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10, !noalias !1605
  unreachable

.thread4.i.i:                                     ; preds = %.thread8.loopexit.split-lp.i.i, %bb.l, %bb.k
  %eh.lpad-body7.i.i = phi { ptr, i32 } [ %i.ak, %bb.l ], [ %i.ak, %bb.k ], [ %lpad.loopexit.split-lp.i.i, %.thread8.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(352) %i.f) #11
          to label %.body.i unwind label %bb.v, !noalias !1605

bb.w:                                             ; preds = %bb.u, %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.x:                                             ; preds = %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

.body.i:                                          ; preds = %bb.w, %.thread4.i.i, %bb.q
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.aq, %bb.w ], [ %.pn.i.i, %bb.q ], [ %eh.lpad-body7.i.i, %.thread4.i.i ]
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropNtCslhcIeXEYQBj_11proc_macro211TokenStreamEECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(16) %i.h) #11
          to label %bb.x unwind label %bb.y, !noalias !1602

bb.y:                                             ; preds = %.body.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10, !noalias !1602
  unreachable

_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit: ; preds = %bb.p, %.noexc2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.018, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !1602
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.018, i64 32 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1602
  %.not = icmp eq ptr %i.s, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.as, %_RNCINvNtNtNtCs8Chj7Szqq0n_4core4iter8adapters3map12map_try_foldNtNtCs2TChw36tfyQ_3syn4item4ItemNtCslhcIeXEYQBj_11proc_macro211TokenStreamINtNtNtCsbqH9stoieM8_5alloc3vec13in_place_drop11InPlaceDropB1v_EINtNtBa_6result6ResultB2b_zENCNvNtCslpqARw9yB40_26iceoryx2_bb_testing_macros5tests10proc_macro0NCINvNtB2g_16in_place_collect24write_in_place_with_dropB1v_E0E0B3L_.exit ]
  %i.at = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.au = insertvalue { ptr, ptr } %i.at, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.au
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2TChw36tfyQ_3syn4item4ItemE32forget_allocation_drop_remainingCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 352                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs2TChw36tfyQ_3syn4item4ItemENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i2 = phi i64 [ %i.m, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [352 x i8], ptr %.val, i64 %.sroa.0.0.i2
  %i.m = add nuw nsw i64 %.sroa.0.0.i2, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(352) %i.l)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph4
  %i.n = add i64 %.sroa.0.1.i3, 1                 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.g
  br i1 %i.o, label %._crit_edge, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = icmp eq i64 %i.m, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i3 = phi i64 [ %i.n, %bb.c ], [ %i.m, %bb.d ] ; 2 uses
  %i.r = getelementptr inbounds nuw [352 x i8], ptr %.val, i64 %.sroa.0.1.i3
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef align 8 dereferenceable(352) %i.r) #11
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.p

bb.e:                                             ; preds = %.lr.ph4
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSNtNtCs2TChw36tfyQ_3syn4item4ItemECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXse_NtNtCsbqH9stoieM8_5alloc3vec9into_iterINtB5_8IntoIterINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8, !nonnull !14, !noundef !14 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !14, !noundef !14 ; 2 uses
  %i.e = ptrtoint ptr %.val1 to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub nuw i64 %i.e, %i.f
  %i.h = udiv exact i64 %i.g, 20                  ; 3 uses
  %i.i = icmp eq ptr %.val1, %.val
  br i1 %i.i, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %.lr.ph.i

.body:                                            ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !14
  store i64 %i.l, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.j, ptr %i.m, align 8
  invoke void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBP_6client11TokenStreamNtB1A_4SpanNtNtBP_6symbol6SymbolEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.i unwind label %bb.h

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i
  %.sroa.0.09.i = phi i64 [ %i.o, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %.val, i64 %.sroa.0.09.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i8, ptr %i.p, align 4, !range !1631, !alias.scope !1632, !noundef !14
  %i.r = icmp samesign ult i8 %i.q, 4
  br i1 %i.r, label %bb.b, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !alias.scope !1633, !noundef !14
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCs10RVWdu8coO_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.s)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i unwind label %bb.d

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.v = icmp eq i64 %i.o, %i.h
  br i1 %i.v, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = icmp eq i64 %i.o, %i.h
  br i1 %i.x, label %.body, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.z, %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i ], [ %i.o, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %.val, i64 %.sroa.0.110.i ; 2 uses
  %i.z = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load i8, ptr %i.aa, align 4, !range !1631, !alias.scope !1634, !noundef !14
  %i.ac = icmp samesign ult i8 %i.ab, 4
  br i1 %i.ac, label %bb.e, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !alias.scope !1635, !noundef !14
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCs10RVWdu8coO_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ad)
          to label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i unwind label %bb.g

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.ag = icmp eq i64 %i.z, %i.h
  br i1 %i.ag, label %.body, label %.lr.ph12.i

bb.g:                                             ; preds = %bb.f
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #10
  unreachable

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueSINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBF_6client11TokenStreamNtB1q_4SpanNtNtBF_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit: ; preds = %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBE_6client11TokenStreamNtB1p_4SpanNtNtBE_6symbol6SymbolEECslpqARw9yB40_26iceoryx2_bb_testing_macros.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = load ptr, ptr %0, align 8, !nonnull !14, !noundef !14
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !14
  store i64 %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ai, ptr %i.al, align 8
  call void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecINtNtCs10RVWdu8coO_10proc_macro6bridge9TokenTreeNtNtBP_6client11TokenStreamNtB1A_4SpanNtNtBP_6symbol6SymbolEENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCslpqARw9yB40_26iceoryx2_bb_testing_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
end_hunk_0
