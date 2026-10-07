Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_test_macros-8ee6405a26b8ec54.lance_test_macros.45dbbaa69f934603-cgu.0?download=true
inline.NumInlined: 1500
inline.NumDeleted: 499
begin_hunk_0_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEEECs5ZQXtie4Wk1_17lance_test_macros:bb.a
bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4path29ParenthesizedGenericArgumentsECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.g, !inline_history !113

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4path30AngleBracketedGenericArgumentsECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(56) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.g, !inline_history !113

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef 8) #24, !noalias !109
  resume { ptr, i32 } %i.n

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit.i, %bb.e, %bb.f
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 88, i64 noundef 8) #24, !noalias !109
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path15GenericArgumentEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !37, !noundef !38 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path15GenericArgumentEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4path15GenericArgumentECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(312) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path15GenericArgumentEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.d, !noalias !117, !inline_history !118

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 312, i64 noundef 8) #24, !noalias !117
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path15GenericArgumentEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 312, i64 noundef 8) #24, !noalias !117
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics12GenericParamEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !37, !noundef !38 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics12GenericParamEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics12GenericParamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(464) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics12GenericParamEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.d, !noalias !121, !inline_history !122

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 464, i64 noundef 8) #24, !noalias !121
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics12GenericParamEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 464, i64 noundef 8) #24, !noalias !121
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !37, !noundef !38 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(120) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.d, !noalias !125, !inline_history !126

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 120, i64 noundef 8) #24, !noalias !125
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14TypeParamBoundEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 120, i64 noundef 8) #24, !noalias !125
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !align !37, !noundef !38 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(312) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.d, !noalias !129, !inline_history !130

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 312, i64 noundef 8) #24, !noalias !129
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn8generics14WherePredicateEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 312, i64 noundef 8) #24, !noalias !129
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs7xemmV0rX3c_11proc_macro25IdentEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !43, !noundef !38 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = icmp eq i8 %i.b, 2
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load i64, ptr %i.e, align 8, !alias.scope !137, !noundef !38 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.c
  %.val.i.i = load ptr, ptr %0, align 8, !alias.scope !137, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #24, !noalias !137
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !44, !noundef !38
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.c, !inline_history !138

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.d) #25, !inline_history !138
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load i8, ptr %i.f, align 8, !range !43, !alias.scope !147, !noundef !38 ; 2 uses
  %i.h = icmp eq i8 %i.g, -1
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.i = icmp eq i8 %i.g, 2
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !151, !noundef !38 ; 2 uses
  %i.k = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.k, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %.val.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !151, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #24, !noalias !151
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros(i64 %.0.val, ptr captures(address) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %0 = icmp eq i64 %.0.val, 0
  %1 = icmp eq ptr %.8.val, null
  %or.cond = select i1 %0, i1 true, i1 %1
  br i1 %or.cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty3AbiECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty3AbiECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %.val4.i.i.i.i.i = load i64, ptr %.8.val, align 8, !range !44, !alias.scope !154, !noundef !38 ; 2 uses
  %i.a = icmp sgt i64 %.val4.i.i.i.i.i, 0
  br i1 %i.a, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %.val5.i.i.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !154, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !154
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !154, !noundef !38 ; 2 uses
  %i.d = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !154, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i, i64 noundef 1) #24, !noalias !154
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.8.val, i64 noundef 40, i64 noundef 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty3AbiECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4expr5LabelEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !43, !noundef !38 ; 2 uses
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr5LabelECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr5LabelECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.d = icmp eq i8 %i.b, 2
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr5LabelECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !167, !noundef !38 ; 2 uses
  %i.f = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr5LabelECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %.val.i.i.i.i = load ptr, ptr %0, align 8, !alias.scope !167, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #24, !noalias !167
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr5LabelECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4stmt5BlockEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !44, !noundef !38 ; 5 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt5BlockECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !170)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !170, !nonnull !38, !noundef !38 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !170, !noundef !38 ; 4 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt5BlockECs5ZQXtie4Wk1_17lance_test_macros.exit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt5BlockECs5ZQXtie4Wk1_17lance_test_macros.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.sroa.0.0.i.i3 = phi i64 [ %i.j, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [352 x i8], ptr %i.d, i64 %.sroa.0.0.i.i3
  %i.j = add i64 %.sroa.0.0.i.i3, 1               ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt4StmtECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(352) %i.i)
          to label %bb.c unwind label %bb.e, !noalias !170, !inline_history !0

bb.d:                                             ; preds = %.lr.ph5
  %i.k = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %.body, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = icmp eq i64 %i.j, %i.f
  br i1 %i.n, label %.body, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.k, %bb.d ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [352 x i8], ptr %i.d, i64 %.sroa.0.1.i.i4
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt4StmtECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(352) %i.o) #25
          to label %bb.d unwind label %bb.f, !noalias !170, !inline_history !0

bb.f:                                             ; preds = %.lr.ph5
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !170, !inline_history !0
  unreachable

.body:                                            ; preds = %bb.d, %bb.e
  %i.q = icmp eq i64 %i.a, 0
  br i1 %i.q, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit1, label %bb.g

bb.g:                                             ; preds = %.body
  %i.r = mul nuw i64 %i.a, 352
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit1: ; preds = %bb.g, %.body
  resume { ptr, i32 } %i.m

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt5BlockECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c, %bb.b
  %i.s = icmp eq i64 %i.a, 0
  br i1 %i.s, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt5BlockECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.t = mul nuw i64 %i.a, 352
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc7raw_vec6RawVecNtNtCsb2PI9uRnNxu_3syn4stmt4StmtEECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4stmt9LocalInitEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !38  ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4expr4ExprEECs5ZQXtie4Wk1_17lance_test_macros.exit4, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt9LocalInitECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr4ExprECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(176) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt9LocalInitECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %.body, !noalias !179, !inline_history !180

.body:                                            ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 176, i64 noundef 8) #24, !noalias !179, !inline_history !180
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !181, !align !37, !noundef !38
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %common.resume, label %bb.c

bb.c:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4expr4ExprEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(8) %i.d)
          to label %common.resume unwind label %bb.d, !inline_history !182

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !183
  unreachable

common.resume:                                    ; preds = %bb.c, %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.c, %.body ], [ %i.c, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt9LocalInitECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.b
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 176, i64 noundef 8) #24, !noalias !179, !inline_history !180
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !184, !align !37, !noundef !38 ; 4 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt9LocalInitECs5ZQXtie4Wk1_17lance_test_macros.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr4ExprECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(176) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4expr4ExprEECs5ZQXtie4Wk1_17lance_test_macros.exit4 unwind label %bb.f, !noalias !185, !inline_history !186

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 176, i64 noundef 8) #24, !noalias !185, !inline_history !186
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4expr4ExprEECs5ZQXtie4Wk1_17lance_test_macros.exit4: ; preds = %bb.e
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 176, i64 noundef 8) #24, !noalias !185, !inline_history !186
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8lifetime8LifetimeEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !41, !alias.scope !919, !noundef !38
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7xemmV0rX3c_11proc_macro23imp5IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !919, !noundef !38 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7xemmV0rX3c_11proc_macro23imp5IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.b
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !919, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %.val1.i, i64 noundef 1) #24, !noalias !919
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7xemmV0rX3c_11proc_macro23imp5IdentECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs7xemmV0rX3c_11proc_macro23imp5IdentECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn11restriction13VisRestrictedECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !922, !nonnull !38, !noundef !38 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4path4PathECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path4PathEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.b, !noalias !922, !inline_history !923

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #24, !noalias !922
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path4PathEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 48, i64 noundef 8) #24, !noalias !922
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !38  ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %i.a)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.d, !noalias !926, !inline_history !39

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #24, !noalias !926
  resume { ptr, i32 } %i.c

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 224, i64 noundef 8) #24, !noalias !926
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty3AbiECs5ZQXtie4Wk1_17lance_test_macros(ptr captures(address) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn3lit6LitStrEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %.val4.i.i.i.i = load i64, ptr %.0.val, align 8, !range !44, !alias.scope !929, !noundef !38 ; 2 uses
  %i.b = icmp sgt i64 %.val4.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %.val5.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !929, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i, i64 noundef %.val4.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !929
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 32
  %.val1.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !929, !noundef !38 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !929, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #24, !noalias !929
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 40, i64 noundef 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn3lit6LitStrEECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn3lit6LitStrEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !993, !noundef !38 ; 4 uses
  %i.b = icmp ne i64 %i.a, 3
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %i.d = icmp samesign ugt i64 %i.a, 1
  %i.e = select i1 %i.d, i64 %i.c, i64 1
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.t
    i64 3, label %bb.v
    i64 4, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit
    i64 5, label %bb.w
    i64 6, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit
    i64 7, label %bb.ab
    i64 8, label %bb.ad
    i64 9, label %bb.ag
    i64 10, label %bb.ai
    i64 11, label %bb.am
    i64 12, label %bb.ao
    i64 13, label %bb.ap
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  tail call void @llvm.experimental.noalias.scope.decl(metadata !994)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !994, !nonnull !38, !noundef !38 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty9TypeArrayECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %.body, !noalias !994, !inline_history !932

.body:                                            ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #24, !noalias !994, !inline_history !932
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr4ExprECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g) #25
          to label %common.resume unwind label %bb.d, !inline_history !933

bb.d:                                             ; preds = %.body
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !933
  unreachable

common.resume.sink.split:                         ; preds = %bb.s, %bb.u, %bb.ac, %bb.ah, %bb.al, %bb.an
  %.sink = phi ptr [ %i.ce, %bb.an ], [ %i.cb, %bb.al ], [ %i.br, %bb.ah ], [ %i.bg, %bb.ac ], [ %i.at, %bb.u ], [ %i.ap, %bb.s ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.cf, %bb.an ], [ %i.cc, %bb.al ], [ %i.bs, %bb.ah ], [ %i.bh, %bb.ac ], [ %i.au, %bb.u ], [ %i.ar, %bb.s ]
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef 224, i64 noundef 8) #24, !noalias !38
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %.body25, %.body.i, %.body2, %.body
  %common.resume.op = phi { ptr, i32 } [ %.pn4.i, %.body2 ], [ %i.j, %.body ], [ %i.bo, %.body25 ], [ %eh.lpad-body.i, %.body.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty9TypeArrayECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.i, i64 noundef 224, i64 noundef 8) #24, !noalias !994, !inline_history !932
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr4ExprECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.g), !inline_history !933
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.e:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !44, !alias.scope !995, !noundef !38
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit_crit_edge unwind label %bb.g, !inline_history !936

._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit_crit_edge: ; preds = %bb.f
  %.val.i.pre = load i64, ptr %0, align 8, !range !59, !alias.scope !996
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  %.val7.i = load i64, ptr %0, align 8, !range !59, !alias.scope !996, !noundef !38
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8.i = load ptr, ptr %i.p, align 8, !alias.scope !996
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros(i64 %.val7.i, ptr %.val8.i) #25, !inline_history !939
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_2ty9BareFnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.q) #25
          to label %bb.j unwind label %bb.q, !inline_history !939

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit_crit_edge, %bb.e
  %.val.i = phi i64 [ %.val.i.pre, %._RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit_crit_edge ], [ %i.a, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6.i = load ptr, ptr %i.r, align 8, !alias.scope !996 ; 6 uses
  %1 = icmp eq i64 %.val.i, 0
  %2 = icmp eq ptr %.val6.i, null
  %or.cond.i = select i1 %1, i1 true, i1 %2
  br i1 %or.cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.h

bb.h:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !997)
  %.val4.i.i.i.i.i.i = load i64, ptr %.val6.i, align 8, !range !44, !alias.scope !997, !noundef !38 ; 2 uses
  %i.s = icmp sgt i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.s, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val6.i, i64 8
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !997, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !997
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i: ; preds = %bb.i, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val6.i, i64 32
  %.val1.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !997, !noundef !38 ; 2 uses
  %i.v = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.v, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.val6.i, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.w, align 8, !alias.scope !997, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #24, !noalias !997
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i, i64 noundef 40, i64 noundef 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn8generics14BoundLifetimesEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_2ty9BareFnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.x)
          to label %bb.l unwind label %bb.k, !inline_history !939

bb.j:                                             ; preds = %bb.k, %bb.g
  %.pn2.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.o, %bb.g ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(80) %i.y) #25
          to label %.body2 unwind label %bb.q, !inline_history !939

bb.k:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !44, !alias.scope !998, !noundef !38
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %bb.n, !inline_history !944

bb.n:                                             ; preds = %bb.m
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtCs7xemmV0rX3c_11proc_macro25IdentNtNtCsb2PI9uRnNxu_3syn5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.ae) #25, !inline_history !944
  br label %.body2

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load i8, ptr %i.ag, align 8, !range !43, !alias.scope !999, !noundef !38 ; 2 uses
  %i.ai = icmp eq i8 %i.ah, -1
  br i1 %i.ai, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1000)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1001)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1002)
  %i.aj = icmp eq i8 %i.ah, 2
  br i1 %i.aj, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val1.i.i.i.i20 = load i64, ptr %i.ak, align 8, !alias.scope !1003, !noundef !38 ; 2 uses
  %i.al = icmp eq i64 %.val1.i.i.i.i20, 0
  br i1 %i.al, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i21

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i21: ; preds = %bb.p
  %.val.i.i.i.i22 = load ptr, ptr %i.af, align 8, !alias.scope !1003, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i22, i64 noundef %.val1.i.i.i.i20, i64 noundef 1) #24, !noalias !1003
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit

.body2:                                           ; preds = %bb.n, %bb.j
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %bb.j ], [ %i.ad, %bb.n ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(16) %i.am) #25
          to label %common.resume unwind label %bb.q, !inline_history !939

bb.q:                                             ; preds = %.body2, %bb.j, %bb.g
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !939
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.l, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty12BareVariadicECs5ZQXtie4Wk1_17lance_test_macros.exit.i, %bb.o, %bb.p, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i21
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !1004, !noundef !38 ; 4 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %i.ap)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %bb.s, !noalias !1005, !inline_history !957

bb.s:                                             ; preds = %bb.r
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %bb.r
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef 224, i64 noundef 8) #24, !noalias !1005
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.t:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !1006, !nonnull !38, !noundef !38 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %i.at)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit6 unwind label %bb.u, !noalias !1006, !inline_history !960

bb.u:                                             ; preds = %bb.t
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit6: ; preds = %bb.t
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef 224, i64 noundef 8) #24, !noalias !1006, !inline_history !960
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.v:                                             ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_8generics14TypeParamBoundNtNtBG_5token4PlusEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.av), !inline_history !961
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10TypeBareFnECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.ap, %bb.ao, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit19, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit16, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit13, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty8TypePathECs5ZQXtie4Wk1_17lance_test_macros.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit9, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3mac5MacroECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.v, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit6, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty9TypeArrayECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.b, %bb.a, %bb.a
  ret void

bb.w:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentNtNtB1d_5token7PathSepEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.aw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i unwind label %bb.x, !inline_history !962

bb.x:                                             ; preds = %bb.w
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(8) %i.ay) #25
          to label %.body.i unwind label %bb.y, !inline_history !962

bb.y:                                             ; preds = %bb.x
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !962
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i: ; preds = %bb.w
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4path11PathSegmentEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3mac5MacroECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.z, !inline_history !963

bb.z:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.x, %bb.z
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bb, %bb.z ], [ %i.ax, %bb.x ]
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bc) #25
          to label %common.resume unwind label %bb.aa, !inline_history !964

bb.aa:                                            ; preds = %.body.i
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !964
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3mac5MacroECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4path11PathSegmentNtNtBG_5token7PathSepEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.be), !inline_history !964
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty10ReturnTypeECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.ab:                                            ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !1007, !nonnull !38, !noundef !38 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %i.bg)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit9 unwind label %bb.ac, !noalias !1007, !inline_history !967

bb.ac:                                            ; preds = %bb.ab
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split
end_hunk_1
begin_hunk_2_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item8ReceiverECs5ZQXtie4Wk1_17lance_test_macros:bb.a
  %i.o = icmp eq i64 %.val.i, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.e

.body4:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i, %bb.b
  %.val2.i = load i64, ptr %0, align 8, !range !46, !alias.scope !2424, !noundef !38 ; 2 uses
  %i.p = icmp eq i64 %.val2.i, 0
  br i1 %i.p, label %.body, label %bb.d

bb.d:                                             ; preds = %.body4
  %i.q = shl nuw i64 %.val2.i, 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2424, !inline_history !65
  br label %.body

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.r = shl nuw i64 %.val.i, 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2424, !inline_history !65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit

.body:                                            ; preds = %.body4, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(40) %i.s) #25
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(8) %i.t) #25
          to label %common.resume unwind label %bb.j

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.e, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i8, ptr %i.u, align 8, !range !45, !alias.scope !2426, !noundef !38 ; 3 uses
  %i.w = icmp eq i8 %i.v, -2
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2427)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2428)
  %i.y = icmp eq i8 %i.v, -1
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %i.z = icmp eq i8 %i.v, 2
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val1.i.i.i.i.i.i = load i64, ptr %i.aa, align 8, !alias.scope !2432, !noundef !38 ; 2 uses
  %i.ab = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %.val.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !2432, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #24, !noalias !2432
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2433, !nonnull !38, !noundef !38 ; 3 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %i.ad)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.i, !noalias !2433, !inline_history !39

common.resume:                                    ; preds = %.body, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ae, %bb.i ], [ %i.k, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 224, i64 noundef 8) #24, !noalias !2433
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn2ty4TypeEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token3AndIBC_NtNtB12_8lifetime8LifetimeEEEECs5ZQXtie4Wk1_17lance_test_macros.exit
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef 224, i64 noundef 8) #24, !noalias !2433
  ret void

bb.j:                                             ; preds = %.body
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item8VariadicECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2449, !nonnull !38, !noundef !38 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2449, !noundef !38 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %.sroa.0.0.i5 = phi i64 [ %i.h, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.0.i5
  %i.h = add i64 %.sroa.0.0.i5, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr4MetaECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.g)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %bb.b, !noalias !2448, !inline_history !25

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i: ; preds = %.lr.ph7
  %i.i = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body2, label %.lr.ph7

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %.body2, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i
  %.sroa.0.1.i6 = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr4MetaECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.m)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i unwind label %bb.c, !noalias !2448, !inline_history !25

bb.c:                                             ; preds = %.lr.ph7
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !2448, !inline_history !26
  unreachable

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i, %bb.a
  %.val.i = load i64, ptr %0, align 8, !range !46, !alias.scope !2448, !noundef !38 ; 2 uses
  %i.o = icmp eq i64 %.val.i, 0
  br i1 %i.o, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.e

.body2:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i, %bb.b
  %.val2.i = load i64, ptr %0, align 8, !range !46, !alias.scope !2448, !noundef !38 ; 2 uses
  %i.p = icmp eq i64 %.val2.i, 0
  br i1 %i.p, label %.body, label %bb.d

bb.d:                                             ; preds = %.body2
  %i.q = shl nuw i64 %.val2.i, 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2448, !inline_history !65
  br label %.body

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.r = shl nuw i64 %.val.i, 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2448, !inline_history !65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit

.body:                                            ; preds = %.body2, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !2450, !noundef !38
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %common.resume, label %bb.f

bb.f:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1f_5token5ColonEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %common.resume unwind label %bb.i, !inline_history !2440

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.e, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !2451, !noundef !38 ; 4 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1B_5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit1, label %bb.g

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3pat3PatECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(184) %i.w)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1f_5token5ColonEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.h, !noalias !2452, !inline_history !2447

common.resume:                                    ; preds = %bb.f, %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.h ], [ %i.k, %.body ], [ %i.k, %bb.f ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 184, i64 noundef 8) #24, !noalias !2452
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1f_5token5ColonEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.g
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.w, i64 noundef 184, i64 noundef 8) #24, !noalias !2452
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1B_5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1B_5token5ColonEEECs5ZQXtie4Wk1_17lance_test_macros.exit1: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn3pat3PatENtNtB1f_5token5ColonEECs5ZQXtie4Wk1_17lance_test_macros.exit
  ret void

bb.i:                                             ; preds = %bb.f
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item9SignatureECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !59, !noundef !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.a, align 8            ; 6 uses
  %1 = icmp eq i64 %.val, 0
  %2 = icmp eq ptr %.val8, null
  %or.cond.i = select i1 %1, i1 true, i1 %2
  br i1 %or.cond.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2485)
  %.val4.i.i.i.i.i.i = load i64, ptr %.val8, align 8, !range !44, !alias.scope !2485, !noundef !38 ; 2 uses
  %i.b = icmp sgt i64 %.val4.i.i.i.i.i.i, 0
  br i1 %i.b, label %bb.c, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.val8, i64 8
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.c, align 8, !alias.scope !2485, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %.val4.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !2485
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.val8, i64 32
  %.val1.i.i.i.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !2485, !noundef !38 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.val8, i64 24
  %.val.i.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !2485, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i, i64 noundef 1) #24, !noalias !2485
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i6.i.i.i.i.i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro27LiteralECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef 40, i64 noundef 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn3lit6LitStrECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2487)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i8, ptr %i.h, align 8, !range !41, !alias.scope !2488, !noundef !38
  %i.j = icmp eq i8 %i.i, 2
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i = load i64, ptr %i.k, align 8, !alias.scope !2488, !noundef !38 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i, 0
  br i1 %i.l, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.d
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2488, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #24, !noalias !2488
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.d, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn2ty3AbiEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.m)
          to label %bb.g unwind label %bb.e, !inline_history !72

bb.e:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !range !44, !alias.scope !2489, !noundef !38
  %i.q = icmp eq i64 %i.p, -1
  br i1 %i.q, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_8generics14WherePredicateNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %.body unwind label %bb.i, !inline_history !30

bb.g:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !range !44, !alias.scope !2490, !noundef !38
  %i.t = icmp eq i64 %i.s, -1
  br i1 %i.t, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics8GenericsECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_8generics14WherePredicateNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.r)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics8GenericsECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.j, !inline_history !30

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !72
  unreachable

.body:                                            ; preds = %bb.j, %bb.e, %bb.f
  %.pn2 = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.w, %bb.j ], [ %i.n, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.v) #25
          to label %.body9 unwind label %bb.x

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics8GenericsECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.h, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !2492, !nonnull !38, !noundef !38 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !2492, !noundef !38 ; 4 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %.lr.ph
  %i.ad = icmp eq i64 %i.af, %i.ab
  br i1 %i.ad, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics8GenericsECs5ZQXtie4Wk1_17lance_test_macros.exit, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit.i ], [ 0, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics8GenericsECs5ZQXtie4Wk1_17lance_test_macros.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %.sroa.0.0.i32
  %i.af = add i64 %.sroa.0.0.i32, 1               ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item5FnArgECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ae)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %bb.k, !noalias !2491, !inline_history !2467

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit7.i: ; preds = %.lr.ph34
  %i.ag = add i64 %.sroa.0.1.i33, 1               ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.ab
  br i1 %i.ah, label %.body26, label %.lr.ph34

bb.k:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = icmp eq i64 %i.af, %i.ab
  br i1 %i.aj, label %.body26, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.k, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit7.i
  %.sroa.0.1.i33 = phi i64 [ %i.ag, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit7.i ], [ %i.af, %bb.k ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %.sroa.0.1.i33
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item5FnArgECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.ak)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit7.i unwind label %bb.l, !noalias !2491, !inline_history !2467

bb.l:                                             ; preds = %.lr.ph34
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !2491, !inline_history !2468
  unreachable

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics8GenericsECs5ZQXtie4Wk1_17lance_test_macros.exit
  %.val.i = load i64, ptr %i.x, align 8, !range !46, !alias.scope !2491, !noundef !38 ; 2 uses
  %i.am = icmp eq i64 %.val.i, 0
  br i1 %i.am, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtB1d_5token5CommaEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.n

.body26:                                          ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit7.i, %bb.k
  %.val2.i = load i64, ptr %i.x, align 8, !range !46, !alias.scope !2491, !noundef !38 ; 2 uses
  %i.an = icmp eq i64 %.val2.i, 0
  br i1 %i.an, label %.body22, label %bb.m

bb.m:                                             ; preds = %.body26
  %i.ao = mul nuw i64 %.val2.i, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2491, !inline_history !2469
  br label %.body22

bb.n:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.ap = mul nuw i64 %.val.i, 104
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2491, !inline_history !2469
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtB1d_5token5CommaEEECs5ZQXtie4Wk1_17lance_test_macros.exit

.body22:                                          ; preds = %.body26, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4item5FnArgEEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(8) %i.aq) #25
          to label %.body9 unwind label %bb.q, !inline_history !2493

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtB1d_5token5CommaEEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.n, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtBK_5token5CommaEENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2494)
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !2494, !align !37, !noundef !38 ; 4 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.o

bb.o:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecTNtNtCsb2PI9uRnNxu_3syn4item5FnArgNtNtB1d_5token5CommaEEECs5ZQXtie4Wk1_17lance_test_macros.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item5FnArgECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(96) %i.as)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4item5FnArgEECs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %bb.p, !noalias !2495, !inline_history !2496

bb.p:                                             ; preds = %bb.o
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 96, i64 noundef 8) #24, !noalias !2495
  br label %.body9

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtCsb2PI9uRnNxu_3syn4item5FnArgEECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %bb.o
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.as, i64 noundef 96, i64 noundef 8) #24, !noalias !2495
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtNtBG_4item5FnArgNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.q:                                             ; preds = %.body22
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !inline_history !2493
  unreachable

.body9:                                           ; preds = %.body22, %bb.p, %.body
  %.pn4 = phi { ptr, i32 } [ %.pn2, %.body ], [ %i.ai, %.body22 ], [ %i.au, %bb.p ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !44, !alias.scope !2497, !noundef !38
  %i.ay = icmp eq i64 %i.ax, -1
  br i1 %i.ay, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4item8VariadicEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.r

bb.r:                                             ; preds = %.body9
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item8VariadicECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.aw)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4item8VariadicEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.x, !inline_history !2476

end_hunk_2
begin_hunk_3_@_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4stmt9LocalInitECs5ZQXtie4Wk1_17lance_test_macros:bb.a
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 176, i64 noundef 8) #24, !noalias !2735
  br label %common.resume

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtBG_4expr4ExprEEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.d
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 176, i64 noundef 8) #24, !noalias !2735
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEECs5ZQXtie4Wk1_17lance_test_macros.exit1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtB12_4expr4ExprEEEECs5ZQXtie4Wk1_17lance_test_macros.exit1: ; preds = %bb.c, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueTNtNtCsb2PI9uRnNxu_3syn5token4ElseINtNtCs40k4W9msRzi_5alloc5boxed3BoxNtNtBG_4expr4ExprEEECs5ZQXtie4Wk1_17lance_test_macros.exit
  ret void

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error5ErrorECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.a, align 8, !alias.scope !2741, !nonnull !38, !noundef !38 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.b, align 8, !alias.scope !2741, !noundef !38 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  %i.c = icmp eq i64 %.val1.i, 0
  br i1 %i.c, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.e, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.val.i, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.e = add nuw nsw i64 %.sroa.0.011.i.i.i, 1    ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !2742, !noalias !2741 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.f, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !2742, !noalias !2741, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !2743
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.h = icmp eq i64 %i.e, %.val1.i
  br i1 %i.h, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph.i.i.i

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i, %bb.a
  %.val2.i = load i64, ptr %0, align 8, !range !46, !alias.scope !2741, !noundef !38 ; 2 uses
  %i.i = icmp eq i64 %.val2.i, 0
  br i1 %i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.j = mul nuw i64 %.val2.i, 40
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2741
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageEECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn5error12ErrorMessageENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn5parse11ParseBufferECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXNtCsb2PI9uRnNxu_3syn5parseNtB2_11ParseBufferNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2764)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2765)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2766)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2767, !noundef !38 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.c, align 8, !noalias !2768, !noundef !38
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.c, align 8, !noalias !2768
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2769)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2770)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2771)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2772, !noundef !38 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !noalias !2773, !noundef !38
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.i, align 8, !noalias !2773
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit1

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtCscI6d9CVNmLh_4core4cell4CellNtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEE9drop_slowB1f_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit1

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit1: ; preds = %bb.e, %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_4cell4CellINtNtB4_6option6OptionINtNtCs40k4W9msRzi_5alloc2rc2RcIBC_NtNtCsb2PI9uRnNxu_3syn5parse10UnexpectedEEEEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.c, %bb.b, %bb.d
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer11TokenBufferECs5ZQXtie4Wk1_17lance_test_macros(ptr %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %cond = icmp eq i64 %.8.val, 0
  br i1 %cond, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSNtNtCsb2PI9uRnNxu_3syn6buffer5EntryEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = icmp eq i64 %i.c, %.8.val
  br i1 %i.a, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.c = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer5EntryECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.b)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.d = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.e = icmp eq i64 %i.d, %.8.val
  br i1 %i.e, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %i.c, %.8.val
  br i1 %i.g, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.d, %bb.c ], [ %i.c, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer5EntryECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.h) #25
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph3
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c, %bb.d
  %i.j = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.j, i64 noundef 8) #24
  resume { ptr, i32 } %i.f

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.b
  %i.k = shl nuw nsw i64 %.8.val, 5
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.k, i64 noundef 8) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSNtNtCsb2PI9uRnNxu_3syn6buffer5EntryEECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc5boxed3BoxSNtNtCsb2PI9uRnNxu_3syn6buffer5EntryEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.a, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i4.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn6buffer5EntryECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 8, !range !2804, !noundef !38 ; 3 uses
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = zext nneg i32 %i.a to i64
  %i.d = add nsw i64 %i.c, -1
  %i.e = select i1 %i.b, i64 %i.d, i64 0
  switch i64 %i.e, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit [
    i64 0, label %bb.b
    i64 1, label %bb.k
    i64 3, label %bb.m
  ]

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.n, %bb.m, %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.l, %bb.k, %bb.i, %bb.h, %bb.d, %bb.c, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %1 = icmp eq i32 %i.a, 0
  br i1 %1, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !alias.scope !2805, !noundef !38
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvXs0_NtNtCs50gxqRnCXtk_10proc_macro6bridge6clientNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.e:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  invoke void @_RNvXs0_NtCs7xemmV0rX3c_11proc_macro28fallbackNtB5_11TokenStreamNtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2806)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2807)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2808)
  %i.k = load ptr, ptr %i.i, align 8, !alias.scope !2809, !nonnull !38, !noundef !38 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !2810, !noundef !38
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !2810
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7xemmV0rX3c_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs7xemmV0rX3c_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7xemmV0rX3c_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i unwind label %bb.j

bb.h:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2811)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2812)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2813)
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !2814, !nonnull !38, !noundef !38 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noalias !2815, !noundef !38
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !noalias !2815
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RNvMs6_NtCs40k4W9msRzi_5alloc2rcINtB5_2RcINtNtB7_3vec3VecNtCs7xemmV0rX3c_11proc_macro29TokenTreeEE9drop_slowBV_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs7xemmV0rX3c_11proc_macro25rcvec5RcVecNtBG_9TokenTreeEECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.j

bb.k:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2817)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i8, ptr %i.u, align 8, !range !41, !alias.scope !2818, !noundef !38
  %i.w = icmp eq i8 %i.v, 2
  br i1 %i.w, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.x, align 8, !alias.scope !2818, !noundef !38 ; 2 uses
  %i.y = icmp eq i64 %.val1.i.i, 0
  br i1 %i.y, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.l
  %.val.i.i = load ptr, ptr %i.t, align 8, !alias.scope !2818, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #24, !noalias !2818
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.m:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.z, align 8, !range !44, !noundef !38 ; 2 uses
  %i.aa = icmp sgt i64 %.val, 0
  br i1 %i.aa, label %bb.n, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.ab, align 8, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #24
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25GroupECs5ZQXtie4Wk1_17lance_test_macros.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn8generics10ConstParamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(464) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2832)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !2833, !nonnull !38, !noundef !38 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !2833, !noundef !38 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %.sroa.0.0.i7 = phi i64 [ %i.i, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %.sroa.0.0.i7
  %i.i = add i64 %.sroa.0.0.i7, 1                 ; 4 uses
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr4MetaECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.h)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %bb.b, !noalias !2832, !inline_history !25

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i: ; preds = %.lr.ph9
  %i.j = add i64 %.sroa.0.1.i8, 1                 ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body5, label %.lr.ph9

bb.b:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body5, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.b, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i
  %.sroa.0.1.i8 = phi i64 [ %i.j, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [256 x i8], ptr %i.c, i64 %.sroa.0.1.i8
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr4MetaECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.n)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i unwind label %bb.c, !noalias !2832, !inline_history !25

bb.c:                                             ; preds = %.lr.ph9
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !2832, !inline_history !26
  unreachable

_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit.i, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !range !46, !alias.scope !2832, !noundef !38 ; 2 uses
  %i.p = icmp eq i64 %.val.i, 0
  br i1 %i.p, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.e

.body5:                                           ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4attr9AttributeECs5ZQXtie4Wk1_17lance_test_macros.exit7.i, %bb.b
  %.val2.i = load i64, ptr %i.a, align 8, !range !46, !alias.scope !2832, !noundef !38 ; 2 uses
  %i.q = icmp eq i64 %.val2.i, 0
  br i1 %i.q, label %.body, label %bb.d

bb.d:                                             ; preds = %.body5
  %i.r = shl nuw i64 %.val2.i, 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2832, !inline_history !65
  br label %.body

bb.e:                                             ; preds = %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.s = shl nuw i64 %.val.i, 8
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !2832, !inline_history !65
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit

.body:                                            ; preds = %.body5, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(24) %i.t) #25
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %0) #25
          to label %bb.g unwind label %bb.l

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.e, %_RNvXso_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeENtNtNtCscI6d9CVNmLh_4core3ops4drop4Drop4dropCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 432
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2835)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.w = load i8, ptr %i.v, align 8, !range !41, !alias.scope !2836, !noundef !38
  %i.x = icmp eq i8 %i.w, 2
  br i1 %i.x, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.val1.i.i = load i64, ptr %i.y, align 8, !alias.scope !2836, !noundef !38 ; 2 uses
  %i.z = icmp eq i64 %.val1.i.i, 0
  br i1 %i.z, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit, label %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.f
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !2836, !nonnull !38, !noundef !38
  tail call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #24, !noalias !2836
  br label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit

_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %_RNvXs_NtCs40k4W9msRzi_5alloc5allocNtB4_6GlobalNtNtCscI6d9CVNmLh_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.f, %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc3vec3VecNtNtCsb2PI9uRnNxu_3syn4attr9AttributeEECs5ZQXtie4Wk1_17lance_test_macros.exit
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn2ty4TypeECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(224) %0)
          to label %bb.j unwind label %bb.i

bb.g:                                             ; preds = %bb.i, %.body
  %.pn2 = phi { ptr, i32 } [ %i.ad, %bb.i ], [ %i.l, %.body ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !range !70, !alias.scope !2837, !noundef !38
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4expr4ExprEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4expr4ExprECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef nonnull align 8 dereferenceable(176) %i.aa)
          to label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsb2PI9uRnNxu_3syn4expr4ExprEECs5ZQXtie4Wk1_17lance_test_macros.exit unwind label %bb.l, !inline_history !2829

bb.i:                                             ; preds = %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro25IdentECs5ZQXtie4Wk1_17lance_test_macros.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
end_hunk_3
begin_hunk_4_@_RINvNvNtNtCs50gxqRnCXtk_10proc_macro6bridge14selfless_reify31reify_to_extern_c_fn_hrt_bridge7wrapperNtNtB6_6buffer6BufferNCINvMsh_NtB6_6clientINtB24_6ClientTNtB8_11TokenStreamB2v_EB2v_E7expand2NvCs5ZQXtie4Wk1_17lance_test_macros4testE0EB37_:bb.a

bb.cg:                                            ; preds = %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !3539
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3536
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3535, !noalias !3536
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3535, !noalias !3536
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3535, !noalias !3536
  %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i, align 8, !alias.scope !3535, !noalias !3536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !3539
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.hs = load ptr, ptr %i.hr, align 8, !noalias !3539, !nonnull !38, !noundef !38
  call void %i.hs(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.af, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ag, i64 noundef 8) #24, !noalias !3539, !inline_history !3451
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3536, !inline_history !3452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.af, i64 40, i1 false), !noalias !3536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !3539
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3539
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3535, !noalias !3536
  %.pre.i5.i.i.i.i.i = load i64, ptr %i.gn, align 8, !alias.scope !3540, !noalias !3541
  %.pre3.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3535, !noalias !3536
  br label %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i

_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i: ; preds = %bb.cg, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i
  %i.ht = phi ptr [ %i.hk, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre3.i.i.i.i.i, %bb.cg ] ; 2 uses
  %i.hu = phi i64 [ %i.hl, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre.i5.i.i.i.i.i, %bb.cg ]
  %i.hv = phi i64 [ %i.ho, %_RNvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB5_6Buffer4push.exit.i.i.i.i.i ], [ %.pre.i.i.i.i.i.i.i, %bb.cg ] ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.hv
  store i64 %.sroa.5.sroa.4.0.copyload.i.i, ptr %i.hw, align 1, !noalias !3539
  %i.hx = add i64 %i.hv, 8                        ; 3 uses
  store i64 %i.hx, ptr %i.gm, align 8, !alias.scope !3535, !noalias !3536
  call void @llvm.experimental.noalias.scope.decl(metadata !3542)
  %i.hy = sub i64 %i.hu, %i.hx
  %i.hz = icmp ugt i64 %.sroa.5.sroa.4.0.copyload.i.i, %i.hy
  br i1 %i.hz, label %bb.ch, label %bb.ck

bb.ch:                                            ; preds = %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !3543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3541
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3540, !noalias !3541
  %.sroa.6.0..sroa_idx.i1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3540, !noalias !3541
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i1.i.i.i.i.i.i, align 8, !alias.scope !3540, !noalias !3541
  %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i2.i.i.i.i.i.i, align 8, !alias.scope !3540, !noalias !3541
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !3543
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !noalias !3543, !nonnull !38, !noundef !38
  call void %i.ib(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ad, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i) #24, !noalias !3543, !inline_history !3456
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3541, !inline_history !3452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false), !noalias !3541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !3543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !3543
  %.pre.i3.i.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3540, !noalias !3541
  %.pre1.i.i.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3540, !noalias !3541
  br label %bb.ck

bb.ci:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !3544)
  call void @llvm.experimental.noalias.scope.decl(metadata !3545)
  %i.ic = load i64, ptr %i.gn, align 8, !alias.scope !3546, !noalias !3533, !noundef !38
  %i.id = icmp eq i64 %i.hd, %i.ic
  br i1 %i.id, label %bb.cj, label %.thread.i.i.i.i

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !3547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3533
  store ptr inttoptr (i64 1 to ptr), ptr %i.ao, align 8, !alias.scope !3546, !noalias !3533
  %.sroa.6.0..sroa_idx.i6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gm, i8 0, i64 16, i1 false), !alias.scope !3546, !noalias !3533
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from7reserve, ptr %.sroa.6.0..sroa_idx.i6.i.i.i.i.i, align 8, !alias.scope !3546, !noalias !3533
  %.sroa.7.0..sroa_idx.i7.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop, ptr %.sroa.7.0..sroa_idx.i7.i.i.i.i.i, align 8, !alias.scope !3546, !noalias !3533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !3547
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !3547, !nonnull !38, !noundef !38
  call void %i.if(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ab, ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ac, i64 noundef 1) #24, !noalias !3547, !inline_history !3444
  call void @_RNvNvXs6_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB7_6BufferINtNtCscI6d9CVNmLh_4core7convert4FromINtNtCs40k4W9msRzi_5alloc3vec3VechEE4from4drop(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3533, !inline_history !3445
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ao, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !3533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !3547
  %.pre.i8.i.i.i.i.i = load i64, ptr %i.gm, align 8, !alias.scope !3546, !noalias !3533
  %.pre7.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !3546, !noalias !3533
  br label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.cj, %bb.ci
  %i.ig = phi ptr [ %i.hb, %bb.ci ], [ %.pre7.i.i.i, %bb.cj ]
  %i.ih = phi i64 [ %i.hd, %bb.ci ], [ %.pre.i8.i.i.i.i.i, %bb.cj ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ih
  store i8 1, ptr %i.ii, align 1, !noalias !3547
  %i.ij = add i64 %i.ih, 1
  store i64 %i.ij, ptr %i.gm, align 8, !alias.scope !3548, !noalias !3533
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i

bb.ck:                                            ; preds = %bb.ch, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i
  %i.ik = phi ptr [ %i.ht, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i ], [ %.pre1.i.i.i.i.i.i, %bb.ch ]
  %i.il = phi i64 [ %i.hx, %_RINvMs3_NtNtCs50gxqRnCXtk_10proc_macro6bridge6bufferNtB6_6Buffer17extend_from_arrayKj8_ECs5ZQXtie4Wk1_17lance_test_macros.exit.i.i.i.i.i.i ], [ %.pre.i3.i.i.i.i.i.i, %bb.ch ] ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.il
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.im, ptr nonnull readonly align 1 %.sroa.5.sroa.0.0.copyload.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.5.sroa.4.0.copyload.i.i, i1 false), !noalias !3549
  %i.in = add i64 %i.il, %.sroa.5.sroa.4.0.copyload.i.i
  store i64 %i.in, ptr %i.gm, align 8, !alias.scope !3548, !noalias !3533
  %or.cond.i6.i.i.i.i = icmp slt i64 %.sroa.0.0.copyload.i.i, 1
  br i1 %or.cond.i6.i.i.i.i, label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.0.0.copyload.i.i, i64 noundef %.sroa.0.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #24, !noalias !3550
  br label %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i

.critedge.body:                                   ; preds = %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i, %bb.bx
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !3460, !nonnull !38, !noundef !38
  call void %.sroa.3.0.copyload.i(ptr noalias noundef nonnull byval([40 x i8]) align 8 captures(address) dereferenceable(40) %i.ao) #24, !noalias !3460, !inline_history !3459
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking19panic_cannot_unwind() #26
  unreachable

bb.cm:                                            ; preds = %_RNvXNvNtCs50gxqRnCXtk_10proc_macro6bridges4_1__INtNtCscI6d9CVNmLh_4core6result6ResultuNtNtB4_3rpc12PanicMessageEINtB1o_6EncodeuE6encodeCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.ao, i64 40, i1 false), !noalias !3551
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3460
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvCs5ZQXtie4Wk1_17lance_test_macros14expand_wrapper(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(352) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [32 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 10 uses
  %i.r = alloca [32 x i8], align 8                ; 4 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 8 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [32 x i8], align 8                ; 8 uses
  %i.w = alloca [32 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 66 uses
  %i.y = alloca [32 x i8], align 8                ; 4 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [32 x i8], align 8               ; 83 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [32 x i8], align 8               ; 6 uses
  %i.af = alloca [32 x i8], align 8               ; 4 uses
  %i.ag = alloca [32 x i8], align 8               ; 24 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 6 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 5 uses
  %i.al = alloca [32 x i8], align 8               ; 8 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [32 x i8], align 8               ; 7 uses
  %i.ao = alloca [4 x i8], align 4                ; 4 uses
  %.sroa.5.i.i.i = alloca [24 x i8], align 8      ; 5 uses
  %i.ap = alloca [32 x i8], align 8               ; 8 uses
  %.sroa.412.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.aq = alloca [32 x i8], align 8               ; 10 uses
  %i.ar = alloca [32 x i8], align 8               ; 8 uses
  %i.as = alloca [32 x i8], align 8               ; 4 uses
  %i.at = alloca [32 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 6 uses
  %i.av = alloca [32 x i8], align 8               ; 4 uses
  %i.aw = alloca [32 x i8], align 8               ; 14 uses
  %i.ax = alloca [32 x i8], align 8               ; 4 uses
  %i.ay = alloca [32 x i8], align 8               ; 4 uses
  %i.az = alloca [32 x i8], align 8               ; 15 uses
  %i.ba = alloca [32 x i8], align 8               ; 4 uses
  %i.bb = alloca [32 x i8], align 8               ; 6 uses
  %i.bc = alloca [32 x i8], align 8               ; 4 uses
  %i.bd = alloca [32 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 4 uses
  %i.bf = alloca [32 x i8], align 8               ; 25 uses
  %i.bg = alloca [32 x i8], align 8               ; 4 uses
  %i.bh = alloca [32 x i8], align 8               ; 8 uses
  %i.bi = alloca [32 x i8], align 8               ; 4 uses
  %i.bj = alloca [32 x i8], align 8               ; 6 uses
  %i.bk = alloca [32 x i8], align 8               ; 4 uses
  %i.bl = alloca [32 x i8], align 8               ; 14 uses
  %i.bm = alloca [32 x i8], align 8               ; 6 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [32 x i8], align 8               ; 8 uses
  %i.bp = alloca [32 x i8], align 8               ; 8 uses
  %i.bq = alloca [32 x i8], align 8               ; 7 uses
  %i.br = alloca [32 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.bt = load i32, ptr %i.bs, align 8, !range !3620, !noundef !38 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 220 ; 2 uses
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bq)
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.br)
          to label %bb.j unwind label %bb.e

bb.d:                                             ; preds = %.body, %bb.g, %bb.e
  %.pn16 = phi { ptr, i32 } [ %i.bv, %bb.e ], [ %.pn14, %.body ], [ %i.bw, %bb.g ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsb2PI9uRnNxu_3syn4item6ItemFnECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(352) %2) #25
          to label %bb.nb unwind label %bb.al

bb.e:                                             ; preds = %bb.mz, %bb.c, %bb.b
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private8push_dot(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.h, %bb.f
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bq) #25
          to label %bb.d unwind label %bb.al

bb.h:                                             ; preds = %bb.f
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bq, ptr noalias noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 5)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.br, ptr noundef nonnull align 8 dereferenceable(32) %i.bq, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  br label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bp)
  call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  call void @llvm.experimental.noalias.scope.decl(metadata !3622)
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.val.i.i = load ptr, ptr %i.by, align 8, !alias.scope !3623, !noalias !3624, !nonnull !38, !noundef !38 ; 8 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 128
  %.val1.i.i = load i64, ptr %i.bz, align 8, !alias.scope !3623, !noalias !3624, !noundef !38 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !3625, !noalias !3624, !align !37, !noundef !38 ; 6 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !3626
  %i.cc = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, 9223372036854775801) 24, i64 noundef 8) #24, !noalias !3626 ; 8 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.k, label %_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterCs5ZQXtie4Wk1_17lance_test_macros.exit.i, !prof !79

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs40k4W9msRzi_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.k
  unreachable

_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %bb.j
  %.idx.i = mul nuw nsw i64 %.val1.i.i, 104
  %i.ce = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i ; 3 uses
  store ptr %.val.i.i, ptr %i.cc, align 8, !noalias !3627
  %.sroa.24.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  store ptr %i.ce, ptr %.sroa.24.0..sroa_idx.i.i, align 8, !noalias !3627
  %.sroa.35.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 16 ; 3 uses
  store ptr %i.cb, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !noalias !3627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !3628
  store i64 0, ptr %i.aq, align 8, !alias.scope !3629, !noalias !3630
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !3629, !noalias !3630
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx.i.i.i, i8 0, i64 16, i1 false), !alias.scope !3629, !noalias !3630
  call void @llvm.experimental.noalias.scope.decl(metadata !3631)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.412.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx17.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.2.0..sroa_idx.i4.i.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.aq, i64 24 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ch = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ch, label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i, label %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.thread.i.i

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.thread.i.i: ; preds = %_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 104 ; 2 uses
  store ptr %i.ci, ptr %i.cc, align 8, !alias.scope !3632, !noalias !3633
  br label %.lr.ph.i.i.preheader

_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i: ; preds = %_RNvMNtCsb2PI9uRnNxu_3syn10punctuatedINtB2_10PunctuatedNtNtB4_4item5FnArgNtNtB4_5token5CommaE4iterCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  store ptr null, ptr %.sroa.35.0..sroa_idx.i.i, align 8, !alias.scope !3634, !noalias !3635
  %.not.i.i8.i.i = icmp eq ptr %i.cb, null
  br i1 %.not.i.i8.i.i, label %.loopexit65, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.thread.i.i
  %.ph = phi ptr [ null, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i ], [ %i.cb, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.thread.i.i ]
  %.ph120.a = phi ptr [ %.val.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i ], [ %i.ci, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.thread.i.i ]
  %.ph121 = phi ptr [ %i.cb, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.i.i ], [ %.val.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit.thread.i.i ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i
  %i.cj = phi ptr [ %i.dw, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i ], [ %.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ck = phi ptr [ %i.dx, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i ], [ %.ph120.a, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cl = phi ptr [ %i.dd, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.preheader ] ; 2 uses
  %i.cm = phi i64 [ %i.de, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 6 uses
  %.val.i.i.i.i = phi ptr [ %i.df, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i ], [ null, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.cn = phi ptr [ %.sroa.0.0.i1.i24.i.i, %_RNvXsw_NtCsb2PI9uRnNxu_3syn10punctuatedINtB5_11PrivateIterNtNtB7_4item5FnArgNtNtB7_5token5CommaENtNtNtNtCscI6d9CVNmLh_4core4iter6traits8iterator8Iterator4nextCs5ZQXtie4Wk1_17lance_test_macros.exit25.i.i ], [ %.ph121, %.lr.ph.i.i.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3636)
  %i.co = load i64, ptr %i.cn, align 8, !range !44, !alias.scope !3636, !noalias !3637, !noundef !38
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !3638
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.am)
          to label %.noexc6.i.i.i unwind label %bb.s, !noalias !3633

.noexc6.i.i.i:                                    ; preds = %bb.l
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !3636, !noalias !3637, !nonnull !38, !noundef !38
  invoke void @_RNvXse_NtCsb2PI9uRnNxu_3syn3patNtB5_3PatNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.cr, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am)
          to label %bb.r unwind label %bb.q, !noalias !3638

bb.m:                                             ; preds = %.lr.ph.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !3638
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 88
  %i.ct = load i32, ptr %i.cs, align 8, !alias.scope !3636, !noalias !3637, !noundef !38
  store i32 %i.ct, ptr %i.ao, align 4, !noalias !3638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !3638
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.an)
          to label %.noexc7.i.i.i unwind label %bb.s, !noalias !3633

.noexc7.i.i.i:                                    ; preds = %bb.m
  invoke void @_RNvXs7h_NtCsb2PI9uRnNxu_3syn5tokenNtB6_9SelfValueNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ao, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %bb.o unwind label %bb.n, !noalias !3638

bb.n:                                             ; preds = %.noexc7.i.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.an) #25
          to label %.body.i.i.i unwind label %bb.p, !noalias !3638

bb.o:                                             ; preds = %.noexc7.i.i.i
  %.sroa.015.0.copyload.i.i.i = load i64, ptr %i.an, align 8, !noalias !3639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, i64 24, i1 false), !noalias !3639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !3638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !3638
  br label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit.i.i.i

bb.p:                                             ; preds = %bb.q, %bb.n
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !3638
  unreachable

bb.q:                                             ; preds = %.noexc6.i.i.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.am) #25
          to label %.body.i.i.i unwind label %bb.p, !noalias !3638

bb.r:                                             ; preds = %.noexc6.i.i.i
  %.sroa.015.0.copyload16.i.i.i = load i64, ptr %i.am, align 8, !noalias !3639
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx17.i.i.i, i64 24, i1 false), !noalias !3639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !3638
  br label %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit.i.i.i

bb.s:                                             ; preds = %bb.m, %bb.l
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %.body.thread.i.i.i.i, %bb.ac, %bb.y, %bb.s, %bb.q, %bb.n
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.n ], [ %i.cw, %bb.q ], [ %i.cx, %bb.s ], [ %eh.lpad-body.ph.i.i.i.i, %.body.thread.i.i.i.i ], [ %i.dh, %bb.y ], [ %i.dj, %bb.ac ]
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB1e_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0EEB2b_(ptr nonnull %i.cc, ptr nonnull readonly align 8 dereferenceable(104) @66) #25, !noalias !3640
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCsb2PI9uRnNxu_3syn10punctuated10PunctuatedNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtNtBG_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.aq) #25
          to label %.body unwind label %bb.ak, !noalias !3630

_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit.i.i.i: ; preds = %bb.r, %bb.o
  %.sroa.015.0.i.i.i = phi i64 [ %.sroa.015.0.copyload16.i.i.i, %bb.r ], [ %.sroa.015.0.copyload.i.i.i, %bb.o ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.i.i.i, i64 24, i1 false), !noalias !3633
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %.not.i.i.i = icmp eq i64 %.sroa.015.0.i.i.i, -2
  br i1 %.not.i.i.i, label %.loopexit65, label %bb.t

bb.t:                                             ; preds = %_RNvXs0_NtNtNtCscI6d9CVNmLh_4core4iter8adapters3mapINtB5_3MapINtNtCsb2PI9uRnNxu_3syn10punctuated4IterNtNtB11_4item5FnArgENCNvCs5ZQXtie4Wk1_17lance_test_macros12extract_args0ENtNtNtB9_6traits8iterator8Iterator4nextB1Y_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !3633
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i4.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.412.i.i.i, i64 24, i1 false), !noalias !3633
  store i64 %.sroa.015.0.i.i.i, ptr %i.ap, align 8, !noalias !3633
  call void @llvm.experimental.noalias.scope.decl(metadata !3641)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !3633
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %.thread.i.i.i.i, label %bb.v

.thread.i.i.i.i:                                  ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, i64 32, i1 false), !noalias !3642
  br label %.sink.split.i.i.i
end_hunk_4
begin_hunk_5_@_RNvCs5ZQXtie4Wk1_17lance_test_macros14expand_wrapper:bb.a
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.e) #25
          to label %bb.bu unwind label %bb.ji, !noalias !3662

bb.iu:                                            ; preds = %bb.iz, %bb.is
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.it

bb.iv:                                            ; preds = %bb.is
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 6)
          to label %bb.ix unwind label %bb.iw, !noalias !3662

bb.iw:                                            ; preds = %bb.iy, %bb.ix, %bb.iv
  %i.es = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.c) #25
          to label %bb.it unwind label %bb.ji, !noalias !3662

bb.ix:                                            ; preds = %bb.iv
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_comma(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %bb.iy unwind label %bb.iw, !noalias !3662

bb.iy:                                            ; preds = %bb.ix
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) @56, i64 noundef 9)
          to label %bb.iz unwind label %bb.iw, !noalias !3662

bb.iz:                                            ; preds = %bb.iy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3662
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d)
          to label %bb.ja unwind label %bb.iu, !noalias !3662

bb.ja:                                            ; preds = %bb.iz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3662
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f)
          to label %bb.jb unwind label %bb.bv, !noalias !3662

bb.jb:                                            ; preds = %bb.ja
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, i64 32, i1 false), !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !3662
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ag, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ab)
          to label %bb.jc unwind label %bb.aw, !noalias !3662

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !3662
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 4)
          to label %bb.jd unwind label %bb.aw, !noalias !3662

bb.jd:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3662
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.je unwind label %bb.aw, !noalias !3662

bb.je:                                            ; preds = %bb.jd
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 4)
          to label %bb.jg unwind label %bb.jf, !noalias !3662

bb.jf:                                            ; preds = %bb.je
  %i.et = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.a) #25
          to label %bb.av unwind label %bb.ji, !noalias !3662

bb.jg:                                            ; preds = %bb.je
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3662
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ag, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.jh unwind label %bb.aw, !noalias !3662

bb.jh:                                            ; preds = %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !noalias !3662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !3662
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.jo unwind label %bb.at, !noalias !3662

bb.ji:                                            ; preds = %bb.jf, %bb.iw, %bb.it, %bb.in, %bb.hx, %bb.hg, %bb.ga, %bb.fq, %bb.fa, %bb.eq, %bb.cg, %bb.bu, %bb.bo, %bb.bg, %bb.av, %bb.as
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #26, !noalias !3662
  unreachable

bb.jj:                                            ; preds = %bb.an
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private11push_rarrow(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %bb.jl unwind label %bb.jk

bb.jk:                                            ; preds = %bb.jl, %bb.jj
  %i.ev = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bn) #25
          to label %bb.ap unwind label %bb.al

bb.jl:                                            ; preds = %bb.jj
  invoke void @_RNvXsc_NtCsb2PI9uRnNxu_3syn2tyNtB5_4TypeNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(224) %i.ec, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bn)
          to label %bb.jm unwind label %bb.jk

bb.jm:                                            ; preds = %bb.jl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bo, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  br label %bb.ar

.body21:                                          ; preds = %bb.jn, %bb.as, %bb.jp
  %.pn10 = phi { ptr, i32 } [ %.pn7.pn, %bb.jp ], [ %i.ew, %bb.jn ], [ %.pn8.i, %bb.as ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bo) #25
          to label %bb.ap unwind label %bb.al

bb.jn:                                            ; preds = %bb.ar, %bb.mw
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %.body21

bb.jo:                                            ; preds = %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !3662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %i.ai, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !3662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bl)
          to label %bb.jr unwind label %bb.jq

bb.jp:                                            ; preds = %bb.js, %bb.jq
  %.pn7.pn = phi { ptr, i32 } [ %.pn7, %bb.js ], [ %i.ex, %bb.jq ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bm) #25
          to label %.body21 unwind label %bb.al

bb.jq:                                            ; preds = %bb.jo
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.jp

bb.jr:                                            ; preds = %bb.jo
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_pound(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.jt unwind label %.loopexit.split-lp

bb.js:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.km, %bb.kc, %bb.jv
  %.pn7 = phi { ptr, i32 } [ %i.ey, %bb.jv ], [ %.pn5, %bb.km ], [ %lpad.phi119, %bb.kc ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bl) #25
          to label %bb.jp unwind label %bb.al

.loopexit:                                        ; preds = %.lr.ph
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

.loopexit.split-lp:                               ; preds = %bb.jr, %bb.jt, %bb.jw, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.kh, %bb.ki, %bb.mv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.js

bb.jt:                                            ; preds = %bb.jr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bj)
          to label %bb.ju unwind label %.loopexit.split-lp

bb.ju:                                            ; preds = %bb.jt
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %bb.jw unwind label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.ey = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bj) #25
          to label %bb.js unwind label %bb.al

bb.jw:                                            ; preds = %bb.ju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, i8 noundef 2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bk)
          to label %bb.jx unwind label %.loopexit.split-lp

bb.jx:                                            ; preds = %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.fa = load ptr, ptr %i.ez, align 8, !nonnull !38, !noundef !38 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.fc = load i64, ptr %i.fb, align 8, !noundef !38 ; 2 uses
  %.idx = shl nuw nsw i64 %i.fc, 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx
  invoke void @_RNvXs0_NtCsj1iVQvtAHZj_5quote9___privateINtB5_11HasIteratorKb0_EINtNtNtCscI6d9CVNmLh_4core3ops3bit5BitOrIBD_Kb1_EE5bitor()
          to label %.preheader64.preheader unwind label %.loopexit.split-lp

.preheader64.preheader:                           ; preds = %bb.jx
  %i.fe = icmp eq i64 %i.fc, 0
  br i1 %i.fe, label %.preheader64._crit_edge, label %.lr.ph

.preheader64:                                     ; preds = %.lr.ph
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.01.0105, i64 256 ; 2 uses
  %i.fg = icmp eq ptr %i.ff, %i.fd
  br i1 %i.fg, label %.preheader64._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader64.preheader, %.preheader64
  %.sroa.01.0105 = phi ptr [ %i.ff, %.preheader64 ], [ %i.fa, %.preheader64.preheader ] ; 2 uses
  invoke void @_RNvXNtNtCsb2PI9uRnNxu_3syn4attr8printingNtB4_9AttributeNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %.sroa.01.0105, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %.preheader64 unwind label %.loopexit

.preheader64._crit_edge:                          ; preds = %.preheader64, %.preheader64.preheader
  %3 = trunc nuw i32 %i.bt to i1                  ; 2 uses
  br i1 %3, label %bb.jy, label %bb.jz

bb.jy:                                            ; preds = %.preheader64._crit_edge
  invoke void @_RNvXs14_NtCsb2PI9uRnNxu_3syn5tokenNtB6_5AsyncNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.jz unwind label %.loopexit.split-lp

bb.jz:                                            ; preds = %bb.jy, %.preheader64._crit_edge
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 2)
          to label %bb.ka unwind label %.loopexit.split-lp

bb.ka:                                            ; preds = %bb.jz
  invoke void @_RNvXsq_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.kb unwind label %.loopexit.split-lp

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bh)
          to label %bb.kd unwind label %.loopexit.split-lp

.loopexit115:                                     ; preds = %bb.kg, %.noexc24
  %lpad.loopexit117 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

.loopexit.split-lp116:                            ; preds = %bb.kf
  %lpad.loopexit.split-lp118 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kc

bb.kc:                                            ; preds = %.loopexit.split-lp116, %.loopexit115
  %lpad.phi119 = phi { ptr, i32 } [ %lpad.loopexit117, %.loopexit115 ], [ %lpad.loopexit.split-lp118, %.loopexit.split-lp116 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bh) #25
          to label %bb.js unwind label %bb.al

bb.kd:                                            ; preds = %bb.kb
  %i.fh = getelementptr inbounds nuw [104 x i8], ptr %.val.i.i, i64 %.val1.i.i ; 4 uses
  br label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer

_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer: ; preds = %bb.kf, %bb.kd
  %.sroa.4.0.i.ph = phi ptr [ null, %bb.kf ], [ %i.cb, %bb.kd ] ; 2 uses
  %.sroa.0.0.i.ph = phi ptr [ %i.fh, %bb.kf ], [ %.val.i.i, %bb.kd ]
  br label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i

_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i: ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer, %.noexc24
  %.sroa.0.0.i = phi ptr [ %i.fk, %.noexc24 ], [ %.sroa.0.0.i.ph, %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i) ]
  %i.fi = icmp eq ptr %.sroa.0.0.i, %i.fh
  br i1 %i.fi, label %bb.ke, label %bb.kg

bb.ke:                                            ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.4.0.i.ph, null
  br i1 %.not.i.i.i.i.i, label %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  invoke void @_RNvXsI_NtCsb2PI9uRnNxu_3syn4itemNtB5_5FnArgNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.4.0.i.ph, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i.outer unwind label %.loopexit.split-lp116

bb.kg:                                            ; preds = %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i
  invoke void @_RNvXsI_NtCsb2PI9uRnNxu_3syn4itemNtB5_5FnArgNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %.noexc24 unwind label %.loopexit115

.noexc24:                                         ; preds = %bb.kg
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 96
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 104
  invoke void @_RNvXsas_NtCsb2PI9uRnNxu_3syn5tokenNtB6_5CommaNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bh)
          to label %_RNvXs_NtNtCsb2PI9uRnNxu_3syn10punctuated8printingINtB6_4PairRNtNtB8_4item5FnArgRNtNtB8_5token5CommaENtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokensCs5ZQXtie4Wk1_17lance_test_macros.exit.i unwind label %.loopexit115

_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit: ; preds = %bb.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bh, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bi)
          to label %bb.kh unwind label %.loopexit.split-lp

bb.kh:                                            ; preds = %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bl)
          to label %bb.ki unwind label %.loopexit.split-lp

bb.ki:                                            ; preds = %bb.kh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bf)
          to label %bb.kj unwind label %.loopexit.split-lp

bb.kj:                                            ; preds = %bb.ki
  br i1 %3, label %bb.kk, label %bb.kl

bb.kk:                                            ; preds = %bb.kj
  invoke void @_RNvXs14_NtCsb2PI9uRnNxu_3syn5tokenNtB6_5AsyncNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.bu, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.kl unwind label %bb.kn

bb.kl:                                            ; preds = %bb.kk, %bb.kj
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 2)
          to label %bb.ko unwind label %bb.kn

bb.km:                                            ; preds = %bb.mp, %bb.ld, %bb.kx, %bb.kq, %bb.kn
  %.pn5 = phi { ptr, i32 } [ %i.fl, %bb.kn ], [ %lpad.phi, %bb.mp ], [ %.pn, %bb.ld ], [ %i.fr, %bb.kx ], [ %lpad.phi114, %bb.kq ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bf) #25
          to label %bb.js unwind label %bb.al

bb.kn:                                            ; preds = %bb.mu, %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsBv_NtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit, %bb.mo, %bb.mn, %bb.mm, %bb.ml, %bb.mk, %bb.mj, %bb.mi, %bb.mh, %bb.mg, %bb.mf, %bb.me, %bb.md, %bb.lb, %bb.la, %bb.kz, %bb.ky, %bb.kv, %bb.ku, %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit42, %bb.kp, %bb.ko, %bb.kl, %bb.kk
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.ko:                                            ; preds = %bb.kl
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 9)
          to label %bb.kp unwind label %bb.kn

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bd)
          to label %.preheader.outer unwind label %bb.kn

.loopexit110:                                     ; preds = %bb.kt, %.noexc40
  %lpad.loopexit112 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

.loopexit.split-lp111:                            ; preds = %bb.ks
  %lpad.loopexit.split-lp113 = landingpad { ptr, i32 }
          cleanup
  br label %bb.kq

bb.kq:                                            ; preds = %.loopexit.split-lp111, %.loopexit110
  %lpad.phi114 = phi { ptr, i32 } [ %lpad.loopexit112, %.loopexit110 ], [ %lpad.loopexit.split-lp113, %.loopexit.split-lp111 ]
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bd) #25
          to label %bb.km unwind label %bb.al

.preheader:                                       ; preds = %.preheader.outer, %.noexc40
  %.sroa.0.0.i34 = phi ptr [ %i.fo, %.noexc40 ], [ %.sroa.0.0.i34.ph, %.preheader.outer ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i34) ]
  %i.fm = icmp eq ptr %.sroa.0.0.i34, %i.fh
  br i1 %i.fm, label %bb.kr, label %bb.kt

bb.kr:                                            ; preds = %.preheader
  %.not.i.i.i.i.i38 = icmp eq ptr %.sroa.4.0.i33.ph, null
  br i1 %.not.i.i.i.i.i38, label %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit42, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  invoke void @_RNvXsI_NtCsb2PI9uRnNxu_3syn4itemNtB5_5FnArgNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.4.0.i33.ph, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.preheader.outer unwind label %.loopexit.split-lp111

.preheader.outer:                                 ; preds = %bb.kp, %bb.ks
  %.sroa.4.0.i33.ph = phi ptr [ null, %bb.ks ], [ %i.cb, %bb.kp ] ; 2 uses
  %.sroa.0.0.i34.ph = phi ptr [ %i.fh, %bb.ks ], [ %.val.i.i, %bb.kp ]
  br label %.preheader

bb.kt:                                            ; preds = %.preheader
  invoke void @_RNvXsI_NtCsb2PI9uRnNxu_3syn4itemNtB5_5FnArgNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.0.0.i34, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.noexc40 unwind label %.loopexit110

.noexc40:                                         ; preds = %bb.kt
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 96
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i34, i64 104
  invoke void @_RNvXsas_NtCsb2PI9uRnNxu_3syn5tokenNtB6_5CommaNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.fn, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bd)
          to label %.preheader unwind label %.loopexit110

_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit42: ; preds = %bb.kr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.be)
          to label %bb.ku unwind label %bb.kn

bb.ku:                                            ; preds = %_RINvNvXNtCsj1iVQvtAHZj_5quote3extNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtCsb2PI9uRnNxu_3syn10punctuated5PairsNtNtB22_4item5FnArgNtNtB22_5token5CommaEECs5ZQXtie4Wk1_17lance_test_macros.exit42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  invoke void @_RNvXsu_NtCsj1iVQvtAHZj_5quote9to_tokensNtCs7xemmV0rX3c_11proc_macro211TokenStreamNtB5_8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bo, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf)
          to label %bb.kv unwind label %bb.kn

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  invoke void @_RNvMCs7xemmV0rX3c_11proc_macro2NtB2_11TokenStream3new(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bb)
          to label %bb.kw unwind label %bb.kn

bb.kw:                                            ; preds = %bb.kv
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 344
  %i.fq = load ptr, ptr %i.fp, align 8, !nonnull !38, !noundef !38
  invoke void @_RNvXNtNtCsb2PI9uRnNxu_3syn4stmt8printingNtB4_5BlockNtNtCsj1iVQvtAHZj_5quote9to_tokens8ToTokens9to_tokens(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.fq, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bb)
          to label %bb.ky unwind label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.fr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtCs7xemmV0rX3c_11proc_macro211TokenStreamECs5ZQXtie4Wk1_17lance_test_macros(ptr noalias noundef align 8 dereferenceable(32) %i.bb) #25
          to label %bb.km unwind label %bb.al

bb.ky:                                            ; preds = %bb.kw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %i.bb, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_group(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, i8 noundef 1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.bc)
          to label %bb.kz unwind label %bb.kn

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  invoke void @_RNvNtCsj1iVQvtAHZj_5quote9___private10push_ident(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noalias noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 3)
          to label %bb.la unwind label %bb.kn

end_hunk_5
