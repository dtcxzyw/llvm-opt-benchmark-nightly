inline.NumInlined: 757
inline.NumDeleted: 277
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8lifetime8LifetimeNtNtBL_5token4PlusEECshbKHpCRGxgC_16deltalake_derive:bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #16, !noalias !433
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeEECshbKHpCRGxgC_16deltalake_derive.exit.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 32, i64 noundef 8) #16
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeEEECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeEEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeNtNtB1i_5token4PlusEEECshbKHpCRGxgC_16deltalake_derive.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeEECshbKHpCRGxgC_16deltalake_derive.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !36, !alias.scope !434, !noundef !4
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !434, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !434, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #16, !noalias !434
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn11restriction10VisibilityECshbKHpCRGxgC_16deltalake_derive(i32 %.0.val, ptr %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp ne i32 %.0.val, 3
  tail call void @llvm.assume(i1 %i.a)
  %i.b = icmp samesign ult i32 %.0.val, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(48) %.8.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn11restriction13VisRestrictedECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 48, i64 noundef 8) #16
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn11restriction13VisRestrictedECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 48, i64 noundef 8) #16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn11restriction13VisRestrictedECshbKHpCRGxgC_16deltalake_derive.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4   ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d, !noalias !437, !inline_history !8

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #16, !noalias !437, !inline_history !8
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #16, !noalias !437, !inline_history !8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !440, !noundef !4 ; 4 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.s
    i64 3, label %bb.u
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit
    i64 5, label %bb.v
    i64 6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit
    i64 7, label %bb.ad
    i64 8, label %bb.af
    i64 9, label %bb.ai
    i64 10, label %bb.ak
    i64 11, label %bb.ap
    i64 12, label %bb.ar
    i64 13, label %bb.as
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !441, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty9TypeArrayECshbKHpCRGxgC_16deltalake_derive.exit unwind label %.body, !noalias !441, !inline_history !444

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #16, !noalias !441, !inline_history !444
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4expr4ExprECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g) #18
          to label %common.resume unwind label %bb.d, !inline_history !445

bb.d:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !inline_history !445
  unreachable

common.resume.sink.split:                         ; preds = %bb.r, %bb.t, %bb.ae, %bb.aj, %bb.ao, %bb.aq
  %.sink = phi ptr [ %i.bs, %bb.aq ], [ %i.bp, %bb.ao ], [ %i.bf, %bb.aj ], [ %i.au, %bb.ae ], [ %i.af, %bb.t ], [ %i.ab, %bb.r ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.bt, %bb.aq ], [ %i.bq, %bb.ao ], [ %i.bg, %bb.aj ], [ %i.av, %bb.ae ], [ %i.ag, %bb.t ], [ %i.ad, %bb.r ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 224, i64 noundef 8) #16, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body27, %.body.i, %bb.n, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %bb.n ], [ %i.j, %.body ], [ %i.bc, %.body27 ], [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty9TypeArrayECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #16, !noalias !441, !inline_history !444
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4expr4ExprECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g), !inline_history !445
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !111, !alias.scope !446, !noundef !4
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics12GenericParamNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge unwind label %bb.g, !inline_history !449

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge: ; preds = %bb.f
  %.val.i.pre = load i64, ptr %0, align 8, !range !450, !alias.scope !451
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %0, align 8, !range !450, !alias.scope !451, !noundef !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !451 ; 2 uses
  %1 = trunc nuw i64 %.val7.i to i1
  %2 = icmp ne ptr %.val8.i, null
  %or.cond.i2 = select i1 %1, i1 %2, i1 false
  br i1 %or.cond.i2, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3lit7LitReprEECshbKHpCRGxgC_16deltalake_derive(ptr nonnull %.val8.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4 unwind label %bb.p

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge, %bb.e
  %.val.i = phi i64 [ %.val.i.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge ], [ %i.a, %bb.e ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.q, align 8, !alias.scope !451 ; 2 uses
  %3 = trunc nuw i64 %.val.i to i1
  %4 = icmp ne ptr %.val6.i, null
  %or.cond.i = select i1 %3, i1 %4, i1 false
  br i1 %or.cond.i, label %bb.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3lit7LitReprEECshbKHpCRGxgC_16deltalake_derive(ptr nonnull %.val6.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4: ; preds = %bb.g, %bb.h, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_2ty9BareFnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.r) #18
          to label %bb.k unwind label %bb.p, !inline_history !454

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_2ty9BareFnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.t)
          to label %bb.m unwind label %bb.l, !inline_history !454

bb.k:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4
  %.pn2.i = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(80) %i.u) #18
          to label %bb.n unwind label %bb.p, !inline_history !454

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(80) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.o, !inline_history !454

bb.n:                                             ; preds = %bb.o, %bb.k
  %.pn4.i = phi { ptr, i32 } [ %i.y, %bb.o ], [ %.pn2.i, %bb.k ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16) %i.x) #18
          to label %common.resume unwind label %bb.p, !inline_history !454

bb.o:                                             ; preds = %bb.m
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.h, %bb.n, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit4
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !inline_history !454
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !455, !noundef !4 ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.r, !noalias !458, !inline_history !461

bb.r:                                             ; preds = %bb.q
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.q
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 224, i64 noundef 8) #16, !noalias !458, !inline_history !461
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.s:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !462, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit8 unwind label %bb.t, !noalias !462, !inline_history !465

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit8: ; preds = %bb.s
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef 224, i64 noundef 8) #16, !noalias !462, !inline_history !465
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.u:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics14TypeParamBoundNtNtBL_5token4PlusEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ah), !inline_history !466
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit, %bb.as, %bb.ar, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty8TypePathECshbKHpCRGxgC_16deltalake_derive.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3mac5MacroECshbKHpCRGxgC_16deltalake_derive.exit, %bb.u, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty9TypeArrayECshbKHpCRGxgC_16deltalake_derive.exit, %bb.b, %bb.a, %bb.a
  ret void

bb.v:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %.body23 unwind label %bb.y

bb.x:                                             ; preds = %bb.v
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBR_5token7PathSepEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4path11PathSegmentNtNtBL_5token7PathSepEECshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body23

.body23:                                          ; preds = %bb.w, %bb.z
  %eh.lpad-body24 = phi { ptr, i32 } [ %i.al, %bb.z ], [ %i.aj, %bb.w ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentEEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(8) %i.am) #18
          to label %.body.i unwind label %bb.aa, !inline_history !467

bb.aa:                                            ; preds = %.body23
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !inline_history !467
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4path11PathSegmentNtNtBL_5token7PathSepEECshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentEEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(8) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3mac5MacroECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.ab, !inline_history !468

bb.ab:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4path11PathSegmentNtNtBL_5token7PathSepEECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.body23, %bb.ab
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ap, %bb.ab ], [ %eh.lpad-body24, %.body23 ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aq)
          to label %common.resume unwind label %bb.ac, !inline_history !469

bb.ac:                                            ; preds = %.body.i
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #17, !inline_history !469
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3mac5MacroECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4path11PathSegmentNtNtBL_5token7PathSepEECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp11TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as), !inline_history !469
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.ad:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !470, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit11 unwind label %bb.ae, !noalias !470, !inline_history !473

bb.ae:                                            ; preds = %bb.ad
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit11: ; preds = %bb.ad
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef 224, i64 noundef 8) #16, !noalias !470, !inline_history !473
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.af:                                            ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i32, ptr %i.ax, align 8, !range !474, !alias.scope !475, !noundef !4
  %i.az = icmp eq i32 %i.ay, 2
  br i1 %i.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty8TypePathECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !478)
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !478, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.bb)
          to label %.noexc12 unwind label %.body27, !noalias !478, !inline_history !481

.body27:                                          ; preds = %bb.ag
  %i.bc = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bb, i64 noundef 224, i64 noundef 8) #16, !noalias !478, !inline_history !481
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aw) #18
          to label %common.resume unwind label %bb.ah, !inline_history !482

end_hunk_0
begin_hunk_1_@_RNvXst_NtNtCsbvkFyIu7lgC_4core3str7patternReNtB5_7Pattern15is_contained_in:bb.a
  %i.er = load i64, ptr %i.eq, align 8, !alias.scope !1359, !noalias !1362, !noundef !4 ; 14 uses
  %.promoted26.i = load i8, ptr %i.en, align 8, !alias.scope !1359, !noalias !1362 ; 2 uses
  %i.es = trunc nuw i8 %.promoted26.i to i1
  %i.et = icmp eq i64 %.promoted.i, 0
  br i1 %i.et, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.lr.ph.i5
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %i.er
  br i1 %.not.i.i.i.peel, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eu = icmp eq i64 %.promoted.i, %i.er
  br i1 %i.eu, label %bb.z, label %.loopexit

bb.y:                                             ; preds = %bb.w
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.promoted.i
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !1364, !noalias !1367, !noundef !4
  %i.ex = icmp sgt i8 %i.ew, -65
  br i1 %i.ex, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y, %bb.x, %.lr.ph.i5
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.promoted.i ; 4 uses
  %i.ez = icmp samesign eq i64 %.promoted.i, %i.er
  br i1 %i.ez, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fa = load i8, ptr %i.ey, align 1, !noalias !1369, !noundef !4 ; 5 uses
  %i.fb = icmp sgt i8 %i.fa, -1
  br i1 %i.fb, label %bb.ab, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel: ; preds = %bb.aa
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 1
  %i.fd = and i8 %i.fa, 31
  %i.fe = zext nneg i8 %i.fd to i32               ; 3 uses
  %i.ff = add nuw nsw i64 %.promoted.i, 1
  %i.fg = icmp samesign ne i64 %i.ff, %i.er
  tail call void @llvm.assume(i1 %i.fg)
  %i.fh = load i8, ptr %i.fc, align 1, !noalias !1369, !noundef !4
  %i.fi = shl nuw nsw i32 %i.fe, 6
  %i.fj = and i8 %i.fh, 63
  %i.fk = zext nneg i8 %i.fj to i32               ; 2 uses
  %i.fl = or disjoint i32 %i.fi, %i.fk
  %i.fm = icmp samesign ugt i8 %i.fa, -33
  br i1 %i.fm, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, label %bb.ac

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 2
  %i.fo = add nuw nsw i64 %.promoted.i, 2
  %i.fp = icmp samesign ne i64 %i.fo, %i.er
  tail call void @llvm.assume(i1 %i.fp)
  %i.fq = load i8, ptr %i.fn, align 1, !noalias !1369, !noundef !4
  %i.fr = shl nuw nsw i32 %i.fk, 6
  %i.fs = and i8 %i.fq, 63
  %i.ft = zext nneg i8 %i.fs to i32
  %i.fu = or disjoint i32 %i.fr, %i.ft            ; 2 uses
  %i.fv = shl nuw nsw i32 %i.fe, 12
  %i.fw = or disjoint i32 %i.fu, %i.fv
  %i.fx = icmp samesign ugt i8 %i.fa, -17
  br i1 %i.fx, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, label %bb.ac

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ey, i64 3
  %i.fz = add nuw nsw i64 %.promoted.i, 3
  %i.ga = icmp samesign ne i64 %i.fz, %i.er
  tail call void @llvm.assume(i1 %i.ga)
  %i.gb = load i8, ptr %i.fy, align 1, !noalias !1369, !noundef !4
  %i.gc = shl nuw nsw i32 %i.fe, 18
  %i.gd = and i32 %i.gc, 1835008
  %i.ge = shl nuw nsw i32 %i.fu, 6
  %i.gf = and i8 %i.gb, 63
  %i.gg = zext nneg i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.ge, %i.gg
  %i.gi = or disjoint i32 %i.gh, %i.gd
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gj = zext nneg i8 %i.fa to i32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.fw, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i.peel ], [ %i.gi, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i.peel ], [ %i.fl, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i.peel ], [ %i.gj, %bb.ab ] ; 4 uses
  %i.gk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.gk)
  br i1 %i.es, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gl = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.gl, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gm = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.gm, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gn = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.gn, i64 3, i64 4
  br label %bb.ah

bb.ag:                                            ; preds = %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 2 uses
  %i.gq = icmp eq i64 %i.gp, -1
  %i.gr = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.gs = load ptr, ptr %i.gr, align 8, !alias.scope !1353, !noalias !1356, !nonnull !4, !noundef !4 ; 6 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.gu = load i64, ptr %i.gt, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 14 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.gw = load ptr, ptr %i.gv, align 8, !alias.scope !1353, !noalias !1356, !nonnull !4, !noundef !4 ; 4 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.gy = load i64, ptr %i.gx, align 8, !alias.scope !1353, !noalias !1356, !noundef !4 ; 12 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ha = add nsw i64 %i.gy, -1                   ; 4 uses
  br i1 %i.gq, label %bb.an, label %bb.az

bb.ah:                                            ; preds = %bb.ad, %bb.ae, %bb.af
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.ae ], [ %..i.i.peel, %bb.af ], [ 1, %bb.ad ]
  %i.hb = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1372)
  %i.hc = icmp eq i64 %i.hb, 0
  br i1 %i.hc, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not.i.i.i = icmp ult i64 %i.hb, %i.er
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hd = icmp eq i64 %i.hb, %i.er
  br i1 %i.hd, label %bb.al, label %.loopexit

bb.ak:                                            ; preds = %bb.ai
  %i.he = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hb
  %i.hf = load i8, ptr %i.he, align 1, !alias.scope !1364, !noalias !1373, !noundef !4
  %i.hg = icmp sgt i8 %i.hf, -65
  br i1 %i.hg, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %bb.ak, %bb.aj, %bb.ah
  %i.hh = icmp samesign eq i64 %i.hb, %i.er
  br i1 %i.hh, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.hb
  %i.hj = load i8, ptr %i.hi, align 1, !noalias !1374, !noundef !4 ; 3 uses
  %i.hk = icmp sgt i8 %i.hj, -1
  br i1 %i.hk, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i: ; preds = %bb.am
  %i.hl = add nuw nsw i64 %i.hb, 1
  %i.hm = icmp samesign ne i64 %i.hl, %i.er
  tail call void @llvm.assume(i1 %i.hm)
  %i.hn = icmp samesign ugt i8 %i.hj, -33
  br i1 %i.hn, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i
  %i.ho = add nuw nsw i64 %i.hb, 2
  %i.hp = icmp samesign ne i64 %i.ho, %i.er
  tail call void @llvm.assume(i1 %i.hp)
  %i.hq = icmp samesign ugt i8 %i.hj, -17
  br i1 %i.hq, label %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i
  %i.hr = add nuw nsw i64 %i.hb, 3
  %i.hs = icmp samesign ne i64 %i.hr, %i.er
  tail call void @llvm.assume(i1 %i.hs)
  br label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.loopexit:                                        ; preds = %bb.ak, %bb.aj, %bb.y, %bb.x
  %.lcssa144 = phi i64 [ %.promoted.i, %bb.x ], [ %.promoted.i, %bb.y ], [ %i.hb, %bb.aj ], [ %i.hb, %bb.ak ]
  tail call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef %i.er, i64 noundef %.lcssa144, i64 noundef %i.er, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #20, !noalias !1373
  unreachable

bb.an:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1380)
  %.promoted.i11 = load i64, ptr %i.gz, align 8, !alias.scope !1375, !noalias !1382 ; 2 uses
  %i.ht = add i64 %.promoted.i11, %i.ha           ; 2 uses
  %i.hu = icmp ult i64 %i.ht, %i.gu
  br i1 %i.hu, label %.lr.ph.i14, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i14:                                       ; preds = %bb.an
  %i.hv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !1375, !noalias !1382, !noundef !4
  %i.hx = load i64, ptr %i.ej, align 8, !alias.scope !1375, !noalias !1382 ; 8 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !1375, !noalias !1382
  %umax49.i17 = tail call i64 @llvm.umax.i64(i64 %i.hx, i64 range(i64 0, -9223372036854775808) %i.gy)
  %i.ia = add i64 %i.hx, -1
  %.first_iter = icmp ult i64 %i.ia, %i.gy
  %exitcond.not.i19269.not = icmp ult i64 %i.hx, %i.gy
  %invariant.op354 = sub i64 1, %i.hx
  %.not272 = icmp eq i64 %i.hx, 0
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aq, %.lr.ph.i14
  %i.ib = phi i64 [ %.promoted.i11, %.lr.ph.i14 ], [ %i.ii, %bb.aq ] ; 6 uses
  %i.ic = phi i64 [ %i.ht, %.lr.ph.i14 ], [ %i.ij, %bb.aq ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ic
  %i.ie = load i8, ptr %i.id, align 1, !alias.scope !1378, !noalias !1384, !noundef !4
  %i.if = and i8 %i.ie, 63
  %i.ig = zext nneg i8 %i.if to i64
  %4 = lshr i64 %i.hw, %i.ig
  %5 = trunc nuw i64 %4 to i1
  br i1 %5, label %.preheader90.preheader, label %bb.ap

.preheader90.preheader:                           ; preds = %bb.ao
  br i1 %exitcond.not.i19269.not, label %.lr.ph271, label %.preheader.preheader

bb.ap:                                            ; preds = %bb.ao
  %i.ih = add i64 %i.ib, %i.gy
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ay, %bb.av, %bb.ap
  %i.ii = phi i64 [ %i.jb, %bb.ay ], [ %i.ih, %bb.ap ], [ %i.iv, %bb.av ] ; 2 uses
  %i.ij = add i64 %i.ii, %i.ha                    ; 2 uses
  %i.ik = icmp ult i64 %i.ij, %i.gu
  br i1 %i.ik, label %bb.ao, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.preheader90:                                     ; preds = %bb.aw
  %i.il = add i64 %.sroa.02.0.i18270, 1           ; 2 uses
  %exitcond.not.i19 = icmp eq i64 %i.il, %umax49.i17
  br i1 %exitcond.not.i19, label %.preheader.preheader, label %.lr.ph271

.preheader.preheader:                             ; preds = %.preheader90, %.preheader90.preheader
  br i1 %.not272, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph274

.lr.ph271:                                        ; preds = %.preheader90.preheader, %.preheader90
  %.sroa.02.0.i18270 = phi i64 [ %i.il, %.preheader90 ], [ %i.hx, %.preheader90.preheader ] ; 4 uses
  %i.im = add i64 %.sroa.02.0.i18270, %i.ib       ; 2 uses
  %i.in = icmp ult i64 %i.im, %i.gu
  br i1 %i.in, label %bb.aw, label %bb.ax

.preheader:                                       ; preds = %bb.at
  %.not = icmp eq i64 %i.io, 0
  br i1 %.not, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit, label %.lr.ph274

.lr.ph274:                                        ; preds = %.preheader.preheader, %.preheader
  %.sroa.2.0.i22273 = phi i64 [ %i.io, %.preheader ], [ %i.hx, %.preheader.preheader ]
  %i.io = add i64 %.sroa.2.0.i22273, -1           ; 5 uses
  br i1 %.first_iter, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.lr.ph274
  %i.ip = add i64 %i.io, %i.ib                    ; 3 uses
  %i.iq = icmp ult i64 %i.ip, %i.gu
  br i1 %i.iq, label %bb.at, label %bb.au

bb.as:                                            ; preds = %.lr.ph274
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.io, i64 noundef range(i64 0, -9223372036854775808) %i.gy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !1385
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.io
  %i.is = load i8, ptr %i.ir, align 1, !alias.scope !1380, !noalias !1386, !noundef !4
  %i.it = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ip
  %i.iu = load i8, ptr %i.it, align 1, !alias.scope !1378, !noalias !1384, !noundef !4
  %.not.i23 = icmp eq i8 %i.is, %i.iu
  br i1 %.not.i23, label %.preheader, label %bb.av

bb.au:                                            ; preds = %bb.ar
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.ip, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !1385
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.iv = add i64 %i.ib, %i.hz
  br label %bb.aq

bb.aw:                                            ; preds = %.lr.ph271
  %i.iw = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.02.0.i18270
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !1380, !noalias !1386, !noundef !4
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.im
  %i.iz = load i8, ptr %i.iy, align 1, !alias.scope !1378, !noalias !1384, !noundef !4
  %.not21.i21 = icmp eq i8 %i.ix, %i.iz
  br i1 %.not21.i21, label %.preheader90, label %bb.ay

bb.ax:                                            ; preds = %.lr.ph271
  %i.ja = add i64 %i.ib, %i.hx
  %umax.i20 = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.gu, i64 %i.ja)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i20, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !1385
  unreachable

bb.ay:                                            ; preds = %bb.aw
  %.reass228.reass = add i64 %i.ib, %invariant.op354
  %i.jb = add i64 %.reass228.reass, %.sroa.02.0.i18270
  br label %bb.aq

bb.az:                                            ; preds = %bb.ag
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1392)
  %.promoted.i6 = load i64, ptr %i.gz, align 8, !alias.scope !1387, !noalias !1394 ; 2 uses
  %i.jc = add i64 %.promoted.i6, %i.ha            ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %i.gu
  br i1 %i.jd, label %.lr.ph.i9, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph.i9:                                        ; preds = %bb.az
  %i.je = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.jf = load i64, ptr %i.je, align 8, !alias.scope !1387, !noalias !1394, !noundef !4
  %i.jg = load i64, ptr %i.ej, align 8, !alias.scope !1387, !noalias !1394 ; 4 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ji = load i64, ptr %i.jh, align 8, !alias.scope !1387, !noalias !1394 ; 2 uses
  %i.jj = sub i64 %i.gy, %i.ji
  %invariant.op = sub i64 1, %i.jg
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split.i, %.lr.ph.i9
  %i.jk = phi i64 [ %.promoted.i6, %.lr.ph.i9 ], [ %.ph71.i, %.sink.split.i ] ; 6 uses
  %i.jl = phi i64 [ %i.gp, %.lr.ph.i9 ], [ %.sink.i, %.sink.split.i ] ; 3 uses
  %i.jm = phi i64 [ %i.jc, %.lr.ph.i9 ], [ %i.js, %.sink.split.i ]
  %i.jn = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !alias.scope !1390, !noalias !1396, !noundef !4
  %i.jp = and i8 %i.jo, 63
  %i.jq = zext nneg i8 %i.jp to i64
  %6 = lshr i64 %i.jf, %i.jq
  %7 = trunc nuw i64 %6 to i1
  br i1 %7, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jr = add i64 %i.jk, %i.gy
  br label %.sink.split.i

bb.bc:                                            ; preds = %bb.ba
  %.sroa.0.0.i.i = tail call i64 @llvm.umax.i64(i64 %i.jl, i64 %i.jg) ; 4 uses
  %umax49.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -9223372036854775808) %i.gy)
  %exitcond.not.i264.not = icmp ult i64 %.sroa.0.0.i.i, %i.gy
  br i1 %exitcond.not.i264.not, label %.lr.ph266, label %.preheader29.preheader

.sink.split.i:                                    ; preds = %bb.bl, %bb.bi, %bb.bb
  %.sink.i = phi i64 [ %i.jj, %bb.bi ], [ 0, %bb.bl ], [ 0, %bb.bb ]
  %.ph71.i = phi i64 [ %i.kh, %bb.bi ], [ %i.kn, %bb.bl ], [ %i.jr, %bb.bb ] ; 2 uses
  %i.js = add i64 %.ph71.i, %i.ha                 ; 2 uses
  %i.jt = icmp ult i64 %i.js, %i.gu
  br i1 %i.jt, label %bb.ba, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.bd:                                            ; preds = %bb.bj
  %i.ju = add i64 %.sroa.02.0.i265, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ju, %umax49.i
  br i1 %exitcond.not.i, label %.preheader29.preheader, label %.lr.ph266

.preheader29.preheader:                           ; preds = %bb.bd, %bb.bc
  %i.jv = icmp ult i64 %i.jl, %i.jg
  br i1 %i.jv, label %.lr.ph268, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph266:                                        ; preds = %bb.bc, %bb.bd
  %.sroa.02.0.i265 = phi i64 [ %i.ju, %bb.bd ], [ %.sroa.0.0.i.i, %bb.bc ] ; 4 uses
  %i.jw = add i64 %.sroa.02.0.i265, %i.jk         ; 2 uses
  %i.jx = icmp ult i64 %i.jw, %i.gu
  br i1 %i.jx, label %bb.bj, label %bb.bk

.preheader29:                                     ; preds = %bb.bg
  %i.jy = icmp ult i64 %i.jl, %i.jz
  br i1 %i.jy, label %.lr.ph268, label %_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

.lr.ph268:                                        ; preds = %.preheader29.preheader, %.preheader29
  %.sroa.2.0.i267 = phi i64 [ %i.jz, %.preheader29 ], [ %i.jg, %.preheader29.preheader ]
  %i.jz = add i64 %.sroa.2.0.i267, -1             ; 6 uses
  %i.ka = icmp ult i64 %i.jz, %i.gy
  br i1 %i.ka, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph268
  %i.kb = add i64 %i.jz, %i.jk                    ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %i.gu
  br i1 %i.kc, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %.lr.ph268
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.jz, i64 noundef range(i64 0, -9223372036854775808) %i.gy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #20, !noalias !1397
  unreachable

bb.bg:                                            ; preds = %bb.be
  %i.kd = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.jz
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !1392, !noalias !1398, !noundef !4
  %i.kf = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.kb
  %i.kg = load i8, ptr %i.kf, align 1, !alias.scope !1390, !noalias !1396, !noundef !4
  %.not.i10 = icmp eq i8 %i.ke, %i.kg
  br i1 %.not.i10, label %.preheader29, label %bb.bi

bb.bh:                                            ; preds = %bb.be
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.kb, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !noalias !1397
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.kh = add i64 %i.jk, %i.ji
  br label %.sink.split.i

bb.bj:                                            ; preds = %.lr.ph266
  %i.ki = getelementptr inbounds nuw i8, ptr %i.gw, i64 %.sroa.02.0.i265
  %i.kj = load i8, ptr %i.ki, align 1, !alias.scope !1392, !noalias !1398, !noundef !4
  %i.kk = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.jw
  %i.kl = load i8, ptr %i.kk, align 1, !alias.scope !1390, !noalias !1396, !noundef !4
  %.not21.i = icmp eq i8 %i.kj, %i.kl
  br i1 %.not21.i, label %bb.bd, label %bb.bl

bb.bk:                                            ; preds = %.lr.ph266
  %i.km = add i64 %i.jk, %.sroa.0.0.i.i
  %umax.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.gu, i64 %i.km)
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %umax.i, i64 noundef range(i64 0, -9223372036854775808) %i.gu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #20, !noalias !1397
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %.reass.reass = add i64 %i.jk, %invariant.op
  %i.kn = add i64 %.reass.reass, %.sroa.02.0.i265
  br label %.sink.split.i

_RNvXsv_NtNtCsbvkFyIu7lgC_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %.sink.split.i, %.preheader29.preheader, %.preheader29, %bb.aq, %.preheader.preheader, %.preheader, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i, %bb.am, %bb.z, %bb.az, %bb.an, %bb.ac, %bb.al, %.preheader.i4
  %.sroa.0.025 = phi i8 [ 1, %.preheader ], [ 0, %bb.an ], [ 0, %.preheader.i4 ], [ 1, %bb.al ], [ 1, %.preheader.preheader ], [ 1, %bb.ac ], [ 1, %.preheader29 ], [ 0, %bb.az ], [ %.promoted26.i, %bb.z ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit16.i.i.i ], [ 1, %bb.am ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit12.i.i.i ], [ 1, %_RNvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit14.i.i.i ], [ 0, %bb.aq ], [ 0, %.sink.split.i ], [ 1, %.preheader29.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread

bb.bm:                                            ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %2, i64 %1)
  %i.ko = icmp eq i32 %bcmp, 0
  %i.kp = zext i1 %i.ko to i8
  br label %_RNvNtNtCsbvkFyIu7lgC_4core3str7pattern13simd_contains.exit.thread
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4expr3ArmENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4stmt4StmtENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn5error12ErrorMessageENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn2ty4TypeNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn2ty9BareFnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn3pat3PatNtNtBK_5token2OrEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn3pat3PatNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn3pat8FieldPatNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4data5FieldNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4data7VariantNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4expr10FieldValueNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4expr4ExprNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBK_5token7PathSepEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4path15GenericArgumentNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics12GenericParamNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics13CapturedParamNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics14TypeParamBoundNtNtBK_5token4PlusEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8generics14WherePredicateNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn8lifetime8LifetimeNtNtBK_5token4PlusEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsbjGuDcEILED_11proc_macro211TokenStreamENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtCsjJ0p09o2jmV_10proc_macro9TokenTreeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0
end_hunk_1
