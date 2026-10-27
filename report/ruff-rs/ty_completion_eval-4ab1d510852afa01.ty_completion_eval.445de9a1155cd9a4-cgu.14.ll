Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_completion_eval-4ab1d510852afa01.ty_completion_eval.445de9a1155cd9a4-cgu.14?download=true
inline.NumInlined: 397
inline.NumDeleted: 245
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationEECs5RUJIcrgHnQ_18ty_completion_eval:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val2.i, i64 noundef 1) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit6.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i: ; preds = %bb.g, %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13DiagnosticTagEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) #29
          to label %common.resume.i unwind label %bb.k

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit6.i: ; preds = %bb.h, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic4SpanECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13DiagnosticTagENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit6.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13DiagnosticTagENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume.i:                                  ; preds = %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic17DiagnosticMessageEECs5RUJIcrgHnQ_18ty_completion_eval.exit6.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13DiagnosticTagENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(80) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %i.a, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume.i:                                  ; preds = %bb.h, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.g, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i

bb.g:                                             ; preds = %bb.c
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder5error7MessageECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.d, %bb.g
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !12, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.f, %bb.e, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %switch.i.i = icmp samesign ult i64 %i.a, 4
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !112 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !112, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.e = load ptr, ptr %.val1.i.i, align 8, !invariant.load !4, !noalias !112 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  invoke void %i.e(ptr noundef nonnull %.val.i.i)
          to label %bb.e unwind label %bb.g, !noalias !112

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !8, !invariant.load !4, !noalias !112 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !9, !invariant.load !4, !noalias !112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.g, i64 noundef range(i64 1, 536870913) %i.j) #30, !noalias !112
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.g:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !8, !invariant.load !4, !noalias !112 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval.exit4.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !9, !invariant.load !4, !noalias !112
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %i.m, i64 noundef range(i64 1, 536870913) %i.p) #30, !noalias !112
  br label %_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval.exit4.i.i.i

_RNvXs8_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxDNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser14AnyValueParserEL_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval.exit4.i.i.i: ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.k
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !11, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load i64, ptr %i.d, align 8, !alias.scope !119, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i.i, 0
  br i1 %i.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !119, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #30, !noalias !119
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrECs5RUJIcrgHnQ_18ty_completion_eval.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryNtNtB11_5error5ErrorEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !10, !noundef !4
  switch i64 %i.a, label %bb.i [
    i64 -2, label %bb.b
    i64 -1, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body.i.i, %.body3.i.i, %bb.o, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.c ], [ %eh.lpad-body4.i.i, %.body3.i.i ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.s, %bb.o ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !range !6, !alias.scope !126, !noundef !4
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i: ; preds = %bb.f
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i unwind label %bb.l

bb.i:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %.body3.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i unwind label %bb.n

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.l, %bb.g
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.h, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2.i.i = load ptr, ptr %i.m, align 8, !alias.scope !127, !nonnull !4, !noundef !4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr nonnull %.val2.i.i) #29
          to label %common.resume unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i.i = load ptr, ptr %i.n, align 8, !alias.scope !127, !nonnull !4, !noundef !4
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr nonnull %.val.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.m:                                             ; preds = %.body3.i.i, %.body.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.n:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body3.i.i

.body3.i.i:                                       ; preds = %bb.n, %bb.j
  %eh.lpad-body4.i.i = phi { ptr, i32 } [ %i.p, %bb.n ], [ %i.j, %bb.j ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.q) #29
          to label %common.resume unwind label %bb.m

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit8.i.i unwind label %bb.o

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit8.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std4path7PathBufECs5RUJIcrgHnQ_18ty_completion_eval.exit8.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std4path7PathBufEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsesAwPL3NJIw_7walkdir4dent8DirEntryECs5RUJIcrgHnQ_18ty_completion_eval.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorEECs5RUJIcrgHnQ_18ty_completion_eval(ptr %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
end_hunk_0
begin_hunk_1_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseECs5RUJIcrgHnQ_18ty_completion_eval:bb.a
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtCs4NRVxsYgnAr_4core6marker4SendNtNtNtB1o_5panic11unwind_safe13RefUnwindSafeNtB1m_4SyncEL_E9drop_slowCs4o81Y09oZk1_10ty_project(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit4 unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.c, %bb.d, %bb.f
  %.pn = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.d, %bb.d ], [ %i.d, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa7storage7StorageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(96) %i.m) #29
          to label %common.resume unwind label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit4: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs56aZGHL6Dc6_7ruff_db5files5FilesECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXs1_NtCs45bxiIjzMqg_5salsa7storageINtB5_7StorageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit4
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa7storage13StorageHandleNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o) #29
          to label %bb.i unwind label %bb.k

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit4
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa7storage13StorageHandleNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.o)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa7storage7StorageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.r, %bb.j ], [ %i.p, %bb.g ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local10ZalsaLocalECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(80) %i.q) #29
          to label %common.resume unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %bb.i, %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.i ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs45bxiIjzMqg_5salsa7storage7StorageNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs45bxiIjzMqg_5salsa11zalsa_local10ZalsaLocalECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(80) %i.t)
  ret void

bb.l:                                             ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtNtCs56aZGHL6Dc6_7ruff_db6system6SystemNtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB1P_4SyncEL_EECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap7MKeyMapECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.e ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.d) #29
          to label %common.resume unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.f ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap3KeyENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.h:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = ptrtoint ptr %.0.val to i64              ; 2 uses
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs5RUJIcrgHnQ_18ty_completion_eval.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs5RUJIcrgHnQ_18ty_completion_eval.exit
    i64 1, label %bb.c
  ], !prof !231

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.0.val, inttoptr (i64 180388626432 to ptr)
  %i.d = and i64 %i.a, 1095216660480
  %i.e = icmp ne i64 %i.d, 1095216660480
  tail call void @llvm.assume(i1 %i.c)
  tail call void @llvm.assume(i1 %i.e)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  %.val.i.i.i.i = load ptr, ptr %i.f, align 8     ; 5 uses
  %i.g = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.h = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.h(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !9, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i

bb.g:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !range !8, !invariant.load !4 ; 2 uses
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.s = load i64, ptr %i.r, align 8, !range !9, !invariant.load !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef range(i64 1, 0) %i.p, i64 noundef range(i64 1, 536870913) %i.s) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #30
  resume { ptr, i32 } %i.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i: ; preds = %bb.f, %bb.e
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 24, i64 noundef 8) #30
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std2io5error14repr_bitpacked4ReprECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc5boxed3BoxNtNtNtCs2AWtUsOyxgP_3std2io5error6CustomEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std3ffi6os_str8OsStringECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2AWtUsOyxgP_3std3sys6os_str5bytes3BufECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options16OptionDiagnosticECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.e) #29
          to label %.body4 unwind label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !range !6, !alias.scope !234, !noundef !4
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body4 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.h

.body4:                                           ; preds = %bb.h, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.l, %bb.h ], [ %i.i, %bb.f ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(80) %i.k) #29
          to label %bb.i unwind label %bb.n

bb.h:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.body4

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval.exit.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic10AnnotationEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(80) %i.m)
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.j, %.body4
  %.pn2 = phi { ptr, i32 } [ %i.o, %bb.j ], [ %.pn, %.body4 ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.n) #29
          to label %common.resume unwind label %bb.n

bb.j:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.l ], [ %.pn2, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs56aZGHL6Dc6_7ruff_db10diagnostic13SubDiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  ret void

bb.n:                                             ; preds = %bb.i, %.body4, %.body
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !13, !alias.scope !261, !noundef !4 ; 4 uses
  %i.c = icmp ne i32 %i.b, 5
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i32 %i.b, -3
  %i.e = icmp samesign ugt i32 %i.b, 2
  %narrow.i.i = select i1 %i.e, i32 %i.d, i32 2
  switch i32 %narrow.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7HL9jt3VRMY_16ty_site_packages7version23PythonVersionWithSourceECs5RUJIcrgHnQ_18ty_completion_eval.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7HL9jt3VRMY_16ty_site_packages7version23PythonVersionFileSourceECs5RUJIcrgHnQ_18ty_completion_eval.exit.sink.split.i.i: ; preds = %bb.f, %bb.c, %bb.b
  %.sink.i.i = phi ptr [ %i.j, %bb.c ], [ %i.f, %bb.b ], [ %0, %bb.f ]
  fence acquire
  tail call void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcNtNtNtCs56aZGHL6Dc6_7ruff_db6system4path13SystemPathBufE9drop_slowCs2Qp84xiUxLo_17ruff_ranged_value(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink.i.i)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs7HL9jt3VRMY_16ty_site_packages7version23PythonVersionWithSourceECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandECs5RUJIcrgHnQ_18ty_completion_eval:bb.a
bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECs5RUJIcrgHnQ_18ty_completion_eval.exit.i130
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %.body131

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECs5RUJIcrgHnQ_18ty_completion_eval.exit134: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECs5RUJIcrgHnQ_18ty_completion_eval.exit128, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrECs5RUJIcrgHnQ_18ty_completion_eval.exit.i130
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 320
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjW2DEjcQy2_12clap_builder7mkeymap7MKeyMapECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(48) %i.ef)
          to label %bb.bz unwind label %bb.by

bb.bx:                                            ; preds = %bb.by, %.body131
  %.pn38 = phi { ptr, i32 } [ %i.eh, %bb.by ], [ %.pn36, %.body131 ]
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 368
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.eg) #29
          to label %.body136 unwind label %bb.cy

bb.by:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECs5RUJIcrgHnQ_18ty_completion_eval.exit134
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder10styled_str9StyledStrEECs5RUJIcrgHnQ_18ty_completion_eval.exit134
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %bb.cb unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ej = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %.body136 unwind label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ei)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body136:                                         ; preds = %bb.cd, %bb.ca, %bb.bx
  %.pn40 = phi { ptr, i32 } [ %.pn38, %bb.bx ], [ %i.em, %bb.cd ], [ %i.ej, %bb.ca ]
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 392
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.el) #29
          to label %.body139 unwind label %bb.cy

bb.cd:                                            ; preds = %bb.cb
  %i.em = landingpad { ptr, i32 }
          cleanup
  br label %.body136

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.cb
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %.body139 unwind label %bb.cg

bb.cf:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.en)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.ep = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.body139:                                         ; preds = %bb.ch, %bb.ce, %.body136
  %.pn42 = phi { ptr, i32 } [ %.pn40, %.body136 ], [ %i.eu, %bb.ch ], [ %i.eo, %bb.ce ]
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.eq) #29
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.er) #29
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.es) #29
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %i.et) #29
          to label %.body152 unwind label %bb.cy

bb.ch:                                            ; preds = %bb.cf
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %.body139

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.cf
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.ew = load i64, ptr %i.ev, align 8, !range !11, !alias.scope !382, !noundef !4 ; 2 uses
  %i.ex = icmp eq i64 %i.ew, 2
  br i1 %i.ex, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143, label %bb.ci

bb.ci:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  %i.ey = icmp eq i64 %i.ew, 0
  br i1 %i.ey, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val1.i.i.i141 = load i64, ptr %i.ez, align 8, !alias.scope !385, !noundef !4 ; 2 uses
  %i.fa = icmp eq i64 %.val1.i.i.i141, 0
  br i1 %i.fa, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val.i.i.i142 = load ptr, ptr %i.fb, align 8, !alias.scope !385, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i142, i64 noundef range(i64 1, 0) %.val1.i.i.i141, i64 noundef 1) #30, !noalias !385
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143: ; preds = %bb.ck, %bb.cj, %bb.ci, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder9arg_group8ArgGroupEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %i.fd = load i64, ptr %i.fc, align 8, !range !11, !alias.scope !386, !noundef !4 ; 2 uses
  %i.fe = icmp eq i64 %i.fd, 2
  br i1 %i.fe, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146, label %bb.cl

bb.cl:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143
  tail call void @llvm.experimental.noalias.scope.decl(metadata !387)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.ff = icmp eq i64 %i.fd, 0
  br i1 %i.ff, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1.i.i.i144 = load i64, ptr %i.fg, align 8, !alias.scope !389, !noundef !4 ; 2 uses
  %i.fh = icmp eq i64 %.val1.i.i.i144, 0
  br i1 %i.fh, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val.i.i.i145 = load ptr, ptr %i.fi, align 8, !alias.scope !389, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i145, i64 noundef range(i64 1, 0) %.val1.i.i.i144, i64 noundef 1) #30, !noalias !389
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146: ; preds = %bb.cn, %bb.cm, %bb.cl, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit143
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !390)
  %i.fk = load i64, ptr %i.fj, align 8, !range !11, !alias.scope !390, !noundef !4 ; 2 uses
  %i.fl = icmp eq i64 %i.fk, 2
  br i1 %i.fl, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149, label %bb.co

bb.co:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.fm = icmp eq i64 %i.fk, 0
  br i1 %i.fm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val1.i.i.i147 = load i64, ptr %i.fn, align 8, !alias.scope !393, !noundef !4 ; 2 uses
  %i.fo = icmp eq i64 %.val1.i.i.i147, 0
  br i1 %i.fo, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i.i.i148 = load ptr, ptr %i.fp, align 8, !alias.scope !393, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i148, i64 noundef range(i64 1, 0) %.val1.i.i.i147, i64 noundef 1) #30, !noalias !393
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149: ; preds = %bb.cq, %bb.cp, %bb.co, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit146
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.fr = load i64, ptr %i.fq, align 8, !range !12, !alias.scope !394, !noundef !4 ; 2 uses
  %i.fs = icmp eq i64 %i.fr, -1
  br i1 %i.fs, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.cr

bb.cr:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %switch.i.i.i = icmp samesign ult i64 %i.fr, 4
  br i1 %switch.i.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val.i.i.i150 = load ptr, ptr %i.ft, align 8, !alias.scope !397 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val1.i.i.i151 = load ptr, ptr %i.fu, align 8, !alias.scope !397, !nonnull !4, !align !7, !noundef !4 ; 5 uses
  %i.fv = load ptr, ptr %.val1.i.i.i151, align 8, !invariant.load !4, !noalias !397 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.fv, null
  br i1 %.not.i.i.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i150) ]
  invoke void %i.fv(ptr noundef nonnull %.val.i.i.i150)
          to label %bb.cu unwind label %bb.cw, !noalias !397

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %i.fw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i151, i64 8
  %i.fx = load i64, ptr %i.fw, align 8, !range !8, !invariant.load !4, !noalias !397 ; 2 uses
  %i.fy = icmp eq i64 %i.fx, 0
  br i1 %i.fy, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i151, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !range !9, !invariant.load !4, !noalias !397
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i150) ]
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i150, i64 noundef range(i64 1, 0) %i.fx, i64 noundef range(i64 1, 536870913) %i.ga) #30, !noalias !397
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.cw:                                            ; preds = %bb.ct
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i151, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !range !8, !invariant.load !4, !noalias !397 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.body152, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i151, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !range !9, !invariant.load !4, !noalias !397
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i150, i64 noundef range(i64 1, 0) %i.gd, i64 noundef range(i64 1, 536870913) %i.gg) #30, !noalias !397
  br label %.body152

.body152:                                         ; preds = %bb.cx, %bb.cw, %.body139
  %.pn50 = phi { ptr, i32 } [ %.pn42, %.body139 ], [ %i.gb, %bb.cw ], [ %i.gb, %bb.cx ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 416
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3ext10ExtensionsECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(48) %i.gh) #29
          to label %bb.cz unwind label %bb.cy

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder12value_parser11ValueParserEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.cv, %bb.cu, %bb.cr, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrEECs5RUJIcrgHnQ_18ty_completion_eval.exit149
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3ext10ExtensionsECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(48) %i.gi)
  ret void

bb.cy:                                            ; preds = %.body152, %.body139, %.body136, %bb.bx, %.body131, %.body125, %.body119, %.body113, %.body108, %.body104, %.body101, %.body96, %.body90, %.body84, %.body78, %.body72, %.body67, %.body54, %.body
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.cz:                                            ; preds = %.body152
  resume { ptr, i32 } %.pn50
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs4NRVxsYgnAr_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorENCNvMs2_B1V_NtB1V_10TaskSource8to_taskss1_0ENtB1V_4TaskINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtCsiXichZnxgbf_6anyhow5ErrorENCINvXso_B3x_IB3v_INtB1b_3VecB3j_EB4h_EINtNtNtB4_6traits7collect12FromIteratorIB3v_B3j_B4h_EE9from_iterBQ_E0B53_EB1V_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !410, !noalias !411
  %.sroa.4.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx6, align 8, !alias.scope !410, !noalias !411
  invoke void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtCs4NRVxsYgnAr_4core4iter8adapters12GenericShuntINtNtB2l_3map3MapINtNtB6_9into_iter8IntoIterNtBZ_6CursorENCNvMs2_BZ_NtBZ_10TaskSource8to_taskss1_0EINtNtB2p_6result6ResultNtNtB2p_7convert10InfallibleNtCsiXichZnxgbf_6anyhow5ErrorEEE9from_iterBZ_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8, !noundef !4
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsiXichZnxgbf_6anyhow5ErrorEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !409
  %i.f = load ptr, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.not.not = icmp eq ptr %i.f, null
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskEEB19_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskEEB19_.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !412
  store i64 -1, ptr %0, align 8, !alias.scope !412
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBG_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsiXichZnxgbf_6anyhow5ErrorEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBN_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskEEB19_.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsiXichZnxgbf_6anyhow5ErrorEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn10 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn10

bb.i:                                             ; preds = %.body
  invoke void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsiXichZnxgbf_6anyhow5ErrorEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.h
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtNtNtNtCs2AWtUsOyxgP_3std3sys12thread_local6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateECs5RUJIcrgHnQ_18ty_completion_eval(ptr noundef initializes((40, 41)) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 2, ptr %i.a, align 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.c = load i64, ptr %i.b, align 8, !range !11, !alias.scope !433, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE0ECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !435)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE0ECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !438, !nonnull !4, !noundef !4
  %i.h = atomicrmw add ptr %i.g, i64 -1 release, align 8, !noalias !438
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE0ECs5RUJIcrgHnQ_18ty_completion_eval.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtNtCs3pBv9WGWlWf_12tracing_core10subscriber10SubscriberNtNtCs4NRVxsYgnAr_4core6marker4SendNtB1C_4SyncEL_E9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f)
          to label %_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE0ECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke fastcc void @_RNvXNvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNtB2_15DtorUnwindGuardNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop()
          to label %.noexc1.i unwind label %bb.f

.noexc1.i:                                        ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

_RINvNtNtCs2AWtUsOyxgP_3std3sys12thread_local20abort_on_dtor_unwindNCINvNtNtB2_6native5eager7destroyNtNtCs3pBv9WGWlWf_12tracing_core10dispatcher5StateE0ECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCsiXichZnxgbf_6anyhow7context3extNtNtCs56aZGHL6Dc6_7ruff_db5files9FileErrorNtB3_8StdError11ext_contextNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval(i1 noundef zeroext %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCscdodAO9FK5_5alloc6string6StringNtNtCs56aZGHL6Dc6_7ruff_db5files9FileErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i1 noundef zeroext %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCsiXichZnxgbf_6anyhow7context3extNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB3_8StdError11ext_contextNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval(ptr noundef nonnull %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error22construct_from_contextNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(24) %1) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

.critedge:                                        ; preds = %bb.e
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr nonnull %0) #29
          to label %.critedge unwind label %bb.d
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvXNtNtCsiXichZnxgbf_6anyhow7context3extNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorNtB3_8StdError11ext_contextReECs5RUJIcrgHnQ_18ty_completion_eval(ptr noundef nonnull %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs2_NtCs2AWtUsOyxgP_3std9backtraceNtB5_9Backtrace7capture(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = call noundef nonnull ptr @_RINvMNtCsiXichZnxgbf_6anyhow5errorNtB5_5Error22construct_from_contextReNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noundef nonnull %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.c

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2AWtUsOyxgP_3std2io5error5ErrorECs5RUJIcrgHnQ_18ty_completion_eval(ptr nonnull %0) #29
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1K_8adapters3map12map_try_foldBW_INtNtB1M_6result6ResultNtBY_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtB1M_3ops12control_flow11ControlFlowIB4t_B3N_EENCNvMs2_BY_NtBY_10TaskSource8to_taskss1_0NCINvXB2Q_INtB2Q_12GenericShuntINtB2O_3MapBH_B5j_EIB3r_NtNtB1M_7convert10InfallibleB3X_EEB1E_8try_folduNCINvNvB1E_12try_for_each4callB3N_B58_NcNtB58_5Break0E0B58_E0E0B4s_EBY_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([272 x i8]) align 8 captures(none) dereferenceable(272) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [272 x i8], align 8               ; 7 uses
  %.sroa.8 = alloca [256 x i8], align 8           ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.d
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %i.g = getelementptr i8, ptr %.val3, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.j, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !455
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88 ; 3 uses
  store ptr %i.j, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.val.i = load ptr, ptr %.val3, align 8, !noalias !455, !nonnull !4, !align !7, !noundef !4 ; 2 uses
  %.val2.i = load ptr, ptr %i.g, align 8, !noalias !455, !nonnull !4, !align !7, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !noalias !456, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noalias !456, !noundef !4
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i, i64 48
  call void @_RNvMs_Cs5RUJIcrgHnQ_18ty_completion_evalNtB4_4Task3new(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(none) dereferenceable(272) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.a), !noalias !455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !455
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !455 ; 3 uses
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !455 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, -1
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.q, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.r = load ptr, ptr %.val.le, align 8, !alias.scope !457, !noalias !458, !noundef !4
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvXs4_NtCsiXichZnxgbf_6anyhow5errorNtB7_5ErrorNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.val.le)
          to label %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit.thread unwind label %bb.e, !noalias !458

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.4.0.copyload.i, ptr %.val.le, align 8, !noalias !458
  resume { ptr, i32 } %i.t

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit.thread: ; preds = %bb.c, %bb.d
  store ptr %.sroa.4.0.copyload.i, ptr %.val.le, align 8, !noalias !458
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false), !noalias !459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, -2
  br i1 %.not.i, label %bb.g, label %.loopexit

._crit_edge:                                      ; preds = %bb.g, %bb.a
  store i64 -2, ptr %0, align 8, !alias.scope !460
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.loopexit
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit.thread
  %.sroa.6.012 = phi ptr [ undef, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit.thread ], [ %.sroa.4.0.copyload.i, %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %.sroa.8, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.sroa.0.0.copyload.i, ptr %0, align 8, !alias.scope !461
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.012, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !461
  br label %bb.f

bb.g:                                             ; preds = %_RNCINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map12map_try_foldNtCs5RUJIcrgHnQ_18ty_completion_eval6CursorINtNtBa_6result6ResultNtB11_4TaskNtCsiXichZnxgbf_6anyhow5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2J_B22_EENCNvMs2_B11_NtB11_10TaskSource8to_taskss1_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterBZ_EB3y_EIB1H_NtNtBa_7convert10InfallibleB2d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6q_12try_for_each4callB22_B3n_NcNtB3n_5Break0E0B3n_E0E0B11_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not = icmp eq ptr %i.j, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2h_8adapters3map8map_foldBW_NtBY_16OptionDiagnosticuNCINvMNtB12_2dbNtB4i_15ProjectDatabase3newNtNtNtCs56aZGHL6Dc6_7ruff_db6system2os8OsSystemNtNtCsfDzkztWVnn_18ty_module_resolver8strategy16FallibleStrategyEs0_0NCINvNvB2b_8for_each4callB3O_NCINvMsj_B8_INtB8_3VecB3O_E14extend_trustedINtB3h_3MapBH_B4c_EE0E0E0ECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not.not14 = icmp eq ptr %.promoted, %i.e
  br i1 %.not.not14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !469, !nonnull !4, !align !7, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted15 = load i64, ptr %i.j, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.val713 = phi i64 [ %.promoted15, %.lr.ph ], [ %i.s, %bb.d ] ; 3 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.k, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 3 uses
  store ptr %i.l, ptr %i.f, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !470
  invoke void @_RNvMs0_NtNtCs4o81Y09oZk1_10ty_project8metadata7optionsNtB5_25ProgramSettingsDiagnostic15into_diagnostic(ptr noalias noundef nonnull sret([184 x i8]) align 8 captures(address) dereferenceable(184) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull %.val.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) @4)
          to label %bb.d unwind label %bb.g

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.m = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.o, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.p, align 8
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.q, align 8, !noundef !4
  store i64 %.val5, ptr %.val, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !471)
  call void @llvm.experimental.noalias.scope.decl(metadata !472)
  %i.r = getelementptr inbounds nuw [184 x i8], ptr %i.i, i64 %.val713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(184) %i.a, i64 184, i1 false), !noalias !473
  %i.s = add i64 %.val713, 1                      ; 2 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !474
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.not = icmp eq ptr %i.l, %i.e
  br i1 %.not.not, label %._crit_edge, label %bb.b

bb.e:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31
  unreachable

bb.f:                                             ; preds = %._crit_edge
  %i.u = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.v, align 8, !noundef !4
  store i64 %.val7, ptr %.val6, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticEECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.g, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.w, %bb.g ], [ %i.u, %bb.f ]
  resume { ptr, i32 } %.pn10

bb.g:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val612 = load ptr, ptr %1, align 8, !nonnull !4, !align !7, !noundef !4
  store i64 %.val713, ptr %.val612, align 8
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs4o81Y09oZk1_10ty_project8metadata7options25ProgramSettingsDiagnosticEECs5RUJIcrgHnQ_18ty_completion_eval.exit unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator5eq_byB3_NCINvYB3_B1v_2eqB3_E0ECs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 10 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !533
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !534
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e), !noalias !535
  %i.f = load i8, ptr %i.b, align 8, !range !536, !noalias !534, !noundef !4 ; 2 uses
  %.not17.i.i.i.i.i.i = icmp eq i8 %i.f, -1
  br i1 %.not17.i.i.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a
  %.sroa.59.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.711.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.812.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.913.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.10.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  br label %bb.b

bb.b:                                             ; preds = %bb.l, %.lr.ph.i.i.i.i.i.i
  %i.g = phi i8 [ %i.f, %.lr.ph.i.i.i.i.i.i ], [ %i.ai, %bb.l ] ; 4 uses
  %.sroa.59.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !534 ; 2 uses
  %.sroa.711.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.711.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !534 ; 10 uses
  %.sroa.812.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.812.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !534 ; 10 uses
  %.sroa.913.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.913.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !534 ; 4 uses
  %.sroa.10.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !534 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !537
  call void @_RNvXsj_NtCs2AWtUsOyxgP_3std4pathNtB5_10ComponentsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d), !noalias !538
  %i.h = load i8, ptr %i.a, align 8, !range !536, !noalias !537, !noundef !4 ; 4 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.h, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3rev3RevNtNtCs2AWtUsOyxgP_3std4path10ComponentsENtNtNtBa_6traits8iterator8Iterator12try_for_eachNCINvNvB1x_12iter_compare7compareB3_NtBT_9ComponentuNCINvNvB1v_5eq_by7compareB2R_B2R_NCINvYB3_B1v_2eqB3_E0E0E0INtNtNtBc_3ops12control_flow11ControlFlowIB44_uNtNtBc_3cmp8OrderingEEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.45.0.copyload.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i, align 1, !noalias !537 ; 2 uses
  %.sroa.67.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.67.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !537 ; 10 uses
  %.sroa.78.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.78.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !537 ; 5 uses
  %.sroa.89.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.89.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !537 ; 4 uses
  %.sroa.910.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.910.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !537 ; 2 uses
  %i.i = icmp samesign ugt i8 %i.g, 5
  %i.j = zext nneg i8 %i.g to i64
  %i.k = add nsw i64 %i.j, -5
  %i.l = select i1 %i.i, i64 %i.k, i64 0          ; 2 uses
  %i.m = icmp samesign ugt i8 %i.h, 5
  %i.n = zext nneg i8 %i.h to i64
  %i.o = add nsw i64 %i.n, -5
end_hunk_2
