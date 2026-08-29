Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE8grow_oneCsl4q486LaARA_9typst_svg:bb.a
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7259, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7259
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7259, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7259
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7259
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7259
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefEE8grow_oneB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !366, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7262)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7262
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7262
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 128), !noalias !7262
  %i.f = load i64, ptr %i.a, align 8, !range !2221, !noalias !7262, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7262, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7262
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7262
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7262, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7262
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7262
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7262
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsl4q486LaARA_9typst_svg5paint14SVGSubGradientEE8grow_oneB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !366, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7265)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7265
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7265
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 112), !noalias !7265
  %i.f = load i64, ptr %i.a, align 8, !range !2221, !noalias !7265, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7265, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7265
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7265, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7265
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7265
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7265
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsl4q486LaARA_9typst_svg5paint9TilingRefEE8grow_oneB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !366, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7268)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7268
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7268
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 112), !noalias !7268
  %i.f = load i64, ptr %i.a, align 8, !range !2221, !noalias !7268, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7268, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7268
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7268, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7268
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7268
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7268
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE8grow_oneCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !366, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7271)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7271
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7271
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 32), !noalias !7271
  %i.f = load i64, ptr %i.a, align 8, !range !2221, !noalias !7271, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7271, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7271
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7271, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7271
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7271
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7271
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoTNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientNtNtNtB1r_6layout5ratio5RatioEEE8grow_oneCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !366, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7274)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7274
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !7274
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 16, i64 noundef 48), !noalias !7274
  %i.f = load i64, ptr %i.a, align 8, !range !2221, !noalias !7274, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !2222, !noalias !7274, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !7274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7274
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #36
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !7274, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7274
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !7274
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !7274
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 17) %2, i64 noundef range(i64 1, 193) %3) unnamed_addr #8 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1)
  %4 = mul nuw i64 %3, %1                         ; 5 uses
  %i.b = extractvalue { i64, i1 } %i.a, 1
  %i.c = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %4, %i.c
  %or.cond = select i1 %i.b, i1 true, i1 %.not, !prof !20
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %.0.val, 0
  br i1 %i.d, label %bb.c, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.e = mul nuw i64 %3, %.0.val
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = icmp uge i64 %1, %.0.val
  tail call void @llvm.assume(i1 %i.f)
  %i.g = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.e, i64 noundef range(i64 1, 17) %2, i64 noundef range(i64 0, -9223372036854775808) %4) #31
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %1, 0
  br i1 %i.h, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.i = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31
  %i.j = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %4, i64 noundef range(i64 1, 17) %2) #31
  br label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.g, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator4grow.exit ], [ %i.j, %bb.d ] ; 2 uses
  %i.k = icmp eq ptr %.pn8, null
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.i, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %4, %bb.e ], [ %4, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.n, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE23write_zlib_encoded_idatCsl4q486LaARA_9typst_svg(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp eq i64 %3, 0
  br i1 %i.b, label %._crit_edge, label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11write_chunkCsl4q486LaARA_9typst_svg.exit

_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11write_chunkCsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.013 = phi ptr [ %i.d, %bb.d ], [ %2, %bb.a ] ; 2 uses
  %.sroa.6.012 = phi i64 [ %i.c, %bb.d ], [ %3, %bb.a ] ; 2 uses
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.6.012, i64 2147483647) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvNtCs75Nu06PSjCb_3png7encoder11write_chunkQQINtNtCs1xwejQucwHj_5alloc3vec3VechEECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(80) %1, i32 noundef 1413563465, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.013, i64 noundef range(i64 0, -9223372036854775808) %..i.i)
  %.pr = load i64, ptr %i.a, align 8
  %.not5 = icmp eq i64 %.pr, -1
  br i1 %.not5, label %bb.d, label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  store i64 -1, ptr %0, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %._crit_edge
  ret void

bb.c:                                             ; preds = %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11write_chunkCsl4q486LaARA_9typst_svg.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.b

bb.d:                                             ; preds = %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11write_chunkCsl4q486LaARA_9typst_svg.exit
  %i.c = sub nuw nsw i64 %.sroa.6.012, %..i.i     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.013, i64 %..i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %._crit_edge, label %_RNvMs7_NtCs75Nu06PSjCb_3png7encoderINtB5_6WriterQINtNtCs1xwejQucwHj_5alloc3vec3VechEE11write_chunkCsl4q486LaARA_9typst_svg.exit
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Csl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.13.0.copyload = load i64, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.23.0.copyload = load i64, ptr %.sroa.23.0..sroa_idx, align 8 ; 3 uses
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.32.0.copyload = load i64, ptr %.sroa.32.0..sroa_idx, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i64, ptr %i.a, align 8, !noundef !10
  %i.c = shl i64 %i.b, 56
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i64, ptr %i.d, align 8, !noundef !10
  %i.f = or i64 %i.c, %i.e                        ; 2 uses
  %i.g = xor i64 %i.f, %.sroa.32.0.copyload       ; 3 uses
  %i.h = add i64 %.sroa.23.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.i = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.23.0.copyload, i64 %.sroa.23.0.copyload, i64 13)
  %i.j = xor i64 %i.i, %i.h                       ; 3 uses
  %i.k = tail call noundef i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 32)
  %i.l = add i64 %i.g, %.sroa.13.0.copyload       ; 2 uses
  %i.m = tail call noundef i64 @llvm.fshl.i64(i64 %i.g, i64 %i.g, i64 16)
  %i.n = xor i64 %i.m, %i.l                       ; 3 uses
  %i.o = add i64 %i.n, %i.k                       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 21)
  %i.q = xor i64 %i.p, %i.o                       ; 3 uses
  %i.r = add i64 %i.l, %i.j                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.j, i64 %i.j, i64 17)
  %i.t = xor i64 %i.r, %i.s                       ; 3 uses
  %i.u = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 32)
  %i.v = xor i64 %i.o, %i.f
  %i.w = xor i64 %i.u, 238
  %i.x = add i64 %i.v, %i.t                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 13)
  %i.z = xor i64 %i.x, %i.y                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 32)
  %i.ab = add i64 %i.q, %i.w                      ; 2 uses
  %i.ac = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 16)
  %i.ad = xor i64 %i.ac, %i.ab                    ; 3 uses
  %i.ae = add i64 %i.ad, %i.aa                    ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 21)
  %i.ag = xor i64 %i.af, %i.ae                    ; 3 uses
  %i.ah = add i64 %i.z, %i.ab                     ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 17)
  %i.aj = xor i64 %i.ah, %i.ai                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 32)
  %i.al = add i64 %i.aj, %i.ae                    ; 3 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 13)
  %i.an = xor i64 %i.am, %i.al                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.ap = add i64 %i.ag, %i.ak                    ; 2 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 16)
  %i.ar = xor i64 %i.aq, %i.ap                    ; 3 uses
  %i.as = add i64 %i.ar, %i.ao                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 21)
  %i.au = xor i64 %i.at, %i.as                    ; 3 uses
  %i.av = add i64 %i.an, %i.ap                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 17)
  %i.ax = xor i64 %i.aw, %i.av                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 32)
  %i.az = add i64 %i.ax, %i.as                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 13)
  %i.bb = xor i64 %i.ba, %i.az                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 32)
  %i.bd = add i64 %i.au, %i.ay                    ; 2 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 16)
  %i.bf = xor i64 %i.be, %i.bd                    ; 3 uses
  %i.bg = add i64 %i.bf, %i.bc                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bf, i64 %i.bf, i64 21) ; 2 uses
  %i.bi = xor i64 %i.bh, %i.bg                    ; 3 uses
  %i.bj = add i64 %i.bb, %i.bd                    ; 3 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 17)
  %i.bl = xor i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 32) ; 2 uses
  %i.bn = xor i64 %i.bm, %i.bh
  %i.bo = xor i64 %i.bn, %i.bl
  %i.bp = xor i64 %i.bl, 221                      ; 3 uses
  %i.bq = add i64 %i.bp, %i.bg                    ; 3 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 13)
  %i.bs = xor i64 %i.br, %i.bq                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 32)
  %i.bu = add i64 %i.bi, %i.bm                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 16)
  %i.bw = xor i64 %i.bv, %i.bu                    ; 3 uses
  %i.bx = add i64 %i.bt, %i.bw                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 21)
  %i.bz = xor i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = add i64 %i.bs, %i.bu                    ; 3 uses
  %i.cb = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 17)
  %i.cc = xor i64 %i.ca, %i.cb                    ; 3 uses
  %i.cd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ca, i64 %i.ca, i64 32)
  %i.ce = add i64 %i.cc, %i.bx                    ; 3 uses
  %i.cf = tail call noundef i64 @llvm.fshl.i64(i64 %i.cc, i64 %i.cc, i64 13)
  %i.cg = xor i64 %i.cf, %i.ce                    ; 3 uses
  %i.ch = tail call noundef i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 32)
  %i.ci = add i64 %i.bz, %i.cd                    ; 2 uses
  %i.cj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bz, i64 %i.bz, i64 16)
  %i.ck = xor i64 %i.cj, %i.ci                    ; 3 uses
  %i.cl = add i64 %i.ck, %i.ch                    ; 2 uses
  %i.cm = tail call noundef i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 21)
  %i.cn = xor i64 %i.cm, %i.cl                    ; 3 uses
  %i.co = add i64 %i.cg, %i.ci                    ; 3 uses
  %i.cp = tail call noundef i64 @llvm.fshl.i64(i64 %i.cg, i64 %i.cg, i64 17)
  %i.cq = xor i64 %i.cp, %i.co                    ; 3 uses
  %i.cr = tail call noundef i64 @llvm.fshl.i64(i64 %i.co, i64 %i.co, i64 32)
  %i.cs = add i64 %i.cq, %i.cl
  %i.ct = tail call noundef i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 13)
  %i.cu = xor i64 %i.ct, %i.cs                    ; 3 uses
  %i.cv = add i64 %i.cn, %i.cr                    ; 2 uses
  %i.cw = tail call noundef i64 @llvm.fshl.i64(i64 %i.cn, i64 %i.cn, i64 16)
  %i.cx = xor i64 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call noundef i64 @llvm.fshl.i64(i64 %i.cx, i64 %i.cx, i64 21)
  %i.cz = add i64 %i.cu, %i.cv                    ; 3 uses
  %i.da = tail call noundef i64 @llvm.fshl.i64(i64 %i.cu, i64 %i.cu, i64 17)
  %i.db = tail call noundef i64 @llvm.fshl.i64(i64 %i.cz, i64 %i.cz, i64 32)
  %i.dc = xor i64 %i.cy, %i.da
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = xor i64 %i.dd, %i.cz
  %i.df = insertvalue { i64, i64 } poison, i64 %i.bo, 0
  %i.dg = insertvalue { i64, i64 } %i.df, i64 %i.de, 1
  ret { i64, i64 } %i.dg
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer11render_page(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(176) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_0
begin_hunk_1_@_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer8finalize:bb.a

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i
  %i.gr = add nuw nsw i64 %.val.i.i.i.i.i.i.i.i, 16
  store ptr %i.go, ptr %i.fd, align 8, !noalias !7809
  store i64 8, ptr %i.u, align 8, !noalias !7809
  store i64 %i.gr, ptr %i.fe, align 8, !noalias !7809
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.noexc7.i.i unwind label %.loopexit.i34, !noalias !7762

.noexc7.i.i:                                      ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !7809
  br label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit.i.i

bb.bh:                                            ; preds = %bb.bd
  %i.gs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7810
  unreachable

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit.i.i: ; preds = %.noexc7.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i.i.i, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !7789
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.noexc24.i unwind label %bb.au, !noalias !7762

.noexc24.i:                                       ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit.i.i
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @72, i64 noundef range(i64 1, 15) 4) #35
          to label %.noexc25.i unwind label %bb.au, !noalias !7762

.noexc25.i:                                       ; preds = %.noexc24.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7789
  store ptr @76, ptr %i.t, align 8, !noalias !7811
  store i64 4, ptr %i.ff, align 8, !noalias !7811
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t) #35
          to label %bb.bi unwind label %.loopexit11.i, !noalias !7762

.loopexit11.i:                                    ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i, %bb.bi, %.noexc25.i
  %lpad.loopexit13.i = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

.loopexit.split-lp12.i:                           ; preds = %bb.bn
  %lpad.loopexit.split-lp14.i = landingpad { ptr, i32 }
          cleanup
  br label %.body24.i.i

.body24.i.i:                                      ; preds = %bb.bk, %.loopexit.split-lp12.i, %.loopexit11.i
  %eh.lpad-body25.i.i = phi { ptr, i32 } [ %i.gu, %bb.bk ], [ %lpad.loopexit13.i, %.loopexit11.i ], [ %lpad.loopexit.split-lp14.i, %.loopexit.split-lp12.i ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.body.i31 unwind label %bb.bp, !noalias !7762

bb.bi:                                            ; preds = %.noexc25.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !7789
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7789
  %i.gt = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i27111, i64 24
  invoke void @_RNvMsz_NtNtCsdaEETE4DqmE_13typst_library9visualize5colorNtB5_5Color6to_hex(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.w, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.gt)
          to label %bb.bj unwind label %.loopexit11.i, !noalias !7762

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !7816)
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.w)
          to label %bb.bl unwind label %bb.bk, !noalias !7819

bb.bk:                                            ; preds = %bb.bj
  %i.gu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.w) #32
          to label %.body24.i.i unwind label %bb.bo, !noalias !7819

bb.bl:                                            ; preds = %bb.bj
  call void @llvm.experimental.noalias.scope.decl(metadata !7821)
  %.val.i.i12.i.i = load ptr, ptr %i.w, align 8, !alias.scope !7824, !noalias !7825 ; 4 uses
  %.val1.i.i13.i.i = load i8, ptr %i.fg, align 1, !alias.scope !7824, !noalias !7825, !noundef !10
  %.not.i.i.i.i14.i.i = icmp sgt i8 %.val1.i.i13.i.i, -1
  br i1 %.not.i.i.i.i14.i.i, label %bb.bm, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i12.i.i) ]
  %.not.i.i.i.i.i.i15.i.i = icmp eq ptr %.val.i.i12.i.i, inttoptr (i64 16 to ptr)
  %i.gv = getelementptr inbounds i8, ptr %.val.i.i12.i.i, i64 -16 ; 2 uses
  br i1 %.not.i.i.i.i.i.i15.i.i, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i: ; preds = %bb.bm
  %i.gw = atomicrmw sub ptr %i.gv, i64 1 release, align 8, !noalias !7827
  %.not.i.i.i.i.i17.i.i = icmp eq i64 %i.gw, 1
  br i1 %.not.i.i.i.i.i17.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i
  fence acquire
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !7828
  %i.gx = getelementptr i8, ptr %.val.i.i12.i.i, i64 -8
  %.val.i.i.i.i.i.i19.i.i = load i64, ptr %i.gx, align 8, !noalias !7827, !noundef !10 ; 2 uses
  %narrow.i.i.i.i.i.i.i20.i.i = icmp ult i64 %.val.i.i.i.i.i.i19.i.i, 9223372036854775783
  br i1 %narrow.i.i.i.i.i.i.i20.i.i, label %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i, label %bb.bn, !prof !359

bb.bn:                                            ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i
  invoke void @_RNvNtCsakL8LGkl72C_4ecow3vec17capacity_overflow() #36
          to label %.noexc22.i.i unwind label %.loopexit.split-lp12.i, !noalias !7762

.noexc22.i.i:                                     ; preds = %bb.bn
  unreachable

_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i: ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orjNCNvMBL_INtBL_6EcoVechE8capacity0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i18.i.i
  %i.gy = add nuw nsw i64 %.val.i.i.i.i.i.i19.i.i, 16
  store ptr %i.gv, ptr %i.fh, align 8, !noalias !7828
  store i64 8, ptr %i.s, align 8, !noalias !7828
  store i64 %i.gy, ptr %i.fi, align 8, !noalias !7828
  invoke void @_RNvXNvXs7_NtCsakL8LGkl72C_4ecow3vecINtB8_6EcoVecpENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropNtB2_7DeallocBM_4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc23.i.i unwind label %.loopexit11.i, !noalias !7762

.noexc23.i.i:                                     ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i21.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !7828
  br label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i

bb.bo:                                            ; preds = %bb.bk
  %i.gz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7829
  unreachable

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i: ; preds = %.noexc23.i.i, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionRNtNtCsakL8LGkl72C_4ecow3vec6HeaderE6map_orbNCNvXs7_BL_INtBL_6EcoVechENtNtNtB5_3ops4drop4Drop4drop0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i.i16.i.i, %bb.bm, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !7789
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RNCNvMNtCsl4q486LaARA_9typst_svg5paintNtB6_11SVGRenderer18write_subgradients0B6_.exit.i unwind label %bb.au, !noalias !7762

bb.bp:                                            ; preds = %.body24.i.i, %.body.i.i
  %i.ha = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7762
  unreachable

_RNCNvMNtCsl4q486LaARA_9typst_svg5paintNtB6_11SVGRenderer18write_subgradients0B6_.exit.i: ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtNtCsakL8LGkl72C_4ecow6string9EcoStringEB5_.exit26.i.i
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i unwind label %bb.ap, !noalias !7762

bb.bq:                                            ; preds = %.body.i31, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit20.i
  %i.hb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7762
  unreachable

_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer18write_subgradients.exit: ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer19write_gradient_refs.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !7830)
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.hd = load i64, ptr %i.hc, align 8, !alias.scope !7830, !noundef !10
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13write_tilings.exit, label %bb.br

bb.br:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer18write_subgradients.exit
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef range(i64 1, 15) 4) #35
          to label %.noexc53 unwind label %bb.x

.noexc53:                                         ; preds = %bb.br
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.hg = load ptr, ptr %i.hf, align 8, !alias.scope !7830, !nonnull !10, !noundef !10 ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.hi = load i64, ptr %i.hh, align 8, !alias.scope !7830, !noundef !10 ; 3 uses
  %.idx.i42 = shl nuw nsw i64 %i.hi, 5            ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 %.idx.i42 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !7833
  %i.hk = icmp eq i64 %i.hi, 0
  br i1 %i.hk, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i, label %bb.bs

bb.bs:                                            ; preds = %.noexc53
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hg, i64 24 ; 2 uses
  %.val3.i.i.i.i = load i128, ptr %i.hg, align 16, !noalias !7837, !noundef !10
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.ho = load i32, ptr %i.hn, align 8, !range !554, !alias.scope !7830, !noalias !7844, !noundef !10 ; 2 uses
  %i.hp = load ptr, ptr %i.hm, align 8, !noalias !7848, !nonnull !10, !noundef !10
  %i.hq = atomicrmw add ptr %i.hp, i64 1 monotonic, align 8, !noalias !7848
  %i.hr = icmp slt i64 %i.hq, 0
  br i1 %i.hr, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.trap()
  unreachable

bb.bu:                                            ; preds = %bb.by
  %i.hs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ht = atomicrmw sub ptr %i.hv, i64 1 release, align 8, !noalias !7852
  %i.hu = icmp eq i64 %i.ht, 1
  br i1 %i.hu, label %bb.bv, label %.body.i48

bb.bv:                                            ; preds = %bb.bu
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.87.0..sroa_idx.i.i) #35
          to label %.body.i48 unwind label %bb.ch, !noalias !7833

bb.bw:                                            ; preds = %bb.bs
  %i.hv = load ptr, ptr %i.hm, align 8, !noalias !7848, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !7833
  store i128 %.val3.i.i.i.i, ptr %i.l, align 16, !noalias !7833
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 %i.ho, ptr %.sroa.5.0..sroa_idx.i.i, align 16, !noalias !7833
  %.sroa.87.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  store ptr %i.hv, ptr %.sroa.87.0..sroa_idx.i.i, align 16, !noalias !7833
  %i.hw = ptrtoint ptr %i.hj to i64
  %gepdiff.i = add nsw i64 %.idx.i42, -32         ; 2 uses
  %i.hx = lshr exact i64 %gepdiff.i, 5
  %i.hy = call i64 @llvm.umax.i64(i64 %i.hx, i64 3)
  %..i.i.i = add nuw nsw i64 %i.hy, 1             ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %gepdiff.i, 6148914691236517152
  br i1 %or.cond.i.i.i.i, label %bb.by, label %bb.bx, !prof !20

bb.bx:                                            ; preds = %bb.bw
  %2 = mul nuw i64 %..i.i.i, 48                   ; 2 uses
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #31, !noalias !7861
  %i.hz = call noundef align 16 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %2, i64 noundef range(i64 1, 17) 16) #31, !noalias !7861 ; 5 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.sroa.10.0.ph.i.i.i = phi i64 [ %2, %bb.bx ], [ undef, %bb.bw ]
  %.sroa.4.0.ph.i.i.i = phi i64 [ 16, %bb.bx ], [ 0, %bb.bw ]
  invoke void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %.sroa.10.0.ph.i.i.i) #36
          to label %.noexc6.i.i unwind label %bb.bu, !noalias !7833

.noexc6.i.i:                                      ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.hz, ptr noundef nonnull align 16 dereferenceable(48) %i.l, i64 48, i1 false), !noalias !7833
  store i64 %..i.i.i, ptr %i.m, align 8, !noalias !7833
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.hz, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !7833
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !7833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !7833
  call void @llvm.experimental.noalias.scope.decl(metadata !7864)
  call void @llvm.experimental.noalias.scope.decl(metadata !7867)
  %i.ib = icmp eq i64 %i.hi, 1
  br i1 %i.ib, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bz
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.84.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  br label %bb.ca

bb.ca:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ic = phi ptr [ %i.hz, %.lr.ph.i.i.i.i ], [ %i.io, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i ]
  %i.id = phi i64 [ 1, %.lr.ph.i.i.i.i ], [ %i.iq, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i ] ; 5 uses
  %i.ie = phi ptr [ %i.hl, %.lr.ph.i.i.i.i ], [ %i.if, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 32 ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 24 ; 2 uses
  %.val3.i.i.i.i.i.i = load i128, ptr %i.ie, align 16, !noalias !7870, !noundef !10
  %i.ih = load ptr, ptr %i.ig, align 8, !noalias !7879, !nonnull !10, !noundef !10
  %i.ii = atomicrmw add ptr %i.ih, i64 1 monotonic, align 8, !noalias !7879
  %i.ij = icmp slt i64 %i.ii, 0
  br i1 %i.ij, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.trap()
  unreachable

bb.cc:                                            ; preds = %bb.ca
  %i.ik = load ptr, ptr %i.ig, align 8, !noalias !7879, !nonnull !10, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !7883
  store i128 %.val3.i.i.i.i.i.i, ptr %i.k, align 16, !noalias !7883
  store i32 %i.ho, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !noalias !7883
  store ptr %i.ik, ptr %.sroa.84.0..sroa_idx.i.i.i.i, align 16, !noalias !7883
  %i.il = icmp samesign ult i64 %i.id, 192153584101141163
  call void @llvm.assume(i1 %i.il)
  %i.im = load i64, ptr %i.m, align 8, !range !366, !alias.scope !7884, !noalias !7885, !noundef !10
  %i.in = icmp eq i64 %i.id, %i.im
  br i1 %i.in, label %bb.cf, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i: ; preds = %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i, %bb.cc
  %i.io = phi ptr [ %.pre.i.i, %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i ], [ %i.ic, %bb.cc ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [48 x i8], ptr %i.io, i64 %i.id
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.ip, ptr noundef nonnull align 16 dereferenceable(48) %i.k, i64 48, i1 false), !noalias !7883
  %i.iq = add nuw nsw i64 %i.id, 1                ; 3 uses
  store i64 %i.iq, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !7884, !noalias !7885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !7883
  %i.ir = icmp eq ptr %i.if, %i.hj
  br i1 %i.ir, label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i, label %bb.ca

bb.cd:                                            ; preds = %bb.cf
  %i.is = landingpad { ptr, i32 }
          cleanup
  %i.it = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !7886
  %i.iu = icmp eq i64 %i.it, 1
  br i1 %i.iu, label %bb.ce, label %.body.i.i52

bb.ce:                                            ; preds = %bb.cd
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.84.0..sroa_idx.i.i.i.i) #35
          to label %.body.i.i52 unwind label %bb.cg, !noalias !7883

bb.cf:                                            ; preds = %bb.cc
  %i.iv = ptrtoint ptr %i.if to i64
  %i.iw = sub nuw i64 %i.hw, %i.iv
  %i.ix = lshr exact i64 %i.iw, 5
  %i.iy = add nuw nsw i64 %i.ix, 1
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.id, i64 noundef range(i64 1, 0) %i.iy, i64 noundef 16, i64 noundef 48)
          to label %._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i unwind label %bb.cd, !noalias !7885

._RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i_crit_edge.i.i: ; preds = %bb.cf
  %.pre.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !7884, !noalias !7885
  br label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.iz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7883
  unreachable

.body.i.i52:                                      ; preds = %bb.ce, %bb.cd
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1b_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #32
          to label %.body.i48 unwind label %bb.ch, !noalias !7833

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i: ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEE7reserveBH_.exit.i.i.i.i
  %.sroa.01.0.copyload.pre.i = load i64, ptr %i.m, align 8, !noalias !7895
  br label %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i

bb.ch:                                            ; preds = %.body.i.i52, %bb.bv
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7833
  unreachable

.body.i48:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i, %bb.ci, %.body.i.i52, %bb.bv, %bb.bu
  %.pn18.pn.i = phi { ptr, i32 } [ %.pn18.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i ], [ %i.jb, %bb.ci ], [ %i.is, %.body.i.i52 ], [ %i.hs, %bb.bv ], [ %i.hs, %bb.bu ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %.body unwind label %bb.cy

bb.ci:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i48

_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i, %bb.bz, %.noexc53
  %.sroa.7.0.i = phi i64 [ 0, %.noexc53 ], [ %i.iq, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i ], [ 1, %bb.bz ] ; 3 uses
  %.sroa.5.0.i43 = phi ptr [ inttoptr (i64 16 to ptr), %.noexc53 ], [ %i.io, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i ], [ %i.hz, %bb.bz ] ; 5 uses
  %.sroa.01.0.i44 = phi i64 [ 0, %.noexc53 ], [ %.sroa.01.0.copyload.pre.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.loopexit.i ], [ %..i.i.i, %bb.bz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !7833
  %i.jc = icmp samesign ult i64 %.sroa.7.0.i, 192153584101141163
  call void @llvm.assume(i1 %i.jc)
  %.idx22.i = mul nuw nsw i64 %.sroa.7.0.i, 48
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i43, i64 %.idx22.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7830
  store ptr %.sroa.5.0.i43, ptr %i.r, align 8, !noalias !7830
  %.sroa.4.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 5 uses
  store ptr %.sroa.5.0.i43, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7830
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %.sroa.01.0.i44, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !7830
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.jd, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !7830
  %i.je = icmp eq i64 %.sroa.7.0.i, 0
  br i1 %i.je, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i: ; preds = %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i
  %i.jf = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.jh = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.ji = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %i.jj = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  br label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.cm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46, %bb.cj
  %.pn18.i = phi { ptr, i32 } [ %i.jk, %bb.cj ], [ %.pn.i47, %bb.cm ], [ %.pn.i47, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #32
          to label %.body.i48 unwind label %bb.cy

bb.cj:                                            ; preds = %bb.cx
  %i.jk = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jl, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7830
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i
  %.sroa.5.8.620.i = phi ptr [ %.sroa.5.0.i43, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.lr.ph.i ], [ %i.jl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i ] ; 4 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.5.8.620.i, i64 48 ; 7 uses
  %.sroa.07.0.copyload.i = load i128, ptr %.sroa.5.8.620.i, align 16, !noalias !7896
  %.sroa.58.0..sroa.5.8.6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.8.620.i, i64 16
  %.sroa.58.0.copyload.i = load i32, ptr %.sroa.58.0..sroa.5.8.6.sroa_idx.i, align 16, !noalias !7896 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.58.0.copyload.i, -1
  br i1 %.not.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i, label %bb.ck

bb.ck:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i
  %.sroa.710.0..sroa.5.8.6.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.5.8.620.i, i64 32
  %.sroa.710.0.copyload.i = load ptr, ptr %.sroa.710.0..sroa.5.8.6.sroa_idx.i, align 16, !noalias !7896, !nonnull !10, !noundef !10 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7830
  store ptr %.sroa.710.0.copyload.i, ptr %i.q, align 8, !noalias !7830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !7830
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload.i, i64 80
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.710.0.copyload.i, i64 96
  %i.jo = load <2 x double>, ptr %i.jm, align 16
  %i.jp = load <2 x double>, ptr %i.jn, align 16
  %i.jq = fadd <2 x double> %i.jo, %i.jp          ; 2 uses
  %i.jr = fcmp ord <2 x double> %i.jq, zeroinitializer
  %i.js = select <2 x i1> %i.jr, <2 x double> %i.jq, <2 x double> zeroinitializer ; 2 uses
  %i.jt = extractelement <2 x double> %i.js, i64 0 ; 3 uses
  store double %i.jt, ptr %i.p, align 8, !noalias !7830
  %i.ju = extractelement <2 x double> %i.js, i64 1 ; 3 uses
  store double %i.ju, ptr %i.jf, align 8, !noalias !7830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !7830
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @160, i64 noundef range(i64 1, 15) 7) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50 unwind label %bb.cn

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i
  %i.jv = phi ptr [ %.sroa.5.0.i43, %_RNvXNtNtCs1xwejQucwHj_5alloc3vec11spec_extendINtB4_3VecTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEINtB2_10SpecExtendBR_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB2L_INtNtNtCsjFU9swAW47b_8indexmap3map4iter4IteroB1q_ENCNvMs0_BU_INtBU_12DeduplicatorB1q_E4iter0ENCNvMNtBU_5paintNtBU_11SVGRenderer13write_tilings0EE11spec_extendBU_.exit.i.i ], [ %i.jl, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.i ], [ %i.jl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i ]
  store ptr %i.jv, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7830
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEEEB1s_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r)
          to label %bb.cl unwind label %bb.ci

bb.cl:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterTNtCsl4q486LaARA_9typst_svg7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextBZ_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !7830
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13write_tilings.exit unwind label %bb.x

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46: ; preds = %bb.co, %bb.cn
  %.pn.i47 = phi { ptr, i32 } [ %i.jz, %bb.cn ], [ %i.ka, %bb.co ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7899)
  call void @llvm.experimental.noalias.scope.decl(metadata !7902)
  call void @llvm.experimental.noalias.scope.decl(metadata !7905)
  %i.jw = load ptr, ptr %i.q, align 8, !alias.scope !7908, !noalias !7830, !nonnull !10, !noundef !10
  %i.jx = atomicrmw sub ptr %i.jw, i64 1 release, align 8, !noalias !7908
  %i.jy = icmp eq i64 %i.jx, 1
  br i1 %i.jy, label %bb.cm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i

bb.cm:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit.i unwind label %bb.cy

bb.cn:                                            ; preds = %bb.cw, %bb.ck
  %i.jz = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jl, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7830
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50: ; preds = %bb.ck
  store ptr %1, ptr %i.o, align 8, !noalias !7830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !7830
  store i128 %.sroa.07.0.copyload.i, ptr %i.j, align 16, !noalias !7909
  store i32 %.sroa.58.0.copyload.i, ptr %i.jg, align 16, !noalias !7909
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB1b_7DedupIdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.j) #35
          to label %bb.cp unwind label %bb.co

bb.co:                                            ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50
  %i.ka = landingpad { ptr, i32 }
          cleanup
  store ptr %i.jl, ptr %.sroa.4.0..sroa_idx.i45, align 8, !noalias !7830
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit28.i46 unwind label %bb.cy

bb.cp:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !7830
  %i.kb = fdiv double %i.jt, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !7830
  store double %i.kb, ptr %i.i, align 8, !noalias !7912
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) #35
          to label %bb.cq unwind label %bb.co

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !7830
  %i.kc = fdiv double %i.ju, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !7830
  store double %i.kc, ptr %i.h, align 8, !noalias !7916
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h) #35
          to label %bb.cr unwind label %bb.co

bb.cr:                                            ; preds = %bb.cq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !7830
  %i.kd = load ptr, ptr %i.q, align 8, !noalias !7830, !nonnull !10, !noundef !10
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 112
  %i.kf = load double, ptr %i.ke, align 16, !noundef !10
  %i.kg = fdiv double %i.kf, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !7830
  store double %i.kg, ptr %i.g, align 8, !noalias !7920
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g) #35
          to label %bb.cs unwind label %bb.co

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !7830
  %i.kh = load ptr, ptr %i.q, align 8, !noalias !7830, !nonnull !10, !noundef !10
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 120
  %i.kj = load double, ptr %i.ki, align 8, !noundef !10
  %i.kk = fdiv double %i.kj, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !7830
  store double %i.kk, ptr %i.f, align 8, !noalias !7924
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f) #35
          to label %bb.ct unwind label %bb.co

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !7830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !7830
  store ptr @162, ptr %i.e, align 8, !noalias !7928
  store i64 14, ptr %i.jh, align 8, !noalias !7928
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.e) #35
          to label %bb.cu unwind label %bb.co

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !7830
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCNvMNtB1b_5paintNtB1b_11SVGRenderer13write_tilingss_0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.jf)
          to label %bb.cv unwind label %bb.co

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !7830
  store double 1.000000e+00, ptr %i.n, align 8, !noalias !7830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.412.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !7830
  store double 1.000000e+00, ptr %.sroa.614.0..sroa_idx.i, align 8, !noalias !7830
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !7830
  store double %i.jt, ptr %i.ji, align 8, !noalias !7830
  store double %i.ju, ptr %i.jj, align 8, !noalias !7830
  %i.kl = load ptr, ptr %i.q, align 8, !noalias !7830, !nonnull !10, !noundef !10
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  invoke fastcc void @_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %i.o, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.km)
          to label %bb.cw unwind label %bb.co

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !7830
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51 unwind label %bb.cn

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51: ; preds = %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !7830
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !7830
  call void @llvm.experimental.noalias.scope.decl(metadata !7933)
  call void @llvm.experimental.noalias.scope.decl(metadata !7936)
  call void @llvm.experimental.noalias.scope.decl(metadata !7939)
  %i.kn = load ptr, ptr %i.q, align 8, !alias.scope !7942, !noalias !7830, !nonnull !10, !noundef !10
  %i.ko = atomicrmw sub ptr %i.kn, i64 1 release, align 8, !noalias !7942
  %i.kp = icmp eq i64 %i.ko, 1
  br i1 %i.kp, label %bb.cx, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i

bb.cx:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit38.i51
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling11TilingInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6tiling6TilingECsl4q486LaARA_9typst_svg.exit40.i unwind label %bb.cj

end_hunk_1
