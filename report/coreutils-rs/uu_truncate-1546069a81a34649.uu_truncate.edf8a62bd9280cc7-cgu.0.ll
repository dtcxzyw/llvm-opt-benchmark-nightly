Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_truncate-1546069a81a34649.uu_truncate.edf8a62bd9280cc7-cgu.0?download=true
inline.NumInlined: 415
inline.NumDeleted: 279
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
@67 = private unnamed_addr constant [8 x i8] c"UIoError", align 1
@68 = private unnamed_addr constant [7 x i8] c"context", align 1
@69 = private unnamed_addr constant [5 x i8] c"inner", align 1
@70 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@71 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8022765338115755166 to ptr), ptr inttoptr (i64 -4205221647133633730 to ptr) }>, align 8
@72 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 7465031386275593344 to ptr), ptr inttoptr (i64 2227572798057049637 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCskqImE9wpq17_11uu_truncate21CAPTURE_STARTUP_STATE], section "llvm.metadata"
@switch.table._RNvCskqImE9wpq17_11uu_truncate8truncate = private unnamed_addr constant [26 x ptr] [ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode7RoundUp0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode6Extend0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode6Reduce0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode9RoundDown0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode6AtMost0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0, ptr @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode7AtLeast0], align 8

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 3, 9) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !44
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit: ; preds = %bb.e, %bb.f
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 3, 9) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %i.ac, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ae = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.af = mul nuw nsw i64 %i.ae, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ab, i64 %i.af, i1 false), !noalias !84
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit: ; preds = %bb.d, %bb.e
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 3, 9) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !124
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit: ; preds = %bb.d, %bb.e
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #22
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCskqImE9wpq17_11uu_truncate.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECskqImE9wpq17_11uu_truncate(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(640) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(640) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 440 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !126)
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !129
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef 8) #22, !noalias !129 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !132

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #24, !noalias !129
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %bb.a
  store i64 1, ptr %i.c, align 8, !noalias !126
  %.sroa.413.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.413.0..sroa_idx.i, align 8, !noalias !126
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 3, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !126
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !126
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !140, !noalias !141, !nonnull !4, !noundef !4 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 456 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !140, !noalias !141, !noundef !4 ; 5 uses
  %.idx = shl nuw nsw i64 %i.i, 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx
  %i.k = icmp eq i64 %i.i, 0
  br i1 %i.k, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i3, i64 16 ; 2 uses
  %i.m = add i64 %.sroa.8.0.i.i2, 1
  %i.n = icmp eq ptr %i.l, %i.j
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, %bb.c
  %.sroa.0.0.i.i3 = phi ptr [ %i.l, %bb.c ], [ %i.g, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 2 uses
  %.sroa.8.0.i.i2 = phi i64 [ %i.m, %bb.c ], [ 0, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ] ; 4 uses
  %.val.i.i = load i128, ptr %.sroa.0.0.i.i3, align 8, !noalias !143
  %i.o = icmp eq i128 %.val.i.i, 63958622876645927927552189038096644140
  br i1 %i.o, label %bb.f, label %bb.c

._crit_edge:                                      ; preds = %bb.c, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %i.p = load i64, ptr %i.b, align 8, !range !40, !alias.scope !144, !noalias !147, !noundef !4
  %i.q = icmp eq i64 %i.i, %i.p
  br i1 %i.q, label %bb.d, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCskqImE9wpq17_11uu_truncate.exit.i.i

bb.d:                                             ; preds = %._crit_edge
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.b) #21, !noalias !147
  %.pre.i.i = load ptr, ptr %i.f, align 8, !alias.scope !144, !noalias !147
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCskqImE9wpq17_11uu_truncate.exit.i.i

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCskqImE9wpq17_11uu_truncate.exit.i.i: ; preds = %bb.d, %._crit_edge
  %i.r = phi ptr [ %i.g, %._crit_edge ], [ %.pre.i.i, %bb.d ]
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.r, i64 %i.i ; 2 uses
  store i64 -5875614554295535572, ptr %i.s, align 8, !noalias !149
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 3467203893602029906, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !149
  %i.t = add i64 %i.i, 1
  store i64 %i.t, ptr %i.h, align 8, !alias.scope !144, !noalias !147
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 464 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 480 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !150, !noalias !153, !noundef !4 ; 3 uses
  %i.x = load i64, ptr %i.u, align 8, !range !40, !alias.scope !150, !noalias !153, !noundef !4
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.e, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskqImE9wpq17_11uu_truncate.exit.thread.i

bb.e:                                             ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCskqImE9wpq17_11uu_truncate.exit.i.i
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value8AnyValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) #21, !noalias !153
  br label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskqImE9wpq17_11uu_truncate.exit.thread.i

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskqImE9wpq17_11uu_truncate.exit.thread.i: ; preds = %bb.e, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCsgNwXemyrBWj_12clap_builder4util9any_value10AnyValueIdE8push_mutCskqImE9wpq17_11uu_truncate.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !150, !noalias !153, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.w ; 4 uses
  store i64 %i.e, ptr %i.ab, align 8, !noalias !155
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 ptrtoint (ptr @4 to i64), ptr %.sroa.7.0..sroa_idx3.i, align 8, !noalias !155
  %.sroa.10.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i64 -5875614554295535572, ptr %.sroa.10.0..sroa_idx5.i, align 8, !noalias !155
  %.sroa.13.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 3467203893602029906, ptr %.sroa.13.0..sroa_idx7.i, align 8, !noalias !155
  %i.ac = add i64 %i.w, 1
  store i64 %i.ac, ptr %i.v, align 8, !alias.scope !150, !noalias !153
  br label %_RINvMNtNtCsgNwXemyrBWj_12clap_builder7builder3extNtB3_10Extensions3setNtNtB5_10value_hint9ValueHintECskqImE9wpq17_11uu_truncate.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !140, !noalias !141, !noundef !4 ; 2 uses
  %i.af = icmp ult i64 %.sroa.8.0.i.i2, %i.ae
  br i1 %i.af, label %_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskqImE9wpq17_11uu_truncate.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i2, i64 noundef %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #23, !noalias !143
  unreachable

_RNvMNtNtCsgNwXemyrBWj_12clap_builder4util8flat_mapINtB2_7FlatMapNtNtB4_9any_value10AnyValueIdNtB12_8AnyValueE6insertCskqImE9wpq17_11uu_truncate.exit.i: ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !140, !noalias !141, !nonnull !4, !noundef !4
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ah, i64 %.sroa.8.0.i.i2 ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.am = load <2 x i64>, ptr %i.ai, align 1, !alias.scope !156, !noalias !143
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.ai, align 1, !alias.scope !160, !noalias !161 ; 2 uses
  store i64 %i.e, ptr %i.ai, align 1, !alias.scope !160, !noalias !161
  store i64 ptrtoint (ptr @4 to i64), ptr %i.aj, align 1, !alias.scope !163, !noalias !164
  store <2 x i64> %i.am, ptr %i.a, align 16, !alias.scope !149, !noalias !166
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.an = load <2 x i64>, ptr %i.ak, align 1, !alias.scope !167, !noalias !143
end_hunk_0
begin_hunk_1_@_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore4mods5error8UIoErrorECskqImE9wpq17_11uu_truncate:bb.a
bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECskqImE9wpq17_11uu_truncate.exit
  %i.l = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !203
  store i8 3, ptr %i.a, align 8, !alias.scope !203
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #22
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskqImE9wpq17_11uu_truncate.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskqImE9wpq17_11uu_truncate.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECskqImE9wpq17_11uu_truncate.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECskqImE9wpq17_11uu_truncate.exit, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #0 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !185, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !206
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.d = load i64, ptr %i.c, align 8, !range !212, !alias.scope !209, !noundef !4 ; 3 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
  ]

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val.i = load i64, ptr %i.i, align 8, !range !185, !alias.scope !209, !noundef !4 ; 2 uses
  %i.j = icmp sgt i64 %.val.i, 0
  br i1 %i.j, label %bb.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !209, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !213
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit

bb.e:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val2.i = load i64, ptr %i.l, align 8, !range !185, !alias.scope !216, !noundef !4 ; 2 uses
  %i.m = icmp sgt i64 %.val2.i, 0
  br i1 %i.m, label %bb.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val3.i = load ptr, ptr %i.n, align 8, !alias.scope !209, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %.val2.i, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !219
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit

bb.g:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val4.i = load ptr, ptr %i.o, align 8, !alias.scope !209 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val5.i = load ptr, ptr %i.p, align 8, !alias.scope !209, !nonnull !4, !align !224, !noundef !4 ; 3 uses
  %i.q = load ptr, ptr %.val5.i, align 8, !invariant.load !4, !noalias !209 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void %i.q(ptr noundef nonnull %.val4.i) #25, !noalias !209, !inline_history !225
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val5.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !40, !invariant.load !4, !noalias !209 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val5.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !226, !invariant.load !4, !noalias !209
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4.i) ]
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #22, !noalias !209
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueECskqImE9wpq17_11uu_truncate.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECskqImE9wpq17_11uu_truncate.exit, %bb.c, %bb.d, %bb.e, %bb.f, %bb.i, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.b = add i64 %2, %1                           ; 2 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %0, align 8, !range !40, !alias.scope !227, !noundef !4 ; 2 uses
  %i.e = shl nuw i64 %i.d, 1
  %..i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.b, i64 %i.e)
  %i.f = icmp eq i64 %4, 1
  %.sroa.08.0.i = select i1 %i.f, i64 8, i64 4
  %..i14.i = tail call noundef i64 @llvm.umax.i64(i64 %..i.i, i64 %.sroa.08.0.i) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !227
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.g, align 8, !alias.scope !227
  call fastcc void @_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner11finish_growCskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.d, ptr %.val13.i, i64 noundef %..i14.i, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 17) %4) #22, !noalias !227
  %i.h = load i64, ptr %i.a, align 8, !range !230, !noalias !227, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !range !231, !noalias !227, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noalias !227
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.5.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.m, %bb.c ]
  %.sroa.0.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.k, %bb.c ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.0.0.i.ph, i64 %.sroa.5.0.i.ph) #24
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.j, align 8, !noalias !227, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !227
  store ptr %i.n, ptr %i.g, align 8, !alias.scope !227
  %i.o = icmp sgt i64 %..i14.i, -1
  tail call void @llvm.assume(i1 %i.o)
  store i64 %..i14.i, ptr %0, align 8, !alias.scope !227
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode6AtMost0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 3, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode6Extend0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 1, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode6Reduce0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 2, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode7AtLeast0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 4, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode7RoundUp0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 6, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode8Absolute0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { i64, i64 } @_RNcNtNtCskqImE9wpq17_11uu_truncate12TruncateMode9RoundDown0(i64 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = insertvalue { i64, i64 } { i64 5, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCskqImE9wpq17_11uu_truncate6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit:
  %i.a = alloca [640 x i8], align 8               ; 52 uses
  %i.b = alloca [640 x i8], align 8               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 58 uses
  %.sroa.0481 = alloca [344 x i8], align 8        ; 2 uses
  %.sroa.7485 = alloca [120 x i8], align 8        ; 2 uses
  %.sroa.11488.sroa.5 = alloca [120 x i8], align 8 ; 2 uses
  %i.e = alloca [640 x i8], align 8               ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [640 x i8], align 8               ; 58 uses
  %.sroa.0455 = alloca [344 x i8], align 8        ; 2 uses
  %.sroa.7459 = alloca [120 x i8], align 8        ; 2 uses
  %.sroa.11462.sroa.5 = alloca [128 x i8], align 8 ; 2 uses
  %i.h = alloca [640 x i8], align 8               ; 12 uses
  %i.i = alloca [640 x i8], align 8               ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 53 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [640 x i8], align 8               ; 53 uses
  %i.n = alloca [712 x i8], align 8               ; 5 uses
  %i.o = alloca [712 x i8], align 8               ; 5 uses
  %i.p = alloca [712 x i8], align 8               ; 5 uses
  %i.q = alloca [712 x i8], align 8               ; 5 uses
  %i.r = alloca [712 x i8], align 8               ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [712 x i8], align 8               ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 14) #22
  %.sroa.0.0.copyload.i = load i64, ptr %i.v, align 8, !alias.scope !232, !noalias !238 ; 2 uses
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.4.sroa.0.0 = select i1 %i.x, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  %.sroa.5.i.sroa.0.0 = select i1 %i.x, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.t, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 14) #22
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef %i.ab) #22
  %.sroa.0.0.copyload.i9 = load i64, ptr %i.u, align 8, !alias.scope !241, !noalias !247 ; 2 uses
  %i.ac = icmp eq i64 %.sroa.0.0.copyload.i9, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.i8.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i10, align 8
  %.sroa.5.i8.sroa.4.0..sroa.55.0..sroa_idx.i10.sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.5.i8.sroa.4.0.copyload = load i64, ptr %.sroa.5.i8.sroa.4.0..sroa.55.0..sroa_idx.i10.sroa_idx, align 8
  %.sroa.5.i8.sroa.4.sroa.0.0 = select i1 %i.ac, i64 undef, i64 %.sroa.5.i8.sroa.4.0.copyload
  %.sroa.5.i8.sroa.0.0 = select i1 %i.ac, ptr undef, ptr %.sroa.5.i8.sroa.0.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @34, i64 noundef 19) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  %.sroa.0.0.copyload.i15 = load i64, ptr %i.s, align 8, !alias.scope !257, !noalias !261 ; 2 uses
  %i.ad = icmp eq i64 %.sroa.0.0.copyload.i15, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5.i14.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i16, align 8
  %.sroa.5.i14.sroa.4.0..sroa.55.0..sroa_idx.i16.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5.i14.sroa.4.0.copyload = load i64, ptr %.sroa.5.i14.sroa.4.0..sroa.55.0..sroa_idx.i16.sroa_idx, align 8
  %.sroa.5.i14.sroa.4.sroa.0.0 = select i1 %i.ad, i64 undef, i64 %.sroa.5.i14.sroa.4.0.copyload
  %.sroa.5.i14.sroa.0.0 = select i1 %i.ad, ptr undef, ptr %.sroa.5.i14.sroa.0.0.copyload
  store i64 0, ptr %i.w, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 1, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 -1, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 0, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  %.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.23.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 216
  %.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 264
  store i64 0, ptr %.sroa.0.sroa.29.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 272
  store i64 -1, ptr %.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 296
  store i64 -1, ptr %.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 320
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.0.sroa.34.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 328
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.0.sroa.35.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  store i64 %.sroa.5.i.sroa.4.sroa.0.0, ptr %.sroa.0.sroa.36.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 344
  store i64 -1, ptr %.sroa.0.sroa.37.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 368
  store i64 -1, ptr %.sroa.0.sroa.39.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.0.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 392
  store i64 -1, ptr %.sroa.0.sroa.41.0..sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.4.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.w, i64 416
  store i64 %.sroa.0.0.copyload.i15, ptr %.sroa.4.0..sroa_idx185, align 8, !alias.scope !261, !noalias !255
  %.sroa.6.0..sroa_idx187 = getelementptr inbounds nuw i8, ptr %i.w, i64 424
  store ptr %.sroa.5.i14.sroa.0.0, ptr %.sroa.6.0..sroa_idx187, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.0..sroa_idx189 = getelementptr inbounds nuw i8, ptr %i.w, i64 432
  store i64 %.sroa.5.i14.sroa.4.sroa.0.0, ptr %.sroa.8.0..sroa_idx189, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.0.sroa.5.0..sroa.8.0..sroa_idx189.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 440
  store i64 -1, ptr %.sroa.8.sroa.0.sroa.5.0..sroa.8.0..sroa_idx189.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx189.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 464
  store i64 %.sroa.0.0.copyload.i9, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx189.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx189.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 472
  store ptr %.sroa.5.i8.sroa.0.0, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx189.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 480
  store i64 %.sroa.5.i8.sroa.4.sroa.0.0, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.4.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 488
  store i64 -1, ptr %.sroa.8.sroa.7.sroa.4.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.6.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.sroa.6.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.8.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 536
  store i64 -1, ptr %.sroa.8.sroa.7.sroa.8.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.10.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 560
  store ptr @30, ptr %.sroa.8.sroa.7.sroa.10.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.11.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 568
  store i64 8, ptr %.sroa.8.sroa.7.sroa.11.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.12.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 576
  store ptr null, ptr %.sroa.8.sroa.7.sroa.12.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.14.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 592
  store ptr null, ptr %.sroa.8.sroa.7.sroa.14.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.16.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 608
  store ptr @31, ptr %.sroa.8.sroa.7.sroa.16.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.17.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 616
  store i64 25, ptr %.sroa.8.sroa.7.sroa.17.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.18.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 624
  store ptr null, ptr %.sroa.8.sroa.7.sroa.18.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.20.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 640
  store ptr null, ptr %.sroa.8.sroa.7.sroa.20.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.22.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 656
  store ptr null, ptr %.sroa.8.sroa.7.sroa.22.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.24.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 672
  store ptr null, ptr %.sroa.8.sroa.7.sroa.24.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.26.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 688
  store ptr null, ptr %.sroa.8.sroa.7.sroa.26.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.27.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 696
  store i32 -1, ptr %.sroa.8.sroa.7.sroa.27.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8, !alias.scope !261, !noalias !255
  %.sroa.8.sroa.7.sroa.28.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 700
  %.sroa.8.sroa.7.sroa.29.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 704
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 708
  store i8 0, ptr %i.ae, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i32 128, ptr %.sroa.8.sroa.7.sroa.28.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 4
  store i32 128, ptr %.sroa.8.sroa.7.sroa.29.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx189.sroa_idx.sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %.val.i20 = load i64, ptr %i.t, align 8, !range !40, !alias.scope !262, !noundef !4 ; 2 uses
  %i.af = icmp eq i64 %.val.i20, 0
  br i1 %i.af, label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit, label %bb.a

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit
  %.val1.i = load ptr, ptr %i.y, align 8, !alias.scope !262, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i20, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !262
  br label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit

_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command5aboutNtNtCs7tKScEop1B6_5alloc6string6StringECskqImE9wpq17_11uu_truncate.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods17clap_localization27configure_localized_command(ptr noalias nofree noundef nonnull sret([712 x i8]) align 8 captures(none) dereferenceable(712) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(712) %i.w) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @35, i64 noundef 23) #22
  %.sroa.0561.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.2562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.2562.0.copyload = load ptr, ptr %.sroa.2562.0..sroa_idx, align 8
  %.sroa.3563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.3563.0.copyload = load i64, ptr %.sroa.3563.0..sroa_idx, align 8
  store i64 0, ptr %i.m, align 8
  %.sroa.0.sroa.5287.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 0, ptr %.sroa.0.sroa.5287.0..sroa_idx, align 8
  %.sroa.0.sroa.7289.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i64 0, ptr %.sroa.0.sroa.7289.0..sroa_idx, align 8
  %.sroa.0.sroa.9291.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %.sroa.0.sroa.9291.0..sroa_idx, align 8
  %.sroa.0.sroa.11293.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i64 -1, ptr %.sroa.0.sroa.11293.0..sroa_idx, align 8
  %.sroa.0.sroa.13295.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  store i64 0, ptr %.sroa.0.sroa.13295.0..sroa_idx, align 8
  %.sroa.0.sroa.14296.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14296.0..sroa_idx, align 8
  %.sroa.0.sroa.15297.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15297.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.16298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.16298.0..sroa_idx, align 8
  %.sroa.0.sroa.17299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17299.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.18300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.18300.0..sroa_idx, align 8
  %.sroa.0.sroa.19301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19301.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.20302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.20302.0..sroa_idx, align 8
  %.sroa.0.sroa.21303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.21303.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.22304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.22304.0..sroa_idx, align 8
  %.sroa.0.sroa.23305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.23305.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.24306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.24306.0..sroa_idx, align 8
  %.sroa.0.sroa.25307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.25307.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.26308.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26308.0..sroa_idx, align 8
  %.sroa.0.sroa.27309.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27309.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28310.0..sroa_idx, align 8
  %.sroa.0.sroa.29311.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 288
  %.sroa.0.sroa.31313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.29311.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.31313.0..sroa_idx, align 8
  %.sroa.0.sroa.32314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.32314.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.33315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.33315.0..sroa_idx, align 8
  %.sroa.0.sroa.34316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.34316.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.35317.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.35317.0..sroa_idx, align 8
  %.sroa.0.sroa.36318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 360
  %.sroa.0.sroa.38320.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.36318.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.38320.0..sroa_idx, align 8
  %.sroa.0.sroa.39321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.39321.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.40322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.40322.0..sroa_idx, align 8
  %.sroa.0.sroa.41323.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.41323.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.42324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.42324.0..sroa_idx, align 8
  %.sroa.0.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 432
  %.sroa.0.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.45.0..sroa_idx, align 8
  %.sroa.0.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.47.0..sroa_idx, align 8
  %.sroa.0.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 480
  store i64 0, ptr %.sroa.0.sroa.48.0..sroa_idx, align 8
  %.sroa.4220.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %i.m, i64 488
  store i64 %.sroa.0561.0.copyload, ptr %.sroa.4220.0..sroa_idx221, align 8
  %.sroa.6223.0..sroa_idx224 = getelementptr inbounds nuw i8, ptr %i.m, i64 496
  store ptr %.sroa.2562.0.copyload, ptr %.sroa.6223.0..sroa_idx224, align 8
  %.sroa.7226.0..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.m, i64 504
  store i64 %.sroa.3563.0.copyload, ptr %.sroa.7226.0..sroa_idx227, align 8
  %.sroa.7226.sroa.5.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 512
  store i64 -1, ptr %.sroa.7226.sroa.5.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.7.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 552
  store i64 -2, ptr %.sroa.7226.sroa.7.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.9.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 576
  store ptr @48, ptr %.sroa.7226.sroa.9.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.10.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 584
  store i64 9, ptr %.sroa.7226.sroa.10.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.11.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 592
  store ptr @48, ptr %.sroa.7226.sroa.11.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.12.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 600
  store i64 9, ptr %.sroa.7226.sroa.12.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.13.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 608
  store ptr null, ptr %.sroa.7226.sroa.13.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.15.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 624
  store i32 111, ptr %.sroa.7226.sroa.15.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.16.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 628
  store i32 -1, ptr %.sroa.7226.sroa.16.0..sroa.7226.0..sroa_idx227.sroa_idx, align 4
  %.sroa.7226.sroa.17.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 632
  store i32 0, ptr %.sroa.7226.sroa.17.0..sroa.7226.0..sroa_idx227.sroa_idx, align 8
  %.sroa.7226.sroa.18.0..sroa.7226.0..sroa_idx227.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  store i8 2, ptr %.sroa.7226.sroa.18.0..sroa.7226.0..sroa_idx227.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.n, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.m) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.o, ptr noundef nonnull align 8 dereferenceable(712) %i.n, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @36, i64 noundef 23) #22
  %.sroa.0567.0.copyload = load i64, ptr %i.j, align 8
  %.sroa.2568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.2568.0.copyload = load ptr, ptr %.sroa.2568.0..sroa_idx, align 8
  %.sroa.3569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.3569.0.copyload = load i64, ptr %.sroa.3569.0..sroa_idx, align 8
  store i64 0, ptr %i.k, align 8
  %.sroa.0.sroa.5400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.0.sroa.5400.0..sroa_idx, align 8
  %.sroa.0.sroa.7402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %.sroa.0.sroa.7402.0..sroa_idx, align 8
  %.sroa.0.sroa.9404.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 0, ptr %.sroa.0.sroa.9404.0..sroa_idx, align 8
  %.sroa.0.sroa.11406.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store i64 -1, ptr %.sroa.0.sroa.11406.0..sroa_idx, align 8
  %.sroa.0.sroa.13408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  store i64 0, ptr %.sroa.0.sroa.13408.0..sroa_idx, align 8
  %.sroa.0.sroa.14409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.14409.0..sroa_idx, align 8
  %.sroa.0.sroa.15410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.15410.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.16411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.16411.0..sroa_idx, align 8
  %.sroa.0.sroa.17412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.17412.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.18413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.18413.0..sroa_idx, align 8
  %.sroa.0.sroa.19414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.19414.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.20415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.20415.0..sroa_idx, align 8
  %.sroa.0.sroa.21416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.21416.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.22417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.22417.0..sroa_idx, align 8
  %.sroa.0.sroa.23418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.23418.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.24419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.24419.0..sroa_idx, align 8
  %.sroa.0.sroa.25420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.25420.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.26421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.26421.0..sroa_idx, align 8
  %.sroa.0.sroa.27422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.27422.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.28423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.28423.0..sroa_idx, align 8
  %.sroa.0.sroa.29424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  %.sroa.0.sroa.31426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.29424.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.31426.0..sroa_idx, align 8
  %.sroa.0.sroa.32427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.32427.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.33428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.33428.0..sroa_idx, align 8
  %.sroa.0.sroa.34429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.34429.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.35430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.35430.0..sroa_idx, align 8
  %.sroa.0.sroa.36431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 360
  %.sroa.0.sroa.38433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.36431.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.38433.0..sroa_idx, align 8
  %.sroa.0.sroa.39434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.39434.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.40435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.40435.0..sroa_idx, align 8
  %.sroa.0.sroa.41436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.41436.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.42437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.42437.0..sroa_idx, align 8
  %.sroa.0.sroa.43438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 432
  %.sroa.0.sroa.45440.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.43438.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.45440.0..sroa_idx, align 8
  %.sroa.0.sroa.46441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.46441.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.47442.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.47442.0..sroa_idx, align 8
  %.sroa.0.sroa.48443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 480
  store i64 0, ptr %.sroa.0.sroa.48443.0..sroa_idx, align 8
  %.sroa.4325.0..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.k, i64 488
  store i64 %.sroa.0567.0.copyload, ptr %.sroa.4325.0..sroa_idx326, align 8
  %.sroa.6328.0..sroa_idx329 = getelementptr inbounds nuw i8, ptr %i.k, i64 496
  store ptr %.sroa.2568.0.copyload, ptr %.sroa.6328.0..sroa_idx329, align 8
  %.sroa.7331.0..sroa_idx332 = getelementptr inbounds nuw i8, ptr %i.k, i64 504
  store i64 %.sroa.3569.0.copyload, ptr %.sroa.7331.0..sroa_idx332, align 8
  %.sroa.7331.sroa.5.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 512
  store i64 -1, ptr %.sroa.7331.sroa.5.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.7.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 552
  store i64 -2, ptr %.sroa.7331.sroa.7.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.9.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 576
  store ptr @49, ptr %.sroa.7331.sroa.9.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.10.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 584
  store i64 9, ptr %.sroa.7331.sroa.10.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.11.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 592
  store ptr @49, ptr %.sroa.7331.sroa.11.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.12.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 600
  store i64 9, ptr %.sroa.7331.sroa.12.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.13.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 608
  store ptr null, ptr %.sroa.7331.sroa.13.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.15.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 624
  store i32 99, ptr %.sroa.7331.sroa.15.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.16.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 628
  store i32 -1, ptr %.sroa.7331.sroa.16.0..sroa.7331.0..sroa_idx332.sroa_idx, align 4
  %.sroa.7331.sroa.17.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 632
  store i32 0, ptr %.sroa.7331.sroa.17.0..sroa.7331.0..sroa_idx332.sroa_idx, align 8
  %.sroa.7331.sroa.18.0..sroa.7331.0..sroa_idx332.sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i8 2, ptr %.sroa.7331.sroa.18.0..sroa.7331.0..sroa_idx332.sroa_idx, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.k) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.p, ptr noundef nonnull align 8 dereferenceable(712) %i.o, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 576
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 584
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 488 ; 2 uses
  store i64 -1, ptr %i.ai, align 8, !alias.scope !265
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  store i64 -1, ptr %i.aj, align 8, !alias.scope !265
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 636
  store i8 -1, ptr %i.ak, align 4, !alias.scope !265
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store i64 -1, ptr %i.al, align 8, !alias.scope !265
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 0, ptr %i.am, align 8, !alias.scope !265
  %.sroa.45.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i57, align 8, !alias.scope !265
  %.sroa.56.0..sroa_idx.i58 = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 632
  store i32 0, ptr %i.an, align 8, !alias.scope !265
  %.sroa.48.0..sroa_idx.i59 = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i58, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i59, align 8, !alias.scope !265
  %.sroa.59.0..sroa_idx.i60 = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %.sroa.411.0..sroa_idx.i61 = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i60, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i61, align 8, !alias.scope !265
  %.sroa.512.0..sroa_idx.i62 = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %.sroa.414.0..sroa_idx.i63 = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i62, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i63, align 8, !alias.scope !265
  %.sroa.515.0..sroa_idx.i64 = getelementptr inbounds nuw i8, ptr %i.g, i64 192
  %.sroa.417.0..sroa_idx.i65 = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i64, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i65, align 8, !alias.scope !265
  %.sroa.518.0..sroa_idx.i66 = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %.sroa.420.0..sroa_idx.i67 = getelementptr inbounds nuw i8, ptr %i.g, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i66, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i67, align 8, !alias.scope !265
  %.sroa.521.0..sroa_idx.i68 = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %.sroa.423.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i68, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i69, align 8, !alias.scope !265
  %.sroa.524.0..sroa_idx.i70 = getelementptr inbounds nuw i8, ptr %i.g, i64 264 ; 2 uses
  %.sroa.426.0..sroa_idx.i71 = getelementptr inbounds nuw i8, ptr %i.g, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i70, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i71, align 8, !alias.scope !265
  %.sroa.527.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.g, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i72, align 8, !alias.scope !265
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 624
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 592
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 296
  store i64 0, ptr %i.aq, align 8, !alias.scope !265
  %.sroa.429.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.g, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i73, align 8, !alias.scope !265
  %.sroa.530.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.g, i64 312
  %.sroa.432.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i74, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i75, align 8, !alias.scope !265
  %.sroa.533.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.g, i64 336
  store i64 0, ptr %i.g, align 8, !alias.scope !265
  %.sroa.435.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.g, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i76, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i77, align 8, !alias.scope !265
  %.sroa.536.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i78, align 8, !alias.scope !265
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.ar, align 8, !alias.scope !265
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 628
  store i32 -1, ptr %i.as, align 4, !alias.scope !265
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 2 uses
  store i64 0, ptr %i.at, align 8, !alias.scope !265
  %.sroa.440.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i79, align 8, !alias.scope !265
  %.sroa.541.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  %.sroa.443.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i80, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i81, align 8, !alias.scope !265
  %.sroa.544.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  %.sroa.446.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i82, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i83, align 8, !alias.scope !265
  %.sroa.547.0..sroa_idx.i84 = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i84, align 8, !alias.scope !265
  %.sroa.3.0..sroa_idx.i85 = getelementptr inbounds nuw i8, ptr %i.g, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i85, align 8, !alias.scope !265
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 608
  store ptr null, ptr %i.au, align 8, !alias.scope !265
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 0, ptr %i.av, align 8, !alias.scope !265
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i64 0, ptr %i.aw, align 8, !alias.scope !265
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store i64 0, ptr %i.ax, align 8, !alias.scope !265
  %.sroa.459.0..sroa_idx.i86 = getelementptr inbounds nuw i8, ptr %i.g, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i86, align 8, !alias.scope !265
  %.sroa.560.0..sroa_idx.i87 = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i88 = getelementptr inbounds nuw i8, ptr %i.g, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i87, i8 0, i64 16, i1 false), !alias.scope !265
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i88, align 8, !alias.scope !265
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i89 = getelementptr inbounds nuw i8, ptr %i.g, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i89, align 8, !alias.scope !265
  store ptr @50, ptr %i.ag, align 8
  store i64 9, ptr %i.ah, align 8
  store i32 114, ptr %i.ao, align 8
  store ptr @50, ptr %i.ap, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 600
  store i64 9, ptr %i.ay, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 248
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.az) #21, !noalias !271
  %.pre = load ptr, ptr %.sroa.423.0..sroa_idx.i69, align 8, !alias.scope !275, !noalias !271 ; 2 uses
  store ptr @46, ptr %.pre, align 8, !noalias !271
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  store i64 4, ptr %i.ba, align 8, !noalias !268
  store i64 1, ptr %.sroa.524.0..sroa_idx.i70, align 8, !alias.scope !275, !noalias !271
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0455, ptr noundef nonnull align 8 dereferenceable(344) %i.g, i64 344, i1 false)
  %.sroa.4456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 344
  %.sroa.4456.0.copyload = load i64, ptr %.sroa.4456.0..sroa_idx, align 8, !alias.scope !278, !noalias !279 ; 2 uses
  %.sroa.5457.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx.i77, align 8, !alias.scope !278, !noalias !279 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7459, ptr noundef nonnull align 8 dereferenceable(120) %i.at, i64 120, i1 false)
  %.sroa.8460.0.copyload = load i64, ptr %i.ai, align 8, !alias.scope !278, !noalias !279 ; 2 uses
  %.sroa.10461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 496
  %.sroa.10461.0.copyload = load ptr, ptr %.sroa.10461.0..sroa_idx, align 8, !alias.scope !278, !noalias !279 ; 2 uses
  %.sroa.11458.sroa.5.0..sroa.11458.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.11462.sroa.5, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.11458.sroa.5.0..sroa.11458.0..sroa_idx.sroa_idx, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 23) #22
  %.sroa.0574.0.copyload = load i64, ptr %i.f, align 8
  %.sroa.2575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2575.0.copyload = load ptr, ptr %.sroa.2575.0..sroa_idx, align 8
  %.sroa.3576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.3576.0.copyload = load i64, ptr %.sroa.3576.0..sroa_idx, align 8
  %.0.val.off.i90 = add i64 %.sroa.8460.0.copyload, -1
  %switch.i91 = icmp ult i64 %.0.val.off.i90, -2
  br i1 %switch.i91, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit92

bb.b:                                             ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10461.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10461.0.copyload, i64 noundef %.sroa.8460.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !280
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit92

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit92: ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !288
  %i.bb = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #22, !noalias !288 ; 4 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.c, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i

bb.c:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit92
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #24, !noalias !298
  unreachable

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit92
  store ptr @38, ptr %i.bb, align 8, !noalias !299
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 5, ptr %i.bd, align 8, !noalias !332
  %i.be = icmp eq i64 %.sroa.4456.0.copyload, 0
  br i1 %i.be, label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit129, label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5457.0.copyload) ]
  %i.bf = shl nuw i64 %.sroa.4456.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5457.0.copyload, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !333
  br label %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit129

_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit129: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.h, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0455, i64 344, i1 false)
  %.sroa.4444.0..sroa_idx445 = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  store i64 1, ptr %.sroa.4444.0..sroa_idx445, align 8, !alias.scope !334, !noalias !335
  %.sroa.6447.0..sroa_idx448 = getelementptr inbounds nuw i8, ptr %i.h, i64 352
  store ptr %i.bb, ptr %.sroa.6447.0..sroa_idx448, align 8, !alias.scope !334, !noalias !335
  %.sroa.8450.0..sroa_idx451 = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  store i64 1, ptr %.sroa.8450.0..sroa_idx451, align 8, !alias.scope !334, !noalias !335
  %.sroa.9453.0..sroa_idx454 = getelementptr inbounds nuw i8, ptr %i.h, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.9453.0..sroa_idx454, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7459, i64 120, i1 false)
  %.sroa.9453.sroa.4.0..sroa.9453.0..sroa_idx454.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 488
  store i64 %.sroa.0574.0.copyload, ptr %.sroa.9453.sroa.4.0..sroa.9453.0..sroa_idx454.sroa_idx, align 8, !alias.scope !334, !noalias !335
  %.sroa.9453.sroa.5.0..sroa.9453.0..sroa_idx454.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 496
  store ptr %.sroa.2575.0.copyload, ptr %.sroa.9453.sroa.5.0..sroa.9453.0..sroa_idx454.sroa_idx, align 8, !alias.scope !334, !noalias !335
  %.sroa.9453.sroa.6.0..sroa.9453.0..sroa_idx454.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 504
  store i64 %.sroa.3576.0.copyload, ptr %.sroa.9453.sroa.6.0..sroa.9453.0..sroa_idx454.sroa_idx, align 8, !alias.scope !334, !noalias !335
  %.sroa.9453.sroa.6.sroa.4.0..sroa.9453.sroa.6.0..sroa.9453.0..sroa_idx454.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.9453.sroa.6.sroa.4.0..sroa.9453.sroa.6.0..sroa.9453.0..sroa_idx454.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %.sroa.11462.sroa.5, i64 128, i1 false)
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.i, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.h) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.p, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.i) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.q, ptr noundef nonnull align 8 dereferenceable(712) %i.p, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 576
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 584
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 488 ; 2 uses
  store i64 -1, ptr %i.bi, align 8, !alias.scope !336
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  store i64 -1, ptr %i.bj, align 8, !alias.scope !336
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 636
  store i8 -1, ptr %i.bk, align 4, !alias.scope !336
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store i64 -1, ptr %i.bl, align 8, !alias.scope !336
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  store i64 0, ptr %i.bm, align 8, !alias.scope !336
  %.sroa.45.0..sroa_idx.i96 = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx.i96, align 8, !alias.scope !336
  %.sroa.56.0..sroa_idx.i97 = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  %i.bn = getelementptr inbounds nuw i8, ptr %i.d, i64 632 ; 2 uses
  store i32 0, ptr %i.bn, align 8, !alias.scope !336
  %.sroa.48.0..sroa_idx.i98 = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.56.0..sroa_idx.i97, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx.i98, align 8, !alias.scope !336
  %.sroa.59.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %.sroa.411.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx.i99, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx.i100, align 8, !alias.scope !336
  %.sroa.512.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %.sroa.414.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx.i101, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx.i102, align 8, !alias.scope !336
  %.sroa.515.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %.sroa.417.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.d, i64 208
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx.i103, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx.i104, align 8, !alias.scope !336
  %.sroa.518.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %.sroa.420.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.d, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx.i105, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.420.0..sroa_idx.i106, align 8, !alias.scope !336
  %.sroa.521.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.d, i64 240
  %.sroa.423.0..sroa_idx.i108 = getelementptr inbounds nuw i8, ptr %i.d, i64 256 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.521.0..sroa_idx.i107, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.423.0..sroa_idx.i108, align 8, !alias.scope !336
  %.sroa.524.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.d, i64 264 ; 2 uses
  %.sroa.426.0..sroa_idx.i110 = getelementptr inbounds nuw i8, ptr %i.d, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.524.0..sroa_idx.i109, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.426.0..sroa_idx.i110, align 8, !alias.scope !336
  %.sroa.527.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  store i64 0, ptr %.sroa.527.0..sroa_idx.i111, align 8, !alias.scope !336
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 624
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 296
  store i64 0, ptr %i.bq, align 8, !alias.scope !336
  %.sroa.429.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.d, i64 304
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.429.0..sroa_idx.i112, align 8, !alias.scope !336
  %.sroa.530.0..sroa_idx.i113 = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  %.sroa.432.0..sroa_idx.i114 = getelementptr inbounds nuw i8, ptr %i.d, i64 328
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx.i113, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.432.0..sroa_idx.i114, align 8, !alias.scope !336
  %.sroa.533.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.d, i64 336
  store i64 0, ptr %i.d, align 8, !alias.scope !336
  %.sroa.435.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.d, i64 352 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.533.0..sroa_idx.i115, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.435.0..sroa_idx.i116, align 8, !alias.scope !336
  %.sroa.536.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.d, i64 360
  store i64 0, ptr %.sroa.536.0..sroa_idx.i117, align 8, !alias.scope !336
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.br, align 8, !alias.scope !336
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  store i32 -1, ptr %i.bs, align 4, !alias.scope !336
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 368 ; 2 uses
  store i64 0, ptr %i.bt, align 8, !alias.scope !336
  %.sroa.440.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.d, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.440.0..sroa_idx.i118, align 8, !alias.scope !336
  %.sroa.541.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.d, i64 384
  %.sroa.443.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.d, i64 400
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.541.0..sroa_idx.i119, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.443.0..sroa_idx.i120, align 8, !alias.scope !336
  %.sroa.544.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.d, i64 408
  %.sroa.446.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.d, i64 424
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.544.0..sroa_idx.i121, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.446.0..sroa_idx.i122, align 8, !alias.scope !336
  %.sroa.547.0..sroa_idx.i123 = getelementptr inbounds nuw i8, ptr %i.d, i64 432
  store i64 0, ptr %.sroa.547.0..sroa_idx.i123, align 8, !alias.scope !336
  %.sroa.3.0..sroa_idx.i124 = getelementptr inbounds nuw i8, ptr %i.d, i64 552
  store i64 -2, ptr %.sroa.3.0..sroa_idx.i124, align 8, !alias.scope !336
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 608
  store ptr null, ptr %i.bu, align 8, !alias.scope !336
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.bv, align 8, !alias.scope !336
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %i.bw, align 8, !alias.scope !336
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 440
  store i64 0, ptr %i.bx, align 8, !alias.scope !336
  %.sroa.459.0..sroa_idx.i125 = getelementptr inbounds nuw i8, ptr %i.d, i64 448
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.459.0..sroa_idx.i125, align 8, !alias.scope !336
  %.sroa.560.0..sroa_idx.i126 = getelementptr inbounds nuw i8, ptr %i.d, i64 456
  %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i127 = getelementptr inbounds nuw i8, ptr %i.d, i64 472
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.560.0..sroa_idx.i126, i8 0, i64 16, i1 false), !alias.scope !336
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.661.sroa.4.0..sroa.661.0..sroa_idx.sroa_idx.i127, align 8, !alias.scope !336
  %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %i.d, i64 480
  store i64 0, ptr %.sroa.661.sroa.5.0..sroa.661.0..sroa_idx.sroa_idx.i128, align 8, !alias.scope !336
  store ptr @46, ptr %i.bg, align 8
  store i64 4, ptr %i.bh, align 8
  store i32 115, ptr %i.bo, align 8
  store ptr @46, ptr %i.bp, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 600
  store i64 4, ptr %i.by, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 248
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bz) #21, !noalias !342
  %.pre590 = load ptr, ptr %.sroa.423.0..sroa_idx.i108, align 8, !alias.scope !346, !noalias !342 ; 2 uses
  store ptr @50, ptr %.pre590, align 8, !noalias !342
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre590, i64 8
  store i64 9, ptr %i.ca, align 8, !noalias !339
  store i64 1, ptr %.sroa.524.0..sroa_idx.i109, align 8, !alias.scope !346, !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0481, ptr noundef nonnull align 8 dereferenceable(344) %i.d, i64 344, i1 false)
  %.sroa.4482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %.sroa.4482.0.copyload = load i64, ptr %.sroa.4482.0..sroa_idx, align 8, !alias.scope !349, !noalias !350 ; 2 uses
  %.sroa.5483.0.copyload = load ptr, ptr %.sroa.435.0..sroa_idx.i116, align 8, !alias.scope !349, !noalias !350 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7485, ptr noundef nonnull align 8 dereferenceable(120) %i.bt, i64 120, i1 false)
  %.sroa.8486.0.copyload = load i64, ptr %i.bi, align 8, !alias.scope !349, !noalias !350 ; 2 uses
  %.sroa.10487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 496
  %.sroa.10487.0.copyload = load ptr, ptr %.sroa.10487.0..sroa_idx, align 8, !alias.scope !349, !noalias !350 ; 2 uses
  %.sroa.11483.sroa.5.0..sroa.11483.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11488.sroa.5, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11483.sroa.5.0..sroa.11483.0..sroa_idx.sroa_idx, i64 120, i1 false)
  %i.cb = load <2 x i32>, ptr %i.bn, align 8, !alias.scope !349, !noalias !350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 18) #22
  %.sroa.0583.0.copyload = load i64, ptr %i.c, align 8
  %.sroa.2584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2584.0.copyload = load ptr, ptr %.sroa.2584.0..sroa_idx, align 8
  %.sroa.3585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3585.0.copyload = load i64, ptr %.sroa.3585.0..sroa_idx, align 8
  %.0.val.off.i130 = add i64 %.sroa.8486.0.copyload, -1
  %switch.i131 = icmp ult i64 %.0.val.off.i130, -2
  br i1 %switch.i131, label %bb.e, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit132

bb.e:                                             ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit129
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10487.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10487.0.copyload, i64 noundef %.sroa.8486.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #22, !noalias !351
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit132

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit132: ; preds = %_RINvMs1_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB6_3Arg23required_unless_presentReECskqImE9wpq17_11uu_truncate.exit129, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cc = or <2 x i32> %i.cb, <i32 32, i32 0>
  call void @llvm.experimental.noalias.scope.decl(metadata !354)
  call void @llvm.experimental.noalias.scope.decl(metadata !357)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !359
  %i.cd = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #22, !noalias !359 ; 4 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.f, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i136

bb.f:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit132
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #24, !noalias !369
  unreachable

_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i136: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECskqImE9wpq17_11uu_truncate.exit132
  store ptr @40, ptr %i.cd, align 8, !noalias !370
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i64 4, ptr %i.cf, align 8, !noalias !403
  %i.cg = icmp eq i64 %.sroa.4482.0.copyload, 0
  br i1 %i.cg, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskqImE9wpq17_11uu_truncate.exit140, label %bb.g

bb.g:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i136
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5483.0.copyload) ]
  %i.ch = shl nuw i64 %.sroa.4482.0.copyload, 4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5483.0.copyload, i64 noundef %i.ch, i64 noundef range(i64 1, -9223372036854775807) 8) #22, !noalias !404
  br label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskqImE9wpq17_11uu_truncate.exit140

_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskqImE9wpq17_11uu_truncate.exit140: ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsgNwXemyrBWj_12clap_builder7builder3str3StrEINtB2_12SpecFromIterBU_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters3map3MapINtNtNtB2f_5array4iter8IntoIterBU_Kj1_ENCINvMs_NtBY_3argNtB3F_3Arg11value_namesBU_ABU_B3t_E0EE9from_iterCskqImE9wpq17_11uu_truncate.exit.i136, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %i.e, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.0481, i64 344, i1 false)
  %.sroa.2464.0..sroa_idx465 = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store i64 1, ptr %.sroa.2464.0..sroa_idx465, align 8, !alias.scope !405, !noalias !406
  %.sroa.4467.0..sroa_idx468 = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  store ptr %i.cd, ptr %.sroa.4467.0..sroa_idx468, align 8, !alias.scope !405, !noalias !406
  %.sroa.6470.0..sroa_idx471 = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  store i64 1, ptr %.sroa.6470.0..sroa_idx471, align 8, !alias.scope !405, !noalias !406
  %.sroa.7473.0..sroa_idx474 = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7473.0..sroa_idx474, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7485, i64 120, i1 false)
  %.sroa.7473.sroa.2.0..sroa.7473.0..sroa_idx474.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 488
  store i64 %.sroa.0583.0.copyload, ptr %.sroa.7473.sroa.2.0..sroa.7473.0..sroa_idx474.sroa_idx, align 8, !alias.scope !405, !noalias !406
  %.sroa.7473.sroa.3.0..sroa.7473.0..sroa_idx474.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 496
  store ptr %.sroa.2584.0.copyload, ptr %.sroa.7473.sroa.3.0..sroa.7473.0..sroa_idx474.sroa_idx, align 8, !alias.scope !405, !noalias !406
  %.sroa.7473.sroa.4.0..sroa.7473.0..sroa_idx474.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 504
  store i64 %.sroa.3585.0.copyload, ptr %.sroa.7473.sroa.4.0..sroa.7473.0..sroa_idx474.sroa_idx, align 8, !alias.scope !405, !noalias !406
  %.sroa.7473.sroa.4.sroa.2.0..sroa.7473.sroa.4.0..sroa.7473.0..sroa_idx474.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 512
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.7473.sroa.4.sroa.2.0..sroa.7473.sroa.4.0..sroa.7473.0..sroa_idx474.sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.11488.sroa.5, i64 120, i1 false)
  %.sroa.7475.0..sroa_idx476 = getelementptr inbounds nuw i8, ptr %i.e, i64 632
  store <2 x i32> %i.cc, ptr %.sroa.7475.0..sroa_idx476, align 8, !alias.scope !405, !noalias !406
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.e) #22
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.r, ptr noundef nonnull align 8 dereferenceable(712) %i.q, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !407)
  call void @llvm.experimental.noalias.scope.decl(metadata !410)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #22, !noalias !412
  %i.ci = call noundef align 8 dereferenceable_or_null(16) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 16, i64 noundef range(i64 1, 9) 8) #22, !noalias !412 ; 4 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskqImE9wpq17_11uu_truncate.exit140
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 16) #24, !noalias !422
  unreachable

bb.i:                                             ; preds = %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg11value_namesNtNtB7_3str3StrAB19_j1_ECskqImE9wpq17_11uu_truncate.exit140
  store ptr @41, ptr %i.ci, align 8, !noalias !423
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 4, ptr %i.ck, align 8, !noalias !456
  store i64 0, ptr %i.a, align 8, !alias.scope !457, !noalias !458
  %.sroa.4493.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.4493.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.5495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.5495.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.6497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 0, ptr %.sroa.6497.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.7499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 -1, ptr %.sroa.7499.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.8501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 0, ptr %.sroa.8501.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.9502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9502.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.10503.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10503.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.11504.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.11504.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.12505.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12505.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.13506.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.13506.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.14507.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14507.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.15508.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.15508.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.16509.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.16509.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.17510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.17510.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.18511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18511.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.19512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.19512.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.20513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.20513.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.21514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.21514.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.22515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.22515.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.23516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.23516.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.24517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %.sroa.26519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.24517.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.26519.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.27520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.27520.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.28521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.28521.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.29522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 336
  store i64 0, ptr %.sroa.29522.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.30523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 344
  store i64 1, ptr %.sroa.30523.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.32524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  store ptr %i.ci, ptr %.sroa.32524.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.35525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  store i64 1, ptr %.sroa.35525.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.37526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  store i64 0, ptr %.sroa.37526.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.38527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.38527.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.39528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.39528.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.40529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.40529.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.41530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.41530.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.42531.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42531.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.43532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 432
  %.sroa.45534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.43532.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45534.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.46535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.46535.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.47536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.47536.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.48537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 480
  store i64 0, ptr %.sroa.48537.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.49538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 488
  store i64 -1, ptr %.sroa.49538.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.50540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  store i64 -1, ptr %.sroa.50540.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.51542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 552
  store i64 -2, ptr %.sroa.51542.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.52544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 576
  store ptr @47, ptr %.sroa.52544.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.54545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 584
  store i64 5, ptr %.sroa.54545.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.56546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 592
  store ptr null, ptr %.sroa.56546.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.57548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 608
  store ptr null, ptr %.sroa.57548.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.58550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 624
  store i32 -1, ptr %.sroa.58550.0..sroa_idx, align 8, !alias.scope !457, !noalias !458
  %.sroa.59551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 628
  store i32 -1, ptr %.sroa.59551.0..sroa_idx, align 4, !alias.scope !457, !noalias !458
  %.sroa.60552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 632
  %.sroa.61553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 636
  store i8 1, ptr %.sroa.61553.0..sroa_idx, align 4
  store i32 1, ptr %.sroa.60552.0..sroa_idx, align 8
  call fastcc void @_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg10value_hintNtNtB7_10value_hint9ValueHintECskqImE9wpq17_11uu_truncate(ptr noalias nofree noundef align 8 captures(none) dereferenceable(640) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(640) %i.a) #22
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !459, !noundef !4
  %.off = add nsw i64 %i.cm, -4
  %switch = icmp ult i64 %.off, -5
  br i1 %switch, label %bb.j, label %_RINvMs_NtNtCsgNwXemyrBWj_12clap_builder7builder3argNtB5_3Arg12value_parserNtNtB7_12value_parser11ValueParserECskqImE9wpq17_11uu_truncate.exit

bb.j:                                             ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.val.i.i.i.i = load ptr, ptr %i.cn, align 8    ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %.val1.i.i.i.i = load ptr, ptr %i.co, align 8, !nonnull !4, !align !224, !noundef !4 ; 3 uses
  %i.cp = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !4, !noalias !460 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

end_hunk_1
