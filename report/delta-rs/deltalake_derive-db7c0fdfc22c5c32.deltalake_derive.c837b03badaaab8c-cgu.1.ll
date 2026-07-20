inline.NumInlined: 1622
inline.NumDeleted: 397
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive:bb.a
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !783, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !783, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #15, !noalias !783
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsbjGuDcEILED_11proc_macro23imp5IdentECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn11restriction13VisRestrictedECshbKHpCRGxgC_16deltalake_derive(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !786)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !786, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4path4PathECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4path4PathEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.b, !noalias !786, !inline_history !789

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #15, !noalias !786
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4path4PathEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #15, !noalias !786
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
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.d, !noalias !790, !inline_history !8

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #15, !noalias !790
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #15, !noalias !790
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty3AbiECshbKHpCRGxgC_16deltalake_derive(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn3lit6LitStrEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %.0.val, align 8, !range !78, !alias.scope !793, !noundef !4
  %i.c = icmp eq i64 %i.b, -9223372036854775808
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro27LiteralECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(40) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro27LiteralECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val3.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !800, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.f, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val2.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !800, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef range(i64 1, 0) %.val3.i.i.i.i, i64 noundef 1) #15
  br label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro27LiteralECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !800, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3lit6LitStrECshbKHpCRGxgC_16deltalake_derive.exit.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro27LiteralECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !800, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i, i64 noundef 1) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3lit6LitStrECshbKHpCRGxgC_16deltalake_derive.exit.i

bb.g:                                             ; preds = %bb.e, %bb.d
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #15
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3lit6LitStrECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro27LiteralECshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #15
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn3lit6LitStrEECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn3lit6LitStrEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3lit6LitStrECshbKHpCRGxgC_16deltalake_derive.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !801, !noundef !4 ; 4 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.y
    i64 3, label %bb.aa
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit
    i64 5, label %bb.ab
    i64 6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit
    i64 7, label %bb.aj
    i64 8, label %bb.al
    i64 9, label %bb.ao
    i64 10, label %bb.aq
    i64 11, label %bb.av
    i64 12, label %bb.ax
    i64 13, label %bb.ay
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !802, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty9TypeArrayECshbKHpCRGxgC_16deltalake_derive.exit unwind label %.body, !noalias !802, !inline_history !805

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #15, !noalias !802, !inline_history !805
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4expr4ExprECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g) #17
          to label %common.resume unwind label %bb.d, !inline_history !806

bb.d:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !806
  unreachable

common.resume.sink.split:                         ; preds = %bb.x, %bb.z, %bb.ak, %bb.ap, %bb.au, %bb.aw
  %.sink = phi ptr [ %i.de, %bb.aw ], [ %i.db, %bb.au ], [ %i.cr, %bb.ap ], [ %i.cg, %bb.ak ], [ %i.be, %bb.z ], [ %i.ba, %bb.x ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.df, %bb.aw ], [ %i.dc, %bb.au ], [ %i.cs, %bb.ap ], [ %i.ch, %bb.ak ], [ %i.bf, %bb.z ], [ %i.bc, %bb.x ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 224, i64 noundef 8) #15, !noalias !4
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body39, %.body.i, %.body2, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %.body2 ], [ %i.j, %.body ], [ %i.co, %.body39 ], [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty9TypeArrayECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #15, !noalias !802, !inline_history !805
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4expr4ExprECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g), !inline_history !806
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !78, !alias.scope !807, !noundef !4
  %i.n = icmp eq i64 %i.m, -9223372036854775808
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics12GenericParamNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge unwind label %bb.g, !inline_history !810

._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge: ; preds = %bb.f
  %.val.i.pre = load i64, ptr %0, align 8, !range !811, !alias.scope !812
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val7.i = load i64, ptr %0, align 8, !range !811, !alias.scope !812, !noundef !4
  %1 = icmp eq i64 %.val7.i, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !812
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty3AbiECshbKHpCRGxgC_16deltalake_derive(ptr %.val8.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5 unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge, %bb.e
  %.val.i = phi i64 [ %.val.i.pre, %._RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit_crit_edge ], [ %i.a, %bb.e ]
  %2 = icmp eq i64 %.val.i, 0
  br i1 %2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.q, align 8, !alias.scope !812
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty3AbiECshbKHpCRGxgC_16deltalake_derive(ptr %.val6.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5: ; preds = %bb.g, %bb.h, %bb.j
  %.pn.i = phi { ptr, i32 } [ %i.s, %bb.j ], [ %i.o, %bb.h ], [ %i.o, %bb.g ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_2ty9BareFnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.r) #17
          to label %bb.k unwind label %bb.v, !inline_history !815

bb.j:                                             ; preds = %bb.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn8generics14BoundLifetimesEECshbKHpCRGxgC_16deltalake_derive.exit, %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_2ty9BareFnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.t)
          to label %bb.m unwind label %bb.l, !inline_history !815

bb.k:                                             ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5
  %.pn2.i = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(80) %i.u) #17
          to label %.body2 unwind label %bb.v, !inline_history !815

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.m:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !range !78, !alias.scope !816, !noundef !4
  %i.y = icmp eq i64 %i.x, -9223372036854775808
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !819)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !822, !nonnull !4, !noundef !4 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !822, !noundef !4 ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i, label %.lr.ph55

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %.lr.ph55
  %i.ae = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ae, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i, label %.lr.ph55

.lr.ph55:                                         ; preds = %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i.i
  %.sroa.0.0.i.i54 = phi i64 [ %i.ag, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i.i ], [ 0, %bb.n ] ; 2 uses
  %i.af = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.sroa.0.0.i.i54
  %i.ag = add i64 %.sroa.0.0.i.i54, 1             ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i.i unwind label %bb.o, !noalias !819, !inline_history !825

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i: ; preds = %.lr.ph57
  %i.ah = add i64 %.sroa.0.1.i.i56, 1             ; 2 uses
  %i.ai = icmp eq i64 %i.ah, %i.ac
  br i1 %i.ai, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i._crit_edge, label %.lr.ph57

bb.o:                                             ; preds = %.lr.ph55
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = icmp eq i64 %i.ag, %i.ac
  br i1 %i.ak, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i._crit_edge, label %.lr.ph57

.lr.ph57:                                         ; preds = %bb.o, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i
  %.sroa.0.1.i.i56 = phi i64 [ %i.ah, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i ], [ %i.ag, %bb.o ] ; 2 uses
  %i.al = getelementptr inbounds nuw [256 x i8], ptr %i.aa, i64 %.sroa.0.1.i.i56
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i unwind label %bb.p, !noalias !819, !inline_history !825

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i._crit_edge: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i, %bb.o
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.w)
          to label %.body28 unwind label %bb.q, !inline_history !826

bb.p:                                             ; preds = %.lr.ph57
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !819, !inline_history !827
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i.i, %bb.n
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.r, !inline_history !826

bb.q:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i._crit_edge
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !826
  unreachable

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body28

.body28:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i._crit_edge, %bb.r
  %eh.lpad-body29 = phi { ptr, i32 } [ %i.ao, %bb.r ], [ %i.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit7.i.i._crit_edge ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtCsbjGuDcEILED_11proc_macro25IdentNtNtCs7nQiqFc7Txl_3syn5token5ColonEEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.ap) #17, !inline_history !828
  br label %.body2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !829)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.as = load i8, ptr %i.ar, align 8, !range !70, !alias.scope !829, !noundef !4 ; 2 uses
  %i.at = icmp eq i8 %i.as, 3
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicECshbKHpCRGxgC_16deltalake_derive.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !838)
  %i.au = icmp eq i8 %i.as, 2
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i.i.i.i23 = load i64, ptr %i.av, align 8, !alias.scope !841, !noundef !4 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i.i.i.i23, 0
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.val.i.i.i.i24 = load ptr, ptr %i.aq, align 8, !alias.scope !841, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i24, i64 noundef range(i64 1, 0) %.val1.i.i.i.i23, i64 noundef 1) #15, !noalias !841
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit

.body2:                                           ; preds = %.body28, %bb.k
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.k ], [ %eh.lpad-body29, %.body28 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(16) %i.ax) #17
          to label %common.resume unwind label %bb.v, !inline_history !815

bb.v:                                             ; preds = %bb.h, %.body2, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit5
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !815
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty12BareVariadicECshbKHpCRGxgC_16deltalake_derive.exit.i, %bb.s, %bb.t, %bb.u
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !842)
  %i.ba = load ptr, ptr %i.az, align 8, !alias.scope !842, !noundef !4 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.w

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.x, !noalias !845, !inline_history !848

bb.x:                                             ; preds = %bb.w
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.w
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ba, i64 noundef 224, i64 noundef 8) #15, !noalias !845
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.y:                                             ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !849)
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !849, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit9 unwind label %bb.z, !noalias !849, !inline_history !852

bb.z:                                             ; preds = %bb.y
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit9: ; preds = %bb.y
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.be, i64 noundef 224, i64 noundef 8) #15, !noalias !849, !inline_history !852
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

bb.aa:                                            ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics14TypeParamBoundNtNtBL_5token4PlusEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.bg), !inline_history !853
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10ReturnTypeECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty10TypeBareFnECshbKHpCRGxgC_16deltalake_derive.exit, %bb.ay, %bb.ax, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty8TypePathECshbKHpCRGxgC_16deltalake_derive.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit12, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3mac5MacroECshbKHpCRGxgC_16deltalake_derive.exit, %bb.aa, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty9TypeArrayECshbKHpCRGxgC_16deltalake_derive.exit, %bb.b, %bb.a, %bb.a
  ret void

bb.ab:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !857, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !857, !noundef !4 ; 4 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSTNtNtCs7nQiqFc7Txl_3syn4path11PathSegmentNtNtBM_5token7PathSepEECshbKHpCRGxgC_16deltalake_derive.exit.i, label %.lr.ph

end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item8ReceiverECshbKHpCRGxgC_16deltalake_derive:bb.a
.body3:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit, %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit5, %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.e

bb.d:                                             ; preds = %.body3
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !1251
  unreachable

bb.e:                                             ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body3, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %.body3 ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(40) %i.q) #17
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(8) %i.r) #17
          to label %common.resume unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.t = load i8, ptr %i.s, align 8, !range !166, !alias.scope !2980, !noundef !4 ; 3 uses
  %i.u = icmp eq i8 %i.t, 4
  br i1 %i.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2983)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2986)
  %i.w = icmp eq i8 %i.t, 3
  br i1 %i.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2989)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2992)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2995)
  %i.x = icmp eq i8 %i.t, 2
  br i1 %i.x, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i.i.i.i = load i64, ptr %i.y, align 8, !alias.scope !2998, !noundef !4 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i = load ptr, ptr %i.v, align 8, !alias.scope !2998, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i.i, i64 noundef 1) #15, !noalias !2998
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2999)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !2999, !nonnull !4, !noundef !4 ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty4TypeECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(224) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.j, !noalias !2999, !inline_history !8

common.resume:                                    ; preds = %.body, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.j ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 224, i64 noundef 8) #15, !noalias !2999
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn2ty4TypeEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTNtNtCs7nQiqFc7Txl_3syn5token3AndIBH_NtNtB17_8lifetime8LifetimeEEEECshbKHpCRGxgC_16deltalake_derive.exit
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ab, i64 noundef 224, i64 noundef 8) #15, !noalias !2999
  ret void

bb.k:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item8VariadicECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3002)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !3002, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !3002, !noundef !4 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit9: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit9
  %.sroa.0.0.i.i11 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit9 ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.0.i.i11
  %i.h = add i64 %.sroa.0.0.i.i11, 1              ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit9 unwind label %bb.b, !inline_history !1249

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %.lr.ph13
  %i.i = add i64 %.sroa.0.1.i.i12, 1              ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body5, label %.lr.ph13

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body5, label %.lr.ph13

.lr.ph13:                                         ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit
  %.sroa.0.1.i.i12 = phi i64 [ %i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.1.i.i12
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr4MetaECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.c, !inline_history !1249

bb.c:                                             ; preds = %.lr.ph13
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !3002, !inline_history !1250
  unreachable

.body5:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit, %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4attr9AttributeECshbKHpCRGxgC_16deltalake_derive.exit9, %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.e

bb.d:                                             ; preds = %.body5
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !1251
  unreachable

bb.e:                                             ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body5, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.k, %.body5 ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3005, !noundef !4
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %common.resume, label %bb.f

bb.f:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1k_5token5ColonEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.q)
          to label %common.resume unwind label %bb.i, !inline_history !3008

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3009, !noundef !4 ; 4 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1G_5token5ColonEEECshbKHpCRGxgC_16deltalake_derive.exit1, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn3pat3PatECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(184) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1k_5token5ColonEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.h, !noalias !3012, !inline_history !3017

common.resume:                                    ; preds = %bb.f, %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.w, %bb.h ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 184, i64 noundef 8) #15, !noalias !3012
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1k_5token5ColonEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef 184, i64 noundef 8) #15, !noalias !3012
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1G_5token5ColonEEECshbKHpCRGxgC_16deltalake_derive.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1G_5token5ColonEEECshbKHpCRGxgC_16deltalake_derive.exit1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs7nQiqFc7Txl_3syn4attr9AttributeEECshbKHpCRGxgC_16deltalake_derive.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn3pat3PatENtNtB1k_5token5ColonEECshbKHpCRGxgC_16deltalake_derive.exit
  ret void

bb.i:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item9SignatureECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !811, !noundef !4
  %1 = icmp eq i64 %.val, 0
  br i1 %1, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn2ty3AbiECshbKHpCRGxgC_16deltalake_derive(ptr %.val8)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.c) #17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(88) %i.d) #17
          to label %.body unwind label %bb.y

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3018)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = load i8, ptr %i.f, align 8, !range !33, !alias.scope !3024, !noundef !4
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i = load i64, ptr %i.i, align 8, !alias.scope !3024, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %.val1.i.i, 0
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !3024, !nonnull !4, !noundef !4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #15, !noalias !3024
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.e, %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn2ty3AbiEECshbKHpCRGxgC_16deltalake_derive.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics12GenericParamNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.k)
          to label %bb.h unwind label %bb.f, !inline_history !2247

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !78, !alias.scope !3025, !noundef !4
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %.body, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics14WherePredicateNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %.body unwind label %bb.j, !inline_history !2251

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro25IdentECshbKHpCRGxgC_16deltalake_derive.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !range !78, !alias.scope !3028, !noundef !4
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_8generics14WherePredicateNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.p)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.k, !inline_history !2251

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !2247
  unreachable

.body:                                            ; preds = %bb.k, %bb.f, %bb.g, %bb.c
  %.pn2 = phi { ptr, i32 } [ %i.b, %bb.c ], [ %i.u, %bb.k ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.t) #17
          to label %.body11 unwind label %bb.y

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3031)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3034, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !3034, !noundef !4 ; 4 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit.i, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %.lr.ph
  %i.ab = icmp eq i64 %i.ad, %i.z
  br i1 %i.ab, label %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ad, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit.i ], [ 0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [104 x i8], ptr %i.x, i64 %.sroa.0.0.i32
  %i.ad = add i64 %.sroa.0.0.i32, 1               ; 4 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item5FnArgECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.l, !noalias !3031, !inline_history !3037

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit7.i: ; preds = %.lr.ph34
  %i.ae = add i64 %.sroa.0.1.i33, 1               ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.z
  br i1 %i.af, label %.body28, label %.lr.ph34

bb.l:                                             ; preds = %.lr.ph
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = icmp eq i64 %i.ad, %i.z
  br i1 %i.ah, label %.body28, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit7.i
  %.sroa.0.1.i33 = phi i64 [ %i.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit7.i ], [ %i.ad, %bb.l ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [104 x i8], ptr %i.x, i64 %.sroa.0.1.i33
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item5FnArgECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit7.i unwind label %bb.m, !noalias !3031, !inline_history !3037

bb.m:                                             ; preds = %.lr.ph34
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !3031, !inline_history !3038
  unreachable

_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn8generics8GenericsECshbKHpCRGxgC_16deltalake_derive.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtB1i_5token5CommaEEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.o, !inline_history !3039

.body28:                                          ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit7.i, %bb.l
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBR_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.body26 unwind label %bb.n, !inline_history !3039

bb.n:                                             ; preds = %.body28
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !3039
  unreachable

bb.o:                                             ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body26

.body26:                                          ; preds = %.body28, %bb.o
  %eh.lpad-body27 = phi { ptr, i32 } [ %i.al, %bb.o ], [ %i.ag, %.body28 ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4item5FnArgEEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(8) %i.am) #17
          to label %.body11 unwind label %bb.r, !inline_history !3040

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtB1i_5token5CommaEEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !3041, !align !3, !noundef !4 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtB1i_5token5CommaEEECshbKHpCRGxgC_16deltalake_derive.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item5FnArgECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(96) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4item5FnArgEECshbKHpCRGxgC_16deltalake_derive.exit.i unwind label %bb.q, !noalias !3044, !inline_history !3047

bb.q:                                             ; preds = %bb.p
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 96, i64 noundef 8) #15, !noalias !3044
  br label %.body11

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4item5FnArgEECshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.p
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ao, i64 noundef 96, i64 noundef 8) #15, !noalias !3044
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit

bb.r:                                             ; preds = %.body26
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !inline_history !3040
  unreachable

.body11:                                          ; preds = %.body26, %bb.q, %.body
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body ], [ %eh.lpad-body27, %.body26 ], [ %i.aq, %bb.q ] ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !range !78, !alias.scope !3048, !noundef !4
  %i.au = icmp eq i64 %i.at, -9223372036854775808
  br i1 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn4item8VariadicEECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.s

bb.s:                                             ; preds = %.body11
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item8VariadicECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn4item8VariadicEECshbKHpCRGxgC_16deltalake_derive.exit unwind label %bb.y, !inline_history !3051

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtCs7nQiqFc7Txl_3syn4item5FnArgNtNtB1i_5token5CommaEEECshbKHpCRGxgC_16deltalake_derive.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs7nQiqFc7Txl_3syn4item5FnArgEECshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !range !78, !alias.scope !3052, !noundef !4
  %i.ax = icmp eq i64 %i.aw, -9223372036854775808
  br i1 %i.ax, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn4item8VariadicEECshbKHpCRGxgC_16deltalake_derive.exit15, label %bb.t

bb.t:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7nQiqFc7Txl_3syn10punctuated10PunctuatedNtNtBL_4item5FnArgNtNtBL_5token5CommaEECshbKHpCRGxgC_16deltalake_derive.exit
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs7nQiqFc7Txl_3syn4item8VariadicECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn4item8VariadicEECshbKHpCRGxgC_16deltalake_derive.exit15 unwind label %bb.v, !inline_history !3051

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs7nQiqFc7Txl_3syn4item8VariadicEECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %.body11, %bb.s, %bb.v
  %.pn6 = phi { ptr, i32 } [ %i.bb, %bb.v ], [ %.pn4, %bb.s ], [ %.pn4, %.body11 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji:bb.a
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i, %bb.c
  %.sroa.3.0 = phi ptr [ %.sroa.3.1, %bb.c ], [ %i.f, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i ] ; 2 uses
  %.sroa.010.0.i.i.i = phi i32 [ %i.ad, %bb.c ], [ %i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i ]
  %i.ae = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.af = and i8 %i.c, 63
  %i.ag = zext nneg i8 %i.af to i32
  %i.ah = or disjoint i32 %i.ae, %i.ag            ; 2 uses
  %.not = icmp eq i32 %i.ah, 1114112
  br i1 %.not, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.preheader, label %bb.d

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.preheader: ; preds = %bb.a, %bb.d, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  %.sroa.2.0.ph = phi ptr [ %i.a, %bb.a ], [ %.sroa.3.226, %bb.d ], [ %.sroa.3.0, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit ]
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread22, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  %spec.select.i.i27 = phi i32 [ %i.k, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread22 ], [ %i.ah, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit ]
  %.sroa.3.226 = phi ptr [ %i.b, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread22 ], [ %.sroa.3.0, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit ]
  %i.ai = tail call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %spec.select.i.i27)
  %.not37 = icmp eq i8 %i.ai, 15
  br i1 %.not37, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.preheader, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread: ; preds = %bb.g, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread, %bb.d, %bb.h
  %.sink = phi i8 [ 1, %bb.h ], [ 2, %bb.d ], [ 2, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread ], [ 2, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13 ], [ 2, %bb.g ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %.sink, ptr %i.aj, align 2
  ret void

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread: ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.preheader, %bb.g
  %.sroa.2.0 = phi ptr [ %.sroa.2.335, %bb.g ], [ %.sroa.2.0.ph, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread.preheader ] ; 5 uses
  %.not.i.i6 = icmp eq ptr %1, %.sroa.2.0
  br i1 %.not.i.i6, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread, label %bb.e

bb.e:                                             ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread
  %i.ak = getelementptr inbounds i8, ptr %.sroa.2.0, i64 -1 ; 3 uses
  %i.al = load i8, ptr %i.ak, align 1, !noalias !3819, !noundef !4 ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread31, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i7

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i7: ; preds = %bb.e
  %i.an = icmp ne ptr %1, %i.ak
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds i8, ptr %.sroa.2.0, i64 -2 ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !3819, !noundef !4 ; 3 uses
  %i.aq = and i8 %i.ap, 31
  %i.ar = zext nneg i8 %i.aq to i32
  %i.as = icmp slt i8 %i.ap, -64
  br i1 %i.as, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i10, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread31: ; preds = %bb.e
  %i.at = zext nneg i8 %i.al to i32
  br label %bb.g

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i10: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i7
  %i.au = icmp ne ptr %1, %i.ao
  tail call void @llvm.assume(i1 %i.au)
  %i.av = getelementptr inbounds i8, ptr %.sroa.2.0, i64 -3 ; 3 uses
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3819, !noundef !4 ; 3 uses
  %i.ax = and i8 %i.aw, 15
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = icmp slt i8 %i.aw, -64
  br i1 %i.az, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i12, label %bb.f

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i12: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i10
  %i.ba = icmp ne ptr %1, %i.av
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds i8, ptr %.sroa.2.0, i64 -4 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !3819, !noundef !4
  %i.bd = and i8 %i.bc, 7
  %i.be = zext nneg i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 6
  %i.bg = and i8 %i.aw, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i12, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i10
  %.sroa.2.2 = phi ptr [ %i.bb, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i12 ], [ %i.av, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i10 ]
  %.sroa.010.1.i.i.i11 = phi i32 [ %i.bi, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i12 ], [ %i.ay, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i10 ]
  %i.bj = shl nuw nsw i32 %.sroa.010.1.i.i.i11, 6
  %i.bk = and i8 %i.ap, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i7, %bb.f
  %.sroa.2.1 = phi ptr [ %.sroa.2.2, %bb.f ], [ %i.ao, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i7 ]
  %.sroa.010.0.i.i.i8 = phi i32 [ %i.bm, %bb.f ], [ %i.ar, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i7 ]
  %i.bn = shl nuw nsw i32 %.sroa.010.0.i.i.i8, 6
  %i.bo = and i8 %i.al, 63
  %i.bp = zext nneg i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp            ; 2 uses
  %.not4 = icmp eq i32 %i.bq, 1114112
  br i1 %.not4, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread, label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread31, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13
  %spec.select.i.i936 = phi i32 [ %i.at, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread31 ], [ %i.bq, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13 ]
  %.sroa.2.335 = phi ptr [ %i.ak, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread31 ], [ %.sroa.2.1, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13 ]
  %i.br = tail call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %spec.select.i.i936)
  switch i8 %i.br, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread [
    i8 3, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread
    i8 4, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit13.thread
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !range !811, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = trunc nuw i64 %i.b to i1
  %..i = select i1 %i.e, i64 %i.d, i64 0          ; 2 uses
  %.not.i.i22 = icmp samesign eq i64 %2, 0
  br i1 %.not.i.i22, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %.sroa.0.024 = phi i64 [ %i.ap, %bb.d ], [ %..i, %.lr.ph.preheader ] ; 3 uses
  %.sroa.2.023 = phi ptr [ %.sroa.2.318, %bb.d ], [ %i.f, %.lr.ph.preheader ] ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.sroa.2.023, i64 -1 ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !noalias !3826, !noundef !4 ; 3 uses
  %i.i = icmp sgt i8 %i.h, -1
  br i1 %i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread14, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i: ; preds = %.lr.ph
  %i.j = icmp ne ptr %1, %i.g
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds i8, ptr %.sroa.2.023, i64 -2 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1, !noalias !3826, !noundef !4 ; 3 uses
  %i.m = and i8 %i.l, 31
  %i.n = zext nneg i8 %i.m to i32
  %i.o = icmp slt i8 %i.l, -64
  br i1 %i.o, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread14: ; preds = %.lr.ph
  %i.p = zext nneg i8 %i.h to i32
  br label %bb.c

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i
  %i.q = icmp ne ptr %1, %i.k
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds i8, ptr %.sroa.2.023, i64 -3 ; 3 uses
  %i.s = load i8, ptr %i.r, align 1, !noalias !3826, !noundef !4 ; 3 uses
  %i.t = and i8 %i.s, 15
  %i.u = zext nneg i8 %i.t to i32
  %i.v = icmp slt i8 %i.s, -64
  br i1 %i.v, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i, label %bb.b

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i
  %i.w = icmp ne ptr %1, %i.r
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds i8, ptr %.sroa.2.023, i64 -4 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !noalias !3826, !noundef !4
  %i.z = and i8 %i.y, 7
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 6
  %i.ac = and i8 %i.s, 63
  %i.ad = zext nneg i8 %i.ac to i32
  %i.ae = or disjoint i32 %i.ab, %i.ad
  br label %bb.b

bb.b:                                             ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i
  %.sroa.2.2 = phi ptr [ %i.x, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i ], [ %i.r, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i ]
  %.sroa.010.1.i.i.i = phi i32 [ %i.ae, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i ], [ %i.u, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i ]
  %i.af = shl nuw nsw i32 %.sroa.010.1.i.i.i, 6
  %i.ag = and i8 %i.l, 63
  %i.ah = zext nneg i8 %i.ag to i32
  %i.ai = or disjoint i32 %i.af, %i.ah
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i, %bb.b
  %.sroa.2.1 = phi ptr [ %.sroa.2.2, %bb.b ], [ %i.k, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i ]
  %.sroa.010.0.i.i.i = phi i32 [ %i.ai, %bb.b ], [ %i.n, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i ]
  %i.aj = shl nuw nsw i32 %.sroa.010.0.i.i.i, 6
  %i.ak = and i8 %i.h, 63
  %i.al = zext nneg i8 %i.ak to i32
  %i.am = or disjoint i32 %i.aj, %i.al            ; 2 uses
  %.not = icmp eq i32 %i.am, 1114112
  br i1 %.not, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread, label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread14, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit
  %spec.select.i.i19 = phi i32 [ %i.p, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread14 ], [ %i.am, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit ]
  %.sroa.2.318 = phi ptr [ %i.g, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread14 ], [ %.sroa.2.1, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit ] ; 2 uses
  %i.an = tail call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %spec.select.i.i19)
  %.not20 = icmp eq i8 %i.an, 11
  br i1 %.not20, label %bb.d, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread: ; preds = %bb.d, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit, %bb.c, %bb.a
  %.sroa.0.024.lcssa30.sink32 = phi i64 [ %..i, %bb.a ], [ %.sroa.0.024, %bb.c ], [ %i.ap, %bb.d ], [ %.sroa.0.024, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit ] ; 2 uses
  store i64 1, ptr %i.a, align 8
  store i64 %.sroa.0.024.lcssa30.sink32, ptr %i.c, align 8
  %3 = and i64 %.sroa.0.024.lcssa30.sink32, 1
  %4 = icmp eq i64 %3, 0
  %..i9 = select i1 %4, i8 2, i8 1
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 78
  store i8 %..i9, ptr %i.ao, align 2
  ret void

bb.d:                                             ; preds = %bb.c
  %i.ap = add i64 %.sroa.0.024, 1                 ; 2 uses
  %.not.i.i = icmp eq ptr %1, %.sroa.2.318
  br i1 %.not.i.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.c = load i64, ptr %0, align 8, !range !747, !noundef !4
  %i.d = sub i64 %i.c, %i.b
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.c, label %bb.b, !prof !3833

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.b, i64 noundef %1, i64 noundef 1, i64 noundef 1)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB21_10filter_map9FilterMapINtNtNtB25_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB25_6result6ResultNtNtB25_7convert10InfallibleNtNtB3R_5error5ErrorEEE9from_iterB4p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3837
  call void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !3834
  %i.j = load i64, ptr %i.f, align 8, !range !37, !noalias !3837, !noundef !4
  %.not.i = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !3837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3837
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.e unwind label %bb.d, !noalias !3834

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !3834, !noalias !3839
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !3834, !noalias !3839
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8, !alias.scope !3834, !noalias !3839
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2f_10filter_map9FilterMapINtNtNtB2j_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB2j_6result6ResultNtNtB2j_7convert10InfallibleNtNtB45_5error5ErrorEEE9from_iterB4D_.exit

bb.d:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.h) #17
          to label %bb.n unwind label %bb.m, !noalias !3834

bb.e:                                             ; preds = %bb.b
  %i.n = load i64, ptr %i.g, align 8, !noalias !3837, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3837
  %i.o = tail call i64 @llvm.uadd.sat.i64(i64 %i.n, i64 1)
  %.sroa.0.0.i.i = tail call noundef range(i64 4, 0) i64 @llvm.umax.i64(i64 range(i64 1, 0) %i.o, i64 4) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3837
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.i.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc.i unwind label %bb.d, !noalias !3834

.noexc.i:                                         ; preds = %bb.e
  %i.p = load i64, ptr %i.d, align 8, !range !811, !noalias !3837, !noundef !4
  %i.q = trunc nuw i64 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !78, !noalias !3837, !noundef !4 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g, !prof !3833

bb.f:                                             ; preds = %.noexc.i
  %i.u = load i64, ptr %i.t, align 8, !noalias !3837
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.s, i64 %i.u) #20
          to label %.noexc5.i unwind label %bb.d, !noalias !3834

.noexc5.i:                                        ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %.noexc.i
  %i.v = load ptr, ptr %i.t, align 8, !noalias !3837, !nonnull !4, !noundef !4 ; 2 uses
  %i.w = icmp ule i64 %.sroa.0.0.i.i, %i.s
  tail call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !3834
  store i64 %i.s, ptr %i.i, align 8, !noalias !3837
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.v, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3837
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 4 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3837
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !3834
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3843)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3846
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc6.i unwind label %.loopexit.split-lp.i, !noalias !3834

.noexc6.i:                                        ; preds = %bb.g
  %i.x = load i64, ptr %i.a, align 8, !range !37, !noalias !3848, !noundef !4
  %.not4.i.i.i = icmp eq i64 %i.x, -9223372036854775807
  br i1 %.not4.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc6.i, %.noexc7.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !3848
  %i.y = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3850, !noalias !3851, !noundef !4 ; 4 uses
  %i.z = icmp ult i64 %i.y, 288230376151711744
  call void @llvm.assume(i1 %i.z)
  %i.aa = load i64, ptr %i.i, align 8, !range !747, !alias.scope !3850, !noalias !3851, !noundef !4
  %i.ab = icmp eq i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3848
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator9size_hintB2u_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e)
          to label %bb.j unwind label %bb.i, !noalias !3834

_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.i.i.i
  %i.ac = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !3850, !noalias !3851, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.ac, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !3834
  %i.ae = add nuw nsw i64 %i.y, 1
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3850, !noalias !3851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3848
  invoke void @_RNvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_10filter_map9FilterMapINtNtNtB6_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB1W_5error5ErrorEENtNtNtB4_6traits8iterator8Iterator4nextB2u_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.noexc7.i unwind label %.loopexit.i, !noalias !3834

.noexc7.i:                                        ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %i.af = load i64, ptr %i.a, align 8, !range !37, !noalias !3848, !noundef !4
  %.not.i.i.i = icmp eq i64 %i.af, -9223372036854775807
  br i1 %.not.i.i.i, label %.loopexit8.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.c) #17
          to label %.body.i unwind label %bb.l, !noalias !3834

bb.j:                                             ; preds = %bb.h
  %i.ah = load i64, ptr %i.b, align 8, !noalias !3848, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3848
  %i.ai = call i64 @llvm.uadd.sat.i64(i64 %i.ah, i64 1) ; 2 uses
  %i.aj = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !3852, !noalias !3851, !noundef !4 ; 2 uses
  %i.ak = load i64, ptr %i.i, align 8, !range !747, !alias.scope !3852, !noalias !3851, !noundef !4
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = icmp ugt i64 %i.ai, %i.al
  br i1 %i.am, label %bb.k, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, !prof !3833

bb.k:                                             ; preds = %bb.j
  invoke void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i, i64 noundef %i.aj, i64 noundef range(i64 1, 0) %i.ai, i64 noundef 8, i64 noundef 32)
          to label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i unwind label %bb.i, !noalias !3834

bb.l:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !3834
  unreachable

.loopexit.i:                                      ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i, %bb.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %i.i) #17
          to label %bb.n unwind label %bb.m, !noalias !3834

.loopexit8.i:                                     ; preds = %.noexc7.i, %.noexc6.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !3839
  br label %_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtCsbjGuDcEILED_11proc_macro211TokenStreamEINtB2_18SpecFromIterNestedB11_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2f_10filter_map9FilterMapINtNtNtB2j_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive22generate_load_from_env0EINtNtB2j_6result6ResultNtNtB2j_7convert10InfallibleNtNtB45_5error5ErrorEEE9from_iterB4D_.exit

bb.m:                                             ; preds = %.body.i, %bb.d
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #16, !noalias !3834
end_hunk_2
begin_hunk_3_@_RNvXNvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB15_ReEEINtB2_10SpecExtendNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesE6extendCshbKHpCRGxgC_16deltalake_derive:bb.a
_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i
  %i.ip = icmp ne ptr %i.aa, %i.ij
  call void @llvm.assume(i1 %i.ip), !noalias !3994
  %i.iq = getelementptr inbounds i8, ptr %.sroa.2.0.i.i.i, i64 -3 ; 3 uses
  %i.ir = load i8, ptr %i.iq, align 1, !alias.scope !4036, !noalias !4040, !noundef !4 ; 3 uses
  %i.is = and i8 %i.ir, 15
  %i.it = zext nneg i8 %i.is to i32
  %i.iu = icmp slt i8 %i.ir, -64
  br i1 %i.iu, label %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i, label %bb.bd

_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i
  %i.iv = icmp ne ptr %i.aa, %i.iq
  call void @llvm.assume(i1 %i.iv), !noalias !3994
  %i.iw = getelementptr inbounds i8, ptr %.sroa.2.0.i.i.i, i64 -4 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !alias.scope !4036, !noalias !4040, !noundef !4
  %i.iy = and i8 %i.ix, 7
  %i.iz = zext nneg i8 %i.iy to i32
  %i.ja = shl nuw nsw i32 %i.iz, 6
  %i.jb = and i8 %i.ir, 63
  %i.jc = zext nneg i8 %i.jb to i32
  %i.jd = or disjoint i32 %i.ja, %i.jc
  br label %bb.bd

bb.bd:                                            ; preds = %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i
  %.sroa.2.2.i.i.i = phi ptr [ %i.iw, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i ], [ %i.iq, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i.i = phi i32 [ %i.jd, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit21.i.i.i.i.i.i ], [ %i.it, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit19.i.i.i.i.i.i ]
  %i.je = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i.i, 6
  %i.jf = and i8 %i.ik, 63
  %i.jg = zext nneg i8 %i.jf to i32
  %i.jh = or disjoint i32 %i.je, %i.jg
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i: ; preds = %bb.bd, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i
  %.sroa.2.1.i.i.i = phi ptr [ %.sroa.2.2.i.i.i, %bb.bd ], [ %i.ij, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i.i = phi i32 [ %i.jh, %bb.bd ], [ %i.im, %_RNvXs2K_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCshbKHpCRGxgC_16deltalake_derive.exit17.i.i.i.i.i.i ]
  %i.ji = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i.i, 6
  %i.jj = and i8 %i.ig, 63
  %i.jk = zext nneg i8 %i.jj to i32
  %i.jl = or disjoint i32 %i.ji, %i.jk            ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.jl, 1114112
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.be

bb.be:                                            ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i
  %spec.select.i.i18.i.i.i = phi i32 [ %i.io, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i ], [ %i.jl, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ] ; 21 uses
  %.sroa.2.317.i.i.i = phi ptr [ %i.if, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.thread13.i.i.i ], [ %.sroa.2.1.i.i.i, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i ] ; 2 uses
  %i.jm = call noundef zeroext i1 @_RNvNtCskxeEtmv7ubq_20unicode_segmentation6tables14is_incb_linker(i32 noundef %spec.select.i.i18.i.i.i), !noalias !4047
  br i1 %i.jm, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jn = icmp samesign ult i32 %spec.select.i.i18.i.i.i, 43263
  %i.jo = select i1 %i.jn, i64 0, i64 185, !unpredictable !4 ; 2 uses
  %i.jp = add nuw nsw i64 %i.jo, 93               ; 2 uses
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.jp ; 2 uses
  %.val17.1.i.i.i.i.i.i = load i32, ptr %i.jq, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.jr = getelementptr i8, ptr %i.jq, i64 4
  %.val18.1.i.i.i.i.i.i = load i32, ptr %i.jr, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.1.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.1.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.1.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.1.i.i.i.i.i.i
  %i.js = select i1 %.not1.i20.1.i.i.i.i.i.i, i1 %.not.i19.1.i.i.i.i.i.i, i1 false
  %i.jt = select i1 %i.js, i64 %i.jo, i64 %i.jp, !unpredictable !4 ; 2 uses
  %i.ju = add nuw nsw i64 %i.jt, 46               ; 2 uses
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ju ; 2 uses
  %.val17.2.i.i.i.i.i.i = load i32, ptr %i.jv, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.jw = getelementptr i8, ptr %i.jv, i64 4
  %.val18.2.i.i.i.i.i.i = load i32, ptr %i.jw, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.2.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.2.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.2.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.2.i.i.i.i.i.i
  %i.jx = select i1 %.not1.i20.2.i.i.i.i.i.i, i1 %.not.i19.2.i.i.i.i.i.i, i1 false
  %i.jy = select i1 %i.jx, i64 %i.jt, i64 %i.ju, !unpredictable !4 ; 2 uses
  %i.jz = add nuw nsw i64 %i.jy, 23               ; 2 uses
  %i.ka = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.jz ; 2 uses
  %.val17.3.i.i.i.i.i.i = load i32, ptr %i.ka, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.kb = getelementptr i8, ptr %i.ka, i64 4
  %.val18.3.i.i.i.i.i.i = load i32, ptr %i.kb, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.3.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.3.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.3.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.3.i.i.i.i.i.i
  %i.kc = select i1 %.not1.i20.3.i.i.i.i.i.i, i1 %.not.i19.3.i.i.i.i.i.i, i1 false
  %i.kd = select i1 %i.kc, i64 %i.jy, i64 %i.jz, !unpredictable !4 ; 2 uses
  %i.ke = add nuw nsw i64 %i.kd, 12               ; 2 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ke ; 2 uses
  %.val17.4.i.i.i.i.i.i = load i32, ptr %i.kf, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.kg = getelementptr i8, ptr %i.kf, i64 4
  %.val18.4.i.i.i.i.i.i = load i32, ptr %i.kg, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.4.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.4.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.4.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.4.i.i.i.i.i.i
  %i.kh = select i1 %.not1.i20.4.i.i.i.i.i.i, i1 %.not.i19.4.i.i.i.i.i.i, i1 false
  %i.ki = select i1 %i.kh, i64 %i.kd, i64 %i.ke, !unpredictable !4 ; 2 uses
  %i.kj = add nuw nsw i64 %i.ki, 6                ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.kj ; 2 uses
  %.val17.5.i.i.i.i.i.i = load i32, ptr %i.kk, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.kl = getelementptr i8, ptr %i.kk, i64 4
  %.val18.5.i.i.i.i.i.i = load i32, ptr %i.kl, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.5.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.5.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.5.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.5.i.i.i.i.i.i
  %i.km = select i1 %.not1.i20.5.i.i.i.i.i.i, i1 %.not.i19.5.i.i.i.i.i.i, i1 false
  %i.kn = select i1 %i.km, i64 %i.ki, i64 %i.kj, !unpredictable !4 ; 2 uses
  %i.ko = add nuw nsw i64 %i.kn, 3                ; 2 uses
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ko ; 2 uses
  %.val17.6.i.i.i.i.i.i = load i32, ptr %i.kp, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.kq = getelementptr i8, ptr %i.kp, i64 4
  %.val18.6.i.i.i.i.i.i = load i32, ptr %i.kq, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.6.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.6.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.6.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.6.i.i.i.i.i.i
  %i.kr = select i1 %.not1.i20.6.i.i.i.i.i.i, i1 %.not.i19.6.i.i.i.i.i.i, i1 false
  %i.ks = select i1 %i.kr, i64 %i.kn, i64 %i.ko, !unpredictable !4 ; 2 uses
  %i.kt = add nuw nsw i64 %i.ks, 1                ; 2 uses
  %i.ku = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.kt ; 2 uses
  %.val17.7.i.i.i.i.i.i = load i32, ptr %i.ku, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.kv = getelementptr i8, ptr %i.ku, i64 4
  %.val18.7.i.i.i.i.i.i = load i32, ptr %i.kv, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.7.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.7.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.7.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.7.i.i.i.i.i.i
  %i.kw = select i1 %.not1.i20.7.i.i.i.i.i.i, i1 %.not.i19.7.i.i.i.i.i.i, i1 false
  %i.kx = select i1 %i.kw, i64 %i.ks, i64 %i.kt, !unpredictable !4 ; 2 uses
  %i.ky = add nuw nsw i64 %i.kx, 1                ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.ky ; 2 uses
  %.val17.8.i.i.i.i.i.i = load i32, ptr %i.kz, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.la = getelementptr i8, ptr %i.kz, i64 4
  %.val18.8.i.i.i.i.i.i = load i32, ptr %i.la, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i19.8.i.i.i.i.i.i = icmp samesign ugt i32 %.val17.8.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i20.8.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val18.8.i.i.i.i.i.i
  %i.lb = select i1 %.not1.i20.8.i.i.i.i.i.i, i1 %.not.i19.8.i.i.i.i.i.i, i1 false
  %i.lc = select i1 %i.lb, i64 %i.kx, i64 %i.ky, !unpredictable !4
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @15, i64 %i.lc ; 2 uses
  %.val14.i.i.i.i.i.i = load i32, ptr %i.ld, align 4, !range !3963, !noalias !4048, !noundef !4
  %i.le = getelementptr i8, ptr %i.ld, i64 4
  %.val15.i.i.i.i.i.i = load i32, ptr %i.le, align 4, !range !3963, !noalias !4048, !noundef !4
  %.not.i.i.i.i.i3.i.i = icmp samesign ule i32 %.val14.i.i.i.i.i.i, %spec.select.i.i18.i.i.i
  %.not1.i.i.i.i.i.i.i = icmp samesign ule i32 %spec.select.i.i18.i.i.i, %.val15.i.i.i.i.i.i
  %.not.i.not.i.i.i.i.i = select i1 %.not1.i.i.i.i.i.i.i, i1 %.not.i.i.i.i.i3.i.i, i1 false
  br i1 %.not.i.not.i.i.i.i.i, label %bb.bb, label %bb.bh

bb.bg:                                            ; preds = %bb.be
  %i.lf = add i64 %.sroa.0.0.ph.i.i.i, 1          ; 3 uses
  store i64 1, ptr %i.p, align 8, !alias.scope !4038, !noalias !4039
  store i64 %i.lf, ptr %i.q, align 8, !alias.scope !4038, !noalias !4039
  br label %.outer.i.i.i

bb.bh:                                            ; preds = %bb.bf
  %.not520.i.i.i = icmp ne i64 %i.id, 0
  %.not5.not.i.i.i = select i1 %i.ie, i1 %.not520.i.i.i, i1 false
  br i1 %.not5.not.i.i.i, label %bb.bi, label %.thread.i.i.i

bb.bi:                                            ; preds = %bb.bh
  %i.lg = call noundef i8 @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor17grapheme_category(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, i32 noundef %spec.select.i.i18.i.i.i), !noalias !4051
  %.not21.i.i.i = icmp eq i8 %i.lg, 5
  br i1 %.not21.i.i.i, label %bb.bj, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3revINtB4_3RevNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator4nextCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i, %bb.bb, %bb.bi, %bb.bh, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i
  store i8 2, ptr %i.m, align 2, !alias.scope !4038, !noalias !4039
  %.sroa.19.8.insert.mask70.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert71.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask70.i.i.i.i.i, 1
  br label %bb.bx

bb.bj:                                            ; preds = %bb.bi
  store i8 1, ptr %i.m, align 2, !alias.scope !4038, !noalias !4039
  %.sroa.19.8.insert.mask67.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bx

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread42.i.i.i.i.i.i: ; preds = %bb.as
  %i.lh = load i64, ptr %i.r, align 8, !range !811, !alias.scope !3973, !noalias !3976, !noundef !4
  %i.li = trunc nuw i64 %i.lh to i1
  br i1 %i.li, label %bb.bp, label %bb.bq

_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread44.i.i.i.i.i.i: ; preds = %bb.ar
  %i.lj = call fastcc { ptr, i64 } @_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #21, !noalias !3994 ; 2 uses
  %i.lk = extractvalue { ptr, i64 } %i.lj, 0
  %i.ll = extractvalue { ptr, i64 } %i.lj, 1
  call fastcc void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor12handle_emoji(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lk, i64 noundef %i.ll) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4052)
  %.val2.i27.i.i.i.i.i = load i8, ptr %i.m, align 2, !range !4055, !alias.scope !4056, !noalias !4057, !noundef !4
  switch i8 %.val2.i27.i.i.i.i.i, label %bb.bl [
    i8 2, label %bb.bk
    i8 1, label %bb.bm
  ]

bb.bk:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread44.i.i.i.i.i.i
  %.sroa.19.8.insert.mask64.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert65.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask64.i.i.i.i.i, 1
  br label %bb.bx

bb.bl:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread44.i.i.i.i.i.i
  %i.lm = load i64, ptr %i.b, align 8, !range !811, !alias.scope !4056, !noalias !4057, !noundef !4
  %i.ln = trunc nuw i64 %i.lm to i1
  br i1 %i.ln, label %bb.bn, label %bb.bo

bb.bm:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread44.i.i.i.i.i.i
  %.sroa.19.8.insert.mask61.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bx

bb.bn:                                            ; preds = %bb.bl
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.lp = load i64, ptr %i.lo, align 8, !alias.scope !4056, !noalias !4057, !noundef !4
  br label %.loopexit.i.i.i.i

bb.bo:                                            ; preds = %bb.bl
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core9panicking19unreachable_displayReECshbKHpCRGxgC_16deltalake_derive() #22, !noalias !4059
  unreachable

bb.bp:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread42.i.i.i.i.i.i
  %i.lq = load i64, ptr %i.s, align 8, !alias.scope !3973, !noalias !3976, !noundef !4
  %2 = and i64 %i.lq, 1                           ; 2 uses
  %3 = icmp eq i64 %2, 0
  %..i.i25.i.i.i.i.i.i = select i1 %3, i8 2, i8 1
  store i8 %..i.i25.i.i.i.i.i.i, ptr %i.m, align 2, !alias.scope !4060, !noalias !4065
  %.sroa.19.8.insert.mask51.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %i.lr = or disjoint i64 %2, %.sroa.19.8.insert.mask51.i.i.i.i.i
  %.sroa.19.8.insert.insert52.i.i.i.i.i = xor i64 %i.lr, 1
  br label %bb.bx

bb.bq:                                            ; preds = %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread42.i.i.i.i.i.i
  %i.ls = call fastcc { ptr, i64 } @_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range7RangeTojEE5indexCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i64 noundef %i.ft, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #21, !noalias !3994 ; 2 uses
  %i.lt = extractvalue { ptr, i64 } %i.ls, 0
  %i.lu = extractvalue { ptr, i64 } %i.ls, 1
  call fastcc void @_RNvMs4_NtCskxeEtmv7ubq_20unicode_segmentation8graphemeNtB5_14GraphemeCursor15handle_regional(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.lt, i64 noundef %i.lu) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !4067)
  %.val2.i.i.i.i.i.i = load i8, ptr %i.m, align 2, !range !4055, !alias.scope !4070, !noalias !4071, !noundef !4
  switch i8 %.val2.i.i.i.i.i.i, label %bb.bs [
    i8 2, label %bb.br
    i8 1, label %bb.bt
  ]

bb.br:                                            ; preds = %bb.bq
  %.sroa.19.8.insert.mask58.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  %.sroa.19.8.insert.insert59.i.i.i.i.i = or disjoint i64 %.sroa.19.8.insert.mask58.i.i.i.i.i, 1
  br label %bb.bx

bb.bs:                                            ; preds = %bb.bq
  %i.lv = load i64, ptr %i.b, align 8, !range !811, !alias.scope !4070, !noalias !4071, !noundef !4
  %i.lw = trunc nuw i64 %i.lv to i1
  br i1 %i.lw, label %bb.bu, label %bb.bv

bb.bt:                                            ; preds = %bb.bq
  %.sroa.19.8.insert.mask55.i.i.i.i.i = and i64 %.sroa.19.0.i.i.i.i.i, -256
  br label %bb.bx

bb.bu:                                            ; preds = %bb.bs
  %i.lx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ly = load i64, ptr %i.lx, align 8, !alias.scope !4070, !noalias !4071, !noundef !4
  br label %.loopexit.i.i.i.i

bb.bv:                                            ; preds = %bb.bs
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core9panicking19unreachable_displayReECshbKHpCRGxgC_16deltalake_derive() #22, !noalias !4073
  unreachable

bb.bw:                                            ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i
  store i8 1, ptr %i.l, align 1, !alias.scope !3939, !noalias !3940
  br label %.loopexit.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit24.thread82.i.i.i.i.i
  store i8 2, ptr %i.m, align 2, !alias.scope !4074, !noalias !3940
  br label %bb.aa

bb.bx:                                            ; preds = %bb.bt, %bb.br, %bb.bp, %bb.bm, %bb.bk, %bb.bj, %.thread.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread38.i.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread36.i.i.i.i.i.i, %bb.ac, %bb.aa
  %.sroa.0.1237.i.i.i.i.i = phi i32 [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bt ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.br ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bk ], [ %.sroa.0.1.ph.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.0.1238.i.i.i.i.i, %bb.aa ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.ac ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread36.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bm ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bp ], [ %.sroa.0.1.ph.i.i.i.i.i, %bb.bj ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.1.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread38.i.i.i.i.i.i ]
  %.sroa.0.173235.i.i.i.i.i = phi ptr [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bt ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.br ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bk ], [ %.sroa.0.173.ph.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.0.173236.i.i.i.i.i, %bb.aa ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.ac ], [ %.sroa.0.173.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread36.i.i.i.i.i.i ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bm ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bp ], [ %.sroa.0.173.ph.i.i.i.i.i, %bb.bj ], [ %.sroa.0.173.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i ], [ %.sroa.0.173.ph.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread38.i.i.i.i.i.i ]
  %.sroa.19.1.ph.i.i.i.i.i = phi i64 [ %.sroa.19.8.insert.mask55.i.i.i.i.i, %bb.bt ], [ %.sroa.19.8.insert.insert59.i.i.i.i.i, %bb.br ], [ %.sroa.19.8.insert.insert65.i.i.i.i.i, %bb.bk ], [ %.sroa.19.8.insert.insert71.i.i.i.i.i, %.thread.i.i.i ], [ %.sroa.19.8.insert.insert39.i.i.i.i.i, %bb.aa ], [ %.sroa.19.8.insert.mask.i.i.i.i.i, %bb.ac ], [ %.sroa.19.8.insert.mask44.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread36.i.i.i.i.i.i ], [ %.sroa.19.8.insert.mask61.i.i.i.i.i, %bb.bm ], [ %.sroa.19.8.insert.insert52.i.i.i.i.i, %bb.bp ], [ %.sroa.19.8.insert.mask67.i.i.i.i.i, %bb.bj ], [ %.sroa.19.8.insert.insert42.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread.i.i.i.i.i.i ], [ %.sroa.19.8.insert.insert48.i.i.i.i.i, %_RNvNtCskxeEtmv7ubq_20unicode_segmentation8grapheme10check_pair.exit.thread38.i.i.i.i.i.i ] ; 2 uses
  %i.lz = trunc i64 %.sroa.19.1.ph.i.i.i.i.i to i1
  store i8 0, ptr %i.l, align 1, !alias.scope !3939, !noalias !3940
  br i1 %i.lz, label %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i, label %bb.j

.loopexit.i.i.i.i:                                ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i, %bb.ab, %bb.bw, %bb.bu, %bb.bn, %.critedge.i.i.i.i.i.i, %bb.ae
  %.sroa.12.0.ph.i.i.i.i = phi i64 [ undef, %bb.bw ], [ %.sroa.19.0.i.i.i.i.i, %bb.ab ], [ %i.lp, %bb.bn ], [ %i.ly, %bb.bu ], [ 0, %.critedge.i.i.i.i.i.i ], [ %i.fy, %bb.ae ], [ undef, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i ], [ undef, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ]
  %.sroa.6.0.ph.i.i.i.i = phi i64 [ 2, %bb.bw ], [ 3, %bb.ab ], [ 0, %bb.bn ], [ 0, %bb.bu ], [ 0, %.critedge.i.i.i.i.i.i ], [ 0, %bb.ae ], [ 2, %_RNvXs2_NtNtCsbvkFyIu7lgC_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i ], [ 2, %_RNvXNtNtCsbvkFyIu7lgC_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator4next.exit.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4077
  store i64 %.sroa.6.0.ph.i.i.i.i, ptr %i.a, align 8, !noalias !4077
  %i.ma = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sroa.12.0.ph.i.i.i.i, ptr %i.ma, align 8, !noalias !4077
  call void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #20, !noalias !4080
  unreachable

bb.by:                                            ; preds = %bb.b
  call void @_RNvNtCsbvkFyIu7lgC_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #19, !noalias !4081
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i: ; preds = %bb.bx
  %i.mb = load i64, ptr %i.f, align 8, !alias.scope !3939, !noalias !3940, !noundef !4 ; 7 uses
  %i.mc = load ptr, ptr %i.i, align 8, !alias.scope !3933, !noalias !3927, !nonnull !4, !noundef !4 ; 4 uses
  %i.md = load i64, ptr %i.j, align 8, !alias.scope !3933, !noalias !3927, !noundef !4 ; 5 uses
  %.not.i.i.i2.i.i.i.i = icmp ugt i64 %.val1.i.i132.i.i, %i.mb
  br i1 %.not.i.i.i2.i.i.i.i, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  br i1 %i.ae, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %.not5.i.i.i.i.i.i.i = icmp ult i64 %.val1.i.i132.i.i, %i.md
  br i1 %.not5.i.i.i.i.i.i.i, label %bb.cd, label %bb.cc

bb.cb:                                            ; preds = %bb.cd, %bb.cc, %bb.bz
  %i.me = icmp eq i64 %i.mb, 0
  br i1 %i.me, label %bb.ci, label %bb.ce

bb.cc:                                            ; preds = %bb.ca
  %i.mf = icmp eq i64 %.val1.i.i132.i.i, %i.md
  br i1 %i.mf, label %bb.cb, label %bb.ch

bb.cd:                                            ; preds = %bb.ca
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.val1.i.i132.i.i
  %i.mh = load i8, ptr %i.mg, align 1, !alias.scope !4082, !noalias !4081, !noundef !4
  %i.mi = icmp sgt i8 %i.mh, -65
  br i1 %i.mi, label %bb.cb, label %bb.ch

bb.ce:                                            ; preds = %bb.cb
  %.not6.i.i.i.i.i.i.i = icmp ult i64 %i.mb, %i.md
  br i1 %.not6.i.i.i.i.i.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.mj = icmp eq i64 %i.mb, %i.md
  br i1 %i.mj, label %bb.ci, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.mb
  %i.ml = load i8, ptr %i.mk, align 1, !alias.scope !4082, !noalias !4081, !noundef !4
  %i.mm = icmp sgt i8 %i.ml, -65
  br i1 %i.mm, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf, %bb.cd, %bb.cc, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionjE6unwrapCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i
  call void @_RNvNtCsbvkFyIu7lgC_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.mc, i64 noundef %i.md, i64 noundef %.val1.i.i132.i.i, i64 noundef %i.mb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #19, !noalias !4081
  unreachable

bb.ci:                                            ; preds = %bb.cg, %bb.cf, %bb.cb
  %i.mn = sub nuw i64 %i.mb, %.val1.i.i132.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 %.val1.i.i132.i.i ; 2 uses
  %i.mp = ptrtoint ptr %i.mo to i64
  %i.mq = load i64, ptr %i.u, align 8, !alias.scope !4089, !noalias !4090, !noundef !4
  %i.mr = sub i64 %i.mp, %i.mq
  %i.ms = load i64, ptr %i.v, align 8, !alias.scope !4097, !noalias !4104, !noundef !4 ; 3 uses
  %i.mt = load i64, ptr %0, align 8, !range !747, !alias.scope !4097, !noalias !4104, !noundef !4
  %i.mu = icmp eq i64 %i.ms, %i.mt
  br i1 %i.mu, label %bb.cj, label %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsl1mHGn7pXMx_12convert_case(ptr noalias noundef nonnull align 8 dereferenceable(48) %0), !noalias !4110
  br label %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i

_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i: ; preds = %bb.cj, %bb.ci
  %i.mv = load ptr, ptr %i.w, align 8, !alias.scope !4097, !noalias !4104, !nonnull !4, !noundef !4
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.ms
  store i64 %i.mr, ptr %i.mw, align 8, !noalias !4110
  %i.mx = add i64 %i.ms, 1
  store i64 %i.mx, ptr %i.v, align 8, !alias.scope !4097, !noalias !4104
  %i.my = load i64, ptr %i.y, align 8, !alias.scope !4111, !noalias !4116, !noundef !4 ; 3 uses
  %i.mz = load i64, ptr %i.x, align 8, !range !747, !alias.scope !4111, !noalias !4116, !noundef !4
  %i.na = icmp eq i64 %i.my, %i.mz
  br i1 %i.na, label %bb.ck, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjReENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB25_B1h_EEB1f_E0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i

bb.ck:                                            ; preds = %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  call void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecReE8grow_oneCsjJ0p09o2jmV_10proc_macro(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x), !noalias !4119
  br label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjReENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB25_B1h_EEB1f_E0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjReENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB25_B1h_EEB1f_E0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i: ; preds = %bb.ck, %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE10extend_oneCshbKHpCRGxgC_16deltalake_derive.exit.i.i.i.i.i
  %i.nb = load ptr, ptr %i.z, align 8, !alias.scope !4111, !noalias !4116, !nonnull !4, !noundef !4
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.nb, i64 %i.my ; 2 uses
  store ptr %i.mo, ptr %i.nc, align 8, !noalias !4119
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  store i64 %i.mn, ptr %i.nd, align 8, !noalias !4110
  %i.ne = add i64 %i.my, 1
  store i64 %i.ne, ptr %i.y, align 8, !alias.scope !4111, !noalias !4116
  %.val1.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !4120, !noalias !3927, !noundef !4 ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !4120, !noalias !3927, !noundef !4
  %i.nf = icmp eq i64 %.val1.i.i.i.i, %.val.i.i.i.i
  br i1 %i.nf, label %_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvNvNtB1b_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2X_ReEETjB3A_EE0ECshbKHpCRGxgC_16deltalake_derive.exit, label %bb.b

_RINvYNtNtCskxeEtmv7ubq_20unicode_segmentation8grapheme15GraphemeIndicesNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_eachNCINvNvNtB1b_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB2X_ReEETjB3A_EE0ECshbKHpCRGxgC_16deltalake_derive.exit: ; preds = %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callTjReENCINvNvNtBa_7collect14default_extend8extenderTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIB25_B1h_EEB1f_E0E0CshbKHpCRGxgC_16deltalake_derive.exit.i.i, %_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.cl:                                            ; preds = %bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !alias.scope !4123, !noundef !4 ; 2 uses
  %i.ni = load i64, ptr %0, align 8, !range !747, !alias.scope !4123, !noundef !4
  %i.nj = sub i64 %i.ni, %i.nh
  %i.nk = icmp ult i64 %i.nj, %.sroa.0.0.i.i.i.i
  br i1 %i.nk, label %bb.cm, label %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit.i, !prof !3833

bb.cm:                                            ; preds = %bb.cl
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %i.nh, i64 noundef range(i64 1, 0) %.sroa.0.0.i.i.i.i, i64 noundef 8, i64 noundef 8)
  br label %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit.i

_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %bb.cm, %bb.cl
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nn = load i64, ptr %i.nm, align 8, !alias.scope !4130, !noundef !4 ; 2 uses
  %i.no = load i64, ptr %i.nl, align 8, !range !747, !alias.scope !4130, !noundef !4
  %i.np = sub i64 %i.no, %i.nn
  %i.nq = icmp ult i64 %i.np, %.sroa.0.0.i.i.i.i
  br i1 %i.nq, label %bb.cn, label %_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit, !prof !3833

bb.cn:                                            ; preds = %_RNvXsi_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecjEINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendjE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit.i
  tail call void @_RINvNvMs2_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.nl, i64 noundef %i.nn, i64 noundef range(i64 1, 0) %.sroa.0.0.i.i.i.i, i64 noundef 8, i64 noundef 16)
  br label %_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecjEIBQ_ReEEINtB5_6ExtendTjB1s_EE14extend_reserveCshbKHpCRGxgC_16deltalake_derive.exit
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtNtCs6Po7BT7Nknu_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterhEE11spec_extendCshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b                   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4135, !noundef !4 ; 5 uses
  %i.f = load i64, ptr %0, align 8, !range !747, !alias.scope !4135, !noundef !4
  %i.g = sub i64 %i.f, %i.e
  %i.h = icmp ugt i64 %i.c, %i.g
  br i1 %i.h, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.thread.i, label %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VechE7reserveCshbKHpCRGxgC_16deltalake_derive.exit.i, !prof !3833
end_hunk_3
