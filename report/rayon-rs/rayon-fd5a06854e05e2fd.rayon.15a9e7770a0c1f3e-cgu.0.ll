Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rayon-rs/original/rayon-fd5a06854e05e2fd.rayon.15a9e7770a0c1f3e-cgu.0?download=true
inline.NumInlined: 121
inline.NumDeleted: 92
begin_hunk_0_@_RNvXse_NtCs1Rjy1FfFCsk_5rayon15range_inclusivejNtNtB5_7private12RangeInteger7opt_len:bb.a
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
  %i.i = add i64 %reass.sub, 1
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteryENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceyEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i64 noundef -1, i64 noundef -1)
  %i.j = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteryEINtNtB6_4once4OnceyEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteryE6boundsB4_.exit: ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.1 = phi i64 [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ 1, %bb.c ], [ %i.k, %bb.d ], [ 1, %bb.a ]
  %i.m = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.n = insertvalue { i64, i64 } %i.m, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.n
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
  %1 = icmp sgt i64 %i.j, %i.b
  %i.k = sub i64 %i.j, %i.b
  %.sroa.02.0 = select i1 %1, i64 %i.k, i64 0
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IterxENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OncexEEB8_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.d)
  %i.l = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IterxEINtNtB6_4once4OncexEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IterxE6boundsB4_.exit: ; preds = %bb.a, %bb.d, %bb.c
  %.sroa.4.1 = phi i64 [ %.sroa.02.0, %bb.c ], [ %i.n, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ 1, %bb.c ], [ %i.m, %bb.d ], [ 1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.4.1, 1
  ret { i64, i64 } %i.p
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
  %i.i = add i128 %reass.sub, 1                   ; 2 uses
  %i.j = icmp ult i128 %i.i, 18446744073709551616 ; 2 uses
  %i.k = trunc nuw i128 %i.i to i64
  %spec.select = select i1 %i.j, i64 %i.k, i64 undef
  %spec.select6 = zext i1 %i.j to i64
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RINvYINtNtCs1Rjy1FfFCsk_5rayon5range4IteroENtNtB8_4iter16ParallelIterator5chainINtNtBH_4once4OnceoEEB8_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.a, i128 noundef %i.b, i128 noundef -1, i128 noundef -1)
  %i.l = call { i64, i64 } @_RNvXs_NtNtCs1Rjy1FfFCsk_5rayon4iter5chainINtB4_5ChainINtNtB8_5range4IteroEINtNtB6_4once4OnceoEENtB6_16ParallelIterator7opt_lenB8_(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.a) ; 2 uses
  %i.m = extractvalue { i64, i64 } %i.l, 0
  %i.n = extractvalue { i64, i64 } %i.l, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit

_RNvMNtCs1Rjy1FfFCsk_5rayon15range_inclusiveINtB2_4IteroE6boundsB4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.5.1 = phi i64 [ %spec.select, %bb.c ], [ %i.n, %bb.d ], [ 0, %bb.a ]
  %.sroa.0.1 = phi i64 [ %spec.select6, %bb.c ], [ %i.m, %bb.d ], [ 1, %bb.a ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.p
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
end_hunk_0
