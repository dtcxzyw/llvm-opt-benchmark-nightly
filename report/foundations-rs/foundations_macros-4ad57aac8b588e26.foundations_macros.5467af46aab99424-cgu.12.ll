Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations_macros-4ad57aac8b588e26.foundations_macros.5467af46aab99424-cgu.12?download=true
inline.NumInlined: 648
inline.NumDeleted: 251
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn8generics9TypeParamECs7fhJ7v7hOxk_18foundations_macros:bb.a
  %i.x = icmp eq i64 %i.w, -1, !dbg !4789
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.o, !dbg !4789

bb.o:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty4TypeECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.q, !dbg !4789, !inline_history !4796

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCs6bAnw1I7Lci_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs7fhJ7v7hOxk_18foundations_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCs6bAnw1I7Lci_3syn8generics14TypeParamBoundEECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %i.y = load i64, ptr %0, align 8, !dbg !4797, !range !4792, !alias.scope !4799, !noundef !15
  %i.z = icmp eq i64 %i.y, -1, !dbg !4797
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit6, label %bb.p, !dbg !4797

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs7fhJ7v7hOxk_18foundations_macros.exit
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn2ty4TypeECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0), !dbg !4797, !inline_history !4796
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit6, !dbg !4797

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs6bAnw1I7Lci_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs7fhJ7v7hOxk_18foundations_macros.exit, %bb.p
  ret void, !dbg !4729

bb.q:                                             ; preds = %bb.o, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !dbg !4729
  unreachable, !dbg !4729

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs6bAnw1I7Lci_3syn2ty4TypeEECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %.body4, %bb.o
  resume { ptr, i32 } %.pn2, !dbg !4729
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs6bAnw1I7Lci_3syn8lifetime8LifetimeECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !602 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4802), !dbg !4805
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4806), !dbg !4809
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !4811
  %i.b = load i8, ptr %i.a, align 8, !dbg !4811, !range !440, !alias.scope !4813, !noundef !15
  %i.c = icmp eq i8 %i.b, 2, !dbg !4811
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.b, !dbg !4811

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4811
  %.val1.i.i = load i64, ptr %i.d, align 8, !dbg !4811, !alias.scope !4813, !noundef !15 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0, !dbg !4814
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.c, !dbg !4814

bb.c:                                             ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !dbg !4811, !alias.scope !4813, !nonnull !15, !noundef !15
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #20, !dbg !4818, !noalias !4813
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !4823

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCse4VeaA6Ikg_11proc_macro25IdentECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void, !dbg !4805
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro212token_stream8IntoIterECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 !dbg !4824 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !4825, !range !110, !alias.scope !4828, !noundef !15
  %i.b = icmp eq i64 %i.a, 0, !dbg !4825
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4825 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c, !dbg !4825

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsa5ERaWwhjCQ_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !4831
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp13TokenTreeIterECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !4825

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCse4VeaA6Ikg_11proc_macro29TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !4836
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp13TokenTreeIterECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !4825

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp13TokenTreeIterECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.b, %bb.c
  ret void, !dbg !4841
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp11TokenStreamECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4842 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !dbg !4843, !range !633, !noundef !15
  %.not = icmp eq i64 %i.a, -1, !dbg !4843
  br i1 %.not, label %bb.h, label %bb.b, !dbg !4843

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !4844 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !dbg !4847, !alias.scope !4851, !noundef !15
  %i.d = icmp eq i32 %i.c, 0, !dbg !4847
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.c, !dbg !4847

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit.i unwind label %bb.d, !dbg !4858

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %common.resume unwind label %bb.g, !dbg !4844

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp19DeferredTokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit unwind label %bb.e, !dbg !4860

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume unwind label %bb.f, !dbg !4862

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !dbg !4860
  unreachable, !dbg !4860

common.resume:                                    ; preds = %bb.i, %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op, !dbg !4843

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !dbg !4844
  unreachable, !dbg !4844

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp19DeferredTokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !4864
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro28fallback11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !4843

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !4843 ; 5 uses
  invoke void @_RNvXs0_NtCse4VeaA6Ikg_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %bb.i, !dbg !4866

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4868), !dbg !4866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4871), !dbg !4874
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4876), !dbg !4879
  %i.k = load ptr, ptr %i.i, align 8, !dbg !4881, !alias.scope !4885, !nonnull !15, !noundef !15 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !dbg !4888, !noalias !4892, !noundef !15
  %i.m = add i64 %i.l, -1, !dbg !4893             ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !dbg !4894, !noalias !4892
  %i.n = icmp eq i64 %i.m, 0, !dbg !4898
  br i1 %i.n, label %bb.j, label %common.resume, !dbg !4898

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21
          to label %common.resume unwind label %bb.m, !dbg !4899

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4900), !dbg !4866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4903), !dbg !4906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4908), !dbg !4911
  %i.o = load ptr, ptr %i.i, align 8, !dbg !4913, !alias.scope !4917, !nonnull !15, !noundef !15 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !dbg !4918, !noalias !4922, !noundef !15
  %i.q = add i64 %i.p, -1, !dbg !4923             ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !dbg !4924, !noalias !4922
  %i.r = icmp eq i64 %i.q, 0, !dbg !4928
  br i1 %i.r, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro28fallback11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !4928

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCse4VeaA6Ikg_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #21, !dbg !4929
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro28fallback11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !4929

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #19, !dbg !4866
  unreachable, !dbg !4866

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro28fallback11TokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.l, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCse4VeaA6Ikg_11proc_macro23imp19DeferredTokenStreamECs7fhJ7v7hOxk_18foundations_macros.exit
  ret void, !dbg !4843
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 !dbg !4930 {
bb.a:
  %.not = icmp eq i64 %1, %3, !dbg !4931
  br i1 %.not, label %bb.c, label %bb.b, !dbg !4931, !prof !4932

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #22, !dbg !4933
  unreachable, !dbg !4933

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false), !dbg !4934
  ret void, !dbg !4937
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB11_11collections5btree3set8BTreeSetBX_EECs7fhJ7v7hOxk_18foundations_macros(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !4938 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = load ptr, ptr %3, align 8, !dbg !4939, !alias.scope !4959, !noalias !4962, !noundef !15 ; 3 uses
  %.not.i10 = icmp ne ptr %i.c, null, !dbg !4939  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !4964
  %i.e = load i64, ptr %i.d, align 8, !dbg !4964, !alias.scope !4959, !noalias !4962
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !4964
  %i.g = load i64, ptr %i.f, align 8, !dbg !4964, !alias.scope !4959, !noalias !4962
  %.sroa.0.sroa.5.sroa.6.0.i = select i1 %.not.i10, i64 %i.e, i64 undef, !dbg !4964 ; 2 uses
  %.sroa.0.sroa.0.0.i = zext i1 %.not.i10 to i64, !dbg !4964 ; 2 uses
  %.sroa.5.0.i = select i1 %.not.i10, i64 %i.g, i64 0, !dbg !4964
  store i64 %.sroa.0.sroa.0.0.i, ptr %i.b, align 8, !dbg !4965
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !4965
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !4965
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !4965
  store ptr %i.c, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !4965
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !4965
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !4965
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !4965
  store i64 %.sroa.0.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !4965
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !4965
  store ptr null, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !4965
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48, !dbg !4965
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !4965
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56, !dbg !4965
  store i64 %.sroa.0.sroa.5.sroa.6.0.i, ptr %.sroa.8.0..sroa_idx, align 8, !dbg !4965
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64, !dbg !4965
  store i64 %.sroa.5.0.i, ptr %.sroa.9.0..sroa_idx, align 8, !dbg !4965
  %i.h = call noundef align 8 ptr @_RNvXsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB5_4IterNtNtBb_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !4966 ; 2 uses
  %.not22 = icmp eq ptr %i.h, null, !dbg !4966
  br i1 %.not22, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTdReEE3mapTdNtNtCs1xwejQucwHj_5alloc6string6StringENCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanBU_RINtNtNtNtBY_11collections5btree3set8BTreeSetBU_EE0ECs7fhJ7v7hOxk_18foundations_macros.exit, label %.lr.ph, !dbg !4966

.lr.ph:                                           ; preds = %bb.a, %.backedge
  %.val625 = phi i64 [ %.val626, %.backedge ], [ undef, %bb.a ] ; 2 uses
  %i.i = phi ptr [ %i.p, %.backedge ], [ %i.h, %bb.a ] ; 2 uses
  %.val92023 = phi ptr [ %.val919, %.backedge ], [ null, %bb.a ] ; 3 uses
  %i.j = phi double [ %i.o, %.backedge ], [ undef, %bb.a ] ; 3 uses
  %i.k = getelementptr i8, ptr %i.i, i64 8, !dbg !4968 ; 2 uses
  %.val7 = load ptr, ptr %i.k, align 8, !dbg !4968, !nonnull !15, !noundef !15
  %i.l = getelementptr i8, ptr %i.i, i64 16, !dbg !4968 ; 2 uses
  %.val8 = load i64, ptr %i.l, align 8, !dbg !4968, !noundef !15
  %i.m = call noundef double @_RNvCslTFXDPZfJsV_6strsim12jaro_winkler(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val7, i64 noundef %.val8), !dbg !4970 ; 3 uses
  %i.n = fcmp ogt double %i.m, 8.000000e-01, !dbg !4971
  br i1 %i.n, label %bb.e, label %.backedge, !dbg !4971

.backedge:                                        ; preds = %.lr.ph, %bb.f, %bb.e
  %.val626 = phi i64 [ %.val625, %.lr.ph ], [ %.val6, %bb.f ], [ %.val625, %bb.e ] ; 6 uses
  %i.o = phi double [ %i.j, %.lr.ph ], [ %i.m, %bb.f ], [ %i.j, %bb.e ] ; 2 uses
  %.val919 = phi ptr [ %.val92023, %.lr.ph ], [ %.val, %bb.f ], [ %.val92023, %bb.e ] ; 3 uses
  %i.p = call noundef align 8 ptr @_RNvXsu_NtNtNtCs1xwejQucwHj_5alloc11collections5btree3setINtB5_4IterNtNtBb_6string6StringENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b), !dbg !4966 ; 2 uses
  %.not = icmp eq ptr %i.p, null, !dbg !4966
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !4966

._crit_edge:                                      ; preds = %.backedge
  call void @llvm.experimental.noalias.scope.decl(metadata !4973), !dbg !4976
  %.not.i11 = icmp eq ptr %.val919, null, !dbg !4977
  br i1 %.not.i11, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTdReEE3mapTdNtNtCs1xwejQucwHj_5alloc6string6StringENCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanBU_RINtNtNtNtBY_11collections5btree3set8BTreeSetBU_EE0ECs7fhJ7v7hOxk_18foundations_macros.exit, label %bb.b, !dbg !4983

bb.b:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4984, !noalias !5000
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %.val626, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !4984, !noalias !5000
  %i.q = load i64, ptr %i.a, align 8, !dbg !4984, !range !110, !noalias !5000, !noundef !15
  %i.r = trunc nuw i64 %i.q to i1, !dbg !5014
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !5015
  %i.t = load i64, ptr %i.s, align 8, !dbg !5015, !range !113, !noalias !5000, !noundef !15 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !5015 ; 2 uses
  br i1 %i.r, label %bb.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i.i.i, !dbg !5014, !prof !114

bb.c:                                             ; preds = %bb.b
  %i.v = load i64, ptr %i.u, align 8, !dbg !5016, !noalias !5000
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.t, i64 %i.v) #17, !dbg !5017, !noalias !5000
  unreachable, !dbg !5017

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i.i.i: ; preds = %bb.b
  %i.w = load ptr, ptr %i.u, align 8, !dbg !5018, !noalias !5000, !nonnull !15, !noundef !15 ; 2 uses
  %i.x = icmp samesign ule i64 %.val626, %i.t, !dbg !5019
  call void @llvm.assume(i1 %i.x), !dbg !5021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5023, !noalias !5000
  %.not.i.i.i.i.i = icmp eq i64 %.val626, 0, !dbg !5024
  br i1 %.not.i.i.i.i.i, label %_RNCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB13_11collections5btree3set8BTreeSetBZ_EE0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, label %bb.d, !dbg !5024

bb.d:                                             ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull readonly align 1 %.val919, i64 range(i64 0, -9223372036854775808) %.val626, i1 false), !dbg !5025, !noalias !5028
  br label %_RNCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB13_11collections5btree3set8BTreeSetBZ_EE0Cs7fhJ7v7hOxk_18foundations_macros.exit.i, !dbg !5029

_RNCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB13_11collections5btree3set8BTreeSetBZ_EE0Cs7fhJ7v7hOxk_18foundations_macros.exit.i: ; preds = %bb.d, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7fhJ7v7hOxk_18foundations_macros.exit.i.i.i.i.i
  store double %i.o, ptr %0, align 8, !dbg !5030, !alias.scope !4973, !noalias !5031
  %.sroa.4.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !5030
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx.i12, align 8, !dbg !5030, !alias.scope !4973, !noalias !5031
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !5030
  store ptr %i.w, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !5030, !alias.scope !4973, !noalias !5031
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTdReEE3mapTdNtNtCs1xwejQucwHj_5alloc6string6StringENCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanBU_RINtNtNtNtBY_11collections5btree3set8BTreeSetBU_EE0ECs7fhJ7v7hOxk_18foundations_macros.exit, !dbg !5032

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionTdReEE3mapTdNtNtCs1xwejQucwHj_5alloc6string6StringENCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanBU_RINtNtNtNtBY_11collections5btree3set8BTreeSetBU_EE0ECs7fhJ7v7hOxk_18foundations_macros.exit: ; preds = %bb.a, %._crit_edge, %_RNCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB13_11collections5btree3set8BTreeSetBZ_EE0Cs7fhJ7v7hOxk_18foundations_macros.exit.i
  %.sink6.i = phi i64 [ 24, %_RNCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB13_11collections5btree3set8BTreeSetBZ_EE0Cs7fhJ7v7hOxk_18foundations_macros.exit.i ], [ 8, %._crit_edge ], [ 8, %bb.a ]
  %.sink.i = phi i64 [ %.val626, %_RNCINvNtNtCsje5z0uo7eGy_12darling_core5error4kind12did_you_meanNtNtCs1xwejQucwHj_5alloc6string6StringRINtNtNtNtB13_11collections5btree3set8BTreeSetBZ_EE0Cs7fhJ7v7hOxk_18foundations_macros.exit.i ], [ -1, %._crit_edge ], [ -1, %bb.a ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %.sink6.i, !dbg !5033
  store i64 %.sink.i, ptr %i.y, align 8, !dbg !5033, !alias.scope !4973, !noalias !5031
  ret void, !dbg !5034

bb.e:                                             ; preds = %.lr.ph
  %.not.i13 = icmp eq ptr %.val92023, null, !dbg !5035
  %i.z = fcmp olt double %i.j, %i.m
  %or.cond = select i1 %.not.i13, i1 true, i1 %i.z, !dbg !5043
  br i1 %or.cond, label %bb.f, label %.backedge, !dbg !5043

bb.f:                                             ; preds = %bb.e
  %.val = load ptr, ptr %i.k, align 8, !dbg !5044, !nonnull !15, !noundef !15
  %.val6 = load i64, ptr %i.l, align 8, !dbg !5044, !noundef !15
  br label %.backedge, !dbg !5045
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvXNtCsk5uxfcyCLQt_5quote3extNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs6bAnw1I7Lci_3syn10punctuated5PairsNtNtB21_4item5FnArgNtNtB21_5token5CommaEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5046 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !5052
  call void @_RNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_5PairsNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5053
  %i.d = load i64, ptr %i.b, align 8, !dbg !5053, !range !110, !noundef !15
  %i.e = trunc nuw i64 %i.d to i1, !dbg !5053
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !5053

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !5053

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !5055
  call void @_RNvXs_NtNtCs6bAnw1I7Lci_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokensCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !5056
  call void @_RNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_5PairsNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5053
  %i.g = load i64, ptr %i.b, align 8, !dbg !5053, !range !110, !noundef !15
  %i.h = trunc nuw i64 %i.g to i1, !dbg !5053
  br i1 %i.h, label %bb.b, label %._crit_edge, !dbg !5053

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !5058
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvXNtCsk5uxfcyCLQt_5quote3extNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs6bAnw1I7Lci_3syn10punctuated5PairsNtNtB21_8generics12GenericParamNtNtB21_5token5CommaEECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5059 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !5060
  call void @_RNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5061
  %i.d = load i64, ptr %i.b, align 8, !dbg !5061, !range !110, !noundef !15
  %i.e = trunc nuw i64 %i.d to i1, !dbg !5061
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !5061

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !5061

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !5063
  call void @_RNvXs_NtNtCs6bAnw1I7Lci_3syn10punctuated8printingINtB6_4PairRNtNtB8_8generics12GenericParamRNtNtB8_5token5CommaENtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokensCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !5064
  call void @_RNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_5PairsNtNtB7_8generics12GenericParamNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5061
  %i.g = load i64, ptr %i.b, align 8, !dbg !5061, !range !110, !noundef !15
  %i.h = trunc nuw i64 %i.g to i1, !dbg !5061
  br i1 %i.h, label %bb.b, label %._crit_edge, !dbg !5061

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !5066
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvXNtCsk5uxfcyCLQt_5quote3extNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCs6bAnw1I7Lci_3syn10punctuated5PairsNtNtCs7fhJ7v7hOxk_18foundations_macros11info_metric5FieldNtNtB21_5token5CommaEEB2F_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5067 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !5068
  call void @_RNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_5PairsNtNtCs7fhJ7v7hOxk_18foundations_macros11info_metric5FieldNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5069
  %i.d = load i64, ptr %i.b, align 8, !dbg !5069, !range !110, !noundef !15
  %i.e = trunc nuw i64 %i.d to i1, !dbg !5069
  br i1 %i.e, label %.lr.ph, label %._crit_edge, !dbg !5069

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b, !dbg !5069

bb.b:                                             ; preds = %.lr.ph, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !dbg !5071
  call void @_RNvXs_NtNtCs6bAnw1I7Lci_3syn10punctuated8printingINtB6_4PairRNtNtCs7fhJ7v7hOxk_18foundations_macros11info_metric5FieldRNtNtB8_5token5CommaENtNtCsk5uxfcyCLQt_5quote9to_tokens8ToTokens9to_tokensB11_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0), !dbg !5072
  call void @_RNvXsc_NtCs6bAnw1I7Lci_3syn10punctuatedINtB5_5PairsNtNtCs7fhJ7v7hOxk_18foundations_macros11info_metric5FieldNtNtB7_5token5CommaENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBR_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c), !dbg !5069
  %i.g = load i64, ptr %i.b, align 8, !dbg !5069, !range !110, !noundef !15
  %i.h = trunc nuw i64 %i.g to i1, !dbg !5069
  br i1 %i.h, label %bb.b, label %._crit_edge, !dbg !5069

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void, !dbg !5074
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNvXNtCsk5uxfcyCLQt_5quote3extNtCse4VeaA6Ikg_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allNtNtBx_12token_stream8IntoIterECs7fhJ7v7hOxk_18foundations_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5075 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 3 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !5076
  br label %bb.b, !dbg !5077

bb.b:                                             ; preds = %bb.k, %bb.a
  invoke void @_RNvXNtCse4VeaA6Ikg_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.e unwind label %bb.d, !dbg !5079

bb.c:                                             ; preds = %bb.j, %bb.d
end_hunk_0
