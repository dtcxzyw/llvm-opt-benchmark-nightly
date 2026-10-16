Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcher10ArgMatcherEBH_:bb.a
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.j, %.lr.ph.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [104 x i8], ptr %.val.i1.i.i, i64 %.sroa.0.03.i.i.i.i.i
  %i.j = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_(ptr noalias nofree noundef readonly align 8 dereferenceable(104) %i.i) #43, !noalias !765, !inline_history !747
  %i.k = icmp eq i64 %i.j, %.val1.i2.i.i
  br i1 %i.k, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.e, align 8, !range !11, !alias.scope !765, !noundef !10 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_.exit, label %bb.c

bb.c:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_.exit.i.i.i
  %i.m = mul nuw i64 %.val2.i.i.i, 104
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !765, !inline_history !747
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBN_.exit.i.i.i, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10SubCommandEEEB1E_(ptr noalias nofree noundef readonly align 8 dereferenceable(8) %i.n) #43, !inline_history !747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.o = load i64, ptr %0, align 8, !range !14, !alias.scope !766, !noundef !10
  %i.p = icmp eq i64 %i.o, 2
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser10PendingArgEEB13_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !767)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !768)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i.i1 = load ptr, ptr %i.r, align 8, !alias.scope !769, !nonnull !10, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3.i.i.i = load i64, ptr %i.s, align 8, !alias.scope !769, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.t = icmp eq i64 %.val3.i.i.i, 0
  br i1 %i.t, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i2

.lr.ph.i.i.i.i.i2:                                ; preds = %bb.d, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i3 = phi i64 [ %i.v, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i ], [ 0, %bb.d ] ; 2 uses
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i1, i64 %.sroa.0.03.i.i.i.i.i3 ; 2 uses
  %i.v = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i3, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %.val.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !range !11, !alias.scope !772, !noalias !769, !noundef !10 ; 2 uses
  %i.w = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.w, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i2
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !772, !noalias !769, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !773
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i2
  %i.y = icmp eq i64 %i.v, %.val3.i.i.i
  br i1 %i.y, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %.lr.ph.i.i.i.i.i2

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, %bb.d
  %.val.i.i.i4 = load i64, ptr %i.q, align 8, !range !11, !alias.scope !769, !noundef !10 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i4, 0
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser10PendingArgEEB13_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %i.aa = mul nuw i64 %.val.i.i.i4, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i1, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !769
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser10PendingArgEEB13_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser10PendingArgEEB13_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matches10ArgMatchesEBJ_.exit, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder6parser6parser11ParseResultEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !28, !noundef !10 ; 5 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775804
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit [
    i64 0, label %bb.b
    i64 4, label %bb.c
    i64 6, label %bb.f
    i64 7, label %bb.g
  ]

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.sink.split: ; preds = %bb.g, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, %bb.b
  %.sink15 = phi i64 [ 16, %bb.f ], [ 56, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit ], [ 16, %bb.b ], [ 16, %bb.g ]
  %.val.i12.sink = phi i64 [ %.val.i9, %bb.f ], [ %.val.i6, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit ], [ %.val.i, %bb.b ], [ %.val.i12, %bb.g ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %.sink15
  %.val1.i13 = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i13, i64 noundef %.val.i12.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.sink.split, %bb.g, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load i64, ptr %i.g, align 8, !range !11, !alias.scope !786, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %.val.i, 0
  br i1 %i.h, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.sink.split

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !787)
  %i.i = icmp eq i64 %i.a, 0
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit3, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i2 = load ptr, ptr %i.j, align 8, !alias.scope !787, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !787
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit3

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit3: ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %.val.i4 = load i64, ptr %i.k, align 8, !range !11, !alias.scope !788, !noundef !10 ; 2 uses
  %i.l = icmp eq i64 %.val.i4, 0
  br i1 %i.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit, label %bb.e

bb.e:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit3
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i5 = load ptr, ptr %i.m, align 8, !alias.scope !788, !nonnull !10, !noundef !10
  %i.n = shl nuw i64 %.val.i4, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !788
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit3, %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i6 = load i64, ptr %i.o, align 8, !range !11, !alias.scope !789, !noundef !10 ; 2 uses
  %i.p = icmp eq i64 %.val.i6, 0
  br i1 %i.p, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.sink.split

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i9 = load i64, ptr %i.q, align 8, !range !11, !alias.scope !790, !noundef !10 ; 2 uses
  %i.r = icmp eq i64 %.val.i9, 0
  br i1 %i.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.sink.split

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i12 = load i64, ptr %i.s, align 8, !range !11, !alias.scope !791, !noundef !10 ; 2 uses
  %i.t = icmp eq i64 %.val.i12, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !794)
  %.val.i = load i64, ptr %0, align 8, !range !11, !alias.scope !794, !noundef !10 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !794, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !794
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3ext10ExtensionsEBH_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !809)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !810)
  %.val.i.i = load i64, ptr %0, align 8, !range !11, !alias.scope !811, !noundef !10 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !811, !nonnull !10, !noundef !10
  %i.c = shl nuw i64 %.val.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !811
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i: ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !812)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i1.i = load ptr, ptr %i.e, align 8, !alias.scope !813, !nonnull !10, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i2.i = load i64, ptr %i.f, align 8, !alias.scope !813, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !814)
  %i.g = icmp eq i64 %.val1.i2.i, 0
  br i1 %i.g, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i
  %.sroa.0.03.i.i.i.i = phi i64 [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i ] ; 2 uses
  %i.h = getelementptr inbounds nuw [32 x i8], ptr %.val.i1.i, i64 %.sroa.0.03.i.i.i.i ; 2 uses
  %i.i = add nuw nsw i64 %.sroa.0.03.i.i.i.i, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !815)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !816)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !817)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !818, !noalias !813, !nonnull !10, !noundef !10
  %1 = atomicrmw sub ptr %i.j, i64 1 release, align 8, !noalias !819
  %i.k = icmp eq i64 %1, 1
  br i1 %i.k, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.h) #42, !noalias !813
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.l = icmp eq i64 %i.i, %.val1.i2.i
  br i1 %i.l, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i
  %.val2.i.i = load i64, ptr %i.d, align 8, !range !11, !alias.scope !813, !noundef !10 ; 2 uses
  %i.m = icmp eq i64 %.val2.i.i, 0
  br i1 %i.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEEBI_.exit, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.n = shl nuw i64 %.val2.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !813
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEEBI_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map7FlatMapNtNtBG_9any_value10AnyValueIdNtB1y_8AnyValueEEBI_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEBH_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272
  %.val4 = load i64, ptr %i.a, align 8, !range !12, !noundef !10 ; 2 uses
  %i.b = icmp sgt i64 %.val4, 0
  br i1 %i.b, label %bb.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %.val5 = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %.val4, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1001
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val2 = load i64, ptr %i.d, align 8, !range !12, !noundef !10 ; 2 uses
  %i.e = icmp sgt i64 %.val2, 0
  br i1 %i.e, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit8

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1002
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit8

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit8: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %i.h = load i64, ptr %i.g, align 8, !range !12, !alias.scope !1003, !noundef !10 ; 3 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.d

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1004)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  %.val1.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1006, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1006
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit8, %bb.d, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.m = load i64, ptr %i.l, align 8, !range !12, !alias.scope !1007, !noundef !10 ; 3 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit10, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit10, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.val1.i.i.i9 = load ptr, ptr %i.p, align 8, !alias.scope !1010, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i9, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1010
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit10

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit10: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit, %bb.f, %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  %i.r = load i64, ptr %i.q, align 8, !range !12, !alias.scope !1011, !noundef !10 ; 3 uses
  %i.s = icmp eq i64 %i.r, -1
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit12, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit12, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.val1.i.i.i11 = load ptr, ptr %i.u, align 8, !alias.scope !1014, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i11, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1014
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit12

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit12: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit10, %bb.h, %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1015)
  %i.w = load i64, ptr %i.v, align 8, !range !12, !alias.scope !1015, !noundef !10 ; 3 uses
  %i.x = icmp eq i64 %i.w, -1
  br i1 %i.x, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit14, label %bb.j

bb.j:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit12
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.y = icmp eq i64 %i.w, 0
  br i1 %i.y, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit14, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.val1.i.i.i13 = load ptr, ptr %i.z, align 8, !alias.scope !1018, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i13, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1018
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit14

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit14: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit12, %bb.j, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.ab = load i64, ptr %i.aa, align 8, !range !12, !alias.scope !1019, !noundef !10 ; 3 uses
  %i.ac = icmp eq i64 %i.ab, -1
  br i1 %i.ac, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit16, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1020)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  %i.ad = icmp eq i64 %i.ab, 0
  br i1 %i.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit16, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 424
  %.val1.i.i.i15 = load ptr, ptr %i.ae, align 8, !alias.scope !1022, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i15, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1022
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit16

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit16: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit14, %bb.l, %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.ag = load i64, ptr %i.af, align 8, !range !12, !alias.scope !1023, !noundef !10 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, -1
  br i1 %i.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit18, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit18, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.val1.i.i.i17 = load ptr, ptr %i.aj, align 8, !alias.scope !1026, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i17, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1026
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit18

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit18: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit16, %bb.n, %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  %.val.i = load i64, ptr %i.ak, align 8, !range !11, !alias.scope !1027, !noundef !10 ; 2 uses
  %i.al = icmp eq i64 %.val.i, 0
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit, label %bb.p

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit18
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load ptr, ptr %i.am, align 8, !alias.scope !1027, !nonnull !10, !noundef !10
  %i.an = mul nuw i64 %.val.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1027
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit18, %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %.val.i19 = load i64, ptr %i.ao, align 8, !range !11, !alias.scope !1028, !noundef !10 ; 2 uses
  %i.ap = icmp eq i64 %.val.i19, 0
  br i1 %i.ap, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.q

bb.q:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i20 = load ptr, ptr %i.aq, align 8, !alias.scope !1028, !nonnull !10, !noundef !10
  %i.ar = shl nuw i64 %.val.i19, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i20, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 4) #43, !noalias !1028
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit, %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1029)
  %.val.i21 = load i64, ptr %i.as, align 8, !range !11, !alias.scope !1029, !noundef !10 ; 2 uses
  %i.at = icmp eq i64 %.val.i21, 0
  br i1 %i.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit23, label %bb.r
end_hunk_0
begin_hunk_1_@_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEBH_:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1078)
  %.val.i12.i.i.i.i.i = load i64, ptr %i.df, align 8, !range !11, !alias.scope !1079, !noalias !1045, !noundef !10 ; 2 uses
  %i.dg = icmp eq i64 %.val.i12.i.i.i.i.i, 0
  br i1 %i.dg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit.i.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEEB1f_.exit.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bs, i64 208
  %.val1.i13.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !alias.scope !1079, !noalias !1045, !nonnull !10, !noundef !10
  %i.di = shl nuw i64 %.val.i12.i.i.i.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i13.i.i.i.i.i, i64 noundef %i.di, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1080
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit.i.i.i.i.i: ; preds = %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtB1f_4util2id2IdEEEB1f_.exit.i.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bs, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1081)
  %.val.i14.i.i.i.i.i = load i64, ptr %i.dj, align 8, !range !11, !alias.scope !1082, !noalias !1045, !noundef !10 ; 2 uses
  %i.dk = icmp eq i64 %.val.i14.i.i.i.i.i, 0
  br i1 %i.dk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit16.i.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit.i.i.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bs, i64 232
  %.val1.i15.i.i.i.i.i = load ptr, ptr %i.dl, align 8, !alias.scope !1082, !noalias !1045, !nonnull !10, !noundef !10
  %i.dm = shl nuw i64 %.val.i14.i.i.i.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i15.i.i.i.i.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1083
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit16.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit16.i.i.i.i.i: ; preds = %bb.am, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bs, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1084)
  %.val.i17.i.i.i.i.i = load i64, ptr %i.dn, align 8, !range !11, !alias.scope !1085, !noalias !1045, !noundef !10 ; 2 uses
  %i.do = icmp eq i64 %.val.i17.i.i.i.i.i, 0
  br i1 %i.do, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i.i.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit16.i.i.i.i.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bs, i64 256
  %.val1.i18.i.i.i.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !1085, !noalias !1045, !nonnull !10, !noundef !10
  %i.dq = shl nuw i64 %.val.i17.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i18.i.i.i.i.i, i64 noundef %i.dq, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1086
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i.i.i: ; preds = %bb.an, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder6os_str5OsStrEEEB1f_.exit16.i.i.i.i.i
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bs, i64 272
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %.val.i20.i.i.i.i.i = load i64, ptr %i.dr, align 8, !range !11, !alias.scope !1088, !noalias !1045, !noundef !10 ; 2 uses
  %i.ds = icmp eq i64 %.val.i20.i.i.i.i.i, 0
  br i1 %i.ds, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit22.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bs, i64 280
  %.val1.i21.i.i.i.i.i = load ptr, ptr %i.dt, align 8, !alias.scope !1088, !noalias !1045, !nonnull !10, !noundef !10
  %i.du = shl nuw i64 %.val.i20.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i21.i.i.i.i.i, i64 noundef %i.du, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1089
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit22.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit22.i.i.i.i.i: ; preds = %bb.ao, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bs, i64 296
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %.val.i23.i.i.i.i.i = load i64, ptr %i.dv, align 8, !range !11, !alias.scope !1091, !noalias !1045, !noundef !10 ; 2 uses
  %i.dw = icmp eq i64 %.val.i23.i.i.i.i.i, 0
  br i1 %i.dw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit.i.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit22.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bs, i64 304
  %.val1.i24.i.i.i.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !1091, !noalias !1045, !nonnull !10, !noundef !10
  %i.dy = mul nuw i64 %.val.i23.i.i.i.i.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i24.i.i.i.i.i, i64 noundef %i.dy, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1092
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit.i.i.i.i.i: ; preds = %bb.ap, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit22.i.i.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %.val.i25.i.i.i.i.i = load i64, ptr %i.dz, align 8, !range !11, !alias.scope !1094, !noalias !1045, !noundef !10 ; 2 uses
  %i.ea = icmp eq i64 %.val.i25.i.i.i.i.i, 0
  br i1 %i.ea, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bs, i64 328
  %.val1.i26.i.i.i.i.i = load ptr, ptr %i.eb, align 8, !alias.scope !1094, !noalias !1045, !nonnull !10, !noundef !10
  %i.ec = shl nuw i64 %.val.i25.i.i.i.i.i, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i26.i.i.i.i.i, i64 noundef %i.ec, i64 noundef range(i64 1, -9223372036854775807) 4) #43, !noalias !1095
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i: ; preds = %bb.aq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrbEEEB1f_.exit.i.i.i.i.i
  %i.ed = getelementptr inbounds nuw i8, ptr %i.bs, i64 344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1096)
  %.val.i27.i.i.i.i.i = load i64, ptr %i.ed, align 8, !range !11, !alias.scope !1097, !noalias !1045, !noundef !10 ; 2 uses
  %i.ee = icmp eq i64 %.val.i27.i.i.i.i.i, 0
  br i1 %i.ee, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.bs, i64 352
  %.val1.i28.i.i.i.i.i = load ptr, ptr %i.ef, align 8, !alias.scope !1097, !noalias !1045, !nonnull !10, !noundef !10
  %i.eg = shl nuw i64 %.val.i27.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i28.i.i.i.i.i, i64 noundef %i.eg, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1098
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.i.i.i.i: ; preds = %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTcbEEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bs, i64 368
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %.val.i29.i.i.i.i.i = load i64, ptr %i.eh, align 8, !range !11, !alias.scope !1100, !noalias !1045, !noundef !10 ; 2 uses
  %i.ei = icmp eq i64 %.val.i29.i.i.i.i.i, 0
  br i1 %i.ei, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.i.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.bs, i64 376
  %.val1.i30.i.i.i.i.i = load ptr, ptr %i.ej, align 8, !alias.scope !1100, !noalias !1045, !nonnull !10, !noundef !10
  %i.ek = shl nuw i64 %.val.i29.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i30.i.i.i.i.i, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1101
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i.i.i.i.i: ; preds = %bb.as, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrEEB1e_.exit.i.i.i.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.bs, i64 392
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.em = getelementptr inbounds nuw i8, ptr %i.bs, i64 400
  %.val.i31.i.i.i.i.i = load ptr, ptr %i.em, align 8, !alias.scope !1103, !noalias !1045, !nonnull !10, !noundef !10 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.bs, i64 408
  %.val1.i32.i.i.i.i.i = load i64, ptr %i.en, align 8, !alias.scope !1103, !noalias !1045, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1104)
  %i.eo = icmp eq i64 %.val1.i32.i.i.i.i.i, 0
  br i1 %i.eo, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropBM_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEEBI_.exit.i.i.i.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i.i.i.i = phi i64 [ %i.eq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEEBI_.exit.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i.i.i.i.i ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [56 x i8], ptr %.val.i31.i.i.i.i.i, i64 %.sroa.0.04.i.i.i.i.i.i.i.i ; 2 uses
  %i.eq = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.er = getelementptr i8, ptr %i.ep, i64 32
  %.val.i.i.i33.i.i.i.i.i = load i64, ptr %i.er, align 8, !range !12, !alias.scope !1104, !noalias !1105, !noundef !10 ; 2 uses
  %i.es = icmp sgt i64 %.val.i.i.i33.i.i.i.i.i, 0
  br i1 %i.es, label %bb.at, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEEBI_.exit.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.et = getelementptr i8, ptr %i.ep, i64 40
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %i.et, align 8, !alias.scope !1104, !noalias !1105, !nonnull !10, !noundef !10
  %i.eu = shl nuw i64 %.val.i.i.i33.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %i.eu, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1106
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEEBI_.exit.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEEBI_.exit.i.i.i.i.i.i.i.i: ; preds = %bb.at, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ev = icmp eq i64 %i.eq, %.val1.i32.i.i.i.i.i
  br i1 %i.ev, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropBM_.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropBM_.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBI_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtB1p_6os_str5OsStrEEEEBI_.exit.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit.i.i.i.i.i
  %.val2.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !range !11, !alias.scope !1103, !noalias !1045, !noundef !10 ; 2 uses
  %i.ew = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.ew, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEEB1f_.exit.i.i.i.i.i, label %bb.au

bb.au:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropBM_.exit.i.i.i.i.i.i
  %i.ex = mul nuw i64 %.val2.i.i.i.i.i.i, 56
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i31.i.i.i.i.i, i64 noundef %i.ex, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1105
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEEB1f_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEEB1f_.exit.i.i.i.i.i: ; preds = %bb.au, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBM_7builder13arg_predicate12ArgPredicateINtNtCsj6eKBz9Db1c_4core6option6OptionIBw_NtNtB1t_6os_str5OsStrEEEENtNtNtB2e_3ops4drop4Drop4dropBM_.exit.i.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.bs, i64 416
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1107)
  %.val.i34.i.i.i.i.i = load i64, ptr %i.ey, align 8, !range !11, !alias.scope !1108, !noalias !1045, !noundef !10 ; 2 uses
  %i.ez = icmp eq i64 %.val.i34.i.i.i.i.i, 0
  br i1 %i.ez, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit36.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEEB1f_.exit.i.i.i.i.i
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bs, i64 424
  %.val1.i35.i.i.i.i.i = load ptr, ptr %i.fa, align 8, !alias.scope !1108, !noalias !1045, !nonnull !10, !noundef !10
  %i.fb = shl nuw i64 %.val.i34.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i35.i.i.i.i.i, i64 noundef %i.fb, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1109
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit36.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit36.i.i.i.i.i: ; preds = %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtB1f_7builder13arg_predicate12ArgPredicateINtNtB4_6option6OptionIBC_NtNtB1W_6os_str5OsStrEEEEEB1f_.exit.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bs, i64 440
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  %.val.i.i.i37.i.i.i.i.i = load i64, ptr %i.fc, align 8, !range !11, !alias.scope !1113, !noalias !1045, !noundef !10 ; 2 uses
  %i.fd = icmp eq i64 %.val.i.i.i37.i.i.i.i.i, 0
  br i1 %i.fd, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i.i.i.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit36.i.i.i.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bs, i64 448
  %.val1.i.i.i38.i.i.i.i.i = load ptr, ptr %i.fe, align 8, !alias.scope !1113, !noalias !1045, !nonnull !10, !noundef !10
  %i.ff = shl nuw i64 %.val.i.i.i37.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i38.i.i.i.i.i, i64 noundef %i.ff, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1114
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i.i.i.i.i.i: ; preds = %bb.aw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder6os_str5OsStrEEB1e_.exit36.i.i.i.i.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bs, i64 464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.fh = getelementptr inbounds nuw i8, ptr %i.bs, i64 472
  %.val.i1.i.i.i.i.i.i.i = load ptr, ptr %i.fh, align 8, !alias.scope !1116, !noalias !1045, !nonnull !10, !noundef !10 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.bs, i64 480
  %.val1.i2.i.i.i.i.i.i.i = load i64, ptr %i.fi, align 8, !alias.scope !1116, !noalias !1045, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.fj = icmp eq i64 %.val1.i2.i.i.i.i.i.i.i, 0
  br i1 %i.fj, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %.val.i1.i.i.i.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fl = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  %i.fm = load ptr, ptr %i.fk, align 8, !alias.scope !1121, !noalias !1122, !nonnull !10, !noundef !10
  %1 = atomicrmw sub ptr %i.fm, i64 1 release, align 8, !noalias !1123
  %i.fn = icmp eq i64 %1, 1
  br i1 %i.fn, label %bb.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i.i.i.i.i

bb.ax:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.fk) #42, !noalias !1122
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.fo = icmp eq i64 %i.fl, %.val1.i2.i.i.i.i.i.i.i
  br i1 %i.fo, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.fg, align 8, !range !11, !alias.scope !1116, !noalias !1045, !noundef !10 ; 2 uses
  %i.fp = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.fp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEBH_.exit.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i.i.i.i
  %i.fq = shl nuw i64 %.val2.i.i.i.i.i.i.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i.i.i.i.i.i, i64 noundef %i.fq, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1122
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEBH_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEBH_.exit.i.i.i.i: ; preds = %bb.ay, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i.i.i.i.i
  %i.fr = icmp eq i64 %i.bt, %.val1.i.i
  br i1 %i.fr, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEBH_.exit.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB13_.exit32
  %.val2.i.i = load i64, ptr %i.bo, align 8, !range !11, !alias.scope !1045, !noundef !10 ; 2 uses
  %i.fs = icmp eq i64 %.val2.i.i, 0
  br i1 %i.fs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1e_.exit.i, label %bb.az

bb.az:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.ft = mul nuw i64 %.val2.i.i, 600
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.ft, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1045
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1e_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1e_.exit.i: ; preds = %bb.az, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i33 = load i64, ptr %i.fu, align 8, !range !11, !alias.scope !1043, !noundef !10 ; 2 uses
  %i.fv = icmp eq i64 %.val.i33, 0
  br i1 %i.fv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap7MKeyMapEBF_.exit, label %bb.ba

bb.ba:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1e_.exit.i
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i34 = load ptr, ptr %i.fw, align 8, !alias.scope !1043, !nonnull !10, !noundef !10
  %i.fx = shl nuw i64 %.val.i33, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i34, i64 noundef %i.fx, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1043
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap7MKeyMapEBF_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap7MKeyMapEBF_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgEEB1e_.exit.i, %bb.ba
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ga = load ptr, ptr %i.fz, align 8, !alias.scope !1124, !nonnull !10, !noundef !10 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.gc = load i64, ptr %i.gb, align 8, !alias.scope !1124, !noundef !10 ; 2 uses
  %i.gd = icmp eq i64 %i.gc, 0
  br i1 %i.gd, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap7MKeyMapEBF_.exit, %.lr.ph
  %.sroa.0.0.i.i42 = phi i64 [ %i.gf, %.lr.ph ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap7MKeyMapEBF_.exit ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [712 x i8], ptr %i.ga, i64 %.sroa.0.0.i.i42
  %i.gf = add nuw i64 %.sroa.0.0.i.i42, 1         ; 2 uses
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEBH_(ptr noalias nofree noundef align 8 dereferenceable(712) %i.ge) #43, !noalias !1124, !inline_history !963
  %i.gg = icmp eq i64 %i.gf, %i.gc
  br i1 %i.gg, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit, label %.lr.ph

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit: ; preds = %.lr.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsfu0rQaTkGUu_12clap_builder7mkeymap7MKeyMapEBF_.exit
  %.val.i35 = load i64, ptr %i.fy, align 8, !range !11, !alias.scope !1125, !noundef !10 ; 2 uses
  %i.gh = icmp eq i64 %.val.i35, 0
  br i1 %i.gh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1l_.exit, label %bb.bb

bb.bb:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit
  %i.gi = mul nuw i64 %.val.i35, 712
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ga, i64 noundef %i.gi, i64 noundef range(i64 1, -9223372036854775807) 8) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1l_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1l_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit, %bb.bb
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1126)
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val.i37 = load ptr, ptr %i.gk, align 8, !alias.scope !1126, !nonnull !10, !noundef !10 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val1.i38 = load i64, ptr %i.gl, align 8, !alias.scope !1126, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1127)
  %i.gm = icmp eq i64 %.val1.i38, 0
  br i1 %i.gm, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1l_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEBH_.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.go, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEBH_.exit.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1l_.exit ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [96 x i8], ptr %.val.i37, i64 %.sroa.0.03.i.i.i ; 6 uses
  %i.go = add nuw nsw i64 %.sroa.0.03.i.i.i, 1    ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1129)
  %.val.i.i.i.i.i = load i64, ptr %i.gn, align 8, !range !11, !alias.scope !1130, !noalias !1126, !noundef !10 ; 2 uses
  %i.gp = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.gp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %.lr.ph.i.i.i
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.gq, align 8, !alias.scope !1130, !noalias !1126, !nonnull !10, !noundef !10
  %i.gr = shl nuw i64 %.val.i.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %i.gr, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1131
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i: ; preds = %bb.bc, %.lr.ph.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1132)
  %.val.i1.i.i.i.i = load i64, ptr %i.gs, align 8, !range !11, !alias.scope !1133, !noalias !1126, !noundef !10 ; 2 uses
  %i.gt = icmp eq i64 %.val.i1.i.i.i.i, 0
  br i1 %i.gt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit3.i.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %.val1.i2.i.i.i.i = load ptr, ptr %i.gu, align 8, !alias.scope !1133, !noalias !1126, !nonnull !10, !noundef !10
  %i.gv = shl nuw i64 %.val.i1.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i2.i.i.i.i, i64 noundef %i.gv, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1134
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit3.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit3.i.i.i.i: ; preds = %bb.bd, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  %.val.i4.i.i.i.i = load i64, ptr %i.gw, align 8, !range !11, !alias.scope !1136, !noalias !1126, !noundef !10 ; 2 uses
  %i.gx = icmp eq i64 %.val.i4.i.i.i.i, 0
  br i1 %i.gx, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEBH_.exit.i.i.i, label %bb.be

bb.be:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit3.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 56
  %.val1.i5.i.i.i.i = load ptr, ptr %i.gy, align 8, !alias.scope !1136, !noalias !1126, !nonnull !10, !noundef !10
  %i.gz = shl nuw i64 %.val.i4.i.i.i.i, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i.i.i.i, i64 noundef %i.gz, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1137
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEBH_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEBH_.exit.i.i.i: ; preds = %bb.be, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit3.i.i.i.i
  %i.ha = icmp eq i64 %i.go, %.val1.i38
  br i1 %i.ha, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEBH_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc7raw_vec6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder7command7CommandEEB1l_.exit
  %.val2.i = load i64, ptr %i.gj, align 8, !range !11, !alias.scope !1126, !noundef !10 ; 2 uses
  %i.hb = icmp eq i64 %.val2.i, 0
  br i1 %i.hb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEEB1e_.exit, label %bb.bf

bb.bf:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i
  %i.hc = mul nuw i64 %.val2.i, 96
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i37, i64 noundef %i.hc, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1126
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEEB1e_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEEB1e_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i, %bb.bf
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1138)
  %i.he = load i64, ptr %i.hd, align 8, !range !24, !alias.scope !1138, !noundef !10 ; 2 uses
  %i.hf = icmp eq i64 %i.he, -1
  br i1 %i.hf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEEB1e_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1140)
  %switch.i.i.i = icmp samesign ult i64 %i.he, 4
  br i1 %switch.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val.i.i.i = load ptr, ptr %i.hg, align 8, !alias.scope !1141 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1.i.i.i39 = load ptr, ptr %i.hh, align 8, !alias.scope !1141, !nonnull !10, !align !16, !noundef !10 ; 3 uses
  %i.hi = load ptr, ptr %.val1.i.i.i39, align 8, !invariant.load !10, !noalias !1141 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hi, null
  br i1 %.not.i.i.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void %i.hi(ptr noundef nonnull %.val.i.i.i) #45, !noalias !1141, !inline_history !984
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.hj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i39, i64 8
  %i.hk = load i64, ptr %i.hj, align 8, !range !11, !invariant.load !10, !noalias !1141 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.bj
  %i.hm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i39, i64 16
  %i.hn = load i64, ptr %i.hm, align 8, !range !17, !invariant.load !10, !noalias !1141
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.hk, i64 noundef range(i64 1, -9223372036854775807) %i.hn) #43, !noalias !1141
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupEEB1e_.exit, %bb.bg, %bb.bj, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1144)
  %.val.i.i.i40 = load i64, ptr %i.ho, align 8, !range !11, !alias.scope !1145, !noundef !10 ; 2 uses
  %i.hp = icmp eq i64 %.val.i.i.i40, 0
  br i1 %i.hp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val1.i.i.i41 = load ptr, ptr %i.hq, align 8, !alias.scope !1145, !nonnull !10, !noundef !10
  %i.hr = shl nuw i64 %.val.i.i.i40, 4
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i41, i64 noundef %i.hr, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1145
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i: ; preds = %bb.bk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder12value_parser11ValueParserEEB13_.exit
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val.i1.i.i = load ptr, ptr %i.ht, align 8, !alias.scope !1147, !nonnull !10, !noundef !10 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val1.i2.i.i = load i64, ptr %i.hu, align 8, !alias.scope !1147, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.hv = icmp eq i64 %.val1.i2.i.i, 0
  br i1 %i.hv, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i = phi i64 [ %i.hx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i ] ; 2 uses
  %i.hw = getelementptr inbounds nuw [32 x i8], ptr %.val.i1.i.i, i64 %.sroa.0.03.i.i.i.i.i ; 2 uses
  %i.hx = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  %i.hy = load ptr, ptr %i.hw, align 8, !alias.scope !1152, !noalias !1147, !nonnull !10, !noundef !10
  %2 = atomicrmw sub ptr %i.hy, i64 1 release, align 8, !noalias !1153
  %i.hz = icmp eq i64 %2, 1
  br i1 %i.hz, label %bb.bl, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i

bb.bl:                                            ; preds = %.lr.ph.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.hw) #42, !noalias !1147
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i: ; preds = %bb.bl, %.lr.ph.i.i.i.i.i
  %i.ia = icmp eq i64 %i.hx, %.val1.i2.i.i
  br i1 %i.ia, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdEEB1e_.exit.i.i
  %.val2.i.i.i = load i64, ptr %i.hs, align 8, !range !11, !alias.scope !1147, !noundef !10 ; 2 uses
  %i.ib = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ib, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3ext10ExtensionsEBH_.exit, label %bb.bm

bb.bm:                                            ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i
  %i.ic = shl nuw i64 %.val2.i.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i1.i.i, i64 noundef %i.ic, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1147
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3ext10ExtensionsEBH_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3ext10ExtensionsEBH_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i, %bb.bm
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_arg10MatchedArgEBJ_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load i64, ptr %i.a, align 8, !range !11, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val, 0
  br i1 %i.b, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.d = shl nuw i64 %.val, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1178, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.g, align 8, !alias.scope !1178, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1179)
  %i.h = icmp eq i64 %.val1.i, 0
  br i1 %i.h, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i
  %.sroa.0.03.i.i.i = phi i64 [ %i.j, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.03.i.i.i ; 3 uses
  %i.j = add nuw nsw i64 %.sroa.0.03.i.i.i, 1     ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1180)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !1181, !noalias !1178, !nonnull !10, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.l, align 8, !alias.scope !1181, !noalias !1178, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1182)
  %i.m = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.m, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.o, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.val.i.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.o = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1185)
  %i.p = load ptr, ptr %i.n, align 8, !alias.scope !1186, !noalias !1187, !nonnull !10, !noundef !10
  %1 = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !1188
  %i.q = icmp eq i64 %1, 1
  br i1 %i.q, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  fence acquire
  tail call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.n) #42, !noalias !1187
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i: ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i
  %i.r = icmp eq i64 %i.o, %.val1.i.i.i.i
  br i1 %i.r, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEBH_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.i, align 8, !range !11, !alias.scope !1181, !noalias !1178, !noundef !10 ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.s, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i
  %i.t = shl nuw i64 %.val2.i.i.i.i, 5
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1187
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i: ; preds = %bb.d, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBL_.exit.i.i.i.i
  %i.u = icmp eq i64 %i.j, %.val1.i
  br i1 %i.u, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i, label %.lr.ph.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB1e_.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEECsfu0rQaTkGUu_12clap_builder.exit
  %.val2.i = load i64, ptr %i.e, align 8, !range !11, !alias.scope !1178, !noundef !10 ; 2 uses
  %i.v = icmp eq i64 %.val2.i, 0
  br i1 %i.v, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit, label %bb.e

bb.e:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i
  %i.w = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.w, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1178
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i, %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1189)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val.i2 = load ptr, ptr %i.y, align 8, !alias.scope !1189, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1.i3 = load i64, ptr %i.z, align 8, !alias.scope !1189, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1190)
  %i.aa = icmp eq i64 %.val1.i3, 0
  br i1 %i.aa, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i4

.lr.ph.i.i.i4:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i
  %.sroa.0.03.i.i.i5 = phi i64 [ %i.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i ], [ 0, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.val.i2, i64 %.sroa.0.03.i.i.i5 ; 3 uses
  %i.ac = add nuw nsw i64 %.sroa.0.03.i.i.i5, 1   ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.val2.i.i.i.i6 = load ptr, ptr %i.ad, align 8, !alias.scope !1192, !noalias !1189, !nonnull !10, !noundef !10 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ae, align 8, !alias.scope !1192, !noalias !1189, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.af = icmp eq i64 %.val3.i.i.i.i, 0
  br i1 %i.af, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7

.lr.ph.i.i.i.i.i.i7:                              ; preds = %.lr.ph.i.i.i4, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i8 = phi i64 [ %i.ah, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i4 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %.val2.i.i.i.i6, i64 %.sroa.0.03.i.i.i.i.i.i8 ; 2 uses
  %i.ah = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i8, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1194)
  %.val.i.i.i.i.i.i.i = load i64, ptr %i.ag, align 8, !range !11, !alias.scope !1195, !noalias !1196, !noundef !10 ; 2 uses
  %i.ai = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.aj, align 8, !alias.scope !1195, !noalias !1196, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1197
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i: ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i7
  %i.ak = icmp eq i64 %i.ah, %.val3.i.i.i.i
  br i1 %i.ak, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i7

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i, %.lr.ph.i.i.i4
  %.val.i.i.i.i9 = load i64, ptr %i.ab, align 8, !range !11, !alias.scope !1192, !noalias !1189, !noundef !10 ; 2 uses
  %i.al = icmp eq i64 %.val.i.i.i.i9, 0
  br i1 %i.al, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %i.am = mul nuw i64 %.val.i.i.i.i9, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i6, i64 noundef %i.am, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1196
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i: ; preds = %bb.g, %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i
  %i.an = icmp eq i64 %i.ac, %.val1.i3
  br i1 %i.an, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, label %.lr.ph.i.i.i4

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEEB1i_.exit
  %.val2.i10 = load i64, ptr %i.x, align 8, !range !11, !alias.scope !1189, !noundef !10 ; 2 uses
  %i.ao = icmp eq i64 %.val2.i10, 0
  br i1 %i.ao, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.h

bb.h:                                             ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i
  %i.ap = mul nuw i64 %.val2.i10, 24
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i2, i64 noundef %i.ap, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !1189
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecIBC_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCsfu0rQaTkGUu_12clap_builder.exit.i, %bb.h
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNvXsf_NtNtCs4wP2HXfJTCR_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1200)
  %.val.i = load i64, ptr %0, align 8, !range !11, !alias.scope !1200, !noundef !10 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !1200, !nonnull !10, !noundef !10
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !1200
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 73) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !11, !alias.scope !1203, !noundef !10 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1203
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !1203
  call fastcc void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 713) %4) #43, !noalias !1203
  %i.h = load i64, ptr %i.a, align 8, !range !13, !noalias !1203, !noundef !10
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !29, !noalias !1203, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !1203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #46
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !1203, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1203
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !1203
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !1203
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCINvNtNtNtCsfu0rQaTkGUu_12clap_builder6parser8features11suggestions17did_you_mean_flagINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB1x_5slice4iter4IterNtNtCs4wP2HXfJTCR_5alloc6string6StringENCNvMs0_NtB8_6parserNtB3o_6Parser18did_you_mean_errors_0EReINtB2f_7IterMutNtNtNtBa_7builder7command7CommandEE0Ba_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  tail call void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command11__build_self(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %2, i1 noundef zeroext false) #43
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.f = load i64, ptr %i.e, align 8, !noundef !10
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 560
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 568
  %i.k = load i64, ptr %i.j, align 8, !noundef !10 ; 9 uses
  %i.l = load ptr, ptr %1, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1270
  store i64 0, ptr %i.b, align 8, !noalias !1270
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.o, align 8, !noalias !1270
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !1270
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit.i.outer
end_hunk_1
begin_hunk_2_@_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command17__build_subcommand:bb.a
  store ptr %i.l, ptr %i.i, align 8
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.487.0..sroa_idx, align 8
  %i.hd = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.k, ptr %i.hd, align 8
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.491.0..sroa_idx, align 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.j, ptr %i.he, align 8
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.495.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvNvNtCs4wP2HXfJTCR_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull @80, ptr noundef nonnull %i.i) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val125 = load i64, ptr %i.gr, align 8, !range !12, !noundef !10 ; 2 uses
  %i.hf = icmp sgt i64 %.val125, 0
  br i1 %i.hf, label %bb.ba, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit183

bb.ba:                                            ; preds = %.split105
  %i.hg = getelementptr i8, ptr %i.ew, i64 280
  %.val126 = load ptr, ptr %i.hg, align 8, !nonnull !10, !noundef !10
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val126, i64 noundef %.val125, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !5708
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit183

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECsfu0rQaTkGUu_12clap_builder.exit183: ; preds = %.split105, %bb.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command21__propagate_subcommand(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(712) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 700
  %i.c = load i32, ptr %i.b, align 4, !noundef !10
  %i.d = and i32 %i.c, 4194304
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit, label %bb.n

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit: ; preds = %bb.r, %bb.q, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 700 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load i32, ptr %i.f, align 8, !noundef !10
  %i.h = load <2 x i32>, ptr %i.e, align 4
  %i.i = insertelement <2 x i32> poison, i32 %i.g, i64 0
  %i.j = shufflevector <2 x i32> %i.i, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.k = or <2 x i32> %i.h, %i.j
  store <2 x i32> %i.k, ptr %i.e, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 224 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5747)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5748)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5749, !nonnull !10, !noundef !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !5749, !noundef !10 ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.p, 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !5749, !nonnull !10, !noundef !10 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !5749, !noundef !10
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.u
  %i.w = icmp eq i64 %i.p, 0
  br i1 %i.w, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB2_10Extensions6update.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %.sroa.1012.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 248 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i, %.lr.ph.i
  %.sroa.04.026.i = phi ptr [ %i.n, %.lr.ph.i ], [ %i.ac, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i ] ; 2 uses
  %.sroa.7.025.i = phi ptr [ %i.s, %.lr.ph.i ], [ %i.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.04.026.i, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %.sroa.7.025.i, %i.v
  br i1 %i.ad, label %bb.c, label %bb.d, !prof !18

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !5750
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.7.025.i, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5751
  %.sroa.05.0.copyload.i = load i128, ptr %.sroa.04.026.i, align 8, !noalias !5751 ; 2 uses
  %i.af = load ptr, ptr %.sroa.7.025.i, align 8, !noalias !5751, !nonnull !10, !noundef !10
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !noalias !5751
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.7.025.i, i64 8
  %i.aj = load ptr, ptr %.sroa.7.025.i, align 8, !noalias !5751, !nonnull !10, !noundef !10
  %i.ak = load ptr, ptr %i.ai, align 8, !noalias !5751, !nonnull !10, !align !16, !noundef !10
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.7.025.i, i64 16
  %.sroa.017.0.copyload.i = load i64, ptr %i.al, align 8, !noalias !5751 ; 2 uses
  %.sroa.418.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.7.025.i, i64 24
  %.sroa.418.0.copyload.i = load i64, ptr %.sroa.418.0..sroa_idx.i, align 8, !noalias !5751 ; 2 uses
  %i.am = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.an = ptrtoint ptr %i.ak to i64               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5753)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5754)
  %i.ao = load ptr, ptr %i.x, align 8, !alias.scope !5755, !nonnull !10, !noundef !10 ; 3 uses
  %i.ap = load i64, ptr %i.y, align 8, !alias.scope !5755, !noundef !10 ; 5 uses
  %.idx = shl nuw nsw i64 %i.ap, 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx
  %i.ar = icmp eq i64 %i.ap, 0
  br i1 %i.ar, label %._crit_edge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i3.i20, i64 16 ; 2 uses
  %i.at = add i64 %.sroa.8.0.i.i19, 1
  %i.au = icmp eq ptr %i.as, %i.aq
  br i1 %i.au, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.sroa.0.0.i3.i20 = phi ptr [ %i.as, %bb.f ], [ %i.ao, %bb.e ] ; 2 uses
  %.sroa.8.0.i.i19 = phi i64 [ %i.at, %bb.f ], [ 0, %bb.e ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i3.i20, align 8, !noalias !5756
  %i.av = icmp eq i128 %.val.i.i, %.sroa.05.0.copyload.i
  br i1 %i.av, label %bb.i, label %bb.f

._crit_edge:                                      ; preds = %bb.f, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5757)
  %i.aw = load i64, ptr %i.l, align 8, !range !11, !alias.scope !5758, !noundef !10
  %i.ax = icmp eq i64 %i.ap, %i.aw
  br i1 %i.ax, label %bb.g, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutBL_.exit.i.i

bb.g:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.l) #42, !noalias !5759
  %.pre.i.i = load ptr, ptr %i.x, align 8, !alias.scope !5758
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutBL_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutBL_.exit.i.i: ; preds = %bb.g, %._crit_edge
  %i.ay = phi ptr [ %i.ao, %._crit_edge ], [ %.pre.i.i, %bb.g ]
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.ay, i64 %i.ap
  store i128 %.sroa.05.0.copyload.i, ptr %i.az, align 8, !noalias !5760
  %i.ba = add i64 %i.ap, 1
  store i64 %i.ba, ptr %i.y, align 8, !alias.scope !5758
  %i.bb = load i64, ptr %i.z, align 8, !alias.scope !5761, !noundef !10 ; 3 uses
  %i.bc = load i64, ptr %i.ab, align 8, !range !11, !alias.scope !5761, !noundef !10
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.h, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.thread.i

bb.h:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutBL_.exit.i.i
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ab) #42, !noalias !5762
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.thread.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.thread.i: ; preds = %bb.h, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value10AnyValueIdE8push_mutBL_.exit.i.i
  %i.be = load ptr, ptr %i.aa, align 8, !alias.scope !5761, !nonnull !10, !noundef !10
  %i.bf = getelementptr inbounds nuw [32 x i8], ptr %i.be, i64 %i.bb ; 4 uses
  store i64 %i.am, ptr %i.bf, align 8, !noalias !5763
  %.sroa.79.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %i.an, ptr %.sroa.79.0..sroa_idx10.i, align 8, !noalias !5763
  %.sroa.1012.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store i64 %.sroa.017.0.copyload.i, ptr %.sroa.1012.0..sroa_idx13.i, align 8, !noalias !5763
  %.sroa.13.0..sroa_idx15.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  store i64 %.sroa.418.0.copyload.i, ptr %.sroa.13.0..sroa_idx15.i, align 8, !noalias !5763
  %i.bg = add i64 %i.bb, 1
  store i64 %i.bg, ptr %i.z, align 8, !alias.scope !5761
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i

bb.i:                                             ; preds = %.lr.ph
  %i.bh = load i64, ptr %i.z, align 8, !alias.scope !5755, !noundef !10 ; 2 uses
  %i.bi = icmp ult i64 %.sroa.8.0.i.i19, %i.bh
  br i1 %i.bi, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i19, i64 noundef %i.bh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #44, !noalias !5756
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.i: ; preds = %bb.i
  %i.bj = load ptr, ptr %i.aa, align 8, !alias.scope !5755, !nonnull !10, !noundef !10
  %i.bk = getelementptr inbounds nuw [32 x i8], ptr %i.bj, i64 %.sroa.8.0.i.i19 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bo = load <2 x i64>, ptr %i.bk, align 1, !noalias !5756
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.bk, align 1, !alias.scope !5764, !noalias !5756 ; 2 uses
  store i64 %i.am, ptr %i.bk, align 1, !alias.scope !5764, !noalias !5756
  store i64 %i.an, ptr %i.bl, align 1, !alias.scope !5765, !noalias !5756
  store <2 x i64> %i.bo, ptr %i.a, align 16, !alias.scope !5766, !noalias !5751
  %i.bp = load <2 x i64>, ptr %i.bm, align 1, !noalias !5756
  store i64 %.sroa.017.0.copyload.i, ptr %i.bm, align 1, !alias.scope !5767, !noalias !5756
  store i64 %.sroa.418.0.copyload.i, ptr %i.bn, align 1, !alias.scope !5768, !noalias !5756
  store <2 x i64> %i.bp, ptr %.sroa.1012.0..sroa_idx.i, align 16, !alias.scope !5766, !noalias !5751
  %i.bq = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i, label %bb.k

bb.k:                                             ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.i
  %.pr.cast.i = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i to ptr
  %2 = atomicrmw sub ptr %.pr.cast.i, i64 1 release, align 8, !noalias !5769
  %i.br = icmp eq i64 %2, 1
  br i1 %i.br, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.a) #42, !noalias !5751
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i: ; preds = %bb.l, %bb.k, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertB6_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5751
  %i.bs = icmp eq ptr %i.ac, %i.q
  br i1 %i.bs, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB2_10Extensions6update.exit, label %bb.b

bb.m:                                             ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder7builder3extNtB2_10Extensions6update.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder4util9any_value8AnyValueEEB13_.exit.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit
  ret void

bb.n:                                             ; preds = %bb.a
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.bu = load ptr, ptr %i.bt, align 8, !noundef !10 ; 2 uses
  %.not6 = icmp eq ptr %i.bu, null
  br i1 %.not6, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 608 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !5770, !noundef !10
  %.not.i = icmp eq ptr %i.bw, null
  br i1 %.not.i, label %bb.p, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 616
  %.val8 = load i64, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 616
  store ptr %i.bu, ptr %i.bv, align 8, !alias.scope !5770
  store i64 %.val8, ptr %i.by, align 8, !alias.scope !5770
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit: ; preds = %bb.p, %bb.o, %bb.n
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ca = load ptr, ptr %i.bz, align 8, !noundef !10 ; 2 uses
  %.not7 = icmp eq ptr %i.ca, null
  br i1 %.not7, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit, label %bb.q

bb.q:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommand0EBO_.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 624 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !5771, !noundef !10
  %.not.i11 = icmp eq ptr %i.cc, null
  br i1 %.not.i11, label %bb.r, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit

bb.r:                                             ; preds = %bb.q
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 632
  %.val10 = load i64, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %i.ca, ptr %i.cb, align 8, !alias.scope !5771
  store i64 %.val10, ptr %i.ce, align 8, !alias.scope !5771
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrE18get_or_insert_withNCNvMs3_NtBM_7commandNtB1Z_7Command21__propagate_subcommands_0EBO_.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command25__build_bin_names_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 2 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [4 x i8], align 4                 ; 4 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 13 uses
  %i.w = alloca [24 x i8], align 8                ; 9 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 11 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !10
  %.not = icmp sgt i32 %i.ab, -1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 3 uses
  %i.ad = load i32, ptr %i.ac, align 8, !noundef !10
  %.not128 = icmp sgt i32 %i.ad, -1
  br i1 %.not128, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !5837
  %i.ae = tail call noundef dereferenceable_or_null(1) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #43, !noalias !5837 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECsfu0rQaTkGUu_12clap_builder.exit174, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #46
  unreachable

bb.f:                                             ; preds = %bb.c
  store i8 32, ptr %i.ae, align 1
  store i64 1, ptr %i.z, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  store ptr %i.ae, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 6 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ag = load i32, ptr %i.aa, align 4, !noundef !10 ; 4 uses
  %i.ah = and i32 %i.ag, 4096
  %.not129 = icmp eq i32 %i.ah, 0
  br i1 %.not129, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %i.ac, align 8, !noundef !10 ; 2 uses
  %i.aj = and i32 %i.ai, 4096
  %i.ak = or i32 %i.ai, %i.ag
  %i.al = and i32 %i.ak, 8192
  %i.am = or disjoint i32 %i.al, %i.aj
  %or.cond146 = icmp eq i32 %i.am, 0
  br i1 %or.cond146, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1e_.exit, %bb.g
  %i.an = phi i32 [ %i.ag, %bb.f ], [ %.pre270, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrEEB1e_.exit ], [ %i.ag, %bb.g ]
  %i.ao = and i32 %i.an, 2048
  %.not133 = icmp eq i32 %i.ao, 0
  br i1 %.not133, label %bb.ag, label %bb.ah

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5841)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !5842, !nonnull !10, !noundef !10 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !5842, !noundef !10 ; 2 uses
  %.idx308 = shl nuw nsw i64 %i.as, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.idx308
  %i.au = icmp eq i64 %i.as, 0
  br i1 %i.au, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph307

bb.j:                                             ; preds = %.lr.ph307
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i305, i64 16 ; 2 uses
  %i.aw = add i64 %.sroa.8.0.i.i.i304, 1
  %i.ax = icmp eq ptr %i.av, %i.at
  br i1 %i.ax, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph307

.lr.ph307:                                        ; preds = %bb.i, %bb.j
  %.sroa.0.01.i.i.i305 = phi ptr [ %i.av, %bb.j ], [ %i.aq, %bb.i ] ; 2 uses
  %.sroa.8.0.i.i.i304 = phi i64 [ %i.aw, %bb.j ], [ 0, %bb.i ] ; 4 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.01.i.i.i305, align 8, !noalias !5843
  %i.ay = icmp eq i128 %.val.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.ay, label %bb.k, label %bb.j

bb.k:                                             ; preds = %.lr.ph307
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !5842, !noundef !10 ; 2 uses
  %i.bb = icmp ult i64 %.sroa.8.0.i.i.i304, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i304, i64 noundef %i.ba, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !5843
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bd = load ptr, ptr %i.bc, align 8, !alias.scope !5842, !nonnull !10, !noundef !10
  %i.be = getelementptr inbounds nuw [32 x i8], ptr %i.bd, i64 %.sroa.8.0.i.i.i304 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.be, align 8, !noalias !5844, !nonnull !10, !noundef !10
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val6.i.i = load ptr, ptr %i.bf, align 8, !noalias !5844, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.bh = load i64, ptr %i.bg, align 8, !range !17, !invariant.load !10, !noalias !5844
  %i.bi = add nsw i64 %i.bh, -1
  %i.bj = and i64 %i.bi, -16
  %i.bk = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5844
  %i.bm = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !10, !noalias !5844, !nonnull !10
  call void %i.bn(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noundef nonnull %i.bl) #45, !noalias !5844, !inline_history !0
  %i.bo = load i128, ptr %i.d, align 16, !noalias !5844, !noundef !10
  %.not.i.i = icmp eq i128 %i.bo, -100310019091698447603793328749864812255
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB4_13PossibleValue20get_name_and_aliases:bb.a
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h
  store i64 1, ptr %0, align 8, !alias.scope !11505
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !11505
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !11505
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.j, align 8, !alias.scope !11505
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.i, ptr %i.k, align 8, !alias.scope !11505
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef zeroext i1 @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB4_13PossibleValue7matches(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  br i1 %3, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matches0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !11532, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !11532, !nonnull !10, !noundef !10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11532, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.f, 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx
  %i.h = icmp eq i64 %i.b, %2
  br i1 %i.h, label %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matchess_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i, label %bb.c

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matchess_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !11532, !nonnull !10, !noundef !10
  %bcmp.i.i.i9.i.i = tail call i32 @bcmp(ptr nonnull readonly %i.j, ptr nonnull %1, i64 %2), !noalias !11533
  %i.k = icmp eq i32 %bcmp.i.i.i9.i.i, 0
  br i1 %i.k, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matchess_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i
  %.not.i.i.i = icmp eq i64 %i.f, 0
  br i1 %.not.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i
  %i.l = phi ptr [ %i.m, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i ], [ %i.d, %bb.c ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val6.i.i.i = load i64, ptr %i.n, align 8, !noalias !11534, !noundef !10
  %i.o = icmp eq i64 %.val6.i.i.i, %2
  br i1 %i.o, label %.split.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val5.i.i.i = load ptr, ptr %i.l, align 8, !noalias !11534, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val5.i.i.i, ptr nonnull readonly %1, i64 %2), !noalias !11534
  %i.p = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.p, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %.not15.i.i.i = icmp eq ptr %i.m, %i.g
  br i1 %.not15.i.i.i, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %.lr.ph.i.i.i

_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matches0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i: ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !11535, !nonnull !10, !noundef !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !11535, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !11535, !nonnull !10, !noundef !10 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !11535, !noundef !10 ; 2 uses
  %.idx28 = shl nuw nsw i64 %i.x, 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx28
  %i.z = tail call fastcc noundef zeroext i1 @_RNvNtCsfu0rQaTkGUu_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #43, !noalias !11536
  br i1 %i.z, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matches0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i
  %.not.not.not.i.not.not.not.i.not.not.i.not26 = icmp eq i64 %i.x, 0
  br i1 %.not.not.not.i.not.not.not.i.not.not.i.not26, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.preheader.preheader
  %i.aa = phi ptr [ %i.ad, %.lr.ph ], [ %i.v, %.preheader.preheader ] ; 3 uses
  %.val6.i.i.i6 = load ptr, ptr %i.aa, align 8, !noalias !11537, !nonnull !10, !noundef !10
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val7.i.i.i = load i64, ptr %i.ab, align 8, !noalias !11537, !noundef !10
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvNtCsfu0rQaTkGUu_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val6.i.i.i6, i64 noundef %.val7.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #43, !noalias !11538 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %.not.not.not.i.not.not.not.i.not.not.i.not = icmp eq ptr %i.ad, %i.y
  %or.cond = select i1 %i.ac, i1 true, i1 %.not.not.not.i.not.not.not.i.not.not.i.not
  br i1 %or.cond, label %_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit, label %.lr.ph

_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceReEINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrENCNvMs_NtB2f_14possible_valueNtB37_13PossibleValue20get_name_and_aliases0EENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB4d_3any5checkB1s_NCNvB34_7matchess_0E0INtNtNtBb_3ops12control_flow11ControlFlowuEEB2h_.exit: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i, %.split.i.i.i, %.lr.ph, %.preheader.preheader, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matches0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i, %bb.c, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matchess_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i
  %.sroa.0.0.in = phi i1 [ true, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matches0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i ], [ true, %_RINvYINtNtNtNtCsj6eKBz9Db1c_4core4iter7sources4once4OnceReENtNtNtBa_6traits8iterator8Iterator8try_folduQNCINvNvBV_3any5checkBS_NCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder14possible_valueNtB28_13PossibleValue7matchess_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2c_.exit.i ], [ false, %bb.c ], [ %i.ac, %.lr.ph ], [ false, %.preheader.preheader ], [ false, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map12map_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3str3StrReuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMs_NtB14_14possible_valueNtB2F_13PossibleValue20get_name_and_aliases0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB1O_NCNvB2C_7matchess_0E0E0B16_.exit.backedge.i.i.i ], [ true, %.split.i.i.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder7builder3argNtB4_3Arg19use_value_delimiter(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([600 x i8]) align 8 captures(none) dereferenceable(600) initializes((0, 600)) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(600) %1, i1 noundef zeroext %2) unnamed_addr #13 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 588 ; 2 uses
  br i1 %2, label %bb.b, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.sink.split

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %i.a, align 4, !range !44, !alias.scope !11541, !noundef !10
  %.not.i = icmp eq i32 %i.b, -1
  br i1 %.not.i, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.sink.split, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.sink.split: ; preds = %bb.b, %bb.a
  %.sink = phi i32 [ -1, %bb.a ], [ 44, %bb.b ]
  store i32 %.sink, ptr %i.a, align 4
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptioncE18get_or_insert_withNCNvB2_13get_or_insert0ECsfu0rQaTkGUu_12clap_builder.exit.sink.split, %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(600) %0, ptr noundef nonnull align 8 dereferenceable(600) %1, i64 600, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMs_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB4_10ArgMatches17remove_subcommand(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !align !16, !noundef !10 ; 4 uses
  store ptr null, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.d, i64 56, i1 false)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 80, i64 noundef 8) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 ptr @_RNvMs_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB4_10ArgMatches18subcommand_matches(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.a, align 8, !align !16, !noundef !10 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvMs1_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches14get_subcommand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noalias !11544, !noundef !10
  %i.d = icmp eq i64 %i.c, %2
  br i1 %i.d, label %bb.c, label %_RNvMs1_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches14get_subcommand.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !noalias !11544, !nonnull !10, !noundef !10
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull readonly %1, i64 %2)
  %i.g = icmp eq i32 %bcmp.i, 0
  %spec.select.i = select i1 %i.g, ptr %.val, ptr null
  br label %_RNvMs1_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches14get_subcommand.exit

_RNvMs1_NtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11arg_matchesNtB5_10ArgMatches14get_subcommand.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %spec.select.i, %bb.c ], [ null, %bb.b ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 24
  %.sroa.0.0 = select i1 %.not, ptr null, ptr %i.h
  ret ptr %.sroa.0.0
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcDNtNtCsj6eKBz9Db1c_4core3any3AnyNtNtBL_6marker4SendNtB1e_4SyncEL_E9drop_slowCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !10, !align !16, !noundef !10 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load i64, ptr %i.d, align 8, !range !17, !invariant.load !10 ; 2 uses
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsfu0rQaTkGUu_12clap_builder.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.e, -1
  %i.g = and i64 %i.f, -16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void %.val(ptr noundef nonnull %i.i) #45, !inline_history !11545
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %bb.a, %bb.b
  %i.j = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_RNtNtBG_5alloc6GlobalEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsfu0rQaTkGUu_12clap_builder.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %1 = atomicrmw sub ptr %i.k, i64 1 release, align 8
  %i.l = icmp eq i64 %1, 1
  br i1 %i.l, label %bb.d, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_RNtNtBG_5alloc6GlobalEECsfu0rQaTkGUu_12clap_builder.exit

bb.d:                                             ; preds = %bb.c
  fence acquire
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !11, !invariant.load !10
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.e, i64 8) ; 3 uses
  %i.p = add nuw nsw i64 %i.o, 15
  %i.q = add nuw i64 %i.p, %i.n
  %i.r = sub nsw i64 0, %i.o
  %i.s = and i64 %i.q, %i.r                       ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_RNtNtBG_5alloc6GlobalEECsfu0rQaTkGUu_12clap_builder.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036317904881) %i.s, i64 noundef range(i64 1, 536870913) %i.o) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_RNtNtBG_5alloc6GlobalEECsfu0rQaTkGUu_12clap_builder.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakDNtNtB4_3any3AnyNtNtB4_6marker4SendNtB1s_4SyncEL_RNtNtBG_5alloc6GlobalEECsfu0rQaTkGUu_12clap_builder.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueDNtNtB4_3any3AnyNtNtB4_6marker4SendNtBT_4SyncEL_ECsfu0rQaTkGUu_12clap_builder.exit, %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMsz_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_8IntoIterTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1d_7command7CommandE10dying_nextB1f_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11580)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !11581
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !11581 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !11581 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !11581 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !11581
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Q_7command7CommandE16deallocating_endNtNtBc_5alloc6GlobalEB1S_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.022.025.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.020.024.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i.prol, i64 456
  %i.g = load ptr, ptr %i.f, align 8, !noalias !11582, !nonnull !10, !noundef !10 ; 3 uses
  %i.h = add i64 %.sroa.020.024.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !11551

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.022.025.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.020.024.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.022.025.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.022.025.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.020.024.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.020.024.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.022.025.i.i, i64 456
  %i.k = load ptr, ptr %i.j, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 456
  %i.m = load ptr, ptr %i.l, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 456
  %i.o = load ptr, ptr %i.n, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %i.q = load ptr, ptr %i.p, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 456
  %i.s = load ptr, ptr %i.r, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 456
  %i.u = load ptr, ptr %i.t, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 456
  %i.w = load ptr, ptr %i.v, align 8, !noalias !11582, !nonnull !10, !noundef !10
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 456
  %i.y = load ptr, ptr %i.x, align 8, !noalias !11582, !nonnull !10, !noundef !10 ; 2 uses
  %i.z = add i64 %.sroa.020.024.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !11583, !noundef !10 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Y_7command7CommandNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB20_.exit.i, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %.loopexit.i, %.lr.ph.i2.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i2.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i2.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.3.05.i.i = phi i64 [ %i.af, %.lr.ph.i2.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.3.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.3.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 456, i64 552
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #43, !noalias !11584
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !11583, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Y_7command7CommandNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB20_.exit.i, label %.lr.ph.i2.i

_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Y_7command7CommandNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB20_.exit.i: ; preds = %.lr.ph.i2.i, %.loopexit.i
  %.sroa.3.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i2.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i2.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.3.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 456, i64 552
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #43, !noalias !11584
  br label %_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Q_7command7CommandE16deallocating_endNtNtBc_5alloc6GlobalEB1S_.exit

_RINvMsb_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Q_7command7CommandE16deallocating_endNtNtBc_5alloc6GlobalEB1S_.exit: ; preds = %bb.b, %_RINvMsj_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1Y_7command7CommandNtB1z_4LeafENtB1z_4EdgeE16deallocating_endNtNtBc_5alloc6GlobalEB20_.exit.i
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11585)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11586)
  %i.aj = load i64, ptr %1, align 8, !range !13, !alias.scope !11587, !noundef !10
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !11587, !noundef !10 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1P_7command7CommandE10init_frontB1R_.exit_crit_edge.i

._RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1P_7command7CommandE10init_frontB1R_.exit_crit_edge.i: ; preds = %bb.f
  %.sroa.48.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !11588
  %.sroa.59.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.59.0.copyload.i.pre.i = load i64, ptr %.sroa.59.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !11588
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1P_7command7CommandE10init_frontB1R_.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !11587, !noundef !10 ; 5 uses
  %.sroa.013.015.i.i = load ptr, ptr %i.an, align 8, !alias.scope !11587, !nonnull !10, !noundef !10 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %._crit_edge.i.i, label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.013.017.i.i.prol = phi ptr [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.016.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i.prol, i64 456
  %i.as = add i64 %.sroa.011.016.i.i.prol, -1     ; 2 uses
  %.sroa.013.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !11589, !nonnull !10, !noundef !10 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !11563

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.013.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.013.017.i.i.unr = phi ptr [ %.sroa.013.015.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.013.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.016.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %._crit_edge.i.i, label %.lr.ph.i.i2

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g
  %.sroa.013.0.lcssa.i.i = phi ptr [ %.sroa.013.015.i.i, %bb.g ], [ %.sroa.013.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ]
  store i64 1, ptr %1, align 8, !alias.scope !11587
  br label %_RNvMsc_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingTjNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrERNtNtB1P_7command7CommandE10init_frontB1R_.exit.i

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.013.017.i.i = phi ptr [ %.sroa.013.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.013.017.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.016.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.016.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.013.017.i.i, i64 456
  %.sroa.013.0.i.i = load ptr, ptr %i.au, align 8, !noalias !11589, !nonnull !10, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i, i64 456
  %.sroa.013.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !11589, !nonnull !10, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.0.i.i.1, i64 456
  %.sroa.013.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !11589, !nonnull !10, !noundef !10
end_hunk_3
