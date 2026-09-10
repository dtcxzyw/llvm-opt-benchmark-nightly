Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.10?download=true
inline.NumInlined: 125
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_xShEB6_:bb.a
bb.o:                                             ; preds = %.thread51, %bb.m, %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit
  ret void

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.l
  %.sroa.033.0 = phi i8 [ %i.p, %bb.n ], [ %i.n, %bb.l ], [ %i.k, %bb.i ]
  br i1 %.not55, label %bb.q, label %_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit, !prof !5

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 0, -9223372036854775808) 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17, !noalias !36
  unreachable

_RNvXs5_NtNtCsj6eKBz9Db1c_4core5slice5indexINtNtNtB9_3ops5range9RangeFromjEINtB5_10SliceIndexShE5indexCsgbWeKYPjk8w_3syn.exit: ; preds = %bb.p
  %i.q = add nuw i8 %.sroa.033.0, %i.j
  %i.r = add nsw i64 %2, -2
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.q, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtCsgbWeKYPjk8w_3syn3lit5value11backslash_xeEB6_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread51, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !4    ; 5 uses
  %.not55 = icmp eq i64 %2, 1
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !noundef !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.023.0 = phi i8 [ %i.c, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %i.d = add i8 %i.a, -48                         ; 2 uses
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = add i8 %i.a, -97
  %or.cond3 = icmp ult i8 %i.e, 6
  br i1 %or.cond3, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = add i8 %i.a, -65
  %or.cond5 = icmp ult i8 %i.f, 6
  br i1 %or.cond5, label %bb.h, label %.thread51

bb.g:                                             ; preds = %bb.e
  %i.g = add nsw i8 %i.a, -87
  br label %bb.i

.thread51:                                        ; preds = %bb.a, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.h, align 8
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.i = add nsw i8 %i.a, -55
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.g
  %.sroa.032.0 = phi i8 [ %i.i, %bb.h ], [ %i.g, %bb.g ], [ %i.d, %bb.d ]
  %i.j = shl nuw i8 %.sroa.032.0, 4
  %i.k = add i8 %.sroa.023.0, -48                 ; 2 uses
  %or.cond7 = icmp ult i8 %i.k, 10
  br i1 %or.cond7, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.l = add i8 %.sroa.023.0, -97
  %or.cond9 = icmp ult i8 %i.l, 6
  br i1 %or.cond9, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = add i8 %.sroa.023.0, -65
  %or.cond11 = icmp ult i8 %i.m, 6
  br i1 %or.cond11, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.n = add nsw i8 %.sroa.023.0, -87
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.o, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.p = add nsw i8 %.sroa.023.0, -55
  br label %bb.p

bb.o:                                             ; preds = %.thread51, %bb.m, %_RNvXs2_NtNtCsj6eKBz9Db1c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsgbWeKYPjk8w_3syn.exit
  ret void

bb.p:                                             ; preds = %bb.i, %bb.n, %bb.l
  %.sroa.033.0 = phi i8 [ %i.p, %bb.n ], [ %i.n, %bb.l ], [ %i.k, %bb.i ]
  %i.q = add nuw i8 %.sroa.033.0, %i.j
  %.not.i.i.i = icmp ugt i64 %2, 2
  br i1 %.not.i.i.i, label %bb.q, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.p
  %i.r = icmp eq i64 %2, 2
  br i1 %i.r, label %_RNvXs2_NtNtCsj6eKBz9Db1c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsgbWeKYPjk8w_3syn.exit, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !45, !noalias !46, !noundef !4
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %_RNvXs2_NtNtCsj6eKBz9Db1c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsgbWeKYPjk8w_3syn.exit, label %bb.r

bb.r:                                             ; preds = %bb.q, %.split.i.i.i
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef range(i64 1, 3) 2, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #17
  unreachable

_RNvXs2_NtNtCsj6eKBz9Db1c_4core3str6traitseINtNtNtB9_3ops5index5IndexINtNtBJ_5range9RangeFromjEE5indexCsgbWeKYPjk8w_3syn.exit: ; preds = %.split.i.i.i, %bb.q
  %i.v = add i64 %2, -2
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.q, ptr %0, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %.sroa.435.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh11starts_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsj6eKBz9Db1c_4core5sliceSh9ends_withCsgbWeKYPjk8w_3syn(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %i.a = sub nuw nsw i64 %1, %3
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %i.b, i64 range(i64 0, -9223372036854775808) %3)
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden { i64, i64 } @_RNvMsd_NtNtCsj6eKBz9Db1c_4core3ops5rangeINtB5_5BoundRjE6clonedCsgbWeKYPjk8w_3syn(i64 noundef range(i64 0, 3) %0, ptr nofree readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 2
  br i1 %i.a, label %bb.b, label %.sink.split

.sink.split:                                      ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = load i64, ptr %1, align 8, !noundef !4
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.sink.split
  %.sroa.4.0 = phi i64 [ undef, %bb.a ], [ %i.b, %.sink.split ]
  %i.c = insertvalue { i64, i64 } poison, i64 %0, 0
  %i.d = insertvalue { i64, i64 } %i.c, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsgbWeKYPjk8w_3syn3lit5value13parse_lit_int(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 22 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.thread225, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %1, align 1, !noundef !4    ; 2 uses
  %i.g = icmp eq i8 %i.f, 45                      ; 2 uses
  br i1 %i.g, label %bb.c, label %.thread214

bb.c:                                             ; preds = %bb.b
  %.not.i.not = icmp eq i64 %2, 1
  br i1 %.not.i.not, label %.thread225, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !66, !noundef !4 ; 2 uses
  %i.j = icmp sgt i8 %i.i, -65
  br i1 %i.j, label %thread-pre-split, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i64 noundef 1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #17
  unreachable

thread-pre-split:                                 ; preds = %bb.d
  %3 = add i64 %2, -1
  br label %.thread214

.thread214:                                       ; preds = %bb.b, %thread-pre-split
  %i.k = phi i8 [ %i.i, %thread-pre-split ], [ %i.f, %bb.b ] ; 2 uses
  %.sroa.0.0221 = phi ptr [ %i.h, %thread-pre-split ], [ %1, %bb.b ] ; 9 uses
  %.sroa.34.0220 = phi i64 [ %3, %thread-pre-split ], [ %2, %bb.b ] ; 15 uses
  %.not147 = icmp eq i64 %.sroa.34.0220, 1
  br i1 %.not147, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.h
  %i.l = add i8 %i.k, -48
  %or.cond = icmp ult i8 %i.l, 10
  br i1 %or.cond, label %.lr.ph.lr.ph.thread, label %.thread225

bb.g:                                             ; preds = %.thread214
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0221, i64 1
  %i.n = load i8, ptr %i.m, align 1, !noundef !4
  br label %bb.h

bb.h:                                             ; preds = %.thread214, %bb.g
  %.sroa.075.0 = phi i8 [ %i.n, %bb.g ], [ 0, %.thread214 ]
  %i.o = icmp eq i8 %i.k, 48
  br i1 %i.o, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  switch i8 %.sroa.075.0, label %.lr.ph.lr.ph.thread [
    i8 120, label %bb.j
    i8 111, label %bb.l
    i8 98, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %.not.i161 = icmp ugt i64 %.sroa.34.0220, 2
  br i1 %.not.i161, label %bb.k, label %.split.i162

.split.i162:                                      ; preds = %bb.j
  %i.p = icmp eq i64 %.sroa.34.0220, 2
  br i1 %i.p, label %.thread231, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0221, i64 2
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !67, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %.thread231, label %bb.p

bb.l:                                             ; preds = %bb.i
  %.not.i166 = icmp ugt i64 %.sroa.34.0220, 2
  br i1 %.not.i166, label %bb.m, label %.split.i167

.split.i167:                                      ; preds = %bb.l
  %i.t = icmp eq i64 %.sroa.34.0220, 2
  br i1 %i.t, label %.thread231, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0221, i64 2
  %i.v = load i8, ptr %i.u, align 1, !alias.scope !68, !noundef !4
  %i.w = icmp sgt i8 %i.v, -65
  br i1 %i.w, label %.thread231, label %bb.aa

bb.n:                                             ; preds = %bb.i
  %.not.i171 = icmp ugt i64 %.sroa.34.0220, 2
  br i1 %.not.i171, label %bb.o, label %.split.i172

.split.i172:                                      ; preds = %bb.n
  %i.x = icmp eq i64 %.sroa.34.0220, 2
  br i1 %i.x, label %.thread231, label %bb.ab

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0221, i64 2
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !69, !noundef !4
  %i.aa = icmp sgt i8 %i.z, -65
  br i1 %i.aa, label %.thread231, label %bb.ab

bb.p:                                             ; preds = %bb.k, %.split.i162
  tail call void @_RNvNtCsj6eKBz9Db1c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0221, i64 noundef %.sroa.34.0220, i64 noundef 2, i64 noundef %.sroa.34.0220, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #17
  unreachable

.lr.ph.lr.ph.thread:                              ; preds = %bb.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4123.0..sroa_idx585 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4123.0..sroa_idx585, align 8
  %.sroa.5124.0..sroa_idx586 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5124.0..sroa_idx586, align 8
  br label %.lr.ph.preheader

.thread231:                                       ; preds = %.split.i162, %bb.k, %.split.i172, %bb.o, %.split.i167, %bb.m
  %i.ab = phi i1 [ false, %.split.i167 ], [ false, %.split.i172 ], [ false, %bb.m ], [ false, %bb.o ], [ true, %bb.k ], [ true, %.split.i162 ]
  %.sroa.065.0 = phi i8 [ 8, %.split.i167 ], [ 2, %.split.i172 ], [ 8, %bb.m ], [ 2, %bb.o ], [ 16, %bb.k ], [ 16, %.split.i162 ] ; 3 uses
  %i.ac = add i64 %.sroa.34.0220, -2              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4123.0..sroa_idx, align 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5124.0..sroa_idx, align 8
  %.not151384395 = icmp eq i64 %i.ac, 0
  br i1 %.not151384395, label %.split435.us, label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.thread231
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0221, i64 2 ; 2 uses
  br i1 %i.ab, label %.lr.ph.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.lr.ph.thread, %.lr.ph.lr.ph
  %i.ae = phi i1 [ true, %.lr.ph.lr.ph.thread ], [ false, %.lr.ph.lr.ph ] ; 3 uses
  %.sroa.065.0588596 = phi i8 [ 10, %.lr.ph.lr.ph.thread ], [ %.sroa.065.0, %.lr.ph.lr.ph ] ; 2 uses
  %.sroa.34.1589595 = phi i64 [ %.sroa.34.0220, %.lr.ph.lr.ph.thread ], [ %i.ac, %.lr.ph.lr.ph ]
  %.sroa.0.1590594 = phi ptr [ %.sroa.0.0221, %.lr.ph.lr.ph.thread ], [ %i.ad, %.lr.ph.lr.ph ]
  br label %.lr.ph

.lr.ph.us:                                        ; preds = %.lr.ph.lr.ph, %.split.i195.us
  %.sroa.0.2.ph398.us = phi ptr [ %i.av, %.split.i195.us ], [ %i.ad, %.lr.ph.lr.ph ] ; 4 uses
  %.sroa.34.2.ph397.us = phi i64 [ %i.au, %.split.i195.us ], [ %i.ac, %.lr.ph.lr.ph ] ; 3 uses
  %.sroa.079.0.ph396.us = phi i8 [ 1, %.split.i195.us ], [ 0, %.lr.ph.lr.ph ] ; 5 uses
  %.pr607 = load i8, ptr %.sroa.0.2.ph398.us, align 1 ; 2 uses
  %i.af = add i8 %.pr607, -48                     ; 2 uses
  %or.cond3.us856 = icmp ult i8 %i.af, 10
  br i1 %or.cond3.us856, label %.loopexit303.us, label %.lr.ph859

.lr.ph859:                                        ; preds = %.lr.ph.us, %.split.i177.us
  %.sroa.34.2385.us858 = phi i64 [ %i.am, %.split.i177.us ], [ %.sroa.34.2.ph397.us, %.lr.ph.us ] ; 9 uses
  %.sroa.0.2386.us857 = phi ptr [ %i.an, %.split.i177.us ], [ %.sroa.0.2.ph398.us, %.lr.ph.us ] ; 9 uses
  %i.ag = phi i8 [ %i.ak, %.split.i177.us ], [ %.pr607, %.lr.ph.us ] ; 5 uses
  %i.ah = add i8 %i.ag, -97
  %or.cond5.us = icmp ult i8 %i.ah, 6
  br i1 %or.cond5.us, label %bb.v, label %bb.q

bb.q:                                             ; preds = %.lr.ph859
  %i.ai = add i8 %i.ag, -65
  %or.cond7.us = icmp ult i8 %i.ai, 6
  br i1 %or.cond7.us, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i8 %i.ag, label %.thread261 [
    i8 95, label %bb.s
    i8 46, label %.split.us
    i8 101, label %.loopexit300
    i8 69, label %.loopexit301
  ]

bb.s:                                             ; preds = %bb.r
  %.not.i176.not.us = icmp eq i64 %.sroa.34.2385.us858, 1
  br i1 %.not.i176.not.us, label %.thread261.thread.loopexit613, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us857, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !4 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %.split.i177.us, label %.split420.us.invoke

.split.i177.us:                                   ; preds = %bb.t
  %i.am = add i64 %.sroa.34.2385.us858, -1        ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us857, i64 1 ; 2 uses
  %i.ao = add i8 %i.ak, -48                       ; 2 uses
  %or.cond3.us = icmp ult i8 %i.ao, 10
  br i1 %or.cond3.us, label %.loopexit303.us, label %.lr.ph859

bb.u:                                             ; preds = %bb.q
  %i.ap = add nsw i8 %i.ag, -55
  br label %.loopexit303.us

bb.v:                                             ; preds = %.lr.ph859
  %i.aq = add nsw i8 %i.ag, -87
  br label %.loopexit303.us

.loopexit303.us:                                  ; preds = %.split.i177.us, %.lr.ph.us, %bb.v, %bb.u
  %.sroa.0.2386.us816 = phi ptr [ %.sroa.0.2386.us857, %bb.u ], [ %.sroa.0.2386.us857, %bb.v ], [ %.sroa.0.2.ph398.us, %.lr.ph.us ], [ %i.an, %.split.i177.us ] ; 3 uses
  %.sroa.34.2385.us804 = phi i64 [ %.sroa.34.2385.us858, %bb.u ], [ %.sroa.34.2385.us858, %bb.v ], [ %.sroa.34.2.ph397.us, %.lr.ph.us ], [ %i.am, %.split.i177.us ] ; 3 uses
  %.sroa.091.0.us = phi i8 [ %i.ap, %bb.u ], [ %i.aq, %bb.v ], [ %i.af, %.lr.ph.us ], [ %i.ao, %.split.i177.us ] ; 2 uses
  %.not156.us = icmp ult i8 %.sroa.091.0.us, %.sroa.065.0
  br i1 %.not156.us, label %bb.w, label %.split435.us

bb.w:                                             ; preds = %.loopexit303.us
  invoke void @_RNvXs0_NtCsgbWeKYPjk8w_3syn6bigintNtB5_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9MulAssignhE10mul_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.065.0)
          to label %bb.x unwind label %.loopexit302.split.us

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvXs_NtCsgbWeKYPjk8w_3syn6bigintNtB4_6BigIntINtNtNtCsj6eKBz9Db1c_4core3ops5arith9AddAssignhE10add_assign(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i8 noundef %.sroa.091.0.us)
          to label %bb.y unwind label %.loopexit302.split.us

bb.y:                                             ; preds = %bb.x
  %.not.i194.not.us = icmp eq i64 %.sroa.34.2385.us804, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us816, i64 1 ; 2 uses
  br i1 %.not.i194.not.us, label %.thread287, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !70, !noundef !4
  %i.at = icmp sgt i8 %i.as, -65
  br i1 %i.at, label %.split.i195.us, label %.split420.us.invoke

.split.i195.us:                                   ; preds = %bb.z
  %i.au = add i64 %.sroa.34.2385.us804, -1
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.0.2386.us816, i64 1
  br label %.lr.ph.us

.loopexit302.split.us:                            ; preds = %bb.x, %bb.w
  %lpad.loopexit.us = landingpad { ptr, i32 }
          cleanup
  br label %.thread288

.lr.ph:                                           ; preds = %.split.i195, %.lr.ph.preheader
  %.sroa.0.2.ph398 = phi ptr [ %i.dq, %.split.i195 ], [ %.sroa.0.1590594, %.lr.ph.preheader ] ; 4 uses
end_hunk_0
