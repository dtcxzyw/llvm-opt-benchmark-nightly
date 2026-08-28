Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ln-8aaeeff0e31e4faa.uu_ln.e2f1e85813ea85f5-cgu.0?download=true
inline.NumInlined: 862
inline.NumDeleted: 451
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
@95 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs7tKScEop1B6_5alloc6string6StringNtB6_5Debug3fmtCsju1p4ygkx3l_5uu_ln }>, align 8
@96 = private unnamed_addr constant [12 x i8] c"USimpleError", align 1
@97 = private unnamed_addr constant [4 x i8] c"code", align 1
@98 = private unnamed_addr constant [7 x i8] c"message", align 1
@99 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@100 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 8022765338115755166 to ptr), ptr inttoptr (i64 -4205221647133633730 to ptr) }>, align 8
@llvm.used = appending global [1 x ptr] [ptr @_RNvCsju1p4ygkx3l_5uu_ln21CAPTURE_STARTUP_STATE], section "llvm.metadata"
@switch.table._RNvNtNtNtNtCs2vKOLqTMYjT_3std3sys2io5error4unix17decode_error_kind = private unnamed_addr constant [122 x i8] c"\01\00+#)+\22+++\0D&\01++\1C\0C\1F+\0E\0F\14((+\1D\1B\18\19\11 \0B++\1E!+$\10\12++++++++++++++++++++++++++++++++++++++++++++++++++++++$++\08\09\0A\05+\06\03++\07++\16\02+\04+'\13+++++\1A", align 1

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27, !noalias !44
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !41, !noalias !44
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !44
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit: ; preds = %bb.e, %bb.f
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #28
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, double noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %4 = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %4)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = load i64, ptr %0, align 8, !range !40, !alias.scope !81, !noalias !84, !noundef !4
  %i.z = icmp eq i64 %i.d, %i.y
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27, !noalias !84
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !81, !noalias !84
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.aa = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ab = getelementptr inbounds nuw [144 x i8], ptr %i.aa, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ac = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ac, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  %i.ae = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.af = mul nuw nsw i64 %i.ae, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ad, ptr nonnull align 8 %i.ab, i64 %i.af, i1 false), !noalias !84
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit: ; preds = %bb.d, %bb.e
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #28
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 4, 8) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %4 = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %4)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.y = sitofp i64 %3 to double
  %i.z = load i64, ptr %0, align 8, !range !40, !alias.scope !121, !noalias !124, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #27, !noalias !124
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !121, !noalias !124
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !124
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit: ; preds = %bb.d, %bb.e
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
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #28
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #29
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCsju1p4ygkx3l_5uu_ln.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtCs2vKOLqTMYjT_3std4path4PathECsju1p4ygkx3l_5uu_ln(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(152) initializes((0, 16)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [144 x i8], align 8               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [256 x i8], align 1               ; 6 uses
  %i.d = alloca [144 x i8], align 8               ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [256 x i8], align 1               ; 6 uses
  %i.g = alloca [152 x i8], align 8               ; 15 uses
  %i.h = icmp samesign ugt i64 %2, 255            ; 2 uses
  br i1 %3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.d, label %bb.c, !prof !126

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !127
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !131
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  store i8 0, ptr %i.i, align 1, !noalias !127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !127
  %i.j = add nuw nsw i64 %2, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.j) #28, !noalias !127
  %i.k = load i64, ptr %i.e, align 8, !range !132, !noalias !127, !noundef !4
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls5lstatECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #28
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit

bb.e:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 -22, ptr %i.m, align 2
  store i16 1, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit

bb.f:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !127, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !133
  %i.p = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.o, ptr nonnull %i.d, ptr nonnull inttoptr (i64 256 to ptr)) #28, !noalias !140, !srcloc !141
  %i.q = extractvalue { ptr, i32, i32 } %i.p, 0   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false)
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i

bb.h:                                             ; preds = %bb.f
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = trunc i64 %i.s to i16
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 %i.t, ptr %i.u, align 2
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i: ; preds = %bb.h, %bb.g
  %.sink.i.i.i = phi i16 [ 0, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !133
  store i16 %.sink.i.i.i, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !127
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit

bb.i:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.k, label %bb.j, !prof !126

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !142
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %2, i1 false), !noalias !146
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 %2
  store i8 0, ptr %i.v, align 1, !noalias !142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !142
  %i.w = add nuw nsw i64 %2, 1
  call void @_RNvMs3_NtNtCs6JMX4GRUq9U_4core3ffi5c_strNtB5_4CStr19from_bytes_with_nul(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.w) #28, !noalias !142
  %i.x = load i64, ptr %i.b, align 8, !range !132, !noalias !142, !noundef !4
  %i.y = trunc nuw i64 %i.x to i1
  br i1 %i.y, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.i
  call fastcc void @_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg20with_c_str_slow_pathNtNtNtNtB6_7backend2fs5types4StatNvNtB10_8syscalls4statECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(152) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) #28
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 -22, ptr %i.z, align 2
  store i16 1, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit

bb.m:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !142, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !147
  %i.ac = call { ptr, i32, i32 } asm sideeffect inteldialect "syscall", "={ax},={cx},={r11},{ax},{di},{si},{dx},{r10},~{memory}"(ptr nonnull inttoptr (i64 262 to ptr), ptr nonnull inttoptr (i64 4294967196 to ptr), ptr nonnull readonly %i.ab, ptr nonnull %i.a, ptr null) #28, !noalias !154, !srcloc !141
  %i.ad = extractvalue { ptr, i32, i32 } %i.ac, 0 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i5, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ae, ptr noundef nonnull align 8 dereferenceable(144) %i.a, i64 144, i1 false)
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i

bb.o:                                             ; preds = %bb.m
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = trunc i64 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i16 %i.ag, ptr %i.ah, align 2
  br label %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i

_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i: ; preds = %bb.o, %bb.n
  %.sink.i.i.i6 = phi i16 [ 0, %bb.n ], [ 1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !147
  store i16 %.sink.i.i.i6, ptr %i.g, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !142
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !142
  br label %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit

_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit: ; preds = %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls4statINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB11_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i, %bb.l, %bb.k, %_RNvYNvNtNtNtCscC7ZI6NG8RX_6rustix7backend2fs8syscalls5lstatINtNtNtCs6JMX4GRUq9U_4core3ops8function6FnOnceTRNtNtNtB12_3ffi5c_str4CStrEE9call_onceCsju1p4ygkx3l_5uu_ln.exit.i, %bb.e, %bb.d
  %i.ai = load i16, ptr %i.g, align 8, !range !155, !noundef !4
  %i.aj = trunc nuw i16 %i.ai to i1
  br i1 %i.aj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.al = load i16, ptr %i.ak, align 2, !noundef !4
  %i.am = sext i16 %i.al to i64
  %i.an = load atomic ptr, ptr @_RNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions12OS_FUNCTIONS monotonic, align 8
  %.not.i = icmp eq ptr %i.an, @5
  br i1 %.not.i, label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit, label %bb.q, !prof !156

bb.q:                                             ; preds = %bb.p
  call void @_RNvNvNtNtNtCs6JMX4GRUq9U_4core2io5error12os_functions13set_functions19set_functions_inner(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #28
  br label %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit

_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit: ; preds = %bb.p, %bb.q
  %.neg = mul nsw i64 %i.am, -4294967296
  %i.ao = or disjoint i64 %.neg, 2
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ap, ptr %i.aq, align 8
  br label %bb.s

bb.r:                                             ; preds = %_RINvNtNtCscC7ZI6NG8RX_6rustix4path3arg10with_c_strNtNtNtNtB6_7backend2fs5types4StatNvNtBQ_8syscalls5lstatECsju1p4ygkx3l_5uu_ln.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.as, ptr noundef nonnull align 8 dereferenceable(144) %i.ar, i64 144, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit
  %.sink = phi i64 [ 0, %bb.r ], [ 1, %_RNvMs1_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_5Error32from_raw_os_error_with_functions.exit ]
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: cold noinline nounwind nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !157, !noalias !160, !noundef !4 ; 6 uses
  %i.d = add i64 %i.c, %1                         ; 3 uses
  %i.e = icmp ult i64 %i.d, %i.c
  br i1 %i.e, label %bb.c, label %bb.b, !prof !126

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !157, !noalias !160, !noundef !4 ; 13 uses
  %i.h = icmp ult i64 %i.g, 8
  %i.i = add i64 %i.g, 1                          ; 8 uses
  %i.j = lshr i64 %i.i, 3
  %i.k = mul nuw i64 %i.j, 7
  %.sroa.03.0.i = select i1 %i.h, i64 %i.g, i64 %i.k ; 3 uses
  %i.l = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.d, %i.l
  br i1 %.not.i, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.m = tail call { i64, i64 } @_RNvMNtCs7GWc7oqutCf_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3) #28, !noalias !162 ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsju1p4ygkx3l_5uu_ln.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add nuw i64 %.sroa.03.0.i, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.p, i64 %i.d)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !163)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !166
  call fastcc void @_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %i.a, i64 noundef 168, i64 noundef %..i, i1 noundef zeroext %3) #30
  %i.q = load ptr, ptr %i.a, align 8, !noalias !166, !noundef !4 ; 9 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !166 ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noalias !166 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !166
  br i1 %i.r, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsju1p4ygkx3l_5uu_ln.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = load ptr, ptr %0, align 8, !alias.scope !168, !noalias !169, !nonnull !4, !noundef !4 ; 5 uses
  %i.y = icmp eq i64 %i.c, 0
  br i1 %i.y, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %.val232 = load <16 x i8>, ptr %i.x, align 16
  %i.z = icmp sgt <16 x i8> %.val232, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %.val.i.i = load i64, ptr %2, align 8, !noalias !170, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i = load i64, ptr %i.ab, align 8, !noalias !170, !noundef !4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.025.046 = phi ptr [ %i.x, %.preheader.lr.ph ], [ %.sroa.025.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.045 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.044 = phi i64 [ %i.c, %.preheader.lr.ph ], [ %i.al, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.043 = phi i16 [ %i.aa, %.preheader.lr.ph ], [ %i.aj, %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i138 = icmp eq i16 %.sroa.13.043, 0
  br i1 %.not.i138, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.sroa.025.140 = phi ptr [ %i.ac, %.lr.ph ], [ %.sroa.025.046, %.preheader ] ; 2 uses
  %.sroa.5.139 = phi i64 [ %i.af, %.lr.ph ], [ %.sroa.5.045, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.025.140) ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.025.140, i64 16 ; 3 uses
  %.val33 = load <16 x i8>, ptr %i.ac, align 16
  %i.ad = icmp sgt <16 x i8> %.val33, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16          ; 2 uses
  %i.af = add i64 %.sroa.5.139, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.ae, 0
  br i1 %.not.i1, label %.lr.ph, label %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit

_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit: ; preds = %.lr.ph, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.043, %.preheader ], [ %i.ae, %.lr.ph ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.045, %.preheader ], [ %i.af, %.lr.ph ] ; 2 uses
  %.sroa.025.1.lcssa = phi ptr [ %.sroa.025.046, %.preheader ], [ %i.ac, %.lr.ph ]
  %i.ag = add i16 %.sroa.13.1.lcssa, -1
  %i.ah = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ai = zext nneg i16 %i.ah to i64
  %i.aj = and i16 %i.ag, %.sroa.13.1.lcssa
  %i.ak = add i64 %.sroa.5.1.lcssa, %i.ai         ; 2 uses
  %i.al = add i64 %.sroa.9.044, -1                ; 2 uses
  %i.am = sub nsw i64 0, %i.ak
  %i.an = getelementptr inbounds [168 x i8], ptr %i.x, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -168
  %i.ap = tail call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECsju1p4ygkx3l_5uu_ln(i64 %.val.i.i, i64 %.val1.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ao) #28, !noalias !176 ; 2 uses
  %.sroa.0.07.i = and i64 %i.ap, %i.t             ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.aq, align 1, !noalias !177
  %i.ar = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.as = bitcast <16 x i1> %i.ar to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.as, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !180

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %.sroa.0.0.i7, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.as, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ], [ %i.bj, %.lr.ph.i ]
  %i.at = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.au = zext nneg i16 %i.at to i64
  %i.av = add i64 %.sroa.0.0.lcssa.i, %i.au
  %i.aw = and i64 %i.av, %i.t                     ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noundef !4
  %i.az = icmp sgt i8 %i.ay, -1
  br i1 %i.az, label %bb.f, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !126

bb.f:                                             ; preds = %._crit_edge.i
  %.val2.i.i = load <16 x i8>, ptr %i.q, align 16
  %i.ba = icmp slt <16 x i8> %.val2.i.i, zeroinitializer
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.bb, 0
  %i.bc = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bb, i1 true)
  %i.bd = zext nneg i16 %i.bc to i64
  tail call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i7, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.be = phi i64 [ %i.bf, %.lr.ph.i ], [ 0, %_RNvMsv_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_18FullBucketsIndices9next_impl.exit ]
  %i.bf = add i64 %i.be, 16                       ; 2 uses
  %i.bg = add i64 %i.bf, %.sroa.0.010.i
  %.sroa.0.0.i7 = and i64 %i.bg, %i.t             ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i7
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.bh, align 1, !noalias !177
  %i.bi = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.bj = bitcast <16 x i1> %i.bi to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.bj, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !181

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.f
  %.sroa.0.0.i5.i = phi i64 [ %i.bd, %bb.f ], [ %i.aw, %._crit_edge.i ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.q, i64 %.sroa.0.0.i5.i
  %i.bl = lshr i64 %i.ap, 57
  %i.bm = trunc nuw nsw i64 %i.bl to i8           ; 2 uses
  %i.bn = add i64 %.sroa.0.0.i5.i, -16
  %i.bo = and i64 %i.bn, %i.t
  store i8 %i.bm, ptr %i.bk, align 1
  %i.bp = getelementptr i8, ptr %i.q, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store i8 %i.bm, ptr %i.bq, align 1
  %.neg.i.i = mul i64 %i.ak, -168
  %i.br = getelementptr i8, ptr %i.x, i64 %.neg.i.i
  %i.bs = getelementptr i8, ptr %i.br, i64 -168
  %.neg59.i.i = mul i64 %.sroa.0.0.i5.i, -168
  %i.bt = getelementptr i8, ptr %i.q, i64 %.neg59.i.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 -168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.bu, ptr noundef nonnull align 1 dereferenceable(168) %i.bs, i64 168, i1 false)
  %i.bv = icmp eq i64 %i.al, 0
  br i1 %i.bv, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, %bb.e
  %i.bw = sub i64 %i.v, %i.c
  store i64 %i.w, ptr %0, align 8, !alias.scope !182, !noalias !185
  store i64 %i.t, ptr %i.f, align 8, !alias.scope !187, !noalias !189
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bw, ptr %i.bx, align 8, !alias.scope !191, !noalias !193
  %i.by = icmp eq i64 %i.g, 0
  br i1 %i.by, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsju1p4ygkx3l_5uu_ln.exit, label %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %._crit_edge
  %i.bz = mul nuw i64 %i.i, 168
  %i.ca = add nuw i64 %i.bz, 8
  %i.cb = icmp ult i64 %i.i, 109802048057794951
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = and i64 %i.ca, -16                      ; 3 uses
  %i.cd = add nsw i64 %i.g, 17
  %i.ce = add i64 %i.cd, %i.cc                    ; 4 uses
  %i.cf = icmp uge i64 %i.ce, %i.cc
  %i.cg = icmp ult i64 %i.ce, 9223372036854775793
  tail call void @llvm.assume(i1 %i.cf)
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp eq i64 %i.ce, 0
  br i1 %i.ch, label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsju1p4ygkx3l_5uu_ln.exit, label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.ci = sub nsw i64 0, %i.cc
  %i.cj = getelementptr inbounds i8, ptr %i.x, i64 %i.ci
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cj, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 16) #28, !noalias !195
  br label %_RINvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs7tKScEop1B6_5alloc5alloc6GlobalECsju1p4ygkx3l_5uu_ln.exit

bb.h:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %.val25.i = load ptr, ptr %0, align 8, !alias.scope !200 ; 19 uses
  %.not6.i.i = icmp eq i64 %i.i, 0
  br i1 %.not6.i.i, label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i, label %.lr.ph.i.i

_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread14.i: ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  br label %_RNvMsa_NtCs7GWc7oqutCf_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place.exit

.lr.ph.i.i:                                       ; preds = %bb.h
  %i.ck = lshr i64 %i.i, 4
  %i.cl = and i64 %i.i, 15
  %.not10.i.i.i.i = icmp ne i64 %i.cl, 0
  %i.cm = zext i1 %.not10.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.ck, %i.cm ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.cn = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.cn, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.i

._crit_edge.i.i.unr-lcssa:                        ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph.i.i
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %i.cw, %._crit_edge.i.i.unr-lcssa ]
  %lcmp.mod86 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod86)
  %i.co = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.co, align 16, !noalias !200
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.cp = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.cq = or <2 x i64> %i.cp, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cq, ptr %i.co, align 16, !noalias !200
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.unr-lcssa, %.epil.preheader
  %..i12 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 16)
  %.20.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 16)
  %i.cr = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %..i12
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cr, ptr nonnull align 1 %.val25.i, i64 %.20.i, i1 false), !noalias !200
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.cs, align 8
  br label %.lr.ph.i13

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %i.cw, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.ct, align 16, !noalias !200
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.cu = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.cv = or <2 x i64> %i.cu, splat (i64 -9187201950435737472)
  store <2 x i64> %i.cv, ptr %i.ct, align 16, !noalias !200
  %i.cw = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.0.08.i.i
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.cy, align 16, !noalias !200
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.cz = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.da = or <2 x i64> %i.cz, splat (i64 -9187201950435737472)
  store <2 x i64> %i.da, ptr %i.cy, align 16, !noalias !200
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i.unr-lcssa, label %bb.i

.lr.ph.i13:                                       ; preds = %bb.o, %._crit_edge.i.i
  %.sroa.014.04.i = phi i64 [ %i.db, %bb.o ], [ 0, %._crit_edge.i.i ] ; 7 uses
  %i.db = add nuw i64 %.sroa.014.04.i, 1          ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.val25.i, i64 %.sroa.014.04.i ; 3 uses
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !200, !noundef !4
  %.not.i14 = icmp eq i8 %i.dd, -128
  br i1 %.not.i14, label %bb.j, label %bb.o

bb.j:                                             ; preds = %.lr.ph.i13
  %.neg.i = mul i64 %i.db, -168
  %i.de = getelementptr inbounds i8, ptr %.val25.i, i64 %.neg.i ; 23 uses
  %i.df = sub nsw i64 0, %.sroa.014.04.i
  %i.dg = getelementptr inbounds [168 x i8], ptr %.val25.i, i64 %i.df
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -168
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.de, i64 32 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 40 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.de, i64 64 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.de, i64 72 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.de, i64 80 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.de, i64 88 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 96 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.de, i64 104 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.de, i64 112 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.de, i64 120 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 128 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvNtNtCsh036I4OHgIr_6uucore8features2fs12canonicalizeRNtNtCs2vKOLqTMYjT_3std4path4PathECsju1p4ygkx3l_5uu_ln:bb.a
  %i.eb = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.v) #28 ; 2 uses
  %i.ec = extractvalue { ptr, i64 } %i.eb, 0
  %i.ed = extractvalue { ptr, i64 } %i.eb, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ec, i64 noundef %i.ed) #28
  br label %bb.x

bb.w:                                             ; preds = %bb.m
  store i64 %i.ci, ptr %i.bg, align 8
  store i64 %.sroa.0.0.i90, ptr %i.bf, align 8
  %i.ee = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #28 ; 0 uses
  br label %bb.x

.loopexit:                                        ; preds = %bb.m
  store i64 %i.ci, ptr %i.bg, align 8
  store i64 %.sroa.0.0.i90, ptr %i.bf, align 8
  br label %bb.x

bb.x:                                             ; preds = %.loopexit, %bb.v, %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !620)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !623
  %.val.i.i.i.i = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !alias.scope !620, !noalias !628, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i.i = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !alias.scope !620, !noalias !628, !noundef !4 ; 2 uses
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs16symlink_metadata(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i) #28, !noalias !623
  %i.ef = load i64, ptr %i.b, align 8, !range !629, !noalias !623, !noundef !4
  %i.eg = icmp eq i64 %i.ef, 2
  br i1 %i.eg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.eh = load ptr, ptr %i.cc, align 8, !noalias !623, !nonnull !4, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !623
  br label %bb.bk

bb.z:                                             ; preds = %bb.x
  %.sroa.845.0.copyload.i = load i32, ptr %.sroa.845.0..sroa_idx.i, align 8, !noalias !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !623
  %i.ei = and i32 %.sroa.845.0.copyload.i, 61440
  %i.ej = icmp eq i32 %i.ei, 40960
  br i1 %i.ej, label %bb.aa, label %.thread.thread

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !631
  call void @_RNvNtNtCs2vKOLqTMYjT_3std3sys2fs9read_link(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i) #28, !noalias !632
  %i.ek = load i64, ptr %i.c, align 8, !range !430, !noalias !631, !noundef !4 ; 5 uses
  %i.el = icmp eq i64 %i.ek, -1
  %i.em = load ptr, ptr %i.bt, align 8, !noalias !631 ; 4 uses
  br i1 %i.el, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !631
  br label %bb.bk

_RINvMsr_NtCs2vKOLqTMYjT_3std4pathNtB6_7PathBuf4pushNtNtNtB8_3ffi6os_str8OsStringECsju1p4ygkx3l_5uu_ln.exit: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9148)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9148)
  %i.en = icmp eq i64 %i.ci, 0
  br i1 %i.en, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCsju1p4ygkx3l_5uu_ln.exit.thread, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE9pop_frontCsju1p4ygkx3l_5uu_ln.exit

bb.ac:                                            ; preds = %bb.aa
  %.sroa.538.0.copyload.i = load i64, ptr %.sroa.538.0..sroa_idx.i, align 8, !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !631
  call void @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.u, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef %.sroa.538.0.copyload.i) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.t, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.t) #28
  %i.eo = load i8, ptr %i.s, align 8, !range !541, !noundef !4
  %.not71258 = icmp eq i8 %i.eo, -1
  br i1 %.not71258, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ac, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit
  %.val.i96305 = phi i64 [ %.val.i96304, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ], [ %.val.i96307, %bb.ac ]
  %i.ep = phi ptr [ %i.eu, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ], [ %i.ku, %bb.ac ]
  %i.eq = phi i64 [ %..i, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ], [ %.sroa.0.0.i90, %bb.ac ]
  %i.er = phi i64 [ %i.ew, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ], [ %i.kv, %bb.ac ] ; 2 uses
  %i.es = phi i64 [ %i.fa, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ], [ %i.ci, %bb.ac ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.r, ptr noundef nonnull align 8 dereferenceable(56) %i.s, i64 56, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @_RNvXs3_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponentINtNtCs6JMX4GRUq9U_4core7convert4FromNtNtCs2vKOLqTMYjT_3std4path9ComponentE4from(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.r) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !635)
  %i.et = icmp eq i64 %i.es, %i.er
  br i1 %i.et, label %bb.ad, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit

bb.ad:                                            ; preds = %.lr.ph
  call void @_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4growCsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aa) #27, !noalias !638
  %.pre.i = load i64, ptr %i.aa, align 8, !alias.scope !635, !noalias !638 ; 2 uses
  %.pre5.i = load i64, ptr %i.bg, align 8, !alias.scope !635, !noalias !638
  %.pre = load i64, ptr %i.bf, align 8, !alias.scope !635, !noalias !638
  %.pre301 = load ptr, ptr %i.bh, align 8, !alias.scope !635, !noalias !638
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit: ; preds = %.lr.ph, %bb.ad
  %.val.i96304 = phi i64 [ %.pre.i, %bb.ad ], [ %.val.i96305, %.lr.ph ] ; 2 uses
  %i.eu = phi ptr [ %.pre301, %bb.ad ], [ %i.ep, %.lr.ph ] ; 4 uses
  %i.ev = phi i64 [ %.pre, %bb.ad ], [ %i.eq, %.lr.ph ]
  %i.ew = phi i64 [ %.pre.i, %bb.ad ], [ %i.er, %.lr.ph ] ; 5 uses
  %i.ex = phi i64 [ %.pre5.i, %bb.ad ], [ %i.es, %.lr.ph ]
  %i.ey = add i64 %i.ev, -1                       ; 2 uses
  %i.ez = add i64 %i.ey, %i.ew                    ; 2 uses
  %.not.i95 = icmp ult i64 %i.ez, %i.ew
  %..i = select i1 %.not.i95, i64 %i.ez, i64 %i.ey ; 3 uses
  store i64 %..i, ptr %i.bf, align 8, !alias.scope !635, !noalias !638
  %i.fa = add i64 %i.ex, 1                        ; 3 uses
  store i64 %i.fa, ptr %i.bg, align 8, !alias.scope !635, !noalias !638
  %i.fb = getelementptr inbounds nuw [32 x i8], ptr %i.eu, i64 %..i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.fb, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.q, i64 32, i1 false), !noalias !635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvXsj_NtCs2vKOLqTMYjT_3std4pathNtB5_10ComponentsNtNtNtNtCs6JMX4GRUq9U_4core4iter6traits12double_ended19DoubleEndedIterator9next_back(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.t) #28
  %i.fc = load i8, ptr %i.s, align 8, !range !541, !noundef !4
  %.not71 = icmp eq i8 %i.fc, -1
  br i1 %.not71, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit, %bb.ac
  %.promoted310 = phi i64 [ %i.ci, %bb.ac ], [ %i.fa, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ] ; 6 uses
  %.val.i96 = phi i64 [ %.val.i96307, %bb.ac ], [ %.val.i96304, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ] ; 8 uses
  %i.fd = phi ptr [ %i.ku, %bb.ac ], [ %i.eu, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ]
  %i.fe = phi i64 [ %i.kv, %bb.ac ], [ %i.ew, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ]
  %i.ff = phi ptr [ %i.kw, %bb.ac ], [ %i.eu, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ]
  %i.fg = phi i64 [ %i.kx, %bb.ac ], [ %i.ew, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE14push_front_mutCsju1p4ygkx3l_5uu_ln.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.fh = icmp slt i32 %.sroa.022.0.ph261, 20
  br i1 %i.fh, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fi = load ptr, ptr %.sroa.358.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  %i.fj = load i64, ptr %.sroa.461.0..sroa_idx, align 8, !noundef !4
  %i.fk = call { ptr, i64 } @_RNvMs16_NtCs2vKOLqTMYjT_3std4pathNtB6_4Path6parent(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fi, i64 noundef %i.fj) #28 ; 2 uses
  %i.fl = extractvalue { ptr, i64 } %i.fk, 0      ; 2 uses
  %.not72 = icmp eq ptr %i.fl, null
  br i1 %.not72, label %bb.al, label %bb.ag, !prof !126

bb.af:                                            ; preds = %._crit_edge
  %i.fm = add nsw i32 %.sroa.022.0.ph261, 1
  br label %bb.az

bb.ag:                                            ; preds = %bb.ae
  %i.fn = extractvalue { ptr, i64 } %i.fk, 1
  call fastcc void @_RINvMNtNtCsh036I4OHgIr_6uucore8features2fsNtB3_15FileInformation9from_pathRNtNtCs2vKOLqTMYjT_3std4path4PathECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %i.o, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fl, i64 noundef %i.fn, i1 noundef zeroext false) #28
  call void @llvm.experimental.noalias.scope.decl(metadata !640)
  call void @llvm.experimental.noalias.scope.decl(metadata !643)
  %i.fo = load i64, ptr %i.o, align 8, !range !132, !alias.scope !643, !noalias !640, !noundef !4
  %i.fp = trunc nuw i64 %i.fo to i1
  br i1 %i.fp, label %bb.ah, label %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit, !prof !126

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !645
  %i.fq = load ptr, ptr %i.bu, align 8, !alias.scope !643, !noalias !640, !nonnull !4, !noundef !4
  store ptr %i.fq, ptr %i.l, align 8, !noalias !645
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 43, ptr noundef nonnull %i.l, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @73, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29, !noalias !645
  unreachable

_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit: ; preds = %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.p, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.bu, i64 144, i1 false), !alias.scope !645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 0, ptr %i.n, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.358.0..sroa_idx59, align 8
  store i64 0, ptr %.sroa.461.0..sroa_idx62, align 8
  %i.fr = icmp eq i64 %.promoted310, 0
  br i1 %i.fr, label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit, label %bb.ai

bb.ai:                                            ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit
  %.val2.i97 = load i64, ptr %i.bf, align 8, !alias.scope !646, !noalias !649 ; 2 uses
  %.not.i.i = icmp ult i64 %.val2.i97, %.val.i96
  %i.fs = select i1 %.not.i.i, i64 0, i64 %.val.i96
  %.sroa.04.0.i.i = sub nuw i64 %.val2.i97, %i.fs ; 4 uses
  %i.ft = sub i64 %.val.i96, %.sroa.04.0.i.i      ; 2 uses
  %.not11.i.i = icmp ult i64 %i.ft, %.promoted310
  br i1 %.not11.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fu = sub nuw i64 %.promoted310, %i.ft
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit

bb.ak:                                            ; preds = %bb.ai
  %i.fv = add i64 %.sroa.04.0.i.i, %.promoted310
  br label %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit

_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit, %bb.aj, %bb.ak
  %.sroa.0.0.i98 = phi i64 [ %.sroa.04.0.i.i, %bb.ak ], [ %.sroa.04.0.i.i, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit ]
  %.sroa.5.0.i99 = phi i64 [ %i.fv, %bb.ak ], [ %.val.i96, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit ]
  %.sroa.11.0.i = phi i64 [ 0, %bb.ak ], [ %i.fu, %bb.aj ], [ 0, %_RNvMNtCs6JMX4GRUq9U_4core6resultINtB2_6ResultNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtNtB4_2io5error5ErrorE6unwrapCsju1p4ygkx3l_5uu_ln.exit ]
  %i.fw = load ptr, ptr %i.bh, align 8, !alias.scope !646, !noalias !649, !nonnull !4, !noundef !4 ; 6 uses
  %i.fx = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %.sroa.0.0.i98
  %i.fy = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %.sroa.5.0.i99
  %i.fz = getelementptr inbounds nuw [32 x i8], ptr %i.fw, i64 %.sroa.11.0.i
  br label %bb.am

bb.al:                                            ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #29
  unreachable

bb.am:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit
  %.sroa.10168.sroa.5.0 = phi ptr [ %i.fz, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit ], [ %.sroa.10168.sroa.5.1202, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196 ] ; 3 uses
  %.sroa.10168.sroa.0.0 = phi ptr [ %i.fw, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit ], [ %.sroa.10168.sroa.0.1203, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196 ] ; 3 uses
  %.sroa.0163.sroa.0.0 = phi ptr [ %i.fx, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit ], [ %i.gc, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196 ] ; 4 uses
  %.sroa.0163.sroa.7.0 = phi ptr [ %i.fy, %_RNvMs4_NtNtCs7tKScEop1B6_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentE4iterCsju1p4ygkx3l_5uu_ln.exit ], [ %.sroa.0163.sroa.7.1204, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196 ] ; 2 uses
  %i.ga = icmp eq ptr %.sroa.0163.sroa.0.0, %.sroa.0163.sroa.7.0
  br i1 %i.ga, label %bb.an, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196

bb.an:                                            ; preds = %bb.am
  %i.gb = icmp eq ptr %.sroa.10168.sroa.0.0, %.sroa.10168.sroa.5.0
  br i1 %i.gb, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread, label %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread196: ; preds = %bb.am, %bb.an
  %.sink6.i205 = phi ptr [ %.sroa.10168.sroa.0.0, %bb.an ], [ %.sroa.0163.sroa.0.0, %bb.am ] ; 2 uses
  %.sroa.0163.sroa.7.1204 = phi ptr [ %.sroa.10168.sroa.5.0, %bb.an ], [ %.sroa.0163.sroa.7.0, %bb.am ]
  %.sroa.10168.sroa.0.1203 = phi ptr [ %.sroa.0163.sroa.0.0, %bb.an ], [ %.sroa.10168.sroa.0.0, %bb.am ]
  %.sroa.10168.sroa.5.1202 = phi ptr [ %.sroa.0163.sroa.0.0, %bb.an ], [ %.sroa.10168.sroa.5.0, %bb.am ]
  %i.gc = getelementptr inbounds nuw i8, ptr %.sink6.i205, i64 32
  %i.gd = call { ptr, i64 } @_RNvMs2_NtNtCsh036I4OHgIr_6uucore8features2fsNtB5_15OwningComponent9as_os_str(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sink6.i205) #28 ; 2 uses
  %i.ge = extractvalue { ptr, i64 } %i.gd, 0
  %i.gf = extractvalue { ptr, i64 } %i.gd, 1
  call void @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf5__push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ge, i64 noundef %i.gf) #28
  br label %bb.am

_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread: ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.m, ptr noundef nonnull align 8 dereferenceable(144) %i.p, i64 144, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !651)
  call void @llvm.experimental.noalias.scope.decl(metadata !654)
  %.val.i101 = load i64, ptr %.sroa.468.0..sroa_idx, align 8, !alias.scope !651, !noalias !654, !noundef !4
  %.val6.i = load i64, ptr %.sroa.569.0..sroa_idx, align 8, !alias.scope !651, !noalias !654, !noundef !4
  %i.gg = call fastcc noundef i64 @_RINvYNtNtNtCs2vKOLqTMYjT_3std4hash6random11RandomStateNtNtCs6JMX4GRUq9U_4core4hash11BuildHasher8hash_oneRTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtB9_4path7PathBufEECsju1p4ygkx3l_5uu_ln(i64 %.val.i101, i64 %.val6.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.m) #28, !noalias !651 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !656)
  call void @llvm.experimental.noalias.scope.decl(metadata !659)
  %i.gh = load i64, ptr %i.bw, align 8, !alias.scope !661, !noalias !664, !noundef !4
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.ao, label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i, !prof !126

bb.ao:                                            ; preds = %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread
  %i.gj = call { i64, i64 } @_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.w, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.468.0..sroa_idx, i1 noundef zeroext true) #27, !noalias !667 ; 0 uses
  br label %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i

_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i: ; preds = %bb.ao, %_RNvXs2_NtNtNtCs7tKScEop1B6_5alloc11collections9vec_deque4iterINtB5_4IterNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentENtNtNtNtCs6JMX4GRUq9U_4core4iter6traits8iterator8Iterator4nextCsju1p4ygkx3l_5uu_ln.exit.thread
  %.val.i.i = load ptr, ptr %i.w, align 8, !alias.scope !668, !noalias !669, !nonnull !4, !noundef !4 ; 12 uses
  %.val5.i.i = load i64, ptr %i.bx, align 8, !alias.scope !668, !noalias !669, !noundef !4 ; 8 uses
  %i.gk = lshr i64 %i.gg, 57
  %i.gl = trunc nuw nsw i64 %i.gk to i8           ; 3 uses
  %i.gm = insertelement <16 x i8> poison, i8 %i.gl, i64 0
  %i.gn = shufflevector <16 x i8> %i.gm, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val4.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !667, !noalias !670
  %.val5.i.i.i.i.i.i = load i64, ptr %i.by, align 8, !alias.scope !667, !noalias !670
  %.val.i.i.i.i.i.i = load ptr, ptr %i.bz, align 8, !alias.scope !667, !noalias !670 ; 3 uses
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !667, !noalias !670
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ar, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.gg, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i ], [ %i.hr, %bb.ar ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i ], [ %.sroa.4.120.i.i.i, %bb.ar ]
  %.sroa.04.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i ], [ %.sroa.04.122.i.i.i, %bb.ar ]
  %i.go = phi i64 [ 0, %_RINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB6_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE7reserveNCINvNtB8_3map11make_hasherBQ_uNtNtNtB1P_4hash6random11RandomStateE0ECsju1p4ygkx3l_5uu_ln.exit.i.i ], [ %i.hq, %bb.ar ]
  %.sroa.0.017.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.017.i.i.i
  %.sroa.0.0.copyload.i27.i.i.i = load <16 x i8>, ptr %i.gp, align 1, !noalias !671 ; 3 uses
  %i.gq = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, %i.gn
  %i.gr = bitcast <16 x i1> %i.gq to i16          ; 2 uses
  %.not28.i.i.i = icmp eq i16 %i.gr, 0
  br i1 %.not28.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ap, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.thread.i.i
  %.sroa.01.029.i.i.i = phi i16 [ %i.hg, %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.thread.i.i ], [ %i.gr, %bb.ap ] ; 3 uses
  %i.gs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i.i, i1 true)
  %i.gt = zext nneg i16 %i.gs to i64
  %i.gu = add i64 %.sroa.0.017.i.i.i, %i.gt
  %i.gv = and i64 %i.gu, %.val5.i.i
  %i.gw = sub nsw i64 0, %i.gv
  %i.gx = getelementptr inbounds [168 x i8], ptr %.val.i.i, i64 %i.gw ; 4 uses
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -168
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %.val6.i.i.i.i.i.i = load i64, ptr %i.gy, align 8, !alias.scope !683, !noalias !684, !noundef !4
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -160
  %.val7.i.i.i.i.i.i = load i64, ptr %i.gz, align 8, !alias.scope !683, !noalias !684
  %i.ha = icmp eq i64 %.val4.i.i.i.i.i.i, %.val6.i.i.i.i.i.i
  %i.hb = icmp eq i64 %.val5.i.i.i.i.i.i, %.val7.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = select i1 %i.ha, i1 %i.hb, i1 false
  br i1 %.sroa.0.0.i.i.i.i.i.i.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.i.i, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.thread.i.i, !prof !689

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.hc = getelementptr inbounds i8, ptr %i.gx, i64 -16
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.hc, align 8, !alias.scope !683, !noalias !684
  %i.hd = getelementptr inbounds i8, ptr %i.gx, i64 -8
  %.val3.i.i.i.i.i.i = load i64, ptr %i.hd, align 8, !alias.scope !683, !noalias !684
  %i.he = call fastcc noundef zeroext i1 @_RNvXsW_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBufNtNtCs6JMX4GRUq9U_4core3cmp9PartialEq2eq(ptr %.val.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i, ptr %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i) #30, !noalias !690
  br i1 %i.he, label %bb.au, label %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.thread.i.i, !prof !691

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.thread.i.i, %bb.ap
  %.not12.i.i.i = icmp eq i64 %.sroa.04.0.i.i.i, 1
  br i1 %.not12.i.i.i, label %.thread.i.i.i, label %bb.aq, !prof !126

_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.thread.i.i: ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.i.i, %.lr.ph.i.i.i
  %i.hf = add i16 %.sroa.01.029.i.i.i, -1
  %i.hg = and i16 %i.hf, %.sroa.01.029.i.i.i      ; 2 uses
  %.not.i.i.i102 = icmp eq i16 %i.hg, 0
  br i1 %.not.i.i.i102, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.aq:                                            ; preds = %._crit_edge.i.i.i
  %i.hh = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, zeroinitializer
  %i.hi = bitcast <16 x i1> %i.hh to i16          ; 2 uses
  %.not.i.i.i.i103 = icmp eq i16 %i.hi, 0
  br i1 %.not.i.i.i.i103, label %bb.ar, label %.thread24.i.i.i, !prof !126

.thread24.i.i.i:                                  ; preds = %bb.aq
  %i.hj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hi, i1 true)
  %i.hk = zext nneg i16 %i.hj to i64
  %i.hl = add i64 %.sroa.0.017.i.i.i, %i.hk
  %i.hm = and i64 %i.hl, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread24.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.121.i.i.i = phi i64 [ %i.hm, %.thread24.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.hn = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i.i, splat (i8 -1)
  %i.ho = bitcast <16 x i1> %i.hn to i16
  %i.hp = icmp eq i16 %i.ho, 0
  br i1 %i.hp, label %bb.ar, label %bb.as, !prof !126

bb.ar:                                            ; preds = %.thread.i.i.i, %bb.aq
  %.sroa.04.122.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.aq ]
  %.sroa.4.120.i.i.i = phi i64 [ %.sroa.4.121.i.i.i, %.thread.i.i.i ], [ undef, %bb.aq ]
  %i.hq = add i64 %i.go, 16                       ; 2 uses
  %i.hr = add i64 %i.hq, %.sroa.0.017.i.i.i
  br label %bb.ap

bb.as:                                            ; preds = %.thread.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.121.i.i.i
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !692, !noundef !4 ; 2 uses
  %i.hu = icmp sgt i8 %i.ht, -1
  br i1 %i.hu, label %bb.at, label %bb.ay, !prof !126

bb.at:                                            ; preds = %bb.as
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !692
  %i.hv = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.hw = bitcast <16 x i1> %i.hv to i16          ; 2 uses
  %.not.i23.i.i.i = icmp ne i16 %i.hw, 0
  %i.hx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.hw, i1 true)
  %i.hy = zext nneg i16 %i.hx to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i23.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.hy
  %.pre.i105 = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !693
  br label %bb.ay

bb.au:                                            ; preds = %_RNCINvMs6_NtCs7GWc7oqutCf_9hashbrown3rawINtB8_8RawTableTTNtNtNtCsh036I4OHgIr_6uucore8features2fs15FileInformationNtNtCs2vKOLqTMYjT_3std4path7PathBufEuEE25find_or_find_insert_indexNCINvNtBa_3map14equivalent_keyBS_BS_uE0NCINvB2W_11make_hasherBS_uNtNtNtB1R_4hash6random11RandomStateE0E0Csju1p4ygkx3l_5uu_ln.exit.i.i
  %.val7.i = load i64, ptr %i.bv, align 8, !range !40, !alias.scope !654, !noalias !651, !noundef !4 ; 2 uses
  %i.hz = icmp eq i64 %.val7.i, 0
  br i1 %i.hz, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef %.val7.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !697
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ia = call noundef nonnull ptr @_RINvMNtNtCs7tKScEop1B6_5alloc2io5errorNtNtNtCs6JMX4GRUq9U_4core2io5error5Error3newReECs2vKOLqTMYjT_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 33) #27
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ia, ptr %i.ib, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.ic = icmp eq i64 %i.ek, 0
  br i1 %i.ic, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsju1p4ygkx3l_5uu_ln.exit106, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.em, i64 noundef %i.ek, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsju1p4ygkx3l_5uu_ln.exit106

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsju1p4ygkx3l_5uu_ln.exit106: ; preds = %bb.aw, %bb.ax
  %i.id = icmp eq i64 %.sroa.0146.0.copyload147, 0
  br i1 %i.id, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsh036I4OHgIr_6uucore8features2fs15OwningComponentECsju1p4ygkx3l_5uu_ln.exit134, label %bb.bi

bb.ay:                                            ; preds = %bb.at, %bb.as
  %i.ie = phi i8 [ %.pre.i105, %bb.at ], [ %i.ht, %bb.as ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.hy, %bb.at ], [ %.sroa.4.121.i.i.i, %bb.as ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !698)
  %i.if = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.ig = and i8 %i.ie, 1
  %i.ih = zext nneg i8 %i.ig to i64
  %i.ii = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.ij = and i64 %i.ii, %.val5.i.i
  store i8 %i.gl, ptr %i.if, align 1, !noalias !693
  %i.ik = getelementptr i8, ptr %.val.i.i, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 16
  store i8 %i.gl, ptr %i.il, align 1, !noalias !693
  %i.im = load <2 x i64>, ptr %i.bw, align 8, !alias.scope !699, !noalias !700
  %i.in = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ih, i64 0
  %i.io = sub <2 x i64> %i.im, %i.in
  store <2 x i64> %i.io, ptr %i.bw, align 8, !alias.scope !699, !noalias !700
  %i.ip = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.iq = getelementptr inbounds [168 x i8], ptr %.val.i.i, i64 %i.ip
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 -168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ir, ptr noundef nonnull readonly align 8 dereferenceable(168) %i.m, i64 168, i1 false), !noalias !699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.af
  %i.is = phi ptr [ %i.fd, %bb.af ], [ %i.fw, %bb.ay ] ; 2 uses
  %i.it = phi i64 [ %i.fe, %bb.af ], [ %.val.i96, %bb.ay ] ; 2 uses
  %i.iu = phi ptr [ %i.ff, %bb.af ], [ %i.fw, %bb.ay ] ; 2 uses
  %i.iv = phi i64 [ %i.fg, %bb.af ], [ %.val.i96, %bb.ay ] ; 2 uses
  %.sroa.022.2 = phi i32 [ %i.fm, %bb.af ], [ %.sroa.022.0.ph261, %bb.ay ] ; 2 uses
  %i.iw = call noundef zeroext i1 @_RNvMsr_NtCs2vKOLqTMYjT_3std4pathNtB5_7PathBuf3pop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #28 ; 0 uses
  %i.ix = icmp eq i64 %i.ek, 0
end_hunk_1
begin_hunk_2_@_RNvCsju1p4ygkx3l_5uu_ln4link:bb.a
  %i.aea = zext i8 %i.adz to i32
  %i.aeb = add nsw i32 %i.aea, -48                ; 2 uses
  %i.aec = icmp ult i32 %i.aeb, 10
  br i1 %i.aec, label %bb.iw, label %.loopexit.i478

bb.iw:                                            ; preds = %bb.iv
  %i.aed = zext nneg i32 %i.aeb to i64
  %i.aee = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.adx, i64 %i.aed) ; 2 uses
  %i.aef = extractvalue { i64, i1 } %i.aee, 1
  br i1 %i.aef, label %.loopexit.i478, label %bb.ix, !prof !126

bb.ix:                                            ; preds = %bb.iw
  %i.aeg = extractvalue { i64, i1 } %i.aee, 0     ; 2 uses
  %.not102.i.i486 = icmp eq i64 %i.adv, 0
  br i1 %.not102.i.i486, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487, label %.lr.ph.i.i482

.lr.ph141.i.i491:                                 ; preds = %.preheader114.i.i489, %bb.iy
  %.sroa.0.2140.i.i492 = phi ptr [ %i.aen, %bb.iy ], [ %i.adr, %.preheader114.i.i489 ] ; 2 uses
  %.sroa.26.2139.i.i493 = phi i64 [ %i.aem, %bb.iy ], [ %i.ads, %.preheader114.i.i489 ]
  %.sroa.084.2138.i.i494 = phi i64 [ %i.aep, %bb.iy ], [ 0, %.preheader114.i.i489 ]
  %i.aeh = load i8, ptr %.sroa.0.2140.i.i492, align 1, !alias.scope !1485, !noalias !1488, !noundef !4
  %i.aei = zext i8 %i.aeh to i32
  %i.aej = add nsw i32 %i.aei, -48                ; 2 uses
  %i.aek = icmp ult i32 %i.aej, 10
  br i1 %i.aek, label %bb.iy, label %.loopexit.i478

bb.iy:                                            ; preds = %.lr.ph141.i.i491
  %i.ael = mul i64 %.sroa.084.2138.i.i494, 10
  %i.aem = add nsw i64 %.sroa.26.2139.i.i493, -1  ; 2 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i.i492, i64 1
  %i.aeo = zext nneg i32 %i.aej to i64
  %i.aep = sub i64 %i.ael, %i.aeo                 ; 2 uses
  %.not103.i.i495 = icmp eq i64 %i.aem, 0
  br i1 %.not103.i.i495, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487, label %.lr.ph141.i.i491

bb.iz:                                            ; preds = %bb.it, %bb.is
  %.sroa.26.0.i.i496 = phi i64 [ %i.adq, %bb.it ], [ %.sroa.8.0.copyload13.i477, %bb.is ] ; 4 uses
  %.sroa.0.0.i.i497 = phi ptr [ %i.adp, %bb.it ], [ %.sroa.5.0.copyload10.i476, %bb.is ] ; 2 uses
  %i.aeq = icmp samesign ult i64 %.sroa.26.0.i.i496, 16
  br i1 %i.aeq, label %.preheader.i.i503, label %.preheader111.i.i498

.preheader.i.i503:                                ; preds = %bb.iz
  %.not105146.i.i504 = icmp eq i64 %.sroa.26.0.i.i496, 0
  br i1 %.not105146.i.i504, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487, label %.lr.ph150.i.i505

.preheader111.i.i498:                             ; preds = %bb.iz, %bb.jc
  %.sroa.0.3145.i.i499 = phi ptr [ %i.aer, %bb.jc ], [ %.sroa.0.0.i.i497, %bb.iz ] ; 2 uses
  %.sroa.26.3144.i.i500 = phi i64 [ %i.aes, %bb.jc ], [ %.sroa.26.0.i.i496, %bb.iz ]
  %.sroa.084.3143.i.i501 = phi i64 [ %i.afd, %bb.jc ], [ 0, %bb.iz ]
  %i.aer = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i.i499, i64 1
  %i.aes = add nsw i64 %.sroa.26.3144.i.i500, -1  ; 2 uses
  %i.aet = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i.i501, i64 10) ; 2 uses
  %i.aeu = extractvalue { i64, i1 } %i.aet, 0
  %i.aev = extractvalue { i64, i1 } %i.aet, 1
  br i1 %i.aev, label %.loopexit.i478, label %bb.ja, !prof !126

bb.ja:                                            ; preds = %.preheader111.i.i498
  %i.aew = load i8, ptr %.sroa.0.3145.i.i499, align 1, !alias.scope !1485, !noalias !1488, !noundef !4
  %i.aex = zext i8 %i.aew to i32
  %i.aey = add nsw i32 %i.aex, -48                ; 2 uses
  %i.aez = icmp ult i32 %i.aey, 10
  br i1 %i.aez, label %bb.jb, label %.loopexit.i478

bb.jb:                                            ; preds = %bb.ja
  %i.afa = zext nneg i32 %i.aey to i64
  %i.afb = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.aeu, i64 %i.afa) ; 2 uses
  %i.afc = extractvalue { i64, i1 } %i.afb, 1
  br i1 %i.afc, label %.loopexit.i478, label %bb.jc, !prof !126

bb.jc:                                            ; preds = %bb.jb
  %i.afd = extractvalue { i64, i1 } %i.afb, 0     ; 2 uses
  %.not104.i.i502 = icmp eq i64 %i.aes, 0
  br i1 %.not104.i.i502, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487, label %.preheader111.i.i498

.lr.ph150.i.i505:                                 ; preds = %.preheader.i.i503, %bb.jd
  %.sroa.0.4149.i.i506 = phi ptr [ %i.afk, %bb.jd ], [ %.sroa.0.0.i.i497, %.preheader.i.i503 ] ; 2 uses
  %.sroa.26.4148.i.i507 = phi i64 [ %i.afj, %bb.jd ], [ %.sroa.26.0.i.i496, %.preheader.i.i503 ]
  %.sroa.084.4147.i.i508 = phi i64 [ %i.afm, %bb.jd ], [ 0, %.preheader.i.i503 ]
  %i.afe = load i8, ptr %.sroa.0.4149.i.i506, align 1, !alias.scope !1485, !noalias !1488, !noundef !4
  %i.aff = zext i8 %i.afe to i32
  %i.afg = add nsw i32 %i.aff, -48                ; 2 uses
  %i.afh = icmp ult i32 %i.afg, 10
  br i1 %i.afh, label %bb.jd, label %.loopexit.i478

bb.jd:                                            ; preds = %.lr.ph150.i.i505
  %i.afi = mul i64 %.sroa.084.4147.i.i508, 10
  %i.afj = add nsw i64 %.sroa.26.4148.i.i507, -1  ; 2 uses
  %i.afk = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i.i506, i64 1
  %i.afl = zext nneg i32 %i.afg to i64
  %i.afm = add i64 %i.afi, %i.afl                 ; 2 uses
  %.not105.i.i509 = icmp eq i64 %i.afj, 0
  br i1 %.not105.i.i509, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487, label %.lr.ph150.i.i505

.loopexit.i478:                                   ; preds = %bb.iw, %bb.iv, %.lr.ph.i.i482, %.lr.ph141.i.i491, %bb.jb, %bb.ja, %.preheader111.i.i498, %.lr.ph150.i.i505, %bb.ir, %bb.ir, %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCsju1p4ygkx3l_5uu_ln.exit.i474
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1475
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.0.copyload10.i476, i64 noundef %.sroa.8.0.copyload13.i477) #27, !noalias !1490
  %i.afn = load i8, ptr %i.f, align 8, !range !571, !noalias !1475, !noundef !4
  %i.afo = trunc nuw i8 %i.afn to i1
  br i1 %i.afo, label %bb.jg, label %bb.jh

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487: ; preds = %bb.ix, %bb.iy, %bb.jc, %bb.jd, %.preheader.i.i503, %.preheader114.i.i489
  %.sroa.1517.0.i488 = phi i64 [ %i.afm, %bb.jd ], [ %i.aep, %bb.iy ], [ %i.afd, %bb.jc ], [ 0, %.preheader.i.i503 ], [ 0, %.preheader114.i.i489 ], [ %i.aeg, %bb.ix ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, i64 noundef %.sroa.1517.0.i488) #28, !noalias !1490
  br label %bb.je

bb.je:                                            ; preds = %bb.jh, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit.i487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1475
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1475
  %i.afp = icmp eq i64 %.sroa.0.0.copyload7.i475, 0
  br i1 %i.afp, label %_RNCNvCsju1p4ygkx3l_5uu_ln4links1_0B3_.exit, label %bb.jf

bb.jf:                                            ; preds = %bb.je
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload10.i476, i64 noundef %.sroa.0.0.copyload7.i475, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1491
  br label %_RNCNvCsju1p4ygkx3l_5uu_ln4links1_0B3_.exit

bb.jg:                                            ; preds = %.loopexit.i478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1475
  store i64 %.sroa.0.0.copyload7.i475, ptr %i.e, align 8, !noalias !1475
  %.sroa.5.0..sroa_idx8.i480 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %.sroa.5.0.copyload10.i476, ptr %.sroa.5.0..sroa_idx8.i480, align 8, !noalias !1475
  %.sroa.8.0..sroa_idx.i481 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.8.0.copyload13.i477, ptr %.sroa.8.0..sroa_idx.i481, align 8, !noalias !1475
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e) #28, !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !1475
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1475
  br label %_RNCNvCsju1p4ygkx3l_5uu_ln4links1_0B3_.exit

bb.jh:                                            ; preds = %.loopexit.i478
  %i.afq = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.afr = load double, ptr %i.afq, align 8, !noalias !1475, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECsju1p4ygkx3l_5uu_ln(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @16, i64 noundef 4, double noundef %i.afr) #28, !noalias !1490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1475
  br label %bb.je

_RNCNvCsju1p4ygkx3l_5uu_ln4links1_0B3_.exit:      ; preds = %bb.je, %bb.jf, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.4690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 -1, ptr %.sroa.4690.0..sroa_idx, align 8
  %.sroa.6692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.adi, ptr %.sroa.6692.0..sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCsju1p4ygkx3l_5uu_ln7LnErrorEBD_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.cj) #28
  br label %bb.ji

bb.ji:                                            ; preds = %_RNCNvCsju1p4ygkx3l_5uu_ln4links1_0B3_.exit, %bb.io
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  br label %bb.gi

bb.jj:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CowNtNtCs2vKOLqTMYjT_3std4path4PathEECsju1p4ygkx3l_5uu_ln.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.1) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.1, i64 noundef %.sroa.0.1, i64 noundef range(i64 1, -9223372036854775807) 1) #28
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECsju1p4ygkx3l_5uu_ln.exit446
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCsju1p4ygkx3l_5uu_ln6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
.split:
  %i.a = alloca [640 x i8], align 8               ; 53 uses
  %i.b = alloca [640 x i8], align 8               ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [640 x i8], align 8               ; 53 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [640 x i8], align 8               ; 56 uses
  %i.g = alloca [640 x i8], align 8               ; 3 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [640 x i8], align 8               ; 53 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [640 x i8], align 8               ; 57 uses
  %i.l = alloca [640 x i8], align 8               ; 7 uses
  %i.m = alloca [640 x i8], align 8               ; 7 uses
  %i.n = alloca [640 x i8], align 8               ; 4 uses
  %i.o = alloca [640 x i8], align 8               ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 6 uses
  %i.q = alloca [640 x i8], align 8               ; 56 uses
  %i.r = alloca [640 x i8], align 8               ; 3 uses
  %i.s = alloca [24 x i8], align 8                ; 6 uses
  %i.t = alloca [640 x i8], align 8               ; 53 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [640 x i8], align 8               ; 56 uses
  %i.w = alloca [640 x i8], align 8               ; 3 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [640 x i8], align 8               ; 53 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [640 x i8], align 8              ; 56 uses
  %i.ab = alloca [640 x i8], align 8              ; 3 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [640 x i8], align 8              ; 56 uses
  %i.ae = alloca [640 x i8], align 8              ; 3 uses
  %i.af = alloca [640 x i8], align 8              ; 4 uses
  %i.ag = alloca [640 x i8], align 8              ; 4 uses
  %i.ah = alloca [24 x i8], align 8               ; 6 uses
  %i.ai = alloca [24 x i8], align 8               ; 6 uses
  %i.aj = alloca [24 x i8], align 8               ; 6 uses
  %i.ak = alloca [24 x i8], align 8               ; 6 uses
  %i.al = alloca [712 x i8], align 8              ; 59 uses
  %i.am = alloca [712 x i8], align 8              ; 5 uses
  %i.an = alloca [712 x i8], align 8              ; 5 uses
  %i.ao = alloca [712 x i8], align 8              ; 5 uses
  %i.ap = alloca [712 x i8], align 8              ; 5 uses
  %i.aq = alloca [712 x i8], align 8              ; 5 uses
  %i.ar = alloca [712 x i8], align 8              ; 5 uses
  %i.as = alloca [712 x i8], align 8              ; 5 uses
  %i.at = alloca [712 x i8], align 8              ; 5 uses
  %i.au = alloca [712 x i8], align 8              ; 5 uses
  %i.av = alloca [712 x i8], align 8              ; 5 uses
  %i.aw = alloca [712 x i8], align 8              ; 5 uses
  %i.ax = alloca [712 x i8], align 8              ; 5 uses
  %i.ay = alloca [712 x i8], align 8              ; 5 uses
  %i.az = alloca [32 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 6 uses
  %i.bb = alloca [24 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ba, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 13) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az)
  store ptr %i.ba, ptr %i.az, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store ptr @45, ptr %i.bc, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsju1p4ygkx3l_5uu_ln, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bb, ptr noundef nonnull @46, ptr noundef nonnull %i.az) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call void @llvm.experimental.noalias.scope.decl(metadata !1494)
  %.val.i = load i64, ptr %i.ba, align 8, !range !40, !alias.scope !1494, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %.val.i, 0
  br i1 %i.bd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln.exit, label %bb.a

bb.a:                                             ; preds = %.split
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.val1.i = load ptr, ptr %i.be, align 8, !alias.scope !1494, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #28, !noalias !1494
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln.exit: ; preds = %.split, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 2) #28
  %.sroa.0.0.copyload.i = load i64, ptr %i.ak, align 8, !alias.scope !1497, !noalias !1503 ; 2 uses
  %i.bf = icmp eq i64 %.sroa.0.0.copyload.i, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.bf, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.bf, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 8) #28
  %.sroa.0.0.copyload.i37 = load i64, ptr %i.aj, align 8, !alias.scope !1506, !noalias !1512 ; 2 uses
  %i.bg = icmp eq i64 %.sroa.0.0.copyload.i37, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i38 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.5.i36.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i38, align 8
  %.sroa.5.i36.sroa.4.0..sroa.55.0..sroa_idx.i38.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.5.i36.sroa.4.0.copyload = load i64, ptr %.sroa.5.i36.sroa.4.0..sroa.55.0..sroa_idx.i38.sroa_idx, align 8
  %.sroa.5.i36.sroa.0.0 = select i1 %i.bg, ptr undef, ptr %.sroa.5.i36.sroa.0.0.copyload
  %.sroa.5.i36.sroa.4.0 = select i1 %i.bg, i64 undef, i64 %.sroa.5.i36.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 8) #28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.bi, i64 noundef %i.bk) #28
  %.sroa.0.0.copyload.i43 = load i64, ptr %i.ai, align 8, !alias.scope !1515, !noalias !1521 ; 2 uses
  %i.bl = icmp eq i64 %.sroa.0.0.copyload.i43, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.5.i42.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i44, align 8
  %.sroa.5.i42.sroa.4.0..sroa.55.0..sroa_idx.i44.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.i42.sroa.4.0.copyload = load i64, ptr %.sroa.5.i42.sroa.4.0..sroa.55.0..sroa_idx.i44.sroa_idx, align 8
  %.sroa.5.i42.sroa.0.0 = select i1 %i.bl, ptr undef, ptr %.sroa.5.i42.sroa.0.0.copyload
  %.sroa.5.i42.sroa.4.0 = select i1 %i.bl, i64 undef, i64 %.sroa.5.i42.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.experimental.noalias.scope.decl(metadata !1524)
  call void @llvm.experimental.noalias.scope.decl(metadata !1527)
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  %.sroa.0.0.copyload.i49 = load i64, ptr %i.bb, align 8, !alias.scope !1531, !noalias !1535 ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.copyload.i49, -1 ; 2 uses
  %.sroa.55.0..sroa_idx.i50 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.sroa.5.i48.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i50, align 8
  %.sroa.5.i48.sroa.4.0..sroa.55.0..sroa_idx.i50.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %.sroa.5.i48.sroa.4.0.copyload = load i64, ptr %.sroa.5.i48.sroa.4.0..sroa.55.0..sroa_idx.i50.sroa_idx, align 8
  %.sroa.5.i48.sroa.0.0 = select i1 %i.bm, ptr undef, ptr %.sroa.5.i48.sroa.0.0.copyload
  %.sroa.5.i48.sroa.4.0 = select i1 %i.bm, i64 undef, i64 %.sroa.5.i48.sroa.4.0.copyload
  store i64 0, ptr %i.al, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 1, ptr %.sroa.0434.sroa.0.sroa.3.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %.sroa.0434.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store i64 -1, ptr %.sroa.0434.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 56
  store i64 0, ptr %.sroa.0434.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.8.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.9.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0434.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0434.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0434.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %.sroa.0434.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.15.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.16.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0434.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0434.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0434.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 216
  %.sroa.0434.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.24.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0434.sroa.0.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0434.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0434.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 264
  store i64 0, ptr %.sroa.0434.sroa.0.sroa.27.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  store i64 -1, ptr %.sroa.0434.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 296
  store i64 -1, ptr %.sroa.0434.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 320
  store i64 %.sroa.0.0.copyload.i37, ptr %.sroa.0434.sroa.2.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 328
  store ptr %.sroa.5.i36.sroa.0.0, ptr %.sroa.0434.sroa.3.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 336
  store i64 %.sroa.5.i36.sroa.4.0, ptr %.sroa.0434.sroa.4.0..sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.4.sroa.2.0..sroa.0434.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 344
  store i64 -1, ptr %.sroa.0434.sroa.4.sroa.2.0..sroa.0434.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.4.sroa.4.0..sroa.0434.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 368
  store i64 -1, ptr %.sroa.0434.sroa.4.sroa.4.0..sroa.0434.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.0434.sroa.4.sroa.6.0..sroa.0434.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 392
  store i64 -1, ptr %.sroa.0434.sroa.4.sroa.6.0..sroa.0434.sroa.4.0..sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.2.0..sroa_idx435 = getelementptr inbounds nuw i8, ptr %i.al, i64 416
  store i64 %.sroa.0.0.copyload.i49, ptr %.sroa.2.0..sroa_idx435, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.4437.0..sroa_idx438 = getelementptr inbounds nuw i8, ptr %i.al, i64 424
  store ptr %.sroa.5.i48.sroa.0.0, ptr %.sroa.4437.0..sroa_idx438, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.0..sroa_idx440 = getelementptr inbounds nuw i8, ptr %i.al, i64 432
  store i64 %.sroa.5.i48.sroa.4.0, ptr %.sroa.6.0..sroa_idx440, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.0.sroa.3.0..sroa.6.0..sroa_idx440.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 440
  store i64 -1, ptr %.sroa.6.sroa.0.sroa.3.0..sroa.6.0..sroa_idx440.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.3.0..sroa.6.0..sroa_idx440.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 464
  store i64 %.sroa.0.0.copyload.i43, ptr %.sroa.6.sroa.3.0..sroa.6.0..sroa_idx440.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx440.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 472
  store ptr %.sroa.5.i42.sroa.0.0, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx440.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 480
  store i64 %.sroa.5.i42.sroa.4.0, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.2.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  store i64 -1, ptr %.sroa.6.sroa.5.sroa.2.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 512
  store i64 -1, ptr %.sroa.6.sroa.5.sroa.4.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.sroa.5.sroa.6.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.7.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.6.sroa.5.sroa.7.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.8.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.6.sroa.5.sroa.8.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.9.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 560
  store ptr @47, ptr %.sroa.6.sroa.5.sroa.9.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.10.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 568
  store i64 2, ptr %.sroa.6.sroa.5.sroa.10.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.11.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 576
  store ptr null, ptr %.sroa.6.sroa.5.sroa.11.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.13.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 592
  store ptr null, ptr %.sroa.6.sroa.5.sroa.13.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.15.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 608
  store ptr @48, ptr %.sroa.6.sroa.5.sroa.15.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.16.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  store i64 25, ptr %.sroa.6.sroa.5.sroa.16.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.17.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 624
  store ptr null, ptr %.sroa.6.sroa.5.sroa.17.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.19.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 640
  store ptr null, ptr %.sroa.6.sroa.5.sroa.19.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.21.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 656
  store ptr null, ptr %.sroa.6.sroa.5.sroa.21.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.23.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 672
  store ptr null, ptr %.sroa.6.sroa.5.sroa.23.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.25.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 688
  store ptr null, ptr %.sroa.6.sroa.5.sroa.25.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  %.sroa.6.sroa.5.sroa.26.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 696
  store <4 x i32> <i32 -1, i32 128, i32 128, i32 0>, ptr %.sroa.6.sroa.5.sroa.26.0..sroa.6.sroa.5.0..sroa.6.0..sroa_idx440.sroa_idx.sroa_idx, align 8, !alias.scope !1535, !noalias !1529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features14backup_control9arguments6backup(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(address) dereferenceable(640) %i.ag) #28
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.al, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.ag) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.am, ptr noundef nonnull align 8 dereferenceable(712) %i.al, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @_RNvNtNtNtCsh036I4OHgIr_6uucore8features14backup_control9arguments14backup_no_args(ptr noalias nofree noundef nonnull sret([640 x i8]) align 8 captures(none) dereferenceable(640) %i.af) #28
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.am, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.af) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.an, ptr noundef nonnull align 8 dereferenceable(712) %i.am, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @52, i64 noundef 13) #28
  %.sroa.01243.0.copyload = load i64, ptr %i.ac, align 8
  %.sroa.21244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.21244.0.copyload = load ptr, ptr %.sroa.21244.0..sroa_idx, align 8
  %.sroa.31245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.sroa.31245.0.copyload = load i64, ptr %.sroa.31245.0..sroa_idx, align 8
  store i64 0, ptr %i.ad, align 8
  %.sroa.0498.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 0, ptr %.sroa.0498.sroa.5.0..sroa_idx, align 8
  %.sroa.0498.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 0, ptr %.sroa.0498.sroa.7.0..sroa_idx, align 8
  %.sroa.0498.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 0, ptr %.sroa.0498.sroa.9.0..sroa_idx, align 8
  %.sroa.0498.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 80
  store i64 -1, ptr %.sroa.0498.sroa.11.0..sroa_idx, align 8
  %.sroa.0498.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 0, ptr %.sroa.0498.sroa.13.0..sroa_idx, align 8
  %.sroa.0498.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.14.0..sroa_idx, align 8
  %.sroa.0498.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.16.0..sroa_idx, align 8
  %.sroa.0498.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 144 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.18.0..sroa_idx, align 8
  %.sroa.0498.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.20.0..sroa_idx, align 8
  %.sroa.0498.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.22.0..sroa_idx, align 8
  %.sroa.0498.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.24.0..sroa_idx, align 8
  %.sroa.0498.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.26.0..sroa_idx, align 8
  %.sroa.0498.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.28.0..sroa_idx, align 8
  %.sroa.0498.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 288
  %.sroa.0498.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.29.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.31.0..sroa_idx, align 8
  %.sroa.0498.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.32.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 328
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0498.sroa.33.0..sroa_idx, align 8
  %.sroa.0498.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.34.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 352
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.35.0..sroa_idx, align 8
  %.sroa.0498.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 360
  %.sroa.0498.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 376
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.36.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.38.0..sroa_idx, align 8
  %.sroa.0498.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.39.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 400
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.40.0..sroa_idx, align 8
  %.sroa.0498.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 408
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.41.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 424
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.42.0..sroa_idx, align 8
  %.sroa.0498.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 432
  %.sroa.0498.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 448
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.43.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.45.0..sroa_idx, align 8
  %.sroa.0498.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 456
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0498.sroa.46.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0498.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 472
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0498.sroa.47.0..sroa_idx, align 8
  %.sroa.0498.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 480
  store i64 0, ptr %.sroa.0498.sroa.48.0..sroa_idx, align 8
  %.sroa.4499.0..sroa_idx500 = getelementptr inbounds nuw i8, ptr %i.ad, i64 488
  store i64 %.sroa.01243.0.copyload, ptr %.sroa.4499.0..sroa_idx500, align 8
  %.sroa.6502.0..sroa_idx503 = getelementptr inbounds nuw i8, ptr %i.ad, i64 496
  store ptr %.sroa.21244.0.copyload, ptr %.sroa.6502.0..sroa_idx503, align 8
  %.sroa.7505.0..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.ad, i64 504
  store i64 %.sroa.31245.0.copyload, ptr %.sroa.7505.0..sroa_idx506, align 8
  %.sroa.7505.sroa.5.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 512
  store i64 -1, ptr %.sroa.7505.sroa.5.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.7.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 552
  store i64 -2, ptr %.sroa.7505.sroa.7.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.9.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 576
  store ptr @51, ptr %.sroa.7505.sroa.9.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.10.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 584
  store i64 5, ptr %.sroa.7505.sroa.10.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.11.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 592
  store ptr @51, ptr %.sroa.7505.sroa.11.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.12.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 600
  store i64 5, ptr %.sroa.7505.sroa.12.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.13.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 608
  store ptr null, ptr %.sroa.7505.sroa.13.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.15.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 624
  store i32 102, ptr %.sroa.7505.sroa.15.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.16.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 628
  store i32 -1, ptr %.sroa.7505.sroa.16.0..sroa.7505.0..sroa_idx506.sroa_idx, align 4
  %.sroa.7505.sroa.17.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 632
  store i32 0, ptr %.sroa.7505.sroa.17.0..sroa.7505.0..sroa_idx506.sroa_idx, align 8
  %.sroa.7505.sroa.18.0..sroa.7505.0..sroa_idx506.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 636
  store i8 -1, ptr %.sroa.7505.sroa.18.0..sroa.7505.0..sroa_idx506.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ad, i64 128 ; 2 uses
  %i.bo = load i64, ptr %.sroa.0498.sroa.17.0..sroa_idx, align 8, !alias.scope !1539, !noalias !1543, !noundef !4 ; 3 uses
  %i.bp = load i64, ptr %i.bn, align 8, !range !40, !alias.scope !1539, !noalias !1543, !noundef !4
  %i.bq = icmp eq i64 %i.bo, %i.bp
  br i1 %i.bq, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsju1p4ygkx3l_5uu_ln.exit89

bb.b:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtNtCsgNwXemyrBWj_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #27, !noalias !1543
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsju1p4ygkx3l_5uu_ln.exit89

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsgNwXemyrBWj_12clap_builder7builder10styled_str9StyledStrEECsju1p4ygkx3l_5uu_ln.exit89: ; preds = %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsju1p4ygkx3l_5uu_ln.exit
  %i.br = load ptr, ptr %.sroa.0498.sroa.16.0..sroa_idx, align 8, !alias.scope !1539, !noalias !1543, !nonnull !4, !noundef !4
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bo ; 2 uses
  store ptr @53, ptr %i.bs, align 8, !noalias !1543
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 11, ptr %i.bt, align 8, !noalias !1536
  %i.bu = add i64 %i.bo, 1
  store i64 %i.bu, ptr %.sroa.0498.sroa.17.0..sroa_idx, align 8, !alias.scope !1539, !noalias !1543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(640) %i.ae, ptr noundef nonnull align 8 dereferenceable(640) %i.ad, i64 640, i1 false), !alias.scope !1546, !noalias !1547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ae, i64 636
  store i8 2, ptr %i.bv, align 4
  call void @_RNvMNtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB2_7Command12arg_internal(ptr noalias nofree noundef nonnull align 8 dereferenceable(712) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(640) %i.ae) #28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(712) %i.ao, ptr noundef nonnull align 8 dereferenceable(712) %i.an, i64 712, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @54, i64 noundef 19) #28
  %.sroa.01249.0.copyload = load i64, ptr %i.z, align 8
  %.sroa.21250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.21250.0.copyload = load ptr, ptr %.sroa.21250.0..sroa_idx, align 8
  %.sroa.31251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.31251.0.copyload = load i64, ptr %.sroa.31251.0..sroa_idx, align 8
  store i64 0, ptr %i.aa, align 8
  %.sroa.0561.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 0, ptr %.sroa.0561.sroa.5.0..sroa_idx, align 8
  %.sroa.0561.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  store i64 0, ptr %.sroa.0561.sroa.7.0..sroa_idx, align 8
  %.sroa.0561.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  store i64 0, ptr %.sroa.0561.sroa.9.0..sroa_idx, align 8
  %.sroa.0561.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  store i64 -1, ptr %.sroa.0561.sroa.11.0..sroa_idx, align 8
  %.sroa.0561.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  store i64 0, ptr %.sroa.0561.sroa.13.0..sroa_idx, align 8
  %.sroa.0561.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.14.0..sroa_idx, align 8
  %.sroa.0561.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 136 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.16.0..sroa_idx, align 8
  %.sroa.0561.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 144 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.17.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.18.0..sroa_idx, align 8
  %.sroa.0561.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 168
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.19.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.20.0..sroa_idx, align 8
  %.sroa.0561.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.21.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.22.0..sroa_idx, align 8
  %.sroa.0561.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.23.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 232
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.24.0..sroa_idx, align 8
  %.sroa.0561.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.25.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.26.0..sroa_idx, align 8
  %.sroa.0561.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0561.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0561.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 280
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0561.sroa.28.0..sroa_idx, align 8
  %.sroa.0561.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 288
end_hunk_2
