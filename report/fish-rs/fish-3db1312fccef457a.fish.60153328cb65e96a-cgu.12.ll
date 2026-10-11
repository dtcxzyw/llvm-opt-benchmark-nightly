Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.12?download=true
inline.NumInlined: 2412
inline.NumDeleted: 784
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_RNvXs3_NtCs1HV6ixfL8cZ_11fish_printf11printf_implNtB5_5ErrorNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt:bb.a

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @700, i64 noundef 10)
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @701, i64 noundef 8)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @702, i64 noundef 10)
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @703, i64 noundef 8)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.h, ptr %i.a, align 8
  %i.i = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @705, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @704)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.g, %bb.f ], [ %i.i, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_4IterNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = tail call { i64, ptr } @_RNvMs1_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_7DirIter4next(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 9 uses
  switch i64 %i.d, label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  store i64 -2, ptr %0, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXsb_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_8DirEntryNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  store i64 -1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4263
  call void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e), !noalias !4263
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i64, ptr %i.f, align 8, !noalias !4263, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !4263
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 65
  %i.j = load i8, ptr %i.i, align 1, !range !45, !noalias !4263, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.l = load i8, ptr %i.k, align 8, !range !18, !noalias !4263, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noalias !4263, !nonnull !9, !noundef !9 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !4263, !noundef !9 ; 2 uses
  %i.p = icmp ne i64 %i.o, 0
  call void @llvm.assume(i1 %i.p)
  %i.q = add i64 %i.o, 1                          ; 2 uses
  store i64 %i.q, ptr %i.n, align 8, !noalias !4263
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %_RNvXsb_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_8DirEntryNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit, !prof !13

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_RNvXsb_NtNtCs8frGy5WneL6_4fish5wutil8dir_iterNtB5_8DirEntryNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit: ; preds = %bb.e
  %i.s = load ptr, ptr %i.m, align 8, !noalias !4263, !nonnull !9, !noundef !9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.613.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4263
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.s, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.g, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 %i.l, ptr %.sroa.714.0..sroa_idx, align 8
  %.sroa.815.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 %i.j, ptr %.sroa.815.0..sroa_idx, align 1
  br label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvXs3_NtNtCs8frGy5WneL6_4fish7history4fileNtB5_10MmapRegionNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !9
  %i.d = tail call noundef i32 @munmap(ptr noundef %i.a, i64 noundef %i.c) #32 ; 0 uses
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9ArgumentsNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = load i64, ptr %1, align 8, !range !8, !noundef !9
  %.not = icmp eq i64 %i.d, -1
  br i1 %.not, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4288)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 5 uses
  %i.g = load i8, ptr %i.f, align 8, !range !51, !alias.scope !4288, !noalias !4287, !noundef !9
  switch i8 %i.g, label %default.unreachable [
    i8 1, label %bb.c
    i8 0, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
  ], !prof !4289

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4290)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4291, !noalias !4292, !noundef !9 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4291, !noalias !4292, !noundef !9 ; 2 uses
  %.not.i.i = icmp ult i64 %i.i, %i.k
  %.pre.i.i = load ptr, ptr %i.e, align 8, !alias.scope !4291, !noalias !4292 ; 5 uses
  br i1 %.not.i.i, label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4293
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !4291, !noalias !4292, !noundef !9
  store ptr %.pre.i.i, ptr %i.c, align 8, !noalias !4293
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !4293
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %i.p, align 8, !noalias !4293
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8, !range !31, !alias.scope !4291, !noalias !4292, !noundef !9
  store i8 %i.s, ptr %i.q, align 8, !noalias !4293
  %i.t = call noundef ptr @_RINvNtNtCs1xwejQucwHj_5alloc2io4read16default_read_bufNCNvYNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileNtB2_4Read8read_buf0EBZ_(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull %.pre.i.i, ptr noundef nonnull %i.c), !noalias !4294 ; 2 uses
  store i64 0, ptr %i.h, align 8, !alias.scope !4291, !noalias !4292
  %i.u = load i64, ptr %i.p, align 8, !noalias !4293, !noundef !9 ; 2 uses
  store i64 %i.u, ptr %i.j, align 8, !alias.scope !4291, !noalias !4292
  %i.v = load i8, ptr %i.q, align 8, !range !31, !noalias !4293, !noundef !9
  store i8 %i.v, ptr %i.r, align 8, !alias.scope !4291, !noalias !4292
  %.not3.i.i = icmp eq ptr %i.t, null
  br i1 %.not3.i.i, label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread64.i, label %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread.i

_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread.i: ; preds = %bb.d
  %i.w = ptrtoint ptr %i.t to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4293
  br label %bb.e

_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread64.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4293
  br label %bb.h

_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i: ; preds = %bb.c
  %i.x = sub nuw i64 %i.k, %i.i                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 %i.i
  %i.z = icmp eq ptr %.pre.i.i, null
  br i1 %i.z, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread.i
  %.sroa.7.04146.i = phi i64 [ %i.w, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread.i ], [ %i.x, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4295
  %i.aa = and i64 %.sroa.7.04146.i, 3
  switch i64 %i.aa, label %default.unreachable [
    i64 2, label %bb.k
    i64 3, label %bb.f
    i64 0, label %bb.k
    i64 1, label %bb.g
  ], !prof !19

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp ult i64 %.sroa.7.04146.i, 188978561024
  call void @llvm.assume(i1 %i.ab)
  br label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ac = inttoptr i64 %.sroa.7.04146.i to ptr
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !4296, !noalias !4295
  store i8 3, ptr %i.b, align 8, !alias.scope !4296, !noalias !4295
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ae), !noalias !4287
  br label %bb.k

bb.h:                                             ; preds = %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread64.i
  %i.af = phi ptr [ %.pre.i.i, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread64.i ], [ %i.y, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i ] ; 2 uses
  %i.ag = phi i64 [ %i.u, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.thread64.i ], [ %i.x, %_RINvMNtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEB1o_.exit.i ] ; 5 uses
  %i.ah = icmp samesign ult i64 %i.ag, 16
  br i1 %i.ah, label %.preheader.i.i.i, label %bb.i

.preheader.i.i.i:                                 ; preds = %bb.h
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %.thread.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef range(i64 0, -9223372036854775808) %i.ag), !noalias !4287 ; 2 uses
  %i.aj = extractvalue { i64, i64 } %i.ai, 0
  %i.ak = extractvalue { i64, i64 } %i.ai, 1
  %i.al = trunc nuw i64 %i.aj to i1
  br i1 %i.al, label %.thread42.i, label %.thread.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.j
  %.sroa.04.011.i.i.i = phi i64 [ %i.ap, %bb.j ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.04.011.i.i.i
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !4297, !noalias !4287, !noundef !9
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %.thread42.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i
  %i.ap = add nuw nsw i64 %.sroa.04.011.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ap, %i.ag
  br i1 %exitcond.not.i.i.i, label %.thread.i, label %.lr.ph.i.i.i

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4295
  store i64 -2, ptr %0, align 8, !alias.scope !4287, !noalias !4288
  br label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments13get_arg_stdin.exit

.thread.i:                                        ; preds = %bb.j, %bb.i, %.preheader.i.i.i
  store i8 0, ptr %i.f, align 8, !alias.scope !4288, !noalias !4287
  br label %bb.l

.thread42.i:                                      ; preds = %.lr.ph.i.i.i, %bb.i
  %.sroa.5.0.i.i.i = phi i64 [ %i.ak, %bb.i ], [ %.sroa.04.011.i.i.i, %.lr.ph.i.i.i ]
  %i.aq = icmp ult i64 %.sroa.5.0.i.i.i, %i.ag
  call void @llvm.assume(i1 %i.aq)
  store i8 2, ptr %i.f, align 8, !alias.scope !4288, !noalias !4287
  br label %bb.m

default.unreachable:                              ; preds = %bb.x, %bb.e, %bb.b
  unreachable

bb.l:                                             ; preds = %.thread.i, %bb.b
  %i.ar = call { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i8 noundef 10, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !4287 ; 2 uses
  %i.as = extractvalue { i64, ptr } %i.ar, 0
  %i.at = extractvalue { i64, ptr } %i.ar, 1
  %i.au = ptrtoint ptr %i.at to i64
  br label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_4read4Read11read_to_endB1b_.exit.i

bb.m:                                             ; preds = %.thread42.i, %bb.b
  %i.av = call { i64, ptr } @_RINvNtNtCs1xwejQucwHj_5alloc2io8buf_read18default_read_untilINtNtNtB4_8buffered9bufreader9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileEEB1D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e, i8 noundef 0, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !4287 ; 2 uses
  %i.aw = extractvalue { i64, ptr } %i.av, 0
  %i.ax = extractvalue { i64, ptr } %i.av, 1
  %i.ay = ptrtoint ptr %i.ax to i64
  br label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_4read4Read11read_to_endB1b_.exit.i

bb.n:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4299)
  %i.az = load ptr, ptr %i.e, align 8, !alias.scope !4300, !noalias !4301, !nonnull !9, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !4300, !noalias !4301, !noundef !9 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !4300, !noalias !4301, !noundef !9 ; 2 uses
  %i.be = sub nuw i64 %i.bd, %i.bb                ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !4302, !noalias !4303, !noundef !9
  %i.bh = tail call { i64, i64 } @_RNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11try_reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.bg, i64 noundef %i.be, i64 noundef 1, i64 noundef 1), !noalias !4303
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  %.not.i33.i = icmp eq i64 %i.bi, -1
  br i1 %.not.i33.i, label %bb.o, label %.thread68.i

.thread68.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4295
  br label %bb.t

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, i64 noundef %i.be), !noalias !4303
  %i.bj = load i64, ptr %i.bf, align 8, !alias.scope !4304, !noalias !4303, !noundef !9 ; 3 uses
  %i.bk = icmp sgt i64 %i.bj, -1
  tail call void @llvm.assume(i1 %i.bk)
  %.not.i.i34.i = icmp eq i64 %i.bd, %i.bb
  br i1 %.not.i.i34.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bb
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !4304, !noalias !4303, !nonnull !9, !noundef !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bo, ptr nonnull readonly align 1 %i.bl, i64 %i.be, i1 false), !noalias !4303
  %.pre.i.i.i = load i64, ptr %i.bf, align 8, !alias.scope !4304, !noalias !4303
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish.exit.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish.exit.i.i: ; preds = %bb.p, %bb.o
  %i.bp = phi i64 [ %.pre.i.i.i, %bb.p ], [ %i.bj, %bb.o ]
  %i.bq = add i64 %i.bp, %i.be
  store i64 %i.bq, ptr %i.bf, align 8, !alias.scope !4304, !noalias !4303
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i8 0, i64 16, i1 false), !alias.scope !4300, !noalias !4301
  %i.bs = tail call { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %i.br, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1), !noalias !4287 ; 2 uses
  %i.bt = extractvalue { i64, ptr } %i.bs, 0      ; 2 uses
  %i.bu = extractvalue { i64, ptr } %i.bs, 1
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = trunc nuw i64 %i.bt to i1
  %i.bx = select i1 %i.bw, i64 0, i64 %i.be
  %spec.select.i.i = add i64 %i.bx, %i.bv
  br label %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_4read4Read11read_to_endB1b_.exit.i

_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_4read4Read11read_to_endB1b_.exit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish.exit.i.i, %bb.m, %bb.l
  %.sroa.8.0.i = phi i64 [ %i.au, %bb.l ], [ %i.ay, %bb.m ], [ %spec.select.i.i, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish.exit.i.i ] ; 7 uses
  %.sroa.038.0.i = phi i64 [ %i.as, %bb.l ], [ %i.aw, %bb.m ], [ %i.bt, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE15append_elementsCs8frGy5WneL6_4fish.exit.i.i ]
  %i.by = trunc nuw i64 %.sroa.038.0.i to i1
  br i1 %i.by, label %bb.q, label %bb.s

bb.q:                                             ; preds = %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_4read4Read11read_to_endB1b_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4295
  %i.bz = and i64 %.sroa.8.0.i, 3
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.r, label %bb.t, !prof !4305

bb.r:                                             ; preds = %bb.q
  %i.cb = inttoptr i64 %.sroa.8.0.i to ptr
  %i.cc = getelementptr i8, ptr %i.cb, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cc) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !alias.scope !4306, !noalias !4295
  store i8 3, ptr %i.a, align 8, !alias.scope !4306, !noalias !4295
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cd), !noalias !4287
  br label %bb.t

bb.s:                                             ; preds = %_RNvXs4_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_4read4Read11read_to_endB1b_.exit.i
  %i.ce = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.ce, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.q, %.thread68.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4295
  store i64 -2, ptr %0, align 8, !alias.scope !4287, !noalias !4288
  br label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments13get_arg_stdin.exit

bb.u:                                             ; preds = %bb.s
  store i64 -2, ptr %0, align 8, !alias.scope !4287, !noalias !4288
  br label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments13get_arg_stdin.exit

bb.v:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ch = load i64, ptr %i.cg, align 8, !alias.scope !4288, !noalias !4287, !noundef !9 ; 4 uses
  %.not25.i = icmp eq i64 %i.ch, 0
  br i1 %.not25.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = load i8, ptr %i.f, align 8, !range !51, !alias.scope !4288, !noalias !4287, !noundef !9
  %i.cj = icmp eq i8 %i.ci, 1
  br i1 %i.cj, label %bb.y, label %bb.ab, !prof !4307

bb.x:                                             ; preds = %bb.v
  %i.ck = load ptr, ptr %i.cf, align 8, !alias.scope !4288, !noalias !4287, !nonnull !9, !noundef !9
  %i.cl = getelementptr i8, ptr %i.ck, i64 %i.ch
  %i.cm = getelementptr i8, ptr %i.cl, i64 -1     ; 2 uses
  %i.cn = load i8, ptr %i.f, align 8, !range !51, !alias.scope !4288, !noalias !4287, !noundef !9
  switch i8 %i.cn, label %default.unreachable [
    i8 0, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.ab
    i8 1, label %bb.y
  ], !prof !4308

bb.y:                                             ; preds = %bb.x, %bb.w
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @21, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #34, !noalias !4287
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.co = load i8, ptr %i.cm, align 1, !noalias !4287, !noundef !9
  %i.cp = icmp eq i8 %i.co, 10                    ; 2 uses
  %i.cq = sext i1 %i.cp to i64
  %spec.select.i = add i64 %.sroa.8.0.i, %i.cq
  %spec.select27.i = zext i1 %i.cp to i8
  br label %bb.ab

bb.aa:                                            ; preds = %bb.x
  %i.cr = load i8, ptr %i.cm, align 1, !noalias !4287, !noundef !9
  %i.cs = icmp eq i8 %i.cr, 0
  %i.ct = sext i1 %i.cs to i64
  %spec.select28.i = add i64 %.sroa.8.0.i, %i.ct
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w
  %.sroa.012.0.i = phi i64 [ %.sroa.8.0.i, %bb.x ], [ %spec.select28.i, %bb.aa ], [ %spec.select.i, %bb.z ], [ %.sroa.8.0.i, %bb.w ] ; 3 uses
  %.sroa.022.0.i = phi i8 [ 0, %bb.x ], [ 0, %bb.aa ], [ %spec.select27.i, %bb.z ], [ 0, %bb.w ]
  %.not26.i = icmp ugt i64 %.sroa.012.0.i, %i.ch
  br i1 %.not26.i, label %bb.ac, label %bb.ad, !prof !43

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %.sroa.012.0.i, i64 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #34, !noalias !4287
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cu = load ptr, ptr %i.cf, align 8, !alias.scope !4288, !noalias !4287, !nonnull !9, !noundef !9
  call void @_RNvCskr4qsHYS30i_15fish_widestring14bytes2wcstring(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef %.sroa.012.0.i)
  store i64 0, ptr %i.cg, align 8, !alias.scope !4288, !noalias !4287
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.022.0.i, ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !4287, !noalias !4288
  br label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments13get_arg_stdin.exit

bb.ae:                                            ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4310)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !4310, !noalias !4309, !noundef !9
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !alias.scope !4310, !noalias !4309, !nonnull !9, !align !30, !noundef !9 ; 2 uses
  %i.cz = load i64, ptr %i.cy, align 8, !noalias !4311, !noundef !9 ; 3 uses
  %i.da = icmp ult i64 %i.cz, %i.cw
  br i1 %i.da, label %bb.af, label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments12get_arg_argv.exit

bb.af:                                            ; preds = %bb.ae
  %i.db = add nuw i64 %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !4310, !noalias !4309, !nonnull !9, !align !30, !noundef !9
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.cz ; 2 uses
  store i64 %i.db, ptr %i.cy, align 8, !noalias !4311
  %i.df = load ptr, ptr %i.de, align 8, !noalias !4311, !nonnull !9, !align !16, !noundef !9
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !noalias !4311, !noundef !9
  %.sroa.02.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.df, ptr %.sroa.02.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4309, !noalias !4310
  %.sroa.02.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dh, ptr %.sroa.02.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4309, !noalias !4310
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !4309, !noalias !4310
  br label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments12get_arg_argv.exit

_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments12get_arg_argv.exit: ; preds = %bb.ae, %bb.af
  %.sink.i = phi i64 [ -1, %bb.af ], [ -2, %bb.ae ]
  store i64 %.sink.i, ptr %0, align 8, !alias.scope !4309, !noalias !4310
  br label %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments13get_arg_stdin.exit

_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments13get_arg_stdin.exit: ; preds = %bb.ad, %bb.u, %bb.t, %bb.k, %_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments12get_arg_argv.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, -1) i32 @_RNvXs4_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !10, !noundef !9
  ret i32 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -1, 3) i8 @_RNvXs4_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_12ColorEnabledINtNtCs3oUPovFnLWP_4core7convert7TryFromRNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrE8try_from(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 3 uses
  %i.b = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull @706, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @706, i64 4))
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull @707, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @707, i64 6))
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef zeroext i1 @_RINvYNtNtNtCslLGyqsphxMB_10widestring6utfstr4iter10CharsUtf32NtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator5eq_byNtNtNtB15_3str4iter5CharsNCINvYB3_BX_2eqB1Y_E0ECs8frGy5WneL6_4fish(ptr noundef nonnull readonly align 4 %0, ptr noundef nonnull readonly %i.a, ptr noundef nonnull @708, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @708, i64 5))
  %. = select i1 %i.d, i8 2, i8 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ 1, %bb.b ], [ %., %bb.c ], [ 0, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read11read_to_end(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read13read_vectored(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 %1, i64 noundef %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read14read_to_string(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read14read_to_string(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_RNvXs5_NtCs8frGy5WneL6_4fish3fdsNtB5_14BorrowedFdFileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i64, ptr } @_RNvXsa_NtCsaL1QbXo9JQH_3std2fsNtB5_4FileNtNtNtCs1xwejQucwHj_5alloc2io4read4Read4read(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %0, ptr noalias nofree noundef nonnull %1, i64 noundef %2)
  ret { i64, ptr } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @710, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @709)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs5_NtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtNtCs8frGy5WneL6_4fish3fds14BorrowedFdFileENtNtB9_8buf_read7BufRead7consumeB1b_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !9
  %i.c = add i64 %i.b, %1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !9
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.c)
  store i64 %..i, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
end_hunk_0
