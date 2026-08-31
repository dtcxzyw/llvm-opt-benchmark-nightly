Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.03?download=true
inline.NumInlined: 699
inline.NumDeleted: 296
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics9TypeParamECs5JB0sjZZtVB_12tokio_macros:bb.a
bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #19
          to label %.body4 unwind label %bb.p

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i8, ptr %i.h, align 8, !range !31, !alias.scope !1229, !noundef !4
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !1229, !noundef !4 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1229, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !1229
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.body12 unwind label %bb.i

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body12

.body12:                                          ; preds = %bb.g, %bb.j
  %eh.lpad-body13 = phi { ptr, i32 } [ %i.p, %bb.j ], [ %i.n, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 272
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(8) %i.q) #19
          to label %.body4 unwind label %bb.m, !inline_history !1230

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1231, !align !6, !noundef !4 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(120) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.l, !noalias !1234, !inline_history !1237

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #21, !noalias !1234
  br label %.body4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #21, !noalias !1234
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit

bb.m:                                             ; preds = %.body12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !inline_history !1230
  unreachable

.body4:                                           ; preds = %.body12, %bb.l, %.body
  %.pn2 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body13, %.body12 ], [ %i.u, %bb.l ]
  %i.w = load i64, ptr %0, align 8, !range !1238, !alias.scope !1239, !noundef !4
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.n

bb.n:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn2ty4TypeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.p, !inline_history !1242

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.y = load i64, ptr %0, align 8, !range !1238, !alias.scope !1243, !noundef !4
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit6, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn2ty4TypeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0), !inline_history !1242
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit6

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit6: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit, %bb.o
  ret void

bb.p:                                             ; preds = %bb.n, %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.body4, %bb.n
  resume { ptr, i32 } %.pn2
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1246)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1249)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !31, !alias.scope !1252, !noundef !4
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1252, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !1252, !nonnull !4, !noundef !4
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !1252
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a, %bb.b, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !477, !alias.scope !1253, !noundef !4
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsa5ERaWwhjCQ_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp13TokenTreeIterECs5JB0sjZZtVB_12tokio_macros.exit

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp13TokenTreeIterECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp13TokenTreeIterECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implhECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull writeonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %bb.c, label %bb.b, !prof !1256

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_impl17len_mismatch_fail(i64 noundef %1, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %4) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %2, i64 %1, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2r_8for_each4callNtCsfr4kGEjnBfC_11proc_macro25IdentNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4c_3VecB3u_E14extend_trustedBN_E0E0EB1v_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %i.e = icmp ult i64 %0, %1
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %3 = ptrtoint ptr %i.c to i64
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.c

bb.b:                                             ; preds = %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i, %.lr.ph.i
  %.val4.i = phi i64 [ %.sroa.5.0.copyload, %.lr.ph.i ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %0, %.lr.ph.i ], [ %i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ] ; 2 uses
  %i.i = add i64 %.sroa.0.011.i, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1260
  store i64 %.sroa.0.011.i, ptr %i.c, align 8, !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1263
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1263
  store i64 %3, ptr %i.a, align 8, !noalias !1263
  store i64 ptrtoint (ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt to i64), ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1263
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
          to label %.noexc.i unwind label %bb.b, !noalias !1257

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1263
  %i.j = load ptr, ptr %i.f, align 8, !noalias !1263, !nonnull !4, !noundef !4
  %i.k = load i64, ptr %i.g, align 8, !noalias !1263, !noundef !4
  %i.l = invoke noundef i32 @_RNvMsi_Csfr4kGEjnBfC_11proc_macro2NtB5_4Span9call_site()
          to label %bb.e unwind label %bb.d, !noalias !1263

bb.d:                                             ; preds = %bb.e, %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %bb.j unwind label %bb.i, !noalias !1263

bb.e:                                             ; preds = %.noexc.i
  invoke void @_RNvMsx_Csfr4kGEjnBfC_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, i32 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.f unwind label %bb.d, !noalias !1260

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i unwind label %bb.g, !noalias !1263

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !1263

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1263
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1263
  unreachable

_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i unwind label %bb.b, !noalias !1257

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i: ; preds = %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1260
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1260
  %i.r = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1257
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit, label %bb.c

bb.j:                                             ; preds = %bb.g, %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.n, %bb.g ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1257
  resume { ptr, i32 } %eh.lpad-body.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1257
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsfr4kGEjnBfC_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1O_j1_ECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [20 x i8], align 4                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = load i64, ptr %0, align 8, !range !72, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.lr.ph.i.us.i.i.i unwind label %bb.d, !noalias !1266

.lr.ph.i.us.i.i.i:                                ; preds = %bb.b
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !1269, !noalias !1272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1278)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1281)
  store i64 1, ptr %i.b, align 8, !alias.scope !1284, !noalias !1285
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit unwind label %.split.i.i.i, !noalias !1295

.split.i.i.i:                                     ; preds = %.lr.ph.i.us.i.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #19
          to label %common.resume unwind label %bb.c, !noalias !1296

bb.c:                                             ; preds = %.split.i.i.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1296
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d, %bb.j, %.body, %.split.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.j ], [ %eh.lpad-body, %.body ], [ %i.k, %.split.i.i.i ], [ %i.m, %bb.d ], [ %i.aa, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.lr.ph.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph: ; preds = %bb.a
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 1, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1300)
  store i64 1, ptr %i.f, align 8, !alias.scope !1303, !noalias !1306
  %.sroa.01.0.copyload231 = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1307 ; 2 uses
  %.not32 = icmp eq i32 %.sroa.01.0.copyload231, -1
  br i1 %.not32, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.f ], [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #19
          to label %common.resume unwind label %bb.r

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  store i64 1, ptr %i.f, align 8, !alias.scope !1303, !noalias !1312
  %.sroa.01.0.copyload2 = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1313 ; 2 uses
  %.not = icmp eq i32 %.sroa.01.0.copyload2, -1
  br i1 %.not, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit
  %.sroa.01.0.copyload233 = phi i32 [ %.sroa.01.0.copyload2, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit ], [ %.sroa.01.0.copyload231, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.25.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.4.0..sroa_idx3, i64 28, i1 false)
  store i32 %.sroa.01.0.copyload233, ptr %i.d, align 8
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro23imp19into_compiler_token(ptr noalias nofree noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.l unwind label %bb.f

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph
  %.lcssa27 = phi i64 [ 1, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph ], [ %i.as, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit ] ; 2 uses
  %i.r = icmp eq i64 %.lcssa27, 1
  br i1 %i.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread
  %i.s = add i64 %.lcssa27, -1                    ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph35

bb.h:                                             ; preds = %.lr.ph35
  %i.v = icmp eq i64 %i.x, %i.s
  br i1 %i.v, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i34 = phi i64 [ %i.x, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %.sroa.0.0.i.i.i.i.i.i.i34
  %i.x = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i34, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.w)
end_hunk_0
begin_hunk_1_@_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write10write_char:bb.a
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !1401
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !1404
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !1407, !noalias !1404, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1407, !noalias !1404, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !1407, !noalias !1404
  br label %_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCs1xwejQucwHj_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !1407, !noalias !1404
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsb_NtCscBrinq2mG3I_3syn5parseINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_5token4SemiENtB5_5Parse5parseCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 12)) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = tail call { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %1) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = tail call noundef zeroext i1 @_RNvXs8O_NtCscBrinq2mG3I_3syn5tokenNtB6_4SemiNtB6_5Token4peek(ptr noundef %i.c, ptr noundef %i.d)
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.f, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvMs9_NtCscBrinq2mG3I_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_5token4SemiECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !1411)
  %i.g = load i64, ptr %i.a, align 8, !range !72, !alias.scope !1414, !noalias !1411, !noundef !4 ; 2 uses
  %.not.i = icmp eq i64 %i.g, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i = load i32, ptr %i.h, align 8, !alias.scope !1416 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %.not.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx7, i64 12, i1 false)
  store i64 %i.g, ptr %0, align 8, !alias.scope !1417
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.411.0..sroa_idx, align 8, !alias.scope !1417
  br label %bb.d

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.i, align 8
  store i32 %.sroa.0.0.copyload.i, ptr %.sroa.2.0..sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXsf_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxeENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs5JB0sjZZtVB_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1421
  %i.e = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 1, -9223372036854775808) %i.c, i64 noundef 1) #21, !noalias !1421 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs5JB0sjZZtVB_12tokio_macros.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef range(i64 0, -9223372036854775808) %i.c) #23, !noalias !1426
  unreachable

_RNvMs1_NtCs1xwejQucwHj_5alloc5boxedINtB5_3BoxShE17clone_from_ref_inCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a, %bb.b
  %.sroa.01.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.01.0.i.i, ptr nonnull readonly align 1 %i.a, i64 range(i64 0, -9223372036854775808) %i.c, i1 false)
  %i.g = insertvalue { ptr, i64 } poison, ptr %.sroa.01.0.i.i, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %i.c, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXss_NtCsfr4kGEjnBfC_11proc_macro23impNtB5_5IdentINtNtCs3oUPovFnLWP_4core3cmp9PartialEqRReE2eqCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !6, !noundef !4 ; 2 uses
  %.val.i = load ptr, ptr %.val, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.e = getelementptr i8, ptr %.val, i64 8
  %.val1.i = load i64, ptr %i.e, align 8, !noundef !4 ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !31, !noundef !4 ; 2 uses
  %.not = icmp eq i8 %i.g, 2
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1427)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1430)
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !1427, !noalias !1430, !noundef !4
  %i.k = icmp eq i64 %i.j, %.val1.i
  br i1 %i.k, label %bb.d, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8, !alias.scope !1427, !noalias !1430, !nonnull !4, !noundef !4
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.l, ptr nonnull readonly %.val.i, i64 %.val1.i), !alias.scope !1432, !noalias !1427
  %i.m = icmp eq i32 %bcmp.i.i.i, 0
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.e:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_RINvMNtCs3oUPovFnLWP_4core3stre11starts_withReECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 2), !noalias !1427
  br i1 %i.n, label %bb.f, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !alias.scope !1427, !noalias !1430, !nonnull !4, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1427, !noalias !1430, !noundef !4 ; 2 uses
  %i.r = icmp ult i64 %.val1.i, 3
  br i1 %i.r, label %.split.i.i.i.i, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.f
  %i.s = icmp eq i64 %.val1.i, 2
  br i1 %i.s, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.g, !prof !1256

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i: ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !1436, !noalias !1427, !noundef !4
  %i.v = icmp sgt i8 %i.u, -65
  br i1 %i.v, label %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.g, !prof !1256

bb.g:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %.split.i.i.i.i
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val1.i, i64 noundef 2, i64 noundef %.val1.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #18, !noalias !1427
  unreachable

_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.i.i.i.i, %.split.i.i.i.i
  %i.w = add i64 %.val1.i, -2
  %i.x = icmp eq i64 %i.q, %i.w
  br i1 %i.x, label %bb.h, label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.h:                                             ; preds = %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  %bcmp.i2.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.o, ptr nonnull readonly %i.y, i64 %i.q), !alias.scope !1443, !noalias !1427
  %i.z = icmp eq i32 %bcmp.i2.i.i, 0
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1447
  store i64 0, ptr %i.c, align 8, !noalias !1447
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !1447
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1447
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.aa, align 8, !noalias !1447
  store ptr %i.c, ptr %i.b, align 8, !noalias !1447
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @6, ptr %i.ab, align 8, !noalias !1447
  %i.ac = invoke noundef zeroext i1 @_RNvXsN_Csa5ERaWwhjCQ_10proc_macroNtB5_5IdentNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.k unwind label %bb.j, !noalias !1454

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.m, !noalias !1454

bb.k:                                             ; preds = %bb.i
  br i1 %i.ac, label %bb.l, label %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit, !prof !1400

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #18
          to label %.noexc.i.i unwind label %bb.j, !noalias !1454

.noexc.i.i:                                       ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1454
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.j ], [ %i.aj, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1447
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1447
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val6 = load i64, ptr %i.af, align 8, !noundef !4
  %i.ag = icmp eq i64 %.val6, %.val1.i
  br i1 %i.ag, label %bb.n, label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit

bb.n:                                             ; preds = %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val5 = load ptr, ptr %i.ah, align 8, !nonnull !4, !noundef !4
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.val5, ptr nonnull readonly %.val.i, i64 %.val1.i)
  %i.ai = icmp eq i32 %bcmp.i, 0
  br label %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit

_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit: ; preds = %bb.n, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit
  %.sroa.0.0.i = phi i1 [ %i.ai, %bb.n ], [ false, %_RNvXsB_NtCs1xwejQucwHj_5alloc6stringNtCsa5ERaWwhjCQ_10proc_macro5IdentNtB5_8ToString9to_stringCs5JB0sjZZtVB_12tokio_macros.exit ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.o

bb.o:                                             ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvXs1y_NtCs1xwejQucwHj_5alloc6stringNtB6_6StringINtNtCs3oUPovFnLWP_4core3cmp9PartialEqReE2eq.exit
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit

_RNvXs7_NtNtCs3oUPovFnLWP_4core3cmp5implsRNtNtCsfr4kGEjnBfC_11proc_macro28fallback5IdentINtB7_9PartialEqReE2eqCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.h, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.e, %bb.d, %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit
  %.sroa.0.0.in = phi i1 [ %.sroa.0.0.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros.exit ], [ false, %bb.c ], [ false, %bb.e ], [ %i.m, %bb.d ], [ %i.z, %bb.h ], [ false, %_RNvXs2_NtNtCs3oUPovFnLWP_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCs5JB0sjZZtVB_12tokio_macros.exit.i.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXsq_NtCsaoeXog3N7id_5quote9to_tokensNtCsfr4kGEjnBfC_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.b, !noalias !1456

bb.b:                                             ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %.body unwind label %bb.c, !noalias !1456

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1456
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #19
  resume { ptr, i32 } %eh.lpad-body

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  call void @llvm.experimental.noalias.scope.decl(metadata !1464)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !31, !alias.scope !1467, !noundef !4
  %i.g = icmp eq i8 %i.f, 2
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i = load i64, ptr %i.h, align 8, !alias.scope !1467, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !1467, !nonnull !4, !noundef !4
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !1467
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.e, %bb.f, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCs1xwejQucwHj_5alloc6string6StringNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCs3oUPovFnLWP_4core3fmt5Write9write_fmtQNtNtCs1xwejQucwHj_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCs5JB0sjZZtVB_12tokio_macros.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @6, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !1468
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  invoke void @_RNvXs1_NtNtCscBrinq2mG3I_3syn4attr8printingNtB7_13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.e unwind label %bb.b, !noalias !1469

bb.b:                                             ; preds = %.noexc
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %.body unwind label %bb.c, !noalias !1469

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1469
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(232) %1) #19
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1472
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 176
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4expr4ExprECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %1) #19
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
end_hunk_1
