Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_expand-50a50713fde0b685.uu_expand.15d4497bd967269-cgu.0?download=true
inline.NumInlined: 580
inline.NumDeleted: 400
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@98 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtNtB8_2io5error5ErrorNtB6_5Debug3fmtCs7ggdWxGWrR_9uu_expand }>, align 8
@99 = private unnamed_addr constant [8 x i8] c"UIoError", align 1
@100 = private unnamed_addr constant [7 x i8] c"context", align 1
@101 = private unnamed_addr constant [5 x i8] c"inner", align 1
@102 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@103 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8022765338115755166 to ptr), ptr inttoptr (i64 -4205221647133633730 to ptr) }>, align 8
@104 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7465031386275593344 to ptr), ptr inttoptr (i64 2227572798057049637 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCs7ggdWxGWrR_9uu_expand21CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %bb.c
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !17, !noalias !18, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !17, !noalias !18, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !21, !noalias !25 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.g, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !32, !noalias !33, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !32, !noalias !33, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !35, !noalias !39 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !4 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  %i.z = load i64, ptr %0, align 8, !range !40, !alias.scope !41, !noalias !44, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21, !noalias !44
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !41, !noalias !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !44
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.e, %bb.f
  store i64 -1, ptr %i.ac, align 8
  %.sroa.08.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.08.sroa.4.0..sroa_idx, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 2, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.510.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !41, !noalias !44
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !58, !noalias !59, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !58, !noalias !59, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !62, !noalias !66 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !67)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !73, !noalias !74, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !73, !noalias !74, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !76, !noalias !80 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !4 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %4 = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %4)
  %i.y = load i64, ptr %0, align 8, !range !40, !alias.scope !81, !noalias !84, !noundef !4
  %i.z = icmp eq i64 %i.d, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21, !noalias !84
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !81, !noalias !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ab = getelementptr inbounds nuw [144 x i8], ptr %i.aa, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ac, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ae = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.af = mul nuw nsw i64 %i.ae, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ab, i64 %i.af, i1 false), !noalias !84
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ab, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  store double %3, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ag = add nuw nsw i64 %i.d, 1
  store i64 %i.ag, ptr %i.c, align 8, !alias.scope !81, !noalias !84
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ah = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.ai, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 -1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store double %3, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 10) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !98, !noalias !99, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !98, !noalias !99, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !102, !noalias !106 ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = icmp eq i32 %i.f, 0
  %i.i = sub i64 %.sroa.3.0.i.i.i.i.i, %2
  %spec.select.i.i.i.i.i.i = select i1 %i.h, i64 %i.i, i64 %i.g ; 2 uses
  %i.j = icmp eq i64 %spec.select.i.i.i.i.i.i, 0
  br i1 %i.j, label %bb.f, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.01.025.i.i = phi i64 [ %i.u, %.lr.ph.i.i ], [ %i.d, %bb.a ] ; 2 uses
  %.sroa.05.024.i.i = phi i64 [ %i.t, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = lshr i64 %.sroa.01.025.i.i, 1            ; 2 uses
  %i.l = add nuw nsw i64 %i.k, %.sroa.05.024.i.i  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.d
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !113, !noalias !114, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !113, !noalias !114, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !116, !noalias !120 ; 2 uses
  %i.p = sext i32 %i.o to i64
  %i.q = icmp eq i32 %i.o, 0
  %i.r = sub i64 %.sroa.3.0.i.i.i17.i.i, %2
  %spec.select.i.i.i.i23.i.i = select i1 %i.q, i64 %i.r, i64 %i.p
  %i.s = icmp sgt i64 %spec.select.i.i.i.i23.i.i, 0
  %i.t = select i1 %i.s, i64 %.sroa.05.024.i.i, i64 %i.l, !unpredictable !4 ; 2 uses
  %i.u = sub nuw nsw i64 %.sroa.01.025.i.i, %i.k  ; 2 uses
  %i.v = icmp ugt i64 %i.u, 1
  br i1 %i.v, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.b:                                             ; preds = %._crit_edge.i.i
  %spec.select.i.i.i.i.lobit.i.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.w = add nuw nsw i64 %spec.select.i.i.i.i.lobit.i.i, %.sroa.05.0.lcssa.i.i ; 2 uses
  %i.x = icmp ule i64 %i.w, %i.d
  tail call void @llvm.assume(i1 %i.x)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = sitofp i64 %3 to double
  %4 = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %4)
  %i.z = load i64, ptr %0, align 8, !range !40, !alias.scope !121, !noalias !124, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #21, !noalias !124
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !121, !noalias !124
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !124
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ac, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 136
  store double %i.y, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !121, !noalias !124
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = sitofp i64 %3 to double
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.ak, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 0, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i64 0, ptr %.sroa.617.0..sroa_idx, align 8
  %.sroa.718.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.718.0..sroa_idx, align 8
  %.sroa.819.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  store i64 -1, ptr %.sroa.819.0..sroa_idx, align 8
  %.sroa.920.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.920.0..sroa_idx, align 8
  %.sroa.1321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store double %i.aj, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #23
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs7ggdWxGWrR_9uu_expand.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !126, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !127, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !127
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockEECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = ptrtoint ptr %.val to i64                ; 2 uses
  %i.e = and i64 %i.d, 3
  switch i64 %i.e, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
    i64 3, label %bb.c
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
    i64 1, label %bb.d
  ], !prof !130

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.g = and i64 %i.d, 1095216660480
  %i.h = icmp ne i64 %i.g, 1095216660480
  tail call void @llvm.assume(i1 %i.f)
  tail call void @llvm.assume(i1 %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.j, align 8, !alias.scope !131
  store i8 3, ptr %i.a, align 8, !alias.scope !131
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std2fs4FileECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #0 {
bb.a:
  %.val = load i32, ptr %0, align 4, !range !134, !noundef !4
  %i.a = tail call noundef i32 @close(i32 noundef %.val) #22 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !40, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error12USimpleErrorECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %.val.i = load i64, ptr %0, align 8, !range !40, !alias.scope !135, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val.i, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.b, align 8, !alias.scope !135, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !135
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECs7ggdWxGWrR_9uu_expand(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_RNvCs7ggdWxGWrR_9uu_expand6expand:bb.a
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef %i.ls) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store ptr @_RNvNvNtNtCs2vKOLqTMYjT_3std2io5stdio6stderr8INSTANCE, ptr %i.aa, align 8
  %i.lt = call noundef nonnull align 8 ptr @_RNvMsk_NtNtCs2vKOLqTMYjT_3std2io5stdioNtB5_6Stderr4lock(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa) #22
  store ptr %i.lt, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  %i.lu = call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #22 ; 2 uses
  %i.lv = extractvalue { ptr, i64 } %i.lu, 0
  %i.lw = extractvalue { ptr, i64 } %i.lu, 1
  store ptr %i.lv, ptr %i.z, align 8
  store i64 %i.lw, ptr %i.bv, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.z, ptr %i.y, align 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7ggdWxGWrR_9uu_expand, ptr %.sroa.414.0..sroa_idx, align 8
  store ptr %i.ac, ptr %i.bw, align 8
  store ptr @_RNvXsm_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtCs6JMX4GRUq9U_4core3fmt7Display3fmtCs7ggdWxGWrR_9uu_expand, ptr %.sroa.418.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !434
  store ptr %i.ab, ptr %i.d, align 8, !noalias !434
  store ptr null, ptr %i.bx, align 8, !noalias !434
  %i.lx = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @15, ptr noundef nonnull @48, ptr noundef nonnull %i.y) #22
  %i.ly = load ptr, ptr %i.bx, align 8, !noalias !434, !noundef !4 ; 7 uses
  %.not.i5.i = icmp eq ptr %i.ly, null            ; 2 uses
  br i1 %i.lx, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  br i1 %.not.i5.i, label %bb.cw, label %bb.cx, !prof !255

bb.cs:                                            ; preds = %bb.cq
  br i1 %.not.i5.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit.i.thread, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !434
  %i.lz = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.ma = and i64 %i.lz, 3
  switch i64 %i.ma, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i.i.i31
    i64 3, label %bb.cu
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i.i.i31
    i64 1, label %bb.cv
  ], !prof !130

bb.cu:                                            ; preds = %bb.ct
  %i.mb = icmp ult ptr %i.ly, inttoptr (i64 188978561024 to ptr)
  %i.mc = and i64 %i.lz, 1095216660480
  %i.md = icmp ne i64 %i.mc, 1095216660480
  call void @llvm.assume(i1 %i.mb)
  call void @llvm.assume(i1 %i.md)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i.i.i31

bb.cv:                                            ; preds = %bb.ct
  %i.me = getelementptr i8, ptr %i.ly, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.me) ]
  store ptr %i.me, ptr %i.by, align 8, !alias.scope !439, !noalias !434
  store i8 3, ptr %i.c, align 8, !alias.scope !439, !noalias !434
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.by) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i.i.i31

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i.i.i31: ; preds = %bb.cv, %bb.cu, %bb.ct, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !434
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit.i.thread

bb.cw:                                            ; preds = %bb.cr
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @16, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #23
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit.i.thread: ; preds = %bb.cs, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !434
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit

bb.cx:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !434
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.mf = ptrtoint ptr %i.ly to i64               ; 2 uses
  %i.mg = and i64 %i.mf, 3
  switch i64 %i.mg, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
    i64 3, label %bb.cy
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
    i64 1, label %bb.cz
  ], !prof !130

bb.cy:                                            ; preds = %bb.cx
  %i.mh = icmp ult ptr %i.ly, inttoptr (i64 188978561024 to ptr)
  %i.mi = and i64 %i.mf, 1095216660480
  %i.mj = icmp ne i64 %i.mi, 1095216660480
  call void @llvm.assume(i1 %i.mh)
  call void @llvm.assume(i1 %i.mj)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.mk = getelementptr i8, ptr %i.ly, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mk) ]
  store ptr %i.mk, ptr %i.bz, align 8, !alias.scope !442
  store i8 3, ptr %i.b, align 8, !alias.scope !442
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bz) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit: ; preds = %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit.i.thread, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs7ggdWxGWrR_9uu_expand.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %.val21 = load ptr, ptr %i.ab, align 8, !nonnull !4, !align !166, !noundef !4 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %.val21, i64 12 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 4, !noundef !4
  %i.mn = add i32 %i.mm, -1                       ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 4
  %i.mo = icmp eq i32 %i.mn, 0
  br i1 %i.mo, label %bb.da, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit

bb.da:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit
  store atomic i64 0, ptr %.val21 monotonic, align 8
  %i.mp = getelementptr inbounds nuw i8, ptr %.val21, i64 8 ; 2 uses
  %i.mq = atomicrmw xchg ptr %i.mp, i32 0 release, align 4
  %i.mr = icmp eq i32 %i.mq, 2
  br i1 %i.mr, label %bb.db, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit, !prof !255

bb.db:                                            ; preds = %bb.da
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.mp) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs7ggdWxGWrR_9uu_expand.exit, %bb.da, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %.val22 = load ptr, ptr %i.ac, align 8          ; 4 uses
  %.val23 = load ptr, ptr %i.bu, align 8, !nonnull !4, !align !166, !noundef !4 ; 3 uses
  %i.ms = load ptr, ptr %.val23, align 8, !invariant.load !4 ; 2 uses
  %.not.i35 = icmp eq ptr %i.ms, null
  br i1 %.not.i35, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22) ]
  call void %i.ms(ptr noundef nonnull %.val22) #24, !inline_history !445
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs7ggdWxGWrR_9uu_expand.exit
  %i.mt = getelementptr inbounds nuw i8, ptr %.val23, i64 8
  %i.mu = load i64, ptr %i.mt, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.mv = icmp eq i64 %i.mu, 0
  br i1 %i.mv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs7ggdWxGWrR_9uu_expand.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.dd
  %i.mw = getelementptr inbounds nuw i8, ptr %.val23, i64 16
  %i.mx = load i64, ptr %i.mw, align 8, !range !168, !invariant.load !4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val22) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %i.mu, i64 noundef range(i64 1, -9223372036854775807) %i.mx) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs7ggdWxGWrR_9uu_expand.exit: ; preds = %bb.dd, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods5error13set_exit_code(i32 noundef 1) #22
  br label %bb.de

bb.de:                                            ; preds = %_RNvCs7ggdWxGWrR_9uu_expand11expand_file.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECs7ggdWxGWrR_9uu_expand.exit
  %i.my = icmp eq ptr %i.cd, %i.an
  br i1 %i.my, label %._crit_edge, label %bb.c
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs7ggdWxGWrR_9uu_expand6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit:
  %i.a = alloca [640 x i8], align 8               ; 57 uses
  %.sroa.0522 = alloca [80 x i8], align 8         ; 4 uses
  %.sroa.7526 = alloca [264 x i8], align 8        ; 4 uses
  %.sroa.13530 = alloca [248 x i8], align 8       ; 4 uses
  %.sroa.0 = alloca [80 x i8], align 8            ; 4 uses
  %.sroa.9520.sroa.0 = alloca [264 x i8], align 8 ; 4 uses
  %.sroa.9520.sroa.7 = alloca [248 x i8], align 8 ; 4 uses
  %i.b = alloca [640 x i8], align 8               ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 57 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [640 x i8], align 8               ; 53 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [712 x i8], align 8               ; 55 uses
  %i.m = alloca [712 x i8], align 8               ; 3 uses
  %i.n = alloca [712 x i8], align 8               ; 5 uses
  %i.o = alloca [712 x i8], align 8               ; 5 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  %i.q = alloca [712 x i8], align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @51, i64 noundef 12) #22
  %.sroa.0.0.copyload.i = load i64, ptr %i.k, align 8, !alias.scope !446, !noalias !452 ; 2 uses
  %i.r = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.4.sroa.0.0 = select i1 %i.r, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  %.sroa.5.i.sroa.0.0 = select i1 %i.r, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 12) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  call void @llvm.experimental.noalias.scope.decl(metadata !458)
  call void @llvm.experimental.noalias.scope.decl(metadata !460)
  %.sroa.0.0.copyload.i7 = load i64, ptr %i.j, align 8, !alias.scope !462, !noalias !466 ; 2 uses
  %i.w = icmp eq i64 %.sroa.0.0.copyload.i7, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i8 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.5.i6.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i8, align 8
  %.sroa.5.i6.sroa.4.0..sroa.55.0..sroa_idx.i8.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.5.i6.sroa.4.0.copyload = load i64, ptr %.sroa.5.i6.sroa.4.0..sroa.55.0..sroa_idx.i8.sroa_idx, align 8
  %.sroa.5.i6.sroa.4.sroa.0.0 = select i1 %i.w, i64 undef, i64 %.sroa.5.i6.sroa.4.0.copyload
  %.sroa.5.i6.sroa.0.0 = select i1 %i.w, ptr undef, ptr %.sroa.5.i6.sroa.0.0.copyload
  store i64 0, ptr %i.l, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 -1, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.23.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  store i64 0, ptr %.sroa.0.sroa.29.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 272
  store i64 -1, ptr %.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 296
  store i64 -1, ptr %.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 320
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.34.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.35.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  store i64 %.sroa.5.i.sroa.4.sroa.0.0, ptr %.sroa.0.sroa.36.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 344
  store i64 -1, ptr %.sroa.0.sroa.37.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 368
  store i64 -1, ptr %.sroa.0.sroa.39.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 392
  store i64 -1, ptr %.sroa.0.sroa.41.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 416
  store i64 -1, ptr %.sroa.0.sroa.43.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 440
  store i64 -1, ptr %.sroa.0.sroa.45.0..sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.4.0..sroa_idx130 = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  store i64 %.sroa.0.0.copyload.i7, ptr %.sroa.4.0..sroa_idx130, align 8, !alias.scope !466, !noalias !460
  %.sroa.6.0..sroa_idx132 = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  store ptr %.sroa.5.i6.sroa.0.0, ptr %.sroa.6.0..sroa_idx132, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.0..sroa_idx134 = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  store i64 %.sroa.5.i6.sroa.4.sroa.0.0, ptr %.sroa.8.0..sroa_idx134, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  store i64 -1, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 536
  store i64 -1, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 560
  store ptr @49, ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 568
  store i64 6, ptr %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  store ptr null, ptr %.sroa.8.sroa.13.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.15.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  store ptr null, ptr %.sroa.8.sroa.15.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  store ptr @50, ptr %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 616
  store i64 25, ptr %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.19.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  store ptr null, ptr %.sroa.8.sroa.19.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.21.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 640
  store ptr null, ptr %.sroa.8.sroa.21.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.23.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 656
  store ptr null, ptr %.sroa.8.sroa.23.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.25.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 672
  store ptr null, ptr %.sroa.8.sroa.25.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 688
  store ptr null, ptr %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 696
  store i32 -1, ptr %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx134.sroa_idx, align 8, !alias.scope !466, !noalias !460
  %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx134.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx134.sroa_idx, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.l) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 700 ; 2 uses
  %i.y = load <2 x i32>, ptr %i.x, align 4
  %i.z = or <2 x i32> %i.y, splat (i32 136)
  store <2 x i32> %i.z, ptr %i.x, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.n, ptr noundef nonnull align 8 dereferenceable(712) %i.m, i64 712, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @53, i64 noundef 19) #22
  %.sroa.0536.0.copyload = load i64, ptr %i.g, align 8
  %.sroa.2537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.2537.0.copyload = load ptr, ptr %.sroa.2537.0..sroa_idx, align 8
  %.sroa.3538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3538.0.copyload = load i64, ptr %.sroa.3538.0..sroa_idx, align 8
  store i64 0, ptr %i.h, align 8
  %.sroa.0.sroa.5227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.0.sroa.5227.0..sroa_idx, align 8
  %.sroa.0.sroa.7229.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i64 0, ptr %.sroa.0.sroa.7229.0..sroa_idx, align 8
  %.sroa.0.sroa.9231.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 0, ptr %.sroa.0.sroa.9231.0..sroa_idx, align 8
  %.sroa.0.sroa.11233.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  store i64 -1, ptr %.sroa.0.sroa.11233.0..sroa_idx, align 8
  %.sroa.0.sroa.13235.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  store i64 0, ptr %.sroa.0.sroa.13235.0..sroa_idx, align 8
  %.sroa.0.sroa.14236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14236.0..sroa_idx, align 8
  %.sroa.0.sroa.15237.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15237.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.16238.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.16238.0..sroa_idx, align 8
  %.sroa.0.sroa.17239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17239.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.18240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.18240.0..sroa_idx, align 8
  %.sroa.0.sroa.19241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19241.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.20242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.20242.0..sroa_idx, align 8
  %.sroa.0.sroa.21243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.21243.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.22244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.22244.0..sroa_idx, align 8
  %.sroa.0.sroa.23245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.23245.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.24246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.24246.0..sroa_idx, align 8
  %.sroa.0.sroa.25247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.25247.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.26248.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26248.0..sroa_idx, align 8
  %.sroa.0.sroa.27249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27249.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28250.0..sroa_idx, align 8
  %.sroa.0.sroa.29251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  %.sroa.0.sroa.31253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.29251.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.31253.0..sroa_idx, align 8
  %.sroa.0.sroa.32254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.32254.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.33255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.33255.0..sroa_idx, align 8
  %.sroa.0.sroa.34256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.34256.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.35257.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.35257.0..sroa_idx, align 8
  %.sroa.0.sroa.36258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  %.sroa.0.sroa.38260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.36258.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.38260.0..sroa_idx, align 8
  %.sroa.0.sroa.39261.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.39261.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.40262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.40262.0..sroa_idx, align 8
  %.sroa.0.sroa.41263.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.41263.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.42264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.42264.0..sroa_idx, align 8
  %.sroa.0.sroa.43265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %.sroa.0.sroa.45267.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.43265.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.45267.0..sroa_idx, align 8
  %.sroa.0.sroa.46268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.46268.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.47.0..sroa_idx, align 8
  %.sroa.0.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 480
  store i64 0, ptr %.sroa.0.sroa.48.0..sroa_idx, align 8
  %.sroa.4159.0..sroa_idx160 = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  store i64 %.sroa.0536.0.copyload, ptr %.sroa.4159.0..sroa_idx160, align 8
  %.sroa.6162.0..sroa_idx163 = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store ptr %.sroa.2537.0.copyload, ptr %.sroa.6162.0..sroa_idx163, align 8
  %.sroa.7165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.h, i64 504
  store i64 %.sroa.3538.0.copyload, ptr %.sroa.7165.0..sroa_idx166, align 8
  %.sroa.7165.sroa.5.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  store i64 -1, ptr %.sroa.7165.sroa.5.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.7.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 552
  store i64 -2, ptr %.sroa.7165.sroa.7.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.9.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 576
  store ptr @66, ptr %.sroa.7165.sroa.9.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.10.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 584
  store i64 7, ptr %.sroa.7165.sroa.10.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.11.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 592
  store ptr @66, ptr %.sroa.7165.sroa.11.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.12.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 600
  store i64 7, ptr %.sroa.7165.sroa.12.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.13.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 608
  store ptr null, ptr %.sroa.7165.sroa.13.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.15.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 624
  store i32 105, ptr %.sroa.7165.sroa.15.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.16.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 628
  store i32 -1, ptr %.sroa.7165.sroa.16.0..sroa.7165.0..sroa_idx166.sroa_idx, align 4
  %.sroa.7165.sroa.17.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 632
  store i32 0, ptr %.sroa.7165.sroa.17.0..sroa.7165.0..sroa_idx166.sroa_idx, align 8
  %.sroa.7165.sroa.18.0..sroa.7165.0..sroa_idx166.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  store i8 2, ptr %.sroa.7165.sroa.18.0..sroa.7165.0..sroa_idx166.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.h) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.o, ptr noundef nonnull align 8 dereferenceable(712) %i.n, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !467
  %i.aa = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #22, !noalias !467 ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs7ggdWxGWrR_9uu_expand.exit85

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #25, !noalias !480
  unreachable

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECs7ggdWxGWrR_9uu_expand.exit85: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit
  store ptr @54, ptr %i.aa, align 8, !noalias !481
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i64 7, ptr %i.ac, align 8, !noalias !514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @55, i64 noundef 16) #22
  %.sroa.0544.0.copyload = load i64, ptr %i.e, align 8
  %.sroa.2545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.2545.0.copyload = load ptr, ptr %.sroa.2545.0..sroa_idx, align 8
  %.sroa.3546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.3546.0.copyload = load i64, ptr %.sroa.3546.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  %.sroa.0.sroa.5348.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %.sroa.0.sroa.5348.0..sroa_idx, align 8
  %.sroa.0.sroa.7350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i64 0, ptr %.sroa.0.sroa.7350.0..sroa_idx, align 8
  %.sroa.0.sroa.9352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 0, ptr %.sroa.0.sroa.9352.0..sroa_idx, align 8
  %.sroa.0.sroa.11354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  store i64 -1, ptr %.sroa.0.sroa.11354.0..sroa_idx, align 8
  %.sroa.0.sroa.13356.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.0.sroa.13356.0..sroa_idx, align 8
  %.sroa.0.sroa.14357.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14357.0..sroa_idx, align 8
  %.sroa.0.sroa.15358.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15358.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.16359.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.16359.0..sroa_idx, align 8
  %.sroa.0.sroa.17360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17360.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.18361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.18361.0..sroa_idx, align 8
  %.sroa.0.sroa.19362.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19362.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.20363.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.20363.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvMs_Cs7ggdWxGWrR_9uu_expandNtB4_7Options3new:bb.a
  %i.gv = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.gv, align 8, !noalias !749
  %i.gw = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 3 uses
  store i64 0, ptr %i.gw, align 8, !noalias !749
  %i.gx = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.preheader.i52

.preheader.i52:                                   ; preds = %.loopexit217.i, %bb.s
  %i.gz = phi i64 [ 0, %bb.s ], [ %i.jb, %.loopexit217.i ] ; 2 uses
  %.sroa.03.0299.i = phi i8 [ 0, %bb.s ], [ %.sroa.03.2223.i, %.loopexit217.i ] ; 2 uses
  %.sroa.06.0298.i = phi i1 [ false, %bb.s ], [ %.sroa.06.1.i, %.loopexit217.i ] ; 3 uses
  %.sroa.0.0297.i = phi i64 [ 0, %bb.s ], [ %.sroa.0.1.i, %.loopexit217.i ] ; 4 uses
  %.sroa.11133.0296.i = phi ptr [ %i.gr, %bb.s ], [ %.sroa.11133.3.i, %.loopexit217.i ]
  %.sroa.17.0295.i = phi i64 [ 0, %bb.s ], [ %.sroa.17.2.i, %.loopexit217.i ]
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i, %.preheader.i52
  %.sroa.17.1.i = phi i64 [ %i.in, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i ], [ %.sroa.17.0295.i, %.preheader.i52 ] ; 3 uses
  %.sroa.11133.1.i = phi ptr [ %.sroa.11133.2.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i ], [ %.sroa.11133.0296.i, %.preheader.i52 ] ; 7 uses
  %i.ha = ptrtoint ptr %.sroa.11133.1.i to i64
  %i.hb = icmp eq ptr %.sroa.11133.1.i, %i.ey     ; 2 uses
  br i1 %i.hb, label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 1 ; 3 uses
  %i.hd = load i8, ptr %.sroa.11133.1.i, align 1, !alias.scope !727, !noalias !750, !noundef !4 ; 5 uses
  %i.he = icmp sgt i8 %i.hd, -1
  br i1 %i.he, label %bb.v, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i: ; preds = %bb.u
  %i.hf = and i8 %i.hd, 31
  %i.hg = zext nneg i8 %i.hf to i32               ; 3 uses
  %i.hh = icmp ne ptr %i.hc, %i.ey
  call void @llvm.assume(i1 %i.hh)
  %i.hi = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 2 ; 3 uses
  %i.hj = load i8, ptr %i.hc, align 1, !alias.scope !727, !noalias !750, !noundef !4
  %i.hk = shl nuw nsw i32 %i.hg, 6
  %i.hl = and i8 %i.hj, 63
  %i.hm = zext nneg i8 %i.hl to i32               ; 2 uses
  %i.hn = or disjoint i32 %i.hk, %i.hm
  %i.ho = icmp samesign ugt i8 %i.hd, -33
  br i1 %i.ho, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

bb.v:                                             ; preds = %bb.u
  %i.hp = zext nneg i8 %i.hd to i32
  br label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i
  %i.hq = icmp ne ptr %i.hi, %i.ey
  call void @llvm.assume(i1 %i.hq)
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 3 ; 3 uses
  %i.hs = load i8, ptr %i.hi, align 1, !alias.scope !727, !noalias !750, !noundef !4
  %i.ht = shl nuw nsw i32 %i.hm, 6
  %i.hu = and i8 %i.hs, 63
  %i.hv = zext nneg i8 %i.hu to i32
  %i.hw = or disjoint i32 %i.ht, %i.hv            ; 2 uses
  %i.hx = shl nuw nsw i32 %i.hg, 12
  %i.hy = or disjoint i32 %i.hw, %i.hx
  %i.hz = icmp samesign ugt i8 %i.hd, -17
  br i1 %i.hz, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i
  %i.ia = icmp ne ptr %i.hr, %i.ey
  call void @llvm.assume(i1 %i.ia)
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.11133.1.i, i64 4
  %i.ic = load i8, ptr %i.hr, align 1, !alias.scope !727, !noalias !750, !noundef !4
  %i.id = shl nuw nsw i32 %i.hg, 18
  %i.ie = and i32 %i.id, 1835008
  %i.if = shl nuw nsw i32 %i.hw, 6
  %i.ig = and i8 %i.ic, 63
  %i.ih = zext nneg i8 %i.ig to i32
  %i.ii = or disjoint i32 %i.if, %i.ih
  %i.ij = or disjoint i32 %i.ii, %i.ie
  br label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i, %bb.v, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i
  %.sroa.11133.2.i = phi ptr [ %i.hc, %bb.v ], [ %i.ib, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i ], [ %i.hr, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i ], [ %i.hi, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i101.i = phi i32 [ %i.hp, %bb.v ], [ %i.ij, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i103.i ], [ %i.hy, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i102.i ], [ %i.hn, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i99.i ] ; 2 uses
  %i.ik = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i101.i, 1114112
  call void @llvm.assume(i1 %i.ik)
  %i.il = ptrtoint ptr %.sroa.11133.2.i to i64
  %i.im = sub i64 %i.il, %i.ha
  %i.in = add i64 %i.im, %.sroa.17.1.i            ; 3 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i101.i, label %bb.t [
    i32 44, label %bb.w
    i32 32, label %bb.w
  ]

bb.w:                                             ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaENtB5_8Searcher4nextB17_.exit.i.i.i100.i
  %i.io = sub nuw i64 %.sroa.17.1.i, %.sroa.0.0297.i
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i: ; preds = %bb.t
  %i.ip = add i64 %i.fa, %.sroa.0.0297.i
  %i.iq = sub i64 %i.ex, %i.ip
  br label %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i

_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i: ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i, %bb.w
  %.sroa.17.2.i = phi i64 [ %i.in, %bb.w ], [ %.sroa.17.1.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ]
  %.sroa.11133.3.i = phi ptr [ %.sroa.11133.2.i, %bb.w ], [ %i.ey, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ]
  %.sroa.0.1.i = phi i64 [ %i.in, %bb.w ], [ %.sroa.0.0297.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ]
  %.sroa.4.1.i.i = phi i64 [ %i.io, %bb.w ], [ %i.iq, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE7get_endBY_.exit.i.i ] ; 3 uses
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %i.gr, i64 %.sroa.0.0297.i ; 2 uses
  %.not.i = icmp eq i64 %.sroa.4.1.i.i, 0
  br i1 %.not.i, label %.loopexit217.i, label %.lr.ph.i53

bb.x:                                             ; preds = %.loopexit217.i
  %i.ir = icmp ult i64 %i.jb, 1152921504606846976
  call void @llvm.assume(i1 %i.ir)
  switch i64 %i.jb, label %bb.z [
    i64 0, label %bb.aa
    i64 1, label %bb.y
  ]

bb.y:                                             ; preds = %bb.x, %.thread.i
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.sroa.430.i.sroa.6.7.copyload = phi i64 [ 1, %bb.y ], [ %i.jb, %bb.x ]
  %i.is = phi i8 [ 0, %bb.y ], [ %.sroa.03.2223.i, %bb.x ]
  %.sroa.430.i.sroa.3.7.copyload = load i64, ptr %i.n, align 8, !noalias !749
  %.sroa.430.i.sroa.5.7.copyload = load i64, ptr %i.gv, align 8, !noalias !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !749
  %i.it = inttoptr i64 %.sroa.430.i.sroa.5.7.copyload to ptr
  br label %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread

bb.aa:                                            ; preds = %bb.x
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !748
  %i.iu = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #22, !noalias !748 ; 3 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %bb.ab, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i, !prof !255

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25, !noalias !748
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i: ; preds = %bb.aa
  store i64 8, ptr %i.iu, align 8, !noalias !748
  %.val96.i = load i64, ptr %i.n, align 8, !range !40, !noalias !749, !noundef !4 ; 2 uses
  %i.iw = icmp eq i64 %.val96.i, 0
  br i1 %i.iw, label %.thread.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i
  %.val97.i = load ptr, ptr %i.gv, align 8, !noalias !749, !nonnull !4, !noundef !4
  %i.ix = shl nuw i64 %.val96.i, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val97.i, i64 noundef %i.ix, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !748
  br label %.thread.i

.thread.i:                                        ; preds = %bb.ac, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit104.i
  store i64 1, ptr %i.n, align 8, !noalias !749
  store ptr %i.iu, ptr %i.gv, align 8, !noalias !749
  br label %bb.y

.lr.ph.i53:                                       ; preds = %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i, %bb.af
  %.sroa.03.2293.i = phi i8 [ %.sroa.03.3.i, %bb.af ], [ %.sroa.03.0299.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ] ; 3 uses
  %.sroa.039.0292.i = phi i64 [ %i.iy, %bb.af ], [ 0, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ] ; 4 uses
  %i.iy = add nuw i64 %.sroa.039.0292.i, 1        ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.sroa.039.0292.i
  %i.ja = load i8, ptr %i.iz, align 1, !alias.scope !727, !noalias !748, !noundef !4
  switch i8 %i.ja, label %bb.ad [
    i8 43, label %bb.af
    i8 47, label %bb.ae
  ]

.loopexit217.i:                                   ; preds = %bb.af, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i
  %i.jb = phi i64 [ %i.kt, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i ], [ %i.gz, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ], [ %i.gz, %bb.af ] ; 4 uses
  %.sroa.03.2223.i = phi i8 [ %.sroa.03.2293.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.03.0299.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ], [ %.sroa.03.3.i, %bb.af ] ; 2 uses
  %.sroa.06.1.i = phi i1 [ %.not90.i, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i ], [ %.sroa.06.0298.i, %_RNvMsf_NtNtCs6JMX4GRUq9U_4core3str4iterINtB5_13SplitInternalNvCs7ggdWxGWrR_9uu_expand17is_space_or_commaE4nextBY_.exit.i ], [ %.sroa.06.0298.i, %bb.af ]
  br i1 %i.hb, label %bb.x, label %.preheader.i52

bb.ad:                                            ; preds = %.lr.ph.i53
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.sroa.039.0292.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !749
  %i.jd = sub nuw i64 %.sroa.4.1.i.i, %.sroa.039.0292.i
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.jc, i64 noundef %i.jd) #22, !noalias !748
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.je = load i64, ptr %i.m, align 8, !range !172, !alias.scope !766, !noalias !749, !noundef !4
  %i.jf = trunc nuw i64 %i.je to i1
  br i1 %i.jf, label %bb.ag, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i, !prof !255

bb.ae:                                            ; preds = %.lr.ph.i53
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i53
  %.sroa.03.3.i = phi i8 [ 1, %bb.ae ], [ 2, %.lr.ph.i53 ] ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.iy, %.sroa.4.1.i.i
  br i1 %exitcond.not.i, label %.loopexit217.i, label %.lr.ph.i53

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !769
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gx, i64 16, i1 false), !noalias !749
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @59, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @58, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #23, !noalias !770
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.ad
  %i.jg = load ptr, ptr %i.gx, align 8, !alias.scope !766, !noalias !749, !nonnull !4, !noundef !4 ; 8 uses
  %i.jh = load i64, ptr %i.gy, align 8, !alias.scope !766, !noalias !749, !noundef !4 ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !749
  switch i64 %i.jh, label %thread-pre-split.i.i [
    i64 0, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i
    i64 1, label %bb.ah
  ]

bb.ah:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i
  %i.ji = load i8, ptr %i.jg, align 1, !alias.scope !771, !noalias !774, !noundef !4 ; 2 uses
  switch i8 %i.ji, label %bb.ai [
    i8 43, label %.loopexit.thread.i
    i8 45, label %.loopexit.thread.i
  ]

thread-pre-split.i.i:                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i
  %.pr.i.i = load i8, ptr %i.jg, align 1, !alias.scope !771, !noalias !774
  br label %bb.ai

bb.ai:                                            ; preds = %thread-pre-split.i.i, %bb.ah
  %i.jj = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.ji, %bb.ah ]
  %cond.i.i = icmp eq i8 %i.jj, 43                ; 2 uses
  %i.jk = sext i1 %cond.i.i to i64
  %.sroa.15.0.i.i = add nsw i64 %i.jh, %i.jk      ; 4 uses
  %.sroa.0.0.idx.i.i = zext i1 %cond.i.i to i64
  %.sroa.0.0.i105.i = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.sroa.0.0.idx.i.i ; 2 uses
  %i.jl = icmp samesign ult i64 %.sroa.15.0.i.i, 17
  br i1 %i.jl, label %.preheader.i.i, label %.preheader56.i.i.preheader

.preheader.i.i:                                   ; preds = %bb.ai
  %.not5366.i.i = icmp eq i64 %.sroa.15.0.i.i, 0
  br i1 %.not5366.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %.lr.ph.i.i

.preheader56.i.i:                                 ; preds = %bb.al
  %.not52.i.i = icmp eq i64 %i.jn, 0
  br i1 %.not52.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.preheader56.i.i.preheader

.preheader56.i.i.preheader:                       ; preds = %bb.ai, %.preheader56.i.i
  %.sroa.0.1.i106.i986 = phi ptr [ %i.jm, %.preheader56.i.i ], [ %.sroa.0.0.i105.i, %bb.ai ] ; 2 uses
  %.sroa.15.1.i.i985 = phi i64 [ %i.jn, %.preheader56.i.i ], [ %.sroa.15.0.i.i, %bb.ai ]
  %.sroa.042.0.i.i984 = phi i64 [ %i.jy, %.preheader56.i.i ], [ 0, %bb.ai ]
  %i.jm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i106.i986, i64 1
  %i.jn = add nsw i64 %.sroa.15.1.i.i985, -1      ; 2 uses
  %i.jo = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i984, i64 10) ; 2 uses
  %i.jp = extractvalue { i64, i1 } %i.jo, 0       ; 2 uses
  %i.jq = extractvalue { i64, i1 } %i.jo, 1
  %i.jr = load i8, ptr %.sroa.0.1.i106.i986, align 1, !alias.scope !771, !noalias !774, !noundef !4 ; 2 uses
  br i1 %i.jq, label %bb.ak, label %bb.aj, !prof !255

bb.aj:                                            ; preds = %.preheader56.i.i.preheader
  %i.js = zext i8 %i.jr to i32
  %i.jt = add nsw i32 %i.js, -48                  ; 2 uses
  %i.ju = icmp ult i32 %i.jt, 10
  br i1 %i.ju, label %bb.al, label %.loopexit.i56

bb.ak:                                            ; preds = %.preheader56.i.i.preheader
  %i.jv = add i8 %i.jr, -48
  %i.jw = icmp ult i8 %i.jv, 10
  br i1 %i.jw, label %.loopexit216.i, label %.loopexit.i56

bb.al:                                            ; preds = %bb.aj
  %i.jx = zext nneg i32 %i.jt to i64
  %i.jy = add i64 %i.jp, %i.jx                    ; 3 uses
  %i.jz = icmp ult i64 %i.jy, %i.jp
  br i1 %i.jz, label %.loopexit216.i, label %.preheader56.i.i, !prof !255

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.am
  %.sroa.0.269.i.i = phi ptr [ %i.kg, %bb.am ], [ %.sroa.0.0.i105.i, %.preheader.i.i ] ; 2 uses
  %.sroa.15.268.i.i = phi i64 [ %i.kf, %bb.am ], [ %.sroa.15.0.i.i, %.preheader.i.i ]
  %.sroa.042.267.i.i = phi i64 [ %i.ki, %bb.am ], [ 0, %.preheader.i.i ]
  %i.ka = load i8, ptr %.sroa.0.269.i.i, align 1, !alias.scope !771, !noalias !774, !noundef !4
  %i.kb = zext i8 %i.ka to i32
  %i.kc = add nsw i32 %i.kb, -48                  ; 2 uses
  %i.kd = icmp ult i32 %i.kc, 10
  br i1 %i.kd, label %bb.am, label %.loopexit.i56

bb.am:                                            ; preds = %.lr.ph.i.i
  %i.ke = mul i64 %.sroa.042.267.i.i, 10
  %i.kf = add nsw i64 %.sroa.15.268.i.i, -1       ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i, i64 1
  %i.kh = zext nneg i32 %i.kc to i64
  %i.ki = add i64 %i.ke, %i.kh                    ; 2 uses
  %.not53.i.i = icmp eq i64 %i.kf, 0
  br i1 %.not53.i.i, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i, label %.lr.ph.i.i

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i: ; preds = %.preheader56.i.i, %bb.am
  %.sroa.12135.0.i = phi i64 [ %i.ki, %bb.am ], [ %i.jy, %.preheader56.i.i ] ; 3 uses
  %i.kj = icmp eq i64 %.sroa.12135.0.i, 0
  br i1 %i.kj, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %bb.an

bb.an:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i
  %i.kk = load i64, ptr %i.gw, align 8, !noalias !749, !noundef !4 ; 5 uses
  %.not88.i = icmp eq i64 %i.kk, 0
  br i1 %.not88.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.kl = load ptr, ptr %i.gv, align 8, !noalias !749, !nonnull !4, !noundef !4
  %i.km = getelementptr [8 x i8], ptr %i.kl, i64 %i.kk
  %i.kn = getelementptr i8, ptr %i.km, i64 -8
  %i.ko = load i64, ptr %i.kn, align 8, !noalias !748, !noundef !4
  %.not89.i = icmp ult i64 %i.ko, %.sroa.12135.0.i
  br i1 %.not89.i, label %bb.ap, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.ap:                                            ; preds = %bb.ao, %bb.an
  br i1 %.sroa.06.0298.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not90.i = icmp ne i8 %.sroa.03.2293.i, 0
  %i.kp = load i64, ptr %i.n, align 8, !range !40, !alias.scope !776, !noalias !749, !noundef !4
  %i.kq = icmp eq i64 %i.kk, %i.kp
  br i1 %i.kq, label %bb.ar, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i

bb.ar:                                            ; preds = %bb.aq
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsb8JHtmRizrl_12regex_syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #21, !noalias !748
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecjE8push_mutCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %bb.ar, %bb.aq
  %i.kr = load ptr, ptr %i.gv, align 8, !alias.scope !776, !noalias !749, !nonnull !4, !noundef !4
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.kr, i64 %i.kk
  store i64 %.sroa.12135.0.i, ptr %i.ks, align 8, !noalias !748
  %i.kt = add i64 %i.kk, 1                        ; 2 uses
  store i64 %i.kt, ptr %i.gw, align 8, !alias.scope !776, !noalias !749
  br label %.loopexit217.i

bb.as:                                            ; preds = %bb.ap
  %i.ku = icmp eq i8 %.sroa.03.2293.i, 1
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !748
  %i.kv = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #22, !noalias !748 ; 3 uses
  %i.kw = icmp eq ptr %i.kv, null                 ; 2 uses
  br i1 %i.ku, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  br i1 %i.kw, label %bb.av, label %bb.aw

bb.au:                                            ; preds = %bb.as
  br i1 %i.kw, label %bb.ax, label %bb.aw

bb.av:                                            ; preds = %bb.at
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25, !noalias !748
  unreachable

bb.aw:                                            ; preds = %bb.au, %bb.at
  %.sink.i = phi i8 [ 47, %bb.au ], [ 43, %bb.at ]
  store i8 %.sink.i, ptr %i.kv, align 1, !noalias !748
  %i.kx = ptrtoint ptr %i.kv to i64
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.ax:                                            ; preds = %bb.au
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25, !noalias !748
  unreachable

_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i, %bb.ao, %.preheader.i.i, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, %bb.bc, %bb.bl, %.loopexit.i56, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i, %bb.bf, %bb.bj, %bb.aw
  %.sroa.13.sroa.0.0 = phi i64 [ 0, %bb.bc ], [ 1, %bb.aw ], [ 0, %.loopexit.i56 ], [ %i.jh, %bb.bl ], [ %i.no, %bb.bj ], [ 0, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ %i.my, %bb.bf ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ 0, %bb.ao ], [ 0, %.preheader.i.i ], [ 0, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.jh, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.24.sroa.0.0 = phi i64 [ 1, %bb.bc ], [ %i.kx, %bb.aw ], [ 1, %.loopexit.i56 ], [ %i.nq, %bb.bl ], [ 1, %bb.bj ], [ 1, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ %i.ni, %bb.bf ], [ 1, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ 1, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ 1, %.preheader.i.i ], [ 1, %bb.ao ], [ 1, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.31.sroa.0.0 = phi i64 [ 0, %bb.bc ], [ 1, %bb.aw ], [ 0, %.loopexit.i56 ], [ %i.jh, %bb.bl ], [ %i.my, %bb.bj ], [ 0, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ %i.my, %bb.bf ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ 0, %bb.ao ], [ 0, %.preheader.i.i ], [ 0, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ %i.jh, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.42.0 = phi i64 [ undef, %bb.bc ], [ undef, %bb.aw ], [ undef, %.loopexit.i56 ], [ undef, %bb.bl ], [ %i.my, %bb.bj ], [ undef, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ undef, %bb.bf ], [ undef, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.38.0 = phi i64 [ undef, %bb.bc ], [ undef, %bb.aw ], [ undef, %.loopexit.i56 ], [ undef, %bb.bl ], [ %i.np, %bb.bj ], [ undef, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ undef, %bb.bf ], [ undef, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ undef, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ undef, %.preheader.i.i ], [ undef, %bb.ao ], [ undef, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.sroa.0120.0 = phi i64 [ -9223372036854775804, %bb.bc ], [ -9223372036854775806, %bb.aw ], [ -9223372036854775808, %.loopexit.i56 ], [ -9223372036854775804, %bb.bl ], [ 1, %bb.bj ], [ -9223372036854775808, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ -9223372036854775808, %bb.bf ], [ -9223372036854775808, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i ], [ -9223372036854775803, %bb.ao ], [ -9223372036854775805, %.preheader.i.i ], [ -9223372036854775805, %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.i ], [ -9223372036854775808, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultReNtNtNtB4_3str5error9Utf8ErrorE6unwrapCs7ggdWxGWrR_9uu_expand.exit.i ]
  %.val.i55 = load i64, ptr %i.n, align 8, !range !40, !noalias !749, !noundef !4 ; 2 uses
  %i.ky = icmp eq i64 %.val.i55, 0
  br i1 %i.ky, label %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit, label %bb.ay

bb.ay:                                            ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i
  %.val95.i = load ptr, ptr %i.gv, align 8, !noalias !749, !nonnull !4, !noundef !4
  %i.kz = shl nuw i64 %.val.i55, 3
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val95.i, i64 noundef %i.kz, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !748
  br label %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit

.loopexit.thread.i:                               ; preds = %bb.ah, %bb.ah
  %i.la = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  br label %.lr.ph.i.i.i111.preheader.i

.loopexit.i56:                                    ; preds = %bb.aj, %.lr.ph.i.i, %bb.ak
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.jh
  %i.lc = icmp samesign eq i64 %i.jh, 0
  br i1 %i.lc, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %.lr.ph.i.i.i111.preheader.i

.lr.ph.i.i.i111.preheader.i:                      ; preds = %.loopexit.i56, %.loopexit.thread.i
  %i.ld = phi ptr [ %i.la, %.loopexit.thread.i ], [ %i.lb, %.loopexit.i56 ] ; 4 uses
  br label %.lr.ph.i.i.i111.i

.lr.ph.i.i.i111.i:                                ; preds = %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, %.lr.ph.i.i.i111.preheader.i
  %i.le = phi i64 [ %i.mt, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i111.preheader.i ] ; 4 uses
  %i.lf = phi ptr [ %i.mp, %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i ], [ %i.jg, %.lr.ph.i.i.i111.preheader.i ] ; 6 uses
  %i.lg = ptrtoint ptr %i.lf to i64
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 1 ; 3 uses
  %i.li = load i8, ptr %i.lf, align 1, !alias.scope !779, !noalias !782, !noundef !4 ; 5 uses
  %i.lj = icmp sgt i8 %i.li, -1
  br i1 %i.lj, label %bb.az, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i: ; preds = %.lr.ph.i.i.i111.i
  %i.lk = and i8 %i.li, 31
  %i.ll = zext nneg i8 %i.lk to i32               ; 3 uses
  %i.lm = icmp ne ptr %i.lh, %i.ld
  call void @llvm.assume(i1 %i.lm)
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lf, i64 2 ; 3 uses
  %i.lo = load i8, ptr %i.lh, align 1, !alias.scope !779, !noalias !782, !noundef !4
  %i.lp = shl nuw nsw i32 %i.ll, 6
  %i.lq = and i8 %i.lo, 63
  %i.lr = zext nneg i8 %i.lq to i32               ; 2 uses
  %i.ls = or disjoint i32 %i.lp, %i.lr
  %i.lt = icmp samesign ugt i8 %i.li, -33
  br i1 %i.lt, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i, label %bb.ba

bb.az:                                            ; preds = %.lr.ph.i.i.i111.i
  %i.lu = zext nneg i8 %i.li to i32
  br label %bb.ba

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i
  %i.lv = icmp ne ptr %i.ln, %i.ld
  call void @llvm.assume(i1 %i.lv)
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lf, i64 3 ; 3 uses
  %i.lx = load i8, ptr %i.ln, align 1, !alias.scope !779, !noalias !782, !noundef !4
  %i.ly = shl nuw nsw i32 %i.lr, 6
  %i.lz = and i8 %i.lx, 63
  %i.ma = zext nneg i8 %i.lz to i32
  %i.mb = or disjoint i32 %i.ly, %i.ma            ; 2 uses
  %i.mc = shl nuw nsw i32 %i.ll, 12
  %i.md = or disjoint i32 %i.mb, %i.mc
  %i.me = icmp samesign ugt i8 %i.li, -17
  br i1 %i.me, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i, label %bb.ba

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i
  %i.mf = icmp ne ptr %i.lw, %i.ld
  call void @llvm.assume(i1 %i.mf)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lf, i64 4
  %i.mh = load i8, ptr %i.lw, align 1, !alias.scope !779, !noalias !782, !noundef !4
  %i.mi = shl nuw nsw i32 %i.ll, 18
  %i.mj = and i32 %i.mi, 1835008
  %i.mk = shl nuw nsw i32 %i.mb, 6
  %i.ml = and i8 %i.mh, 63
  %i.mm = zext nneg i8 %i.ml to i32
  %i.mn = or disjoint i32 %i.mk, %i.mm
  %i.mo = or disjoint i32 %i.mn, %i.mj
  br label %bb.ba

bb.ba:                                            ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i, %bb.az, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i
  %i.mp = phi ptr [ %i.lw, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i ], [ %i.mg, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i ], [ %i.ln, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i ], [ %i.lh, %bb.az ] ; 3 uses
  %.sroa.4.0.i.ph.i.i.i.i.i113.i = phi i32 [ %i.md, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit14.i.i.i.i.i.i115.i ], [ %i.mo, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit16.i.i.i.i.i.i116.i ], [ %i.ls, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit12.i.i.i.i.i.i112.i ], [ %i.lu, %bb.az ] ; 4 uses
  %i.mq = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i113.i, 1114112
  call void @llvm.assume(i1 %i.mq)
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.le, %i.lg
  %i.mt = add i64 %i.ms, %i.mr
  %i.mu = add nsw i32 %.sroa.4.0.i.ph.i.i.i.i.i113.i, -48
  %or.cond.i.i.i.i.i.i.i.i = icmp ult i32 %i.mu, 10
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.mv = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i113.i, 178
  br i1 %i.mv, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i, label %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i

_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i: ; preds = %bb.bb
  %i.mw = call noundef zeroext i1 @_RNvNtNtNtCs6JMX4GRUq9U_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %.sroa.4.0.i.ph.i.i.i.i.i113.i) #21, !noalias !796
  br i1 %i.mw, label %_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i

_RNvXs8_NtNtCs6JMX4GRUq9U_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc10is_numericENtB5_8Searcher4nextCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i, %bb.ba
  %i.mx = icmp eq ptr %i.mp, %i.ld
  br i1 %i.mx, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %.lr.ph.i.i.i111.i

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %_RNvXs3_NtNtCs6JMX4GRUq9U_4core3str7patternNvMNtNtB9_4char7methodsc10is_numericNtB5_11MultiCharEq7matchesCs7ggdWxGWrR_9uu_expand.exit.i.i.i.i.i, %bb.bb
  %i.my = sub nuw i64 %i.jh, %i.le                ; 14 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.jg, i64 %i.le ; 6 uses
  %.not.i.i54 = icmp eq i64 %i.jh, %i.le
  br i1 %.not.i.i54, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i: ; preds = %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchesNvMNtNtB5_4char7methodsc10is_numericECs7ggdWxGWrR_9uu_expand.exit.i
  %rhsc.i = load i8, ptr %i.mz, align 1, !noalias !748
  switch i8 %rhsc.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i [
    i8 47, label %bb.bd
    i8 43, label %bb.bd
  ]

.loopexit216.i:                                   ; preds = %bb.al, %bb.ak
  %.not.i118.i = icmp slt i64 %i.jh, 0
  br i1 %.not.i118.i, label %bb.bk, label %bb.bc, !prof !620

bb.bc:                                            ; preds = %.loopexit216.i
  %i.na = icmp eq i64 %i.jh, 0
  br i1 %i.na, label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.bc
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !797
  %i.nb = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.jh, i64 noundef range(i64 1, 9) 1) #22, !noalias !797 ; 3 uses
  %i.nc = icmp eq ptr %i.nb, null
  br i1 %i.nc, label %bb.bk, label %bb.bl

bb.bd:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i
  %cond.i = icmp eq i64 %i.my, 1
  br i1 %cond.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i: ; preds = %bb.bd
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !alias.scope !800, !noalias !748, !noundef !4
  %i.nf = icmp sgt i8 %i.ne, -65
  br i1 %i.nf, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i, label %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread194.i, !prof !803

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit.i
  %.not.i109 = icmp slt i64 %i.my, 0
  br i1 %.not.i109, label %bb.be, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i, !prof !804

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !805
  %i.ng = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.my, i64 noundef range(i64 1, 9) 1) #22, !noalias !805 ; 3 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4191.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCs7ggdWxGWrR_9uu_expand.exit124.thread.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4191.0.ph, i64 %i.my) #25, !noalias !748
  unreachable

bb.bf:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %i.ni = ptrtoint ptr %i.ng to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ng, ptr nonnull align 1 %i.mz, i64 %i.my, i1 false), !noalias !748
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread194.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.mz, i64 noundef %i.my, i64 noundef 0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #23, !noalias !748
  unreachable

_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i: ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.i, %bb.bd
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !808
  %i.nj = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #22, !noalias !808 ; 3 uses
  %i.nk = icmp eq ptr %i.nj, null
  br i1 %i.nk, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #25, !noalias !748
  unreachable

bb.bh:                                            ; preds = %_RNvNtNtCs6JMX4GRUq9U_4core3str6traits11check_range.exit.thread.i
  %i.nl = load i8, ptr %i.mz, align 1, !noalias !748
  store i8 %i.nl, ptr %i.nj, align 1, !noalias !748
  %.not.i128.i = icmp slt i64 %i.my, 0
  br i1 %.not.i128.i, label %bb.bi, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i, !prof !620

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i: ; preds = %bb.bh
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !811
  %i.nm = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.my, i64 noundef range(i64 1, 9) 1) #22, !noalias !811 ; 3 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i, %bb.bh
  %.sroa.4159.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i ], [ 0, %bb.bh ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4159.0.ph.i, i64 %i.my) #25, !noalias !748
  unreachable

bb.bj:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i129.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nm, ptr nonnull align 1 %i.mz, i64 %i.my, i1 false), !noalias !748
  %i.no = ptrtoint ptr %i.nj to i64
  %i.np = ptrtoint ptr %i.nm to i64
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

bb.bk:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i, %.loopexit216.i
  %.sroa.4151.0.ph.i = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i ], [ 0, %.loopexit216.i ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4151.0.ph.i, i64 %i.jh) #25, !noalias !748
  unreachable

bb.bl:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.nb, ptr nonnull align 1 %i.jg, i64 %i.jh, i1 false), !noalias !748
  %i.nq = ptrtoint ptr %i.nb to i64
  br label %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i

_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit: ; preds = %_RNvMsv_NtCs6JMX4GRUq9U_4core3numj27from_ascii_bytes_radix_impl.exit.thread174.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !749
  %i.nr = inttoptr i64 %.sroa.31.sroa.0.0 to ptr
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0120.0, ptr %i.ns, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.sroa.0.0, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.24.sroa.0.0, ptr %.sroa.525.sroa.4.0..sroa.525.0..sroa_idx.sroa_idx, align 8
  %.sroa.525.sroa.5.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.nr, ptr %.sroa.525.sroa.5.0..sroa.525.0..sroa_idx.sroa_idx, align 8
  %.sroa.525.sroa.6.0..sroa.525.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.38.0, ptr %.sroa.525.sroa.6.0..sroa.525.0..sroa_idx.sroa_idx, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.42.0, ptr %.sroa.626.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  %i.nt = icmp eq i64 %.sroa.0175.0.copyload, 0
  br i1 %i.nt, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit, label %bb.br

.loopexit321:                                     ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22
  %i.nu = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #22 ; 3 uses
  %i.nv = icmp eq ptr %i.nu, null
  br i1 %i.nv, label %bb.bm, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !255

bb.bm:                                            ; preds = %.loopexit321
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #25
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %.loopexit321
  store i64 8, ptr %i.nu, align 8
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82: ; preds = %bb.bu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit
  %.sroa.027.0.a = phi i8 [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.13.sroa.0.1271, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.13.sroa.0.1271, %bb.bu ]
  %.sroa.028.0 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.38.1272, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.38.1272, %bb.bu ]
  %.sroa.3.0 = phi ptr [ %i.nu, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.31.1273, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.31.1273, %bb.bu ]
  %.sroa.431.0 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %.sroa.24.1274, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81 ], [ %.sroa.24.1274, %bb.bu ]
  %i.nw = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 7) #22
  %i.nx = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @67, i64 noundef 7) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !814)
  call void @llvm.experimental.noalias.scope.decl(metadata !817)
  call void @llvm.experimental.noalias.scope.decl(metadata !820)
  br i1 %i.aa, label %.loopexit, label %.lr.ph.i.i.i58

.lr.ph.i.i.i58:                                   ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62
  %.sroa.0.0917.i.i.i59 = phi ptr [ %i.ny, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62 ], [ %i.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82 ] ; 3 uses
  %.sroa.8.016.i.i.i60 = phi i64 [ %i.nz, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62 ], [ 0, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82 ] ; 4 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i59, i64 16 ; 2 uses
  %i.nz = add nuw nsw i64 %.sroa.8.016.i.i.i60, 1
  %i.oa = getelementptr i8, ptr %.sroa.0.0917.i.i.i59, i64 8
  %.val7.i.i.i61 = load i64, ptr %i.oa, align 8, !noalias !823, !noundef !4
  %i.ob = icmp eq i64 %.val7.i.i.i61, 5
  br i1 %i.ob, label %.split.i.i.i64, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62

.split.i.i.i64:                                   ; preds = %.lr.ph.i.i.i58
  %.val.i.i.i65 = load ptr, ptr %.sroa.0.0917.i.i.i59, align 8, !noalias !823, !nonnull !4, !noundef !4 ; 2 uses
  %i.oc = load i32, ptr %.val.i.i.i65, align 1
  %i.od = xor i32 %i.oc, 1162627398
  %i.oe = getelementptr i8, ptr %.val.i.i.i65, i64 4
  %i.of = load i8, ptr %i.oe, align 1
  %i.og = zext i8 %i.of to i32
  %i.oh = xor i32 %i.og, 83
  %i.oi = or i32 %i.od, %i.oh
  %i.oj = icmp ne i32 %i.oi, 0
  %i.ok = zext i1 %i.oj to i32
  %i.ol = icmp eq i32 %i.ok, 0
  br i1 %i.ol, label %bb.bn, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i62: ; preds = %.split.i.i.i64, %.lr.ph.i.i.i58
  %i.om = icmp eq ptr %i.ny, %i.z
  br i1 %i.om, label %.loopexit, label %.lr.ph.i.i.i58

bb.bn:                                            ; preds = %.split.i.i.i64
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.oo = load i64, ptr %i.on, align 8, !alias.scope !827, !noalias !828, !noundef !4 ; 2 uses
  %i.op = icmp ult i64 %.sroa.8.016.i.i.i60, %i.oo
  br i1 %i.op, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i60, i64 noundef %i.oo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23, !noalias !823
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.oq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.or = load ptr, ptr %i.oq, align 8, !alias.scope !827, !noalias !828, !nonnull !4, !noundef !4
  %i.os = getelementptr inbounds nuw [104 x i8], ptr %i.or, i64 %.sroa.8.016.i.i.i60 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !829
  store i128 -49237559333878691962261109163680243548, ptr %i.j, align 16, !noalias !829
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.os, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.j) #22, !noalias !829
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !829
  %.sroa.013.0.copyload.i.i67 = load i128, ptr %i.k, align 16, !noalias !829 ; 3 uses
  %i.ot = icmp eq i128 %.sroa.013.0.copyload.i.i67, -49237559333878691962261109163680243548
  br i1 %i.ot, label %bb.bv, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ou = lshr i128 %.sroa.013.0.copyload.i.i67, 64
  %i.ov = trunc nuw i128 %i.ou to i64
  %i.ow = trunc i128 %.sroa.013.0.copyload.i.i67 to i64
  %i.ox = inttoptr i64 %i.ow to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !829
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @65, ptr %i.i, align 8, !noalias !830
  %i.oy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 5, ptr %i.oy, align 8, !noalias !830
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !830
  store i64 0, ptr %i.h, align 8, !noalias !834
  %.sroa.10181.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ox, ptr %.sroa.10181.8..sroa_idx, align 8, !noalias !834
  %.sroa.13182.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.ov, ptr %.sroa.13182.8..sroa_idx, align 8, !noalias !834
  %.sroa.16183.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16183.8..sroa_idx, align 8, !noalias !834
  %.sroa.16183.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16183.8..sroa_idx.sroa_idx, align 8, !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !830
  store ptr %i.i, ptr %i.g, align 8, !noalias !830
  %.sroa.42.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCs7ggdWxGWrR_9uu_expand, ptr %.sroa.42.0..sroa_idx.i76, align 8, !noalias !830
  %i.oz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.oz, align 8, !noalias !830
  %.sroa.46.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i77, align 8, !noalias !830
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #23, !noalias !830
  unreachable

bb.br:                                            ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5176.0.copyload, i64 noundef %.sroa.0175.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !835
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit: ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit, %bb.br
  %i.pa = icmp eq i64 %.sroa.0135.0.copyload, 0
  br i1 %i.pa, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit, label %bb.bs

bb.bs:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit
  %i.pb = shl nuw i64 %.sroa.0135.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.pb, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit

_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread: ; preds = %bb.z, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.24.1274 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.430.i.sroa.6.7.copyload, %bb.z ] ; 2 uses
  %.sroa.31.1273 = phi ptr [ %i.gt, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.it, %bb.z ] ; 2 uses
  %.sroa.38.1272 = phi i64 [ 1, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.430.i.sroa.3.7.copyload, %bb.z ] ; 2 uses
  %.sroa.13.sroa.0.1271 = phi i8 [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %i.is, %bb.z ] ; 2 uses
  %.sroa.0135.0219226270 = phi i64 [ %.sroa.0135.0219227, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.0135.0.copyload, %bb.z ] ; 2 uses
  %.sroa.7.0217228269 = phi ptr [ %.sroa.7.0217229, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.7.0.copyload, %bb.z ] ; 2 uses
  %.sroa.5176.0230268 = phi ptr [ %.sroa.5176.0231, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.5176.0.copyload, %bb.z ]
  %.sroa.0175.0232267 = phi i64 [ %.sroa.0175.0233, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.0175.0.copyload, %bb.z ] ; 2 uses
  %i.pc = icmp eq i64 %.sroa.0175.0232267, 0
  br i1 %i.pc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81, label %bb.bt

bb.bt:                                            ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5176.0230268, i64 noundef %.sroa.0175.0232267, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !838
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81: ; preds = %_RNvCs7ggdWxGWrR_9uu_expand14tabstops_parse.exit.thread, %bb.bt
  %i.pd = icmp eq i64 %.sroa.0135.0219226270, 0
  br i1 %i.pd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs7ggdWxGWrR_9uu_expand.exit81
  %i.pe = shl nuw i64 %.sroa.0135.0219226270, 4
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0217228269) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0217228269, i64 noundef %i.pe, i64 noundef range(i64 1, -9223372036854775807) 8) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecReEECs7ggdWxGWrR_9uu_expand.exit82

bb.bv:                                            ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !829
  %i.pf = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.os) #22, !noalias !841
  %i.pg = getelementptr inbounds nuw i8, ptr %i.os, i64 56
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !841, !nonnull !4, !noundef !4 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.os, i64 64
  %i.pj = load i64, ptr %i.pi, align 8, !noalias !841, !noundef !4 ; 2 uses
  %.idx991 = mul nuw nsw i64 %i.pj, 24
  %i.pk = getelementptr inbounds nuw i8, ptr %i.ph, i64 %.idx991 ; 4 uses
  %i.pl = xor i1 %i.nx, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !842
  %i.pm = icmp eq i64 %i.pj, 0
  br i1 %i.pm, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph988

select.unfold.i.i.i:                              ; preds = %.lr.ph988
  %i.pn = icmp eq ptr %i.po, %i.pk
  br i1 %i.pn, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph988

.lr.ph988:                                        ; preds = %bb.bv, %select.unfold.i.i.i
  %.sroa.5146.0703987 = phi ptr [ %i.po, %select.unfold.i.i.i ], [ %i.ph, %bb.bv ] ; 3 uses
  %i.po = getelementptr inbounds nuw i8, ptr %.sroa.5146.0703987, i64 24 ; 5 uses
  %i.pp = getelementptr i8, ptr %.sroa.5146.0703987, i64 16
  %.val4.i.i.i = load i64, ptr %i.pp, align 8, !noalias !846, !noundef !4 ; 3 uses
  %i.pq = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.pq, label %select.unfold.i.i.i, label %.loopexit.i112

.loopexit.i112:                                   ; preds = %.lr.ph988
  %i.pr = getelementptr i8, ptr %.sroa.5146.0703987, i64 8
  %.val.i.i.i116.le = load ptr, ptr %i.pr, align 8, !noalias !846, !nonnull !4, !noundef !4 ; 4 uses
  %.idx.le906 = shl nuw nsw i64 %.val4.i.i.i, 5
  %i.ps = getelementptr inbounds nuw i8, ptr %.val.i.i.i116.le, i64 %.idx.le906
  %i.pt = getelementptr inbounds nuw i8, ptr %.val.i.i.i116.le, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %.val.i613 = load ptr, ptr %.val.i.i.i116.le, align 8, !alias.scope !854, !noalias !857, !nonnull !4, !noundef !4
  %i.pu = getelementptr inbounds nuw i8, ptr %.val.i.i.i116.le, i64 8
  %.val1.i614 = load ptr, ptr %i.pu, align 8, !alias.scope !854, !noalias !857, !nonnull !4, !align !166, !noundef !4 ; 2 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %.val1.i614, i64 16
  %i.pw = load i64, ptr %i.pv, align 8, !range !168, !invariant.load !4, !noalias !858
  %i.px = add nsw i64 %i.pw, -1
  %i.py = and i64 %i.px, -16
  %i.pz = getelementptr inbounds nuw i8, ptr %.val.i613, i64 %i.py ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !858
  %i.qb = getelementptr inbounds nuw i8, ptr %.val1.i614, i64 24
  %i.qc = load ptr, ptr %i.qb, align 8, !invariant.load !4, !noalias !858, !nonnull !4
  call void %i.qc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.qa) #24, !noalias !858, !inline_history !859
  %i.qd = load i128, ptr %i.c, align 16, !noalias !858, !noundef !4
  %.not.i.i615 = icmp eq i128 %i.qd, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !858
  br i1 %.not.i.i615, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit, label %bb.bw, !prof !372

bb.bw:                                            ; preds = %.loopexit.i112
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !858
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit: ; preds = %.loopexit.i112
  %i.qe = add i64 %i.pf, -1                       ; 2 uses
  %i.qf = getelementptr i8, ptr %i.pz, i64 24
  %.val.i113 = load ptr, ptr %i.qf, align 8, !noalias !860, !nonnull !4, !noundef !4
  %i.qg = getelementptr i8, ptr %i.pz, i64 32
  %.val2.i = load i64, ptr %i.qg, align 8, !noalias !860, !noundef !4 ; 7 uses
  %i.qh = icmp eq i64 %.val2.i, 0
  br i1 %i.qh, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !861
  %i.qi = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val2.i, i64 noundef range(i64 1, 9) 1) #22, !noalias !861 ; 3 uses
  %i.qj = icmp eq ptr %i.qi, null
  br i1 %i.qj, label %bb.bx, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit

bb.bx:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val2.i) #25, !noalias !871
  unreachable

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qi, ptr nonnull readonly align 1 %.val.i113, i64 range(i64 0, -9223372036854775808) %.val2.i, i1 false), !noalias !872
  %.not.i83 = icmp eq i64 %.val2.i, -1
  br i1 %.not.i83, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299: ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit
  %.sroa.6194.0308 = phi ptr [ %i.qi, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit ], [ inttoptr (i64 1 to ptr), %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit ]
  %i.qk = call i64 @llvm.uadd.sat.i64(i64 %i.qe, i64 1) ; 2 uses
  %..i.i85 = call noundef i64 @llvm.umax.i64(i64 %i.qk, i64 4) ; 3 uses
  %i.ql = mul i64 %..i.i85, 24                    ; 3 uses
  %or.cond.i.i.i86 = icmp ugt i64 %i.qk, 384307168202282325
  br i1 %or.cond.i.i.i86, label %bb.bz, label %bb.by, !prof !620

bb.by:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299
  %i.qm = icmp eq i64 %i.ql, 0
  br i1 %i.qm, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87: ; preds = %bb.by
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !873
  %i.qn = call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.ql, i64 noundef range(i64 1, 9) 8) #22, !noalias !873 ; 2 uses
  %i.qo = icmp eq ptr %i.qn, null
  br i1 %i.qo, label %bb.bz, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88

bb.bz:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299
  %.sroa.4.0.ph.i.i108 = phi i64 [ 8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87 ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtNtB8_6traits8iterator8Iterator4nextCs7ggdWxGWrR_9uu_expand.exit.thread299 ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i.i108, i64 %i.ql) #25, !noalias !842
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87, %bb.by
  %.sroa.10.0.i.i89 = phi ptr [ inttoptr (i64 8 to ptr), %bb.by ], [ %i.qn, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87 ] ; 8 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.by ], [ %..i.i85, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i87 ] ; 6 uses
  %i.qp = icmp ule i64 %..i.i85, %.sroa.4.0.i.i
  call void @llvm.assume(i1 %i.qp)
  store i64 %.val2.i, ptr %.sroa.10.0.i.i89, align 8, !noalias !842
  %.sroa.6194.0..sroa.10.0.i.i89.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i89, i64 8
  store ptr %.sroa.6194.0308, ptr %.sroa.6194.0..sroa.10.0.i.i89.sroa_idx, align 8, !noalias !842
  %.sroa.7195.0..sroa.10.0.i.i89.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i89, i64 16
  store i64 %.val2.i, ptr %.sroa.7195.0..sroa.10.0.i.i89.sroa_idx, align 8, !noalias !842
  store i64 %.sroa.4.0.i.i, ptr %i.f, align 8, !noalias !842
  %.sroa.4.0..sroa_idx.i90 = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i89, ptr %.sroa.4.0..sroa_idx.i90, align 8, !noalias !842
  %.sroa.6.0..sroa_idx.i91 = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i91, align 8, !noalias !842
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.qq = icmp eq i64 %.val4.i.i.i, 1
  br i1 %i.qq, label %select.unfold.i.i.i19.i.preheader, label %.loopexit.i10.loopexit.i

select.unfold.i.i.i19.i.preheader:                ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88
  %i.qr = icmp eq ptr %i.po, %i.pk
  br i1 %i.qr, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph990

select.unfold.i.i.i19.i:                          ; preds = %.lr.ph990
  %i.qs = icmp eq ptr %i.qt, %i.pk
  br i1 %i.qs, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6cloned6ClonedINtNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches9ValuesRefB11_EEE9from_iterCs7ggdWxGWrR_9uu_expand.exit, label %.lr.ph990

.lr.ph990:                                        ; preds = %select.unfold.i.i.i19.i.preheader, %select.unfold.i.i.i19.i
  %.sroa.530.2.i392989 = phi ptr [ %i.qt, %select.unfold.i.i.i19.i ], [ %i.po, %select.unfold.i.i.i19.i.preheader ] ; 3 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.sroa.530.2.i392989, i64 24 ; 3 uses
  %i.qu = getelementptr i8, ptr %.sroa.530.2.i392989, i64 16
  %.val4.i.i.i23.i = load i64, ptr %i.qu, align 8, !noalias !882, !noundef !4 ; 2 uses
  %i.qv = icmp eq i64 %.val4.i.i.i23.i, 0
  br i1 %i.qv, label %select.unfold.i.i.i19.i, label %.loopexit.i10.loopexit.i.loopexit

.loopexit.i10.loopexit.i.loopexit:                ; preds = %.lr.ph990
  %i.qw = getelementptr i8, ptr %.sroa.530.2.i392989, i64 8
  %.val.i.i.i22.i = load ptr, ptr %i.qw, align 8, !noalias !882, !nonnull !4, !noundef !4 ; 2 uses
  %.idx403 = shl nuw nsw i64 %.val4.i.i.i23.i, 5
  %i.qx = getelementptr inbounds nuw i8, ptr %.val.i.i.i22.i, i64 %.idx403
  br label %.loopexit.i10.loopexit.i

.loopexit.i10.loopexit.i:                         ; preds = %.loopexit.i10.loopexit.i.loopexit, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88
  %.sroa.17.2.i94.lcssa = phi ptr [ %i.ps, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88 ], [ %i.qx, %.loopexit.i10.loopexit.i.loopexit ]
  %.sroa.11.5.i.lcssa = phi ptr [ %i.pt, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88 ], [ %.val.i.i.i22.i, %.loopexit.i10.loopexit.i.loopexit ] ; 3 uses
  %.sroa.530.2.i.lcssa = phi ptr [ %i.po, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7ggdWxGWrR_9uu_expand.exit.i88 ], [ %i.qt, %.loopexit.i10.loopexit.i.loopexit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %.val.i616 = load ptr, ptr %.sroa.11.5.i.lcssa, align 8, !alias.scope !890, !noalias !893, !nonnull !4, !noundef !4
  %i.qy = getelementptr inbounds nuw i8, ptr %.sroa.11.5.i.lcssa, i64 8
  %.val1.i617 = load ptr, ptr %i.qy, align 8, !alias.scope !890, !noalias !893, !nonnull !4, !align !166, !noundef !4 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %.val1.i617, i64 16
  %i.ra = load i64, ptr %i.qz, align 8, !range !168, !invariant.load !4, !noalias !894
  %i.rb = add nsw i64 %i.ra, -1
  %i.rc = and i64 %i.rb, -16
  %i.rd = getelementptr inbounds nuw i8, ptr %.val.i616, i64 %i.rc ; 3 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !894
  %i.rf = getelementptr inbounds nuw i8, ptr %.val1.i617, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8, !invariant.load !4, !noalias !894, !nonnull !4
  call void %i.rg(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.re) #24, !noalias !894, !inline_history !895
  %i.rh = load i128, ptr %i.b, align 16, !noalias !894, !noundef !4
  %.not.i.i618 = icmp eq i128 %i.rh, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !894
  br i1 %.not.i.i618, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619, label %bb.ca, !prof !372

bb.ca:                                            ; preds = %.loopexit.i10.loopexit.i
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #23, !noalias !894
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCs7ggdWxGWrR_9uu_expand.exit619: ; preds = %.loopexit.i10.loopexit.i
  %i.ri = getelementptr i8, ptr %i.rd, i64 24
  %.val.i12.i = load ptr, ptr %i.ri, align 8, !noalias !896, !nonnull !4, !noundef !4
  %i.rj = getelementptr i8, ptr %i.rd, i64 32
  %.val2.i13.i = load i64, ptr %i.rj, align 8, !noalias !896, !noundef !4 ; 6 uses
  %i.rk = icmp eq i64 %.val2.i13.i, 0
end_hunk_2
