Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst.typst.6bcdb96655de51b1-cgu.0?download=true
inline.NumInlined: 14587
inline.NumDeleted: 6611
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 62
loop-unroll.NumUnrolled: 111
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module6ModuleECs9fPPV5zPXBl_5typst:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9fPPV5zPXBl_5typst.exit: ; preds = %.noexc1, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECs9fPPV5zPXBl_5typst.exit.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11568)
  call void @llvm.experimental.noalias.scope.decl(metadata !11569)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11570, !nonnull !28, !noundef !28
  %i.s = atomicrmw sub ptr %i.r, i64 1 release, align 8, !noalias !11570
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerEECs9fPPV5zPXBl_5typst.exit3

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9fPPV5zPXBl_5typst.exit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #63
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerEECs9fPPV5zPXBl_5typst.exit3

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerEECs9fPPV5zPXBl_5typst.exit3: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9fPPV5zPXBl_5typst.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations6module11ModuleInnerEECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles13NativeRuleMapECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11575)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11576)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load i64, ptr %i.a, align 8, !alias.scope !11577, !noundef !28 ; 4 uses
  %i.b = icmp eq i64 %.val1.i.i, 0
  br i1 %i.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i.i, label %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11577, !nonnull !28, !noundef !28
  %or.cond.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i.i)
  %i.d = shl i64 %.val1.i.i, 3
  %i.e = and i64 %i.d, -16                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add nsw i64 %.val1.i.i, 17
  %i.h = add i64 %i.g, %i.f                       ; 3 uses
  %i.i = icmp uge i64 %i.h, %i.f
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.j)
  %i.k = sub nuw nsw i64 -16, %i.e
  %i.l = getelementptr inbounds i8, ptr %.val.i.i, i64 %i.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !11577
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RNvMs1_NtCs2qDE43xvXom_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.a
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !11577 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9fPPV5zPXBl_5typst.exit, label %bb.b

bb.b:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load ptr, ptr %i.n, align 8, !alias.scope !11577, !nonnull !28, !noundef !28
  %i.o = mul nuw i64 %.val2.i.i, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !11577
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsjFU9swAW47b_8indexmap3map8IndexMapTNtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7element7ElementNtNtB1n_7target_6TargetENtNtNtB1n_6styles4rule14NativeShowRuleNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs2qDE43xvXom_9hashbrown5table9HashTablejEECs9fPPV5zPXBl_5typst.exit.i.i, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles14TransformationECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !32, !noundef !28
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b), !inline_history !9
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11595)
  %i.c = load i64, ptr %i.b, align 8, !range !68, !alias.scope !11596, !noundef !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  switch i64 %i.c, label %bb.e [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit
    i64 2, label %bb.g
    i64 3, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11598)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !11599, !nonnull !28, !noundef !28
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !11599
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcTNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncNtNtBL_4args4ArgsEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.g:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11600)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11601)
  %i.h = load ptr, ptr %i.d, align 8, !alias.scope !11602, !nonnull !28, !noundef !28
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !11602
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func7ClosureEE9drop_slowB1w_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.i:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11603)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11604)
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !11605, !nonnull !28, !noundef !28
  %i.l = atomicrmw sub ptr %i.k, i64 1 release, align 8, !noalias !11605
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations7plugin_10PluginFuncE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #63
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func4FuncECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 16 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !91, !noundef !28 ; 2 uses
  %i.b = tail call i64 @llvm.usub.sat.i64(i64 %i.a, i64 1)
  switch i64 %i.b, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit
    i64 3, label %bb.k
    i64 4, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit
    i64 5, label %bb.s
    i64 6, label %bb.t
    i64 7, label %bb.u
    i64 8, label %bb.w
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11673)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !11674, !nonnull !28, !noundef !28
  %i.e = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !11674
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #63
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit unwind label %bb.af

bb.d:                                             ; preds = %bb.a
  %i.g = icmp eq i64 %i.a, 0
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11676)
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !11677, !noundef !28 ; 6 uses
  %i.j = icmp ugt i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.j, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.preheader

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.preheader: ; preds = %bb.e
  %i.l = icmp eq i64 %i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit unwind label %bb.f, !inline_history !11614

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i: ; preds = %.lr.ph23
  %i.n = add i64 %.sroa.0.1.i22, 1                ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.i
  br i1 %i.o, label %common.resume, label %.lr.ph23

bb.f:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = icmp eq i64 %i.i, 1
  br i1 %i.q, label %common.resume, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i
  %.sroa.0.1.i22 = phi i64 [ %i.n, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i ], [ 1, %bb.f ] ; 2 uses
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.k, i64 %.sroa.0.1.i22
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(32) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i unwind label %bb.g, !inline_history !11614

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i, %bb.f, %bb.z, %bb.y, %bb.ad, %bb.ac, %bb.ag, %bb.af, %.body.i.i, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i ], [ %i.cg, %bb.af ], [ %eh.lpad-body.i.i, %bb.p ], [ %i.bx, %bb.ac ], [ %i.bn, %bb.y ], [ %i.bn, %bb.z ], [ %i.bx, %bb.ad ], [ %i.cg, %bb.ag ], [ %i.p, %bb.f ], [ %i.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %.lr.ph23
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !inline_history !11615
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %i.k, align 16, !alias.scope !11677, !nonnull !28, !noundef !28 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !11677, !noundef !28 ; 4 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit, label %.lr.ph25

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %.lr.ph25
  %i.y = icmp eq i64 %i.aa, %i.w
  br i1 %i.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.i
  %.sroa.0.0.i.i24 = phi i64 [ %i.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.i ], [ 0, %bb.h ] ; 2 uses
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.0.i.i24
  %i.aa = add i64 %.sroa.0.0.i.i24, 1             ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.i, !noalias !11678, !inline_history !11618

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i.i: ; preds = %.lr.ph27
  %i.ac = add i64 %.sroa.0.1.i.i26, 1             ; 2 uses
  %i.ad = icmp eq i64 %i.ac, %i.w
  br i1 %i.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph27

bb.i:                                             ; preds = %.lr.ph25
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = icmp eq i64 %i.aa, %i.w
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i, label %.lr.ph27

.lr.ph27:                                         ; preds = %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i.i
  %.sroa.0.1.i.i26 = phi i64 [ %i.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i.i ], [ %i.aa, %bb.i ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %.sroa.0.1.i.i26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueECs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ah)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i.i unwind label %bb.j, !noalias !11678, !inline_history !11618

bb.j:                                             ; preds = %.lr.ph27
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64, !noalias !11678, !inline_history !11619
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit7.i.i, %bb.i
  %i.aj = mul nuw i64 %i.i, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !11678, !inline_history !11620
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.i, %bb.h
  %i.ak = mul nuw i64 %i.i, 40
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.ak, i64 noundef range(i64 1, -9223372036854775807) 8) #56, !noalias !11678, !inline_history !11620
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEECs9fPPV5zPXBl_5typst.exit.i.preheader, %.lr.ph, %bb.ah, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit5, %bb.aa, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit3, %bb.q, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECs9fPPV5zPXBl_5typst.exit.i.i, %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEEECs9fPPV5zPXBl_5typst.exit, %bb.t, %bb.s, %bb.a, %bb.a, %bb.a
  ret void

bb.k:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11683)
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !11684, !nonnull !28, !noundef !28
  %i.an = atomicrmw sub ptr %i.am, i64 1 release, align 8, !noalias !11684
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECs9fPPV5zPXBl_5typst.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.al) #63
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECs9fPPV5zPXBl_5typst.exit.i.i.i unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = landingpad { ptr, i32 }
          cleanup
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load ptr, ptr %i.aq, align 16, !alias.scope !11685, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB37_4SyncEL_EEECs9fPPV5zPXBl_5typst(ptr nonnull %.val1.i.i.i) #62
          to label %.body.i.i unwind label %bb.n

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %bb.l, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.ar, align 16, !alias.scope !11685, !nonnull !28, !noundef !28
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs7lTeezpKIYd_14regex_automata4util4pool4PoolNtNtNtBI_4meta5regex5CacheINtNtCs1xwejQucwHj_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1r_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3q_10UnwindSafeNtB37_4SyncEL_EEECs9fPPV5zPXBl_5typst(ptr nonnull %.val.i.i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECs9fPPV5zPXBl_5typst.exit.i.i unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.o, %bb.m
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.at, %bb.o ], [ %i.ap, %bb.m ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11687)
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !11688, !nonnull !28, !noundef !28
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !11689
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.p, label %common.resume

bb.p:                                             ; preds = %.body.i.i
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.au) #63
          to label %common.resume unwind label %bb.r

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex6RegexIEECs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11691)
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !11692, !nonnull !28, !noundef !28
  %i.ba = atomicrmw sub ptr %i.az, i64 1 release, align 8, !noalias !11693
  %i.bb = icmp eq i64 %i.ba, 1
  br i1 %i.bb, label %bb.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit

bb.q:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7lTeezpKIYd_14regex_automata4meta5regex5RegexECs9fPPV5zPXBl_5typst.exit.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArceE9drop_slowCs7lTeezpKIYd_14regex_automata(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ay) #63
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit

bb.r:                                             ; preds = %bb.p
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #64
  unreachable

bb.s:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bd), !inline_history !11639
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit

bb.t:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.be), !inline_history !11639
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtCsiSzwKAiqS6b_8smallvec8SmallVecAThNtNtNtCsdaEETE4DqmE_13typst_library11foundations5value5ValueEj1_EEECs9fPPV5zPXBl_5typst.exit

bb.u:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11694)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11695)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !11696, !nonnull !28, !noundef !28
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !11696
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit3

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bf) #63
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit3 unwind label %bb.y

bb.w:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11697)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11698)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !11699, !nonnull !28, !noundef !28
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !11699
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit5

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #63
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtCsdaEETE4DqmE_13typst_library11foundations8selector8SelectorEECs9fPPV5zPXBl_5typst.exit5 unwind label %bb.ac

bb.y:                                             ; preds = %bb.v
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs_NtCs91z6ktdDspq_10serde_yaml3serQINtB4_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEENtNtCs7PiwjADO7TO_10serde_core3ser10Serializer13serialize_strCs9fPPV5zPXBl_5typst:bb.a
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = icmp samesign ult i64 %2, 16
  br i1 %i.ab, label %.preheader.i.i.i, label %bb.b

.preheader.i.i.i:                                 ; preds = %bb.a
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %.thread, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.ac = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 10, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) ; 2 uses
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %i.ae = extractvalue { i64, i64 } %i.ac, 1
  %i.af = trunc nuw i64 %i.ad to i1
  br i1 %i.af, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, label %.loopexit

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.04.011.i.i.i = phi i64 [ %i.aj, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.04.011.i.i.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !45387, !noundef !28
  %i.ai = icmp eq i8 %i.ah, 10
  br i1 %i.ai, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.aj = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.aj, %2
  br i1 %exitcond.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %.lr.ph.i.i.i, %bb.b
  %.sroa.5.0.i.i.i = phi i64 [ %i.ae, %bb.b ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.ak = icmp ult i64 %.sroa.5.0.i.i.i, %2
  tail call void @llvm.assume(i1 %i.ak)
  br label %.thread

.loopexit:                                        ; preds = %bb.c, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45388)
  switch i64 %2, label %_RNvNtCs91z6ktdDspq_10serde_yaml2de10parse_bool.exit.i [
    i64 5, label %bb.g
    i64 4, label %bb.d
    i64 1, label %bb.r
  ]

bb.d:                                             ; preds = %.loopexit
  %i.al = load i8, ptr %1, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  switch i8 %i.al, label %.thread.i [
    i8 110, label %bb.j
    i8 78, label %bb.k
  ]

.thread.i:                                        ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.d
  %i.am = load i32, ptr %1, align 1
  %i.an = icmp ne i32 %i.am, 1702195828
  %i.ao = zext i1 %i.an to i32
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.e

bb.e:                                             ; preds = %.thread.i
  %i.aq = load i32, ptr %1, align 1
  %i.ar = icmp ne i32 %i.aq, 1702195796
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = load i32, ptr %1, align 1
  %i.av = icmp ne i32 %i.au, 1163219540
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.g:                                             ; preds = %.loopexit
  %i.ay = load i32, ptr %1, align 1
  %i.az = xor i32 %i.ay, 1936482662
  %i.ba = getelementptr i8, ptr %1, i64 4
  %i.bb = load i8, ptr %i.ba, align 1
  %i.bc = zext i8 %i.bb to i32
  %i.bd = xor i32 %i.bc, 101
  %i.be = or i32 %i.az, %i.bd
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = zext i1 %i.bf to i32
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load i32, ptr %1, align 1
  %i.bj = xor i32 %i.bi, 1936482630
  %i.bk = getelementptr i8, ptr %1, i64 4
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32
  %i.bn = xor i32 %i.bm, 101
  %i.bo = or i32 %i.bj, %i.bn
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = load i32, ptr %1, align 1
  %i.bt = xor i32 %i.bs, 1397506374
  %i.bu = getelementptr i8, ptr %1, i64 4
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = xor i32 %i.bw, 69
  %i.by = or i32 %i.bt, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.j:                                             ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.ce = icmp eq i8 %i.cd, 117
  br i1 %i.ce, label %bb.l, label %.thread.i

bb.k:                                             ; preds = %bb.d
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  switch i8 %i.cg, label %.thread.i [
    i8 117, label %bb.n
    i8 85, label %bb.o
  ]

bb.l:                                             ; preds = %bb.j
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.cj = icmp eq i8 %i.ci, 108
  br i1 %i.cj, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cl = load i8, ptr %i.ck, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.cm = icmp eq i8 %i.cl, 108
  br i1 %i.cm, label %.thread, label %.thread.i

bb.n:                                             ; preds = %bb.k
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.cp = icmp eq i8 %i.co, 108
  br i1 %i.cp, label %bb.p, label %.thread.i

bb.o:                                             ; preds = %bb.k
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.cs = icmp eq i8 %i.cr, 76
  br i1 %i.cs, label %bb.q, label %.thread.i

bb.p:                                             ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cu = load i8, ptr %i.ct, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.cv = icmp eq i8 %i.cu, 108
  br i1 %i.cv, label %.thread, label %.thread.i

bb.q:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.cy = icmp eq i8 %i.cx, 76
  br i1 %i.cy, label %.thread, label %.thread.i

bb.r:                                             ; preds = %.loopexit
  %i.cz = load i8, ptr %1, align 1, !alias.scope !45388, !noalias !45389, !noundef !28
  %i.da = icmp eq i8 %i.cz, 126
  br i1 %i.da, label %.thread, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvNtCs91z6ktdDspq_10serde_yaml2de10parse_bool.exit.i: ; preds = %.loopexit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45390)
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RNvNtCs91z6ktdDspq_10serde_yaml2de10parse_bool.exit.i, %bb.r, %bb.i, %bb.f
  %rhsc.i.i.i = load i8, ptr %1, align 1, !alias.scope !45391, !noalias !45392
  %i.db = icmp eq i8 %rhsc.i.i.i, 43              ; 2 uses
  %i.dc = sext i1 %i.db to i64
  %.sroa.7.0.i.i.i = add i64 %2, %i.dc            ; 19 uses
  %.sroa.01.0.idx.i.i.i = zext i1 %i.db to i64
  %.sroa.01.0.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.0.idx.i.i.i ; 44 uses
  %.not.i40.i.i.i = icmp samesign ult i64 %.sroa.7.0.i.i.i, 2 ; 2 uses
  br i1 %.not.i40.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.dd = load i16, ptr %.sroa.01.0.i.i.i, align 1
  %i.de = icmp ne i16 30768, %i.dd
  %i.df = zext i1 %i.de to i32
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.s, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i

bb.s:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i.i.i
  %i.dh = add i64 %.sroa.7.0.i.i.i, -2            ; 6 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2 ; 2 uses
  %i.dj = icmp samesign eq i64 %i.dh, 0
  br i1 %i.dj, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dk = load i8, ptr %i.di, align 1, !alias.scope !45393, !noalias !45394, !noundef !28 ; 7 uses
  %i.dl = icmp sgt i8 %i.dk, -1
  br i1 %i.dl, label %bb.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i.i.i: ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.dn = and i8 %i.dk, 31
  %i.do = zext nneg i8 %i.dn to i32               ; 3 uses
  %i.dp = icmp samesign ne i64 %i.dh, 1
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = load i8, ptr %i.dm, align 1, !alias.scope !45393, !noalias !45394, !noundef !28
  %i.dr = shl nuw nsw i32 %i.do, 6
  %i.ds = and i8 %i.dq, 63
  %i.dt = zext nneg i8 %i.ds to i32               ; 2 uses
  %i.du = or disjoint i32 %i.dr, %i.dt
  %i.dv = icmp samesign ugt i8 %i.dk, -33
  br i1 %i.dv, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dw = zext nneg i8 %i.dk to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 4
  %i.dy = icmp samesign ne i64 %i.dh, 2
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = load i8, ptr %i.dx, align 1, !alias.scope !45393, !noalias !45394, !noundef !28
  %i.ea = shl nuw nsw i32 %i.dt, 6
  %i.eb = and i8 %i.dz, 63
  %i.ec = zext nneg i8 %i.eb to i32
  %i.ed = or disjoint i32 %i.ea, %i.ec            ; 2 uses
  %i.ee = shl nuw nsw i32 %i.do, 12
  %i.ef = or disjoint i32 %i.ed, %i.ee
  %i.eg = icmp samesign ugt i8 %i.dk, -17
  br i1 %i.eg, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.ei = icmp samesign ne i64 %i.dh, 3
  tail call void @llvm.assume(i1 %i.ei)
  %i.ej = load i8, ptr %i.eh, align 1, !alias.scope !45393, !noalias !45394, !noundef !28
  %i.ek = shl nuw nsw i32 %i.do, 18
  %i.el = and i32 %i.ek, 1835008
  %i.em = shl nuw nsw i32 %i.ed, 6
  %i.en = and i8 %i.ej, 63
  %i.eo = zext nneg i8 %i.en to i32
  %i.ep = or disjoint i32 %i.em, %i.eo
  %i.eq = or disjoint i32 %i.ep, %i.el
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i.i.i, %bb.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i.i.i
  %.sroa.4.0.i.ph.i.i.i.i.i.i = phi i32 [ %i.ef, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i.i.i ], [ %i.eq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i.i.i ], [ %i.du, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i.i.i ], [ %i.dw, %bb.u ] ; 2 uses
  %i.er = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.er)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i, label %bb.v [
    i32 45, label %.loopexit124.i.i
    i32 43, label %.loopexit124.i.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i: ; preds = %bb.x, %.preheader60.split.i.i.i.i.i.preheader, %.lr.ph.split.i.i.i.i.i, %bb.w, %bb.w, %bb.s, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i.i.i
  %i.es = load i16, ptr %.sroa.01.0.i.i.i, align 1
  %i.et = icmp ne i16 28464, %i.es
  %i.eu = zext i1 %i.et to i32
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.z, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i

bb.v:                                             ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i
  %cond37.i.i.i = icmp eq i64 %i.dh, 1
  br i1 %cond37.i.i.i, label %bb.w, label %thread-pre-split.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  switch i8 %i.dk, label %thread-pre-split.i.i.i.i.i [
    i8 43, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i
    i8 45, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i
  ]

thread-pre-split.i.i.i.i.i:                       ; preds = %bb.w, %bb.v
  %cond.i.i.i.i.i = icmp eq i8 %i.dk, 43          ; 2 uses
  %i.ew = sext i1 %cond.i.i.i.i.i to i64
  %.sroa.15.0.i.i.i.i.i = add nsw i64 %i.dh, %i.ew ; 4 uses
  %.sroa.0.0.idx.i.i.i.i.i = zext i1 %cond.i.i.i.i.i to i64
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sroa.0.0.idx.i.i.i.i.i ; 2 uses
  %i.ex = icmp samesign ult i64 %.sroa.15.0.i.i.i.i.i, 17
  br i1 %i.ex, label %.preheader.i.i.i.i.i, label %.preheader60.split.i.i.i.i.i.preheader

.preheader.i.i.i.i.i:                             ; preds = %thread-pre-split.i.i.i.i.i
  %.not5373.i.i.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i.i.i, 0
  br i1 %.not5373.i.i.i.i.i, label %.thread, label %.lr.ph.split.i.i.i.i.i

.preheader60.split.i.i.i.i.i:                     ; preds = %bb.x
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i144, i64 1
  %i.ez = add nsw i64 %.sroa.15.1.i.i.i.i.i143, -1 ; 2 uses
  %.not52.i.i.i.i.i = icmp eq i64 %i.ez, 0
  br i1 %.not52.i.i.i.i.i, label %.thread, label %.preheader60.split.i.i.i.i.i.preheader

.preheader60.split.i.i.i.i.i.preheader:           ; preds = %thread-pre-split.i.i.i.i.i, %.preheader60.split.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i144 = phi ptr [ %i.ey, %.preheader60.split.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i.i.i143 = phi i64 [ %i.ez, %.preheader60.split.i.i.i.i.i ], [ %.sroa.15.0.i.i.i.i.i, %thread-pre-split.i.i.i.i.i ]
  %.sroa.042.0.i.i.i.i.i142 = phi i64 [ %i.fl, %.preheader60.split.i.i.i.i.i ], [ 0, %thread-pre-split.i.i.i.i.i ] ; 2 uses
  %i.fa = icmp ugt i64 %.sroa.042.0.i.i.i.i.i142, 1152921504606846975
  br i1 %i.fa, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i, label %bb.x, !prof !38

bb.x:                                             ; preds = %.preheader60.split.i.i.i.i.i.preheader
  %i.fb = shl nuw i64 %.sroa.042.0.i.i.i.i.i142, 4 ; 2 uses
  %i.fc = load i8, ptr %.sroa.0.1.i.i.i.i.i144, align 1, !alias.scope !45395, !noalias !45396, !noundef !28 ; 2 uses
  %i.fd = zext i8 %i.fc to i32                    ; 2 uses
  %i.fe = icmp ugt i8 %i.fc, 57
  %i.ff = add nsw i32 %i.fd, -65
  %i.fg = and i32 %i.ff, -33
  %i.fh = add nuw nsw i32 %i.fg, 10
  %i.fi = add nsw i32 %i.fd, -48
  %spec.select.i.i.i.i.i = select i1 %i.fe, i32 %i.fh, i32 %i.fi ; 2 uses
  %i.fj = icmp ugt i32 %spec.select.i.i.i.i.i, 15
  %i.fk = zext nneg i32 %spec.select.i.i.i.i.i to i64
  %i.fl = add i64 %i.fb, %i.fk                    ; 2 uses
  %i.fm = icmp ult i64 %i.fl, %i.fb
  %or.cond.i.i.i = select i1 %i.fj, i1 true, i1 %i.fm, !prof !61
  br i1 %or.cond.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i, label %.preheader60.split.i.i.i.i.i, !prof !61

.lr.ph.split.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i, %bb.y
  %.sroa.0.276.i.i.i.i.i = phi ptr [ %i.fw, %bb.y ], [ %.sroa.0.0.i.i.i.i.i, %.preheader.i.i.i.i.i ] ; 2 uses
  %.sroa.15.275.i.i.i.i.i = phi i64 [ %i.fv, %bb.y ], [ %.sroa.15.0.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  %i.fn = load i8, ptr %.sroa.0.276.i.i.i.i.i, align 1, !alias.scope !45395, !noalias !45396, !noundef !28 ; 2 uses
  %i.fo = zext i8 %i.fn to i32                    ; 2 uses
  %i.fp = icmp ugt i8 %i.fn, 57
  %i.fq = add nsw i32 %i.fo, -65
  %i.fr = and i32 %i.fq, -34
  %i.fs = add nuw nsw i32 %i.fr, 10
  %i.ft = add nsw i32 %i.fo, -48
  %spec.select82.i.i.i.i.i = select i1 %i.fp, i32 %i.fs, i32 %i.ft
  %i.fu = icmp ult i32 %spec.select82.i.i.i.i.i, 16
  br i1 %i.fu, label %bb.y, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i

bb.y:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.fv = add nsw i64 %.sroa.15.275.i.i.i.i.i, -1 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.sroa.0.276.i.i.i.i.i, i64 1
  %.not53.i.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not53.i.i.i.i.i, label %.thread, label %.lr.ph.split.i.i.i.i.i

bb.z:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i
  %i.fx = add i64 %.sroa.7.0.i.i.i, -2            ; 6 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2 ; 2 uses
  %i.fz = icmp samesign eq i64 %i.fx, 0
  br i1 %i.fz, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = load i8, ptr %i.fy, align 1, !alias.scope !45397, !noalias !45398, !noundef !28 ; 7 uses
  %i.gb = icmp sgt i8 %i.ga, -1
  br i1 %i.gb, label %bb.ab, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i48.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i48.i.i.i: ; preds = %bb.aa
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.gd = and i8 %i.ga, 31
  %i.ge = zext nneg i8 %i.gd to i32               ; 3 uses
  %i.gf = icmp samesign ne i64 %i.fx, 1
  tail call void @llvm.assume(i1 %i.gf)
  %i.gg = load i8, ptr %i.gc, align 1, !alias.scope !45397, !noalias !45398, !noundef !28
  %i.gh = shl nuw nsw i32 %i.ge, 6
  %i.gi = and i8 %i.gg, 63
  %i.gj = zext nneg i8 %i.gi to i32               ; 2 uses
  %i.gk = or disjoint i32 %i.gh, %i.gj
  %i.gl = icmp samesign ugt i8 %i.ga, -33
  br i1 %i.gl, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i52.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i

bb.ab:                                            ; preds = %bb.aa
  %i.gm = zext nneg i8 %i.ga to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i52.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i48.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 4
  %i.go = icmp samesign ne i64 %i.fx, 2
  tail call void @llvm.assume(i1 %i.go)
  %i.gp = load i8, ptr %i.gn, align 1, !alias.scope !45397, !noalias !45398, !noundef !28
  %i.gq = shl nuw nsw i32 %i.gj, 6
  %i.gr = and i8 %i.gp, 63
  %i.gs = zext nneg i8 %i.gr to i32
  %i.gt = or disjoint i32 %i.gq, %i.gs            ; 2 uses
  %i.gu = shl nuw nsw i32 %i.ge, 12
  %i.gv = or disjoint i32 %i.gt, %i.gu
  %i.gw = icmp samesign ugt i8 %i.ga, -17
  br i1 %i.gw, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i53.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i53.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i52.i.i.i
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.gy = icmp samesign ne i64 %i.fx, 3
  tail call void @llvm.assume(i1 %i.gy)
  %i.gz = load i8, ptr %i.gx, align 1, !alias.scope !45397, !noalias !45398, !noundef !28
  %i.ha = shl nuw nsw i32 %i.ge, 18
  %i.hb = and i32 %i.ha, 1835008
  %i.hc = shl nuw nsw i32 %i.gt, 6
  %i.hd = and i8 %i.gz, 63
  %i.he = zext nneg i8 %i.hd to i32
  %i.hf = or disjoint i32 %i.hc, %i.he
  %i.hg = or disjoint i32 %i.hf, %i.hb
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i53.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i52.i.i.i, %bb.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i48.i.i.i
  %.sroa.4.0.i.ph.i.i.i49.i.i.i = phi i32 [ %i.gv, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i52.i.i.i ], [ %i.hg, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i53.i.i.i ], [ %i.gk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i48.i.i.i ], [ %i.gm, %bb.ab ] ; 2 uses
  %i.hh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i49.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.hh)
  switch i32 %.sroa.4.0.i.ph.i.i.i49.i.i.i, label %bb.ac [
    i32 45, label %.loopexit124.i.i
    i32 43, label %.loopexit124.i.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i: ; preds = %bb.ae, %.preheader60.split.us.i.i.i.i.i.preheader, %.lr.ph.split.us.i.i.i.i.i, %bb.ad, %bb.ad, %bb.z, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit47.i.i.i
  %i.hi = load i16, ptr %.sroa.01.0.i.i.i, align 1
  %i.hj = icmp ne i16 25136, %i.hi
  %i.hk = zext i1 %i.hj to i32
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %bb.ag, label %.thread28.i.i.i

bb.ac:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i
  %cond36.i.i.i = icmp eq i64 %i.fx, 1
  br i1 %cond36.i.i.i, label %bb.ad, label %thread-pre-split.i.i75.i.i.i

bb.ad:                                            ; preds = %bb.ac
  switch i8 %i.ga, label %thread-pre-split.i.i75.i.i.i [
    i8 43, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i
    i8 45, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i
  ]

thread-pre-split.i.i75.i.i.i:                     ; preds = %bb.ad, %bb.ac
  %cond.i.i60.i.i.i = icmp eq i8 %i.ga, 43        ; 2 uses
  %i.hm = sext i1 %cond.i.i60.i.i.i to i64
  %.sroa.15.0.i.i61.i.i.i = add nsw i64 %i.fx, %i.hm ; 4 uses
  %.sroa.0.0.idx.i.i62.i.i.i = zext i1 %cond.i.i60.i.i.i to i64
  %.sroa.0.0.i.i63.i.i.i = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.0.0.idx.i.i62.i.i.i ; 2 uses
  %i.hn = icmp samesign ult i64 %.sroa.15.0.i.i61.i.i.i, 17
  br i1 %i.hn, label %.preheader.i.i71.i.i.i, label %.preheader60.split.us.i.i.i.i.i.preheader

.preheader60.split.us.i.i.i.i.i:                  ; preds = %bb.ae
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i.i.i.i147, i64 1
  %i.hp = add nsw i64 %.sroa.15.1.us.i.i.i.i.i146, -1 ; 2 uses
  %.not52.us.i.i.i.i.i = icmp eq i64 %i.hp, 0
  br i1 %.not52.us.i.i.i.i.i, label %.thread, label %.preheader60.split.us.i.i.i.i.i.preheader

.preheader60.split.us.i.i.i.i.i.preheader:        ; preds = %thread-pre-split.i.i75.i.i.i, %.preheader60.split.us.i.i.i.i.i
  %.sroa.0.1.us.i.i.i.i.i147 = phi ptr [ %i.ho, %.preheader60.split.us.i.i.i.i.i ], [ %.sroa.0.0.i.i63.i.i.i, %thread-pre-split.i.i75.i.i.i ] ; 2 uses
  %.sroa.15.1.us.i.i.i.i.i146 = phi i64 [ %i.hp, %.preheader60.split.us.i.i.i.i.i ], [ %.sroa.15.0.i.i61.i.i.i, %thread-pre-split.i.i75.i.i.i ]
  %.sroa.042.0.us.i.i.i.i.i145 = phi i64 [ %i.hx, %.preheader60.split.us.i.i.i.i.i ], [ 0, %thread-pre-split.i.i75.i.i.i ] ; 2 uses
  %i.hq = icmp ugt i64 %.sroa.042.0.us.i.i.i.i.i145, 2305843009213693951
  br i1 %i.hq, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i, label %bb.ae, !prof !38

bb.ae:                                            ; preds = %.preheader60.split.us.i.i.i.i.i.preheader
  %i.hr = shl nuw i64 %.sroa.042.0.us.i.i.i.i.i145, 3 ; 2 uses
  %i.hs = load i8, ptr %.sroa.0.1.us.i.i.i.i.i147, align 1, !alias.scope !45399, !noalias !45400, !noundef !28
  %i.ht = zext i8 %i.hs to i32
  %i.hu = add nsw i32 %i.ht, -48                  ; 2 uses
  %i.hv = icmp ugt i32 %i.hu, 7
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = add i64 %i.hr, %i.hw                    ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.hr
  %or.cond42.i.i.i = select i1 %i.hv, i1 true, i1 %i.hy, !prof !61
  br i1 %or.cond42.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i, label %.preheader60.split.us.i.i.i.i.i, !prof !61

.preheader.i.i71.i.i.i:                           ; preds = %thread-pre-split.i.i75.i.i.i
  %.not5373.i.i72.i.i.i = icmp eq i64 %.sroa.15.0.i.i61.i.i.i, 0
  br i1 %.not5373.i.i72.i.i.i, label %.thread, label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.preheader.i.i71.i.i.i, %bb.af
  %.sroa.0.276.us.i.i.i.i.i = phi ptr [ %i.id, %bb.af ], [ %.sroa.0.0.i.i63.i.i.i, %.preheader.i.i71.i.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i.i.i.i = phi i64 [ %i.ic, %bb.af ], [ %.sroa.15.0.i.i61.i.i.i, %.preheader.i.i71.i.i.i ]
  %i.hz = load i8, ptr %.sroa.0.276.us.i.i.i.i.i, align 1, !alias.scope !45399, !noalias !45400, !noundef !28
  %i.ia = and i8 %i.hz, -8
  %i.ib = icmp eq i8 %i.ia, 48
  br i1 %i.ib, label %bb.af, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i

bb.af:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.ic = add nsw i64 %.sroa.15.275.us.i.i.i.i.i, -1 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i.i.i.i, i64 1
  %.not53.us.i.i.i.i.i = icmp eq i64 %i.ic, 0
  br i1 %.not53.us.i.i.i.i.i, label %.thread, label %.lr.ph.split.us.i.i.i.i.i

bb.ag:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i
  %i.ie = add i64 %.sroa.7.0.i.i.i, -2            ; 6 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2 ; 2 uses
  %i.ig = icmp samesign eq i64 %i.ie, 0
  br i1 %i.ig, label %.thread28.i.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ih = load i8, ptr %i.if, align 1, !alias.scope !45401, !noalias !45402, !noundef !28 ; 7 uses
  %i.ii = icmp sgt i8 %i.ih, -1
  br i1 %i.ii, label %bb.ai, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i78.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i78.i.i.i: ; preds = %bb.ah
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.ik = and i8 %i.ih, 31
  %i.il = zext nneg i8 %i.ik to i32               ; 3 uses
  %i.im = icmp samesign ne i64 %i.ie, 1
  tail call void @llvm.assume(i1 %i.im)
  %i.in = load i8, ptr %i.ij, align 1, !alias.scope !45401, !noalias !45402, !noundef !28
  %i.io = shl nuw nsw i32 %i.il, 6
  %i.ip = and i8 %i.in, 63
  %i.iq = zext nneg i8 %i.ip to i32               ; 2 uses
  %i.ir = or disjoint i32 %i.io, %i.iq
  %i.is = icmp samesign ugt i8 %i.ih, -33
  br i1 %i.is, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i82.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.it = zext nneg i8 %i.ih to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i82.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i78.i.i.i
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 4
  %i.iv = icmp samesign ne i64 %i.ie, 2
  tail call void @llvm.assume(i1 %i.iv)
  %i.iw = load i8, ptr %i.iu, align 1, !alias.scope !45401, !noalias !45402, !noundef !28
  %i.ix = shl nuw nsw i32 %i.iq, 6
  %i.iy = and i8 %i.iw, 63
  %i.iz = zext nneg i8 %i.iy to i32
  %i.ja = or disjoint i32 %i.ix, %i.iz            ; 2 uses
  %i.jb = shl nuw nsw i32 %i.il, 12
  %i.jc = or disjoint i32 %i.ja, %i.jb
  %i.jd = icmp samesign ugt i8 %i.ih, -17
  br i1 %i.jd, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i83.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i83.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i82.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.jf = icmp samesign ne i64 %i.ie, 3
  tail call void @llvm.assume(i1 %i.jf)
  %i.jg = load i8, ptr %i.je, align 1, !alias.scope !45401, !noalias !45402, !noundef !28
  %i.jh = shl nuw nsw i32 %i.il, 18
  %i.ji = and i32 %i.jh, 1835008
  %i.jj = shl nuw nsw i32 %i.ja, 6
  %i.jk = and i8 %i.jg, 63
  %i.jl = zext nneg i8 %i.jk to i32
  %i.jm = or disjoint i32 %i.jj, %i.jl
  %i.jn = or disjoint i32 %i.jm, %i.ji
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i83.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i82.i.i.i, %bb.ai, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i78.i.i.i
  %.sroa.4.0.i.ph.i.i.i79.i.i.i = phi i32 [ %i.jc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i82.i.i.i ], [ %i.jn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i83.i.i.i ], [ %i.ir, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i78.i.i.i ], [ %i.it, %bb.ai ] ; 2 uses
  %i.jo = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i79.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.jo)
  switch i32 %.sroa.4.0.i.ph.i.i.i79.i.i.i, label %bb.ak [
    i32 45, label %.loopexit124.i.i
    i32 43, label %.loopexit124.i.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i: ; preds = %bb.am, %.preheader60.split.us.i.i98.i.i.i.preheader, %.lr.ph.split.us.i.i112.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i.i.i
  %i.jp = icmp samesign eq i64 %.sroa.7.0.i.i.i, 0
  br i1 %i.jp, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.thread.i.i.i, label %.thread28.i.i.i

.thread28.i.i.i:                                  ; preds = %bb.al, %bb.al, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i, %bb.ag, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.i.i.i
  %i.jq = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !45403, !noalias !45404, !noundef !28 ; 5 uses
  %i.jr = icmp sgt i8 %i.jq, -1
  br i1 %i.jr, label %bb.aj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i85.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i85.i.i.i: ; preds = %.thread28.i.i.i
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 1
  %i.jt = and i8 %i.jq, 31
  %i.ju = zext nneg i8 %i.jt to i32               ; 3 uses
  %i.jv = icmp samesign ne i64 %.sroa.7.0.i.i.i, 1
  tail call void @llvm.assume(i1 %i.jv)
  %i.jw = load i8, ptr %i.js, align 1, !alias.scope !45403, !noalias !45404, !noundef !28
  %i.jx = shl nuw nsw i32 %i.ju, 6
  %i.jy = and i8 %i.jw, 63
  %i.jz = zext nneg i8 %i.jy to i32               ; 2 uses
  %i.ka = or disjoint i32 %i.jx, %i.jz
  %i.kb = icmp samesign ugt i8 %i.jq, -33
  br i1 %i.kb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i89.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i

bb.aj:                                            ; preds = %.thread28.i.i.i
  %i.kc = zext nneg i8 %i.jq to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i89.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i85.i.i.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2
  %i.ke = icmp samesign ne i64 %.sroa.7.0.i.i.i, 2
  tail call void @llvm.assume(i1 %i.ke)
  %i.kf = load i8, ptr %i.kd, align 1, !alias.scope !45403, !noalias !45404, !noundef !28
  %i.kg = shl nuw nsw i32 %i.jz, 6
  %i.kh = and i8 %i.kf, 63
  %i.ki = zext nneg i8 %i.kh to i32
  %i.kj = or disjoint i32 %i.kg, %i.ki            ; 2 uses
  %i.kk = shl nuw nsw i32 %i.ju, 12
  %i.kl = or disjoint i32 %i.kj, %i.kk
  %i.km = icmp samesign ugt i8 %i.jq, -17
  br i1 %i.km, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i90.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i90.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i89.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.ko = icmp samesign ne i64 %.sroa.7.0.i.i.i, 3
  tail call void @llvm.assume(i1 %i.ko)
  %i.kp = load i8, ptr %i.kn, align 1, !alias.scope !45403, !noalias !45404, !noundef !28
  %i.kq = shl nuw nsw i32 %i.ju, 18
  %i.kr = and i32 %i.kq, 1835008
  %i.ks = shl nuw nsw i32 %i.kj, 6
  %i.kt = and i8 %i.kp, 63
  %i.ku = zext nneg i8 %i.kt to i32
  %i.kv = or disjoint i32 %i.ks, %i.ku
  %i.kw = or disjoint i32 %i.kv, %i.kr
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i90.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i89.i.i.i, %bb.aj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i85.i.i.i
  %.sroa.4.0.i.ph.i.i.i86.i.i.i = phi i32 [ %i.kl, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i89.i.i.i ], [ %i.kw, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i90.i.i.i ], [ %i.ka, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i85.i.i.i ], [ %i.kc, %bb.aj ] ; 2 uses
  %i.kx = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i86.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.kx)
  switch i32 %.sroa.4.0.i.ph.i.i.i86.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.thread.i.i.i [
    i32 45, label %.loopexit124.i.i
    i32 43, label %.loopexit124.i.i
  ]

bb.ak:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i
  %cond.i.i.i = icmp eq i64 %i.ie, 1
  br i1 %cond.i.i.i, label %bb.al, label %thread-pre-split.i.i118.i.i.i

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.ih, label %thread-pre-split.i.i118.i.i.i [
    i8 43, label %.thread28.i.i.i
    i8 45, label %.thread28.i.i.i
  ]

thread-pre-split.i.i118.i.i.i:                    ; preds = %bb.al, %bb.ak
  %cond.i.i93.i.i.i = icmp eq i8 %i.ih, 43        ; 2 uses
  %i.ky = sext i1 %cond.i.i93.i.i.i to i64
  %.sroa.15.0.i.i94.i.i.i = add nsw i64 %i.ie, %i.ky ; 4 uses
  %.sroa.0.0.idx.i.i95.i.i.i = zext i1 %cond.i.i93.i.i.i to i64
  %.sroa.0.0.i.i96.i.i.i = getelementptr inbounds nuw i8, ptr %i.if, i64 %.sroa.0.0.idx.i.i95.i.i.i ; 2 uses
  %i.kz = icmp samesign ult i64 %.sroa.15.0.i.i94.i.i.i, 17
  br i1 %i.kz, label %.preheader.i.i109.i.i.i, label %.preheader60.split.us.i.i98.i.i.i.preheader

.preheader60.split.us.i.i98.i.i.i:                ; preds = %bb.am
  %i.la = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i101.i.i.i150, i64 1
  %i.lb = add nsw i64 %.sroa.15.1.us.i.i100.i.i.i149, -1 ; 2 uses
  %.not52.us.i.i102.i.i.i = icmp eq i64 %i.lb, 0
  br i1 %.not52.us.i.i102.i.i.i, label %.thread, label %.preheader60.split.us.i.i98.i.i.i.preheader

.preheader60.split.us.i.i98.i.i.i.preheader:      ; preds = %thread-pre-split.i.i118.i.i.i, %.preheader60.split.us.i.i98.i.i.i
  %.sroa.0.1.us.i.i101.i.i.i150 = phi ptr [ %i.la, %.preheader60.split.us.i.i98.i.i.i ], [ %.sroa.0.0.i.i96.i.i.i, %thread-pre-split.i.i118.i.i.i ] ; 2 uses
  %.sroa.15.1.us.i.i100.i.i.i149 = phi i64 [ %i.lb, %.preheader60.split.us.i.i98.i.i.i ], [ %.sroa.15.0.i.i94.i.i.i, %thread-pre-split.i.i118.i.i.i ]
  %.sroa.042.0.us.i.i99.i.i.i148 = phi i64 [ %i.lj, %.preheader60.split.us.i.i98.i.i.i ], [ 0, %thread-pre-split.i.i118.i.i.i ] ; 2 uses
  %i.lc = icmp slt i64 %.sroa.042.0.us.i.i99.i.i.i148, 0
  br i1 %i.lc, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i, label %bb.am, !prof !38

bb.am:                                            ; preds = %.preheader60.split.us.i.i98.i.i.i.preheader
  %i.ld = shl nuw i64 %.sroa.042.0.us.i.i99.i.i.i148, 1 ; 2 uses
  %i.le = load i8, ptr %.sroa.0.1.us.i.i101.i.i.i150, align 1, !alias.scope !45405, !noalias !45406, !noundef !28
  %i.lf = zext i8 %i.le to i32
  %i.lg = add nsw i32 %i.lf, -48                  ; 2 uses
  %i.lh = icmp ugt i32 %i.lg, 1
  %i.li = zext nneg i32 %i.lg to i64
  %i.lj = add i64 %i.ld, %i.li                    ; 2 uses
  %i.lk = icmp ult i64 %i.lj, %i.ld
  %or.cond45.i.i.i = select i1 %i.lh, i1 true, i1 %i.lk, !prof !61
  br i1 %or.cond45.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i, label %.preheader60.split.us.i.i98.i.i.i, !prof !61

.preheader.i.i109.i.i.i:                          ; preds = %thread-pre-split.i.i118.i.i.i
  %.not5373.i.i110.i.i.i = icmp eq i64 %.sroa.15.0.i.i94.i.i.i, 0
  br i1 %.not5373.i.i110.i.i.i, label %.thread, label %.lr.ph.split.us.i.i112.i.i.i

.lr.ph.split.us.i.i112.i.i.i:                     ; preds = %.preheader.i.i109.i.i.i, %bb.an
  %.sroa.0.276.us.i.i113.i.i.i = phi ptr [ %i.lp, %bb.an ], [ %.sroa.0.0.i.i96.i.i.i, %.preheader.i.i109.i.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i114.i.i.i = phi i64 [ %i.lo, %bb.an ], [ %.sroa.15.0.i.i94.i.i.i, %.preheader.i.i109.i.i.i ]
  %i.ll = load i8, ptr %.sroa.0.276.us.i.i113.i.i.i, align 1, !alias.scope !45405, !noalias !45406, !noundef !28
  %i.lm = and i8 %i.ll, -2
  %i.ln = icmp eq i8 %i.lm, 48
  br i1 %i.ln, label %bb.an, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i

bb.an:                                            ; preds = %.lr.ph.split.us.i.i112.i.i.i
  %i.lo = add nsw i64 %.sroa.15.275.us.i.i114.i.i.i, -1 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i113.i.i.i, i64 1
  %.not53.us.i.i117.i.i.i = icmp eq i64 %i.lo, 0
  br i1 %.not53.us.i.i117.i.i.i, label %.thread, label %.lr.ph.split.us.i.i112.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.thread.i.i.i: ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit58.thread.i.i.i
  %i.lq = tail call noundef zeroext i1 @_RNvNtCs91z6ktdDspq_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45392
  br i1 %i.lq, label %.loopexit124.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.thread.i.i.i
  switch i64 %.sroa.7.0.i.i.i, label %thread-pre-split.i.i147.i.i.i [
    i64 0, label %.loopexit124.i.i
    i64 1, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao
  %i.lr = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !45407, !noalias !45408, !noundef !28 ; 2 uses
  switch i8 %i.lr, label %bb.aq [
    i8 43, label %.loopexit124.i.i
    i8 45, label %.loopexit124.i.i
  ]

thread-pre-split.i.i147.i.i.i:                    ; preds = %bb.ao
  %.pr.i.i148.i.i.i = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !45407, !noalias !45408
  br label %bb.aq

bb.aq:                                            ; preds = %thread-pre-split.i.i147.i.i.i, %bb.ap
  %i.ls = phi i8 [ %.pr.i.i148.i.i.i, %thread-pre-split.i.i147.i.i.i ], [ %i.lr, %bb.ap ]
  %cond.i.i122.i.i.i = icmp eq i8 %i.ls, 43       ; 2 uses
  %i.lt = sext i1 %cond.i.i122.i.i.i to i64
  %.sroa.15.0.i.i123.i.i.i = add nsw i64 %.sroa.7.0.i.i.i, %i.lt ; 4 uses
  %.sroa.0.0.idx.i.i124.i.i.i = zext i1 %cond.i.i122.i.i.i to i64
  %.sroa.0.0.i.i125.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.0.0.idx.i.i124.i.i.i ; 2 uses
  %i.lu = icmp samesign ult i64 %.sroa.15.0.i.i123.i.i.i, 17
  br i1 %i.lu, label %.preheader.i.i138.i.i.i, label %.preheader60.split.us.i.i127.i.i.i.preheader

.preheader60.split.us.i.i127.i.i.i:               ; preds = %bb.ar
  %i.lv = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i130.i.i.i153, i64 1
  %i.lw = add nsw i64 %.sroa.15.1.us.i.i129.i.i.i152, -1 ; 2 uses
  %.not52.us.i.i131.not.i.i.i = icmp eq i64 %i.lw, 0
  br i1 %.not52.us.i.i131.not.i.i.i, label %.thread, label %.preheader60.split.us.i.i127.i.i.i.preheader

.preheader60.split.us.i.i127.i.i.i.preheader:     ; preds = %bb.aq, %.preheader60.split.us.i.i127.i.i.i
  %.sroa.0.1.us.i.i130.i.i.i153 = phi ptr [ %i.lv, %.preheader60.split.us.i.i127.i.i.i ], [ %.sroa.0.0.i.i125.i.i.i, %bb.aq ] ; 2 uses
  %.sroa.15.1.us.i.i129.i.i.i152 = phi i64 [ %i.lw, %.preheader60.split.us.i.i127.i.i.i ], [ %.sroa.15.0.i.i123.i.i.i, %bb.aq ]
  %.sroa.042.0.us.i.i128.i.i.i151 = phi i64 [ %i.mf, %.preheader60.split.us.i.i127.i.i.i ], [ 0, %bb.aq ]
  %i.lx = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.us.i.i128.i.i.i151, i64 10) ; 2 uses
  %i.ly = extractvalue { i64, i1 } %i.lx, 1
  br i1 %i.ly, label %.loopexit124.i.i, label %bb.ar, !prof !38

bb.ar:                                            ; preds = %.preheader60.split.us.i.i127.i.i.i.preheader
  %i.lz = extractvalue { i64, i1 } %i.lx, 0       ; 2 uses
  %i.ma = load i8, ptr %.sroa.0.1.us.i.i130.i.i.i153, align 1, !alias.scope !45407, !noalias !45408, !noundef !28
  %i.mb = zext i8 %i.ma to i32
  %i.mc = add nsw i32 %i.mb, -48                  ; 2 uses
  %i.md = icmp ugt i32 %i.mc, 9
  %i.me = zext nneg i32 %i.mc to i64
  %i.mf = add i64 %i.lz, %i.me                    ; 2 uses
  %i.mg = icmp ult i64 %i.mf, %i.lz
  %or.cond48.i.i.i = select i1 %i.md, i1 true, i1 %i.mg, !prof !61
  br i1 %or.cond48.i.i.i, label %.loopexit124.i.i, label %.preheader60.split.us.i.i127.i.i.i, !prof !61

.preheader.i.i138.i.i.i:                          ; preds = %bb.aq
  %.not5373.i.i139.i.i.i = icmp eq i64 %.sroa.15.0.i.i123.i.i.i, 0
  br i1 %.not5373.i.i139.i.i.i, label %.thread, label %.lr.ph.split.us.i.i141.i.i.i

.lr.ph.split.us.i.i141.i.i.i:                     ; preds = %.preheader.i.i138.i.i.i, %bb.as
  %.sroa.0.276.us.i.i142.i.i.i = phi ptr [ %i.ml, %bb.as ], [ %.sroa.0.0.i.i125.i.i.i, %.preheader.i.i138.i.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i143.i.i.i = phi i64 [ %i.mk, %bb.as ], [ %.sroa.15.0.i.i123.i.i.i, %.preheader.i.i138.i.i.i ]
  %i.mh = load i8, ptr %.sroa.0.276.us.i.i142.i.i.i, align 1, !alias.scope !45407, !noalias !45408, !noundef !28
  %i.mi = add i8 %i.mh, -58
  %i.mj = icmp ult i8 %i.mi, -10
  br i1 %i.mj, label %.loopexit124.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.split.us.i.i141.i.i.i
  %i.mk = add nsw i64 %.sroa.15.275.us.i.i143.i.i.i, -1 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i142.i.i.i, i64 1
  %.not53.us.i.i146.i.i.i = icmp eq i64 %i.mk, 0
  br i1 %.not53.us.i.i146.i.i.i, label %.thread, label %.lr.ph.split.us.i.i141.i.i.i

.loopexit124.i.i:                                 ; preds = %bb.ar, %.preheader60.split.us.i.i127.i.i.i.preheader, %.lr.ph.split.us.i.i141.i.i.i, %bb.ap, %bb.ap, %bb.ao, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.thread.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit91.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit84.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit54.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i.i.i
  %.not.i.i6.i.i = icmp samesign ult i64 %2, 3    ; 2 uses
  br i1 %.not.i.i6.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.thread.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i7.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i7.i.i: ; preds = %.loopexit124.i.i
  %i.mm = load i16, ptr %1, align 1
  %i.mn = xor i16 12333, %i.mm
  %i.mo = getelementptr i8, ptr %1, i64 2
  %i.mp = load i8, ptr %i.mo, align 1
  %i.mq = zext i8 %i.mp to i16
  %i.mr = xor i16 120, %i.mq
  %i.ms = or i16 %i.mn, %i.mr
  %i.mt = icmp ne i16 %i.ms, 0
  %i.mu = zext i1 %i.mt to i32
  %i.mv = icmp eq i32 %i.mu, 0
  br i1 %i.mv, label %.split.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i8.i.i

.split.i.i.i:                                     ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i7.i.i
  %i.mw = add i64 %2, -3
  %i.mx = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !45409
  store ptr %i.mx, ptr %i.z, align 8, !noalias !45409, !captures !117
  %i.my = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %i.mw, ptr %i.my, align 8, !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !45409
  store ptr %i.z, ptr %i.x, align 8, !noalias !45409
  %.sroa.48.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.48.0..sroa_idx.i.i.i, align 8, !noalias !45409
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @193, ptr noundef nonnull %i.x), !noalias !45410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !45409
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.y, align 8, !noalias !45409 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.7.0.copyload.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !45409, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.sroa.11.0.copyload.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !45409
  invoke fastcc void @_RNvMsr_NtCs3oUPovFnLWP_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.11.0.copyload.i.i.i, i32 noundef 16) #60
          to label %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit.i.i.i unwind label %bb.at, !noalias !45392

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i8.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit46.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i7.i.i
  %i.mz = load i16, ptr %1, align 1
  %i.na = xor i16 12333, %i.mz
  %i.nb = getelementptr i8, ptr %1, i64 2
  %i.nc = load i8, ptr %i.nb, align 1
  %i.nd = zext i8 %i.nc to i16
  %i.ne = xor i16 111, %i.nd
  %i.nf = or i16 %i.na, %i.ne
  %i.ng = icmp ne i16 %i.nf, 0
  %i.nh = zext i1 %i.ng to i32
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %.split27.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.i.i.i

bb.at:                                            ; preds = %.split.i.i.i
  %i.nj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nk = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0
  br i1 %i.nk, label %common.resume.i.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45411
  br label %common.resume.i.i

_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit.i.i.i: ; preds = %.split.i.i.i
  %i.nl = load i8, ptr %i.w, align 8, !range !53, !noalias !45409, !noundef !28
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = icmp eq i64 %.sroa.0.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %i.nm, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit.i.i.i
  br i1 %i.nn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit46.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45412
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit46.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit46.i.i.i: ; preds = %bb.aw, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !45409
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i8.i.i

bb.ax:                                            ; preds = %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit.i.i.i
  br i1 %i.nn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45413
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i.i.i: ; preds = %bb.ay, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !45409
  br label %.thread

.split27.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i8.i.i
  %i.no = add i64 %2, -3
  %i.np = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !45409
  store ptr %i.np, ptr %i.v, align 8, !noalias !45409, !captures !117
  %i.nq = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 %i.no, ptr %i.nq, align 8, !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !45409
  store ptr %i.v, ptr %i.t, align 8, !noalias !45409
  %.sroa.414.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.414.0..sroa_idx.i.i.i, align 8, !noalias !45409
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noundef nonnull @193, ptr noundef nonnull %i.t), !noalias !45414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !45409
  %.sroa.02.0.copyload.i.i.i = load i64, ptr %i.u, align 8, !noalias !45409 ; 5 uses
  %.sroa.73.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.73.0.copyload.i.i.i = load ptr, ptr %.sroa.73.0..sroa_idx.i.i.i, align 8, !noalias !45409, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.114.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.114.0.copyload.i.i.i = load i64, ptr %.sroa.114.0..sroa_idx.i.i.i, align 8, !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !45409
  invoke fastcc void @_RNvMsr_NtCs3oUPovFnLWP_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.73.0.copyload.i.i.i, i64 noundef %.sroa.114.0.copyload.i.i.i, i32 noundef 8) #60
          to label %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit50.i.i.i unwind label %bb.az, !noalias !45392

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit60.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit43.i8.i.i
  %i.nr = load i16, ptr %1, align 1
  %i.ns = xor i16 12333, %i.nr
  %i.nt = getelementptr i8, ptr %1, i64 2
  %i.nu = load i8, ptr %i.nt, align 1
  %i.nv = zext i8 %i.nu to i16
  %i.nw = xor i16 98, %i.nv
  %i.nx = or i16 %i.ns, %i.nw
  %i.ny = icmp ne i16 %i.nx, 0
  %i.nz = zext i1 %i.ny to i32
  %i.oa = icmp eq i32 %i.nz, 0
  br i1 %i.oa, label %.split31.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.thread.i.i.i

bb.az:                                            ; preds = %.split27.i.i.i
  %i.ob = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oc = icmp eq i64 %.sroa.02.0.copyload.i.i.i, 0
  br i1 %i.oc, label %common.resume.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.73.0.copyload.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45415
  br label %common.resume.i.i

_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit50.i.i.i: ; preds = %.split27.i.i.i
  %i.od = load i8, ptr %i.s, align 8, !range !53, !noalias !45409, !noundef !28
  %i.oe = trunc nuw i8 %i.od to i1
  %i.of = icmp eq i64 %.sroa.02.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %i.oe, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit50.i.i.i
  br i1 %i.of, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit60.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.73.0.copyload.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45416
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit60.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit60.i.i.i: ; preds = %bb.bc, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !45409
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.i.i.i

bb.bd:                                            ; preds = %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit50.i.i.i
  br i1 %i.of, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit63.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.73.0.copyload.i.i.i, i64 noundef %.sroa.02.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45417
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit63.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit63.i.i.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !45409
  br label %.thread

.split31.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.i.i.i
  %i.og = add i64 %2, -3
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !45409
  store ptr %i.oh, ptr %i.r, align 8, !noalias !45409, !captures !117
  %i.oi = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 %i.og, ptr %i.oi, align 8, !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !45409
  store ptr %i.r, ptr %i.p, align 8, !noalias !45409
  %.sroa.420.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.420.0..sroa_idx.i.i.i, align 8, !noalias !45409
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noundef nonnull @193, ptr noundef nonnull %i.p), !noalias !45418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !45409
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.q, align 8, !noalias !45409 ; 5 uses
  %.sroa.78.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.78.0.copyload.i.i.i = load ptr, ptr %.sroa.78.0..sroa_idx.i.i.i, align 8, !noalias !45409, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.119.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.119.0.copyload.i.i.i = load i64, ptr %.sroa.119.0..sroa_idx.i.i.i, align 8, !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !45409
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !45409
  invoke fastcc void @_RNvMsr_NtCs3oUPovFnLWP_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.78.0.copyload.i.i.i, i64 noundef %.sroa.119.0.copyload.i.i.i, i32 noundef 2) #60
          to label %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit64.i.i.i unwind label %bb.bf, !noalias !45392

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.thread.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.i.i.i, %.loopexit124.i.i
  %i.oj = call noundef zeroext i1 @_RNvNtCs91z6ktdDspq_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45392
  br i1 %i.oj, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i12.i.i, label %_RINvNtCs91z6ktdDspq_10serde_yaml2de18parse_negative_intxECs9fPPV5zPXBl_5typst.exit.i.i

bb.bf:                                            ; preds = %.split31.i.i.i
  %i.ok = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ol = icmp eq i64 %.sroa.07.0.copyload.i.i.i, 0
  br i1 %i.ol, label %common.resume.i.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.78.0.copyload.i.i.i, i64 noundef %.sroa.07.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45419
  br label %common.resume.i.i

_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit64.i.i.i: ; preds = %.split31.i.i.i
  %i.om = load i8, ptr %i.o, align 8, !range !53, !noalias !45409, !noundef !28
  %i.on = trunc nuw i8 %i.om to i1
  %i.oo = icmp eq i64 %.sroa.07.0.copyload.i.i.i, 0 ; 2 uses
  br i1 %i.on, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit64.i.i.i
  br i1 %i.oo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.78.0.copyload.i.i.i, i64 noundef %.sroa.07.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45420
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i.i.i: ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !45409
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.thread.i.i.i

bb.bj:                                            ; preds = %_RNvMsr_NtCs3oUPovFnLWP_4core3numx14from_str_radix.exit64.i.i.i
  br i1 %i.oo, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit73.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.78.0.copyload.i.i.i, i64 noundef %.sroa.07.0.copyload.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45421
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit73.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit73.i.i.i: ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !45409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !45409
  br label %.thread

common.resume.i.i:                                ; preds = %bb.db, %bb.da, %bb.cu, %bb.ct, %bb.cn, %bb.cm, %bb.bg, %bb.bf, %bb.ba, %bb.az, %bb.au, %bb.at
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.ok, %bb.bg ], [ %i.ob, %bb.ba ], [ %i.nj, %bb.au ], [ %i.nj, %bb.at ], [ %i.ob, %bb.az ], [ %i.ok, %bb.bf ], [ %i.zp, %bb.cu ], [ %i.yx, %bb.cn ], [ %i.yx, %bb.cm ], [ %i.zp, %bb.ct ], [ %i.zy, %bb.da ], [ %i.zy, %bb.db ]
  resume { ptr, i32 } %common.resume.op.i.i

_RINvNtCs91z6ktdDspq_10serde_yaml2de18parse_negative_intxECs9fPPV5zPXBl_5typst.exit.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !45409
  call fastcc void @_RNvMsr_NtCs3oUPovFnLWP_4core3numx27from_ascii_bytes_radix_impl(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 10) #60, !noalias !45392
  %i.op = load i8, ptr %i.n, align 8, !range !53, !noalias !45409, !noundef !28
  %i.oq = trunc nuw i8 %i.op to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !45409
  br i1 %i.oq, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i12.i.i, label %.thread

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i12.i.i: ; preds = %_RINvNtCs91z6ktdDspq_10serde_yaml2de18parse_negative_intxECs9fPPV5zPXBl_5typst.exit.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit54.thread.i.i.i
  br i1 %.not.i40.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i.i.i: ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i12.i.i
  %i.or = load i16, ptr %.sroa.01.0.i.i.i, align 1
  %i.os = icmp ne i16 30768, %i.or
  %i.ot = zext i1 %i.os to i32
  %i.ou = icmp eq i32 %i.ot, 0
  br i1 %i.ou, label %bb.bl, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i

bb.bl:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i.i.i
  %i.ov = add i64 %.sroa.7.0.i.i.i, -2            ; 6 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2 ; 2 uses
  %i.ox = icmp samesign eq i64 %i.ov, 0
  br i1 %i.ox, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.oy = load i8, ptr %i.ow, align 1, !alias.scope !45422, !noalias !45423, !noundef !28 ; 7 uses
  %i.oz = icmp sgt i8 %i.oy, -1
  br i1 %i.oz, label %bb.bn, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i30.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i30.i.i: ; preds = %bb.bm
  %i.pa = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.pb = and i8 %i.oy, 31
  %i.pc = zext nneg i8 %i.pb to i32               ; 3 uses
  %i.pd = icmp samesign ne i64 %i.ov, 1
  call void @llvm.assume(i1 %i.pd)
  %i.pe = load i8, ptr %i.pa, align 1, !alias.scope !45422, !noalias !45423, !noundef !28
  %i.pf = shl nuw nsw i32 %i.pc, 6
  %i.pg = and i8 %i.pe, 63
  %i.ph = zext nneg i8 %i.pg to i32               ; 2 uses
  %i.pi = or disjoint i32 %i.pf, %i.ph
  %i.pj = icmp samesign ugt i8 %i.oy, -33
  br i1 %i.pj, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i53.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.pk = zext nneg i8 %i.oy to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i53.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i30.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 4
  %i.pm = icmp samesign ne i64 %i.ov, 2
  call void @llvm.assume(i1 %i.pm)
  %i.pn = load i8, ptr %i.pl, align 1, !alias.scope !45422, !noalias !45423, !noundef !28
  %i.po = shl nuw nsw i32 %i.ph, 6
  %i.pp = and i8 %i.pn, 63
  %i.pq = zext nneg i8 %i.pp to i32
  %i.pr = or disjoint i32 %i.po, %i.pq            ; 2 uses
  %i.ps = shl nuw nsw i32 %i.pc, 12
  %i.pt = or disjoint i32 %i.pr, %i.ps
  %i.pu = icmp samesign ugt i8 %i.oy, -17
  br i1 %i.pu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i54.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i54.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i53.i.i
  %i.pv = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.pw = icmp samesign ne i64 %i.ov, 3
  call void @llvm.assume(i1 %i.pw)
  %i.px = load i8, ptr %i.pv, align 1, !alias.scope !45422, !noalias !45423, !noundef !28
  %i.py = shl nuw nsw i32 %i.pc, 18
  %i.pz = and i32 %i.py, 1835008
  %i.qa = shl nuw nsw i32 %i.pr, 6
  %i.qb = and i8 %i.px, 63
  %i.qc = zext nneg i8 %i.qb to i32
  %i.qd = or disjoint i32 %i.qa, %i.qc
  %i.qe = or disjoint i32 %i.qd, %i.pz
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i54.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i53.i.i, %bb.bn, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i30.i.i
  %.sroa.4.0.i.ph.i.i.i.i32.i.i = phi i32 [ %i.pt, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i.i53.i.i ], [ %i.qe, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i.i54.i.i ], [ %i.pi, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i.i30.i.i ], [ %i.pk, %bb.bn ] ; 2 uses
  %i.qf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i32.i.i, 1114112
  call void @llvm.assume(i1 %i.qf)
  switch i32 %.sroa.4.0.i.ph.i.i.i.i32.i.i, label %bb.bo [
    i32 45, label %.loopexit.i.i
    i32 43, label %.loopexit.i.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i: ; preds = %bb.bq, %.preheader60.split.i.i.i38.i.i.preheader, %.lr.ph.split.i.i.i47.i.i, %bb.bp, %bb.bp, %bb.bl, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i.i.i
  %i.qg = load i16, ptr %.sroa.01.0.i.i.i, align 1
  %i.qh = icmp ne i16 28464, %i.qg
  %i.qi = zext i1 %i.qh to i32
  %i.qj = icmp eq i32 %i.qi, 0
  br i1 %i.qj, label %bb.bs, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i

bb.bo:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i
  %cond39.i.i.i = icmp eq i64 %i.ov, 1
  br i1 %cond39.i.i.i, label %bb.bp, label %thread-pre-split.i.i.i33.i.i

bb.bp:                                            ; preds = %bb.bo
  switch i8 %i.oy, label %thread-pre-split.i.i.i33.i.i [
    i8 43, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i
    i8 45, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i
  ]

thread-pre-split.i.i.i33.i.i:                     ; preds = %bb.bp, %bb.bo
  %cond.i.i.i34.i.i = icmp eq i8 %i.oy, 43        ; 2 uses
  %i.qk = sext i1 %cond.i.i.i34.i.i to i64
  %.sroa.15.0.i.i.i35.i.i = add nsw i64 %i.ov, %i.qk ; 4 uses
  %.sroa.0.0.idx.i.i.i36.i.i = zext i1 %cond.i.i.i34.i.i to i64
  %.sroa.0.0.i.i.i37.i.i = getelementptr inbounds nuw i8, ptr %i.ow, i64 %.sroa.0.0.idx.i.i.i36.i.i ; 2 uses
  %i.ql = icmp samesign ult i64 %.sroa.15.0.i.i.i35.i.i, 33
  br i1 %i.ql, label %.preheader.i.i.i45.i.i, label %.preheader60.split.i.i.i38.i.i.preheader

.preheader.i.i.i45.i.i:                           ; preds = %thread-pre-split.i.i.i33.i.i
  %.not5373.i.i.i46.i.i = icmp eq i64 %.sroa.15.0.i.i.i35.i.i, 0
  br i1 %.not5373.i.i.i46.i.i, label %.thread, label %.lr.ph.split.i.i.i47.i.i

.preheader60.split.i.i.i38.i.i:                   ; preds = %bb.bq
  %i.qm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i41.i.i156, i64 1
  %i.qn = add nsw i64 %.sroa.15.1.i.i.i40.i.i155, -1 ; 2 uses
  %.not52.i.i.i42.i.i = icmp eq i64 %i.qn, 0
  br i1 %.not52.i.i.i42.i.i, label %.thread, label %.preheader60.split.i.i.i38.i.i.preheader

.preheader60.split.i.i.i38.i.i.preheader:         ; preds = %thread-pre-split.i.i.i33.i.i, %.preheader60.split.i.i.i38.i.i
  %.sroa.0.1.i.i.i41.i.i156 = phi ptr [ %i.qm, %.preheader60.split.i.i.i38.i.i ], [ %.sroa.0.0.i.i.i37.i.i, %thread-pre-split.i.i.i33.i.i ] ; 2 uses
  %.sroa.15.1.i.i.i40.i.i155 = phi i64 [ %i.qn, %.preheader60.split.i.i.i38.i.i ], [ %.sroa.15.0.i.i.i35.i.i, %thread-pre-split.i.i.i33.i.i ]
  %.sroa.042.0.i.i.i39.i.i154 = phi i128 [ %i.qz, %.preheader60.split.i.i.i38.i.i ], [ 0, %thread-pre-split.i.i.i33.i.i ] ; 2 uses
  %i.qo = icmp ugt i128 %.sroa.042.0.i.i.i39.i.i154, 21267647932558653966460912964485513215
  br i1 %i.qo, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i, label %bb.bq, !prof !38

bb.bq:                                            ; preds = %.preheader60.split.i.i.i38.i.i.preheader
  %i.qp = shl nuw i128 %.sroa.042.0.i.i.i39.i.i154, 4 ; 2 uses
  %i.qq = load i8, ptr %.sroa.0.1.i.i.i41.i.i156, align 1, !alias.scope !45424, !noalias !45425, !noundef !28 ; 2 uses
  %i.qr = zext i8 %i.qq to i32                    ; 2 uses
  %i.qs = icmp ugt i8 %i.qq, 57
  %i.qt = add nsw i32 %i.qr, -65
  %i.qu = and i32 %i.qt, -33
  %i.qv = add nuw nsw i32 %i.qu, 10
  %i.qw = add nsw i32 %i.qr, -48
  %spec.select.i.i.i43.i.i = select i1 %i.qs, i32 %i.qv, i32 %i.qw ; 2 uses
  %i.qx = icmp ugt i32 %spec.select.i.i.i43.i.i, 15
  %i.qy = zext nneg i32 %spec.select.i.i.i43.i.i to i128
  %i.qz = add i128 %i.qp, %i.qy                   ; 2 uses
  %i.ra = icmp ult i128 %i.qz, %i.qp
  %or.cond.i44.i.i = select i1 %i.qx, i1 true, i1 %i.ra, !prof !61
  br i1 %or.cond.i44.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i, label %.preheader60.split.i.i.i38.i.i, !prof !61

.lr.ph.split.i.i.i47.i.i:                         ; preds = %.preheader.i.i.i45.i.i, %bb.br
  %.sroa.0.276.i.i.i48.i.i = phi ptr [ %i.rk, %bb.br ], [ %.sroa.0.0.i.i.i37.i.i, %.preheader.i.i.i45.i.i ] ; 2 uses
  %.sroa.15.275.i.i.i49.i.i = phi i64 [ %i.rj, %bb.br ], [ %.sroa.15.0.i.i.i35.i.i, %.preheader.i.i.i45.i.i ]
  %i.rb = load i8, ptr %.sroa.0.276.i.i.i48.i.i, align 1, !alias.scope !45424, !noalias !45425, !noundef !28 ; 2 uses
  %i.rc = zext i8 %i.rb to i32                    ; 2 uses
  %i.rd = icmp ugt i8 %i.rb, 57
  %i.re = add nsw i32 %i.rc, -65
  %i.rf = and i32 %i.re, -34
  %i.rg = add nuw nsw i32 %i.rf, 10
  %i.rh = add nsw i32 %i.rc, -48
  %spec.select82.i.i.i51.i.i = select i1 %i.rd, i32 %i.rg, i32 %i.rh
  %i.ri = icmp ult i32 %spec.select82.i.i.i51.i.i, 16
  br i1 %i.ri, label %bb.br, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i

bb.br:                                            ; preds = %.lr.ph.split.i.i.i47.i.i
  %i.rj = add nsw i64 %.sroa.15.275.i.i.i49.i.i, -1 ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %.sroa.0.276.i.i.i48.i.i, i64 1
  %.not53.i.i.i52.i.i = icmp eq i64 %i.rj, 0
  br i1 %.not53.i.i.i52.i.i, label %.thread, label %.lr.ph.split.i.i.i47.i.i

bb.bs:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i
  %i.rl = add i64 %.sroa.7.0.i.i.i, -2            ; 6 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2 ; 2 uses
  %i.rn = icmp samesign eq i64 %i.rl, 0
  br i1 %i.rn, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ro = load i8, ptr %i.rm, align 1, !alias.scope !45426, !noalias !45427, !noundef !28 ; 7 uses
  %i.rp = icmp sgt i8 %i.ro, -1
  br i1 %i.rp, label %bb.bu, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i47.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i47.i.i.i: ; preds = %bb.bt
  %i.rq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.rr = and i8 %i.ro, 31
  %i.rs = zext nneg i8 %i.rr to i32               ; 3 uses
  %i.rt = icmp samesign ne i64 %i.rl, 1
  call void @llvm.assume(i1 %i.rt)
  %i.ru = load i8, ptr %i.rq, align 1, !alias.scope !45426, !noalias !45427, !noundef !28
  %i.rv = shl nuw nsw i32 %i.rs, 6
  %i.rw = and i8 %i.ru, 63
  %i.rx = zext nneg i8 %i.rw to i32               ; 2 uses
  %i.ry = or disjoint i32 %i.rv, %i.rx
  %i.rz = icmp samesign ugt i8 %i.ro, -33
  br i1 %i.rz, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i51.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i

bb.bu:                                            ; preds = %bb.bt
  %i.sa = zext nneg i8 %i.ro to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i51.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i47.i.i.i
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 4
  %i.sc = icmp samesign ne i64 %i.rl, 2
  call void @llvm.assume(i1 %i.sc)
  %i.sd = load i8, ptr %i.sb, align 1, !alias.scope !45426, !noalias !45427, !noundef !28
  %i.se = shl nuw nsw i32 %i.rx, 6
  %i.sf = and i8 %i.sd, 63
  %i.sg = zext nneg i8 %i.sf to i32
  %i.sh = or disjoint i32 %i.se, %i.sg            ; 2 uses
  %i.si = shl nuw nsw i32 %i.rs, 12
  %i.sj = or disjoint i32 %i.sh, %i.si
  %i.sk = icmp samesign ugt i8 %i.ro, -17
  br i1 %i.sk, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i52.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i52.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i51.i.i.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.sm = icmp samesign ne i64 %i.rl, 3
  call void @llvm.assume(i1 %i.sm)
  %i.sn = load i8, ptr %i.sl, align 1, !alias.scope !45426, !noalias !45427, !noundef !28
  %i.so = shl nuw nsw i32 %i.rs, 18
  %i.sp = and i32 %i.so, 1835008
  %i.sq = shl nuw nsw i32 %i.sh, 6
  %i.sr = and i8 %i.sn, 63
  %i.ss = zext nneg i8 %i.sr to i32
  %i.st = or disjoint i32 %i.sq, %i.ss
  %i.su = or disjoint i32 %i.st, %i.sp
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i52.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i51.i.i.i, %bb.bu, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i47.i.i.i
  %.sroa.4.0.i.ph.i.i.i48.i.i.i = phi i32 [ %i.sj, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i51.i.i.i ], [ %i.su, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i52.i.i.i ], [ %i.ry, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i47.i.i.i ], [ %i.sa, %bb.bu ] ; 2 uses
  %i.sv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i48.i.i.i, 1114112
  call void @llvm.assume(i1 %i.sv)
  switch i32 %.sroa.4.0.i.ph.i.i.i48.i.i.i, label %bb.bv [
    i32 45, label %.loopexit.i.i
    i32 43, label %.loopexit.i.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i: ; preds = %bb.bx, %.preheader60.split.us.i.i.i20.i.i.preheader, %.lr.ph.split.us.i.i.i25.i.i, %bb.bw, %bb.bw, %bb.bs, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit46.i.i.i
  %i.sw = load i16, ptr %.sroa.01.0.i.i.i, align 1
  %i.sx = icmp ne i16 25136, %i.sw
  %i.sy = zext i1 %i.sx to i32
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.bz, label %.thread28.i16.i.i

bb.bv:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i
  %cond38.i.i.i = icmp eq i64 %i.rl, 1
  br i1 %cond38.i.i.i, label %bb.bw, label %thread-pre-split.i.i74.i.i.i

bb.bw:                                            ; preds = %bb.bv
  switch i8 %i.ro, label %thread-pre-split.i.i74.i.i.i [
    i8 43, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i
    i8 45, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i
  ]

thread-pre-split.i.i74.i.i.i:                     ; preds = %bb.bw, %bb.bv
  %cond.i.i59.i.i.i = icmp eq i8 %i.ro, 43        ; 2 uses
  %i.ta = sext i1 %cond.i.i59.i.i.i to i64
  %.sroa.15.0.i.i60.i.i.i = add nsw i64 %i.rl, %i.ta ; 4 uses
  %.sroa.0.0.idx.i.i61.i.i.i = zext i1 %cond.i.i59.i.i.i to i64
  %.sroa.0.0.i.i62.i.i.i = getelementptr inbounds nuw i8, ptr %i.rm, i64 %.sroa.0.0.idx.i.i61.i.i.i ; 2 uses
  %i.tb = icmp samesign ult i64 %.sroa.15.0.i.i60.i.i.i, 33
  br i1 %i.tb, label %.preheader.i.i70.i.i.i, label %.preheader60.split.us.i.i.i20.i.i.preheader

.preheader60.split.us.i.i.i20.i.i:                ; preds = %bb.bx
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i.i23.i.i159, i64 1
  %i.td = add nsw i64 %.sroa.15.1.us.i.i.i22.i.i158, -1 ; 2 uses
  %.not52.us.i.i.i24.i.i = icmp eq i64 %i.td, 0
  br i1 %.not52.us.i.i.i24.i.i, label %.thread, label %.preheader60.split.us.i.i.i20.i.i.preheader

.preheader60.split.us.i.i.i20.i.i.preheader:      ; preds = %thread-pre-split.i.i74.i.i.i, %.preheader60.split.us.i.i.i20.i.i
  %.sroa.0.1.us.i.i.i23.i.i159 = phi ptr [ %i.tc, %.preheader60.split.us.i.i.i20.i.i ], [ %.sroa.0.0.i.i62.i.i.i, %thread-pre-split.i.i74.i.i.i ] ; 2 uses
  %.sroa.15.1.us.i.i.i22.i.i158 = phi i64 [ %i.td, %.preheader60.split.us.i.i.i20.i.i ], [ %.sroa.15.0.i.i60.i.i.i, %thread-pre-split.i.i74.i.i.i ]
  %.sroa.042.0.us.i.i.i21.i.i157 = phi i128 [ %i.tl, %.preheader60.split.us.i.i.i20.i.i ], [ 0, %thread-pre-split.i.i74.i.i.i ] ; 2 uses
  %i.te = icmp ugt i128 %.sroa.042.0.us.i.i.i21.i.i157, 42535295865117307932921825928971026431
  br i1 %i.te, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i, label %bb.bx, !prof !38

bb.bx:                                            ; preds = %.preheader60.split.us.i.i.i20.i.i.preheader
  %i.tf = shl nuw i128 %.sroa.042.0.us.i.i.i21.i.i157, 3 ; 2 uses
  %i.tg = load i8, ptr %.sroa.0.1.us.i.i.i23.i.i159, align 1, !alias.scope !45428, !noalias !45429, !noundef !28
  %i.th = zext i8 %i.tg to i32
  %i.ti = add nsw i32 %i.th, -48                  ; 2 uses
  %i.tj = icmp ugt i32 %i.ti, 7
  %i.tk = zext nneg i32 %i.ti to i128
  %i.tl = add i128 %i.tf, %i.tk                   ; 2 uses
  %i.tm = icmp ult i128 %i.tl, %i.tf
  %or.cond44.i.i.i = select i1 %i.tj, i1 true, i1 %i.tm, !prof !61
  br i1 %or.cond44.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i, label %.preheader60.split.us.i.i.i20.i.i, !prof !61

.preheader.i.i70.i.i.i:                           ; preds = %thread-pre-split.i.i74.i.i.i
  %.not5373.i.i71.i.i.i = icmp eq i64 %.sroa.15.0.i.i60.i.i.i, 0
  br i1 %.not5373.i.i71.i.i.i, label %.thread, label %.lr.ph.split.us.i.i.i25.i.i

.lr.ph.split.us.i.i.i25.i.i:                      ; preds = %.preheader.i.i70.i.i.i, %bb.by
  %.sroa.0.276.us.i.i.i26.i.i = phi ptr [ %i.tr, %bb.by ], [ %.sroa.0.0.i.i62.i.i.i, %.preheader.i.i70.i.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i.i27.i.i = phi i64 [ %i.tq, %bb.by ], [ %.sroa.15.0.i.i60.i.i.i, %.preheader.i.i70.i.i.i ]
  %i.tn = load i8, ptr %.sroa.0.276.us.i.i.i26.i.i, align 1, !alias.scope !45428, !noalias !45429, !noundef !28
  %i.to = and i8 %i.tn, -8
  %i.tp = icmp eq i8 %i.to, 48
  br i1 %i.tp, label %bb.by, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i

bb.by:                                            ; preds = %.lr.ph.split.us.i.i.i25.i.i
  %i.tq = add nsw i64 %.sroa.15.275.us.i.i.i27.i.i, -1 ; 2 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i.i26.i.i, i64 1
  %.not53.us.i.i.i29.i.i = icmp eq i64 %i.tq, 0
  br i1 %.not53.us.i.i.i29.i.i, label %.thread, label %.lr.ph.split.us.i.i.i25.i.i

bb.bz:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i
  %i.ts = add i64 %.sroa.7.0.i.i.i, -2            ; 6 uses
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2 ; 2 uses
  %i.tu = icmp samesign eq i64 %i.ts, 0
  br i1 %i.tu, label %.thread28.i16.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.tv = load i8, ptr %i.tt, align 1, !alias.scope !45430, !noalias !45431, !noundef !28 ; 7 uses
  %i.tw = icmp sgt i8 %i.tv, -1
  br i1 %i.tw, label %bb.cb, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i77.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i77.i.i.i: ; preds = %bb.ca
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.ty = and i8 %i.tv, 31
  %i.tz = zext nneg i8 %i.ty to i32               ; 3 uses
  %i.ua = icmp samesign ne i64 %i.ts, 1
  call void @llvm.assume(i1 %i.ua)
  %i.ub = load i8, ptr %i.tx, align 1, !alias.scope !45430, !noalias !45431, !noundef !28
  %i.uc = shl nuw nsw i32 %i.tz, 6
  %i.ud = and i8 %i.ub, 63
  %i.ue = zext nneg i8 %i.ud to i32               ; 2 uses
  %i.uf = or disjoint i32 %i.uc, %i.ue
  %i.ug = icmp samesign ugt i8 %i.tv, -33
  br i1 %i.ug, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i81.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i

bb.cb:                                            ; preds = %bb.ca
  %i.uh = zext nneg i8 %i.tv to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i81.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i77.i.i.i
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 4
  %i.uj = icmp samesign ne i64 %i.ts, 2
  call void @llvm.assume(i1 %i.uj)
  %i.uk = load i8, ptr %i.ui, align 1, !alias.scope !45430, !noalias !45431, !noundef !28
  %i.ul = shl nuw nsw i32 %i.ue, 6
  %i.um = and i8 %i.uk, 63
  %i.un = zext nneg i8 %i.um to i32
  %i.uo = or disjoint i32 %i.ul, %i.un            ; 2 uses
  %i.up = shl nuw nsw i32 %i.tz, 12
  %i.uq = or disjoint i32 %i.uo, %i.up
  %i.ur = icmp samesign ugt i8 %i.tv, -17
  br i1 %i.ur, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i82.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i82.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i81.i.i.i
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 5
  %i.ut = icmp samesign ne i64 %i.ts, 3
  call void @llvm.assume(i1 %i.ut)
  %i.uu = load i8, ptr %i.us, align 1, !alias.scope !45430, !noalias !45431, !noundef !28
  %i.uv = shl nuw nsw i32 %i.tz, 18
  %i.uw = and i32 %i.uv, 1835008
  %i.ux = shl nuw nsw i32 %i.uo, 6
  %i.uy = and i8 %i.uu, 63
  %i.uz = zext nneg i8 %i.uy to i32
  %i.va = or disjoint i32 %i.ux, %i.uz
  %i.vb = or disjoint i32 %i.va, %i.uw
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i82.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i81.i.i.i, %bb.cb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i77.i.i.i
  %.sroa.4.0.i.ph.i.i.i78.i.i.i = phi i32 [ %i.uq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i81.i.i.i ], [ %i.vb, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i82.i.i.i ], [ %i.uf, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i77.i.i.i ], [ %i.uh, %bb.cb ] ; 2 uses
  %i.vc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i78.i.i.i, 1114112
  call void @llvm.assume(i1 %i.vc)
  switch i32 %.sroa.4.0.i.ph.i.i.i78.i.i.i, label %bb.cd [
    i32 45, label %.loopexit.i.i
    i32 43, label %.loopexit.i.i
  ]

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i: ; preds = %bb.cf, %.preheader60.split.us.i.i97.i.i.i.preheader, %.lr.ph.split.us.i.i111.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i12.i.i
  %i.vd = icmp samesign eq i64 %.sroa.7.0.i.i.i, 0
  br i1 %i.vd, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.thread.i.i.i, label %.thread28.i16.i.i

.thread28.i16.i.i:                                ; preds = %bb.ce, %bb.ce, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i, %bb.bz, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.i.i.i
  %i.ve = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !45432, !noalias !45433, !noundef !28 ; 5 uses
  %i.vf = icmp sgt i8 %i.ve, -1
  br i1 %i.vf, label %bb.cc, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i84.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i84.i.i.i: ; preds = %.thread28.i16.i.i
  %i.vg = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 1
  %i.vh = and i8 %i.ve, 31
  %i.vi = zext nneg i8 %i.vh to i32               ; 3 uses
  %i.vj = icmp samesign ne i64 %.sroa.7.0.i.i.i, 1
  call void @llvm.assume(i1 %i.vj)
  %i.vk = load i8, ptr %i.vg, align 1, !alias.scope !45432, !noalias !45433, !noundef !28
  %i.vl = shl nuw nsw i32 %i.vi, 6
  %i.vm = and i8 %i.vk, 63
  %i.vn = zext nneg i8 %i.vm to i32               ; 2 uses
  %i.vo = or disjoint i32 %i.vl, %i.vn
  %i.vp = icmp samesign ugt i8 %i.ve, -33
  br i1 %i.vp, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i88.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i

bb.cc:                                            ; preds = %.thread28.i16.i.i
  %i.vq = zext nneg i8 %i.ve to i32
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i88.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i84.i.i.i
  %i.vr = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 2
  %i.vs = icmp samesign ne i64 %.sroa.7.0.i.i.i, 2
  call void @llvm.assume(i1 %i.vs)
  %i.vt = load i8, ptr %i.vr, align 1, !alias.scope !45432, !noalias !45433, !noundef !28
  %i.vu = shl nuw nsw i32 %i.vn, 6
  %i.vv = and i8 %i.vt, 63
  %i.vw = zext nneg i8 %i.vv to i32
  %i.vx = or disjoint i32 %i.vu, %i.vw            ; 2 uses
  %i.vy = shl nuw nsw i32 %i.vi, 12
  %i.vz = or disjoint i32 %i.vx, %i.vy
  %i.wa = icmp samesign ugt i8 %i.ve, -17
  br i1 %i.wa, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i89.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i89.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i88.i.i.i
  %i.wb = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 3
  %i.wc = icmp samesign ne i64 %.sroa.7.0.i.i.i, 3
  call void @llvm.assume(i1 %i.wc)
  %i.wd = load i8, ptr %i.wb, align 1, !alias.scope !45432, !noalias !45433, !noundef !28
  %i.we = shl nuw nsw i32 %i.vi, 18
  %i.wf = and i32 %i.we, 1835008
  %i.wg = shl nuw nsw i32 %i.vx, 6
  %i.wh = and i8 %i.wd, 63
  %i.wi = zext nneg i8 %i.wh to i32
  %i.wj = or disjoint i32 %i.wg, %i.wi
  %i.wk = or disjoint i32 %i.wj, %i.wf
  br label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i89.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i88.i.i.i, %bb.cc, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i84.i.i.i
  %.sroa.4.0.i.ph.i.i.i85.i.i.i = phi i32 [ %i.vz, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit14.i.i.i.i88.i.i.i ], [ %i.wk, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit16.i.i.i.i89.i.i.i ], [ %i.vo, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9fPPV5zPXBl_5typst.exit12.i.i.i.i84.i.i.i ], [ %i.vq, %bb.cc ] ; 2 uses
  %i.wl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i85.i.i.i, 1114112
  call void @llvm.assume(i1 %i.wl)
  switch i32 %.sroa.4.0.i.ph.i.i.i85.i.i.i, label %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.thread.i.i.i [
    i32 45, label %.loopexit.i.i
    i32 43, label %.loopexit.i.i
  ]

bb.cd:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i
  %cond.i19.i.i = icmp eq i64 %i.ts, 1
  br i1 %cond.i19.i.i, label %bb.ce, label %thread-pre-split.i.i117.i.i.i

bb.ce:                                            ; preds = %bb.cd
  switch i8 %i.tv, label %thread-pre-split.i.i117.i.i.i [
    i8 43, label %.thread28.i16.i.i
    i8 45, label %.thread28.i16.i.i
  ]

thread-pre-split.i.i117.i.i.i:                    ; preds = %bb.ce, %bb.cd
  %cond.i.i92.i.i.i = icmp eq i8 %i.tv, 43        ; 2 uses
  %i.wm = sext i1 %cond.i.i92.i.i.i to i64
  %.sroa.15.0.i.i93.i.i.i = add nsw i64 %i.ts, %i.wm ; 4 uses
  %.sroa.0.0.idx.i.i94.i.i.i = zext i1 %cond.i.i92.i.i.i to i64
  %.sroa.0.0.i.i95.i.i.i = getelementptr inbounds nuw i8, ptr %i.tt, i64 %.sroa.0.0.idx.i.i94.i.i.i ; 2 uses
  %i.wn = icmp samesign ult i64 %.sroa.15.0.i.i93.i.i.i, 33
  br i1 %i.wn, label %.preheader.i.i108.i.i.i, label %.preheader60.split.us.i.i97.i.i.i.preheader

.preheader60.split.us.i.i97.i.i.i:                ; preds = %bb.cf
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i100.i.i.i162, i64 1
  %i.wp = add nsw i64 %.sroa.15.1.us.i.i99.i.i.i161, -1 ; 2 uses
  %.not52.us.i.i101.i.i.i = icmp eq i64 %i.wp, 0
  br i1 %.not52.us.i.i101.i.i.i, label %.thread, label %.preheader60.split.us.i.i97.i.i.i.preheader

.preheader60.split.us.i.i97.i.i.i.preheader:      ; preds = %thread-pre-split.i.i117.i.i.i, %.preheader60.split.us.i.i97.i.i.i
  %.sroa.0.1.us.i.i100.i.i.i162 = phi ptr [ %i.wo, %.preheader60.split.us.i.i97.i.i.i ], [ %.sroa.0.0.i.i95.i.i.i, %thread-pre-split.i.i117.i.i.i ] ; 2 uses
  %.sroa.15.1.us.i.i99.i.i.i161 = phi i64 [ %i.wp, %.preheader60.split.us.i.i97.i.i.i ], [ %.sroa.15.0.i.i93.i.i.i, %thread-pre-split.i.i117.i.i.i ]
  %.sroa.042.0.us.i.i98.i.i.i160 = phi i128 [ %i.wx, %.preheader60.split.us.i.i97.i.i.i ], [ 0, %thread-pre-split.i.i117.i.i.i ] ; 2 uses
  %i.wq = icmp slt i128 %.sroa.042.0.us.i.i98.i.i.i160, 0
  br i1 %i.wq, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i, label %bb.cf, !prof !38

bb.cf:                                            ; preds = %.preheader60.split.us.i.i97.i.i.i.preheader
  %i.wr = shl nuw i128 %.sroa.042.0.us.i.i98.i.i.i160, 1 ; 2 uses
  %i.ws = load i8, ptr %.sroa.0.1.us.i.i100.i.i.i162, align 1, !alias.scope !45434, !noalias !45435, !noundef !28
  %i.wt = zext i8 %i.ws to i32
  %i.wu = add nsw i32 %i.wt, -48                  ; 2 uses
  %i.wv = icmp ugt i32 %i.wu, 1
  %i.ww = zext nneg i32 %i.wu to i128
  %i.wx = add i128 %i.wr, %i.ww                   ; 2 uses
  %i.wy = icmp ult i128 %i.wx, %i.wr
  %or.cond47.i.i.i = select i1 %i.wv, i1 true, i1 %i.wy, !prof !61
  br i1 %or.cond47.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i, label %.preheader60.split.us.i.i97.i.i.i, !prof !61

.preheader.i.i108.i.i.i:                          ; preds = %thread-pre-split.i.i117.i.i.i
  %.not5373.i.i109.i.i.i = icmp eq i64 %.sroa.15.0.i.i93.i.i.i, 0
  br i1 %.not5373.i.i109.i.i.i, label %.thread, label %.lr.ph.split.us.i.i111.i.i.i

.lr.ph.split.us.i.i111.i.i.i:                     ; preds = %.preheader.i.i108.i.i.i, %bb.cg
  %.sroa.0.276.us.i.i112.i.i.i = phi ptr [ %i.xd, %bb.cg ], [ %.sroa.0.0.i.i95.i.i.i, %.preheader.i.i108.i.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i113.i.i.i = phi i64 [ %i.xc, %bb.cg ], [ %.sroa.15.0.i.i93.i.i.i, %.preheader.i.i108.i.i.i ]
  %i.wz = load i8, ptr %.sroa.0.276.us.i.i112.i.i.i, align 1, !alias.scope !45434, !noalias !45435, !noundef !28
  %i.xa = and i8 %i.wz, -2
  %i.xb = icmp eq i8 %i.xa, 48
  br i1 %i.xb, label %bb.cg, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i

bb.cg:                                            ; preds = %.lr.ph.split.us.i.i111.i.i.i
  %i.xc = add nsw i64 %.sroa.15.275.us.i.i113.i.i.i, -1 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i112.i.i.i, i64 1
  %.not53.us.i.i116.i.i.i = icmp eq i64 %i.xc, 0
  br i1 %.not53.us.i.i116.i.i.i, label %.thread, label %.lr.ph.split.us.i.i111.i.i.i

_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.thread.i.i.i: ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit57.thread.i.i.i
  %i.xe = call noundef zeroext i1 @_RNvNtCs91z6ktdDspq_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45436
  br i1 %i.xe, label %.loopexit.i.i, label %bb.ch

bb.ch:                                            ; preds = %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.thread.i.i.i
  switch i64 %.sroa.7.0.i.i.i, label %thread-pre-split.i.i146.i.i.i [
    i64 0, label %.loopexit.i.i
    i64 1, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.xf = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !45437, !noalias !45438, !noundef !28 ; 2 uses
  switch i8 %i.xf, label %bb.cj [
    i8 43, label %.loopexit.i.i
    i8 45, label %.loopexit.i.i
  ]

thread-pre-split.i.i146.i.i.i:                    ; preds = %bb.ch
  %.pr.i.i147.i.i.i = load i8, ptr %.sroa.01.0.i.i.i, align 1, !alias.scope !45437, !noalias !45438
  br label %bb.cj

bb.cj:                                            ; preds = %thread-pre-split.i.i146.i.i.i, %bb.ci
  %i.xg = phi i8 [ %.pr.i.i147.i.i.i, %thread-pre-split.i.i146.i.i.i ], [ %i.xf, %bb.ci ]
  %cond.i.i121.i.i.i = icmp eq i8 %i.xg, 43       ; 2 uses
  %i.xh = sext i1 %cond.i.i121.i.i.i to i64
  %.sroa.15.0.i.i122.i.i.i = add nsw i64 %.sroa.7.0.i.i.i, %i.xh ; 4 uses
  %.sroa.0.0.idx.i.i123.i.i.i = zext i1 %cond.i.i121.i.i.i to i64
  %.sroa.0.0.i.i124.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i, i64 %.sroa.0.0.idx.i.i123.i.i.i ; 2 uses
  %i.xi = icmp samesign ult i64 %.sroa.15.0.i.i122.i.i.i, 33
  br i1 %i.xi, label %.preheader.i.i137.i.i.i, label %.preheader60.split.us.i.i126.i.i.i.preheader

.preheader60.split.us.i.i126.i.i.i:               ; preds = %bb.ck
  %i.xj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.us.i.i129.i.i.i165, i64 1
  %i.xk = add nsw i64 %.sroa.15.1.us.i.i128.i.i.i164, -1 ; 2 uses
  %.not52.us.i.i130.i.i.i = icmp eq i64 %i.xk, 0
  br i1 %.not52.us.i.i130.i.i.i, label %.thread, label %.preheader60.split.us.i.i126.i.i.i.preheader

.preheader60.split.us.i.i126.i.i.i.preheader:     ; preds = %bb.cj, %.preheader60.split.us.i.i126.i.i.i
  %.sroa.0.1.us.i.i129.i.i.i165 = phi ptr [ %i.xj, %.preheader60.split.us.i.i126.i.i.i ], [ %.sroa.0.0.i.i124.i.i.i, %bb.cj ] ; 2 uses
  %.sroa.15.1.us.i.i128.i.i.i164 = phi i64 [ %i.xk, %.preheader60.split.us.i.i126.i.i.i ], [ %.sroa.15.0.i.i122.i.i.i, %bb.cj ]
  %.sroa.042.0.us.i.i127.i.i.i163 = phi i128 [ %i.xt, %.preheader60.split.us.i.i126.i.i.i ], [ 0, %bb.cj ]
  %i.xl = call { i128, i1 } @llvm.umul.with.overflow.i128(i128 %.sroa.042.0.us.i.i127.i.i.i163, i128 10) ; 2 uses
  %i.xm = extractvalue { i128, i1 } %i.xl, 1
  br i1 %i.xm, label %.loopexit.i.i, label %bb.ck, !prof !38

bb.ck:                                            ; preds = %.preheader60.split.us.i.i126.i.i.i.preheader
  %i.xn = extractvalue { i128, i1 } %i.xl, 0      ; 2 uses
  %i.xo = load i8, ptr %.sroa.0.1.us.i.i129.i.i.i165, align 1, !alias.scope !45437, !noalias !45438, !noundef !28
  %i.xp = zext i8 %i.xo to i32
  %i.xq = add nsw i32 %i.xp, -48                  ; 2 uses
  %i.xr = icmp ugt i32 %i.xq, 9
  %i.xs = zext nneg i32 %i.xq to i128
  %i.xt = add i128 %i.xn, %i.xs                   ; 2 uses
  %i.xu = icmp ult i128 %i.xt, %i.xn
  %or.cond50.i.i.i = select i1 %i.xr, i1 true, i1 %i.xu, !prof !61
  br i1 %or.cond50.i.i.i, label %.loopexit.i.i, label %.preheader60.split.us.i.i126.i.i.i, !prof !61

.preheader.i.i137.i.i.i:                          ; preds = %bb.cj
  %.not5373.i.i138.i.i.i = icmp eq i64 %.sroa.15.0.i.i122.i.i.i, 0
  br i1 %.not5373.i.i138.i.i.i, label %.thread, label %.lr.ph.split.us.i.i140.i.i.i

.lr.ph.split.us.i.i140.i.i.i:                     ; preds = %.preheader.i.i137.i.i.i, %bb.cl
  %.sroa.0.276.us.i.i141.i.i.i = phi ptr [ %i.xz, %bb.cl ], [ %.sroa.0.0.i.i124.i.i.i, %.preheader.i.i137.i.i.i ] ; 2 uses
  %.sroa.15.275.us.i.i142.i.i.i = phi i64 [ %i.xy, %bb.cl ], [ %.sroa.15.0.i.i122.i.i.i, %.preheader.i.i137.i.i.i ]
  %i.xv = load i8, ptr %.sroa.0.276.us.i.i141.i.i.i, align 1, !alias.scope !45437, !noalias !45438, !noundef !28
  %i.xw = add i8 %i.xv, -48
  %i.xx = icmp ult i8 %i.xw, 10
  br i1 %i.xx, label %bb.cl, label %.loopexit.i.i

bb.cl:                                            ; preds = %.lr.ph.split.us.i.i140.i.i.i
  %i.xy = add nsw i64 %.sroa.15.275.us.i.i142.i.i.i, -1 ; 2 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.sroa.0.276.us.i.i141.i.i.i, i64 1
  %.not53.us.i.i145.i.i.i = icmp eq i64 %i.xy, 0
  br i1 %.not53.us.i.i145.i.i.i, label %.thread, label %.lr.ph.split.us.i.i140.i.i.i

.loopexit.i.i:                                    ; preds = %bb.ck, %.preheader60.split.us.i.i126.i.i.i.preheader, %.lr.ph.split.us.i.i140.i.i.i, %bb.ci, %bb.ci, %bb.ch, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.thread.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit90.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit83.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit53.i.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i, %_RNvYINtNtNtCs3oUPovFnLWP_4core3str7pattern18MultiCharEqPatternAcj2_ENtB5_7Pattern12is_prefix_ofCs9fPPV5zPXBl_5typst.exit.i31.i.i
  br i1 %.not.i.i6.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.thread.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i56.i.i

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i56.i.i: ; preds = %.loopexit.i.i
  %i.ya = load i16, ptr %1, align 1
  %i.yb = xor i16 12333, %i.ya
  %i.yc = getelementptr i8, ptr %1, i64 2
  %i.yd = load i8, ptr %i.yc, align 1
  %i.ye = zext i8 %i.yd to i16
  %i.yf = xor i16 120, %i.ye
  %i.yg = or i16 %i.yb, %i.yf
  %i.yh = icmp ne i16 %i.yg, 0
  %i.yi = zext i1 %i.yh to i32
  %i.yj = icmp eq i32 %i.yi, 0
  br i1 %i.yj, label %.split.i73.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i58.i.i

.split.i73.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i56.i.i
  %i.yk = add i64 %2, -3
  %i.yl = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !45439
  store ptr %i.yl, ptr %i.m, align 8, !noalias !45439, !captures !117
  %i.ym = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.yk, ptr %i.ym, align 8, !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !45439
  store ptr %i.m, ptr %i.k, align 8, !noalias !45439
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !noalias !45439
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull @193, ptr noundef nonnull %i.k), !noalias !45440
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !45439
  %.sroa.0.0.copyload.i74.i.i = load i64, ptr %i.l, align 8, !noalias !45439 ; 5 uses
  %.sroa.7.0..sroa_idx.i75.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.7.0.copyload.i76.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i75.i.i, align 8, !noalias !45439, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.11.0..sroa_idx.i77.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.11.0.copyload.i78.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i77.i.i, align 8, !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !45439
  invoke fastcc void @_RNvMst_NtCs3oUPovFnLWP_4core3numn14from_str_radix(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.copyload.i76.i.i, i64 noundef %.sroa.11.0.copyload.i78.i.i, i32 noundef 16)
          to label %bb.co unwind label %bb.cm, !noalias !45441

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i58.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit45.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit.i56.i.i
  %i.yn = load i16, ptr %1, align 1
  %i.yo = xor i16 12333, %i.yn
  %i.yp = getelementptr i8, ptr %1, i64 2
  %i.yq = load i8, ptr %i.yp, align 1
  %i.yr = zext i8 %i.yq to i16
  %i.ys = xor i16 111, %i.yr
  %i.yt = or i16 %i.yo, %i.ys
  %i.yu = icmp ne i16 %i.yt, 0
  %i.yv = zext i1 %i.yu to i32
  %i.yw = icmp eq i32 %i.yv, 0
  br i1 %i.yw, label %.split26.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.i.i.i

bb.cm:                                            ; preds = %.split.i73.i.i
  %i.yx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yy = icmp eq i64 %.sroa.0.0.copyload.i74.i.i, 0
  br i1 %i.yy, label %common.resume.i.i, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i76.i.i, i64 noundef %.sroa.0.0.copyload.i74.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45442
  br label %common.resume.i.i

bb.co:                                            ; preds = %.split.i73.i.i
  %i.yz = load i8, ptr %i.j, align 16, !range !53, !noalias !45439, !noundef !28
  %i.za = trunc nuw i8 %i.yz to i1
  %i.zb = icmp eq i64 %.sroa.0.0.copyload.i74.i.i, 0 ; 2 uses
  br i1 %i.za, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  br i1 %i.zb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit45.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i76.i.i, i64 noundef %.sroa.0.0.copyload.i74.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45443
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit45.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit45.i.i.i: ; preds = %bb.cq, %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45439
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i58.i.i

bb.cr:                                            ; preds = %bb.co
  br i1 %i.zb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit48.i.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload.i76.i.i, i64 noundef %.sroa.0.0.copyload.i74.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45444
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit48.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit48.i.i.i: ; preds = %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !45439
  br label %.thread

.split26.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i58.i.i
  %i.zc = add i64 %2, -3
  %i.zd = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !45439
  store ptr %i.zd, ptr %i.i, align 8, !noalias !45439, !captures !117
  %i.ze = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.zc, ptr %i.ze, align 8, !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !45439
  store ptr %i.i, ptr %i.g, align 8, !noalias !45439
  %.sroa.413.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.413.0..sroa_idx.i.i.i, align 8, !noalias !45439
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @193, ptr noundef nonnull %i.g), !noalias !45445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !45439
  %.sroa.02.0.copyload.i68.i.i = load i64, ptr %i.h, align 8, !noalias !45439 ; 5 uses
  %.sroa.73.0..sroa_idx.i69.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.73.0.copyload.i70.i.i = load ptr, ptr %.sroa.73.0..sroa_idx.i69.i.i, align 8, !noalias !45439, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.114.0..sroa_idx.i71.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.114.0.copyload.i72.i.i = load i64, ptr %.sroa.114.0..sroa_idx.i71.i.i, align 8, !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !45439
  invoke fastcc void @_RNvMst_NtCs3oUPovFnLWP_4core3numn14from_str_radix(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.73.0.copyload.i70.i.i, i64 noundef %.sroa.114.0.copyload.i72.i.i, i32 noundef 8)
          to label %bb.cv unwind label %bb.ct, !noalias !45441

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit58.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit42.i58.i.i
  %i.zf = load i16, ptr %1, align 1
  %i.zg = xor i16 12333, %i.zf
  %i.zh = getelementptr i8, ptr %1, i64 2
  %i.zi = load i8, ptr %i.zh, align 1
  %i.zj = zext i8 %i.zi to i16
  %i.zk = xor i16 98, %i.zj
  %i.zl = or i16 %i.zg, %i.zk
  %i.zm = icmp ne i16 %i.zl, 0
  %i.zn = zext i1 %i.zm to i32
  %i.zo = icmp eq i32 %i.zn, 0
  br i1 %i.zo, label %.split30.i.i.i, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.thread.i.i.i

bb.ct:                                            ; preds = %.split26.i.i.i
  %i.zp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zq = icmp eq i64 %.sroa.02.0.copyload.i68.i.i, 0
  br i1 %i.zq, label %common.resume.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.73.0.copyload.i70.i.i, i64 noundef %.sroa.02.0.copyload.i68.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45446
  br label %common.resume.i.i

bb.cv:                                            ; preds = %.split26.i.i.i
  %i.zr = load i8, ptr %i.f, align 16, !range !53, !noalias !45439, !noundef !28
  %i.zs = trunc nuw i8 %i.zr to i1
  %i.zt = icmp eq i64 %.sroa.02.0.copyload.i68.i.i, 0 ; 2 uses
  br i1 %i.zs, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  br i1 %i.zt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit58.i.i.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.73.0.copyload.i70.i.i, i64 noundef %.sroa.02.0.copyload.i68.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45447
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit58.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit58.i.i.i: ; preds = %bb.cx, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !45439
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.i.i.i

bb.cy:                                            ; preds = %bb.cv
  br i1 %i.zt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit61.i.i.i, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.73.0.copyload.i70.i.i, i64 noundef %.sroa.02.0.copyload.i68.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45448
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit61.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit61.i.i.i: ; preds = %bb.cz, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !45439
  br label %.thread

.split30.i.i.i:                                   ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.i.i.i
  %i.zu = add i64 %2, -3
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45439
  store ptr %i.zv, ptr %i.e, align 8, !noalias !45439, !captures !117
  %i.zw = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.zu, ptr %i.zw, align 8, !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45439
  store ptr %i.e, ptr %i.c, align 8, !noalias !45439
  %.sroa.419.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCs9fPPV5zPXBl_5typst, ptr %.sroa.419.0..sroa_idx.i.i.i, align 8, !noalias !45439
  call void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull @193, ptr noundef nonnull %i.c), !noalias !45449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45439
  %.sroa.07.0.copyload.i60.i.i = load i64, ptr %i.d, align 8, !noalias !45439 ; 5 uses
  %.sroa.78.0..sroa_idx.i61.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.78.0.copyload.i62.i.i = load ptr, ptr %.sroa.78.0..sroa_idx.i61.i.i, align 8, !noalias !45439, !nonnull !28, !noundef !28 ; 4 uses
  %.sroa.119.0..sroa_idx.i63.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.119.0.copyload.i64.i.i = load i64, ptr %.sroa.119.0..sroa_idx.i63.i.i, align 8, !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !45439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45439
  invoke fastcc void @_RNvMst_NtCs3oUPovFnLWP_4core3numn14from_str_radix(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.78.0.copyload.i62.i.i, i64 noundef %.sroa.119.0.copyload.i64.i.i, i32 noundef 2)
          to label %bb.dc unwind label %bb.da, !noalias !45441

_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.thread.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit67.i.i.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.i.i.i, %.loopexit.i.i
  %i.zx = call noundef zeroext i1 @_RNvNtCs91z6ktdDspq_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45441
  br i1 %i.zx, label %_RINvNtCs91z6ktdDspq_10serde_yaml2de9visit_intNtNvXs_NtB4_3serQINtBO_10SerializerpENtNtCs7PiwjADO7TO_10serde_core3ser10Serializer13serialize_str16InferScalarStyleECs9fPPV5zPXBl_5typst.exit.i, label %bb.dh

bb.da:                                            ; preds = %.split30.i.i.i
  %i.zy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zz = icmp eq i64 %.sroa.07.0.copyload.i60.i.i, 0
  br i1 %i.zz, label %common.resume.i.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.78.0.copyload.i62.i.i, i64 noundef %.sroa.07.0.copyload.i60.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45450
  br label %common.resume.i.i

bb.dc:                                            ; preds = %.split30.i.i.i
  %i.aaa = load i8, ptr %i.b, align 16, !range !53, !noalias !45439, !noundef !28
  %i.aab = trunc nuw i8 %i.aaa to i1
  %i.aac = icmp eq i64 %.sroa.07.0.copyload.i60.i.i, 0 ; 2 uses
  br i1 %i.aab, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.aac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit67.i.i.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.78.0.copyload.i62.i.i, i64 noundef %.sroa.07.0.copyload.i60.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45451
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit67.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit67.i.i.i: ; preds = %bb.de, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45439
  br label %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.thread.i.i.i

bb.df:                                            ; preds = %bb.dc
  br i1 %i.aac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i67.i.i, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.78.0.copyload.i62.i.i, i64 noundef %.sroa.07.0.copyload.i60.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #56, !noalias !45452
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i67.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i67.i.i: ; preds = %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !45439
  br label %.thread

bb.dh:                                            ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45439
  call fastcc void @_RNvMst_NtCs3oUPovFnLWP_4core3numn14from_str_radix(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i32 noundef 10), !noalias !45441
  %i.aad = load i8, ptr %i.a, align 16, !range !53, !noalias !45439, !noundef !28
  %i.aae = trunc nuw i8 %i.aad to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45439
  br i1 %i.aae, label %_RINvNtCs91z6ktdDspq_10serde_yaml2de9visit_intNtNvXs_NtB4_3serQINtBO_10SerializerpENtNtCs7PiwjADO7TO_10serde_core3ser10Serializer13serialize_str16InferScalarStyleECs9fPPV5zPXBl_5typst.exit.i, label %.thread

_RINvNtCs91z6ktdDspq_10serde_yaml2de9visit_intNtNvXs_NtB4_3serQINtBO_10SerializerpENtNtCs7PiwjADO7TO_10serde_core3ser10Serializer13serialize_str16InferScalarStyleECs9fPPV5zPXBl_5typst.exit.i: ; preds = %bb.dh, %_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCs9fPPV5zPXBl_5typst.exit52.thread.i.i.i
  %i.aaf = call noundef zeroext i1 @_RNvNtCs91z6ktdDspq_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45389
  br i1 %i.aaf, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %_RINvNtCs91z6ktdDspq_10serde_yaml2de9visit_intNtNvXs_NtB4_3serQINtBO_10SerializerpENtNtCs7PiwjADO7TO_10serde_core3ser10Serializer13serialize_str16InferScalarStyleECs9fPPV5zPXBl_5typst.exit.i
  %i.aag = call { i64, double } @_RNvNtCs91z6ktdDspq_10serde_yaml2de9parse_f64(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45389
  %i.aah = extractvalue { i64, double } %i.aag, 0
  %i.aai = trunc nuw i64 %i.aah to i1
  br i1 %i.aai, label %.thread, label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_RINvNtCs91z6ktdDspq_10serde_yaml2de9visit_intNtNvXs_NtB4_3serQINtBO_10SerializerpENtNtCs7PiwjADO7TO_10serde_core3ser10Serializer13serialize_str16InferScalarStyleECs9fPPV5zPXBl_5typst.exit.i
  %i.aaj = call noundef zeroext i1 @_RNvNtCs91z6ktdDspq_10serde_yaml2de21digits_but_not_number(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !45453
  %..i.i = select i1 %i.aaj, i8 2, i8 0
  br label %.thread

.thread:                                          ; preds = %.preheader60.split.i.i.i.i.i, %bb.y, %.preheader60.split.us.i.i.i.i.i, %bb.af, %.preheader60.split.us.i.i98.i.i.i, %bb.an, %.preheader60.split.us.i.i127.i.i.i, %bb.as, %.preheader60.split.i.i.i38.i.i, %bb.br, %.preheader60.split.us.i.i.i20.i.i, %bb.by, %.preheader60.split.us.i.i97.i.i.i, %bb.cg, %.preheader60.split.us.i.i126.i.i.i, %bb.cl, %bb.di, %.preheader.i.i.i.i.i, %.preheader.i.i71.i.i.i, %.preheader.i.i109.i.i.i, %.preheader.i.i138.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit63.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit73.i.i.i, %_RINvNtCs91z6ktdDspq_10serde_yaml2de18parse_negative_intxECs9fPPV5zPXBl_5typst.exit.i.i, %.preheader.i.i.i45.i.i, %.preheader.i.i70.i.i.i, %.preheader.i.i108.i.i.i, %.preheader.i.i137.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit48.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit61.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i67.i.i, %bb.dh, %.thread.i, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.m, %bb.p, %bb.q, %bb.r, %bb.dj, %.preheader.i.i.i, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit
  %.sroa.0.1 = phi i8 [ 3, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str7patterncNtB5_7Pattern15is_contained_in.exit ], [ %..i.i, %bb.dj ], [ 2, %.preheader.i.i.i.i.i ], [ 2, %.thread.i ], [ 2, %bb.di ], [ 2, %.preheader60.split.us.i.i.i20.i.i ], [ 2, %bb.r ], [ 2, %bb.q ], [ 2, %bb.p ], [ 2, %bb.m ], [ 2, %bb.i ], [ 2, %bb.h ], [ 2, %bb.g ], [ 2, %bb.f ], [ 2, %bb.e ], [ 2, %bb.dh ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit70.i67.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit61.i.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit48.i.i.i ], [ 2, %.preheader.i.i.i ], [ 2, %.preheader.i.i137.i.i.i ], [ 2, %bb.br ], [ 2, %.preheader60.split.i.i.i38.i.i ], [ 2, %.preheader.i.i108.i.i.i ], [ 2, %bb.as ], [ 2, %.preheader60.split.us.i.i127.i.i.i ], [ 2, %.preheader.i.i70.i.i.i ], [ 2, %bb.an ], [ 2, %.preheader60.split.us.i.i98.i.i.i ], [ 2, %bb.af ], [ 2, %.preheader.i.i.i45.i.i ], [ 2, %_RINvNtCs91z6ktdDspq_10serde_yaml2de18parse_negative_intxECs9fPPV5zPXBl_5typst.exit.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit73.i.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit63.i.i.i ], [ 2, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs9fPPV5zPXBl_5typst.exit49.i.i.i ], [ 2, %.preheader60.split.us.i.i.i.i.i ], [ 2, %.preheader.i.i138.i.i.i ], [ 2, %bb.y ], [ 2, %bb.cl ], [ 2, %.preheader.i.i109.i.i.i ], [ 2, %.preheader60.split.us.i.i126.i.i.i ], [ 2, %bb.cg ], [ 2, %.preheader.i.i71.i.i.i ], [ 2, %.preheader60.split.us.i.i97.i.i.i ], [ 2, %bb.by ], [ 2, %.preheader60.split.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 -1, ptr %i.aa, align 8
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store ptr %1, ptr %i.aak, align 8
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  store i64 %2, ptr %i.aal, align 8
  %i.aam = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i8 %.sroa.0.1, ptr %i.aam, align 8
  %i.aan = call fastcc noundef align 8 ptr @_RNvMNtCs91z6ktdDspq_10serde_yaml3serINtB2_10SerializerQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11emit_scalarCs9fPPV5zPXBl_5typst(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  ret ptr %i.aan
}

; Function Attrs: nonlazybind uwtable
define internal noundef nonnull align 16 ptr @_RNvXs_NtCs9fPPV5zPXBl_5typst4evalNtB4_15ExpressionWorldNtCsdaEETE4DqmE_13typst_library5World4book(ptr noundef nonnull align 16 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvXs_NtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorldNtCsdaEETE4DqmE_13typst_library5World4book.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs_NtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorldNtCsdaEETE4DqmE_13typst_library5World4book.exit

_RNvXs_NtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorldNtCsdaEETE4DqmE_13typst_library5World4book.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RNvXs_NtCs9fPPV5zPXBl_5typst4evalNtB4_15ExpressionWorldNtCsdaEETE4DqmE_13typst_library5World4file(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noundef nonnull align 16 %1, i16 noundef range(i16 1, 0) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst4eval13EXPRESSION_ID, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtCs9fPPV5zPXBl_5typst4eval13EXPRESSION_ID, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtCs9fPPV5zPXBl_5typst4eval13EXPRESSION_ID, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @124, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit: ; preds = %bb.a, %bb.b
  %i.e = load i16, ptr @_RNvNtCs9fPPV5zPXBl_5typst4eval13EXPRESSION_ID, align 8, !range !30, !noundef !28
  %i.f = icmp eq i16 %2, %i.e
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit
  call void @_RNvXs_NtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorldNtCsdaEETE4DqmE_13typst_library5World4file(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %0, ptr noundef nonnull align 16 %1, i16 noundef %2)
  br label %bb.e

bb.d:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtCs5PEMdK7bMAG_12typst_syntax4path6FileIdE5force0ECs9fPPV5zPXBl_5typst.exit
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 592 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16, !nonnull !28, !noundef !28
  %i.i = atomicrmw add ptr %i.h, i64 1 monotonic, align 8
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.f, %bb.c
  ret void

bb.f:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load <2 x ptr>, ptr %i.g, align 16
  store <2 x ptr> %i.l, ptr %i.k, align 8
  store i32 -1, ptr %0, align 8
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal noundef ptr @_RNvXs_NtCs9fPPV5zPXBl_5typst4evalNtB4_15ExpressionWorldNtCsdaEETE4DqmE_13typst_library5World4font(ptr noundef nonnull align 16 %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 16
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RNvXs_NtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorldNtCsdaEETE4DqmE_13typst_library5World4font.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @127, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs_NtCs9fPPV5zPXBl_5typst5worldNtB4_11SystemWorldNtCsdaEETE4DqmE_13typst_library5World4font.exit

end_hunk_1
