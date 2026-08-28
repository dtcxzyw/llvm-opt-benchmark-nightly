Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.02?download=true
inline.NumInlined: 1502
inline.NumDeleted: 343
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros:bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !inline_history !428
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics10TraitBoundECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSTNtNtCscBrinq2mG3I_3syn4path11PathSegmentNtNtBH_5token7PathSepEECs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(8) %i.ac), !inline_history !429
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros.exit

bb.l:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3849)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3855)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !range !34, !alias.scope !3858, !noundef !5
  %i.ag = icmp eq i8 %i.af, 2
  br i1 %i.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !3858, !noundef !5 ; 2 uses
  %i.ai = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !3858, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #12, !noalias !3858
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros.exit

bb.o:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14PreciseCaptureECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.aj), !inline_history !412
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.b, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics10TraitBoundECs5JB0sjZZtVB_12tokio_macros.exit, %bb.o
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueTNtNtCscBrinq2mG3I_3syn8generics14WherePredicateNtNtBG_5token5CommaEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !440, !alias.scope !3859, !noundef !5
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3868)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3871)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.f = load i8, ptr %i.e, align 8, !range !34, !alias.scope !3874, !noundef !5
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics17PredicateLifetimeECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !3874, !noundef !5 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics17PredicateLifetimeECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !3874, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #12, !noalias !3874
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics17PredicateLifetimeECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics17PredicateLifetimeECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.b, %bb.c, %bb.d
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14WherePredicateECs5JB0sjZZtVB_12tokio_macros.exit

bb.e:                                             ; preds = %bb.a
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics13PredicateTypeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(312) %0), !inline_history !457
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14WherePredicateECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14WherePredicateECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics17PredicateLifetimeECs5JB0sjZZtVB_12tokio_macros.exit, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !3875, !noundef !5
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !3876

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentEINtB4_18SpecFromIterNestedB13_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB2g_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0EE9from_iterB3u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %spec.select.i.i = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %spec.select.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.d = load i64, ptr %i.b, align 8, !range !873, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !3877, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0EEB2T_.exit.i, !prof !3876

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #16
  unreachable

_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0EEB2T_.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.k = icmp ule i64 %spec.select.i.i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3878
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.n, align 8, !noalias !3878
  store ptr %i.m, ptr %i.a, align 8, !noalias !3878
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.o, align 8, !noalias !3878
  invoke void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callNtCsfr4kGEjnBfC_11proc_macro25IdentNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4c_3VecB3u_E14extend_trustedBN_E0E0EB1v_(i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0EEB2T_.exit.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro25IdentEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %_RINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentE14extend_trustedINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtB1F_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0EEB2T_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3883)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3886
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3886
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 461168601842738791) %i.f, i1 noundef zeroext false, i64 noundef 4, i64 noundef 20), !noalias !3886
  %i.g = load i64, ptr %i.a, align 8, !range !873, !noalias !3886, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !3877, !noalias !3886, !noundef !5 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i, !prof !3876

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8, !noalias !3886
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #16, !noalias !3886
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !noalias !3886, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3886
  store i64 %i.j, ptr %i.b, align 8, !noalias !3886
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.o, align 8, !noalias !3886
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.e, i64 %i.f
  %i.r = icmp eq i64 %i.j, 0
  br i1 %i.r, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i
  %.sroa.012.047.i = phi ptr [ %i.u, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.e, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i ] ; 14 uses
  %.sroa.7.045.i = phi i64 [ %i.v, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i ] ; 3 uses
  %.sroa.10.044.i = phi i64 [ %i.s, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %i.j, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i ]
  %i.s = add i64 %.sroa.10.044.i, -1              ; 2 uses
  %i.t = icmp eq ptr %.sroa.012.047.i, %i.q
  br i1 %i.t, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 20
  %i.v = add nuw nsw i64 %.sroa.7.045.i, 1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 16
  %i.x = load i8, ptr %i.w, align 4, !range !191, !alias.scope !3888, !noalias !3891, !noundef !5 ; 3 uses
  %i.y = icmp samesign ugt i8 %i.x, 3
  %i.z = zext nneg i8 %i.x to i64
  %i.aa = add nsw i64 %i.z, -3
  %i.ab = select i1 %i.y, i64 %i.aa, i64 0
  switch i64 %i.ab, label %bb.d [
    i64 0, label %bb.e
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !alias.scope !3893, !noalias !3896, !noundef !5
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i.i.i, label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ac)
          to label %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.k, !noalias !3898

_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.f, %bb.e
  %storemerge.i.i.i = phi i32 [ 0, %bb.e ], [ %i.ae, %bb.f ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val1.i.i.i.i = load i32, ptr %i.af, align 4, !range !3899, !alias.scope !3900, !noalias !3903, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %.val.i.i.i.i = load i32, ptr %i.ag, align 4, !range !3899, !alias.scope !3900, !noalias !3903, !noundef !5 ; 2 uses
  %.sroa.1016.sroa.0.0.extract.trunc17.i = trunc i32 %.val.i.i.i.i to i8
  %.sroa.1016.sroa.6.0.extract.shift18.i = and i32 %.val.i.i.i.i, -256
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %storemerge.i.i.i to i8
  %.sroa.13.sroa.5.0.extract.shift.i = lshr i32 %storemerge.i.i.i, 8
  %.sroa.13.sroa.5.0.extract.trunc.i = trunc i32 %.sroa.13.sroa.5.0.extract.shift.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %storemerge.i.i.i, -65536
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.g:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.ai = load i8, ptr %i.ah, align 4, !range !3905, !alias.scope !3906, !noalias !3909, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i.i.i = load i32, ptr %i.aj, align 4, !range !3899, !alias.scope !3906, !noalias !3909, !noundef !5
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.h:                                             ; preds = %bb.c
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %2 = load i16, ptr %i.ak, align 4, !alias.scope !3888, !noalias !3891
  %.sroa.013.sroa.7.0.extract.trunc.i = zext i16 %2 to i32
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.i:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 12
  %i.am = load i8, ptr %i.al, align 4, !range !3911, !alias.scope !3912, !noalias !3915, !noundef !5
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 13
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !3912, !noalias !3915
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !alias.scope !3912, !noalias !3915, !noundef !5 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.047.i, i64 4
  %.val.i3.i.i = load i32, ptr %i.ar, align 4, !range !3899, !alias.scope !3912, !noalias !3915, !noundef !5
  %.sroa.1016.sroa.0.0.extract.trunc.i = trunc i32 %i.aq to i8
  %.sroa.1016.sroa.6.0.extract.shift.i = and i32 %i.aq, -256
  br label %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %.sroa.013.sroa.7.0.i = phi i32 [ %.val1.i.i.i.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ %.val.i.i.i, %bb.g ], [ %.sroa.013.sroa.7.0.extract.trunc.i, %bb.h ], [ %.val.i3.i.i, %bb.i ]
  %.sroa.1016.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.1016.sroa.6.0.extract.shift18.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ %.sroa.1016.sroa.6.0.extract.shift.i, %bb.i ]
  %.sroa.1016.sroa.0.0.i = phi i8 [ %.sroa.1016.sroa.0.0.extract.trunc17.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ %i.ai, %bb.g ], [ undef, %bb.h ], [ %.sroa.1016.sroa.0.0.extract.trunc.i, %bb.i ]
  %.sroa.13.sroa.6.0.i = phi i32 [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ 0, %bb.g ], [ 0, %bb.h ], [ 0, %bb.i ]
  %.sroa.13.sroa.5.0.i = phi i8 [ %.sroa.13.sroa.5.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.ao, %bb.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ undef, %bb.g ], [ undef, %bb.h ], [ %i.am, %bb.i ]
  %.sink.i.i = phi i8 [ %i.x, %_RNvXsz_NtCsa5ERaWwhjCQ_10proc_macro6bridgeINtB5_5GroupNtNtB5_6client11TokenStreamNtBS_4SpanENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros.exit.i.i ], [ 4, %bb.g ], [ 5, %bb.h ], [ 6, %bb.i ]
  %.sroa.013.sroa.0.0.i = load i32, ptr %.sroa.012.047.i, align 4, !range !3899, !alias.scope !3888, !noalias !3891, !noundef !5
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %.sroa.7.045.i ; 4 uses
  %.sroa.013.sroa.7.0.insert.ext.i = zext i32 %.sroa.013.sroa.7.0.i to i64
  %.sroa.013.sroa.7.0.insert.shift.i = shl nuw i64 %.sroa.013.sroa.7.0.insert.ext.i, 32
  %.sroa.013.sroa.0.0.insert.ext.i = zext i32 %.sroa.013.sroa.0.0.i to i64
  %.sroa.013.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.013.sroa.7.0.insert.shift.i, %.sroa.013.sroa.0.0.insert.ext.i
  %.sroa.1016.sroa.0.0.insert.ext.i = zext i8 %.sroa.1016.sroa.0.0.i to i32
  %.sroa.1016.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.1016.sroa.6.sroa.0.0.i, %.sroa.1016.sroa.0.0.insert.ext.i
  %.sroa.13.sroa.5.0.insert.ext.i = zext i8 %.sroa.13.sroa.5.0.i to i32
  %.sroa.13.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.13.sroa.5.0.insert.ext.i, 8
  %.sroa.13.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.shift.i, %.sroa.13.sroa.6.0.i
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.13.sroa.5.0.insert.insert.i, %.sroa.13.sroa.0.0.insert.ext.i
  store i64 %.sroa.013.sroa.0.0.insert.insert.i, ptr %i.as, align 4, !noalias !3898
  %.sroa.430.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store i32 %.sroa.1016.sroa.0.0.insert.insert.i, ptr %.sroa.430.0..sroa_idx.i, align 4, !noalias !3898
  %.sroa.531.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 12
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.531.0..sroa_idx.i, align 4, !noalias !3898
  %.sroa.632.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 %.sink.i.i, ptr %.sroa.632.0..sroa_idx.i, align 4, !noalias !3898
  %i.at = icmp eq i64 %i.s, 0
  br i1 %i.at, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

bb.j:                                             ; preds = %bb.k
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !3898
  unreachable

bb.k:                                             ; preds = %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.045.i, ptr %i.p, align 8, !noalias !3886
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #14
          to label %bb.l unwind label %bb.j, !noalias !3898

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.lr.ph.i, %_RNvXs1b_Csa5ERaWwhjCQ_10proc_macroNtB6_9TokenTreeNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i
  store i64 %i.f, ptr %i.p, align 8, !noalias !3886
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !3883
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3886
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.16.i = alloca [3 x i8], align 1          ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load i64, ptr %i.d, align 8, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3917)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3920
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3920
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 288230376151711744) %i.g, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !3920
  %i.h = load i64, ptr %i.b, align 8, !range !873, !noalias !3920, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !3877, !noalias !3920, !noundef !5 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i, !prof !3876

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !3920
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #16, !noalias !3920
  unreachable

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !3920, !nonnull !5, !noundef !5 ; 2 uses
  %i.o = icmp ule i64 %i.g, %i.k
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3920
  store i64 %i.k, ptr %i.c, align 8, !noalias !3920
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !3920
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.f, i64 %i.g
  %i.s = icmp eq i64 %i.k, 0
  br i1 %i.s, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %.lr.ph.i
  %.sroa.015.065.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.w, %bb.p ] ; 21 uses
  %.sroa.7.062.i = phi i64 [ 0, %.lr.ph.i ], [ %i.x, %bb.p ] ; 3 uses
  %.sroa.10.061.i = phi i64 [ %i.k, %.lr.ph.i ], [ %i.u, %bb.p ]
  %i.u = add i64 %.sroa.10.061.i, -1              ; 2 uses
  %i.v = icmp eq ptr %.sroa.015.065.i, %i.r
  br i1 %i.v, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 32
  %i.x = add nuw nsw i64 %.sroa.7.062.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3922)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3920
  %i.y = load i32, ptr %.sroa.015.065.i, align 8, !range !796, !alias.scope !3925, !noalias !3926, !noundef !5 ; 2 uses
  switch i32 %i.y, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.i
    i32 2, label %bb.l
    i32 3, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !range !802, !alias.scope !3928, !noalias !3933, !noundef !5
  %i.ab = trunc nuw i32 %i.aa to i1
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24
  %.val.i.i.i.i.i = load i8, ptr %i.ad, align 8, !range !3936, !alias.scope !3937, !noalias !3933, !noundef !5
  %i.ae = invoke noundef nonnull ptr @_RNvXs1_NtCsfr4kGEjnBfC_11proc_macro25rcvecINtB5_5RcVecNtB7_9TokenTreeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i unwind label %bb.r, !noalias !3940

bb.g:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 28
  %i.ah = load i8, ptr %i.ag, align 4, !range !3936, !alias.scope !3941, !noalias !3946, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !alias.scope !3941, !noalias !3946, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i.i.i.i, label %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = invoke noundef i32 @_RNvXsa_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ai)
          to label %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i unwind label %bb.r, !noalias !3940

_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i: ; preds = %bb.h, %bb.g
  %storemerge.i.i.i.i.i.i = phi i32 [ 0, %bb.g ], [ %i.ak, %bb.h ] ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i32, ptr %i.af, align 4, !range !3899, !alias.scope !3949, !noalias !3952, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %.val1.i.i.i.i.i.i.i = load i64, ptr %i.al, align 8, !alias.scope !3949, !noalias !3952
  %i.am = inttoptr i64 %.val1.i.i.i.i.i.i.i to ptr
  %.sroa.6.sroa.0.0.extract.trunc.i.i.i = trunc i32 %storemerge.i.i.i.i.i.i to i8
  %i.an = zext i32 %.val2.i.i.i.i.i.i.i to i64
  %i.ao = shl nuw i64 %i.an, 32
  %i.ap = and i32 %storemerge.i.i.i.i.i.i, -256
  br label %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i, %bb.f
  %.sroa.6.sroa.3.sroa.0.0.i.i.i = phi i32 [ %i.ap, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 0, %bb.f ]
  %.sroa.6.sroa.0.0.i.i.i = phi i8 [ %.sroa.6.sroa.0.0.extract.trunc.i.i.i, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %.val.i.i.i.i.i, %bb.f ]
  %.sroa.8.0.i.i.i = phi i8 [ %i.ah, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ undef, %bb.f ]
  %.sroa.3.0.i.i.i = phi ptr [ %i.am, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ %i.ae, %bb.f ]
  %.sroa.518.4.insert.insert.i = phi i64 [ %i.ao, %_RNvXs1c_Csa5ERaWwhjCQ_10proc_macroNtB6_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i.i.i ], [ 1, %bb.f ]
  %i.aq = inttoptr i64 %.sroa.518.4.insert.insert.i to ptr
  %i.ar = ptrtoint ptr %.sroa.3.0.i.i.i to i64
  br label %bb.p

bb.i:                                             ; preds = %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24
  %i.au = load i8, ptr %i.at, align 8, !range !34, !alias.scope !3954, !noalias !3959, !noundef !5 ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.au, 2
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = invoke { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as)
          to label %.noexc13.i unwind label %bb.r, !noalias !3940 ; 2 uses

.noexc13.i:                                       ; preds = %bb.j
  %i.aw = extractvalue { ptr, i64 } %i.av, 0      ; 2 uses
  %i.ax = extractvalue { ptr, i64 } %i.av, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %.sroa.5.sroa.0.0.extract.trunc.i.i.i = trunc i64 %i.ax to i8
  %.sroa.5.sroa.4.0.extract.shift.i.i.i = and i64 %i.ax, -256
  br label %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.k:                                             ; preds = %bb.i
  %.val1.i.i.i.i.i.i = load i64, ptr %i.as, align 8, !alias.scope !3962, !noalias !3967
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %i.az = load i8, ptr %i.ay, align 8, !range !3905, !alias.scope !3962, !noalias !3967, !noundef !5
  %i.ba = inttoptr i64 %.val1.i.i.i.i.i.i to ptr
  br label %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.k, %.noexc13.i
  %.sroa.5.sroa.4.sroa.0.0.i.i.i = phi i64 [ 0, %bb.k ], [ %.sroa.5.sroa.4.0.extract.shift.i.i.i, %.noexc13.i ]
  %.sroa.5.sroa.0.0.i.i.i = phi i8 [ %i.az, %bb.k ], [ %.sroa.5.sroa.0.0.extract.trunc.i.i.i, %.noexc13.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %i.ba, %bb.k ], [ %i.aw, %.noexc13.i ]
  %.sroa.5.sroa.0.0.insert.ext.i.i.i = zext i8 %.sroa.5.sroa.0.0.i.i.i to i64
  %.sroa.5.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.5.sroa.4.sroa.0.0.i.i.i, %.sroa.5.sroa.0.0.insert.ext.i.i.i
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !range !3970, !alias.scope !3971, !noalias !3974, !noundef !5
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 12
  %.val.i.i.i = load i8, ptr %i.bd, align 4, !range !3905, !alias.scope !3971, !noalias !3974, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8
  %.val1.i.i.i = load i32, ptr %i.be, align 8, !alias.scope !3971, !noalias !3974, !noundef !5
  %.sroa.518.0.insert.ext.i = zext i32 %.val1.i.i.i to i64
  %.sroa.518.4.insert.ext28.i = zext nneg i8 %.val.i.i.i to i64
  %.sroa.518.4.insert.shift29.i = shl nuw nsw i64 %.sroa.518.4.insert.ext28.i, 32
  %.sroa.518.4.insert.insert31.i = or disjoint i64 %.sroa.518.4.insert.shift29.i, %.sroa.518.0.insert.ext.i
  %i.bf = inttoptr i64 %.sroa.518.4.insert.insert31.i to ptr
  br label %bb.p

bb.m:                                             ; preds = %bb.d
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 8 ; 2 uses
  %i.bh = load i64, ptr %i.bg, align 8, !range !79, !alias.scope !3976, !noalias !3981, !noundef !5
  %.not.i.i2.i.i = icmp eq i64 %i.bh, -1
  br i1 %.not.i.i2.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg)
          to label %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i unwind label %bb.r, !noalias !3940

._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i: ; preds = %bb.n
  %.sroa.518.8.copyload.pre.i = load ptr, ptr %i.a, align 8, !noalias !3984
  %.sroa.13.8.copyload.pre.i = load i32, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3984
  %.sroa.15.8.copyload.pre.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !3984
  br label %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

bb.o:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 16
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 28
  %i.bk = load i8, ptr %i.bj, align 4, !range !3911, !alias.scope !3985, !noalias !3990, !noundef !5 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 29
  %i.bm = load i8, ptr %i.bl, align 1, !alias.scope !3985, !noalias !3990
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.015.065.i, i64 24
  %i.bo = load i32, ptr %i.bn, align 8, !alias.scope !3985, !noalias !3990, !noundef !5 ; 2 uses
  %i.bp = load <2 x i32>, ptr %i.bi, align 8, !alias.scope !3985, !noalias !3990
  store <2 x i32> %i.bp, ptr %i.t, align 8, !noalias !3993
  store i32 %i.bo, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !3993
  store i8 %i.bk, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !3993
  store i8 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !noalias !3993
  store i64 -1, ptr %i.a, align 8, !noalias !3993
  br label %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i

_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.o, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i
  %.sroa.15.8.copyload.i = phi i8 [ %.sroa.15.8.copyload.pre.i, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ %i.bk, %bb.o ]
  %.sroa.13.8.copyload.i = phi i32 [ %.sroa.13.8.copyload.pre.i, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ %i.bo, %bb.o ] ; 2 uses
  %.sroa.518.8.copyload.i = phi ptr [ %.sroa.518.8.copyload.pre.i, %._RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i_crit_edge.i ], [ inttoptr (i64 -1 to ptr), %bb.o ]
  %.sroa.11.8.copyload.i = load i64, ptr %i.t, align 8, !noalias !3984
  %.sroa.13.sroa.0.0.extract.trunc.i = trunc i32 %.sroa.13.8.copyload.i to i8
  %.sroa.13.sroa.6.0.extract.shift.i = and i32 %.sroa.13.8.copyload.i, -256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.5.0..sroa_idx.i.i.i.i, i64 3, i1 false), !noalias !3984
  br label %bb.p

bb.p:                                             ; preds = %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %bb.l, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i
  %.sroa.518.0.i = phi ptr [ %i.aq, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.0.0.i.i.i, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.bf, %bb.l ], [ %.sroa.518.8.copyload.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.13.sroa.6.sroa.0.0.i = phi i32 [ %.sroa.6.sroa.3.sroa.0.0.i.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ 0, %bb.l ], [ %.sroa.13.sroa.6.0.extract.shift.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.13.sroa.0.0.i = phi i8 [ %.sroa.6.sroa.0.0.i.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.au, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.13.sroa.0.0.extract.trunc.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.15.0.i = phi i8 [ %.sroa.8.0.i.i.i, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.15.8.copyload.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.11.0.i = phi i64 [ %i.ar, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %.sroa.5.sroa.0.0.insert.insert.i.i.i, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %bb.l ], [ %.sroa.11.8.copyload.i, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  %.sroa.417.0.i = phi i32 [ undef, %_RNvXsP_Csfr4kGEjnBfC_11proc_macro2NtB5_5GroupNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ undef, %_RNvXs15_Csfr4kGEjnBfC_11proc_macro2NtB6_5IdentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ], [ %i.bc, %bb.l ], [ undef, %_RNvXs16_Csfr4kGEjnBfC_11proc_macro2NtB6_7LiteralNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3920
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.062.i ; 7 uses
  %.sroa.13.sroa.0.0.insert.ext.i = zext i8 %.sroa.13.sroa.0.0.i to i32
  %.sroa.13.sroa.0.0.insert.insert.i = or i32 %.sroa.13.sroa.6.sroa.0.0.i, %.sroa.13.sroa.0.0.insert.ext.i
  %.sroa.949.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.949.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.16.i, i64 3, i1 false), !noalias !3940
  store i32 %i.y, ptr %i.bq, align 8, !noalias !3940
  %.sroa.444.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %.sroa.417.0.i, ptr %.sroa.444.0..sroa_idx.i, align 4, !noalias !3940
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %.sroa.518.0.i, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !3940
  %.sroa.646.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %.sroa.11.0.i, ptr %.sroa.646.0..sroa_idx.i, align 8, !noalias !3940
  %.sroa.747.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i32 %.sroa.13.sroa.0.0.insert.insert.i, ptr %.sroa.747.0..sroa_idx.i, align 8, !noalias !3940
  %.sroa.848.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i8 %.sroa.15.0.i, ptr %.sroa.848.0..sroa_idx.i, align 4, !noalias !3940
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i)
  %i.br = icmp eq i64 %i.u, 0
  br i1 %i.br, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.q:                                             ; preds = %bb.r
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13, !noalias !3940
  unreachable

bb.r:                                             ; preds = %bb.n, %bb.j, %bb.h, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.062.i, ptr %i.q, align 8, !noalias !3920
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #14
          to label %bb.s unwind label %bb.q, !noalias !3940

bb.s:                                             ; preds = %bb.r
  resume { ptr, i32 } %lpad.loopexit.i

_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtCsfr4kGEjnBfC_11proc_macro29TokenTreeNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c, %bb.p, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs5JB0sjZZtVB_12tokio_macros.exit.i
  store i64 %i.g, ptr %i.q, align 8, !noalias !3920
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !3917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3920
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i
  %.sroa.0.09.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.09.i ; 2 uses
  %i.g = add nuw nsw i64 %.sroa.0.09.i, 1         ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 4, !range !191, !alias.scope !3994, !noundef !5
  %i.j = icmp samesign ult i8 %i.i, 4
  br i1 %i.j, label %bb.b, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !3999, !noundef !5
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.k)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.n = icmp eq i64 %i.g, %i.d
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.g, %i.d
  br i1 %i.p, label %._crit_edge13.i, label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %bb.d, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i
  %.sroa.0.110.i = phi i64 [ %i.r, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i ], [ %i.g, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.0.110.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i, 1                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.t = load i8, ptr %i.s, align 4, !range !191, !alias.scope !4006, !noundef !5
  %i.u = icmp samesign ult i8 %i.t, 4
  br i1 %i.u, label %bb.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i

bb.e:                                             ; preds = %.lr.ph12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !alias.scope !4009, !noundef !5
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i: ; preds = %bb.f, %bb.e, %.lr.ph12.i
  %i.y = icmp eq i64 %i.r, %i.d
  br i1 %i.y, label %._crit_edge13.i, label %.lr.ph12.i

._crit_edge13.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit8.i, %bb.d
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeECs5JB0sjZZtVB_12tokio_macros.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro211TokenStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.0.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i1, 1         ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i2, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.sroa.0.1.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.m) #14
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsfr4kGEjnBfC_11proc_macro25IdentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4016)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i
  %.sroa.0.07.i = phi i64 [ %i.g, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.07.i ; 3 uses
  %i.g = add nuw nsw i64 %.sroa.0.07.i, 1         ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4019)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4022)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i8, ptr %i.h, align 8, !range !34, !alias.scope !4025, !noundef !5
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !4025, !noundef !5 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !4025, !nonnull !5, !noundef !5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i, i64 noundef 1) #12, !noalias !4025
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.m = icmp eq i64 %i.g, %i.d
  br i1 %i.m, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr4MetaENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
end_hunk_0
