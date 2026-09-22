Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_mktemp-9af39ef58506acbf.uu_mktemp.4d7e65d14c28cf83-cgu.0?download=true
inline.NumInlined: 572
inline.NumDeleted: 331
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp:bb.a
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVechEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVechEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs6EuPS8vUgp3_9uu_mktemp11MkTempErrorEBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !13, !noundef !6 ; 4 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 7
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !260)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !261)
  %i.e = icmp eq i64 %i.a, 0
  br i1 %i.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.f, align 8, !alias.scope !262, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !262
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.b, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val4 = load i64, ptr %i.g, align 8, !range !7, !alias.scope !14, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %.val4, 0
  br i1 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.i, align 8, !range !7, !alias.scope !14, !noundef !6 ; 2 uses
  %i.j = icmp eq i64 %.val2, 0
  br i1 %i.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i7 = load i64, ptr %i.k, align 8, !range !7, !alias.scope !263, !noundef !6 ; 2 uses
  %i.l = icmp eq i64 %.val.i.i7, 0
  br i1 %i.l, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i10 = load i64, ptr %i.m, align 8, !range !7, !alias.scope !264, !noundef !6 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i10, 0
  br i1 %i.n, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i13 = load i64, ptr %i.o, align 8, !range !7, !alias.scope !265, !noundef !6 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i13, 0
  br i1 %i.p, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i16 = load i64, ptr %i.q, align 8, !range !7, !alias.scope !266, !noundef !6 ; 2 uses
  %i.r = icmp eq i64 %.val.i.i16, 0
  br i1 %i.r, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.s, align 8, !range !7, !alias.scope !14, !noundef !6 ; 2 uses
  %i.t = icmp eq i64 %.val, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split: ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit
  %.sink19 = phi i64 [ 16, %bb.h ], [ 16, %bb.g ], [ 16, %bb.f ], [ 16, %bb.e ], [ 16, %bb.d ], [ 32, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit ], [ 16, %bb.i ]
  %.val.sink = phi i64 [ %.val.i.i16, %bb.h ], [ %.val.i.i13, %bb.g ], [ %.val.i.i10, %bb.f ], [ %.val.i.i7, %bb.e ], [ %.val2, %bb.d ], [ %.val4, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit ], [ %.val, %bb.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %.sink19
  %.val1 = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !6
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit, %bb.a
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string13FromUtf8ErrorECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  %.val.i = load i64, ptr %0, align 8, !range !7, !alias.scope !269, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !269, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !269
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  %.val.i = load i64, ptr %0, align 8, !range !7, !alias.scope !272, !noundef !6 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !272, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !272
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !12, !noundef !6 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !288
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.d = load i64, ptr %i.c, align 8, !range !290, !alias.scope !289, !noundef !6 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !12, !alias.scope !289, !noundef !6 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !289, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !291
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !12, !alias.scope !289, !noundef !6 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !289, !nonnull !6, !noundef !6
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !292
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !289 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !289, !nonnull !6, !align !8, !noundef !6 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !6, !noalias !289 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #25, !noalias !289, !inline_history !287
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !7, !invariant.load !6, !noalias !289 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !9, !invariant.load !6, !noalias !289
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #23, !noalias !289
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !7, !alias.scope !295, !noundef !6 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 range(i64 0, -1) %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 range(i64 0, -1) %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !295
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !295
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #23, !noalias !295
  %i.h = load i64, ptr %i.a, align 8, !range !15, !noalias !295, !noundef !6
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !16, !noalias !295, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #26
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !295, !nonnull !6, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !295
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !295
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !295
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvCs6EuPS8vUgp3_9uu_mktemp25get_tmpdir_env_or_default(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtNtCs2vKOLqTMYjT_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 6) #23
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !6 ; 4 uses
  %.not = icmp ne i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.d = load i64, ptr %i.c, align 8
  %i.e = icmp eq i64 %i.d, 0
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs2vKOLqTMYjT_3std3env8temp_dir(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0) #23
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %bb.g, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !298
  %i.g = tail call noundef dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #23, !noalias !298 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 1886221359, ptr %i.g, align 1
  store i64 4, ptr %0, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 4, ptr %.sroa.56.0..sroa_idx, align 8
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split: ; preds = %bb.f, %bb.g
  %.val10.sink = phi ptr [ %.val10, %bb.g ], [ %.sroa.4.0.copyload, %bb.f ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10.sink, i64 noundef %i.b, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !6
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val10 = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs6EuPS8vUgp3_9uu_mktemp.exit.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs6EuPS8vUgp3_9uu_mktemp4exec(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %6, i64 noundef %7, i1 noundef zeroext %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 13 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [8 x i8], align 8                 ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [48 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.12.i = alloca [7 x i8], align 1          ; 6 uses
  %i.r = alloca [56 x i8], align 8                ; 14 uses
  %i.s = alloca [16 x i8], align 8                ; 7 uses
  %i.t = alloca [16 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 4 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 16               ; 5 uses
  %i.aa = alloca [8 x i8], align 8                ; 6 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 4 uses
  %i.ad = alloca [32 x i8], align 8               ; 14 uses
  %i.ae = alloca [24 x i8], align 8               ; 6 uses
  %i.af = alloca [24 x i8], align 8               ; 5 uses
  %i.ag = alloca [8 x i8], align 8                ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [48 x i8], align 8               ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %.sroa.442.i = alloca [24 x i8], align 8        ; 4 uses
  %i.ao = alloca [40 x i8], align 8               ; 7 uses
  %.sroa.12.sroa.0.i = alloca [7 x i8], align 1   ; 5 uses
  %i.ap = alloca [56 x i8], align 8               ; 13 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 7 uses
  %i.at = alloca [24 x i8], align 8               ; 11 uses
  br i1 %8, label %bb.bi, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %3, ptr %i.ar, align 8, !noalias !501
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %4, ptr %i.au, align 8, !noalias !501
  store ptr %6, ptr %i.aq, align 8, !noalias !501
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %7, ptr %i.av, align 8, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !501
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  store i8 0, ptr %i.bb, align 8, !noalias !501
  store i32 0, ptr %i.ap, align 8, !noalias !501
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 49 ; 2 uses
  store i8 0, ptr %i.bc, align 1, !noalias !501
  store ptr %3, ptr %i.ax, align 8, !noalias !501, !captures !17
  store i64 %4, ptr %i.ay, align 8, !noalias !501
  store i64 %5, ptr %i.aw, align 8, !noalias !501
  store ptr %6, ptr %i.az, align 8, !noalias !501, !captures !17
  store i64 %7, ptr %i.ba, align 8, !noalias !501
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12.sroa.0.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !503)
  %i.bd = tail call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #23, !noalias !504 ; 3 uses
  br i1 %i.bd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i, label %bb.c
end_hunk_0
begin_hunk_1_@_RNvCs6EuPS8vUgp3_9uu_mktemp4exec:bb.a
  br i1 %i.no, label %.split.i56, label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread

_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread: ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i54
  %i.np = call { ptr, ptr } @_RNvXsf_NtNtCsh036I4OHgIr_6uucore4mods5errorINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtB5_6UErrorEL_EINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtNtB1A_2io5error5ErrorE4from(ptr noundef nonnull %.sroa.0.035.i) #23, !noalias !571 ; 2 uses
  %i.nq = extractvalue { ptr, ptr } %i.np, 0
  %i.nr = extractvalue { ptr, ptr } %i.np, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.dl

.split.i56:                                       ; preds = %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error4kind.exit.i54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !572
  %i.ns = icmp eq i64 %5, 0
  br i1 %i.ns, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCs6EuPS8vUgp3_9uu_mktemp.exit.i69, label %bb.db

bb.db:                                            ; preds = %.split.i56
  %.not.i.i.i18.i = icmp slt i64 %5, 0
  br i1 %.not.i.i.i18.i, label %bb.dc, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i57, !prof !20

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i57: ; preds = %bb.db
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !607
  %i.nt = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %5, i64 noundef range(i64 1, 9) 1) #23, !noalias !607 ; 8 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %bb.dc, label %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58

bb.dc:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i57, %bb.db
  %.sroa.4.0.ph.i.i.i85 = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i57 ], [ 0, %bb.db ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i85, i64 %5) #26, !noalias !608
  unreachable

_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i57
  store i8 88, ptr %i.nt, align 1, !noalias !609
  %.sroa.01.01.i.i59 = lshr i64 %5, 1             ; 2 uses
  %.not2.i.i60 = icmp eq i64 %.sroa.01.01.i.i59, 0
  br i1 %.not2.i.i60, label %._crit_edge.i.i66, label %.lr.ph.i.i61

._crit_edge.i.i66:                                ; preds = %.lr.ph.i.i61, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58
  %storemerge.lcssa.i.i67 = phi i64 [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58 ], [ %i.nx, %.lr.ph.i.i61 ] ; 4 uses
  %i.nv = icmp sgt i64 %storemerge.lcssa.i.i67, -1
  call void @llvm.assume(i1 %i.nv)
  %.not5.i.i68 = icmp eq i64 %5, %storemerge.lcssa.i.i67
  br i1 %.not5.i.i68, label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCs6EuPS8vUgp3_9uu_mktemp.exit.i69, label %bb.dd

.lr.ph.i.i61:                                     ; preds = %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58, %.lr.ph.i.i61
  %.sroa.01.04.i.i62 = phi i64 [ %.sroa.01.0.i.i64, %.lr.ph.i.i61 ], [ %.sroa.01.01.i.i59, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58 ]
  %storemerge3.i.i63 = phi i64 [ %i.nx, %.lr.ph.i.i61 ], [ 1, %_RNvXs2_NtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCs6EuPS8vUgp3_9uu_mktemp.exit.i.i58 ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nt, i64 %storemerge3.i.i63
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.nw, ptr noundef nonnull align 1 dereferenceable(1) %i.nt, i64 %storemerge3.i.i63, i1 false), !noalias !608
  %i.nx = shl nuw i64 %storemerge3.i.i63, 1       ; 2 uses
  %.sroa.01.0.i.i64 = lshr i64 %.sroa.01.04.i.i62, 1 ; 2 uses
  %.not.i.i65 = icmp eq i64 %.sroa.01.0.i.i64, 0
  br i1 %.not.i.i65, label %._crit_edge.i.i66, label %.lr.ph.i.i61

bb.dd:                                            ; preds = %._crit_edge.i.i66
  %i.ny = sub nsw i64 %5, %storemerge.lcssa.i.i67
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nt, i64 %storemerge.lcssa.i.i67
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nz, ptr nonnull align 1 %i.nt, i64 %i.ny, i1 false), !noalias !608
  br label %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCs6EuPS8vUgp3_9uu_mktemp.exit.i69

_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCs6EuPS8vUgp3_9uu_mktemp.exit.i69: ; preds = %bb.dd, %._crit_edge.i.i66, %.split.i56
  %.sink7.i.i70 = phi ptr [ %i.nt, %._crit_edge.i.i66 ], [ %i.nt, %bb.dd ], [ inttoptr (i64 1 to ptr), %.split.i56 ]
  store i64 %5, ptr %i.o, align 8, !noalias !572
  %.sroa.4.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %.sink7.i.i70, ptr %.sroa.4.0..sroa_idx.i71, align 8, !noalias !572
  %.sroa.5.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %5, ptr %.sroa.5.0..sroa_idx.i72, align 8, !noalias !572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !572
  store ptr %i.t, ptr %i.n, align 8, !noalias !572
  %.sroa.42.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs6EuPS8vUgp3_9uu_mktemp, ptr %.sroa.42.0..sroa_idx.i73, align 8, !noalias !572
  %i.oa = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.oa, align 8, !noalias !572
  %.sroa.46.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i74, align 8, !noalias !572
  %i.ob = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr %i.s, ptr %i.ob, align 8, !noalias !572
  %.sroa.410.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs6EuPS8vUgp3_9uu_mktemp, ptr %.sroa.410.0..sroa_idx.i75, align 8, !noalias !572
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @20, ptr noundef nonnull %i.n) #23, !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !572
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %.val.i.i.i76 = load i64, ptr %i.o, align 8, !range !7, !alias.scope !612, !noalias !572, !noundef !6 ; 2 uses
  %i.oc = icmp eq i64 %.val.i.i.i76, 0
  br i1 %i.oc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i78, label %bb.de

bb.de:                                            ; preds = %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCs6EuPS8vUgp3_9uu_mktemp.exit.i69
  %.val1.i.i.i77 = load ptr, ptr %.sroa.4.0..sroa_idx.i71, align 8, !alias.scope !612, !noalias !572, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i77, i64 noundef %.val.i.i.i76, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !613
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i78

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i78: ; preds = %bb.de, %_RNvMNtCs7tKScEop1B6_5alloc5sliceSh6repeatCs6EuPS8vUgp3_9uu_mktemp.exit.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !572
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.od = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.val.i.i = load ptr, ptr %i.od, align 8, !alias.scope !614, !noalias !615, !nonnull !6, !noundef !6 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i79 = load i64, ptr %i.oe, align 8, !alias.scope !614, !noalias !615, !noundef !6
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i79) #23, !noalias !616
  call void @llvm.experimental.noalias.scope.decl(metadata !617)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  %.val.i.i.i19.i80 = load i64, ptr %i.p, align 8, !range !7, !alias.scope !619, !noalias !615, !noundef !6 ; 2 uses
  %i.of = icmp eq i64 %.val.i.i.i19.i80, 0
  br i1 %i.of, label %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i81, label %bb.df

bb.df:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i78
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i.i.i19.i80, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !620
  br label %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i81

_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i81: ; preds = %bb.df, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !572
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 30) #23, !noalias !571
  %i.og = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.og, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !572
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !621
  %i.oh = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #23, !noalias !621 ; 3 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.dg, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i82, !prof !11

bb.dg:                                            ; preds = %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i81
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !noalias !621
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i82: ; preds = %_RINvMs16_NtCs2vKOLqTMYjT_3std4pathNtB7_4Path4joinNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit.i81
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.oh, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !572
  %i.oj = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.oh, ptr %i.oj, align 8, !alias.scope !571, !noalias !622
  %i.ok = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr @23, ptr %i.ok, align 8, !alias.scope !571, !noalias !622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !572
  switch i64 %i.na, label %default.unreachable [
    i64 2, label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread199
    i64 3, label %bb.dh
    i64 0, label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread199
    i64 1, label %bb.di
  ], !prof !514

bb.dh:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i82
  %i.ol = icmp ult ptr %.sroa.0.035.i, inttoptr (i64 188978561024 to ptr)
  %i.om = and i64 %i.mz, 1095216660480
  %i.on = icmp ne i64 %i.om, 1095216660480
  call void @llvm.assume(i1 %i.ol)
  call void @llvm.assume(i1 %i.on)
  br label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread199

bb.di:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i82
  %i.oo = getelementptr i8, ptr %.sroa.0.035.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oo) ]
  %i.op = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.oo, ptr %i.op, align 8, !alias.scope !623, !noalias !572
  store i8 3, ptr %i.a, align 8, !alias.scope !623, !noalias !572
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.op) #23, !noalias !571
  br label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread199

_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread199: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i82, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i82, %bb.dh, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit._crit_edge

_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit: ; preds = %_RINvMs_CsbSunRfqrLAR_8tempfileNtB5_7Builder10tempdir_inRNtNtCs2vKOLqTMYjT_3std4path4PathECs6EuPS8vUgp3_9uu_mktemp.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !572
  store ptr %.sroa.0.0.copyload22.i, ptr %i.q, align 8, !noalias !572
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %.sroa.9.0.copyload24.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !572
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i8 %.sroa.925.0.copyload27.i, ptr %.sroa.925.0..sroa_idx.i, align 8, !noalias !572
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.12.i, i64 7, i1 false), !noalias !572
  call void @_RNvMNtCsbSunRfqrLAR_8tempfile3dirNtB2_7TempDir4keep(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !572
  %.pr.pre = load i64, ptr %i.at, align 8         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.oq = icmp eq i64 %.pr.pre, -1
  br i1 %i.oq, label %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit._crit_edge, label %bb.dm

_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit._crit_edge: ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread199, %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert174 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.pre175 = load ptr, ptr %.phi.trans.insert174, align 8
  br label %bb.dl

bb.dj:                                            ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit, %bb.dm
  %.sroa.10.0.in = phi ptr [ %.sroa.526.0.copyload, %bb.dm ], [ %.sroa.10.i.sroa.7.0.copyload133, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit ]
  %.sroa.6.0 = phi ptr [ %.sroa.425.0.copyload, %bb.dm ], [ %.sroa.10.i.sroa.6.0.copyload130, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.pr.pre, %bb.dm ], [ %.sroa.10.i.sroa.0.0.copyload127, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit ] ; 2 uses
  %.sroa.10.0 = ptrtoint ptr %.sroa.10.0.in to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  %i.or = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.0, i64 noundef %.sroa.10.0) #23 ; 2 uses
  %i.os = extractvalue { ptr, i64 } %i.or, 0      ; 2 uses
  %.not = icmp eq ptr %i.os, null
  br i1 %.not, label %bb.do, label %bb.dn, !prof !19

bb.dk:                                            ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit.thread, %bb.dl
  %.sink220 = phi ptr [ %i.ow, %bb.dl ], [ %.sroa.8.1.ph, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit.thread ], [ %.sroa.10.i.sroa.6.0.copyload130, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit ]
  %.sink = phi ptr [ %i.ov, %bb.dl ], [ %.sroa.13.1.ph, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit.thread ], [ %.sroa.10.i.sroa.7.0.copyload133, %_RNvCs6EuPS8vUgp3_9uu_mktemp14make_temp_file.exit ]
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink220, ptr %i.ot, align 8
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.ou, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit

bb.dl:                                            ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit._crit_edge, %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread
  %i.ov = phi ptr [ %.pre175, %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit._crit_edge ], [ %i.nr, %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread ]
  %i.ow = phi ptr [ %.pre, %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit._crit_edge ], [ %i.nq, %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dk

bb.dm:                                            ; preds = %_RNvCs6EuPS8vUgp3_9uu_mktemp13make_temp_dir.exit
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.425.0.copyload = load ptr, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.526.0.copyload = load ptr, ptr %.sroa.526.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br label %bb.dj

bb.dn:                                            ; preds = %bb.dj
  %i.ox = extractvalue { ptr, i64 } %i.or, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.as, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.os, i64 noundef %i.ox) #23
  %i.oy = load i64, ptr %i.as, align 8, !range !15, !noundef !6
  %i.oz = trunc nuw i64 %i.oy to i1
  br i1 %i.oz, label %bb.dp, label %bb.dq, !prof !19

bb.do:                                            ; preds = %bb.dj
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #24
  unreachable

bb.dp:                                            ; preds = %bb.dn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #24
  unreachable

bb.dq:                                            ; preds = %bb.dn
  %i.pa = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !nonnull !6, !noundef !6
  %i.pc = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.pd = load i64, ptr %i.pc, align 8, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.pb, i64 noundef %i.pd) #23
  %i.pe = icmp eq i64 %.sroa.0.0, 0
  br i1 %i.pe, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !624
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.dr, %bb.dq, %bb.dk
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs6EuPS8vUgp3_9uu_mktemp6mktemp(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 16 uses
  %i.b = alloca [80 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load i8, ptr %i.c, align 8, !range !18, !alias.scope !662, !noalias !661, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 73
  %i.f = load i8, ptr %i.e, align 1, !range !18, !alias.scope !662, !noalias !661, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 74
  %i.h = load i8, ptr %i.g, align 2, !range !18, !alias.scope !662, !noalias !661, !noundef !6
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !range !12, !alias.scope !662, !noalias !661, !noundef !6
  %.not.i = icmp eq i64 %i.j, -1
  br i1 %.not.i, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val20.i = load ptr, ptr %i.k, align 8, !alias.scope !662, !noalias !661, !nonnull !6, !noundef !6
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val21.i = load i64, ptr %i.l, align 8, !alias.scope !662, !noalias !661, !noundef !6 ; 6 uses
  %i.m = icmp eq i64 %.val21.i, 0
  br i1 %i.m, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !663
  %i.n = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val21.i, i64 noundef range(i64 1, 9) 1) #23, !noalias !663 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val21.i) #26, !noalias !664
  unreachable

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull readonly align 1 %.val20.i, i64 range(i64 0, -9223372036854775808) %.val21.i, i1 false), !noalias !665
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i: ; preds = %bb.d, %bb.b, %bb.a
  %.sroa.5.sroa.4.0.i = phi i64 [ undef, %bb.a ], [ %.val21.i, %bb.d ], [ 0, %bb.b ]
  %.sroa.5.sroa.0.0.i = phi ptr [ undef, %bb.a ], [ %i.n, %bb.d ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %.sroa.0.0.i = phi i64 [ -1, %bb.a ], [ %.val21.i, %bb.d ], [ 0, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load i64, ptr %i.p, align 8, !range !12, !alias.scope !662, !noalias !661, !noundef !6
  %.not16.i = icmp eq i64 %i.q, -1
  br i1 %.not16.i, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i, label %bb.e

bb.e:                                             ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val18.i = load ptr, ptr %i.r, align 8, !alias.scope !662, !noalias !661, !nonnull !6, !noundef !6
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val19.i = load i64, ptr %i.s, align 8, !alias.scope !662, !noalias !661, !noundef !6 ; 6 uses
  %i.t = icmp eq i64 %.val19.i, 0
  br i1 %i.t, label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i22.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i22.i: ; preds = %bb.e
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !666
  %i.u = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val19.i, i64 noundef range(i64 1, 9) 1) #23, !noalias !666 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i22.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val19.i) #26, !noalias !667
  unreachable

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i22.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull readonly align 1 %.val18.i, i64 range(i64 0, -9223372036854775808) %.val19.i, i1 false), !noalias !668
  br label %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i

_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i: ; preds = %bb.g, %bb.e, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i
  %.sroa.55.sroa.4.0.i = phi i64 [ undef, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ %.val19.i, %bb.g ], [ 0, %bb.e ]
  %.sroa.55.sroa.0.0.i = phi ptr [ undef, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ %i.u, %bb.g ], [ inttoptr (i64 1 to ptr), %bb.e ]
  %.sroa.03.0.i = phi i64 [ -1, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ %.val19.i, %bb.g ], [ 0, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 75
  %i.x = load i8, ptr %i.w, align 1, !range !18, !alias.scope !662, !noalias !661, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.y, align 8, !alias.scope !662, !noalias !661, !nonnull !6, !noundef !6
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val17.i = load i64, ptr %i.z, align 8, !alias.scope !662, !noalias !661, !noundef !6 ; 6 uses
  %i.aa = icmp eq i64 %.val17.i, 0
  br i1 %i.aa, label %_RNvXs6_Cs6EuPS8vUgp3_9uu_mktempNtB5_7OptionsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i25.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i25.i: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !669
  %i.ab = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val17.i, i64 noundef range(i64 1, 9) 1) #23, !noalias !669 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i25.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val17.i) #26, !noalias !670
  unreachable

bb.i:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i25.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %.val.i, i64 range(i64 0, -9223372036854775808) %.val17.i, i1 false), !noalias !671
  br label %_RNvXs6_Cs6EuPS8vUgp3_9uu_mktempNtB5_7OptionsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit

_RNvXs6_Cs6EuPS8vUgp3_9uu_mktempNtB5_7OptionsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit: ; preds = %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i, %bb.i
  %.sroa.532.0.i = phi ptr [ %i.ab, %bb.i ], [ inttoptr (i64 1 to ptr), %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit24.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 %i.d, ptr %i.ad, align 8, !alias.scope !661, !noalias !662
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 73
  store i8 %i.f, ptr %i.ae, align 1, !alias.scope !661, !noalias !662
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  store i8 %i.h, ptr %i.af, align 2, !alias.scope !661, !noalias !662
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.0.0.i, ptr %i.ag, align 8, !alias.scope !661, !noalias !662
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.5.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx2.i, align 8, !alias.scope !661, !noalias !662
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.5.sroa.4.0.i, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx2.sroa_idx.i, align 8, !alias.scope !661, !noalias !662
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.03.0.i, ptr %i.ah, align 8, !alias.scope !661, !noalias !662
  %.sroa.55.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.55.sroa.0.0.i, ptr %.sroa.55.0..sroa_idx6.i, align 8, !alias.scope !661, !noalias !662
  %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.55.sroa.4.0.i, ptr %.sroa.55.sroa.4.0..sroa.55.0..sroa_idx6.sroa_idx.i, align 8, !alias.scope !661, !noalias !662
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 75
  store i8 %i.x, ptr %i.ai, align 1, !alias.scope !661, !noalias !662
  store i64 %.val17.i, ptr %i.a, align 8, !alias.scope !661, !noalias !662
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.532.0.i, ptr %.sroa.436.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662
  %.sroa.537.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.val17.i, ptr %.sroa.537.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662
  call void @_RNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB5_6Params4from(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = load i64, ptr %i.b, align 8, !range !12, !noundef !6 ; 3 uses
  %i.ak = icmp eq i64 %i.aj, -1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.041.0.copyload = load ptr, ptr %i.al, align 8 ; 5 uses
  %.sroa.442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.442.0.copyload = load i64, ptr %.sroa.442.0..sroa_idx, align 8 ; 3 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.543.sroa.0.0.copyload = load i64, ptr %.sroa.543.0..sroa_idx, align 8 ; 3 uses
  %.sroa.543.sroa.4.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.543.sroa.4.0.copyload = load ptr, ptr %.sroa.543.sroa.4.0..sroa.543.0..sroa_idx.sroa_idx, align 8 ; 5 uses
  %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.543.sroa.5.0.copyload = load i64, ptr %.sroa.543.sroa.5.0..sroa.543.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.644.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.644.0.copyload = load i64, ptr %.sroa.644.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.ak, label %bb.j, label %bb.l

bb.j:                                             ; preds = %_RNvXs6_Cs6EuPS8vUgp3_9uu_mktempNtB5_7OptionsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !672
  %i.am = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, 9) 8) #23, !noalias !672 ; 8 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.k, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !11

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #26, !noalias !672
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.j
  store ptr %.sroa.041.0.copyload, ptr %i.am, align 8
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sroa.442.0.copyload, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store i64 %.sroa.543.sroa.0.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.535.sroa.4.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %.sroa.543.sroa.4.0.copyload, ptr %.sroa.535.sroa.4.0..sroa.535.0..sroa_idx.sroa_idx, align 8
  %.sroa.535.sroa.5.0..sroa.535.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store i64 %.sroa.543.sroa.5.0.copyload, ptr %.sroa.535.sroa.5.0..sroa.535.0..sroa_idx.sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store i64 %.sroa.644.0.copyload, ptr %.sroa.636.0..sroa_idx, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @23, ptr %i.ap, align 8
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit

bb.l:                                             ; preds = %_RNvXs6_Cs6EuPS8vUgp3_9uu_mktempNtB5_7OptionsNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.4.sroa.7.sroa.0.0.copyload = load ptr, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %.sroa.4.sroa.7.sroa.4.0..sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.sroa.4.sroa.7.sroa.4.0.copyload = load i64, ptr %.sroa.4.sroa.7.sroa.4.0..sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = trunc nuw i8 %i.f to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.041.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.543.sroa.4.0.copyload) ]
  br i1 %i.aq, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = trunc nuw i8 %i.d to i1
  tail call void @_RNvCs6EuPS8vUgp3_9uu_mktemp4exec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.041.0.copyload, i64 noundef %.sroa.442.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.543.sroa.4.0.copyload, i64 noundef %.sroa.543.sroa.5.0.copyload, i64 noundef %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.7.sroa.4.0.copyload, i1 noundef zeroext %i.ar) #23
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call void @_RNvCs6EuPS8vUgp3_9uu_mktemp8dry_exec(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.041.0.copyload, i64 noundef %.sroa.442.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.543.sroa.4.0.copyload, i64 noundef %.sroa.543.sroa.5.0.copyload, i64 noundef %.sroa.5.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.4.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.4.sroa.7.sroa.4.0.copyload) #23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.as = icmp eq i64 %.sroa.644.0.copyload, 0
  br i1 %i.as, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.sroa.7.sroa.0.0.copyload, i64 noundef %.sroa.644.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !673
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.o, %bb.p
  %i.at = icmp eq i64 %.sroa.543.sroa.0.0.copyload, 0
  br i1 %i.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit8, label %bb.q

bb.q:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.543.sroa.4.0.copyload, i64 noundef %.sroa.543.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !674
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit8

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit8: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit, %bb.q
  %i.au = icmp eq i64 %i.aj, 0
  br i1 %i.au, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.r

bb.r:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit8
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.041.0.copyload, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !675
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit8, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs6EuPS8vUgp3_9uu_mktemp6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs6EuPS8vUgp3_9uu_mktemp.exit:
  %i.a = alloca [640 x i8], align 8               ; 54 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [640 x i8], align 8               ; 52 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [640 x i8], align 8               ; 60 uses
  %.sroa.0932 = alloca [80 x i8], align 8         ; 4 uses
  %.sroa.10942 = alloca [536 x i8], align 8       ; 4 uses
  %i.f = alloca [640 x i8], align 8               ; 8 uses
  %i.g = alloca [640 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [640 x i8], align 8               ; 60 uses
  %i.j = alloca [640 x i8], align 8               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [640 x i8], align 8               ; 57 uses
  %i.m = alloca [24 x i8], align 8                ; 6 uses
  %i.n = alloca [640 x i8], align 8               ; 53 uses
  %i.o = alloca [24 x i8], align 8                ; 6 uses
  %i.p = alloca [640 x i8], align 8               ; 53 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [640 x i8], align 8               ; 53 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [712 x i8], align 8               ; 57 uses
  %i.x = alloca [712 x i8], align 8               ; 5 uses
  %i.y = alloca [712 x i8], align 8               ; 5 uses
  %i.z = alloca [712 x i8], align 8               ; 5 uses
  %i.aa = alloca [712 x i8], align 8              ; 5 uses
  %i.ab = alloca [712 x i8], align 8              ; 5 uses
  %i.ac = alloca [712 x i8], align 8              ; 5 uses
  %i.ad = alloca [712 x i8], align 8              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 6) #23
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !alias.scope !860, !noalias !861 ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.ae, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.ae, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 12) #23
  %.sroa.0.0.copyload.i22 = load i64, ptr %i.u, align 8, !alias.scope !862, !noalias !863 ; 2 uses
  %i.af = icmp eq i64 %.sroa.0.0.copyload.i22, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i23 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.i21.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i23, align 8
  %.sroa.5.i21.sroa.4.0..sroa.55.0..sroa_idx.i23.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.i21.sroa.4.0.copyload = load i64, ptr %.sroa.5.i21.sroa.4.0..sroa.55.0..sroa_idx.i23.sroa_idx, align 8
  %.sroa.5.i21.sroa.0.0 = select i1 %i.af, ptr undef, ptr %.sroa.5.i21.sroa.0.0.copyload
  %.sroa.5.i21.sroa.4.0 = select i1 %i.af, i64 undef, i64 %.sroa.5.i21.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 12) #23
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !6, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ah, i64 noundef %i.aj) #23
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.t, align 8, !alias.scope !864, !noalias !865 ; 2 uses
  %i.ak = icmp eq i64 %.sroa.0.0.copyload.i28, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.5.i27.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i29, align 8
  %.sroa.5.i27.sroa.4.0..sroa.55.0..sroa_idx.i29.sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.5.i27.sroa.4.0.copyload = load i64, ptr %.sroa.5.i27.sroa.4.0..sroa.55.0..sroa_idx.i29.sroa_idx, align 8
  %.sroa.5.i27.sroa.0.0 = select i1 %i.ak, ptr undef, ptr %.sroa.5.i27.sroa.0.0.copyload
  %.sroa.5.i27.sroa.4.0 = select i1 %i.ak, i64 undef, i64 %.sroa.5.i27.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 0, ptr %i.w, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.23.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.0.sroa.29.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.0.sroa.32.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  store i64 %.sroa.0.0.copyload.i22, ptr %.sroa.0.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  store ptr %.sroa.5.i21.sroa.0.0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  store i64 %.sroa.5.i21.sroa.4.0, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.10.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.6.sroa.12.0..sroa.0.sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  store i64 %.sroa.0.0.copyload.i28, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  store ptr %.sroa.5.i27.sroa.0.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 480
  store i64 %.sroa.5.i27.sroa.4.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.6.sroa.9.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.6.sroa.9.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvCs6EuPS8vUgp3_9uu_mktemp6uu_app:_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs6EuPS8vUgp3_9uu_mktemp.exit
  %.sroa.11837.sroa.5.sroa.4.sroa.13.0..sroa.11837.sroa.5.sroa.4.0..sroa.11837.sroa.5.0..sroa.11837.0..sroa_idx838.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 628
  store i32 -1, ptr %.sroa.11837.sroa.5.sroa.4.sroa.13.0..sroa.11837.sroa.5.sroa.4.0..sroa.11837.sroa.5.0..sroa.11837.0..sroa_idx838.sroa_idx.sroa_idx.sroa_idx, align 4, !alias.scope !876
  %.sroa.11837.sroa.5.sroa.4.sroa.14.0..sroa.11837.sroa.5.sroa.4.0..sroa.11837.sroa.5.0..sroa.11837.0..sroa_idx838.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 632
  store i32 0, ptr %.sroa.11837.sroa.5.sroa.4.sroa.14.0..sroa.11837.sroa.5.sroa.4.0..sroa.11837.sroa.5.0..sroa.11837.0..sroa_idx838.sroa_idx.sroa_idx.sroa_idx, align 8, !alias.scope !876
  %.sroa.11837.sroa.5.sroa.4.sroa.15.0..sroa.11837.sroa.5.sroa.4.0..sroa.11837.sroa.5.0..sroa.11837.0..sroa_idx838.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 636
  store i8 -1, ptr %.sroa.11837.sroa.5.sroa.4.sroa.15.0..sroa.11837.sroa.5.sroa.4.0..sroa.11837.sroa.5.0..sroa.11837.0..sroa_idx838.sroa_idx.sroa_idx.sroa_idx, align 4, !alias.scope !876
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.j, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.i) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.aa, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.j) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ab, ptr noundef nonnull align 8 dereferenceable(712) %i.aa, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0932)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10942)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 18) #23
  %.sroa.01206.0.copyload = load i64, ptr %i.d, align 8
  %.sroa.21207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.21207.0.copyload = load ptr, ptr %.sroa.21207.0..sroa_idx, align 8
  %.sroa.31208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.31208.0.copyload = load i64, ptr %.sroa.31208.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !878)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !879
  %i.ar = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #23, !noalias !879 ; 4 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.c, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECs6EuPS8vUgp3_9uu_mktemp.exit239

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs6EuPS8vUgp3_9uu_mktemp.exit231
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #26, !noalias !880
  unreachable

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECs6EuPS8vUgp3_9uu_mktemp.exit239: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs6EuPS8vUgp3_9uu_mktemp.exit231
  store ptr @43, ptr %i.ar, align 8, !noalias !881
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 3, ptr %i.at, align 8, !noalias !882
  store i64 0, ptr %i.e, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.0944.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.0944.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.0944.sroa.7.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.0944.sroa.9.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 80 ; 2 uses
  store i64 -1, ptr %.sroa.0944.sroa.11.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %.sroa.0944.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  store i64 0, ptr %.sroa.0944.sroa.13.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.14.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.16.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.18.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.20.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.22.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.24.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.26.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.28.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %.sroa.0944.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0944.sroa.31.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0944.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0944.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0944.sroa.33.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.0944.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  store i64 0, ptr %.sroa.0944.sroa.34.0..sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.4945.0..sroa_idx946 = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store i64 1, ptr %.sroa.4945.0..sroa_idx946, align 8, !alias.scope !883, !noalias !884
  %.sroa.6948.0..sroa_idx949 = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store ptr %i.ar, ptr %.sroa.6948.0..sroa_idx949, align 8, !alias.scope !883, !noalias !884
  %.sroa.8951.0..sroa_idx952 = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  store i64 1, ptr %.sroa.8951.0..sroa_idx952, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.0..sroa_idx955 = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store i64 0, ptr %.sroa.9954.0..sroa_idx955, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.0.sroa.4.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9954.sroa.0.sroa.4.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.0.sroa.5.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9954.sroa.0.sroa.5.0..sroa.9954.0..sroa_idx955.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9954.sroa.0.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9954.sroa.0.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.0.sroa.7.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9954.sroa.0.sroa.7.0..sroa.9954.0..sroa_idx955.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9954.sroa.0.sroa.8.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9954.sroa.0.sroa.8.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.0.sroa.9.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 432
  %.sroa.9954.sroa.0.sroa.11.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9954.sroa.0.sroa.9.0..sroa.9954.0..sroa_idx955.sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9954.sroa.0.sroa.11.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.0.sroa.12.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9954.sroa.0.sroa.12.0..sroa.9954.0..sroa_idx955.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.9954.sroa.0.sroa.13.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9954.sroa.0.sroa.13.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.0.sroa.14.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 480
  store i64 0, ptr %.sroa.9954.sroa.0.sroa.14.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.4.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  store i64 %.sroa.01206.0.copyload, ptr %.sroa.9954.sroa.4.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.5.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store ptr %.sroa.21207.0.copyload, ptr %.sroa.9954.sroa.5.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  store i64 %.sroa.31208.0.copyload, ptr %.sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.4.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  store i64 -1, ptr %.sroa.9954.sroa.6.sroa.4.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.6.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 552
  store i64 -2, ptr %.sroa.9954.sroa.6.sroa.6.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.8.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 576
  store ptr @16, ptr %.sroa.9954.sroa.6.sroa.8.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.9.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 584
  store i64 6, ptr %.sroa.9954.sroa.6.sroa.9.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.10.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 592
  store ptr @16, ptr %.sroa.9954.sroa.6.sroa.10.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.11.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 600
  store i64 6, ptr %.sroa.9954.sroa.6.sroa.11.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.12.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 608
  store ptr null, ptr %.sroa.9954.sroa.6.sroa.12.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.14.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 624
  store i32 -1, ptr %.sroa.9954.sroa.6.sroa.14.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.15.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 628
  store i32 -1, ptr %.sroa.9954.sroa.6.sroa.15.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 4, !alias.scope !883, !noalias !884
  %.sroa.9954.sroa.6.sroa.16.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 632
  %.sroa.9954.sroa.6.sroa.17.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 636
  store i8 -1, ptr %.sroa.9954.sroa.6.sroa.17.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 4, !alias.scope !883, !noalias !884
  store i64 1, ptr %.sroa.0944.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.0944.sroa.6.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 1, ptr %.sroa.54.0..sroa_idx, align 8
  store i32 128, ptr %.sroa.9954.sroa.6.sroa.16.0..sroa.9954.sroa.6.0..sroa.9954.0..sroa_idx955.sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !885)
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 2 uses
  %i.av = load i64, ptr %.sroa.0944.sroa.17.0..sroa_idx, align 8, !alias.scope !886, !noalias !887, !noundef !6 ; 3 uses
  %i.aw = load i64, ptr %i.au, align 8, !range !7, !alias.scope !886, !noalias !887, !noundef !6
  %i.ax = icmp eq i64 %i.av, %i.aw
  br i1 %i.ax, label %bb.d, label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECs6EuPS8vUgp3_9uu_mktemp.exit

bb.d:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECs6EuPS8vUgp3_9uu_mktemp.exit239
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.au) #22, !noalias !887
  br label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECs6EuPS8vUgp3_9uu_mktemp.exit239, %bb.d
  %i.ay = load ptr, ptr %.sroa.0944.sroa.16.0..sroa_idx, align 8, !alias.scope !886, !noalias !887, !nonnull !6, !noundef !6
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.av ; 2 uses
  store ptr @30, ptr %i.az, align 8, !noalias !887
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 1, ptr %i.ba, align 8, !noalias !885
  %i.bb = add i64 %i.av, 1
  store i64 %i.bb, ptr %.sroa.0944.sroa.17.0..sroa_idx, align 8, !alias.scope !886, !noalias !887
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0932, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !alias.scope !888
  %.sroa.4933.0.copyload = load i64, ptr %.sroa.0944.sroa.11.0..sroa_idx, align 8, !alias.scope !888
  %.sroa.6936.0.copyload = load ptr, ptr %.sroa.0944.sroa.12.0..sroa_idx, align 8, !alias.scope !888 ; 4 uses
  %.sroa.8939.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %.sroa.8939.0.copyload = load ptr, ptr %.sroa.8939.0..sroa_idx, align 8, !alias.scope !888 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.10942, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.0944.sroa.13.0..sroa_idx, i64 536, i1 false), !alias.scope !888
  call void @llvm.experimental.noalias.scope.decl(metadata !889)
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %.sroa.4933.0.copyload.off = add i64 %.sroa.4933.0.copyload, -4
  %switch = icmp ult i64 %.sroa.4933.0.copyload.off, -5
  br i1 %switch, label %bb.e, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs6EuPS8vUgp3_9uu_mktemp.exit326

bb.e:                                             ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECs6EuPS8vUgp3_9uu_mktemp.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8939.0.copyload) ]
  %i.bc = load ptr, ptr %.sroa.8939.0.copyload, align 8, !invariant.load !6, !noalias !891 ; 2 uses
  %.not.i.i.i.i.i243 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i.i.i243, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6936.0.copyload) ]
  call void %i.bc(ptr noundef nonnull %.sroa.6936.0.copyload) #25, !noalias !891, !inline_history !851
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.8939.0.copyload, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !range !7, !invariant.load !6, !noalias !891 ; 2 uses
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs6EuPS8vUgp3_9uu_mktemp.exit326, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i244

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i244: ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.8939.0.copyload, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !9, !invariant.load !6, !noalias !891
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6936.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6936.0.copyload, i64 noundef %i.be, i64 noundef range(i64 1, -9223372036854775807) %i.bh) #23, !noalias !891
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs6EuPS8vUgp3_9uu_mktemp.exit326

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECs6EuPS8vUgp3_9uu_mktemp.exit326: ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECs6EuPS8vUgp3_9uu_mktemp.exit, %bb.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i244
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0932, i64 80, i1 false), !alias.scope !892
  %.sroa.4933.0..sroa_idx934 = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 4, ptr %.sroa.4933.0..sroa_idx934, align 8, !alias.scope !892
  %.sroa.6936.0..sroa_idx937 = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6936.0..sroa_idx937, align 8, !alias.scope !892
  %.sroa.8939.0..sroa_idx940 = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store ptr @57, ptr %.sroa.8939.0..sroa_idx940, align 8, !alias.scope !892
  %.sroa.10942.0..sroa_idx943 = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(536) %.sroa.10942.0..sroa_idx943, ptr noundef nonnull align 8 dereferenceable(536) %.sroa.10942, i64 536, i1 false), !alias.scope !892
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0932)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10942)
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.g) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ac, ptr noundef nonnull align 8 dereferenceable(712) %i.ab, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 13) #23
  %.sroa.01214.0.copyload = load i64, ptr %i.b, align 8
  %.sroa.21215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.21215.0.copyload = load ptr, ptr %.sroa.21215.0..sroa_idx, align 8
  %.sroa.31216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.31216.0.copyload = load i64, ptr %.sroa.31216.0..sroa_idx, align 8
  store i64 0, ptr %i.c, align 8
  %.sroa.01030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.01030.sroa.5.0..sroa_idx, align 8
  %.sroa.01030.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 0, ptr %.sroa.01030.sroa.7.0..sroa_idx, align 8
  %.sroa.01030.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i64 0, ptr %.sroa.01030.sroa.9.0..sroa_idx, align 8
  %.sroa.01030.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i64 -1, ptr %.sroa.01030.sroa.11.0..sroa_idx, align 8
  %.sroa.01030.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store i64 0, ptr %.sroa.01030.sroa.13.0..sroa_idx, align 8
  %.sroa.01030.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.14.0..sroa_idx, align 8
  %.sroa.01030.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.16.0..sroa_idx, align 8
  %.sroa.01030.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.18.0..sroa_idx, align 8
  %.sroa.01030.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.20.0..sroa_idx, align 8
  %.sroa.01030.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.22.0..sroa_idx, align 8
  %.sroa.01030.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.24.0..sroa_idx, align 8
  %.sroa.01030.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.26.0..sroa_idx, align 8
  %.sroa.01030.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.28.0..sroa_idx, align 8
  %.sroa.01030.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %.sroa.01030.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.31.0..sroa_idx, align 8
  %.sroa.01030.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.01030.sroa.33.0..sroa_idx, align 8
  %.sroa.01030.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.35.0..sroa_idx, align 8
  %.sroa.01030.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  %.sroa.01030.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.38.0..sroa_idx, align 8
  %.sroa.01030.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.40.0..sroa_idx, align 8
  %.sroa.01030.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.42.0..sroa_idx, align 8
  %.sroa.01030.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 432
  %.sroa.01030.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.45.0..sroa_idx, align 8
  %.sroa.01030.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.01030.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.01030.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.01030.sroa.47.0..sroa_idx, align 8
  %.sroa.01030.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store i64 0, ptr %.sroa.01030.sroa.48.0..sroa_idx, align 8
  %.sroa.41031.0..sroa_idx1032 = getelementptr inbounds nuw i8, ptr %i.c, i64 488
  store i64 %.sroa.01214.0.copyload, ptr %.sroa.41031.0..sroa_idx1032, align 8
  %.sroa.61034.0..sroa_idx1035 = getelementptr inbounds nuw i8, ptr %i.c, i64 496
  store ptr %.sroa.21215.0.copyload, ptr %.sroa.61034.0..sroa_idx1035, align 8
  %.sroa.71037.0..sroa_idx1038 = getelementptr inbounds nuw i8, ptr %i.c, i64 504
  store i64 %.sroa.31216.0.copyload, ptr %.sroa.71037.0..sroa_idx1038, align 8
  %.sroa.71037.sroa.5.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 512
  store i64 -1, ptr %.sroa.71037.sroa.5.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.7.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 552
  store i64 -2, ptr %.sroa.71037.sroa.7.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.9.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 576
  store ptr @31, ptr %.sroa.71037.sroa.9.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.10.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 584
  store i64 1, ptr %.sroa.71037.sroa.10.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.11.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 592
  store ptr null, ptr %.sroa.71037.sroa.11.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.13.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 608
  store ptr null, ptr %.sroa.71037.sroa.13.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.15.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 624
  store i32 116, ptr %.sroa.71037.sroa.15.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.16.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 628
  store i32 -1, ptr %.sroa.71037.sroa.16.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 4
  %.sroa.71037.sroa.17.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 632
  store i32 0, ptr %.sroa.71037.sroa.17.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 8
  %.sroa.71037.sroa.18.0..sroa.71037.0..sroa_idx1038.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 2, ptr %.sroa.71037.sroa.18.0..sroa.71037.0..sroa_idx1038.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.ac, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.c) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ad, ptr noundef nonnull align 8 dereferenceable(712) %i.ac, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.161118.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.161118.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.181120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.181120.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.201122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.201122.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.221124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.221124.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.241126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.241126.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.261128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.261128.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.281130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.281130.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.331135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.331135.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.351137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.351137.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.401142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.401142.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.421144.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.421144.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.471149.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.471149.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 0, ptr %i.a, align 8, !alias.scope !893, !noalias !894
  %.sroa.21106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.21106.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.41107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %.sroa.41107.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.51108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 1, ptr %.sroa.51108.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.61109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.61109.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.71111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.71111.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.81113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 2, ptr %.sroa.81113.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.141116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.141116.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.151117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.151117.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.171119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.171119.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.191121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.191121.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.211123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.211123.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.231125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.231125.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.251127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.251127.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.271129.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.271129.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.291131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.291131.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.301132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.321134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.301132.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.321134.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.341136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.341136.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.361138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.361138.0..sroa_idx, align 8, !alias.scope !893, !noalias !894
  %.sroa.371139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %.sroa.391141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.371139.0..sroa_idx, i8 0, i64 16, i1 false)
end_hunk_2
begin_hunk_3_@_RNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB5_6Params4from:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.cm = icmp samesign ult i64 %.sroa.03.0.i.lcssa, 16
  br i1 %i.cm, label %.lr.ph.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit

.lr.ph.i.i:                                       ; preds = %bb.af, %bb.ag
  %.sroa.01.05.i.i = phi i64 [ %i.cq, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.01.05.i.i
  %i.co = load i8, ptr %i.cn, align 1, !alias.scope !1145, !noundef !6
  %i.cp = icmp eq i8 %i.co, 47
  br i1 %i.cp, label %.critedge149, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.cq = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cq, %.sroa.03.0.i.lcssa
  br i1 %exitcond.not.i.i, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread, label %.lr.ph.i.i

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit: ; preds = %bb.af
  %i.cr = tail call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef range(i64 0, -9223372036854775808) %.sroa.03.0.i.lcssa) #23
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %.critedge149, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread

bb.ah:                                            ; preds = %bb.ai, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !noundef !6 ; 3 uses
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cx) #23
  %i.cy = load i64, ptr %i.k, align 8, !range !12, !noundef !6 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.da = load ptr, ptr %i.cz, align 8            ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.dc = load i64, ptr %i.db, align 8            ; 2 uses
  %.not.i192 = icmp eq i64 %i.dc, 0
  br i1 %.not.i192, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195: ; preds = %bb.ah
  %i.dd = getelementptr i8, ptr %i.da, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 -1
  %rhsc384 = load i8, ptr %i.de, align 1
  %i.df = icmp eq i8 %rhsc384, 47
  br i1 %i.df, label %bb.aj, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread

bb.ai:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit.thread
  %i.dg = tail call noundef zeroext i1 @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11is_absolute(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.sroa.03.0.i.lcssa) #23
  br i1 %i.dg, label %.critedge149, label %bb.ah

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread: ; preds = %bb.ah, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195
  %.not.i196 = icmp samesign ult i64 %.sroa.03.0.i.lcssa, 2
  br i1 %.not.i196, label %bb.ak, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread
  %i.dh = getelementptr i8, ptr %i.bc, i64 %.sroa.03.0.i.lcssa
  %i.di = getelementptr i8, ptr %i.dh, i64 -2
  %i.dj = load i16, ptr %i.di, align 1
  %i.dk = icmp ne i16 11823, %i.dj
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203, label %.thread

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199
  %i.dn = add i64 %.sroa.03.0.i.lcssa, -1         ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !alias.scope !1146, !noundef !6
  %i.dq = icmp sgt i8 %i.dp, -65
  br i1 %i.dq, label %select.unfold, label %.split126

bb.aj:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  br label %bb.ax

bb.ak:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit195.thread
  %i.dr = icmp eq i64 %.sroa.03.0.i.lcssa, 1
  br i1 %i.dr, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %lhsc = load i8, ptr %i.bc, align 1
  %i.ds = icmp eq i8 %lhsc, 46
  br i1 %i.ds, label %select.unfold, label %.thread

.thread:                                          ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh9ends_withCs6EuPS8vUgp3_9uu_mktemp.exit199, %bb.ak, %bb.al
  %i.dt = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cx) #23 ; 2 uses
  %i.du = extractvalue { ptr, i64 } %i.dt, 0      ; 2 uses
  %.not141 = icmp eq ptr %i.du, null
  br i1 %.not141, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.thread
  %i.dv = extractvalue { ptr, i64 } %i.dt, 1
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path11to_path_buf(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.du, i64 noundef %i.dv) #23
  br label %bb.ao

bb.an:                                            ; preds = %.thread
  store i64 0, ptr %i.j, align 8
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.497.0..sroa_idx, align 8
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %.sroa.598.0..sroa_idx, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.dw = tail call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path9file_name(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cv, i64 noundef %i.cx) #23 ; 2 uses
  %i.dx = extractvalue { ptr, i64 } %i.dw, 0      ; 2 uses
  %.not142 = icmp eq ptr %i.dx, null
  br i1 %.not142, label %bb.ax, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dy = extractvalue { ptr, i64 } %i.dw, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dx, i64 noundef %i.dy) #23
  %i.dz = load i64, ptr %i.i, align 8, !range !12, !noundef !6 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8            ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ed = load i64, ptr %i.ec, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ed, i64 noundef 1, i64 noundef 1) #23
  %i.ee = load i64, ptr %i.c, align 8, !range !15, !noundef !6
  %i.ef = trunc nuw i64 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eh = load i64, ptr %i.eg, align 8, !range !16, !noundef !6 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ef, label %bb.aq, label %bb.ar, !prof !19

bb.aq:                                            ; preds = %bb.ap
  %i.ej = load i64, ptr %i.ei, align 8
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.eh, i64 %i.ej) #26
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.ek = load ptr, ptr %i.ei, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.el = icmp ule i64 %i.ed, %i.eh
  tail call void @llvm.assume(i1 %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not144 = icmp eq i64 %i.ed, 0
  br i1 %.not144, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.au, %bb.ar
  %i.em = icmp sgt i64 %i.dz, 0
  br i1 %i.em, label %bb.at, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit

bb.at:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eb) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.eb, i64 noundef %i.dz, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1147
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ax

bb.au:                                            ; preds = %bb.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull align 1 %i.eb, i64 %i.ed, i1 false)
  br label %bb.as

select.unfold:                                    ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203, %bb.al
  %.ph = phi i64 [ 0, %bb.al ], [ %i.dn, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203 ]
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.11.0, i64 noundef %.sroa.19.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.ph) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1148
  %i.en = tail call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #23, !noalias !1148 ; 3 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.av, label %bb.aw

.split126:                                        ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str6traitsINtNtNtB9_3ops5range7RangeTojEINtNtNtB9_5slice5index10SliceIndexeE3get.exit203
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %.sroa.03.0.i.lcssa, i64 noundef 0, i64 noundef %i.dn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #24
  unreachable

bb.av:                                            ; preds = %select.unfold
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #26
  unreachable

bb.aw:                                            ; preds = %select.unfold
  store i8 46, ptr %i.en, align 1
  br label %bb.ax

bb.ax:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit, %bb.ao, %bb.aw, %bb.aj
  %.sroa.0.0.i194370 = phi i1 [ true, %bb.aj ], [ false, %bb.aw ], [ false, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ false, %bb.ao ] ; 2 uses
  %.sroa.066.1 = phi i64 [ 0, %bb.aj ], [ 1, %bb.aw ], [ %i.eh, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ 0, %bb.ao ] ; 3 uses
  %.sroa.570.1 = phi ptr [ inttoptr (i64 1 to ptr), %bb.aj ], [ %i.en, %bb.aw ], [ %i.ek, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ inttoptr (i64 1 to ptr), %bb.ao ] ; 2 uses
  %.sroa.677.1 = phi i64 [ 0, %bb.aj ], [ 1, %bb.aw ], [ %i.ed, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit ], [ 0, %bb.ao ]
  %i.ep = icmp sgt i64 %i.cy, 0
  br i1 %i.ep, label %bb.ay, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.da) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.da, i64 noundef %i.cy, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1149
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210: ; preds = %bb.ax, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.sroa.0279.0.copyload = load i64, ptr %i.j, align 8 ; 3 uses
  %.sroa.6281.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.6281.0.copyload = load ptr, ptr %.sroa.6281.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7284.0.copyload = load i64, ptr %.sroa.7284.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  br i1 %.not135, label %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit, label %bb.az

bb.az:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6.sroa.5.0.copyload = load i64, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1150
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload) ]
  call void @_RNvMNtCs7tKScEop1B6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.sroa.0.0.copyload, i64 noundef %.sroa.6.sroa.5.0.copyload) #23, !noalias !1150
  %i.eq = load i64, ptr %i.b, align 8, !range !12, !noalias !1150, !noundef !6 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.es = load ptr, ptr %i.er, align 8, !noalias !1150 ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !noalias !1150 ; 7 uses
  %.not.i.i211 = icmp slt i64 %i.eu, 0
  br i1 %.not.i.i211, label %bb.bb, label %bb.ba, !prof !20

bb.ba:                                            ; preds = %bb.az
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.ba
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !1151
  %i.ew = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.eu, i64 noundef range(i64 1, 9) 1) #23, !noalias !1151 ; 3 uses
  %i.ex = icmp eq ptr %i.ew, null
  br i1 %i.ex, label %bb.bb, label %bb.be

bb.bb:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %bb.az
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %bb.az ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %i.eu) #26, !noalias !1150
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i: ; preds = %bb.be, %bb.ba
  %i.ey = phi ptr [ %i.ew, %bb.be ], [ inttoptr (i64 1 to ptr), %bb.ba ] ; 2 uses
  %i.ez = icmp sgt i64 %i.eq, 0
  br i1 %i.ez, label %bb.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i

bb.bc:                                            ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.es, i64 noundef %i.eq, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1152
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i: ; preds = %bb.bc, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1150
  %i.fa = icmp eq i64 %i.an, 0
  br i1 %i.fa, label %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1153
  br label %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit

bb.be:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ew, ptr nonnull align 1 %i.es, i64 %i.eu, i1 false), !noalias !1150
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp.exit.thread12.i

_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210, %bb.bd, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i
  %.sink432 = phi i64 [ %i.eu, %bb.bd ], [ %i.eu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210 ] ; 2 uses
  %.sink431 = phi ptr [ %i.ey, %bb.bd ], [ %i.ey, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit.i ], [ inttoptr (i64 1 to ptr), %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs6EuPS8vUgp3_9uu_mktemp.exit210 ]
  store i64 %.sink432, ptr %i.h, align 8
  %.sroa.4110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sink431, ptr %.sroa.4110.0..sroa_idx, align 8
  %.sroa.5111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sink432, ptr %.sroa.5111.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fb = load i64, ptr %i.be, align 8, !noundef !6 ; 5 uses
  %i.fc = icmp eq i64 %.sroa.03.0.i.i434, 0
  br i1 %i.fc, label %.split128, label %bb.bf

bb.bf:                                            ; preds = %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit
  %.not.i212 = icmp ult i64 %.sroa.03.0.i.i434, %i.fb
  br i1 %.not.i212, label %bb.bg, label %.split.i213

.split.i213:                                      ; preds = %bb.bf
  %i.fd = icmp eq i64 %.sroa.03.0.i.i434, %i.fb
  br i1 %i.fd, label %.split128, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.03.0.i.i434
  %i.ff = load i8, ptr %i.fe, align 1, !alias.scope !1154, !noundef !6
  %i.fg = icmp sgt i8 %i.ff, -65
  br i1 %i.fg, label %.split128, label %bb.bi

.split128:                                        ; preds = %bb.bg, %.split.i213, %_RNCNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB7_6Params4from0B7_.exit
  %i.fh = sub nuw i64 %i.fb, %.sroa.03.0.i.i434
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.03.0.i.i434
  store ptr %i.fi, ptr %i.g, align 8, !captures !17
  %i.fj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.fh, ptr %i.fj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.4119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs6EuPS8vUgp3_9uu_mktemp, ptr %.sroa.4119.0..sroa_idx, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.h, ptr %i.fk, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4123.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @56, ptr noundef nonnull %i.e) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.fo = load i64, ptr %i.fn, align 8, !noundef !6 ; 4 uses
  %i.fp = icmp samesign ult i64 %i.fo, 16
  br i1 %i.fp, label %.preheader.i.i216, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221

.preheader.i.i216:                                ; preds = %.split128
  %.not.i.i217 = icmp eq i64 %i.fo, 0
  br i1 %.not.i.i217, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread, label %.lr.ph.i.i218

.lr.ph.i.i218:                                    ; preds = %.preheader.i.i216, %bb.bh
  %.sroa.01.05.i.i219 = phi i64 [ %i.ft, %bb.bh ], [ 0, %.preheader.i.i216 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fm, i64 %.sroa.01.05.i.i219
  %i.fr = load i8, ptr %i.fq, align 1, !alias.scope !1155, !noundef !6
  %i.fs = icmp eq i8 %i.fr, 47
  br i1 %i.fs, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread380, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i218
  %i.ft = add nuw nsw i64 %.sroa.01.05.i.i219, 1  ; 2 uses
  %exitcond.not.i.i220 = icmp eq i64 %i.ft, %i.fo
  br i1 %exitcond.not.i.i220, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread, label %.lr.ph.i.i218

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221: ; preds = %.split128
  %i.fu = call { i64, i64 } @_RNvNtNtCs6JMX4GRUq9U_4core5slice6memchr14memchr_aligned(i8 noundef 47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fm, i64 noundef range(i64 0, -9223372036854775808) %i.fo) #23
  %i.fv = extractvalue { i64, i64 } %i.fu, 0
  %i.fw = icmp eq i64 %i.fv, 1
  br i1 %i.fw, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread380, label %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread

bb.bi:                                            ; preds = %bb.bg, %.split.i213
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bc, i64 noundef %i.fb, i64 noundef %.sroa.03.0.i.i434, i64 noundef %i.fb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #24
  unreachable

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread: ; preds = %bb.bh, %.preheader.i.i216, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221
  %.sroa.030.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.030.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  store i64 %.sroa.0279.0.copyload, ptr %0, align 8
  %.sroa.030.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6281.0.copyload, ptr %.sroa.030.sroa.4.0..sroa_idx, align 8
  %.sroa.030.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.7284.0.copyload, ptr %.sroa.030.sroa.5.0..sroa_idx, align 8
  %.sroa.030.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.066.1, ptr %.sroa.030.sroa.6.0..sroa_idx, align 8
  %.sroa.030.sroa.6.sroa.4.0..sroa.030.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.570.1, ptr %.sroa.030.sroa.6.sroa.4.0..sroa.030.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.030.sroa.6.sroa.5.0..sroa.030.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.677.1, ptr %.sroa.030.sroa.6.sroa.5.0..sroa.030.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.br, ptr %.sroa.631.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.experimental.noalias.scope.decl(metadata !1157)
  %.val.i.i222 = load i64, ptr %i.h, align 8, !range !7, !alias.scope !1158, !noundef !6 ; 2 uses
  %i.fx = icmp eq i64 %.val.i.i222, 0
  br i1 %i.fx, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit224, label %bb.bj

bb.bj:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread
  %i.fy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i223 = load ptr, ptr %i.fy, align 8, !alias.scope !1158, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i223, i64 noundef %.val.i.i222, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1158
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit224

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit224: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %.sroa.0.0.i194370, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit237, label %bb.br

_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread380: ; preds = %.lr.ph.i.i218, %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.428.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775804, ptr %i.fz, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  call void @llvm.experimental.noalias.scope.decl(metadata !1160)
  %.val.i.i225 = load i64, ptr %i.h, align 8, !range !7, !alias.scope !1161, !noundef !6 ; 2 uses
  %i.ga = icmp eq i64 %.val.i.i225, 0
  br i1 %i.ga, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit227, label %bb.bk

bb.bk:                                            ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread380
  %i.gb = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i.i226 = load ptr, ptr %i.gb, align 8, !alias.scope !1161, !nonnull !6, !noundef !6
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i226, i64 noundef %.val.i.i225, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1161
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit227

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit227: ; preds = %_RNvXs2_NtNtCs6JMX4GRUq9U_4core3str7patterncNtB5_7Pattern15is_contained_in.exit221.thread380, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.gc = icmp eq i64 %.sroa.066.1, 0
  br i1 %i.gc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit230, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit227
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.570.1, i64 noundef %.sroa.066.1, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1162
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit230

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit230: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit227, %bb.bl
  %i.gd = icmp eq i64 %.sroa.0279.0.copyload, 0
  br i1 %i.gd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.bm

bb.bm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit230
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6281.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6281.0.copyload, i64 noundef %.sroa.0279.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !1163
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit230, %bb.bm
  br i1 %.sroa.0.0.i194370, label %.critedge, label %bb.bt

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit237: ; preds = %bb.bs, %bb.br, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs6EuPS8vUgp3_9uu_mktemp.exit224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ge = icmp eq i64 %.sroa.19.0, 0
  br i1 %i.ge, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs6EuPS8vUgp3_9uu_mktemp.exit231, label %bb.bn
end_hunk_3
begin_hunk_4_@_RNvMs0_Cs6EuPS8vUgp3_9uu_mktempNtB5_6Params4from:bb.a
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i261, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.hb = icmp eq i64 %i.bb, 0
  br i1 %i.hb, label %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECs6EuPS8vUgp3_9uu_mktemp.exit, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCs6EuPS8vUgp3_9uu_mktemp.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCs6EuPS8vUgp3_9uu_mktemp.exit.i.i: ; preds = %bb.ch
  %i.hc = add nuw i64 %i.bb, 3
  %.sroa.0.0.i.i.i.i = lshr i64 %i.hc, 2
  %..i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.bb, i64 %.sroa.0.0.i.i.i.i)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %..i.i.i.i, i64 noundef 1, i64 noundef 1) #23
  br label %bb.ci

bb.ci:                                            ; preds = %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCs6EuPS8vUgp3_9uu_mktemp.exit.i.i
  %i.hd = phi ptr [ %i.bc, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCs6EuPS8vUgp3_9uu_mktemp.exit.i.i ], [ %i.iu, %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i ] ; 6 uses
  %.sroa.01.0.i.in.i.i.i.i = phi i64 [ %i.bb, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeNtNtNtBa_3str4iter5CharsENtNtNtB8_6traits8iterator8Iterator9size_hintCs6EuPS8vUgp3_9uu_mktemp.exit.i.i ], [ %.sroa.01.0.i.i.i.i.i, %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i = add nsw i64 %.sroa.01.0.i.in.i.i.i.i, -1 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.hd, %i.bf
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 1 ; 3 uses
  %i.hf = load i8, ptr %i.hd, align 1, !noalias !1190, !noundef !6 ; 5 uses
  %i.hg = icmp sgt i8 %i.hf, -1
  br i1 %i.hg, label %.thread.i.i.i.i.i, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit12.i.i.i.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit12.i.i.i.i.i.i.i: ; preds = %bb.cj
  %i.hh = and i8 %i.hf, 31
  %i.hi = zext nneg i8 %i.hh to i32               ; 3 uses
  %i.hj = icmp ne ptr %i.he, %i.bf
  tail call void @llvm.assume(i1 %i.hj)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hd, i64 2 ; 3 uses
  %i.hl = load i8, ptr %i.he, align 1, !noalias !1190, !noundef !6
  %i.hm = shl nuw nsw i32 %i.hi, 6
  %i.hn = and i8 %i.hl, 63
  %i.ho = zext nneg i8 %i.hn to i32               ; 2 uses
  %i.hp = or disjoint i32 %i.hm, %i.ho
  %i.hq = icmp samesign ugt i8 %i.hf, -33
  br i1 %i.hq, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit14.i.i.i.i.i.i.i, label %bb.ck

.thread.i.i.i.i.i:                                ; preds = %bb.cj
  %i.hr = zext nneg i8 %i.hf to i32
  %i.hs = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !6 ; 2 uses
  %i.ht = icmp sgt i64 %i.hs, -1
  tail call void @llvm.assume(i1 %i.ht)
  br label %bb.cn

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit14.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit12.i.i.i.i.i.i.i
  %i.hu = icmp ne ptr %i.hk, %i.bf
  tail call void @llvm.assume(i1 %i.hu)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hd, i64 3 ; 3 uses
  %i.hw = load i8, ptr %i.hk, align 1, !noalias !1190, !noundef !6
  %i.hx = shl nuw nsw i32 %i.ho, 6
  %i.hy = and i8 %i.hw, 63
  %i.hz = zext nneg i8 %i.hy to i32
  %i.ia = or disjoint i32 %i.hx, %i.hz            ; 2 uses
  %i.ib = shl nuw nsw i32 %i.hi, 12
  %i.ic = or disjoint i32 %i.ia, %i.ib
  %i.id = icmp samesign ugt i8 %i.hf, -17
  br i1 %i.id, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit16.i.i.i.i.i.i.i, label %bb.ck

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit16.i.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit14.i.i.i.i.i.i.i
  %i.ie = icmp ne ptr %i.hv, %i.bf
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.ig = load i8, ptr %i.hv, align 1, !noalias !1190, !noundef !6
  %i.ih = shl nuw nsw i32 %i.hi, 18
  %i.ii = and i32 %i.ih, 1835008
  %i.ij = shl nuw nsw i32 %i.ia, 6
  %i.ik = and i8 %i.ig, 63
  %i.il = zext nneg i8 %i.ik to i32
  %i.im = or disjoint i32 %i.ij, %i.il
  %i.in = or disjoint i32 %i.im, %i.ii
  br label %bb.ck

bb.ck:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit16.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit14.i.i.i.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit12.i.i.i.i.i.i.i
  %i.io = phi ptr [ %i.hv, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit14.i.i.i.i.i.i.i ], [ %i.if, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit16.i.i.i.i.i.i.i ], [ %i.hk, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit12.i.i.i.i.i.i.i ] ; 3 uses
  %spec.select.i.ph.i.i.i.i.i = phi i32 [ %i.ic, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit14.i.i.i.i.i.i.i ], [ %i.in, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit16.i.i.i.i.i.i.i ], [ %i.hp, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6EuPS8vUgp3_9uu_mktemp.exit12.i.i.i.i.i.i.i ] ; 6 uses
  %i.ip = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !noundef !6 ; 4 uses
  %i.iq = icmp sgt i64 %i.ip, -1
  tail call void @llvm.assume(i1 %i.iq)
  %i.ir = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 128
  br i1 %i.ir, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.is = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 2048
  br i1 %i.is, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.it = icmp samesign ult i32 %spec.select.i.ph.i.i.i.i.i, 65536
  %..i.i.i.i.i.i.i.i = select i1 %i.it, i64 3, i64 4
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck, %.thread.i.i.i.i.i
  %i.iu = phi ptr [ %i.io, %bb.cl ], [ %i.io, %bb.cm ], [ %i.io, %bb.ck ], [ %i.he, %.thread.i.i.i.i.i ]
  %i.iv = phi i1 [ false, %bb.cl ], [ false, %bb.cm ], [ true, %bb.ck ], [ true, %.thread.i.i.i.i.i ]
  %i.iw = phi i64 [ %i.ip, %bb.cl ], [ %i.ip, %bb.cm ], [ %i.ip, %bb.ck ], [ %i.hs, %.thread.i.i.i.i.i ] ; 4 uses
  %spec.select.i.ph12.i.i.i.i.i = phi i32 [ %spec.select.i.ph.i.i.i.i.i, %bb.cl ], [ %spec.select.i.ph.i.i.i.i.i, %bb.cm ], [ %spec.select.i.ph.i.i.i.i.i, %bb.ck ], [ %i.hr, %.thread.i.i.i.i.i ] ; 7 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.cl ], [ %..i.i.i.i.i.i.i.i, %bb.cm ], [ 1, %bb.ck ], [ 1, %.thread.i.i.i.i.i ] ; 3 uses
  %i.ix = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %i.iy = sub nsw i64 %i.ix, %i.iw
  %i.iz = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.iy
  br i1 %i.iz, label %bb.co, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i.i.i.i, !prof !19

bb.co:                                            ; preds = %bb.cn
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.iw, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1) #23
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i.i.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i.i.i.i: ; preds = %bb.co, %bb.cn
  %i.ja = load ptr, ptr %.sroa.4.0..sroa_idx.i261, align 8, !nonnull !6, !noundef !6
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 %i.iw ; 10 uses
  br i1 %i.iv, label %bb.cq, label %bb.cp

bb.cp:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i.i.i.i
  %i.jc = icmp samesign ult i32 %spec.select.i.ph12.i.i.i.i.i, 2048
  %i.jd = trunc i32 %spec.select.i.ph12.i.i.i.i.i to i8
  %i.je = and i8 %i.jd, 63
  %i.jf = or disjoint i8 %i.je, -128              ; 3 uses
  %i.jg = lshr i32 %spec.select.i.ph12.i.i.i.i.i, 6
  %i.jh = trunc i32 %i.jg to i8                   ; 2 uses
  %i.ji = and i8 %i.jh, 63
  %i.jj = or disjoint i8 %i.ji, -128              ; 2 uses
  %i.jk = lshr i32 %spec.select.i.ph12.i.i.i.i.i, 12
  %i.jl = trunc i32 %i.jk to i8                   ; 2 uses
  %i.jm = and i8 %i.jl, 63
  %i.jn = or disjoint i8 %i.jm, -128
  %i.jo = lshr i32 %spec.select.i.ph12.i.i.i.i.i, 18
  %i.jp = trunc nuw nsw i32 %i.jo to i8
  %i.jq = or disjoint i8 %i.jp, -16
  br i1 %i.jc, label %bb.cr, label %bb.cs

bb.cq:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i.i.i.i
  %i.jr = trunc nuw nsw i32 %spec.select.i.ph12.i.i.i.i.i to i8
  store i8 %i.jr, ptr %i.jb, align 1, !noalias !1191
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i

bb.cr:                                            ; preds = %bb.cp
  %i.js = or disjoint i8 %i.jh, -64
  store i8 %i.js, ptr %i.jb, align 1, !noalias !1191
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store i8 %i.jf, ptr %i.jt, align 1, !noalias !1191
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cp
  %i.ju = icmp samesign ult i32 %spec.select.i.ph12.i.i.i.i.i, 65536
  br i1 %i.ju, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.jv = or disjoint i8 %i.jl, -32
  store i8 %i.jv, ptr %i.jb, align 1, !noalias !1191
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store i8 %i.jj, ptr %i.jw, align 1, !noalias !1191
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  store i8 %i.jf, ptr %i.jx, align 1, !noalias !1191
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i

bb.cu:                                            ; preds = %bb.cs
  store i8 %i.jq, ptr %i.jb, align 1, !noalias !1191
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jb, i64 1
  store i8 %i.jn, ptr %i.jy, align 1, !noalias !1191
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jb, i64 2
  store i8 %i.jj, ptr %i.jz, align 1, !noalias !1191
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jb, i64 3
  store i8 %i.jf, ptr %i.ka, align 1, !noalias !1191
  br label %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i

_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i: ; preds = %bb.cu, %bb.ct, %bb.cr, %bb.cq
  %i.kb = add nuw i64 %.sroa.0.0.i.i.i.i.i.i.i.i, %i.iw
  store i64 %i.kb, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.kc = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.kc, label %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.ci

bb.cv:                                            ; preds = %.loopexit
  call void @_RNvXs4_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) #23
  br label %_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECs6EuPS8vUgp3_9uu_mktemp.exit

_RINvXs5_NtCs7tKScEop1B6_5alloc6stringNtB6_6StringINtNtNtNtCs6JMX4GRUq9U_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters4take4TakeNtNtNtBU_3str4iter5CharsEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %_RNCINvNvXs7_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkcNCINvXsd_NtCs7tKScEop1B6_5alloc6stringNtB1O_6StringINtNtNtBe_6traits7collect6ExtendcE6extendIBT_NtNtNtBg_3str4iter5CharsEE0E0Cs6EuPS8vUgp3_9uu_mktemp.exit.i.i.i.i.i, %bb.ci, %bb.ch, %bb.cv
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -9223372036854775806, ptr %i.kd, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.w
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs6EuPS8vUgp3_9uu_mktemp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %4 = mul nuw i64 %3, %.0.val                    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %i.b, %4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %4, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.b, 0
  br i1 %i.h, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6EuPS8vUgp3_9uu_mktemp(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 16)) %0, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 4 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %bb.d, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %2 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.f, %bb.g, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.f ], [ 0, %bb.g ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.b
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.j = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #23 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.m, align 8
  br label %bb.e

bb.g:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.n = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.p, align 8
  br label %bb.e
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB4_7Options4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [40 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [40 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [40 x i8], align 8                ; 6 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [40 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [40 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneINtNtCs6JMX4GRUq9U_4core6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 6) #23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @16, ptr %i.m, align 8, !noalias !1239
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 6, ptr %i.u, align 8, !noalias !1239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1239
  %i.v = load i64, ptr %i.q, align 8, !range !1240, !alias.scope !1238, !noalias !1241, !noundef !6
  %.not.i = icmp eq i64 %i.v, 2
  br i1 %.not.i, label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRIB1d_NtNtCs2vKOLqTMYjT_3std4path7PathBufEEECs6EuPS8vUgp3_9uu_mktemp.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.q, i64 40, i1 false), !noalias !1241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1239
  store ptr %i.m, ptr %i.k, align 8, !noalias !1239
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs6EuPS8vUgp3_9uu_mktemp, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1239
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.l, ptr %i.w, align 8, !noalias !1239
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1239
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !1238
  unreachable

_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRIB1d_NtNtCs2vKOLqTMYjT_3std4path7PathBufEEECs6EuPS8vUgp3_9uu_mktemp.exit: ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1238, !noalias !1241, !align !8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %.not.i59 = icmp eq ptr %i.y, null
  br i1 %.not.i59, label %bb.c, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit.thread

bb.c:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRIB1d_NtNtCs2vKOLqTMYjT_3std4path7PathBufEEECs6EuPS8vUgp3_9uu_mktemp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1242
  call fastcc void @_RINvMs0_NtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB6_10ArgMatches11try_get_oneINtNtCs6JMX4GRUq9U_4core6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECs6EuPS8vUgp3_9uu_mktemp(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @30, i64 noundef 1) #23, !noalias !1243
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1244)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1242
  store ptr @30, ptr %i.i, align 8, !noalias !1245
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !1245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1245
  %i.aa = load i64, ptr %i.j, align 8, !range !1240, !alias.scope !1244, !noalias !1246, !noundef !6
  %.not.i.i.i = icmp eq i64 %i.aa, 2
  br i1 %.not.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit, label %bb.d, !prof !10

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.j, i64 40, i1 false), !noalias !1246
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1245
  store ptr %i.i, ptr %i.g, align 8, !noalias !1245
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs6EuPS8vUgp3_9uu_mktemp, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !1245
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.ab, align 8, !noalias !1245
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !1245
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #24, !noalias !1247
  unreachable

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit: ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !1244, !noalias !1246, !align !8, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1242
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %bb.e, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit.thread

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit.thread: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRIB1d_NtNtCs2vKOLqTMYjT_3std4path7PathBufEEECs6EuPS8vUgp3_9uu_mktemp.exit, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit
  %.sroa.0.0.i103 = phi ptr [ %i.ad, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit ], [ %i.y, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRIB1d_NtNtCs2vKOLqTMYjT_3std4path7PathBufEEECs6EuPS8vUgp3_9uu_mktemp.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ae = load i64, ptr %.sroa.0.0.i103, align 8, !range !12, !noundef !6
  %.not46 = icmp eq i64 %i.ae, -1
  br i1 %.not46, label %bb.j, label %bb.g

bb.e:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRIBw_NtNtCs2vKOLqTMYjT_3std4path7PathBufEE7or_elseNCNvMs_Cs6EuPS8vUgp3_9uu_mktempNtB1D_7Options4from0EB1D_.exit, %_RNvXsb_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs6EuPS8vUgp3_9uu_mktemp.exit
end_hunk_4
