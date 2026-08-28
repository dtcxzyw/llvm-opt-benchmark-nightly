Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_base32-9e01f370e39e803c.uu_base32.920a41f3072ac136-cgu.0?download=true
inline.NumInlined: 585
inline.NumDeleted: 338
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 6
begin_hunk_0
@123 = private unnamed_addr constant [8 x i8] c"UIoError", align 1
@124 = private unnamed_addr constant [7 x i8] c"context", align 1
@125 = private unnamed_addr constant [5 x i8] c"inner", align 1
@126 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@127 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8203884416791978196 to ptr), ptr inttoptr (i64 -4502996807296486835 to ptr) }>, align 8
@128 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8022765338115755166 to ptr), ptr inttoptr (i64 -4205221647133633730 to ptr) }>, align 8
@129 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7465031386275593344 to ptr), ptr inttoptr (i64 2227572798057049637 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCscxmO3cvmuC8_9uu_base3221CAPTURE_STARTUP_STATE], section "llvm.metadata"

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #22, !noalias !44
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !41, !noalias !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !44
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.e, %bb.f
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #23
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #22, !noalias !84
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !81, !noalias !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ab = getelementptr inbounds nuw [144 x i8], ptr %i.aa, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ac, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ae = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.af = mul nuw nsw i64 %i.ae, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ab, i64 %i.af, i1 false), !noalias !84
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.d, %bb.e
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #23
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #22, !noalias !124
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !121, !noalias !124
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !124
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.d, %bb.e
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #23
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #24
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCscxmO3cvmuC8_9uu_base32.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !126, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit, label %bb.b

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !127, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !127
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !align !130, !noundef !4 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !4 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void %i.c(ptr noundef nonnull %i.d) #25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !40, !invariant.load !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvXs8_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscxmO3cvmuC8_9uu_base32.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !131, !invariant.load !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) %i.i) #23
  br label %_RNvXs8_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscxmO3cvmuC8_9uu_base32.exit

_RNvXs8_NtCs7tKScEop1B6_5alloc5boxedINtB5_3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_ENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.c, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtCs2vKOLqTMYjT_3std2fs4FileEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECscxmO3cvmuC8_9uu_base32.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load i32, ptr %i.c, align 8, !range !132, !noundef !4
  %i.d = tail call noundef i32 @close(i32 noundef %.val2) #23 ; 0 uses
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader9BufReaderNtNtNtCs2vKOLqTMYjT_3std2io5stdio5StdinEECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECscxmO3cvmuC8_9uu_base32.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %.val1, i64 noundef 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !40, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
end_hunk_0
begin_hunk_1_@_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map15filter_map_foldTjRhERShuNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffer0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1f_NCB1l_s_0E0E0B1r_:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !359, !noalias !360, !nonnull !4, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cb = load ptr, ptr %i.ca, align 8, !alias.scope !359, !noalias !360, !nonnull !4, !align !130, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cd = load ptr, ptr %i.cc, align 8, !alias.scope !359, !noalias !360, !nonnull !4, !align !130, !noundef !4 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !range !331, !noalias !359, !noundef !4
  %i.cf = trunc nuw i64 %i.ce to i1
  br i1 %i.cf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !359, !noundef !4
  %i.ci = icmp eq i64 %i.ch, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i
  %.sroa.0.0.i.i5 = phi i1 [ %i.ci, %bb.t ], [ false, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultuINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtCsh036I4OHgIr_6uucore4mods5error6UErrorEL_EE6unwrapCscxmO3cvmuC8_9uu_base32.exit.i.i ]
  %i.cj = getelementptr i8, ptr %i.cb, i64 56
  %.val2.i.i = load ptr, ptr %i.cj, align 8, !noalias !359
  %i.ck = tail call fastcc noundef ptr @_RNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode15write_to_output(ptr noalias nofree noundef align 8 dereferenceable(32) %i.bx, ptr noalias nofree noundef align 8 dereferenceable(32) %i.bq, ptr noundef nonnull %i.bz, ptr %.val2.i.i, i1 noundef zeroext false, i1 noundef zeroext %.sroa.0.0.i.i5) #23, !noalias !359 ; 2 uses
  %.not.i1.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i1.i.i, label %_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callRShNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffers_0E0B1q_.exit, label %bb.v, !prof !272

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !356
  store ptr %i.ck, ptr %i.a, align 8, !noalias !356
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @47, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #24, !noalias !359
  unreachable

_RNCINvNvNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator8for_each4callRShNCNvNtNtCscxmO3cvmuC8_9uu_base3211base_common11fast_encode18fast_encode_buffers_0E0B1q_.exit: ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque11spec_extendINtB7_8VecDequehEINtB5_10SpecExtendRhINtNtNtCs6JMX4GRUq9U_4core5slice4iter4IterhEE11spec_extendCscxmO3cvmuC8_9uu_base32.exit.i, %bb.u
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define void @_RNvCscxmO3cvmuC8_9uu_base326uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 12) #23
  call void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common8base_app(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @38, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 6, ptr %i.d, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB2_6Config4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 10 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [40 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [16 x i8], align 16               ; 4 uses
  %i.r = alloca [16 x i8], align 16               ; 4 uses
  %i.s = alloca [16 x i8], align 16               ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [40 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 16               ; 4 uses
  %i.x = alloca [16 x i8], align 16               ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 3 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 8 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 7 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !371, !noalias !372, !nonnull !4, !noundef !4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !371, !noalias !372, !noundef !4 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.ai, 4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i.i.i ; 2 uses
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.al, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.ag, %bb.a ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.am, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.am = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.an = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.an, align 8, !noalias !376, !noundef !4
  %i.ao = icmp eq i64 %.val7.i.i.i, 4
  br i1 %i.ao, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %.val.i.i.i = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !376, !nonnull !4, !noundef !4
  %i.ap = load i32, ptr %.val.i.i.i, align 1
  %i.aq = icmp ne i32 %i.ap, 1701603686
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.b, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i
  %i.at = icmp eq ptr %i.al, %i.aj
  br i1 %i.at, label %.loopexit164, label %.lr.ph.i.i.i

bb.b:                                             ; preds = %.split.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !371, !noalias !372, !noundef !4 ; 2 uses
  %i.aw = icmp ult i64 %.sroa.8.016.i.i.i, %i.av
  br i1 %i.aw, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.av, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !376
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !371, !noalias !372, !nonnull !4, !noundef !4
  %i.az = getelementptr inbounds nuw [104 x i8], ptr %i.ay, i64 %.sroa.8.016.i.i.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !377
  store i128 -49237559333878691962261109163680243548, ptr %i.w, align 16, !noalias !377
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.w) #23, !noalias !377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !377
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.x, align 16, !noalias !377 ; 3 uses
  %i.ba = icmp eq i128 %.sroa.013.0.copyload.i.i, -49237559333878691962261109163680243548
  br i1 %i.ba, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.bc = trunc nuw i128 %i.bb to i64
  %i.bd = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.be = inttoptr i64 %i.bd to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store ptr @103, ptr %i.v, align 8, !noalias !378
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i64 4, ptr %i.bf, align 8, !noalias !378
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !378
  store i64 0, ptr %i.u, align 8, !noalias !382
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.be, ptr %.sroa.10.8..sroa_idx, align 8, !noalias !382
  %.sroa.13101.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.bc, ptr %.sroa.13101.8..sroa_idx, align 8, !noalias !382
  %.sroa.16.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 -5815876261132279644, ptr %.sroa.16.8..sroa_idx, align 8, !noalias !382
  %.sroa.16.8..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i64 -2669173439883760220, ptr %.sroa.16.8..sroa_idx.sroa_idx, align 8, !noalias !382
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !378
  store ptr %i.v, ptr %i.t, align 8, !noalias !378
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCscxmO3cvmuC8_9uu_base32, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !378
  %i.bg = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.bg, align 8, !noalias !378
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !378
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24, !noalias !378
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !377
  %i.bh = call noundef i64 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg8num_vals(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.az) #23, !noalias !383 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !383, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !383, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bl, 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx ; 3 uses
  %i.bn = icmp eq i64 %i.bl, 0
  br i1 %i.bn, label %select.unfold.i.i._crit_edge, label %.lr.ph

select.unfold.i.i:                                ; preds = %.lr.ph
  %i.bo = icmp eq ptr %i.bp, %i.bm
  br i1 %i.bo, label %select.unfold.i.i._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %select.unfold.i.i
  %.sroa.681.0180429 = phi ptr [ %i.bp, %select.unfold.i.i ], [ %i.bj, %bb.f ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.681.0180429, i64 24 ; 4 uses
  %i.bq = getelementptr i8, ptr %.sroa.681.0180429, i64 16
  %.val4.i.i = load i64, ptr %i.bq, align 8, !noalias !384, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %.val4.i.i, 0
  br i1 %i.br, label %select.unfold.i.i, label %bb.n

.loopexit164:                                     ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.ak, %bb.aj
  %.sroa.9.0 = phi i64 [ %.sroa.9.0.copyload, %bb.ak ], [ undef, %bb.aj ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 5 uses
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %bb.ak ], [ undef, %bb.aj ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 7 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.ak ], [ -1, %bb.aj ], [ -1, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  call void @llvm.experimental.noalias.scope.decl(metadata !395)
  br label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %.loopexit164, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33
  %.sroa.0.0917.i.i.i30 = phi ptr [ %i.bs, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ], [ %i.ag, %.loopexit164 ] ; 3 uses
  %.sroa.8.016.i.i.i31 = phi i64 [ %i.bt, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ], [ 0, %.loopexit164 ] ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i30, i64 16 ; 2 uses
  %i.bt = add nuw nsw i64 %.sroa.8.016.i.i.i31, 1
  %i.bu = getelementptr i8, ptr %.sroa.0.0917.i.i.i30, i64 8
  %.val7.i.i.i32 = load i64, ptr %i.bu, align 8, !noalias !398, !noundef !4
  %i.bv = icmp eq i64 %.val7.i.i.i32, 4
  br i1 %i.bv, label %.split.i.i.i34, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33

.split.i.i.i34:                                   ; preds = %.lr.ph.i.i.i29
  %.val.i.i.i35 = load ptr, ptr %.sroa.0.0917.i.i.i30, align 8, !noalias !398, !nonnull !4, !noundef !4
  %i.bw = load i32, ptr %.val.i.i.i35, align 1
  %i.bx = icmp ne i32 %i.bw, 1885434487
  %i.by = zext i1 %i.bx to i32
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.g, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33: ; preds = %.split.i.i.i34, %.lr.ph.i.i.i29
  %i.ca = icmp eq ptr %i.bs, %i.aj
  br i1 %i.ca, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %.lr.ph.i.i.i29

bb.g:                                             ; preds = %.split.i.i.i34
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !402, !noalias !403, !noundef !4 ; 2 uses
  %i.cd = icmp ult i64 %.sroa.8.016.i.i.i31, %i.cc
  br i1 %i.cd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i31, i64 noundef %i.cc, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #24, !noalias !398
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !402, !noalias !403, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw [104 x i8], ptr %i.cf, i64 %.sroa.8.016.i.i.i31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !404
  store i128 53410479646238849826493945191968316847, ptr %i.r, align 16, !noalias !404
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.r) #23, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !404
  %.sroa.013.0.copyload.i.i37 = load i128, ptr %i.s, align 16, !noalias !404 ; 3 uses
  %i.ch = icmp eq i128 %.sroa.013.0.copyload.i.i37, 53410479646238849826493945191968316847
  br i1 %i.ch, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !404
  %i.ci = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cg) #23, !noalias !405 ; 3 uses
  %.not8.i = icmp eq ptr %i.ci, null
  br i1 %.not8.i, label %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val.i = load ptr, ptr %i.ci, align 8, !noalias !405, !nonnull !4, !noundef !4
  %i.cj = getelementptr i8, ptr %i.ci, i64 8
  %.val10.i = load ptr, ptr %i.cj, align 8, !noalias !405, !nonnull !4, !align !130, !noundef !4 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !range !131, !invariant.load !4, !noalias !405
  %i.cm = add nsw i64 %i.cl, -1
  %i.cn = and i64 %i.cm, -16
  %i.co = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.cn ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !405
  %i.cq = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !invariant.load !4, !noalias !405, !nonnull !4
  call void %i.cr(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.q, ptr noundef nonnull %i.cp) #25, !noalias !405, !inline_history !406
  %i.cs = load i128, ptr %i.q, align 16, !noalias !405, !noundef !4
  %.not.i = icmp eq i128 %i.cs, 53410479646238849826493945191968316847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !405
  br i1 %.not.i, label %bb.al, label %bb.l, !prof !272

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @11) #24, !noalias !405
  unreachable

bb.m:                                             ; preds = %bb.i
  %i.ct = lshr i128 %.sroa.013.0.copyload.i.i37, 64
  %i.cu = trunc nuw i128 %i.ct to i64
  %i.cv = trunc i128 %.sroa.013.0.copyload.i.i37 to i64
  %i.cw = inttoptr i64 %i.cv to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @104, ptr %i.p, align 8, !noalias !407
  %i.cx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 4, ptr %i.cx, align 8, !noalias !407
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !407
  store i64 0, ptr %i.o, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.cw, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.cu, ptr %.sroa.11110.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i128 53410479646238849826493945191968316847, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !407
  store ptr %i.p, ptr %i.n, align 8, !noalias !407
  %.sroa.42.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCscxmO3cvmuC8_9uu_base32, ptr %.sroa.42.0..sroa_idx.i42, align 8, !noalias !407
  %i.cy = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %i.o, ptr %i.cy, align 8, !noalias !407
  %.sroa.46.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i43, align 8, !noalias !407
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #24, !noalias !407
  unreachable

bb.n:                                             ; preds = %.lr.ph
  %i.cz = getelementptr i8, ptr %.sroa.681.0180429, i64 8
  %.val.i.i = load ptr, ptr %i.cz, align 8, !noalias !384, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  %.val.i266.a = load ptr, ptr %.val.i.i, align 8, !alias.scope !410, !noalias !413, !nonnull !4, !noundef !4
  %i.da = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.val1.i = load ptr, ptr %i.da, align 8, !alias.scope !410, !noalias !413, !nonnull !4, !align !130, !noundef !4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !131, !invariant.load !4, !noalias !414
  %i.dd = add nsw i64 %i.dc, -1
  %i.de = and i64 %i.dd, -16
  %i.df = getelementptr inbounds nuw i8, ptr %.val.i266.a, i64 %i.de ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !414
  %i.dh = getelementptr inbounds nuw i8, ptr %.val1.i, i64 24
  %i.di = load ptr, ptr %i.dh, align 8, !invariant.load !4, !noalias !414, !nonnull !4
  call void %i.di(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.dg) #25, !noalias !414, !inline_history !415
  %i.dj = load i128, ptr %i.c, align 16, !noalias !414, !noundef !4
  %.not.i.i = icmp eq i128 %i.dj, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !414
  br i1 %.not.i.i, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit, label %bb.o, !prof !272

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #24, !noalias !414
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 32
  %i.dl = icmp eq i64 %.val4.i.i, 1
  br i1 %i.dl, label %select.unfold.i.i54.preheader, label %.sink.split.i.i.i49._crit_edge

select.unfold.i.i54.preheader:                    ; preds = %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit
  %i.dm = icmp eq ptr %i.bp, %i.bm
  br i1 %i.dm, label %select.unfold.i.i54._crit_edge, label %.sink.split.i.i.i49

select.unfold.i.i54:                              ; preds = %.sink.split.i.i.i49
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.bm
  br i1 %i.do, label %select.unfold.i.i54._crit_edge, label %.sink.split.i.i.i49

.sink.split.i.i.i49:                              ; preds = %select.unfold.i.i54.preheader, %select.unfold.i.i54
  %i.dp = phi ptr [ %i.dn, %select.unfold.i.i54 ], [ %i.bp, %select.unfold.i.i54.preheader ] ; 3 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %.val4.i.i58 = load i64, ptr %i.dq, align 8, !noalias !416, !noundef !4
  %i.dr = icmp eq i64 %.val4.i.i58, 0
  br i1 %i.dr, label %select.unfold.i.i54, label %.sink.split.i.i.i49._crit_edge.loopexit

select.unfold.i.i._crit_edge:                     ; preds = %select.unfold.i.i, %bb.f
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @48) #24
  unreachable

.sink.split.i.i.i49._crit_edge.loopexit:          ; preds = %.sink.split.i.i.i49
  %i.ds = getelementptr i8, ptr %i.dp, i64 8
  %.val.i.i57 = load ptr, ptr %i.ds, align 8, !noalias !416, !nonnull !4, !noundef !4
  br label %.sink.split.i.i.i49._crit_edge

.sink.split.i.i.i49._crit_edge:                   ; preds = %.sink.split.i.i.i49._crit_edge.loopexit, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit
  %spec.select.i18.i.i47.lcssa = phi ptr [ %i.dk, %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit ], [ %.val.i.i57, %.sink.split.i.i.i49._crit_edge.loopexit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !421)
  %.val.i267 = load ptr, ptr %spec.select.i18.i.i47.lcssa, align 8, !alias.scope !421, !noalias !424, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw i8, ptr %spec.select.i18.i.i47.lcssa, i64 8
  %.val1.i268 = load ptr, ptr %i.dt, align 8, !alias.scope !421, !noalias !424, !nonnull !4, !align !130, !noundef !4 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.val1.i268, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !range !131, !invariant.load !4, !noalias !425
  %i.dw = add nsw i64 %i.dv, -1
  %i.dx = and i64 %i.dw, -16
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i267, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !425
  %i.ea = getelementptr inbounds nuw i8, ptr %.val1.i268, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !invariant.load !4, !noalias !425, !nonnull !4
  call void %i.eb(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.dz) #25, !noalias !425, !inline_history !415
  %i.ec = load i128, ptr %i.b, align 16, !noalias !425, !noundef !4
  %.not.i.i269 = icmp eq i128 %i.ec, -49237559333878691962261109163680243548
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !425
  br i1 %.not.i.i269, label %_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit270, label %bb.p, !prof !272

bb.p:                                             ; preds = %.sink.split.i.i.i49._crit_edge
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @9, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #24, !noalias !425
  unreachable

_RNSINvNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matches19unwrap_downcast_refNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringE5reifyCscxmO3cvmuC8_9uu_base32.exit270: ; preds = %.sink.split.i.i.i49._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store i64 0, ptr %i.ae, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.416.0..sroa_idx, align 8
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store i64 0, ptr %.sroa.517.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ee = load ptr, ptr %i.ed, align 8, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
end_hunk_1
begin_hunk_2_@_RNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB2_6Config4from:bb.a
  %i.ip = extractvalue { i64, i1 } %i.in, 1
  br i1 %i.ip, label %.loopexit.i2.i, label %bb.av, !prof !283

bb.av:                                            ; preds = %.lr.ph.i.i.i69
  %i.iq = load i8, ptr %.sroa.0.1136.i.i.i, align 1, !alias.scope !459, !noalias !462, !noundef !4
  %i.ir = zext i8 %i.iq to i32
  %i.is = add nsw i32 %i.ir, -48                  ; 2 uses
  %i.it = icmp ult i32 %i.is, 10
  br i1 %i.it, label %bb.aw, label %.loopexit.i2.i

bb.aw:                                            ; preds = %bb.av
  %i.iu = zext nneg i32 %i.is to i64
  %i.iv = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.io, i64 %i.iu) ; 2 uses
  %i.iw = extractvalue { i64, i1 } %i.iv, 1
  br i1 %i.iw, label %.loopexit.i2.i, label %bb.ax, !prof !283

bb.ax:                                            ; preds = %bb.aw
  %i.ix = extractvalue { i64, i1 } %i.iv, 0       ; 2 uses
  %.not102.i.i.i = icmp eq i64 %i.im, 0
  br i1 %.not102.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i69

.lr.ph141.i.i.i:                                  ; preds = %.preheader114.i.i.i, %bb.ay
  %.sroa.0.2140.i.i.i = phi ptr [ %i.je, %bb.ay ], [ %i.ii, %.preheader114.i.i.i ] ; 2 uses
  %.sroa.26.2139.i.i.i = phi i64 [ %i.jd, %bb.ay ], [ %i.ij, %.preheader114.i.i.i ]
  %.sroa.084.2138.i.i.i = phi i64 [ %i.jg, %bb.ay ], [ 0, %.preheader114.i.i.i ]
  %i.iy = load i8, ptr %.sroa.0.2140.i.i.i, align 1, !alias.scope !459, !noalias !462, !noundef !4
  %i.iz = zext i8 %i.iy to i32
  %i.ja = add nsw i32 %i.iz, -48                  ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 10
  br i1 %i.jb, label %bb.ay, label %.loopexit.i2.i

bb.ay:                                            ; preds = %.lr.ph141.i.i.i
  %i.jc = mul i64 %.sroa.084.2138.i.i.i, 10
  %i.jd = add nsw i64 %.sroa.26.2139.i.i.i, -1    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i.i, i64 1
  %i.jf = zext nneg i32 %i.ja to i64
  %i.jg = sub i64 %i.jc, %i.jf                    ; 2 uses
  %.not103.i.i.i = icmp eq i64 %i.jd, 0
  br i1 %.not103.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph141.i.i.i

bb.az:                                            ; preds = %bb.at, %bb.as
  %.sroa.26.0.i.i.i = phi i64 [ %i.ih, %bb.at ], [ %.sroa.8.0.copyload7.i.i, %bb.as ] ; 4 uses
  %.sroa.0.0.i.i.i = phi ptr [ %i.ig, %bb.at ], [ %.sroa.5.0.copyload4.i.i, %bb.as ] ; 2 uses
  %i.jh = icmp samesign ult i64 %.sroa.26.0.i.i.i, 16
  br i1 %i.jh, label %.preheader.i.i.i, label %.preheader111.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.az
  %.not105146.i.i.i = icmp eq i64 %.sroa.26.0.i.i.i, 0
  br i1 %.not105146.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.preheader111.i.i.i:                              ; preds = %bb.az, %bb.bc
  %.sroa.0.3145.i.i.i = phi ptr [ %i.ji, %bb.bc ], [ %.sroa.0.0.i.i.i, %bb.az ] ; 2 uses
  %.sroa.26.3144.i.i.i = phi i64 [ %i.jj, %bb.bc ], [ %.sroa.26.0.i.i.i, %bb.az ]
  %.sroa.084.3143.i.i.i = phi i64 [ %i.ju, %bb.bc ], [ 0, %bb.az ]
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i.i, i64 1
  %i.jj = add nsw i64 %.sroa.26.3144.i.i.i, -1    ; 2 uses
  %i.jk = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i.i, i64 10) ; 2 uses
  %i.jl = extractvalue { i64, i1 } %i.jk, 0
  %i.jm = extractvalue { i64, i1 } %i.jk, 1
  br i1 %i.jm, label %.loopexit.i2.i, label %bb.ba, !prof !283

bb.ba:                                            ; preds = %.preheader111.i.i.i
  %i.jn = load i8, ptr %.sroa.0.3145.i.i.i, align 1, !alias.scope !459, !noalias !462, !noundef !4
  %i.jo = zext i8 %i.jn to i32
  %i.jp = add nsw i32 %i.jo, -48                  ; 2 uses
  %i.jq = icmp ult i32 %i.jp, 10
  br i1 %i.jq, label %bb.bb, label %.loopexit.i2.i

bb.bb:                                            ; preds = %bb.ba
  %i.jr = zext nneg i32 %i.jp to i64
  %i.js = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.jl, i64 %i.jr) ; 2 uses
  %i.jt = extractvalue { i64, i1 } %i.js, 1
  br i1 %i.jt, label %.loopexit.i2.i, label %bb.bc, !prof !283

bb.bc:                                            ; preds = %bb.bb
  %i.ju = extractvalue { i64, i1 } %i.js, 0       ; 2 uses
  %.not104.i.i.i = icmp eq i64 %i.jj, 0
  br i1 %.not104.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader111.i.i.i

.lr.ph150.i.i.i:                                  ; preds = %.preheader.i.i.i, %bb.bd
  %.sroa.0.4149.i.i.i = phi ptr [ %i.kb, %bb.bd ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.26.4148.i.i.i = phi i64 [ %i.ka, %bb.bd ], [ %.sroa.26.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.084.4147.i.i.i = phi i64 [ %i.kd, %bb.bd ], [ 0, %.preheader.i.i.i ]
  %i.jv = load i8, ptr %.sroa.0.4149.i.i.i, align 1, !alias.scope !459, !noalias !462, !noundef !4
  %i.jw = zext i8 %i.jv to i32
  %i.jx = add nsw i32 %i.jw, -48                  ; 2 uses
  %i.jy = icmp ult i32 %i.jx, 10
  br i1 %i.jy, label %bb.bd, label %.loopexit.i2.i

bb.bd:                                            ; preds = %.lr.ph150.i.i.i
  %i.jz = mul i64 %.sroa.084.4147.i.i.i, 10
  %i.ka = add nsw i64 %.sroa.26.4148.i.i.i, -1    ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i.i, i64 1
  %i.kc = zext nneg i32 %i.jx to i64
  %i.kd = add i64 %i.jz, %i.kc                    ; 2 uses
  %.not105.i.i.i = icmp eq i64 %i.ka, 0
  br i1 %.not105.i.i.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph150.i.i.i

.loopexit.i2.i:                                   ; preds = %bb.aw, %bb.av, %.lr.ph.i.i.i69, %.lr.ph141.i.i.i, %bb.bb, %bb.ba, %.preheader111.i.i.i, %.lr.ph150.i.i.i, %bb.ar, %bb.ar, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !452
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload4.i.i, i64 noundef %.sroa.8.0.copyload7.i.i) #22, !noalias !452
  %i.ke = load i8, ptr %i.i, align 8, !range !265, !noalias !452, !noundef !4
  %i.kf = trunc nuw i8 %i.ke to i1
  br i1 %i.kf, label %bb.bg, label %bb.bh

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.ax, %bb.ay, %bb.bc, %bb.bd, %.preheader.i.i.i, %.preheader114.i.i.i
  %.sroa.1511.0.i.i = phi i64 [ %i.kd, %bb.bd ], [ %i.jg, %bb.ay ], [ %i.ju, %bb.bc ], [ 0, %.preheader.i.i.i ], [ 0, %.preheader114.i.i.i ], [ %i.ix, %bb.ax ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, i64 noundef %.sroa.1511.0.i.i) #23, !noalias !452
  br label %bb.be

bb.be:                                            ; preds = %bb.bh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !452
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #23, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !452
  %i.kg = icmp eq i64 %.sroa.0.0.copyload1.i.i, 0
  br i1 %i.kg, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload4.i.i, i64 noundef %.sroa.0.0.copyload1.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !464
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i

bb.bg:                                            ; preds = %.loopexit.i2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !452
  store i64 %.sroa.0.0.copyload1.i.i, ptr %i.h, align 8, !noalias !452
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.5.0.copyload4.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !452
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.8.0.copyload7.i.i, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !452
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.h) #23, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !452
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !452
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !452
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 29, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g) #23, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !452
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i

bb.bh:                                            ; preds = %.loopexit.i2.i
  %i.kh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ki = load double, ptr %i.kh, align 8, !noalias !452, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 4, double noundef %i.ki) #23, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !452
  br label %bb.be

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i: ; preds = %bb.bg, %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !452
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !467
  %i.kj = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, 9) 8) #23, !noalias !467 ; 4 uses
  %i.kk = icmp eq ptr %i.kj, null
  br i1 %i.kk, label %bb.bi, label %bb.bj, !prof !443

bb.bi:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #26, !noalias !467
  unreachable

_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread: ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33, %.preheader56.i.i, %bb.ap, %bb.a, %bb.j, %.preheader.i.i
  %.sroa.0.0278 = phi i64 [ %.sroa.0.0, %.preheader56.i.i ], [ -1, %bb.a ], [ %.sroa.0.0, %.preheader.i.i ], [ %.sroa.0.0, %bb.j ], [ %.sroa.0.0, %bb.ap ], [ %.sroa.0.0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.8.0276 = phi ptr [ %.sroa.8.0, %.preheader56.i.i ], [ undef, %bb.a ], [ %.sroa.8.0, %.preheader.i.i ], [ %.sroa.8.0, %bb.j ], [ %.sroa.8.0, %bb.ap ], [ %.sroa.8.0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.9.0274 = phi i64 [ %.sroa.9.0, %.preheader56.i.i ], [ undef, %bb.a ], [ %.sroa.9.0, %.preheader.i.i ], [ %.sroa.9.0, %bb.j ], [ %.sroa.9.0, %bb.ap ], [ %.sroa.9.0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.11.0 = phi i64 [ %i.hp, %.preheader56.i.i ], [ undef, %bb.a ], [ 0, %.preheader.i.i ], [ undef, %bb.j ], [ %i.hz, %bb.ap ], [ undef, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %.sroa.6.0 = phi i64 [ 1, %.preheader56.i.i ], [ 0, %bb.a ], [ 1, %.preheader.i.i ], [ 0, %bb.j ], [ 1, %bb.ap ], [ 0, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i33 ]
  %i.kl = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @105, i64 noundef 6) #23
  %i.km = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @102, i64 noundef 14) #23
  %i.kn = zext i1 %i.kl to i8
  %i.ko = zext i1 %i.km to i8
  store i64 %.sroa.6.0, ptr %0, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.11.0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0278, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0276, ptr %.sroa.512.sroa.4.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.9.0274, ptr %.sroa.512.sroa.5.0..sroa.512.0..sroa_idx.sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 %i.kn, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.ko, ptr %.sroa.714.0..sroa_idx, align 1
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

bb.bj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !452
  %.sroa.4.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.kj, i64 24
  store i32 1, ptr %.sroa.4.0..sroa_idx13.i.i, align 8, !noalias !452
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !452
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.kj, ptr %i.kp, align 8
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @27, ptr %i.kq, align 8
  store i64 2, ptr %0, align 8
  %.0.val.off.i = add i64 %.sroa.0.0, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.bk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #23
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2vKOLqTMYjT_3std4path7PathBufEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.bj, %bb.bk, %_RNCNvMNtCscxmO3cvmuC8_9uu_base3211base_commonNtB4_6Config4from0B6_.exit.thread
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !40, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !470
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !470
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 4, i64 noundef 8) #23, !noalias !470
  %i.f = load i64, ptr %i.a, align 8, !range !331, !noalias !470, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !332, !noalias !470, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !470, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !470
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !470
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !470
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequehE15make_contiguousCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !40, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 7 uses
  %i.d = sub i64 %i.a, %i.c                       ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %.not = icmp ugt i64 %i.f, %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !4, !noundef !4 ; 15 uses
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.i = sub i64 %i.a, %i.f                       ; 11 uses
  %i.j = sub i64 %i.c, %i.i                       ; 12 uses
  %.not8 = icmp ult i64 %i.d, %i.i
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp ult i64 %i.d, %i.j
  br i1 %.not9, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %i.l, i64 %i.i, i1 false)
  br label %bb.o

bb.e:                                             ; preds = %bb.c
  %i.m = icmp ugt i64 %i.i, %i.j
  %i.n = icmp eq i64 %i.a, %i.c                   ; 2 uses
  br i1 %i.m, label %bb.h, label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.o, i64 %i.i, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.o

bb.g:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.e
  br i1 %i.n, label %bb.m, label %bb.l

bb.i:                                             ; preds = %bb.k, %bb.g
  %.not.i = icmp ugt i64 %i.i, %i.c
  br i1 %.not.i, label %bb.j, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit, !prof !283

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 33, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #24, !noalias !473
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call fastcc void @_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate10ptr_rotatehECscxmO3cvmuC8_9uu_base32(i64 noundef %i.j, ptr noundef %i.r, i64 noundef %i.i) #25
  br label %bb.o

bb.k:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.s, i64 %i.i, i1 false)
  br label %bb.i

bb.l:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.not.i10 = icmp ugt i64 %i.i, %i.c
  br i1 %.not.i10, label %bb.n, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit, !prof !283

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 35, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @41) #24, !noalias !476
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit: ; preds = %bb.m
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.j
  tail call fastcc void @_RINvNtNtCs6JMX4GRUq9U_4core5slice6rotate10ptr_rotatehECscxmO3cvmuC8_9uu_base32(i64 noundef %i.j, ptr noundef %i.w, i64 noundef %i.i) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.f, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit, %bb.d
  %.sink = phi i64 [ %i.j, %bb.f ], [ %i.d, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11rotate_leftCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh12rotate_rightCscxmO3cvmuC8_9uu_base32.exit ], [ 0, %bb.d ] ; 2 uses
  store i64 %.sink, ptr %i.e, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o
  %.sink14 = phi i64 [ %.sink, %bb.o ], [ %i.f, %bb.a ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink14
  %i.y = insertvalue { ptr, i64 } poison, ptr %i.x, 0
  %i.z = insertvalue { ptr, i64 } %i.y, i64 %i.c, 1
  ret { ptr, i64 } %i.z
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCscxmO3cvmuC8_9uu_base32(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, i64 %.0.val, ptr %.8.val, i64 noundef %1, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 1, 17) %3) unnamed_addr #2 {
bb.a:
  %i.a = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %1) ; 2 uses
  %i.b = extractvalue { i64, i1 } %i.a, 0         ; 7 uses
  %i.c = extractvalue { i64, i1 } %i.a, 1
  %i.d = sub nuw i64 -9223372036854775808, %2
  %.not = icmp ugt i64 %i.b, %i.d
  %or.cond = select i1 %i.c, i1 true, i1 %.not, !prof !451
  br i1 %or.cond, label %bb.g, label %bb.b, !prof !451

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %.0.val, 0
  br i1 %i.e, label %bb.c, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit: ; preds = %bb.b
  %i.f = mul nuw i64 %3, %.0.val                  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.g = icmp uge i64 %i.b, %i.f
  tail call void @llvm.assume(i1 %i.g)
  %i.h = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc14___rust_realloc(ptr noundef nonnull %.8.val, i64 noundef %i.f, i64 noundef range(i64 1, 9) %2, i64 noundef range(i64 0, -9223372036854775808) %i.b) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.b, 0
  br i1 %i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, label %bb.d

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread: ; preds = %bb.c
  %i.j = inttoptr i64 %2 to ptr
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23
  %i.k = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, 9) %2) #23
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit: ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit
  %.pn8 = phi ptr [ %i.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator4grow.exit ], [ %i.k, %bb.d ] ; 2 uses
  %i.l = icmp eq ptr %.pn8, null
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %i.m, align 8
  br label %bb.g

bb.f:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit
  %.pn810 = phi ptr [ %i.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.thread ], [ %.pn8, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.pn810, ptr %i.n, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.e, %bb.f
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}
end_hunk_2
begin_hunk_3_@_RNvNtCscxmO3cvmuC8_9uu_base3211base_common17format_read_error:bb.a
_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECscxmO3cvmuC8_9uu_base32.exit6: ; preds = %bb.t, %bb.s, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define { ptr, ptr } @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common35get_supports_fast_decode_and_encode(i8 noundef range(i8 0, 9) %0, i1 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 4 uses
  %i.f = alloca [56 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [56 x i8], align 8                ; 4 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  switch i8 %0, label %default.unreachable17 [
    i8 0, label %bb.b
    i8 1, label %bb.d
    i8 2, label %bb.f
    i8 3, label %bb.h
    i8 4, label %bb.j
    i8 5, label %bb.l
    i8 6, label %bb.n
    i8 7, label %bb.q
    i8 8, label %bb.p
  ]

default.unreachable17:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %. = select i1 %2, i64 65, i64 64
  %.4 = select i1 %2, ptr @58, ptr @57
  %not. = xor i1 %1, true
  %.sroa.0.0 = or i1 %2, %not.
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCsh036I4OHgIr_6uucore8features8encodingNtB2_17Base64SimdWrapper3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, i1 noundef zeroext %.sroa.0.0, i64 noundef 4, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.4, i64 noundef %.) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !493
  %i.j = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, 9) 8) #23, !noalias !493 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, !prof !443

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #26, !noalias !493
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs0_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapper3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @62, i64 noundef 4, i64 noundef 3, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @60, i64 noundef 65) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !496
  %i.l = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #23, !noalias !496 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit5, !prof !443

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26, !noalias !496
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit5: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @66, i64 24, i1 false)
  call void @_RNvMs4_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32Wrapper3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @64, i64 noundef 33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !499
  %i.n = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #23, !noalias !499 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6, !prof !443

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26, !noalias !499
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6: ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.n, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @70, i64 24, i1 false)
  call void @_RNvMs4_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_13Base32Wrapper3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 8, i64 noundef 5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @68, i64 noundef 33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !502
  %i.p = call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #23, !noalias !502 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.i, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit7, !prof !443

bb.i:                                             ; preds = %bb.h
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26, !noalias !502
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit7: ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.p, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @_RNvMs0_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapper3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.i, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @73, i64 noundef 2, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 22) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !505
  %i.r = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #23, !noalias !505 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit8, !prof !443

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26, !noalias !505
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit8: ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.q

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMs0_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapper3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.h, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @76, i64 noundef 8, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 2) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !508
  %i.t = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #23, !noalias !508 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.m, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit9, !prof !443

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26, !noalias !508
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit9: ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull align 8 dereferenceable(56) %i.h, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.q

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @_RNvMs0_NtNtCsh036I4OHgIr_6uucore8features8encodingNtB5_15EncodingWrapper3new(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) @78, i64 noundef 8, i64 noundef 1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 2) #23
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #23, !noalias !511
  %i.v = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 56, i64 noundef range(i64 1, 9) 8) #23, !noalias !511 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.o, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit10, !prof !443

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #26, !noalias !511
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit10: ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(56) %i.g, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.q

bb.p:                                             ; preds = %bb.a
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit, %bb.p, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit10, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit9, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit8, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit7, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit5
  %.sroa.10.0 = phi ptr [ @59, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ @63, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit5 ], [ @67, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6 ], [ @67, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit7 ], [ @63, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit8 ], [ @63, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit9 ], [ @63, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit10 ], [ @80, %bb.p ], [ @79, %bb.a ]
  %.sroa.02.0 = phi ptr [ %i.j, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit ], [ %i.l, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit5 ], [ %i.n, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit6 ], [ %i.p, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit7 ], [ %i.r, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit8 ], [ %i.t, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit9 ], [ %i.v, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit10 ], [ inttoptr (i64 1 to ptr), %bb.p ], [ inttoptr (i64 1 to ptr), %bb.a ]
  %i.x = insertvalue { ptr, ptr } poison, ptr %.sroa.02.0, 0
  %i.y = insertvalue { ptr, ptr } %i.x, ptr %.sroa.10.0, 1
  ret { ptr, ptr } %i.y
}

; Function Attrs: cold nounwind nonlazybind uwtable
define void @_RNvNtCscxmO3cvmuC8_9uu_base3211base_common8base_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit:
  %i.a = alloca [20 x i8], align 1                ; 4 uses
  %i.b = alloca [640 x i8], align 8               ; 55 uses
  %i.c = alloca [640 x i8], align 8               ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0247.sroa.15 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.17 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.19 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.21 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.23 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.25 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.27 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.32 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.40 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.42 = alloca [16 x i8], align 8 ; 4 uses
  %.sroa.0247.sroa.47 = alloca [16 x i8], align 8 ; 4 uses
  %i.i = alloca [640 x i8], align 8               ; 58 uses
  %i.j = alloca [640 x i8], align 8               ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 6 uses
  %i.l = alloca [640 x i8], align 8               ; 54 uses
  %i.m = alloca [640 x i8], align 8               ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [640 x i8], align 8               ; 56 uses
  %.sroa.0 = alloca [488 x i8], align 8           ; 4 uses
  %.sroa.7171.sroa.0.sroa.5 = alloca [80 x i8], align 8 ; 4 uses
  %.sroa.7171.sroa.7 = alloca [32 x i8], align 8  ; 4 uses
  %i.p = alloca [640 x i8], align 8               ; 13 uses
  %i.q = alloca [640 x i8], align 8               ; 4 uses
  %i.r = alloca [712 x i8], align 8               ; 5 uses
  %i.s = alloca [712 x i8], align 8               ; 5 uses
  %i.t = alloca [712 x i8], align 8               ; 5 uses
  %i.u = alloca [712 x i8], align 8               ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [712 x i8], align 8               ; 54 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !alias.scope !514, !noalias !520 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.4.sroa.0.0 = select i1 %i.x, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  %.sroa.5.i.sroa.0.0 = select i1 %i.x, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.experimental.noalias.scope.decl(metadata !526)
  call void @llvm.experimental.noalias.scope.decl(metadata !528)
  %.sroa.0.0.copyload.i11 = load i64, ptr %i.v, align 8, !alias.scope !530, !noalias !534 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i11, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i12 = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.i10.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i12, align 8
  %.sroa.5.i10.sroa.4.0..sroa.55.0..sroa_idx.i12.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.i10.sroa.4.0.copyload = load i64, ptr %.sroa.5.i10.sroa.4.0..sroa.55.0..sroa_idx.i12.sroa_idx, align 8
  %.sroa.5.i10.sroa.4.sroa.0.0 = select i1 %i.ac, i64 undef, i64 %.sroa.5.i10.sroa.4.0.copyload
  %.sroa.5.i10.sroa.0.0 = select i1 %i.ac, ptr undef, ptr %.sroa.5.i10.sroa.0.0.copyload
  store i64 0, ptr %i.w, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 -1, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.23.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store i64 0, ptr %.sroa.0.sroa.29.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  store i64 -1, ptr %.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  store i64 -1, ptr %.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.34.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.35.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  store i64 %.sroa.5.i.sroa.4.sroa.0.0, ptr %.sroa.0.sroa.36.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  store i64 -1, ptr %.sroa.0.sroa.37.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  store i64 -1, ptr %.sroa.0.sroa.39.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  store i64 -1, ptr %.sroa.0.sroa.41.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  store i64 -1, ptr %.sroa.0.sroa.43.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  store i64 -1, ptr %.sroa.0.sroa.45.0..sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.4.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  store i64 %.sroa.0.0.copyload.i11, ptr %.sroa.4.0..sroa_idx135, align 8, !alias.scope !534, !noalias !528
  %.sroa.6.0..sroa_idx138 = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  store ptr %.sroa.5.i10.sroa.0.0, ptr %.sroa.6.0..sroa_idx138, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.0..sroa_idx140 = getelementptr inbounds nuw i8, ptr %i.w, i64 480
  store i64 %.sroa.5.i10.sroa.4.sroa.0.0, ptr %.sroa.8.0..sroa_idx140, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  store i64 -1, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  store i64 -1, ptr %.sroa.8.sroa.9.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.8.sroa.11.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 568
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.12.0..sroa.8.0..sroa_idx140.sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.8.sroa.14.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 592
  store ptr null, ptr %.sroa.8.sroa.14.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.16.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 608
  store ptr @81, ptr %.sroa.8.sroa.16.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 616
  store i64 25, ptr %.sroa.8.sroa.17.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 624
  store ptr null, ptr %.sroa.8.sroa.18.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.20.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 640
  store ptr null, ptr %.sroa.8.sroa.20.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.22.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 656
  store ptr null, ptr %.sroa.8.sroa.22.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.24.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 672
  store ptr null, ptr %.sroa.8.sroa.24.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.26.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 688
  store ptr null, ptr %.sroa.8.sroa.26.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  store i32 -1, ptr %.sroa.8.sroa.27.0..sroa.8.0..sroa_idx140.sroa_idx, align 8, !alias.scope !534, !noalias !528
  %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 700
  %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx140.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 708
  store i8 0, ptr %i.ad, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  store i32 128, ptr %.sroa.8.sroa.28.0..sroa.8.0..sroa_idx140.sroa_idx, align 4
  store i32 128, ptr %.sroa.8.sroa.29.0..sroa.8.0..sroa_idx140.sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.w) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7171.sroa.0.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7171.sroa.7)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 576
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 584
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 488 ; 2 uses
  store i64 -1, ptr %i.ag, align 8, !alias.scope !535
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  store i64 -1, ptr %i.ah, align 8, !alias.scope !535
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 636
  store i8 -1, ptr %i.ai, align 4, !alias.scope !535
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store i64 -1, ptr %i.aj, align 8, !alias.scope !535
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 0, ptr %i.ak, align 8, !alias.scope !535
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 632
  store i32 0, ptr %i.al, align 8, !alias.scope !535
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 168
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %.sroa.420.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 240
  %.sroa.423.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.524.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %.sroa.426.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.527.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i, align 8, !alias.scope !535
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 624
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 592
  store ptr null, ptr %i.an, align 8, !alias.scope !535
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 296
  store i64 0, ptr %i.ao, align 8, !alias.scope !535
  %.sroa.429.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.530.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 312
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 328 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 336 ; 2 uses
  store i64 0, ptr %i.o, align 8, !alias.scope !535
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 352
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i, align 8, !alias.scope !535
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 0, ptr %i.ap, align 8, !alias.scope !535
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 628
  store i32 -1, ptr %i.aq, align 4, !alias.scope !535
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 368
  store i64 0, ptr %i.ar, align 8, !alias.scope !535
  %.sroa.440.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.541.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 384
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.544.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 408
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.547.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !535
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 608 ; 2 uses
  store ptr null, ptr %i.as, align 8, !alias.scope !535
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 0, ptr %i.at, align 8, !alias.scope !535
  %i.au = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store i64 0, ptr %i.au, align 8, !alias.scope !535
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 440
  store i64 0, ptr %i.av, align 8, !alias.scope !535
  %.sroa.459.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i, align 8, !alias.scope !535
  %.sroa.560.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !535
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !535
  store ptr @105, ptr %i.ae, align 8
  store i64 6, ptr %i.af, align 8
  store i32 100, ptr %i.am, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !538)
  call void @llvm.experimental.noalias.scope.decl(metadata !541)
  call void @llvm.experimental.noalias.scope.decl(metadata !543)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.o, i64 320
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTcbEE8grow_oneCscxmO3cvmuC8_9uu_base32(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aw) #22, !noalias !538
  %.pre = load ptr, ptr %.sroa.432.0..sroa_idx.i, align 8, !alias.scope !546, !noalias !538 ; 2 uses
  store i32 68, ptr %.pre, align 4, !noalias !547
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store i8 1, ptr %i.ax, align 4, !noalias !547
  store i64 1, ptr %.sroa.533.0..sroa_idx.i, align 8, !alias.scope !546, !noalias !538
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(488) %i.o, i64 488, i1 false)
  %.sroa.4174.0.copyload = load i64, ptr %i.ag, align 8, !alias.scope !548 ; 2 uses
  %.sroa.5175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 496
  %.sroa.5175.0.copyload = load ptr, ptr %.sroa.5175.0..sroa_idx, align 8, !alias.scope !548 ; 2 uses
  %.sroa.6175.sroa.4.0..sroa.6175.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7171.sroa.0.sroa.5, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.6175.sroa.4.0..sroa.6175.0..sroa_idx.sroa_idx, i64 80, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7171.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %i.as, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @82, i64 noundef 23) #23
  %.sroa.0395.0.copyload = load i64, ptr %i.n, align 8
  %.sroa.2396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.2396.0.copyload = load ptr, ptr %.sroa.2396.0..sroa_idx, align 8
  %.sroa.3397.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3397.0.copyload = load i64, ptr %.sroa.3397.0..sroa_idx, align 8
  %.0.val.off.i = add i64 %.sroa.4174.0.copyload, -1
  %switch.i = icmp ult i64 %.0.val.off.i, -2
  br i1 %switch.i, label %bb.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit

bb.a:                                             ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5175.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5175.0.copyload, i64 noundef %.sroa.4174.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #23, !noalias !549
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit: ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB3_3Arg19visible_short_aliascECscxmO3cvmuC8_9uu_base32.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(488) %i.p, ptr noundef nonnull align 8 dereferenceable(488) %.sroa.0, i64 488, i1 false)
  %.sroa.4165.0..sroa_idx166 = getelementptr inbounds nuw i8, ptr %i.p, i64 488
  store i64 %.sroa.0395.0.copyload, ptr %.sroa.4165.0..sroa_idx166, align 8
  %.sroa.6168.0..sroa_idx169 = getelementptr inbounds nuw i8, ptr %i.p, i64 496
  store ptr %.sroa.2396.0.copyload, ptr %.sroa.6168.0..sroa_idx169, align 8
  %.sroa.7171.0..sroa_idx172 = getelementptr inbounds nuw i8, ptr %i.p, i64 504
  store i64 %.sroa.3397.0.copyload, ptr %.sroa.7171.0..sroa_idx172, align 8
  %.sroa.7171.sroa.0.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7171.sroa.0.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.7171.sroa.0.sroa.5, i64 80, i1 false)
  %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 592
  store ptr @105, ptr %.sroa.7171.sroa.5.0..sroa.7171.0..sroa_idx172.sroa_idx, align 8
  %.sroa.7171.sroa.6.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 600
  store i64 6, ptr %.sroa.7171.sroa.6.0..sroa.7171.0..sroa_idx172.sroa_idx, align 8
  %.sroa.7171.sroa.7.0..sroa.7171.0..sroa_idx172.sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7171.sroa.7.0..sroa.7171.0..sroa_idx172.sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7171.sroa.7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7171.sroa.0.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7171.sroa.7)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.p, i64 636
  store i8 2, ptr %i.ay, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !552)
  %i.az = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 144 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !555, !noalias !559, !noundef !4 ; 3 uses
  %i.bc = load i64, ptr %i.az, align 8, !range !40, !alias.scope !555, !noalias !559, !noundef !4
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #22, !noalias !559
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.p, i64 136
  %i.bf = load ptr, ptr %i.be, align 8, !alias.scope !555, !noalias !559, !nonnull !4, !noundef !4
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.bf, i64 %i.bb ; 2 uses
  store ptr @105, ptr %i.bg, align 8, !noalias !559
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i64 6, ptr %i.bh, align 8, !noalias !552
  %i.bi = add i64 %i.bb, 1
  store i64 %i.bi, ptr %i.ba, align 8, !alias.scope !555, !noalias !559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.q, ptr noundef nonnull align 8 dereferenceable(640) %i.p, i64 640, i1 false), !alias.scope !562, !noalias !563
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.r, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.q) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.s, ptr noundef nonnull align 8 dereferenceable(712) %i.r, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @83, i64 noundef 31) #23
  %.sroa.0401.0.copyload = load i64, ptr %i.k, align 8
  %.sroa.2402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2402.0.copyload = load ptr, ptr %.sroa.2402.0..sroa_idx, align 8
  %.sroa.3403.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.3403.0.copyload = load i64, ptr %.sroa.3403.0..sroa_idx, align 8
  store i64 0, ptr %i.l, align 8
  %.sroa.0179.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 0, ptr %.sroa.0179.sroa.5.0..sroa_idx, align 8
  %.sroa.0179.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i64 0, ptr %.sroa.0179.sroa.7.0..sroa_idx, align 8
  %.sroa.0179.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  store i64 0, ptr %.sroa.0179.sroa.9.0..sroa_idx, align 8
  %.sroa.0179.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  store i64 -1, ptr %.sroa.0179.sroa.11.0..sroa_idx, align 8
  %.sroa.0179.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104
  store i64 0, ptr %.sroa.0179.sroa.13.0..sroa_idx, align 8
  %.sroa.0179.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.14.0..sroa_idx, align 8
  %.sroa.0179.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.16.0..sroa_idx, align 8
  %.sroa.0179.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 144 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.18.0..sroa_idx, align 8
  %.sroa.0179.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.20.0..sroa_idx, align 8
  %.sroa.0179.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.22.0..sroa_idx, align 8
  %.sroa.0179.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.24.0..sroa_idx, align 8
  %.sroa.0179.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.26.0..sroa_idx, align 8
  %.sroa.0179.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.28.0..sroa_idx, align 8
  %.sroa.0179.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 288
  %.sroa.0179.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.31.0..sroa_idx, align 8
  %.sroa.0179.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0179.sroa.33.0..sroa_idx, align 8
  %.sroa.0179.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.35.0..sroa_idx, align 8
  %.sroa.0179.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 360
  %.sroa.0179.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.38.0..sroa_idx, align 8
  %.sroa.0179.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.40.0..sroa_idx, align 8
  %.sroa.0179.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.42.0..sroa_idx, align 8
  %.sroa.0179.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 432
  %.sroa.0179.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.45.0..sroa_idx, align 8
  %.sroa.0179.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0179.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0179.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0179.sroa.47.0..sroa_idx, align 8
  %.sroa.0179.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 480
  store i64 0, ptr %.sroa.0179.sroa.48.0..sroa_idx, align 8
  %.sroa.4180.0..sroa_idx181 = getelementptr inbounds nuw i8, ptr %i.l, i64 488
  store i64 %.sroa.0401.0.copyload, ptr %.sroa.4180.0..sroa_idx181, align 8
  %.sroa.6183.0..sroa_idx184 = getelementptr inbounds nuw i8, ptr %i.l, i64 496
  store ptr %.sroa.2402.0.copyload, ptr %.sroa.6183.0..sroa_idx184, align 8
  %.sroa.7186.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.l, i64 504
  store i64 %.sroa.3403.0.copyload, ptr %.sroa.7186.0..sroa_idx187, align 8
  %.sroa.7186.sroa.5.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 512
  store i64 -1, ptr %.sroa.7186.sroa.5.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.7.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 552
  store i64 -2, ptr %.sroa.7186.sroa.7.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.9.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 576
  store ptr @102, ptr %.sroa.7186.sroa.9.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.10.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 584
  store i64 14, ptr %.sroa.7186.sroa.10.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.11.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 592
  store ptr @102, ptr %.sroa.7186.sroa.11.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.12.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  store i64 14, ptr %.sroa.7186.sroa.12.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.13.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 608
  store ptr null, ptr %.sroa.7186.sroa.13.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.15.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 624
  store i32 105, ptr %.sroa.7186.sroa.15.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.16.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 628
  store i32 -1, ptr %.sroa.7186.sroa.16.0..sroa.7186.0..sroa_idx187.sroa_idx, align 4
  %.sroa.7186.sroa.17.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 632
  store i32 0, ptr %.sroa.7186.sroa.17.0..sroa.7186.0..sroa_idx187.sroa_idx, align 8
  %.sroa.7186.sroa.18.0..sroa.7186.0..sroa_idx187.sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  store i8 2, ptr %.sroa.7186.sroa.18.0..sroa.7186.0..sroa_idx187.sroa_idx, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.l, i64 128 ; 2 uses
  %i.bk = load i64, ptr %.sroa.0179.sroa.17.0..sroa_idx, align 8, !alias.scope !567, !noalias !571, !noundef !4 ; 3 uses
  %i.bl = load i64, ptr %i.bj, align 8, !range !40, !alias.scope !567, !noalias !571, !noundef !4
  %i.bm = icmp eq i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.c, label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj) #22, !noalias !571
  br label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52

_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg14overrides_withReECscxmO3cvmuC8_9uu_base32.exit52: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECscxmO3cvmuC8_9uu_base32.exit51, %bb.c
  %i.bn = load ptr, ptr %.sroa.0179.sroa.16.0..sroa_idx, align 8, !alias.scope !567, !noalias !571, !nonnull !4, !noundef !4
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bk ; 2 uses
  store ptr @102, ptr %i.bo, align 8, !noalias !571
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 14, ptr %i.bp, align 8, !noalias !564
  %i.bq = add i64 %i.bk, 1
  store i64 %i.bq, ptr %.sroa.0179.sroa.17.0..sroa_idx, align 8, !alias.scope !567, !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.m, ptr noundef nonnull align 8 dereferenceable(640) %i.l, i64 640, i1 false), !alias.scope !574, !noalias !575
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.m) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.t, ptr noundef nonnull align 8 dereferenceable(712) %i.s, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
end_hunk_3
