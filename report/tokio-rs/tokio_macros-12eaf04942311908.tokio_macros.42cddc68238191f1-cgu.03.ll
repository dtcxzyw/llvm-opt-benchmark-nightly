Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio_macros-12eaf04942311908.tokio_macros.42cddc68238191f1-cgu.03?download=true
inline.NumInlined: 699
inline.NumDeleted: 296
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECs5JB0sjZZtVB_12tokio_macros:bb.a
  %i.m = select i1 %i.l, i64 %i.k, i64 2
  switch i64 %i.m, label %bb.h [
    i64 0, label %bb.i
    i64 1, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics10ConstParamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %i.h)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.k, !noalias !364, !inline_history !359

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics13LifetimeParamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(96) %i.n)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.k, !noalias !364, !inline_history !359

bb.j:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics9TypeParamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(320) %i.o)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.k, !noalias !364, !inline_history !359

common.resume:                                    ; preds = %bb.f, %.body, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.k ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.p = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 464, i64 noundef 8) #21, !noalias !364, !inline_history !360
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.j, %bb.i, %bb.h
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 464, i64 noundef 8) #21, !noalias !364, !inline_history !360
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEEECs5JB0sjZZtVB_12tokio_macros.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEEECs5JB0sjZZtVB_12tokio_macros.exit1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics12GenericParamNtNtB1d_5token5CommaEEECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics12GenericParamEECs5JB0sjZZtVB_12tokio_macros.exit
  ret void

bb.l:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !369, !align !13, !noundef !12
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.f

bb.f:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.h, !inline_history !370

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !371, !align !13, !noundef !12
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros.exit1, label %bb.g

bb.g:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g), !inline_history !370
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros.exit1: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8lifetime8LifetimeNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtBR_5token4PlusEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !align !13, !noundef !12
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEEECs5JB0sjZZtVB_12tokio_macros(ptr %.val1) #19
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !align !13, !noundef !12 ; 5 uses
  %i.f = icmp eq ptr %.val, null
  br i1 %i.f, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !15, !alias.scope !381, !noundef !12
  %i.i = icmp eq i8 %i.h, 2
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !381, !noundef !12 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEECs5JB0sjZZtVB_12tokio_macros.exit.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %.val.i.i.i.i.i = load ptr, ptr %.val, align 8, !alias.scope !381, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #21, !noalias !381
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEECs5JB0sjZZtVB_12tokio_macros.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.g, %bb.f
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEEECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8lifetime8LifetimeEECs5JB0sjZZtVB_12tokio_macros.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !388, !noundef !12 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !388, !noundef !12 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtB9_3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtB9_3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sroa.0.0.i.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i.i3
  %i.j = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i3, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i)
          to label %bb.b unwind label %bb.e

bb.d:                                             ; preds = %.lr.ph5
  %i.k = add i64 %.sroa.0.1.i.i.i.i.i.i4, 1       ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %._crit_edge, label %.lr.ph5

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %._crit_edge, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i.i.i.i.i4 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i.i4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #19
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.m

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXs5_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtB9_3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !alias.scope !411, !noundef !12
  %.not.i = icmp eq i64 %i.a, -1
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !412, !noundef !12
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #19
          to label %common.resume.i unwind label %bb.g

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.c, %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp19DeferredTokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.i, %bb.e, %bb.d
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.j, %bb.j ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp19DeferredTokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i.i
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.k unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !416, !nonnull !12, !noundef !12 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !417, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !417
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.j, label %common.resume.i

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22
          to label %common.resume.i unwind label %bb.m

bb.k:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !421, !nonnull !12, !noundef !12 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !422, !noundef !12
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !422
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.m:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp19DeferredTokenStreamECs5JB0sjZZtVB_12tokio_macros.exit.i, %bb.k, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !425, !noundef !12
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp5IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !425, !noundef !12 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp5IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !425, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #21, !noalias !425
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp5IdentECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro23imp5IdentECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a, %bb.b, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !460, !noundef !12
  switch i32 %i.a, label %default.unreachable1 [
    i32 0, label %bb.f
    i32 1, label %bb.o
    i32 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECs5JB0sjZZtVB_12tokio_macros.exit
    i32 3, label %bb.b
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !range !17, !alias.scope !461, !noundef !12
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro28fallback7LiteralECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.k, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.d ], [ %i.n, %bb.k ], [ %i.n, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro28fallback7LiteralECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro27LiteralECs5JB0sjZZtVB_12tokio_macros.exit

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !range !462, !alias.scope !463, !noundef !12
  %i.i = icmp eq i32 %i.h, 0
end_hunk_0
begin_hunk_1_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path4PathECs5JB0sjZZtVB_12tokio_macros:bb.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.h, %bb.g
  %i.o = load i64, ptr %i.g, align 8, !range !16, !alias.scope !1098, !noalias !1094, !noundef !12 ; 2 uses
  %i.p = xor i64 %i.o, -9223372036854775808
  %i.q = icmp slt i64 %i.o, 0
  %i.r = select i1 %i.q, i64 %i.p, i64 2
  switch i64 %i.r, label %bb.i [
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEECs5JB0sjZZtVB_12tokio_macros.exit.i
    i64 1, label %bb.j
  ]

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path29ParenthesizedGenericArgumentsECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.r, !inline_history !1080

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %bb.l unwind label %bb.k, !noalias !1094

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.body9 unwind label %bb.m, !noalias !1094

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTNtNtCscBrinq2mG3I_3syn4path15GenericArgumentNtNtBR_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path30AngleBracketedGenericArgumentsECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1094
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body9

.body9:                                           ; preds = %bb.k, %bb.n
  %eh.lpad-body10 = phi { ptr, i32 } [ %i.v, %bb.n ], [ %i.t, %bb.k ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path15GenericArgumentEEECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(8) %i.w) #19
          to label %bb.s unwind label %bb.o, !noalias !1094, !inline_history !1083

bb.o:                                             ; preds = %.body9
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1094, !inline_history !1083
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path30AngleBracketedGenericArgumentsECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1099, !align !13, !noundef !12 ; 4 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path30AngleBracketedGenericArgumentsECs5JB0sjZZtVB_12tokio_macros.exit.i
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path15GenericArgumentECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(312) %i.z)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path15GenericArgumentEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.q, !noalias !1100, !inline_history !1088

bb.q:                                             ; preds = %bb.p
  %i.ab = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 312, i64 noundef 8) #21, !noalias !1100, !inline_history !1089
  br label %bb.s

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path15GenericArgumentEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.p
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef 312, i64 noundef 8) #21, !noalias !1100, !inline_history !1089
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEECs5JB0sjZZtVB_12tokio_macros.exit.i

bb.r:                                             ; preds = %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.body9, %bb.q, %bb.r
  %eh.lpad-body2 = phi { ptr, i32 } [ %eh.lpad-body10, %.body9 ], [ %i.ac, %bb.r ], [ %i.ab, %bb.q ]
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1094, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef 88, i64 noundef 8) #21, !noalias !1094
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit.i, %bb.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path15GenericArgumentEECs5JB0sjZZtVB_12tokio_macros.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4path30AngleBracketedGenericArgumentsECs5JB0sjZZtVB_12tokio_macros.exit.i
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1094, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef 88, i64 noundef 8) #21, !noalias !1094
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEEECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn4path11PathSegmentEECs5JB0sjZZtVB_12tokio_macros.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn4stmt5BlockECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4stmt4StmtENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4stmt4StmtEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4stmt4StmtENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCscBrinq2mG3I_3syn4stmt4StmtEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtCscBrinq2mG3I_3syn4stmt4StmtEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4stmt4StmtEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4stmt4StmtENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1123)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !1124, !noundef !12 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !noalias !1125, !noundef !12
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !noalias !1125
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1129, !noundef !12 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !noalias !1130, !noundef !12
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !noalias !1130
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit1

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit1

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit1: ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc2rc2RcIBC_NtNtCscBrinq2mG3I_3syn5parse10UnexpectedEEEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCscBrinq2mG3I_3syn6buffer5EntryEECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.c = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.d = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.h) #19
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c, %bb.d
  %i.j = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef 8) #21
  resume { ptr, i32 } %i.f

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.k, i64 noundef 8) #21
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCscBrinq2mG3I_3syn6buffer5EntryEECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxSNtNtCscBrinq2mG3I_3syn6buffer5EntryEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i4.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !1165, !noundef !12 ; 3 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit [
    i64 0, label %bb.b
    i64 1, label %bb.k
    i64 3, label %bb.m
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro28fallback7LiteralECs5JB0sjZZtVB_12tokio_macros.exit.i.i, %bb.m, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.l, %bb.k, %bb.i, %bb.h, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.a, 0
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !alias.scope !1166, !noundef !12
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.g)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1169)
  %i.l = load ptr, ptr %i.j, align 8, !alias.scope !1170, !nonnull !12, !noundef !12 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noalias !1171, !noundef !12
  %i.n = add i64 %i.m, -1                         ; 2 uses
  store i64 %i.n, ptr %i.l, align 8, !noalias !1171
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
          to label %common.resume unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1174)
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !1175, !nonnull !12, !noundef !12 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !noalias !1176, !noundef !12
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !noalias !1176
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCsfr4kGEjnBfC_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.j) #22
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit

bb.j:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.o, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.ad, %bb.o ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i8, ptr %i.v, align 8, !range !15, !alias.scope !1179, !noundef !12
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !1179, !noundef !12 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i, 0
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.l
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !1179, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !1179
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !17, !alias.scope !1180, !noundef !12
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro28fallback7LiteralECs5JB0sjZZtVB_12tokio_macros.exit.i.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro28fallback7LiteralECs5JB0sjZZtVB_12tokio_macros.exit.i.i: ; preds = %bb.n
  tail call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25GroupECs5JB0sjZZtVB_12tokio_macros.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics10ConstParamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 3 uses
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn2ty4TypeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(224) %0) #19
          to label %bb.g unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 448
end_hunk_1
begin_hunk_2_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics9TypeParamECs5JB0sjZZtVB_12tokio_macros:bb.a
_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1241)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.i = load i8, ptr %i.h, align 8, !range !15, !alias.scope !1242, !noundef !12
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeEECs5JB0sjZZtVB_12tokio_macros.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !1242, !noundef !12 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i, 0
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !1242, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !1242
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
          to label %.body4 unwind label %bb.m, !inline_history !1243

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1244, !align !13, !noundef !12 ; 4 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.k

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(120) %i.s)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.l, !noalias !1245, !inline_history !1246

bb.l:                                             ; preds = %bb.k
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #21, !noalias !1245
  br label %.body4

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.k
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 120, i64 noundef 8) #21, !noalias !1245
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit

bb.m:                                             ; preds = %.body12
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !inline_history !1243
  unreachable

.body4:                                           ; preds = %.body12, %bb.l, %.body
  %.pn2 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body13, %.body12 ], [ %i.u, %bb.l ]
  %i.w = load i64, ptr %0, align 8, !range !1247, !alias.scope !1248, !noundef !12
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.n

bb.n:                                             ; preds = %.body4
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn2ty4TypeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.p, !inline_history !1237

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundNtNtB1d_5token4PlusEEECs5JB0sjZZtVB_12tokio_macros.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCscBrinq2mG3I_3syn8generics14TypeParamBoundEECs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.y = load i64, ptr %0, align 8, !range !1247, !alias.scope !1249, !noundef !12
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscBrinq2mG3I_3syn2ty4TypeEECs5JB0sjZZtVB_12tokio_macros.exit6, label %bb.o

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCscBrinq2mG3I_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5JB0sjZZtVB_12tokio_macros.exit
  tail call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn2ty4TypeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(224) %0), !inline_history !1237
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1255)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !alias.scope !1256, !noundef !12
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !1256, !noundef !12 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !1256, !nonnull !12, !noundef !12
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !1256
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro25IdentECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a, %bb.b, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !alias.scope !1259, !noundef !12
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
  br i1 %.not, label %bb.c, label %bb.b, !prof !24

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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1266
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1267
  store i64 %.sroa.0.011.i, ptr %i.c, align 8, !noalias !1268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1268
  store ptr %i.c, ptr %i.a, align 8, !noalias !1268
  store ptr @_RNvXsi_NtNtNtCs3oUPovFnLWP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1268
  invoke void @_RNvNvNtCs1xwejQucwHj_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @2, ptr noundef nonnull %i.a)
          to label %.noexc.i unwind label %bb.b, !noalias !1266

.noexc.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1268
  %i.j = load ptr, ptr %i.f, align 8, !noalias !1268, !nonnull !12, !noundef !12
  %i.k = load i64, ptr %i.g, align 8, !noalias !1268, !noundef !12
  %i.l = invoke noundef i32 @_RNvMsi_Csfr4kGEjnBfC_11proc_macro2NtB5_4Span9call_site()
          to label %bb.e unwind label %bb.d, !noalias !1268

bb.d:                                             ; preds = %bb.e, %.noexc.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #19
          to label %bb.j unwind label %bb.i, !noalias !1268

bb.e:                                             ; preds = %.noexc.i
  invoke void @_RNvMsx_Csfr4kGEjnBfC_11proc_macro2NtB5_5Ident3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %i.k, i32 noundef %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4)
          to label %bb.f unwind label %bb.d, !noalias !1267

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i unwind label %bb.g, !noalias !1268

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.h, !noalias !1268

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1268
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1268
  unreachable

_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i unwind label %bb.b, !noalias !1266

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i: ; preds = %_RNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0B5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1267
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1267
  %i.r = add i64 %.val4.i, 1                      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1266
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit, label %bb.c

bb.j:                                             ; preds = %bb.g, %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.n, %bb.g ], [ %i.m, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val4.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1266
  resume { ptr, i32 } %eh.lpad-body.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvBL_8for_each4callB25_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4h_3VecB25_E14extend_trustedINtB1B_3MapB3_B2F_EE0E0E0EB2L_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.r, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldjNtCsfr4kGEjnBfC_11proc_macro25IdentuNCNvNtCs5JB0sjZZtVB_12tokio_macros6select19declare_output_enum0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB3B_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB1v_EE0E0E0B1B_.exit.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !1266
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
  %i.g = load i64, ptr %0, align 8, !range !17, !noundef !12
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %.lr.ph.i.us.i.i.i unwind label %bb.d, !noalias !1314

.lr.ph.i.us.i.i.i:                                ; preds = %bb.b
  %.sroa.56.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.45.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i.i, align 8, !alias.scope !1315, !noalias !1316
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1317)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  store i64 1, ptr %i.b, align 8, !alias.scope !1320, !noalias !1316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1321
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit unwind label %.split.loopexit.split-lp.i.i.i, !noalias !1322

.split.loopexit.split-lp.i.i.i:                   ; preds = %.lr.ph.i.us.i.i.i
  %lpad.loopexit.split-lp.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #19
          to label %common.resume unwind label %bb.c, !noalias !1323

bb.c:                                             ; preds = %.split.loopexit.split-lp.i.i.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1323
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.d, %bb.j, %.body, %.split.loopexit.split-lp.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.j ], [ %eh.lpad-body, %.body ], [ %lpad.loopexit.split-lp.i.i.i, %.split.loopexit.split-lp.i.i.i ], [ %i.l, %bb.d ], [ %i.z, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %.lr.ph.i.us.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1321
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
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.f, align 8, !alias.scope !1324
  %.sroa.01.0.copyload231 = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1325 ; 2 uses
  %.not32 = icmp eq i32 %.sroa.01.0.copyload231, -1
  br i1 %.not32, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.n, %bb.o, %bb.p, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.ag, %bb.p ], [ %i.ag, %bb.o ], [ %i.ag, %bb.n ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(48) %i.f) #19
          to label %common.resume unwind label %bb.r

_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit
  store i64 1, ptr %i.f, align 8, !alias.scope !1324
  %.sroa.01.0.copyload2 = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !1326 ; 2 uses
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
  %.lcssa27 = phi i64 [ 1, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.lr.ph ], [ %i.ar, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit ] ; 2 uses
  %i.q = icmp eq i64 %.lcssa27, 1
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %bb.g

bb.g:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread
  %i.r = add i64 %.lcssa27, -1                    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph35

bb.h:                                             ; preds = %.lr.ph35
  %i.u = icmp eq i64 %i.w, %i.r
  br i1 %i.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph35

.lr.ph35:                                         ; preds = %bb.g, %bb.h
  %.sroa.0.0.i.i.i.i.i.i.i34 = phi i64 [ %i.w, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.sroa.0.0.i.i.i.i.i.i.i34
  %i.w = add nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i34, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.v)
          to label %bb.h unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph37
  %i.x = add i64 %.sroa.0.1.i.i.i.i.i.i.i36, 1    ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.r
  br i1 %i.y, label %common.resume, label %.lr.ph37

bb.j:                                             ; preds = %.lr.ph35
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aa = icmp eq i64 %i.w, %i.r
  br i1 %i.aa, label %common.resume, label %.lr.ph37

.lr.ph37:                                         ; preds = %bb.j, %bb.i
  %.sroa.0.1.i.i.i.i.i.i.i36 = phi i64 [ %i.x, %bb.i ], [ %i.w, %bb.j ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.sroa.0.1.i.i.i.i.i.i.i36
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro29TokenTreeECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ab) #19
          to label %bb.i unwind label %bb.k

bb.k:                                             ; preds = %.lr.ph37
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit, %bb.h, %bb.g, %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit.thread, %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendAB1T_j1_ECs5JB0sjZZtVB_12tokio_macros.exit
  ret void

bb.l:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  call void @llvm.experimental.noalias.scope.decl(metadata !1328)
  call void @llvm.experimental.noalias.scope.decl(metadata !1329)
  call void @llvm.experimental.noalias.scope.decl(metadata !1330)
  %i.ad = load i64, ptr %i.n, align 8, !alias.scope !1331, !noundef !12 ; 3 uses
  %i.ae = load i64, ptr %0, align 8, !range !25, !alias.scope !1331, !noundef !12
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.m, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE8grow_oneCsaoeXog3N7id_5quote(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.n, !noalias !1332

bb.n:                                             ; preds = %bb.m
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load i8, ptr %i.ah, align 4, !range !26, !alias.scope !1333, !noundef !12
  %i.aj = icmp samesign ult i8 %i.ai, 4
  br i1 %i.aj, label %bb.o, label %.body

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !alias.scope !1334, !noundef !12
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXs0_NtNtCsa5ERaWwhjCQ_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.ak)
          to label %.body unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.l, %bb.m
  %i.ao = load ptr, ptr %i.o, align 8, !alias.scope !1331, !nonnull !12, !noundef !12
  %i.ap = getelementptr inbounds nuw [20 x i8], ptr %i.ao, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ap, ptr noundef nonnull align 4 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.aq = add i64 %i.ad, 1
  store i64 %i.aq, ptr %i.n, align 8, !alias.scope !1331
  %i.ar = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !1324, !noundef !12 ; 2 uses
  %i.as = load i64, ptr %i.f, align 8, !alias.scope !1324, !noundef !12
  %.not.i.i = icmp eq i64 %i.ar, %i.as
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtB4_5array4iter8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_EECs5JB0sjZZtVB_12tokio_macros.exit, label %_RNvXs3_NtNtCs3oUPovFnLWP_4core5array4iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeKj1_ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextCs5JB0sjZZtVB_12tokio_macros.exit

bb.r:                                             ; preds = %.body
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs7_NtCsfr4kGEjnBfC_11proc_macro23impNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [20 x i8], align 4                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 3 uses
  %i.j = alloca [40 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 2 uses
  %i.l = load i64, ptr %0, align 8, !range !17, !noundef !12
  %i.m = icmp eq i64 %i.l, -1
  br i1 %i.m, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = invoke fastcc noundef nonnull align 8 ptr @_RNvMNtCsfr4kGEjnBfC_11proc_macro25rcvecINtB2_5RcVecNtB4_9TokenTreeE8make_mutCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.c unwind label %bb.m, !noalias !1367

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs0_NtCsfr4kGEjnBfC_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !noalias !1367
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  call void @llvm.experimental.noalias.scope.decl(metadata !1369)
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1370
  invoke void @_RNvXNtCsfr4kGEjnBfC_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
          to label %bb.f unwind label %bb.e, !noalias !1371

bb.e:                                             ; preds = %bb.g, %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #19
          to label %common.resume unwind label %bb.l, !noalias !1371

bb.f:                                             ; preds = %bb.d
  %i.q = load i32, ptr %i.b, align 8, !range !1372, !noalias !1370, !noundef !12
  %.not.i.i.i = icmp eq i32 %i.q, -1
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1373
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !1370
  invoke void @_RNvNtCsfr4kGEjnBfC_11proc_macro28fallback26push_token_from_proc_macro(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.e, !noalias !1371

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1370
  %i.r = load i64, ptr %i.d, align 8, !range !22, !alias.scope !1374, !noalias !1375, !noundef !12
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.s, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsa5ERaWwhjCQ_10proc_macro6bridge9TokenTreeNtNtBZ_6client11TokenStreamNtB1K_4SpanNtNtBZ_6symbol6SymbolEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !1367
  br label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.j:                                             ; preds = %bb.h
  call void @_RNvXse_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtCsfr4kGEjnBfC_11proc_macro29TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t), !noalias !1367
  br label %_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1373
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1370
  br label %bb.d

bb.l:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1371
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i, %bb.m ], [ %i.p, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.m:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.e) #19
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvXsa_NtCsfr4kGEjnBfC_11proc_macro28fallbackNtB6_11TokenStreamINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendNtB8_9TokenTreeE6extendNtB8_11TokenStreamECs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfr4kGEjnBfC_11proc_macro212token_stream8IntoIterECs5JB0sjZZtVB_12tokio_macros.exit

bb.o:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_RNvXs0_NtCsfr4kGEjnBfC_11proc_macro212token_streamNtB7_11TokenStreamNtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12IntoIterator9into_iter(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.p

bb.p:                                             ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeE4pushCs5JB0sjZZtVB_12tokio_macros.exit, %bb.o
  invoke void @_RNvXNtCsfr4kGEjnBfC_11proc_macro212token_streamNtB2_8IntoIterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.r unwind label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
end_hunk_2
begin_hunk_3_@_RNvYNtNtCscBrinq2mG3I_3syn5token2FnNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros:bb.a
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %bb.d unwind label %bb.c, !noalias !1481

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1481
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c

_RNvYNtNtCscBrinq2mG3I_3syn5token2FnNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !1482
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleNtNtB9_5parse6Parser5parseCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [184 x i8], align 8               ; 6 uses
  %i.e = alloca [184 x i8], align 8               ; 9 uses
  %i.f = alloca [32 x i8], align 8                ; 13 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 2 uses
  call void @_RNvXs1_Csfr4kGEjnBfC_11proc_macro2NtB5_11TokenStreamINtNtCs3oUPovFnLWP_4core7convert4FromNtCsa5ERaWwhjCQ_10proc_macro11TokenStreamE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, i32 noundef %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1540
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1539
  %i.i = call { ptr, i64 } @_RNvMNtCscBrinq2mG3I_3syn6bufferNtB2_11TokenBuffer4new2(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !1540 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1540
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 10 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1        ; 12 uses
  store ptr %i.j, ptr %i.g, align 8, !noalias !1540
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !1540
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse22tokens_to_parse_buffer(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g)
          to label %bb.c unwind label %bb.b, !noalias !1540

.body.i:                                          ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.p, %bb.o, %bb.n, %bb.d, %bb.b
  %.pn8.i = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.z, %bb.n ], [ %i.m, %bb.b ], [ %i.z, %bb.p ], [ %i.z, %bb.o ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ac ], [ %i.ba, %bb.ab ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros(ptr %i.j, i64 %i.k) #19
          to label %common.resume.i unwind label %bb.ai, !noalias !1540

bb.b:                                             ; preds = %bb.ag, %bb.s, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB4_3Pat12parse_single(ptr noalias nofree noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.d, ptr noundef nonnull align 8 %i.f)
          to label %_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.e, !noalias !1540

bb.d:                                             ; preds = %bb.g, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.n, %bb.e ], [ %i.r, %bb.g ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.f) #19
          to label %.body.i unwind label %bb.ai, !noalias !1540

bb.e:                                             ; preds = %bb.z, %bb.u, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.c
  %i.o = load i64, ptr %i.d, align 8, !range !1541, !alias.scope !1542, !noalias !1540, !noundef !12 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  br i1 %i.p, label %bb.aj, label %bb.f

bb.f:                                             ; preds = %_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCs5JB0sjZZtVB_12tokio_macros.exit.i
  %.sroa.6.0..sroa_idx28.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.6.0..sroa_idx28.i, i64 152, i1 false), !noalias !1540
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1540
  store i64 %i.o, ptr %i.e, align 8, !noalias !1540
  invoke void @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer16check_unexpected(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %i.f)
          to label %bb.h unwind label %bb.g, !noalias !1540

bb.g:                                             ; preds = %bb.l, %bb.j, %bb.i, %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn3pat3PatECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(184) %i.e) #19
          to label %bb.d unwind label %bb.ai, !noalias !1540

bb.h:                                             ; preds = %bb.f
  %i.s = load i64, ptr %i.c, align 8, !range !17, !alias.scope !1543, !noalias !1540, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i64 %i.s, -1
  br i1 %.not.i.i, label %bb.i, label %bb.z

bb.i:                                             ; preds = %bb.h
  %i.t = invoke { ptr, ptr } @_RNvMs9_NtCscBrinq2mG3I_3syn5parseNtB5_11ParseBuffer6cursor(ptr noundef nonnull align 8 %i.f)
          to label %bb.j unwind label %bb.g, !noalias !1540 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.u = extractvalue { ptr, ptr } %i.t, 0
  %i.v = extractvalue { ptr, ptr } %i.t, 1
  %i.w = invoke { i32, i8 } @_RNvNtCscBrinq2mG3I_3syn5parse33span_of_unexpected_ignoring_nones(ptr noundef %i.u, ptr noundef %i.v)
          to label %bb.k unwind label %bb.g, !noalias !1540 ; 2 uses

bb.k:                                             ; preds = %bb.j
  %i.x = extractvalue { i32, i8 } %i.w, 1         ; 2 uses
  %.not6.not.i = icmp eq i8 %i.x, -1
  br i1 %.not6.not.i, label %.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = extractvalue { i32, i8 } %i.w, 0
  invoke void @_RNvNtCscBrinq2mG3I_3syn5parse20err_unexpected_token(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %i.y, i8 noundef %i.x)
          to label %bb.u unwind label %bb.g, !noalias !1540

.thread.i:                                        ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.e, i64 184, i1 false), !noalias !1544
  br label %bb.m

bb.m:                                             ; preds = %bb.u, %.thread.i
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.q unwind label %bb.n, !noalias !1540

bb.n:                                             ; preds = %bb.m
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  call void @llvm.experimental.noalias.scope.decl(metadata !1547)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1548, !noalias !1540, !noundef !12 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %.body.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ad = load i64, ptr %i.ab, align 8, !noalias !1549, !noundef !12
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ab, align 8, !noalias !1549
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.p, label %.body.i

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa) #22
          to label %.body.i unwind label %bb.t, !noalias !1540

bb.q:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1550)
  call void @llvm.experimental.noalias.scope.decl(metadata !1551)
  call void @llvm.experimental.noalias.scope.decl(metadata !1552)
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1553, !noalias !1540, !noundef !12 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = load i64, ptr %i.ah, align 8, !noalias !1554, !noundef !12
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 8, !noalias !1554
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.s, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ag) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i unwind label %bb.b, !noalias !1540

bb.t:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1540
  unreachable

bb.u:                                             ; preds = %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !1544
  store i64 -1, ptr %0, align 8, !alias.scope !1539
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn3pat3PatECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(184) %i.e)
          to label %bb.m unwind label %bb.e, !noalias !1540

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %cond = icmp eq i64 %i.k, 0
  br i1 %cond, label %_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtNtB7_3pat7parsingNtBA_3Pat12parse_singleNtB5_6Parser6parse2Cs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph

bb.v:                                             ; preds = %.lr.ph
  %i.ao = icmp eq i64 %i.aq, %i.k
  br i1 %i.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i, %bb.v
  %.sroa.0.0.i.i.i.i16 = phi i64 [ %i.aq, %bb.v ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i.i16
  %i.aq = add nuw nsw i64 %.sroa.0.0.i.i.i.i16, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ap)
          to label %bb.v unwind label %bb.x, !noalias !1540

bb.w:                                             ; preds = %.lr.ph18
  %i.ar = add i64 %.sroa.0.1.i.i.i.i17, 1         ; 2 uses
  %i.as = icmp eq i64 %i.ar, %i.k
  br i1 %i.as, label %common.resume.sink.split.i, label %.lr.ph18

bb.x:                                             ; preds = %.lr.ph
  %i.at = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.au = icmp eq i64 %i.aq, %i.k
  br i1 %i.au, label %common.resume.sink.split.i, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.x, %bb.w
  %.sroa.0.1.i.i.i.i17 = phi i64 [ %i.ar, %bb.w ], [ %i.aq, %bb.x ] ; 2 uses
  %i.av = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i.i17
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.av) #19
          to label %bb.w unwind label %bb.y, !noalias !1540

bb.y:                                             ; preds = %.lr.ph18
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1540
  unreachable

common.resume.sink.split.i:                       ; preds = %bb.w, %bb.al, %bb.x, %bb.am
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.bv, %bb.am ], [ %i.at, %bb.x ], [ %i.bv, %bb.al ], [ %i.at, %bb.w ]
  %i.ax = shl nuw nsw i64 %i.k, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.ax, i64 noundef 8) #21, !noalias !1540
  br label %common.resume.i

common.resume.i:                                  ; preds = %common.resume.sink.split.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %.pn8.i, %.body.i ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i: ; preds = %bb.v, %bb.ak
  %i.ay = shl nuw nsw i64 %i.k, 5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %i.ay, i64 noundef 8) #21, !noalias !1540
  br label %_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtNtB7_3pat7parsingNtBA_3Pat12parse_singleNtB5_6Parser6parse2Cs5JB0sjZZtVB_12tokio_macros.exit

bb.z:                                             ; preds = %bb.h
  %.sroa.432.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.437.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.432.0..sroa_idx33.i, i64 16, i1 false), !noalias !1544
  call void @llvm.experimental.noalias.scope.decl(metadata !1555)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.az, align 8, !alias.scope !1556
  store i64 -1, ptr %0, align 8, !alias.scope !1557
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn3pat3PatECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(184) %i.e)
          to label %bb.aa unwind label %bb.e, !noalias !1540

bb.aa:                                            ; preds = %bb.aj, %bb.z
  invoke void @_RNvXNtCscBrinq2mG3I_3syn5parseNtB2_11ParseBufferNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %bb.ae unwind label %bb.ab, !noalias !1540

bb.ab:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1558)
  call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  call void @llvm.experimental.noalias.scope.decl(metadata !1560)
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !1561, !noalias !1540, !noundef !12 ; 3 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.body.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = load i64, ptr %i.bc, align 8, !noalias !1562, !noundef !12
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  store i64 %i.bf, ptr %i.bc, align 8, !noalias !1562
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.ad, label %.body.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bb) #22
          to label %.body.i unwind label %bb.ah, !noalias !1540

bb.ae:                                            ; preds = %bb.aa
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  call void @llvm.experimental.noalias.scope.decl(metadata !1564)
  call void @llvm.experimental.noalias.scope.decl(metadata !1565)
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !1566, !noalias !1540, !noundef !12 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bk = load i64, ptr %i.bi, align 8, !noalias !1567, !noundef !12
  %i.bl = add i64 %i.bk, -1                       ; 2 uses
  store i64 %i.bl, ptr %i.bi, align 8, !noalias !1567
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtCs3oUPovFnLWP_4core4cell4CellNtNtCscBrinq2mG3I_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #22
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i unwind label %bb.b, !noalias !1540

bb.ah:                                            ; preds = %bb.ad
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1540
  unreachable

bb.ai:                                            ; preds = %bb.g, %bb.d, %.body.i
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1540
  unreachable

bb.aj:                                            ; preds = %_RNvYNvMNtNtCscBrinq2mG3I_3syn3pat7parsingNtB7_3Pat12parse_singleINtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRNtNtB9_5parse11ParseBufferEE9call_onceCs5JB0sjZZtVB_12tokio_macros.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !noalias !1544
  store i64 -1, ptr %0, align 8, !alias.scope !1568
  br label %bb.aa

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i: ; preds = %bb.ag, %bb.af, %bb.ae
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %cond23 = icmp eq i64 %i.k, 0
  br i1 %cond23, label %_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtNtB7_3pat7parsingNtBA_3Pat12parse_singleNtB5_6Parser6parse2Cs5JB0sjZZtVB_12tokio_macros.exit, label %.lr.ph20

bb.ak:                                            ; preds = %.lr.ph20
  %i.bq = icmp eq i64 %i.bs, %i.k
  br i1 %i.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i, label %.lr.ph20

.lr.ph20:                                         ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i, %bb.ak
  %.sroa.0.0.i.i.i20.i19 = phi i64 [ %i.bs, %bb.ak ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.0.i.i.i20.i19
  %i.bs = add nuw nsw i64 %.sroa.0.0.i.i.i20.i19, 1 ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.br)
          to label %bb.ak unwind label %bb.am, !noalias !1540

bb.al:                                            ; preds = %.lr.ph22
  %i.bt = add i64 %.sroa.0.1.i.i.i21.i21, 1       ; 2 uses
  %i.bu = icmp eq i64 %i.bt, %i.k
  br i1 %i.bu, label %common.resume.sink.split.i, label %.lr.ph22

bb.am:                                            ; preds = %.lr.ph20
  %i.bv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bw = icmp eq i64 %i.bs, %i.k
  br i1 %i.bw, label %common.resume.sink.split.i, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.am, %bb.al
  %.sroa.0.1.i.i.i21.i21 = phi i64 [ %i.bt, %bb.al ], [ %i.bs, %bb.am ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %.sroa.0.1.i.i.i21.i21
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer5EntryECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bx) #19
          to label %bb.al unwind label %bb.an, !noalias !1540

bb.an:                                            ; preds = %.lr.ph22
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1540
  unreachable

_RNvXsh_NtCscBrinq2mG3I_3syn5parseNvMNtNtB7_3pat7parsingNtBA_3Pat12parse_singleNtB5_6Parser6parse2Cs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit19.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn5parse11ParseBufferECs5JB0sjZZtVB_12tokio_macros.exit.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCscBrinq2mG3I_3syn6buffer11TokenBufferECs5JB0sjZZtVB_12tokio_macros.exit.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !1571
  invoke void @_RNvXsq_NtCsaoeXog3N7id_5quote9to_tokensNtCsfr4kGEjnBfC_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b, !noalias !1571

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %bb.d unwind label %bb.c, !noalias !1571

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1571
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtCsfr4kGEjnBfC_11proc_macro25IdentNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !1574
  invoke void @_RNvXs1_NtNtCscBrinq2mG3I_3syn4attr8printingNtB7_13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b, !noalias !1574

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %bb.d unwind label %bb.c, !noalias !1574

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1574
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCscBrinq2mG3I_3syn4attr13MetaNameValueNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !1577
  invoke void @_RNvXNtNtCscBrinq2mG3I_3syn4attr8printingNtB4_9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b, !noalias !1577

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %bb.d unwind label %bb.c, !noalias !1577

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1577
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCscBrinq2mG3I_3syn4attr9AttributeNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens17into_token_streamCs5JB0sjZZtVB_12tokio_macros(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a), !noalias !1580
  invoke void @_RNvXs0_NtNtCscBrinq2mG3I_3syn4path8printingNtB7_4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit unwind label %bb.b, !noalias !1580

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsfr4kGEjnBfC_11proc_macro211TokenStreamECs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #19
          to label %bb.d unwind label %bb.c, !noalias !1580

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20, !noalias !1580
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RNvYRNtNtCscBrinq2mG3I_3syn4path4PathNtNtCsaoeXog3N7id_5quote9to_tokens8ToTokens15to_token_streamCs5JB0sjZZtVB_12tokio_macros.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nonlazybind uwtable
declare void @_RNvMCsfr4kGEjnBfC_11proc_macro2NtB2_11TokenStream3new(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMNtCsfr4kGEjnBfC_11proc_macro25extraNtB2_9DelimSpan4join(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCscBrinq2mG3I_3syn5token8printing5delim(i8 noundef range(i8 0, 4), i32 noundef, ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtCsa5ERaWwhjCQ_10proc_macro9TokenTreeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4attr9AttributeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4expr3ArmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCscBrinq2mG3I_3syn4stmt4StmtENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTNtNtCscBrinq2mG3I_3syn2ty9BareFnArgNtNtBK_5token5CommaEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs5JB0sjZZtVB_12tokio_macros(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_3
