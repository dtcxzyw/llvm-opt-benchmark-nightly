Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ring-rs/original/shlex-f6eb8cb6e5fa1965.shlex.6989f7ba4e1d8ee9-cgu.0?download=true
inline.NumInlined: 134
inline.NumDeleted: 23
begin_hunk_0_@_RNvCs93MrfdkTAtF_5shlex5split:bb.a

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.d
  ret void

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  call void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECs93MrfdkTAtF_5shlex(ptr nonnull align 8 %i.a)
  br label %bb.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCs93MrfdkTAtF_5shlex9try_quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr %1, i64 %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [1 x i8], align 1                 ; 2 uses
  store i8 0, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull readonly %i.b, ptr %1, i64 %2)
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %i.d = icmp eq i64 %i.c, -2
  br i1 %i.d, label %_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.318.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.318.0.copyload.i = load ptr, ptr %.sroa.318.0..sroa_idx.i, align 8
  %.sroa.419.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.419.0.copyload.i = load i64, ptr %.sroa.419.0..sroa_idx.i, align 8
  %.sroa.3.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.318.0.copyload.i, ptr %.sroa.3.0..sroa_idx9.i, align 8
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.419.0.copyload.i, ptr %.sroa.4.0..sroa_idx13.i, align 8
  br label %_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote.exit

_RNvMs4_Cs93MrfdkTAtF_5shlexNtB5_6Quoter5quote.exit: ; preds = %bb.a, %bb.b
  store i64 %i.c, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMCs93MrfdkTAtF_5shlexNtB2_5Shlex3new(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs1xwejQucwHj_5alloc3vecINtB2_3VechE3newCs93MrfdkTAtF_5shlex(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 24)) %0) unnamed_addr #5 {
bb.a:
  store i64 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh18split_at_uncheckedCs93MrfdkTAtF_5shlex(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr %1, i64 %2, i64 %3, ptr nofree readnone align 8 captures(none) %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @_RNvMNtCs3oUPovFnLWP_4core5sliceSh4iterCs93MrfdkTAtF_5shlex(ptr %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.b = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.c = insertvalue { ptr, ptr } %i.b, ptr %i.a, 1
  ret { ptr, ptr } %i.c
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8is_emptyCs93MrfdkTAtF_5shlex(ptr nofree readnone captures(none) %0, i64 %1) unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RNvMNtCs3oUPovFnLWP_4core5sliceSh8split_atCs93MrfdkTAtF_5shlex(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #3 {
bb.a:
  %.not = icmp ugt i64 %3, %2
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @2, ptr nonnull inttoptr (i64 19 to ptr), ptr align 8 %4) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %3
  %i.b = sub nuw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.23.0..sroa_idx, align 8
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %.sroa.34.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %.sroa.45.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define void @_RNvMNtCs93MrfdkTAtF_5shlex5bytesNtB2_5Shlex3new(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 25)) %0, ptr %1, i64 %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  store ptr %1, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.d, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB5_6Quoter5quote(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr nofree readonly captures(none) %1, ptr %2, i64 %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 24 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit, label %.lr.ph

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @10, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 2, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %3
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %i.f = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.e
  br i1 %.not.not.not.i.not, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit, label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d
  %i.g = phi ptr [ %2, %.lr.ph ], [ %i.f, %bb.d ] ; 2 uses
  %.val.i = load i8, ptr %i.g, align 1
  %i.h = icmp eq i8 %.val.i, 0
  br i1 %i.h, label %bb.f, label %bb.d

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit: ; preds = %bb.d, %bb.b
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 9 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 13 uses
  store i64 0, ptr %i.j, align 8
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  store i64 -2, ptr %0, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.ao, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VechEECs93MrfdkTAtF_5shlex.exit, %bb.f, %bb.c
  ret void

bb.h:                                             ; preds = %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit
  %i.k = phi i64 [ 0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit ], [ %.sink, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit ]
  %.sroa.0.081 = phi ptr [ %2, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit ], [ %i.ck, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit ] ; 9 uses
  %.sroa.10.079 = phi i64 [ %3, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs0_NtCs93MrfdkTAtF_5shlex5bytesNtB1J_6Quoter5quote0EB1L_.exit ], [ %i.cl, %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit ] ; 10 uses
  %i.l = load i8, ptr %.sroa.0.081, align 1
  %i.m = icmp eq i8 %i.l, 94                      ; 2 uses
  %spec.select.i = zext i1 %i.m to i64            ; 2 uses
  %spec.select20.i = select i1 %i.m, i8 2, i8 7   ; 3 uses
  %i.n = icmp ugt i64 %.sroa.10.079, %spec.select.i
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.10.079, %bb.m ], [ %.sroa.04.026.i, %bb.l ] ; 3 uses
  %.sroa.0.0.lcssa.i = phi i8 [ %.sroa.08.2.i, %bb.m ], [ %.sroa.0.027.i, %bb.l ] ; 2 uses
  %4 = trunc i8 %.sroa.0.0.lcssa.i to i1
  br i1 %4, label %.thread, label %bb.n

._crit_edge.i.thread:                             ; preds = %bb.h
  %5 = trunc i8 %spec.select20.i to i1
  br i1 %5, label %.thread.thread, label %bb.n

.lr.ph.i:                                         ; preds = %bb.h, %bb.m
  %.sroa.0.027.i = phi i8 [ %.sroa.08.2.i, %bb.m ], [ %spec.select20.i, %bb.h ] ; 4 uses
  %.sroa.04.026.i = phi i64 [ %i.aa, %bb.m ], [ %spec.select.i, %bb.h ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.026.i
  %i.p = load i8, ptr %i.o, align 1               ; 4 uses
  %i.q = icmp slt i8 %i.p, 0
  br i1 %i.q, label %bb.k, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i
  %i.r = zext nneg i8 %i.p to i128
  %i.s = lshr i128 10633823859816483586817443131232878592, %i.r
  %i.t = trunc i128 %i.s to i1
  %i.u = and i8 %.sroa.0.027.i, -2
  %spec.select21.i = select i1 %i.t, i8 %.sroa.0.027.i, i8 %i.u ; 2 uses
  switch i8 %i.p, label %bb.j [
    i8 39, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i
    i8 94, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i
    i8 92, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i
  ]

_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i: ; preds = %bb.i, %bb.i, %bb.i
  %i.v = and i8 %spec.select21.i, -3
  br label %bb.j

bb.j:                                             ; preds = %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i, %bb.i
  %i.w = phi i8 [ %i.v, %_RNvNtCs93MrfdkTAtF_5shlex5bytes16single_quoted_ok.exit.i ], [ %spec.select21.i, %bb.i ] ; 2 uses
  switch i8 %i.p, label %bb.l [
    i8 96, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
    i8 36, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
    i8 33, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
    i8 94, label %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i
  ]

_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i: ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.x = and i8 %i.w, -5
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.y = and i8 %.sroa.0.027.i, -2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i, %bb.j
  %.sroa.08.2.i = phi i8 [ %i.y, %bb.k ], [ %i.x, %_RNvNtCs93MrfdkTAtF_5shlex5bytes16double_quoted_ok.exit.i ], [ %i.w, %bb.j ] ; 3 uses
  %i.z = icmp eq i8 %.sroa.08.2.i, 0
  br i1 %i.z, label %._crit_edge.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = add i64 %.sroa.04.026.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.aa, %.sroa.10.079
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.n:                                             ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %.sroa.0.0.lcssa.i55 = phi i8 [ %spec.select20.i, %._crit_edge.i.thread ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.04.0.lcssa.i53 = phi i64 [ 1, %._crit_edge.i.thread ], [ %.sroa.04.0.lcssa.i, %._crit_edge.i ] ; 15 uses
  %i.ab = and i8 %.sroa.0.0.lcssa.i55, 2
  %.not18.i = icmp eq i8 %i.ab, 0
  br i1 %.not18.i, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ac = and i8 %.sroa.0.0.lcssa.i55, 4
  %.not19.i = icmp eq i8 %i.ac, 0
  br i1 %.not19.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @11, i64 40, ptr nonnull align 8 @12) #23
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.p
  unreachable

.thread:                                          ; preds = %._crit_edge.i
  %i.ad = icmp eq i64 %.sroa.04.0.lcssa.i, %.sroa.10.079
  br i1 %i.ad, label %.thread.thread, label %bb.s

bb.q:                                             ; preds = %bb.n
  %.not.i18.jt1 = icmp ugt i64 %.sroa.04.0.lcssa.i53, %.sroa.10.079
  br i1 %.not.i18.jt1, label %.loopexit107.a, label %bb.t

bb.r:                                             ; preds = %bb.o
  %.not.i18.jt2 = icmp ugt i64 %.sroa.04.0.lcssa.i53, %.sroa.10.079
  br i1 %.not.i18.jt2, label %.loopexit107.a, label %bb.u

bb.s:                                             ; preds = %.thread.thread, %.thread
  %.sroa.04.0.lcssa.i54.jt0 = phi i64 [ %.sroa.04.0.lcssa.i, %.thread ], [ %.sroa.04.0.lcssa.i5257, %.thread.thread ] ; 7 uses
  %.not.i18.jt0 = icmp ugt i64 %.sroa.04.0.lcssa.i54.jt0, %.sroa.10.079
  br i1 %.not.i18.jt0, label %.loopexit107.a, label %bb.v

.loopexit107.a:                                   ; preds = %bb.q, %bb.r, %bb.s
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr nonnull @2, ptr nonnull inttoptr (i64 19 to ptr), ptr nonnull align 8 @7) #23
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %.loopexit107.a
  unreachable

.thread.thread:                                   ; preds = %._crit_edge.i.thread, %.thread
  %.sroa.04.0.lcssa.i5257 = phi i64 [ %.sroa.10.079, %.thread ], [ 1, %._crit_edge.i.thread ]
  %i.ae = icmp eq i64 %i.k, 0
  br i1 %i.ae, label %bb.al, label %bb.s

bb.t:                                             ; preds = %bb.q
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.0.lcssa.i53
  %.not.jt1 = icmp eq i64 %.sroa.04.0.lcssa.i53, 0
  br i1 %.not.jt1, label %.loopexit108, label %bb.x

bb.u:                                             ; preds = %bb.r
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.0.lcssa.i53 ; 2 uses
  %.not.jt2 = icmp eq i64 %.sroa.04.0.lcssa.i53, 0
  br i1 %.not.jt2, label %.loopexit108, label %bb.y

bb.v:                                             ; preds = %bb.s
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 %.sroa.04.0.lcssa.i54.jt0
  %.not.jt0 = icmp eq i64 %.sroa.04.0.lcssa.i54.jt0, 0
  br i1 %.not.jt0, label %.loopexit108, label %bb.w

.loopexit108:                                     ; preds = %bb.t, %bb.u, %bb.v
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr nonnull @8, i64 45, ptr nonnull align 8 @9) #24
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %bb.v
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %.sroa.04.0.lcssa.i54.jt0)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit

.noexc21:                                         ; preds = %bb.w
  %i.ai = load i64, ptr %i.j, align 8
  %i.aj = load ptr, ptr %i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ak, ptr nonnull readonly align 1 %.sroa.0.081, i64 %.sroa.04.0.lcssa.i54.jt0, i1 false)
  %i.al = load i64, ptr %i.j, align 8
  %i.am = add i64 %i.al, %.sroa.04.0.lcssa.i54.jt0
  br label %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit

bb.x:                                             ; preds = %bb.t
  %i.an = icmp ugt i64 %.sroa.04.0.lcssa.i53, -3
  br i1 %i.an, label %.invoke, label %bb.z

bb.y:                                             ; preds = %bb.u
  %i.ao = icmp ugt i64 %.sroa.04.0.lcssa.i53, -3
  br i1 %i.ao, label %.invoke, label %bb.ac

bb.z:                                             ; preds = %bb.x
  %i.ap = add nuw i64 %.sroa.04.0.lcssa.i53, 2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %i.ap)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit

.noexc22:                                         ; preds = %bb.z
  %i.aq = load i64, ptr %i.j, align 8             ; 3 uses
  %i.ar = load i64, ptr %i.a, align 8
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.aa, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i

bb.aa:                                            ; preds = %.noexc22
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i unwind label %.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i: ; preds = %bb.aa, %.noexc22
  %i.at = load ptr, ptr %i.i, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.aq
  store i8 39, ptr %i.au, align 1
  %i.av = add i64 %i.aq, 1
  store i64 %i.av, ptr %i.j, align 8
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %.sroa.04.0.lcssa.i53)
          to label %.noexc24 unwind label %.loopexit.split-lp.loopexit

.noexc24:                                         ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit.i
  %i.aw = load i64, ptr %i.j, align 8
  %i.ax = load ptr, ptr %i.i, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr nonnull readonly align 1 %.sroa.0.081, i64 %.sroa.04.0.lcssa.i53, i1 false)
  %i.az = load i64, ptr %i.j, align 8
  %i.ba = add i64 %i.az, %.sroa.04.0.lcssa.i53    ; 4 uses
  store i64 %i.ba, ptr %i.j, align 8
  %i.bb = load i64, ptr %i.a, align 8
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.ab, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i

bb.ab:                                            ; preds = %.noexc24
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr nonnull align 8 %i.a) #25
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i unwind label %.loopexit.split-lp.loopexit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE4pushCs93MrfdkTAtF_5shlex.exit6.i: ; preds = %bb.ab, %.noexc24
  %i.bd = load ptr, ptr %i.i, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ba
  store i8 39, ptr %i.be, align 1
  %i.bf = add i64 %i.ba, 1
  br label %_RNvNtCs93MrfdkTAtF_5shlex5bytes19append_quoted_chunk.exit

.invoke:                                          ; preds = %bb.y, %bb.x
  %i.bg = phi ptr [ @13, %bb.x ], [ @14, %bb.y ]
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const24panic_const_add_overflow(ptr nonnull align 8 %i.bg) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.ac:                                            ; preds = %bb.y
  %i.bh = add nuw i64 %.sroa.04.0.lcssa.i53, 2
  invoke void @_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VechE7reserveCs1OFHugREOcC_9addr2line(ptr nonnull align 8 %i.a, i64 %i.bh)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit

end_hunk_0
