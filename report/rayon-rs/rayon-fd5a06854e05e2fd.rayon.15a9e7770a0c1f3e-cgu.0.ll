Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon-fd5a06854e05e2fd.rayon.15a9e7770a0c1f3e-cgu.0?download=true
inline.NumInlined: 121
inline.NumDeleted: 92
begin_hunk_0_@_RNvXse_NtCs1Rjy1FfFCsk_5rayon15range_inclusivejNtNtB5_7private12RangeInteger7opt_len:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = call { i64, i64 } @_RNvXsf_NtCs1Rjy1FfFCsk_5rayon5rangejNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterjENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncejEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef -1, i64 noundef -1)
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterjEINtNtB6_4once4OncejEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsf_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveiNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !alias.scope !167, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !167, !noundef !4 ; 4 uses
  %.not.i = icmp sle i64 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !167
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.e, i64 1) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i64, i1 } %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.c, ptr %i.b, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.k, ptr %i.l, align 8
  %i.m = call { i64, i64 } @_RNvXsr_NtCs1Rjy1FfFCsk_5rayon5rangeiNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteriENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceiEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.c, i64 noundef %i.e, i64 noundef %i.e)
  %i.n = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteriEINtNtB6_4once4OnceiEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsg_NtCs1Rjy1FfFCsk_5rayon15range_inclusivemNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = load i32, ptr %0, align 4, !alias.scope !170, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !170, !noundef !4 ; 3 uses
  %.not.i = icmp ule i32 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !9, !alias.scope !170
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i32 %i.e, -1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw i32 %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.c, ptr %i.b, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.j, ptr %i.k, align 4
  %i.l = call { i64, i64 } @_RNvXsc_NtCs1Rjy1FfFCsk_5rayon5rangemNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItermENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncemEEB8_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.c, i32 noundef -1, i32 noundef -1)
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItermEINtNtB6_4once4OncemEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.m, %bb.d ], [ %i.l, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsh_NtCs1Rjy1FfFCsk_5rayon15range_inclusivelNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = load i32, ptr %0, align 4, !alias.scope !173, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !alias.scope !173, !noundef !4 ; 4 uses
  %.not.i = icmp sle i32 %i.c, %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i8, ptr %i.f, align 4, !range !9, !alias.scope !173
  %i.h = icmp eq i8 %i.g, 0
  %or.cond.i = select i1 %.not.i, i1 %i.h, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterlE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.i = tail call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.e, i32 1) ; 2 uses
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { i32, i1 } %i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 %i.c, ptr %i.b, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.k, ptr %i.l, align 4
  %i.m = call { i64, i64 } @_RNvXso_NtCs1Rjy1FfFCsk_5rayon5rangelNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterlENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncelEEB8_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.e)
  %i.n = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterlEINtNtB6_4once4OncelEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn = phi { i64, i64 } [ %i.n, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %.sroa.0.0 = extractvalue { i64, i64 } %.pn, 0
  %.sroa.4.0 = extractvalue { i64, i64 } %.pn, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterlE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterlE6boundsB4_.exit: ; preds = %bb.a, %bb.e
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %bb.e ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %bb.e ], [ 1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsi_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveyNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !176, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !176, !noundef !4 ; 3 uses
  %.not.i = icmp ule i64 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !9, !alias.scope !176
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %reass.sub = sub i64 %i.d, %i.b
  %1 = add i64 %reass.sub, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteryENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceyEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i64 noundef -1, i64 noundef -1)
  %i.i = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteryEINtNtB6_4once4OnceyEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.j = extractvalue { i64, i64 } %i.i, 0
  %i.k = extractvalue { i64, i64 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit: ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.1 = phi i64 [ %1, %bb.c ], [ %i.k, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ 1, %bb.c ], [ %i.j, %bb.d ], [ 1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsj_NtCs1Rjy1FfFCsk_5rayon15range_inclusivexNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %0, align 8, !alias.scope !179, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !179, !noundef !4 ; 4 uses
  %.not.i = icmp sle i64 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !9, !alias.scope !179
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.d, i64 1) ; 2 uses
  %i.i = extractvalue { i64, i1 } %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i64, i1 } %i.h, 0         ; 2 uses
  %i.k = icmp sgt i64 %i.j, %i.b
  %i.l = sub i64 %i.j, %i.b
  %.sroa.02.0 = select i1 %i.k, i64 %i.l, i64 0
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterxENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncexEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.d)
  %i.m = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterxEINtNtB6_4once4OncexEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit: ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.1 = phi i64 [ %.sroa.02.0, %bb.c ], [ %i.o, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ 1, %bb.c ], [ %i.n, %bb.d ], [ 1, %bb.a ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsk_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveoNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = load i128, ptr %0, align 16, !alias.scope !182, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i128, ptr %i.c, align 16, !alias.scope !182, !noundef !4 ; 3 uses
  %.not.i = icmp ule i128 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 16, !range !9, !alias.scope !182
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i128 %i.d, -1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %reass.sub = sub i128 %i.d, %i.b
  %1 = add i128 %reass.sub, 1                     ; 2 uses
  %i.i = icmp ult i128 %1, 18446744073709551616   ; 2 uses
  %i.j = trunc nuw i128 %1 to i64
  %spec.select = select i1 %i.i, i64 %i.j, i64 undef
  %spec.select6 = zext i1 %i.i to i64
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteroENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceoEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, i128 noundef %i.b, i128 noundef -1, i128 noundef -1)
  %i.k = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteroEINtNtB6_4once4OnceoEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a) ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.5.1 = phi i64 [ %spec.select, %bb.c ], [ %i.m, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %spec.select6, %bb.c ], [ %i.l, %bb.d ], [ 1, %bb.a ]
  %i.n = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.o = insertvalue { i64, i64 } %i.n, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.o
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvXsl_NtCs1Rjy1FfFCsk_5rayon15range_inclusivenNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 16               ; 4 uses
  %i.b = load i128, ptr %0, align 16, !alias.scope !185, !noundef !4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i128, ptr %i.c, align 16, !alias.scope !185, !noundef !4 ; 4 uses
  %.not.i = icmp sle i128 %i.b, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i8, ptr %i.e, align 16, !range !9, !alias.scope !185
  %i.g = icmp eq i8 %i.f, 0
  %or.cond.i = select i1 %.not.i, i1 %i.g, i1 false
  br i1 %or.cond.i, label %bb.b, label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call { i128, i1 } @llvm.sadd.with.overflow.i128(i128 %i.d, i128 1) ; 2 uses
  %i.i = extractvalue { i128, i1 } %i.h, 1
  br i1 %i.i, label %bb.d, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.j = extractvalue { i128, i1 } %i.h, 0        ; 2 uses
  %i.k = icmp sgt i128 %i.j, %i.b
  %i.l = sub i128 %i.j, %i.b
  %.sroa.02.0 = select i1 %i.k, i128 %i.l, i128 0 ; 2 uses
  %i.m = icmp ult i128 %.sroa.02.0, 18446744073709551616 ; 2 uses
  %i.n = trunc nuw i128 %.sroa.02.0 to i64
  %spec.select = select i1 %i.m, i64 %i.n, i64 undef
  %spec.select5 = zext i1 %i.m to i64
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IternENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncenEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, i128 noundef %i.b, i128 noundef %i.d, i128 noundef %i.d)
  %i.o = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IternEINtNtB6_4once4OncenEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a) ; 2 uses
  %i.p = extractvalue { i64, i64 } %i.o, 0
  %i.q = extractvalue { i64, i64 } %i.o, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IternE6boundsB4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.5.1 = phi i64 [ %spec.select, %bb.c ], [ %i.q, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %spec.select5, %bb.c ], [ %i.p, %bb.d ], [ 1, %bb.a ]
  %i.r = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.s = insertvalue { i64, i64 } %i.r, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtNtCs1Rjy1FfFCsk_5rayon4iter6extendNtB5_16ListStringFolderINtNtB7_8plumbing6FoldercE7consume(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i32 noundef range(i32 0, 1114112) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !188, !noundef !4 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %2, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %2, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %2, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !188, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %2 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %2, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %2, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %2, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, i64 noundef 1)
          to label %.noexc1 unwind label %bb.h

.noexc1:                                          ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !188, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %2 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %bb.i

bb.d:                                             ; preds = %.noexc
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %bb.i

bb.e:                                             ; preds = %.noexc
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs1Rjy1FfFCsk_5rayon4iter6extend16ListStringFolderEBH_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #22
          to label %bb.k unwind label %bb.j

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.d, %.noexc1
  %.sroa.0.03.i = phi i64 [ 1, %.noexc1 ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ak = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !188
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void

bb.j:                                             ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.k:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aj
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXso_NtNtCs1Rjy1FfFCsk_5rayon4iter6extendNtB5_16ListStringFolderINtNtB7_8plumbing6FoldercE8complete(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef nonnull align 8 ptr @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringE13push_back_mutCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.g unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %1, align 8, !range !6, !alias.scope !199, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val2.i.i, 0
  br i1 %i.h, label %common.resume, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

end_hunk_0
begin_hunk_1_@_RNvXso_NtNtCs1Rjy1FfFCsk_5rayon4iter6extendNtB5_16ListStringFolderINtNtB7_8plumbing6FoldercE8complete:bb.a
          to label %common.resume unwind label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon.exit: ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i, %bb.e, %bb.g
  ret void

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvNtNtCs3oUPovFnLWP_4core5slice5index5rangeINtNtNtB6_3ops5range5RangejEECs1Rjy1FfFCsk_5rayon(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs7_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr allocptr noundef nonnull, i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #13

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedINtNtB4_6option6OptionjEBM_EB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs6_NtCs1Rjy1FfFCsk_5rayon5rangehNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i24 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterhENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncehEEB8_(i8 noundef, i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterhEINtNtB6_4once4OncehEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXs9_NtCs1Rjy1FfFCsk_5rayon5rangetNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItertENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncetEEB8_(i16 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItertEINtNtB6_4once4OncetEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(6)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i8, i1 } @llvm.sadd.with.overflow.i8(i8, i8) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsi_NtCs1Rjy1FfFCsk_5rayon5rangeaNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i24 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteraENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceaEEB8_(i8 noundef, i8 noundef, i8 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteraEINtNtB6_4once4OnceaEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i16, i1 } @llvm.sadd.with.overflow.i16(i16, i16) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsl_NtCs1Rjy1FfFCsk_5rayon5rangesNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden i48 @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItersENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncesEEB8_(i16 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItersEINtNtB6_4once4OncesEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(6)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsf_NtCs1Rjy1FfFCsk_5rayon5rangejNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterjENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncejEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterjEINtNtB6_4once4OncejEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsr_NtCs1Rjy1FfFCsk_5rayon5rangeiNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteriENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceiEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteriEINtNtB6_4once4OnceiEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXsc_NtCs1Rjy1FfFCsk_5rayon5rangemNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4ItermENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncemEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4ItermEINtNtB6_4once4OncemEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #15

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvXso_NtCs1Rjy1FfFCsk_5rayon5rangelNtNtB5_7private12RangeInteger7opt_len(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterlENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncelEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterlEINtNtB6_4once4OncelEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteryENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceyEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteryEINtNtB6_4once4OnceyEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterxENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncexEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterxEINtNtB6_4once4OncexEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteroENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceoEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), i128 noundef, i128 noundef, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteroEINtNtB6_4once4OnceoEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i128, i1 } @llvm.sadd.with.overflow.i128(i128, i128) #15

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IternENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncenEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 16 captures(none) dereferenceable(48), i128 noundef, i128 noundef, i128 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IternEINtNtB6_4once4OncenEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvMs6_NtNtCs1xwejQucwHj_5alloc11collections11linked_listINtB5_10LinkedListNtNtB9_6string6StringE13push_back_mutCs1Rjy1FfFCsk_5rayon(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { noinline noreturn }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { cold }
attributes #23 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{i64 0, i64 -9223372036854775808}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i32 0, i32 1114112}
!9 = !{i8 0, i8 2}
!10 = !{!"branch_weights", i32 4000000, i32 4001}
!11 = distinct !{!11, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon"}
!12 = distinct !{!12, !11, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECs1Rjy1FfFCsk_5rayon: argument 0"}
!13 = distinct !{!13, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1Rjy1FfFCsk_5rayon"}
!14 = distinct !{!14, !13, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs1Rjy1FfFCsk_5rayon: argument 0"}
!15 = distinct !{!15, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon"}
!16 = distinct !{!16, !15, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon: argument 0"}
!17 = distinct !{!17, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon"}
!18 = distinct !{!18, !17, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon: argument 0"}
!19 = distinct !{!19, i1 true, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon"}
!20 = distinct !{!20, !19, !"_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs1Rjy1FfFCsk_5rayon: argument 0"}
!21 = !{!16, !14, !12}
!22 = !{!14, !12}
!23 = !{!18}
!24 = !{!20}
!25 = distinct !{!25, i1 true, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1Rjy1FfFCsk_5rayon"}
!26 = distinct !{!26, !25, !"_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs1Rjy1FfFCsk_5rayon: argument 0"}
!27 = !{!26}
!28 = !{i64 0, i64 2}
!29 = !{i64 0, i64 -9223372036854775807}
!30 = !{!"branch_weights", i32 2002, i32 2000}
!31 = distinct !{!31, i1 true, !"_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtB6_6string6StringERNtNtB6_5alloc6GlobalE17try_new_uninit_inCs1Rjy1FfFCsk_5rayon"}
!32 = distinct !{!32, !31, !"_RNvMs_NtCs1xwejQucwHj_5alloc5boxedINtB4_3BoxINtNtNtB6_11collections11linked_list4NodeNtNtB6_6string6StringERNtNtB6_5alloc6GlobalE17try_new_uninit_inCs1Rjy1FfFCsk_5rayon: argument 0"}
!33 = !{!32}
!34 = distinct !{!34, i1 true, !"_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len"}
!35 = distinct !{!35, !34, !"_RNvXs3_NtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB5_4ItercENtNtB7_4iter23IndexedParallelIterator3len: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_"}
!37 = distinct !{!37, !36, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_: argument 0"}
!38 = !{!37, !35}
!39 = distinct !{!39, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_"}
!40 = distinct !{!40, !39, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItercE6boundsB4_: argument 0"}
!41 = !{!40}
!42 = distinct !{!42, i1 true, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!43 = distinct !{!43, !42, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!44 = distinct !{!44, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!45 = distinct !{!45, !44, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!46 = distinct !{!46, !44, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!47 = distinct !{!47, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!48 = distinct !{!48, !47, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!49 = distinct !{!49, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!50 = distinct !{!50, !49, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!51 = distinct !{!51, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!52 = distinct !{!52, !51, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!54 = distinct !{!54, !53, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!55 = !{!43}
!56 = !{!46, !45}
!57 = !{!52, !50, !48}
!58 = !{!54}
!59 = distinct !{!59, i1 true, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!60 = distinct !{!60, !59, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivehENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!61 = distinct !{!61, i1 true, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_10PartialOrd2le"}
!62 = distinct !{!62, !61, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_10PartialOrd2le: argument 0"}
!63 = distinct !{!63, !61, !"_RNvXsW_NtNtCs3oUPovFnLWP_4core3cmp5implshNtB7_10PartialOrd2le: argument 1"}
!64 = !{!60}
!65 = !{!62}
!66 = !{!63}
!67 = !{!62, !60}
!68 = !{!63, !60}
!69 = distinct !{!69, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterhE6boundsB4_"}
!70 = distinct !{!70, !69, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterhE6boundsB4_: argument 0"}
!71 = !{!70}
!72 = distinct !{!72, i1 true, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!73 = distinct !{!73, !72, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!74 = distinct !{!74, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!75 = distinct !{!75, !74, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!76 = distinct !{!76, !74, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!77 = distinct !{!77, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!78 = distinct !{!78, !77, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!79 = distinct !{!79, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!80 = distinct !{!80, !79, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!81 = distinct !{!81, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!82 = distinct !{!82, !81, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!83 = distinct !{!83, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!84 = distinct !{!84, !83, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!85 = !{!73}
!86 = !{!76, !75}
!87 = !{!82, !80, !78}
!88 = !{!84}
!89 = distinct !{!89, i1 true, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivetENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!90 = distinct !{!90, !89, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivetENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!91 = distinct !{!91, i1 true, !"_RNvXsY_NtNtCs3oUPovFnLWP_4core3cmp5implstNtB7_10PartialOrd2le"}
!92 = distinct !{!92, !91, !"_RNvXsY_NtNtCs3oUPovFnLWP_4core3cmp5implstNtB7_10PartialOrd2le: argument 0"}
!93 = distinct !{!93, !91, !"_RNvXsY_NtNtCs3oUPovFnLWP_4core3cmp5implstNtB7_10PartialOrd2le: argument 1"}
!94 = !{!90}
!95 = !{!92}
!96 = !{!93}
!97 = !{!92, !90}
!98 = !{!93, !90}
!99 = distinct !{!99, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItertE6boundsB4_"}
!100 = distinct !{!100, !99, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItertE6boundsB4_: argument 0"}
!101 = !{!100}
!102 = distinct !{!102, i1 true, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!103 = distinct !{!103, !102, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!104 = distinct !{!104, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!105 = distinct !{!105, !104, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!106 = distinct !{!106, !104, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!107 = distinct !{!107, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!108 = distinct !{!108, !107, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!109 = distinct !{!109, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!110 = distinct !{!110, !109, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!111 = distinct !{!111, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!112 = distinct !{!112, !111, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!113 = distinct !{!113, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!114 = distinct !{!114, !113, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!115 = !{!103}
!116 = !{!106, !105}
!117 = !{!112, !110, !108}
!118 = !{!114}
!119 = distinct !{!119, i1 true, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!120 = distinct !{!120, !119, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusiveaENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!121 = distinct !{!121, i1 true, !"_RNvXs18_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_10PartialOrd2le"}
!122 = distinct !{!122, !121, !"_RNvXs18_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_10PartialOrd2le: argument 0"}
!123 = distinct !{!123, !121, !"_RNvXs18_NtNtCs3oUPovFnLWP_4core3cmp5implsaNtB8_10PartialOrd2le: argument 1"}
!124 = !{!120}
!125 = !{!122}
!126 = !{!123}
!127 = !{!122, !120}
!128 = !{!123, !120}
!129 = distinct !{!129, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteraE6boundsB4_"}
!130 = distinct !{!130, !129, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteraE6boundsB4_: argument 0"}
!131 = !{!130}
!132 = distinct !{!132, i1 true, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint"}
!133 = distinct !{!133, !132, !"_RNvNtCs1Rjy1FfFCsk_5rayon3str18find_char_midpoint: argument 0"}
!134 = distinct !{!134, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_"}
!135 = distinct !{!135, !134, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 1"}
!136 = distinct !{!136, !134, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters6copied13copy_try_foldhuINtNtNtBa_3ops12control_flow11ControlFlowjENCINvNvBL_8position5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2j_EB3u_: argument 0"}
!137 = distinct !{!137, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_"}
!138 = distinct !{!138, !137, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters6copied6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits8iterator8Iterator9rpositionNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryEB2c_: argument 0"}
!139 = distinct !{!139, i1 true, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_"}
!140 = distinct !{!140, !139, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters6copiedINtB6_6CopiedINtNtNtBc_5slice4iter4IterhEENtNtNtBa_6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNvNtNtB1A_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0INtNtNtBc_3ops12control_flow11ControlFlowjjEEB3o_: argument 0"}
!141 = distinct !{!141, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_"}
!142 = distinct !{!142, !141, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters6copied13copy_try_foldhjINtNtNtBa_3ops12control_flow11ControlFlowjjENCINvNvNtNtBP_8iterator8Iterator9rposition5checkhNvNtCs1Rjy1FfFCsk_5rayon3str16is_char_boundaryE0E0B2B_EB4a_: argument 0"}
!143 = distinct !{!143, i1 true, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked"}
!144 = distinct !{!144, !143, !"_RNvMNtCs3oUPovFnLWP_4core3stre16split_at_checked: argument 1"}
!145 = !{!133}
!146 = !{!136, !135}
!147 = !{!142, !140, !138}
!148 = !{!144}
!149 = distinct !{!149, i1 true, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon"}
!150 = distinct !{!150, !149, !"_RNvXsd_NtNtCs3oUPovFnLWP_4core4iter5rangeINtNtNtB9_3ops5range14RangeInclusivesENtNtNtB7_6traits8iterator8Iterator9size_hintCs1Rjy1FfFCsk_5rayon: argument 1"}
!151 = distinct !{!151, i1 true, !"_RNvXs1a_NtNtCs3oUPovFnLWP_4core3cmp5implssNtB8_10PartialOrd2le"}
!152 = distinct !{!152, !151, !"_RNvXs1a_NtNtCs3oUPovFnLWP_4core3cmp5implssNtB8_10PartialOrd2le: argument 0"}
!153 = distinct !{!153, !151, !"_RNvXs1a_NtNtCs3oUPovFnLWP_4core3cmp5implssNtB8_10PartialOrd2le: argument 1"}
!154 = !{!150}
!155 = !{!152}
!156 = !{!153}
!157 = !{!152, !150}
!158 = !{!153, !150}
!159 = distinct !{!159, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItersE6boundsB4_"}
!160 = distinct !{!160, !159, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItersE6boundsB4_: argument 0"}
!161 = !{!160}
!162 = distinct !{!162, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_"}
!163 = distinct !{!163, !162, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterjE6boundsB4_: argument 1"}
!164 = !{!163}
!165 = distinct !{!165, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_"}
!166 = distinct !{!166, !165, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteriE6boundsB4_: argument 1"}
!167 = !{!166}
!168 = distinct !{!168, i1 true, !"_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4ItermE6boundsB4_"}
end_hunk_1
