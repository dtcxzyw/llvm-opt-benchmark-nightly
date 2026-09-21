Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_completion_eval-4ab1d510852afa01.ty_completion_eval.445de9a1155cd9a4-cgu.08?download=true
inline.NumInlined: 298
inline.NumDeleted: 135
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtCs5RUJIcrgHnQ_18ty_completion_eval4TaskENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBO_:bb.a
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBS_7builder13arg_predicate12ArgPredicateINtNtCs4NRVxsYgnAr_4core6option6OptionINtNtB7_3vec3VecNtNtB1z_6os_str5OsStrEEEENtNtNtB2k_3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdNtNtNtBS_7builder6os_str5OsStrEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBS_4util2id2IdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3str3StrbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTcbEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5RegexEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 3
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 2
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVectENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 2) #26
  br label %_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit

_RNvMs2_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsavRPklju9Q7_4bstr4bstr4BStrNtB6_7Display3fmtCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !357)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !358)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !358, !noalias !357, !noundef !4 ; 2 uses
  %i.f = lshr i32 %i.e, 29
  %i.g = and i32 %i.f, 3
  switch i32 %i.g, label %default.unreachable [
    i32 0, label %bb.e
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.b
  ]

default.unreachable:                              ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.h, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %.sroa.01.0.i = phi i64 [ 2, %bb.d ], [ 1, %bb.c ], [ 0, %bb.a ]
  %2 = and i32 %i.e, 134217728
  %3 = icmp eq i32 %2, 0
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i16, ptr %i.i, align 4, !alias.scope !358, !noalias !357
  %i.k = zext i16 %i.j to i64
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i, %bb.e
  %.sroa.013.0.i.i = phi i64 [ 0, %bb.e ], [ %i.at, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i ] ; 4 uses
  %.sroa.10.0.i.i = phi i64 [ %i.c, %bb.e ], [ %i.au, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i ] ; 9 uses
  %.sroa.0.0.i.i = phi ptr [ %i.a, %bb.e ], [ %i.av, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i ] ; 7 uses
  %i.l = icmp ugt i64 %.sroa.10.0.i.i, 1
  br i1 %i.l, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.q, %bb.f
  %.sroa.013.1.i.i = phi i64 [ %i.ap, %bb.q ], [ %.sroa.013.0.i.i, %bb.f ] ; 3 uses
  %.sroa.10.1.i.i = phi i64 [ %i.aq, %bb.q ], [ %.sroa.10.0.i.i, %bb.f ] ; 3 uses
  %.sroa.0.1.i.i = phi ptr [ %i.ar, %bb.q ], [ %.sroa.0.0.i.i, %bb.f ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %.not.i.i.i = icmp eq i64 %.sroa.10.1.i.i, 0
  br i1 %.not.i.i.i, label %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.g
  %.pre.i.i = load i8, ptr %.sroa.0.1.i.i, align 1, !alias.scope !361, !noalias !358
  %i.m = icmp sgt i8 %.pre.i.i, -1
  br i1 %i.m, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i, label %.preheader.i.preheader.i.i

.preheader.i.preheader.i.i:                       ; preds = %bb.n, %.thread.i.i
  %.sroa.013.12187.i.i = phi i64 [ %.sroa.013.1.i.i, %.thread.i.i ], [ %.sroa.013.0.i.i, %bb.n ] ; 3 uses
  %.sroa.10.12386.i.i = phi i64 [ %.sroa.10.1.i.i, %.thread.i.i ], [ %.sroa.10.0.i.i, %bb.n ] ; 5 uses
  %.sroa.0.12585.i.i = phi ptr [ %.sroa.0.1.i.i, %.thread.i.i ], [ %.sroa.0.0.i.i, %bb.n ] ; 4 uses
  br label %bb.h

.preheader.i.i.i:                                 ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i
  %i.n = zext i8 %i.ag to i64
  %exitcond.not.i.i.i = icmp eq i64 %i.ah, %.sroa.10.12386.i.i
  br i1 %exitcond.not.i.i.i, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i, label %bb.h

bb.h:                                             ; preds = %.preheader.i.preheader.i.i, %.preheader.i.i.i
  %.sroa.03.0.i.i.i55 = phi i64 [ 0, %.preheader.i.preheader.i.i ], [ %i.ah, %.preheader.i.i.i ] ; 3 uses
  %.sroa.017.0.i.i.i54 = phi i32 [ 0, %.preheader.i.preheader.i.i ], [ %storemerge.i.i.i.i, %.preheader.i.i.i ]
  %.sroa.015.0.i.i.i53 = phi i64 [ 12, %.preheader.i.preheader.i.i ], [ %i.n, %.preheader.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.12585.i.i, i64 %.sroa.03.0.i.i.i55
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !361, !noalias !358, !noundef !4 ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @10, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !362, !noundef !4 ; 2 uses
  %i.t = zext i8 %i.p to i32                      ; 2 uses
  %i.u = icmp eq i64 %.sroa.015.0.i.i.i53, 12
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = and i8 %i.s, 31
  %i.w = zext nneg i8 %i.v to i32
  %i.x = lshr i32 255, %i.w
  %i.y = and i32 %i.x, %i.t
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = and i32 %i.t, 63
  %i.aa = shl i32 %.sroa.017.0.i.i.i54, 6
  %i.ab = or disjoint i32 %i.z, %i.aa
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.i.i.i.i = phi i32 [ %i.ab, %bb.j ], [ %i.y, %bb.i ]
  %i.ac = zext i8 %i.s to i64
  %i.ad = add nuw nsw i64 %.sroa.015.0.i.i.i53, %i.ac ; 3 uses
  %i.ae = icmp samesign ult i64 %i.ad, 108
  br i1 %i.ae, label %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ad, i64 noundef 108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #29, !noalias !363
  unreachable

_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i: ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr @11, i64 %i.ad
  %i.ag = load i8, ptr %i.af, align 1, !noalias !362, !noundef !4 ; 2 uses
  %i.ah = add nuw i64 %.sroa.03.0.i.i.i55, 1      ; 3 uses
  switch i8 %i.ag, label %.preheader.i.i.i [
    i8 12, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i
    i8 0, label %bb.m
  ]

bb.m:                                             ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i
  %.sroa.0.0.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.03.0.i.i.i55, i64 1)
  br label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i

bb.n:                                             ; preds = %bb.f
  %i.ai = load i8, ptr %.sroa.0.0.i.i, align 1, !alias.scope !364, !noalias !358, !noundef !4
  %i.aj = icmp sgt i8 %i.ai, -1
  br i1 %i.aj, label %bb.o, label %.preheader.i.preheader.i.i

bb.o:                                             ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !364, !noalias !358, !noundef !4
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.p, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i

bb.p:                                             ; preds = %bb.o
  %i.an = tail call noundef i64 @_RNvNtCsavRPklju9Q7_4bstr5ascii20first_non_ascii_byte(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.10.0.i.i), !noalias !358 ; 5 uses
  %i.ao = icmp ugt i64 %i.an, %.sroa.10.0.i.i
  br i1 %i.ao, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  %i.ap = add i64 %i.an, %.sroa.013.0.i.i
  %i.aq = sub nuw i64 %.sroa.10.0.i.i, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 %i.an
  br label %bb.g

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %i.an, i64 noundef %.sroa.10.0.i.i, i64 noundef %.sroa.10.0.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #29, !noalias !358
  unreachable

_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i: ; preds = %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i, %bb.o, %bb.m, %.thread.i.i
  %.sroa.013.12180.i.i = phi i64 [ %.sroa.013.1.i.i, %.thread.i.i ], [ %.sroa.013.0.i.i, %bb.o ], [ %.sroa.013.12187.i.i, %bb.m ], [ %.sroa.013.12187.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ]
  %.sroa.10.12379.i.i = phi i64 [ %.sroa.10.1.i.i, %.thread.i.i ], [ %.sroa.10.0.i.i, %bb.o ], [ %.sroa.10.12386.i.i, %bb.m ], [ %.sroa.10.12386.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ] ; 4 uses
  %.sroa.0.12578.i.i = phi ptr [ %.sroa.0.1.i.i, %.thread.i.i ], [ %.sroa.0.0.i.i, %bb.o ], [ %.sroa.0.12585.i.i, %bb.m ], [ %.sroa.0.12585.i.i, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ]
  %.sroa.6.1.i35.i.i = phi i64 [ 1, %.thread.i.i ], [ 1, %bb.o ], [ %.sroa.0.0.i.i.i.i, %bb.m ], [ %i.ah, %_RNvNtCsavRPklju9Q7_4bstr4utf811decode_step.exit.i.i.i ] ; 3 uses
  %i.as = icmp ugt i64 %.sroa.6.1.i35.i.i, %.sroa.10.12379.i.i
  br i1 %i.as, label %bb.s, label %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i, !prof !365

_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.thread.i.i: ; preds = %.preheader.i.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i
  %.sroa.6.1.i3595.i.i = phi i64 [ %.sroa.6.1.i35.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i ], [ %.sroa.10.12386.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.0.1257894.i.i = phi ptr [ %.sroa.0.12578.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i ], [ %.sroa.0.12585.i.i, %.preheader.i.i.i ]
  %.sroa.10.1237993.i.i = phi i64 [ %.sroa.10.12379.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i ], [ %.sroa.10.12386.i.i, %.preheader.i.i.i ]
  %.sroa.013.1218092.i.i = phi i64 [ %.sroa.013.12180.i.i, %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i ], [ %.sroa.013.12187.i.i, %.preheader.i.i.i ]
  %i.at = add i64 %.sroa.013.1218092.i.i, 1
  %i.au = sub nuw i64 %.sroa.10.1237993.i.i, %.sroa.6.1.i3595.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.1257894.i.i, i64 %.sroa.6.1.i3595.i.i
  br label %bb.f

bb.s:                                             ; preds = %_RINvNtCsavRPklju9Q7_4bstr4utf86decodeRShECs5RUJIcrgHnQ_18ty_completion_eval.exit.thread.i.i
  tail call void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.6.1.i35.i.i, i64 noundef %.sroa.10.12379.i.i, i64 noundef %.sroa.10.12379.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #29, !noalias !358
  unreachable

_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i: ; preds = %bb.g
  %i.aw = tail call i64 @llvm.usub.sat.i64(i64 %i.k, i64 %.sroa.013.1.i.i)
  %4 = select i1 %3, i64 0, i64 %i.aw             ; 4 uses
  switch i64 %.sroa.01.0.i, label %default.unreachable [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
  ]

bb.t:                                             ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i
  %i.ax = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.ax, label %bb.aa, label %bb.w

bb.u:                                             ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i
  %i.ay = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %4)
  br i1 %i.ay, label %bb.aa, label %bb.x

bb.v:                                             ; preds = %_RNvXs_NtCsavRPklju9Q7_4bstr4utf8NtB4_5CharsNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator5count.exit.i
  %i.az = lshr i64 %4, 1                          ; 2 uses
  %i.ba = and i64 %4, 1
  %.sroa.04.0.i = add nuw nsw i64 %i.az, %i.ba
  %i.bb = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.az)
  br i1 %i.bb, label %bb.aa, label %bb.y

bb.w:                                             ; preds = %bb.t
  %i.bc = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %4)
  br i1 %i.bc, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.x:                                             ; preds = %bb.u
  %i.bd = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.bd, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.y:                                             ; preds = %bb.v
  %i.be = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_bstr(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %i.c)
  br i1 %i.be, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call noundef zeroext i1 @_RNvNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB8_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt10write_pads(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.04.0.i)
  br i1 %i.bf, label %bb.aa, label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.b
  br label %_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit

_RNvXNtNtCsavRPklju9Q7_4bstr5impls4bstrNtNtB6_4bstr4BStrNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt.exit: ; preds = %bb.b, %bb.w, %bb.x, %bb.z, %bb.aa
  %.sroa.0.2.i = phi i1 [ true, %bb.aa ], [ false, %bb.w ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.b ]
  ret i1 %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRNtNtCsfDzkztWVnn_18ty_module_resolver11module_name10ModuleNameNtB6_7Display3fmtCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !366, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCsfDzkztWVnn_18ty_module_resolver11module_nameNtB5_10ModuleNameNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !369 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !369, !nonnull !4, !noundef !4
  %i.l = mul nuw i64 %.val2.i, 12
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !369 ; 2 uses
  %i.m = icmp eq i64 %.val.i2, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !369, !nonnull !4, !noundef !4
  %i.n = mul nuw i64 %.val.i2, 12
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs45bxiIjzMqg_5salsa3key16DatabaseKeyIndexEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsw_Csheqz6YZvxwl_8smallvecINtB5_8SmallVecANtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdj4_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp ugt i64 %i.c, 4
  br i1 %i.d, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.c, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.g, ptr %i.i, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !372 ; 2 uses
  %i.k = icmp eq i64 %.val2.i, 0
  br i1 %i.k, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val3.i = load ptr, ptr %i.h, align 8, !alias.scope !372, !nonnull !4, !noundef !4
  %i.l = shl nuw i64 %.val2.i, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i

bb.e:                                             ; preds = %bb.b
  %.val.i2 = load i64, ptr %i.a, align 8, !alias.scope !372 ; 2 uses
  %i.m = icmp eq i64 %.val.i2, 0
  br i1 %i.m, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val1.i = load ptr, ptr %i.h, align 8, !alias.scope !372, !nonnull !4, !noundef !4
  %i.n = shl nuw i64 %.val.i2, 3
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #26
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.j

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2AWtUsOyxgP_3std6thread2id8ThreadIdEECs5RUJIcrgHnQ_18ty_completion_eval.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject14PyProjectErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(88) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call { ptr, ptr } @_RNvXsc_NtNtCs4o81Y09oZk1_10ty_project8metadata9pyprojectNtB5_14PyProjectErrorNtNtCs4NRVxsYgnAr_4core5error5Error6source(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %0)
  ret { ptr, ptr } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCs4o81Y09oZk1_10ty_project8metadata9pyproject26ResolveRequiresPythonErrorNtNtCs4NRVxsYgnAr_4core5error5Error5causeCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #10 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs_NtCs6ZNDpZDiPlA_11parking_lot7condvarNtB4_7Condvar19wait_until_internal(ptr noundef nonnull align 8, ptr noundef nonnull, i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs2_NtCs45bxiIjzMqg_5salsa5viewsNtB6_5Views3newNtNtCs4o81Y09oZk1_10ty_project2db15ProjectDatabaseECs5RUJIcrgHnQ_18ty_completion_eval(ptr dead_on_unwind noalias noundef writable sret([496 x i8]) align 8 captures(none) dereferenceable(496)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #11

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCs45bxiIjzMqg_5salsa7runtimeNtB5_7RuntimeNtNtCs4NRVxsYgnAr_4core7default7Default7default(ptr dead_on_unwind noalias noundef writable sret([720 x i8]) align 8 captures(none) dereferenceable(720)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvNvCscxDUFidjJwY_9inventory1__9into_iterNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarECs5RUJIcrgHnQ_18ty_completion_eval() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCs45bxiIjzMqg_5salsa5zalsa9ErasedJarEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters5chain5ChainINtNtB2e_6copied6CopiedINtNvCscxDUFidjJwY_9inventory1__4IterB10_EEINtNtB4_9into_iter8IntoIterB10_EEE9from_iterCs5RUJIcrgHnQ_18ty_completion_eval(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs2_NtCs45bxiIjzMqg_5salsa5zalsaNtB5_5Zalsa10insert_jar(ptr noalias noundef align 8 dereferenceable(1368), ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5table4PageEKj3a_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(464)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs3_NtCsc4HYy37PfYO_6boxcar7bucketsINtB5_7BucketsINtNtNtB7_3vec3raw5EntryNtNtCs45bxiIjzMqg_5salsa5views10ViewCasterEKj3a_ENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs5RUJIcrgHnQ_18ty_completion_eval(ptr noalias noundef align 8 dereferenceable(464)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_0
