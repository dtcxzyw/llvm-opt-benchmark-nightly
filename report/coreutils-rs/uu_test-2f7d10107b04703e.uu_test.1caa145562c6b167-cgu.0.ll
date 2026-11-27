Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_test-2f7d10107b04703e.uu_test.1caa145562c6b167-cgu.0?download=true
inline.NumInlined: 491
inline.NumDeleted: 233
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test:bb.a
  tail call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %i.l ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !82, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !82, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !83, !noalias !84 ; 2 uses
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
  %i.z = load i64, ptr %0, align 8, !range !5, !alias.scope !85, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20, !noalias !86
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ab = phi ptr [ %.pre, %bb.d ], [ %i.b, %bb.c ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph ; 7 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph, %i.d
  br i1 %i.ad, label %bb.f, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !86
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.e, %bb.f
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
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !85
  br label %bb.j

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #21
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.aj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.j:                                             ; preds = %bb.h, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 9) %2, double noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !115, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !115, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !116, !noalias !117 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !120, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !120, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !121, !noalias !122 ; 2 uses
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
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = load i64, ptr %0, align 8, !range !5, !alias.scope !123, !noundef !4
  %i.aa = icmp eq i64 %i.d, %i.z
  br i1 %i.aa, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20, !noalias !124
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !123
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ab = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ac = getelementptr inbounds nuw [144 x i8], ptr %i.ab, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ad = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ad, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  %i.af = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ag = mul nuw nsw i64 %i.af, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull align 8 %i.ac, i64 %i.ag, i1 false), !noalias !124
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.d, %bb.e
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
  store double %3, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ah = add nuw nsw i64 %i.d, 1
  store i64 %i.ah, ptr %i.c, align 8, !alias.scope !123
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ai = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #21
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.aj, align 8
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
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 5, 9) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  switch i64 %i.d, label %.lr.ph.i.i [
    i64 0, label %.thread
    i64 1, label %._crit_edge.i.i
  ]

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.a
  %.sroa.05.0.lcssa.i.i = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph.i.i ] ; 4 uses
  %i.e = getelementptr inbounds nuw [144 x i8], ptr %i.b, i64 %.sroa.05.0.lcssa.i.i ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  %.sroa.0.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i, align 8, !alias.scope !153, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.3.0.i.i.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i.i.i, align 8, !alias.scope !153, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i, i64 %2)
  %i.f = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !154, !noalias !155 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.sroa.0.0.in.i.i.i14.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.0.0.i.i.i15.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i14.i.i, align 8, !alias.scope !158, !nonnull !4, !noundef !4
  %.sroa.3.0.in.i.i.i16.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.3.0.i.i.i17.i.i = load i64, ptr %.sroa.3.0.in.i.i.i16.i.i, align 8, !alias.scope !158, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i22.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i17.i.i, i64 %2)
  %i.o = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.i.i.i15.i.i, ptr nonnull readonly %1, i64 %spec.store.select.i.i.i.i22.i.i), !alias.scope !159, !noalias !160 ; 2 uses
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
  %i.y = icmp ult i64 %i.d, 64051194700380388
  tail call void @llvm.assume(i1 %i.y)
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %.sroa.4.0.i.i.ph60 = phi i64 [ %i.w, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.z = sitofp i64 %3 to double
  %i.aa = load i64, ptr %0, align 8, !range !5, !alias.scope !161, !noundef !4
  %i.ab = icmp eq i64 %i.d, %i.aa
  br i1 %i.ab, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecTINtNtB7_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE8grow_oneCsh036I4OHgIr_6uucore(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) #20, !noalias !162
  %.pre = load ptr, ptr %i.a, align 8, !alias.scope !161
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread
  %i.ac = phi ptr [ %.pre, %bb.c ], [ %i.b, %.thread ]
  %i.ad = getelementptr inbounds nuw [144 x i8], ptr %i.ac, i64 %.sroa.4.0.i.i.ph60 ; 13 uses
  %i.ae = icmp samesign ult i64 %.sroa.4.0.i.i.ph60, %i.d
  br i1 %i.ae, label %bb.e, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 144
  %i.ag = sub nuw nsw i64 %i.d, %.sroa.4.0.i.i.ph60
  %i.ah = mul nuw nsw i64 %i.ag, 144
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr nonnull align 8 %i.ad, i64 %i.ah, i1 false), !noalias !162
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.d, %bb.e
  store i64 -1, ptr %i.ad, align 8
  %.sroa.040.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %1, ptr %.sroa.040.sroa.4.0..sroa_idx, align 8
  %.sroa.040.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %2, ptr %.sroa.040.sroa.5.0..sroa_idx, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %.sroa.441.0..sroa_idx, align 8
  %.sroa.643.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 0, ptr %.sroa.643.0..sroa_idx, align 8
  %.sroa.845.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i64 0, ptr %.sroa.845.0..sroa_idx, align 8
  %.sroa.1047.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  store i64 0, ptr %.sroa.1047.0..sroa_idx, align 8
  %.sroa.1249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 88
  store i64 0, ptr %.sroa.1249.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 104
  store i64 -1, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 128
  store <4 x i8> <i8 0, i8 1, i8 0, i8 0>, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  store double %i.z, ptr %.sroa.21.0..sroa_idx, align 8
  %i.ai = add nuw nsw i64 %i.d, 1
  store i64 %i.ai, ptr %i.c, align 8, !alias.scope !161
  br label %bb.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.aj = icmp ult i64 %.sroa.05.0.lcssa.i.i, %i.d
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = sitofp i64 %3 to double
  tail call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(144) %i.e) #21
  store i64 -1, ptr %i.e, align 8
  store ptr %1, ptr %.sroa.0.0.in.i.i.i.i.i, align 8
  store i64 %2, ptr %.sroa.3.0.in.i.i.i.i.i, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.al, align 8
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
  store double %i.ak, ptr %.sroa.1321.0..sroa_idx, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.lcssa.i.i, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #22
  unreachable

bb.i:                                             ; preds = %bb.g, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecTINtNtB6_6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEE10insert_mutCs2szWGFz6wmN_7uu_test.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEEB1c_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i
  %.sroa.0.03.i.i = phi i64 [ %i.e, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %.sroa.0.03.i.i ; 6 uses
  %i.e = add nuw nsw i64 %.sroa.0.03.i.i, 1       ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  %i.f = load i64, ptr %i.d, align 8, !range !6, !alias.scope !173, !noundef !4
  switch i64 %i.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.e
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink7.i.i.i = phi i64 [ 24, %bb.d ], [ 16, %bb.c ], [ 16, %bb.b ], [ 24, %bb.e ]
  %.val2.i.sink.i.i.i = phi i64 [ %.val4.i.i.i.i, %bb.d ], [ %.val.i.i.i, %bb.c ], [ %.val2.i.i.i, %bb.b ], [ %.val2.i.i.i.i, %bb.e ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sink7.i.i.i
  %.val1.i6.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !173, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6.i.i.i, i64 noundef %.val2.i.sink.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !173
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val2.i.i.i = load i64, ptr %i.h, align 8, !range !5, !alias.scope !173, !noundef !4 ; 2 uses
  %i.i = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val.i.i.i = load i64, ptr %i.j, align 8, !range !5, !alias.scope !173, !noundef !4 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val4.i.i.i.i = load i64, ptr %i.l, align 8, !range !5, !alias.scope !174, !noundef !4 ; 2 uses
  %i.m = icmp eq i64 %.val4.i.i.i.i, 0
  br i1 %i.m, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.n, align 8, !range !5, !alias.scope !175, !noundef !4 ; 2 uses
  %i.o = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.o, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split.i.i.i, %.lr.ph.i.i
  %i.p = icmp eq i64 %i.e, %.val1
  br i1 %i.p, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit, label %.lr.ph.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_.exit.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEEB1j_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit
  %i.r = mul nuw i64 %.val2, 40
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEEB1j_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc7raw_vec6RawVecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEEB1j_.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropBJ_.exit, %bb.f
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolEBF_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !6, !noundef !4
  switch i64 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit [
    i64 2, label %bb.b
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.e
  ]

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sink7 = phi i64 [ 24, %bb.d ], [ 16, %bb.c ], [ 16, %bb.b ], [ 24, %bb.e ]
  %.val2.i.sink = phi i64 [ %.val4.i, %bb.d ], [ %.val, %bb.c ], [ %.val2, %bb.b ], [ %.val2.i, %bb.e ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.sink7
  %.val1.i6 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i6, i64 noundef %.val2.i.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.c, align 8, !range !5, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val2, 0
  br i1 %i.d, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load i64, ptr %i.e, align 8, !range !5, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %.val, 0
  br i1 %i.f, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4.i = load i64, ptr %i.g, align 8, !range !5, !alias.scope !180, !noundef !4 ; 2 uses
  %i.h = icmp eq i64 %.val4.i, 0
  br i1 %i.h, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2.i = load i64, ptr %i.i, align 8, !range !5, !alias.scope !181, !noundef !4 ; 2 uses
  %i.j = icmp eq i64 %.val2.i, 0
  br i1 %i.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs2szWGFz6wmN_7uu_test.exit.sink.split
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !5, !noundef !4 ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2szWGFz6wmN_7uu_test.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VechEECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %.val = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = ptrtoint ptr %.val to i64                ; 2 uses
  %i.c = and i64 %i.b, 3
  switch i64 %i.c, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2szWGFz6wmN_7uu_test.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2szWGFz6wmN_7uu_test.exit
    i64 1, label %bb.c
  ], !prof !7

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.e = and i64 %i.b, 1095216660480
  %i.f = icmp ne i64 %i.e, 1095216660480
  tail call void @llvm.assume(i1 %i.d)
  tail call void @llvm.assume(i1 %i.f)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2szWGFz6wmN_7uu_test.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !184
  store i8 3, ptr %i.a, align 8, !alias.scope !184
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) #21
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtB4_2io5error4repr4ReprECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.a, %bb.a, %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTINtNtCs7tKScEop1B6_5alloc6borrow3CoweENtNtCsiMbvvWBbXLn_13fluent_bundle5types11FluentValueEECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %0) unnamed_addr #1 {
bb.a:
  %.val = load i64, ptr %0, align 8, !range !8, !noundef !4 ; 2 uses
  %i.a = icmp sgt i64 %.val, 0
  br i1 %i.a, label %bb.b, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc6borrow3CoweEECs2szWGFz6wmN_7uu_test.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
end_hunk_0
begin_hunk_1_@_RNvCs2szWGFz6wmN_7uu_test6isatty:bb.a
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !354
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !354
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.di, align 8, !noalias !354
  store ptr %i.c, ptr %i.b, align 8, !noalias !354
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @47, ptr %i.dj, align 8, !noalias !354
  %i.dk = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #21, !noalias !355
  br i1 %i.dk, label %bb.y, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit, !prof !13

bb.y:                                             ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @48, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #22, !noalias !355
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2szWGFz6wmN_7uu_test.exit: ; preds = %_RNvMsp_NtCs6JMX4GRUq9U_4core3numl27from_ascii_bytes_radix_impl.exit.thread
  %.sroa.0.0.copyload = load i32, ptr %i.c, align 8, !noalias !356
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.520.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 5, ptr %0, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.0.0.copyload, ptr %.sroa.419.0..sroa_idx, align 8
  br label %bb.x
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCs2szWGFz6wmN_7uu_test6uu_app(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([712 x i8]) align 8 captures(none) dereferenceable(712) initializes((0, 8), (16, 40), (56, 280), (296, 304), (320, 352), (368, 376), (392, 400), (416, 448), (464, 496), (512, 520), (536, 584), (592, 600), (608, 632), (640, 648), (656, 664), (672, 680), (688, 709)) %0) unnamed_addr #1 {
_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs2szWGFz6wmN_7uu_test.exit:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.sroa.0.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.11.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.13.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.18.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.20.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.22.0..sroa_idx, i8 0, i64 16, i1 false)
  %.sroa.0.sroa.0.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.27.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call { ptr, i64 } @_RNvCsh036I4OHgIr_6uucore9util_name() #21 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  call void @_RNvCsh036I4OHgIr_6uucore23localized_help_template(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef %i.h) #21
  %.sroa.0.0.copyload.i = load i64, ptr %i.e, align 8, !alias.scope !381 ; 2 uses
  %i.i = icmp eq i64 %.sroa.0.0.copyload.i, -1    ; 2 uses
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.i.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i, align 8
  %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.i.sroa.4.0.copyload = load i64, ptr %.sroa.5.i.sroa.4.0..sroa.55.0..sroa_idx.i.sroa_idx, align 8
  %.sroa.5.i.sroa.0.0 = select i1 %i.i, ptr undef, ptr %.sroa.5.i.sroa.0.0.copyload
  %.sroa.5.i.sroa.4.0 = select i1 %i.i, i64 undef, i64 %.sroa.5.i.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 10) #21
  %.sroa.0.0.copyload.i2 = load i64, ptr %i.d, align 8, !alias.scope !382 ; 2 uses
  %i.j = icmp eq i64 %.sroa.0.0.copyload.i2, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.5.i1.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i3, align 8
  %.sroa.5.i1.sroa.4.0..sroa.55.0..sroa_idx.i3.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.i1.sroa.4.0.copyload = load i64, ptr %.sroa.5.i1.sroa.4.0..sroa.55.0..sroa_idx.i3.sroa_idx, align 8
  %.sroa.5.i1.sroa.0.0 = select i1 %i.j, ptr undef, ptr %.sroa.5.i1.sroa.0.0.copyload
  %.sroa.5.i1.sroa.4.0 = select i1 %i.j, i64 undef, i64 %.sroa.5.i1.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @24, i64 noundef 10) #21
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  call void @_RNvCsh036I4OHgIr_6uucore12format_usage(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef %i.n) #21
  %.sroa.0.0.copyload.i8 = load i64, ptr %i.c, align 8, !alias.scope !383 ; 2 uses
  %i.o = icmp eq i64 %.sroa.0.0.copyload.i8, -1   ; 2 uses
  %.sroa.55.0..sroa_idx.i9 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.5.i7.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i9, align 8
  %.sroa.5.i7.sroa.4.0..sroa.55.0..sroa_idx.i9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.i7.sroa.4.0.copyload = load i64, ptr %.sroa.5.i7.sroa.4.0..sroa.55.0..sroa_idx.i9.sroa_idx, align 8
  %.sroa.5.i7.sroa.0.0 = select i1 %i.o, ptr undef, ptr %.sroa.5.i7.sroa.0.0.copyload
  %.sroa.5.i7.sroa.4.0 = select i1 %i.o, i64 undef, i64 %.sroa.5.i7.sroa.4.0.copyload
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale11get_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @25, i64 noundef 15) #21
  call void @llvm.experimental.noalias.scope.decl(metadata !384)
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !386)
  %.sroa.0.0.copyload.i14 = load i64, ptr %i.a, align 8, !alias.scope !387 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i14, -1  ; 2 uses
  %.sroa.55.0..sroa_idx.i15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.i13.sroa.0.0.copyload = load ptr, ptr %.sroa.55.0..sroa_idx.i15, align 8
  %.sroa.5.i13.sroa.4.0..sroa.55.0..sroa_idx.i15.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.i13.sroa.4.0.copyload = load i64, ptr %.sroa.5.i13.sroa.4.0..sroa.55.0..sroa_idx.i15.sroa_idx, align 8
  %.sroa.5.i13.sroa.0.0 = select i1 %i.p, ptr undef, ptr %.sroa.5.i13.sroa.0.0.copyload
  %.sroa.5.i13.sroa.4.0 = select i1 %i.p, i64 undef, i64 %.sroa.5.i13.sroa.4.0.copyload
  store i64 0, ptr %0, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.0.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.7.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %.sroa.0.sroa.0.sroa.9.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.10.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.0.sroa.0.sroa.12.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.14.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.0.sroa.0.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.15.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.17.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.19.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.21.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.23.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.sroa.0.sroa.0.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.sroa.0.sroa.24.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.26.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.28.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store i64 0, ptr %.sroa.0.sroa.0.sroa.29.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.30.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.0.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 -1, ptr %.sroa.0.sroa.0.sroa.32.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %.sroa.0.0.copyload.i2, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %.sroa.5.i1.sroa.0.0, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i64 %.sroa.5.i1.sroa.4.0, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.4.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.6.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 -1, ptr %.sroa.0.sroa.6.sroa.8.0..sroa.0.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i64 %.sroa.0.0.copyload.i14, ptr %.sroa.4.0..sroa_idx20, align 8, !alias.scope !388
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr %.sroa.5.i13.sroa.0.0, ptr %.sroa.6.0..sroa_idx22, align 8, !alias.scope !388
  %.sroa.8.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i64 %.sroa.5.i13.sroa.4.0, ptr %.sroa.8.0..sroa_idx24, align 8, !alias.scope !388
  %.sroa.8.sroa.0.sroa.5.0..sroa.8.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 440
  store i64 -1, ptr %.sroa.8.sroa.0.sroa.5.0..sroa.8.0..sroa_idx24.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 %.sroa.0.0.copyload.i8, ptr %.sroa.8.sroa.5.0..sroa.8.0..sroa_idx24.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 472
  store ptr %.sroa.5.i7.sroa.0.0, ptr %.sroa.8.sroa.6.0..sroa.8.0..sroa_idx24.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 480
  store i64 %.sroa.5.i7.sroa.4.0, ptr %.sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.4.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 488
  store i64 -1, ptr %.sroa.8.sroa.7.sroa.4.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.6.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i64 -1, ptr %.sroa.8.sroa.7.sroa.6.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.8.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.8.sroa.7.sroa.8.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.9.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 544
  store ptr %.sroa.5.i.sroa.0.0, ptr %.sroa.8.sroa.7.sroa.9.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.10.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 552
  store i64 %.sroa.5.i.sroa.4.0, ptr %.sroa.8.sroa.7.sroa.10.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.11.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 560
  store ptr @21, ptr %.sroa.8.sroa.7.sroa.11.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.12.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 1, ptr %.sroa.8.sroa.7.sroa.12.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.13.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 576
  store ptr null, ptr %.sroa.8.sroa.7.sroa.13.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.15.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 592
  store ptr null, ptr %.sroa.8.sroa.7.sroa.15.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.17.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 608
  store ptr @22, ptr %.sroa.8.sroa.7.sroa.17.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.18.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 616
  store i64 25, ptr %.sroa.8.sroa.7.sroa.18.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.19.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 624
  store ptr null, ptr %.sroa.8.sroa.7.sroa.19.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.21.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 640
  store ptr null, ptr %.sroa.8.sroa.7.sroa.21.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.23.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store ptr null, ptr %.sroa.8.sroa.7.sroa.23.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.25.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 672
  store ptr null, ptr %.sroa.8.sroa.7.sroa.25.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.27.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr null, ptr %.sroa.8.sroa.7.sroa.27.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.28.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i32 -1, ptr %.sroa.8.sroa.7.sroa.28.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx, align 8, !alias.scope !388
  %.sroa.8.sroa.7.sroa.29.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx.a = getelementptr inbounds nuw i8, ptr %0, i64 700
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.8.sroa.7.sroa.29.0..sroa.8.sroa.7.0..sroa.8.0..sroa_idx24.sroa_idx.sroa_idx.a, i8 0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %.val.i19 = load i64, ptr %i.b, align 8, !range !5, !alias.scope !389, !noundef !4 ; 2 uses
  %i.q = icmp eq i64 %.val.i19, 0
  br i1 %i.q, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit, label %bb.a

bb.a:                                             ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs2szWGFz6wmN_7uu_test.exit
  %.val1.i = load ptr, ptr %i.k, align 8, !alias.scope !389, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !389
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit: ; preds = %_RINvMs0_NtNtCsgNwXemyrBWj_12clap_builder7builder7commandNtB6_7Command13help_templateNtNtB8_10styled_str9StyledStrECs2szWGFz6wmN_7uu_test.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMCs2szWGFz6wmN_7uu_testNtB2_7Integer5parse(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvNtNtCs6JMX4GRUq9U_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #21
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !4
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = tail call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef %i.g) #21 ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 0        ; 7 uses
  %i.j = extractvalue { ptr, i64 } %i.h, 1        ; 9 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load i8, ptr %i.i, align 1, !noundef !4
  switch i8 %i.k, label %.thread [
    i8 45, label %bb.e
    i8 43, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i64 %i.j, 1
  br i1 %i.l, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !alias.scope !406, !noundef !4
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %bb.j, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.p = icmp eq i64 %i.j, 1
  br i1 %i.p, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !407, !noundef !4
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.f
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j, i64 noundef 1, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.f
  %.sroa.029.0 = phi i1 [ false, %bb.h ], [ true, %bb.f ]
  %.sroa.05.0 = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %.sroa.10.0 = add i64 %i.j, -1
  br label %.thread

bb.k:                                             ; preds = %bb.h
  tail call void @_RNvNtCs6JMX4GRUq9U_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.j, i64 noundef 1, i64 noundef %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #22
  unreachable

.thread:                                          ; preds = %bb.j, %bb.d
  %.sroa.05.049 = phi ptr [ %.sroa.05.0, %bb.j ], [ %i.i, %bb.d ] ; 4 uses
  %.sroa.10.048 = phi i64 [ %.sroa.10.0, %bb.j ], [ %i.j, %bb.d ] ; 10 uses
  %.sroa.029.047 = phi i1 [ %.sroa.029.0, %bb.j ], [ false, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.05.049, i64 %.sroa.10.048 ; 2 uses
  %.not.not.not.i.not58 = icmp samesign eq i64 %.sroa.10.048, 0
  br i1 %.not.not.not.i.not58, label %._crit_edge, label %.lr.ph

bb.l:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.v, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.u, %i.t
  br i1 %.not.not.not.i.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.thread, %bb.l
  %i.v = phi ptr [ %i.u, %bb.l ], [ %.sroa.05.049, %.thread ] ; 2 uses
  %.val.i = load i8, ptr %i.v, align 1, !noalias !408, !noundef !4
  %i.w = add i8 %.val.i, -58
  %.sroa.0.0.i.i.i.i = icmp ult i8 %i.w, -10
  br i1 %.sroa.0.0.i.i.i.i, label %.loopexit, label %bb.l

._crit_edge:                                      ; preds = %bb.l, %.thread
  %i.x = ptrtoint ptr %i.t to i64
  %invariant.op.i.i = sub i64 %.sroa.10.048, %i.x
  %invariant.op.i = add i64 %.sroa.10.048, -1
  br label %bb.m

bb.m:                                             ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i, %._crit_edge
  %.reass5.i.i = phi i64 [ %.reass.i.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ 0, %._crit_edge ] ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.05.049, i64 %.reass5.i.i ; 5 uses
  %i.z = icmp samesign eq i64 %.reass5.i.i, %.sroa.10.048
  br i1 %i.z, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECs2szWGFz6wmN_7uu_test.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !409, !noalias !410, !noundef !4 ; 5 uses
  %i.ac = icmp sgt i8 %i.ab, -1
  br i1 %i.ac, label %bb.o, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit12.i.i.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit12.i.i.i.i: ; preds = %bb.n
  %i.ad = and i8 %i.ab, 31
  %i.ae = zext nneg i8 %i.ad to i32               ; 3 uses
  %i.af = icmp ne i64 %.reass5.i.i, %invariant.op.i
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.aa, align 1, !alias.scope !409, !noalias !410, !noundef !4
  %i.ai = shl nuw nsw i32 %i.ae, 6
  %i.aj = and i8 %i.ah, 63
  %i.ak = zext nneg i8 %i.aj to i32               ; 2 uses
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = icmp samesign ugt i8 %i.ab, -33
  br i1 %i.am, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit14.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.an = zext nneg i8 %i.ab to i32
  br label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit12.i.i.i.i
  %i.ao = add nuw nsw i64 %.reass5.i.i, 2
  %i.ap = icmp samesign ne i64 %i.ao, %.sroa.10.048
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 3 ; 2 uses
  %i.ar = load i8, ptr %i.ag, align 1, !alias.scope !409, !noalias !410, !noundef !4
  %i.as = shl nuw nsw i32 %i.ak, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32
  %i.av = or disjoint i32 %i.as, %i.au            ; 2 uses
  %i.aw = shl nuw nsw i32 %i.ae, 12
  %i.ax = or disjoint i32 %i.av, %i.aw
  %i.ay = icmp samesign ugt i8 %i.ab, -17
  br i1 %i.ay, label %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit16.i.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit14.i.i.i.i
  %i.az = add nuw nsw i64 %.reass5.i.i, 3
  %i.ba = icmp samesign ne i64 %i.az, %.sroa.10.048
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.bc = load i8, ptr %i.aq, align 1, !alias.scope !409, !noalias !410, !noundef !4
  %i.bd = shl nuw nsw i32 %i.ae, 18
  %i.be = and i32 %i.bd, 1835008
  %i.bf = shl nuw nsw i32 %i.av, 6
  %i.bg = and i8 %i.bc, 63
  %i.bh = zext nneg i8 %i.bg to i32
  %i.bi = or disjoint i32 %i.bf, %i.bh
  %i.bj = or disjoint i32 %i.bi, %i.be
  br label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i: ; preds = %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit16.i.i.i.i, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit14.i.i.i.i, %bb.o, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit12.i.i.i.i
  %.sroa.0.0.ph.i.i.i = phi ptr [ %i.ag, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit12.i.i.i.i ], [ %i.aq, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit14.i.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit16.i.i.i.i ], [ %i.aa, %bb.o ]
  %.sroa.4.0.i.ph.i.i.i = phi i32 [ %i.al, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit12.i.i.i.i ], [ %i.ax, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit14.i.i.i.i ], [ %i.bj, %_RNvXs2J_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2szWGFz6wmN_7uu_test.exit16.i.i.i.i ], [ %i.an, %bb.o ] ; 2 uses
  %i.bk = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.bk)
  %i.bl = ptrtoint ptr %.sroa.0.0.ph.i.i.i to i64
  %.reass.i.i = add i64 %invariant.op.i.i, %i.bl
  %.not.i.i = icmp eq i32 %.sroa.4.0.i.ph.i.i.i, 48
  br i1 %.not.i.i, label %bb.m, label %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECs2szWGFz6wmN_7uu_test.exit

_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECs2szWGFz6wmN_7uu_test.exit: ; preds = %bb.m, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i
  %.sroa.0.0.i36 = phi i64 [ %.reass5.i.i, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher4next.exit.i.i ], [ %.sroa.10.048, %bb.m ] ; 3 uses
  %i.bm = sub nuw i64 %.sroa.10.048, %.sroa.0.0.i36
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.05.049, i64 %.sroa.0.0.i36
  %i.bo = icmp ne i64 %.sroa.10.048, %.sroa.0.0.i36
  %narrow = and i1 %.sroa.029.047, %i.bo
  %.sroa.020.0 = zext i1 %narrow to i8
  store ptr %i.bn, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bm, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.g, %bb.e, %bb.c, %bb.b, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECs2szWGFz6wmN_7uu_test.exit
  %.sink = phi i8 [ 2, %bb.b ], [ %.sroa.020.0, %_RINvMNtCs6JMX4GRUq9U_4core3stre18trim_start_matchescECs2szWGFz6wmN_7uu_test.exit ], [ 2, %bb.c ], [ 2, %bb.g ], [ 2, %bb.e ], [ 2, %.lr.ph ]
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bp, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMNtCs2szWGFz6wmN_7uu_test6parserNtB2_6Symbol12into_literal(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_1
begin_hunk_2_@_RNvXs0_NtCs2szWGFz6wmN_7uu_test5errorNtB5_10ParseErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt:bb.a
  br i1 %i.bu, label %bb.bv, label %bb.bw

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 0, ptr %i.k, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 0, ptr %.sroa.54.0..sroa_idx, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !4, !noundef !4
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !4 ; 16 uses
  %.not.i167 = icmp slt i64 %i.by, 0
  br i1 %.not.i167, label %bb.co, label %bb.m, !prof !17

bb.m:                                             ; preds = %bb.l
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %.thread565, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168: ; preds = %bb.m
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1371
  %i.ca = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.by, i64 noundef range(i64 1, 9) 1) #21, !noalias !1371 ; 18 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.co, label %bb.cp

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !4, !noundef !4
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load i64, ptr %i.ce, align 8, !noundef !4 ; 16 uses
  %.not.i171 = icmp slt i64 %i.cf, 0
  br i1 %.not.i171, label %bb.dh, label %bb.o, !prof !17

bb.o:                                             ; preds = %bb.n
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.thread587, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172: ; preds = %bb.o
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1372
  %i.ch = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.cf, i64 noundef range(i64 1, 9) 1) #21, !noalias !1372 ; 18 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.dh, label %bb.di

bb.p:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit
  %.sroa.0.1.in = phi i1 [ %i.aq, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit ], [ %i.er, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181 ], [ %i.hc, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221 ], [ %i.jn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261 ], [ %i.ly, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301 ], [ %i.oj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341 ], [ %i.qu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381 ]
  ret i1 %.sroa.0.1.in

bb.q:                                             ; preds = %bb.d, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  %.sroa.4.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i ], [ 0, %bb.d ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph, i64 %i.aw) #24
  unreachable

bb.r:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ay, ptr nonnull align 1 %i.au, i64 %i.aw, i1 false)
  %cond = icmp eq i64 %i.aw, 1
  %i.cj = load i8, ptr %i.ay, align 1, !alias.scope !1373 ; 2 uses
  br i1 %cond, label %bb.s, label %thread-pre-split.i

bb.s:                                             ; preds = %bb.r
  switch i8 %i.cj, label %bb.z [
    i8 43, label %.thread
    i8 45, label %.thread
  ]

thread-pre-split.i:                               ; preds = %bb.r
  switch i8 %i.cj, label %bb.z [
    i8 43, label %bb.t
    i8 45, label %bb.u
  ]

bb.t:                                             ; preds = %thread-pre-split.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.cl = add nsw i64 %i.aw, -1
  br label %bb.z

bb.u:                                             ; preds = %thread-pre-split.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %i.cn = add nsw i64 %i.aw, -1                   ; 3 uses
  %i.co = icmp samesign ult i64 %i.aw, 17
  br i1 %i.co, label %.preheader114.i, label %.lr.ph.i

.preheader114.i:                                  ; preds = %bb.u
  %.not103137.i = icmp eq i64 %i.cn, 0
  br i1 %.not103137.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

.lr.ph.i:                                         ; preds = %bb.u, %bb.x
  %.sroa.0.1136.i = phi ptr [ %i.cp, %bb.x ], [ %i.cm, %bb.u ] ; 2 uses
  %.sroa.26.1135.i = phi i64 [ %i.cq, %bb.x ], [ %i.cn, %bb.u ]
  %.sroa.084.0134.i = phi i64 [ %i.db, %bb.x ], [ 0, %bb.u ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i, i64 1
  %i.cq = add nsw i64 %.sroa.26.1135.i, -1        ; 2 uses
  %i.cr = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i, i64 10) ; 2 uses
  %i.cs = extractvalue { i64, i1 } %i.cr, 0
  %i.ct = extractvalue { i64, i1 } %i.cr, 1
  br i1 %i.ct, label %.thread, label %bb.v, !prof !13

bb.v:                                             ; preds = %.lr.ph.i
  %i.cu = load i8, ptr %.sroa.0.1136.i, align 1, !alias.scope !1373, !noundef !4
  %i.cv = zext i8 %i.cu to i32
  %i.cw = add nsw i32 %i.cv, -48                  ; 2 uses
  %i.cx = icmp ult i32 %i.cw, 10
  br i1 %i.cx, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cy = zext nneg i32 %i.cw to i64
  %i.cz = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.cs, i64 %i.cy) ; 2 uses
  %i.da = extractvalue { i64, i1 } %i.cz, 1
  br i1 %i.da, label %.thread, label %bb.x, !prof !13

bb.x:                                             ; preds = %bb.w
  %i.db = extractvalue { i64, i1 } %i.cz, 0       ; 2 uses
  %.not102.i = icmp eq i64 %i.cq, 0
  br i1 %.not102.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

.lr.ph141.i:                                      ; preds = %.preheader114.i, %bb.y
  %.sroa.0.2140.i = phi ptr [ %i.di, %bb.y ], [ %i.cm, %.preheader114.i ] ; 2 uses
  %.sroa.26.2139.i = phi i64 [ %i.dh, %bb.y ], [ %i.cn, %.preheader114.i ]
  %.sroa.084.2138.i = phi i64 [ %i.dk, %bb.y ], [ 0, %.preheader114.i ]
  %i.dc = load i8, ptr %.sroa.0.2140.i, align 1, !alias.scope !1373, !noundef !4
  %i.dd = zext i8 %i.dc to i32
  %i.de = add nsw i32 %i.dd, -48                  ; 2 uses
  %i.df = icmp ult i32 %i.de, 10
  br i1 %i.df, label %bb.y, label %.thread

bb.y:                                             ; preds = %.lr.ph141.i
  %i.dg = mul i64 %.sroa.084.2138.i, 10
  %i.dh = add nsw i64 %.sroa.26.2139.i, -1        ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i, i64 1
  %i.dj = zext nneg i32 %i.de to i64
  %i.dk = sub i64 %i.dg, %i.dj                    ; 2 uses
  %.not103.i = icmp eq i64 %i.dh, 0
  br i1 %.not103.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph141.i

bb.z:                                             ; preds = %bb.s, %bb.t, %thread-pre-split.i
  %.sroa.26.0.i = phi i64 [ %i.cl, %bb.t ], [ %i.aw, %thread-pre-split.i ], [ %i.aw, %bb.s ] ; 4 uses
  %.sroa.0.0.i = phi ptr [ %i.ck, %bb.t ], [ %i.ay, %thread-pre-split.i ], [ %i.ay, %bb.s ] ; 2 uses
  %i.dl = icmp samesign ult i64 %.sroa.26.0.i, 16
  br i1 %i.dl, label %.preheader.i, label %.preheader111.i

.preheader.i:                                     ; preds = %bb.z
  %.not105146.i = icmp eq i64 %.sroa.26.0.i, 0
  br i1 %.not105146.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.preheader111.i:                                  ; preds = %bb.z, %bb.ac
  %.sroa.0.3145.i = phi ptr [ %i.dm, %bb.ac ], [ %.sroa.0.0.i, %bb.z ] ; 2 uses
  %.sroa.26.3144.i = phi i64 [ %i.dn, %bb.ac ], [ %.sroa.26.0.i, %bb.z ]
  %.sroa.084.3143.i = phi i64 [ %i.dy, %bb.ac ], [ 0, %bb.z ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i, i64 1
  %i.dn = add nsw i64 %.sroa.26.3144.i, -1        ; 2 uses
  %i.do = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i, i64 10) ; 2 uses
  %i.dp = extractvalue { i64, i1 } %i.do, 0
  %i.dq = extractvalue { i64, i1 } %i.do, 1
  br i1 %i.dq, label %.thread, label %bb.aa, !prof !13

bb.aa:                                            ; preds = %.preheader111.i
  %i.dr = load i8, ptr %.sroa.0.3145.i, align 1, !alias.scope !1373, !noundef !4
  %i.ds = zext i8 %i.dr to i32
  %i.dt = add nsw i32 %i.ds, -48                  ; 2 uses
  %i.du = icmp ult i32 %i.dt, 10
  br i1 %i.du, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.dv = zext nneg i32 %i.dt to i64
  %i.dw = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.dp, i64 %i.dv) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  br i1 %i.dx, label %.thread, label %bb.ac, !prof !13

bb.ac:                                            ; preds = %bb.ab
  %i.dy = extractvalue { i64, i1 } %i.dw, 0       ; 2 uses
  %.not104.i = icmp eq i64 %i.dn, 0
  br i1 %.not104.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.preheader111.i

.lr.ph150.i:                                      ; preds = %.preheader.i, %bb.ad
  %.sroa.0.4149.i = phi ptr [ %i.ef, %bb.ad ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.26.4148.i = phi i64 [ %i.ee, %bb.ad ], [ %.sroa.26.0.i, %.preheader.i ]
  %.sroa.084.4147.i = phi i64 [ %i.eh, %bb.ad ], [ 0, %.preheader.i ]
  %i.dz = load i8, ptr %.sroa.0.4149.i, align 1, !alias.scope !1373, !noundef !4
  %i.ea = zext i8 %i.dz to i32
  %i.eb = add nsw i32 %i.ea, -48                  ; 2 uses
  %i.ec = icmp ult i32 %i.eb, 10
  br i1 %i.ec, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %.lr.ph150.i
  %i.ed = mul i64 %.sroa.084.4147.i, 10
  %i.ee = add nsw i64 %.sroa.26.4148.i, -1        ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i, i64 1
  %i.eg = zext nneg i32 %i.eb to i64
  %i.eh = add i64 %i.ed, %i.eg                    ; 2 uses
  %.not105.i = icmp eq i64 %i.ee, 0
  br i1 %.not105.i, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit, label %.lr.ph150.i

.thread:                                          ; preds = %.lr.ph.i, %bb.w, %bb.v, %.lr.ph141.i, %.preheader111.i, %bb.aa, %bb.ab, %.lr.ph150.i, %bb.s, %bb.s, %bb.e
  %.ph = phi ptr [ inttoptr (i64 1 to ptr), %bb.e ], [ %i.ay, %.preheader111.i ], [ %i.ay, %.lr.ph150.i ], [ %i.ay, %bb.s ], [ %i.ay, %.lr.ph141.i ], [ %i.ay, %bb.s ], [ %i.ay, %bb.ab ], [ %i.ay, %bb.aa ], [ %i.ay, %bb.v ], [ %i.ay, %bb.w ], [ %i.ay, %.lr.ph.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph, i64 noundef %i.aw) #20
  %i.ei = load i8, ptr %i.ah, align 8, !range !18, !noundef !4
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ag, label %bb.ah

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit: ; preds = %bb.x, %bb.y, %bb.ac, %bb.ad, %.preheader.i, %.preheader114.i
  %.sroa.15385.0 = phi i64 [ %i.dk, %bb.y ], [ 0, %.preheader114.i ], [ %i.eh, %bb.ad ], [ 0, %.preheader.i ], [ %i.dy, %bb.ac ], [ %i.db, %bb.x ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, i64 noundef %.sroa.15385.0) #21
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ah, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit
  %i.ek = phi ptr [ %.ph, %bb.ah ], [ %i.ay, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.el = icmp eq i64 %i.aw, 0
  br i1 %i.el, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ek, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1374
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178

bb.ag:                                            ; preds = %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store i64 %i.aw, ptr %i.ag, align 8
  %.sroa.5.0..sroa_idx382 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.ph, ptr %.sroa.5.0..sroa_idx382, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.aw, ptr %.sroa.8.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ai, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.af) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178

bb.ah:                                            ; preds = %.thread
  %i.em = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.en = load double, ptr %i.em, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, double noundef %i.en) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.ae

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178: ; preds = %bb.af, %bb.ae, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.aj, ptr %i.ae, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.437.0..sroa_idx, align 8
  %i.eo = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ep = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.eq = load ptr, ptr %i.ep, align 8, !nonnull !4, !align !9, !noundef !4
  %i.er = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.eo, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.eq, ptr noundef nonnull @35, ptr noundef nonnull %i.ae) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  call void @llvm.experimental.noalias.scope.decl(metadata !1375)
  %.val.i179 = load i64, ptr %i.aj, align 8, !range !5, !alias.scope !1375, !noundef !4 ; 2 uses
  %i.es = icmp eq i64 %.val.i179, 0
  br i1 %i.es, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178
  %i.et = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.val1.i180 = load ptr, ptr %i.et, align 8, !alias.scope !1375, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i180, i64 noundef %.val.i179, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1375
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit181: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit178, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.p

bb.aj:                                            ; preds = %bb.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156
  %.sroa.4424.0.ph.a = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156 ], [ 0, %bb.f ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4424.0.ph.a, i64 %i.bd) #24
  unreachable

bb.ak:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i156
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bf, ptr nonnull align 1 %i.bb, i64 %i.bd, i1 false)
  %cond603 = icmp eq i64 %i.bd, 1
  %i.eu = load i8, ptr %i.bf, align 1, !alias.scope !1376 ; 2 uses
  br i1 %cond603, label %bb.al, label %thread-pre-split.i213

bb.al:                                            ; preds = %bb.ak
  switch i8 %i.eu, label %bb.as [
    i8 43, label %.thread499
    i8 45, label %.thread499
  ]

thread-pre-split.i213:                            ; preds = %bb.ak
  switch i8 %i.eu, label %bb.as [
    i8 43, label %bb.am
    i8 45, label %bb.an
  ]

bb.am:                                            ; preds = %thread-pre-split.i213
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  %i.ew = add nsw i64 %i.bd, -1
  br label %bb.as

bb.an:                                            ; preds = %thread-pre-split.i213
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.ey = add nsw i64 %i.bd, -1                   ; 3 uses
  %i.ez = icmp samesign ult i64 %i.bd, 17
  br i1 %i.ez, label %.preheader114.i191, label %.lr.ph.i183

.preheader114.i191:                               ; preds = %bb.an
  %.not103137.i192 = icmp eq i64 %i.ey, 0
  br i1 %.not103137.i192, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph141.i193

.lr.ph.i183:                                      ; preds = %bb.an, %bb.aq
  %.sroa.0.1136.i184 = phi ptr [ %i.fa, %bb.aq ], [ %i.ex, %bb.an ] ; 2 uses
  %.sroa.26.1135.i185 = phi i64 [ %i.fb, %bb.aq ], [ %i.ey, %bb.an ]
  %.sroa.084.0134.i186 = phi i64 [ %i.fm, %bb.aq ], [ 0, %bb.an ]
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i184, i64 1
  %i.fb = add nsw i64 %.sroa.26.1135.i185, -1     ; 2 uses
  %i.fc = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i186, i64 10) ; 2 uses
  %i.fd = extractvalue { i64, i1 } %i.fc, 0
  %i.fe = extractvalue { i64, i1 } %i.fc, 1
  br i1 %i.fe, label %.thread499, label %bb.ao, !prof !13

bb.ao:                                            ; preds = %.lr.ph.i183
  %i.ff = load i8, ptr %.sroa.0.1136.i184, align 1, !alias.scope !1376, !noundef !4
  %i.fg = zext i8 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -48                  ; 2 uses
  %i.fi = icmp ult i32 %i.fh, 10
  br i1 %i.fi, label %bb.ap, label %.thread499

bb.ap:                                            ; preds = %bb.ao
  %i.fj = zext nneg i32 %i.fh to i64
  %i.fk = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.fd, i64 %i.fj) ; 2 uses
  %i.fl = extractvalue { i64, i1 } %i.fk, 1
  br i1 %i.fl, label %.thread499, label %bb.aq, !prof !13

bb.aq:                                            ; preds = %bb.ap
  %i.fm = extractvalue { i64, i1 } %i.fk, 0       ; 2 uses
  %.not102.i188 = icmp eq i64 %i.fb, 0
  br i1 %.not102.i188, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph.i183

.lr.ph141.i193:                                   ; preds = %.preheader114.i191, %bb.ar
  %.sroa.0.2140.i194 = phi ptr [ %i.ft, %bb.ar ], [ %i.ex, %.preheader114.i191 ] ; 2 uses
  %.sroa.26.2139.i195 = phi i64 [ %i.fs, %bb.ar ], [ %i.ey, %.preheader114.i191 ]
  %.sroa.084.2138.i196 = phi i64 [ %i.fv, %bb.ar ], [ 0, %.preheader114.i191 ]
  %i.fn = load i8, ptr %.sroa.0.2140.i194, align 1, !alias.scope !1376, !noundef !4
  %i.fo = zext i8 %i.fn to i32
  %i.fp = add nsw i32 %i.fo, -48                  ; 2 uses
  %i.fq = icmp ult i32 %i.fp, 10
  br i1 %i.fq, label %bb.ar, label %.thread499

bb.ar:                                            ; preds = %.lr.ph141.i193
  %i.fr = mul i64 %.sroa.084.2138.i196, 10
  %i.fs = add nsw i64 %.sroa.26.2139.i195, -1     ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i194, i64 1
  %i.fu = zext nneg i32 %i.fp to i64
  %i.fv = sub i64 %i.fr, %i.fu                    ; 2 uses
  %.not103.i197 = icmp eq i64 %i.fs, 0
  br i1 %.not103.i197, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph141.i193

bb.as:                                            ; preds = %bb.al, %bb.am, %thread-pre-split.i213
  %.sroa.26.0.i198 = phi i64 [ %i.ew, %bb.am ], [ %i.bd, %thread-pre-split.i213 ], [ %i.bd, %bb.al ] ; 4 uses
  %.sroa.0.0.i199 = phi ptr [ %i.ev, %bb.am ], [ %i.bf, %thread-pre-split.i213 ], [ %i.bf, %bb.al ] ; 2 uses
  %i.fw = icmp samesign ult i64 %.sroa.26.0.i198, 16
  br i1 %i.fw, label %.preheader.i206, label %.preheader111.i200

.preheader.i206:                                  ; preds = %bb.as
  %.not105146.i207 = icmp eq i64 %.sroa.26.0.i198, 0
  br i1 %.not105146.i207, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph150.i208

.preheader111.i200:                               ; preds = %bb.as, %bb.av
  %.sroa.0.3145.i201 = phi ptr [ %i.fx, %bb.av ], [ %.sroa.0.0.i199, %bb.as ] ; 2 uses
  %.sroa.26.3144.i202 = phi i64 [ %i.fy, %bb.av ], [ %.sroa.26.0.i198, %bb.as ]
  %.sroa.084.3143.i203 = phi i64 [ %i.gj, %bb.av ], [ 0, %bb.as ]
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i201, i64 1
  %i.fy = add nsw i64 %.sroa.26.3144.i202, -1     ; 2 uses
  %i.fz = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i203, i64 10) ; 2 uses
  %i.ga = extractvalue { i64, i1 } %i.fz, 0
  %i.gb = extractvalue { i64, i1 } %i.fz, 1
  br i1 %i.gb, label %.thread499, label %bb.at, !prof !13

bb.at:                                            ; preds = %.preheader111.i200
  %i.gc = load i8, ptr %.sroa.0.3145.i201, align 1, !alias.scope !1376, !noundef !4
  %i.gd = zext i8 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, -48                  ; 2 uses
  %i.gf = icmp ult i32 %i.ge, 10
  br i1 %i.gf, label %bb.au, label %.thread499

bb.au:                                            ; preds = %bb.at
  %i.gg = zext nneg i32 %i.ge to i64
  %i.gh = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ga, i64 %i.gg) ; 2 uses
  %i.gi = extractvalue { i64, i1 } %i.gh, 1
  br i1 %i.gi, label %.thread499, label %bb.av, !prof !13

bb.av:                                            ; preds = %bb.au
  %i.gj = extractvalue { i64, i1 } %i.gh, 0       ; 2 uses
  %.not104.i205 = icmp eq i64 %i.fy, 0
  br i1 %.not104.i205, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.preheader111.i200

.lr.ph150.i208:                                   ; preds = %.preheader.i206, %bb.aw
  %.sroa.0.4149.i209 = phi ptr [ %i.gq, %bb.aw ], [ %.sroa.0.0.i199, %.preheader.i206 ] ; 2 uses
  %.sroa.26.4148.i210 = phi i64 [ %i.gp, %bb.aw ], [ %.sroa.26.0.i198, %.preheader.i206 ]
  %.sroa.084.4147.i211 = phi i64 [ %i.gs, %bb.aw ], [ 0, %.preheader.i206 ]
  %i.gk = load i8, ptr %.sroa.0.4149.i209, align 1, !alias.scope !1376, !noundef !4
  %i.gl = zext i8 %i.gk to i32
  %i.gm = add nsw i32 %i.gl, -48                  ; 2 uses
  %i.gn = icmp ult i32 %i.gm, 10
  br i1 %i.gn, label %bb.aw, label %.thread499

bb.aw:                                            ; preds = %.lr.ph150.i208
  %i.go = mul i64 %.sroa.084.4147.i211, 10
  %i.gp = add nsw i64 %.sroa.26.4148.i210, -1     ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i209, i64 1
  %i.gr = zext nneg i32 %i.gm to i64
  %i.gs = add i64 %i.go, %i.gr                    ; 2 uses
  %.not105.i212 = icmp eq i64 %i.gp, 0
  br i1 %.not105.i212, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215, label %.lr.ph150.i208

.thread499:                                       ; preds = %.lr.ph.i183, %bb.ap, %bb.ao, %.lr.ph141.i193, %.preheader111.i200, %bb.at, %bb.au, %.lr.ph150.i208, %bb.al, %bb.al, %bb.g
  %.ph507 = phi ptr [ inttoptr (i64 1 to ptr), %bb.g ], [ %i.bf, %.preheader111.i200 ], [ %i.bf, %.lr.ph150.i208 ], [ %i.bf, %bb.al ], [ %i.bf, %.lr.ph141.i193 ], [ %i.bf, %bb.al ], [ %i.bf, %bb.au ], [ %i.bf, %bb.at ], [ %i.bf, %bb.ao ], [ %i.bf, %bb.ap ], [ %i.bf, %.lr.ph.i183 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph507, i64 noundef %i.bd) #20
  %i.gt = load i8, ptr %i.ab, align 8, !range !18, !noundef !4
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.az, label %bb.ba

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215: ; preds = %bb.aq, %bb.ar, %bb.av, %bb.aw, %.preheader.i206, %.preheader114.i191
  %.sroa.15392.0 = phi i64 [ %i.fv, %bb.ar ], [ 0, %.preheader114.i191 ], [ %i.gs, %bb.aw ], [ 0, %.preheader.i206 ], [ %i.gj, %bb.av ], [ %i.fm, %bb.aq ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, i64 noundef %.sroa.15392.0) #21
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215
  %i.gv = phi ptr [ %.ph507, %bb.ba ], [ %i.bf, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit215 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.gw = icmp eq i64 %i.bd, 0
  br i1 %i.gw, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gv, i64 noundef %i.bd, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1377
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218

bb.az:                                            ; preds = %.thread499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %i.bd, ptr %i.aa, align 8
  %.sroa.5387.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.ph507, ptr %.sroa.5387.0..sroa_idx, align 8
  %.sroa.8388.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.bd, ptr %.sroa.8388.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aa) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @41, i64 noundef 25, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.z) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218

bb.ba:                                            ; preds = %.thread499
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.gy = load double, ptr %i.gx, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, double noundef %i.gy) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.ax

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218: ; preds = %bb.ay, %bb.ax, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  store ptr %i.ad, ptr %i.y, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.456.0..sroa_idx, align 8
  %i.gz = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !nonnull !4, !align !9, !noundef !4
  %i.hc = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.gz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.hb, ptr noundef nonnull @35, ptr noundef nonnull %i.y) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.experimental.noalias.scope.decl(metadata !1378)
  %.val.i219 = load i64, ptr %i.ad, align 8, !range !5, !alias.scope !1378, !noundef !4 ; 2 uses
  %i.hd = icmp eq i64 %.val.i219, 0
  br i1 %i.hd, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221, label %bb.bb

bb.bb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218
  %i.he = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.val1.i220 = load ptr, ptr %i.he, align 8, !alias.scope !1378, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i220, i64 noundef %.val.i219, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1378
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit221: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit218, %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.p

bb.bc:                                            ; preds = %bb.h, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160
  %.sroa.4428.0.ph.a = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160 ], [ 0, %bb.h ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4428.0.ph.a, i64 %i.bk) #24
  unreachable

bb.bd:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i160
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %i.bi, i64 %i.bk, i1 false)
  %cond604 = icmp eq i64 %i.bk, 1
  %i.hf = load i8, ptr %i.bm, align 1, !alias.scope !1379 ; 2 uses
  br i1 %cond604, label %bb.be, label %thread-pre-split.i253

bb.be:                                            ; preds = %bb.bd
  switch i8 %i.hf, label %bb.bl [
    i8 43, label %.thread521
    i8 45, label %.thread521
  ]

thread-pre-split.i253:                            ; preds = %bb.bd
  switch i8 %i.hf, label %bb.bl [
    i8 43, label %bb.bf
    i8 45, label %bb.bg
  ]

bb.bf:                                            ; preds = %thread-pre-split.i253
  %i.hg = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.hh = add nsw i64 %i.bk, -1
  br label %bb.bl

bb.bg:                                            ; preds = %thread-pre-split.i253
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bm, i64 1 ; 2 uses
  %i.hj = add nsw i64 %i.bk, -1                   ; 3 uses
  %i.hk = icmp samesign ult i64 %i.bk, 17
  br i1 %i.hk, label %.preheader114.i231, label %.lr.ph.i223

.preheader114.i231:                               ; preds = %bb.bg
  %.not103137.i232 = icmp eq i64 %i.hj, 0
  br i1 %.not103137.i232, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph141.i233

.lr.ph.i223:                                      ; preds = %bb.bg, %bb.bj
  %.sroa.0.1136.i224 = phi ptr [ %i.hl, %bb.bj ], [ %i.hi, %bb.bg ] ; 2 uses
  %.sroa.26.1135.i225 = phi i64 [ %i.hm, %bb.bj ], [ %i.hj, %bb.bg ]
  %.sroa.084.0134.i226 = phi i64 [ %i.hx, %bb.bj ], [ 0, %bb.bg ]
  %i.hl = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i224, i64 1
  %i.hm = add nsw i64 %.sroa.26.1135.i225, -1     ; 2 uses
  %i.hn = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i226, i64 10) ; 2 uses
  %i.ho = extractvalue { i64, i1 } %i.hn, 0
  %i.hp = extractvalue { i64, i1 } %i.hn, 1
  br i1 %i.hp, label %.thread521, label %bb.bh, !prof !13

bb.bh:                                            ; preds = %.lr.ph.i223
  %i.hq = load i8, ptr %.sroa.0.1136.i224, align 1, !alias.scope !1379, !noundef !4
  %i.hr = zext i8 %i.hq to i32
  %i.hs = add nsw i32 %i.hr, -48                  ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 10
  br i1 %i.ht, label %bb.bi, label %.thread521

bb.bi:                                            ; preds = %bb.bh
  %i.hu = zext nneg i32 %i.hs to i64
  %i.hv = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ho, i64 %i.hu) ; 2 uses
  %i.hw = extractvalue { i64, i1 } %i.hv, 1
  br i1 %i.hw, label %.thread521, label %bb.bj, !prof !13

bb.bj:                                            ; preds = %bb.bi
  %i.hx = extractvalue { i64, i1 } %i.hv, 0       ; 2 uses
  %.not102.i228 = icmp eq i64 %i.hm, 0
  br i1 %.not102.i228, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph.i223

.lr.ph141.i233:                                   ; preds = %.preheader114.i231, %bb.bk
  %.sroa.0.2140.i234 = phi ptr [ %i.ie, %bb.bk ], [ %i.hi, %.preheader114.i231 ] ; 2 uses
  %.sroa.26.2139.i235 = phi i64 [ %i.id, %bb.bk ], [ %i.hj, %.preheader114.i231 ]
  %.sroa.084.2138.i236 = phi i64 [ %i.ig, %bb.bk ], [ 0, %.preheader114.i231 ]
  %i.hy = load i8, ptr %.sroa.0.2140.i234, align 1, !alias.scope !1379, !noundef !4
  %i.hz = zext i8 %i.hy to i32
  %i.ia = add nsw i32 %i.hz, -48                  ; 2 uses
  %i.ib = icmp ult i32 %i.ia, 10
  br i1 %i.ib, label %bb.bk, label %.thread521

bb.bk:                                            ; preds = %.lr.ph141.i233
  %i.ic = mul i64 %.sroa.084.2138.i236, 10
  %i.id = add nsw i64 %.sroa.26.2139.i235, -1     ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i234, i64 1
  %i.if = zext nneg i32 %i.ia to i64
  %i.ig = sub i64 %i.ic, %i.if                    ; 2 uses
  %.not103.i237 = icmp eq i64 %i.id, 0
  br i1 %.not103.i237, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph141.i233

bb.bl:                                            ; preds = %bb.be, %bb.bf, %thread-pre-split.i253
  %.sroa.26.0.i238 = phi i64 [ %i.hh, %bb.bf ], [ %i.bk, %thread-pre-split.i253 ], [ %i.bk, %bb.be ] ; 4 uses
  %.sroa.0.0.i239 = phi ptr [ %i.hg, %bb.bf ], [ %i.bm, %thread-pre-split.i253 ], [ %i.bm, %bb.be ] ; 2 uses
  %i.ih = icmp samesign ult i64 %.sroa.26.0.i238, 16
  br i1 %i.ih, label %.preheader.i246, label %.preheader111.i240

.preheader.i246:                                  ; preds = %bb.bl
  %.not105146.i247 = icmp eq i64 %.sroa.26.0.i238, 0
  br i1 %.not105146.i247, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph150.i248

.preheader111.i240:                               ; preds = %bb.bl, %bb.bo
  %.sroa.0.3145.i241 = phi ptr [ %i.ii, %bb.bo ], [ %.sroa.0.0.i239, %bb.bl ] ; 2 uses
  %.sroa.26.3144.i242 = phi i64 [ %i.ij, %bb.bo ], [ %.sroa.26.0.i238, %bb.bl ]
  %.sroa.084.3143.i243 = phi i64 [ %i.iu, %bb.bo ], [ 0, %bb.bl ]
  %i.ii = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i241, i64 1
  %i.ij = add nsw i64 %.sroa.26.3144.i242, -1     ; 2 uses
  %i.ik = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i243, i64 10) ; 2 uses
  %i.il = extractvalue { i64, i1 } %i.ik, 0
  %i.im = extractvalue { i64, i1 } %i.ik, 1
  br i1 %i.im, label %.thread521, label %bb.bm, !prof !13

bb.bm:                                            ; preds = %.preheader111.i240
  %i.in = load i8, ptr %.sroa.0.3145.i241, align 1, !alias.scope !1379, !noundef !4
  %i.io = zext i8 %i.in to i32
  %i.ip = add nsw i32 %i.io, -48                  ; 2 uses
  %i.iq = icmp ult i32 %i.ip, 10
  br i1 %i.iq, label %bb.bn, label %.thread521

bb.bn:                                            ; preds = %bb.bm
  %i.ir = zext nneg i32 %i.ip to i64
  %i.is = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.il, i64 %i.ir) ; 2 uses
  %i.it = extractvalue { i64, i1 } %i.is, 1
  br i1 %i.it, label %.thread521, label %bb.bo, !prof !13

bb.bo:                                            ; preds = %bb.bn
  %i.iu = extractvalue { i64, i1 } %i.is, 0       ; 2 uses
  %.not104.i245 = icmp eq i64 %i.ij, 0
  br i1 %.not104.i245, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.preheader111.i240

.lr.ph150.i248:                                   ; preds = %.preheader.i246, %bb.bp
  %.sroa.0.4149.i249 = phi ptr [ %i.jb, %bb.bp ], [ %.sroa.0.0.i239, %.preheader.i246 ] ; 2 uses
  %.sroa.26.4148.i250 = phi i64 [ %i.ja, %bb.bp ], [ %.sroa.26.0.i238, %.preheader.i246 ]
  %.sroa.084.4147.i251 = phi i64 [ %i.jd, %bb.bp ], [ 0, %.preheader.i246 ]
  %i.iv = load i8, ptr %.sroa.0.4149.i249, align 1, !alias.scope !1379, !noundef !4
  %i.iw = zext i8 %i.iv to i32
  %i.ix = add nsw i32 %i.iw, -48                  ; 2 uses
  %i.iy = icmp ult i32 %i.ix, 10
  br i1 %i.iy, label %bb.bp, label %.thread521

bb.bp:                                            ; preds = %.lr.ph150.i248
  %i.iz = mul i64 %.sroa.084.4147.i251, 10
  %i.ja = add nsw i64 %.sroa.26.4148.i250, -1     ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i249, i64 1
  %i.jc = zext nneg i32 %i.ix to i64
  %i.jd = add i64 %i.iz, %i.jc                    ; 2 uses
  %.not105.i252 = icmp eq i64 %i.ja, 0
  br i1 %.not105.i252, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255, label %.lr.ph150.i248

.thread521:                                       ; preds = %.lr.ph.i223, %bb.bi, %bb.bh, %.lr.ph141.i233, %.preheader111.i240, %bb.bm, %bb.bn, %.lr.ph150.i248, %bb.be, %bb.be, %bb.i
  %.ph529 = phi ptr [ inttoptr (i64 1 to ptr), %bb.i ], [ %i.bm, %.preheader111.i240 ], [ %i.bm, %.lr.ph150.i248 ], [ %i.bm, %bb.be ], [ %i.bm, %.lr.ph141.i233 ], [ %i.bm, %bb.be ], [ %i.bm, %bb.bn ], [ %i.bm, %bb.bm ], [ %i.bm, %bb.bh ], [ %i.bm, %bb.bi ], [ %i.bm, %.lr.ph.i223 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph529, i64 noundef %i.bk) #20
  %i.je = load i8, ptr %i.v, align 8, !range !18, !noundef !4
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %bb.bs, label %bb.bt

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255: ; preds = %bb.bj, %bb.bk, %bb.bo, %bb.bp, %.preheader.i246, %.preheader114.i231
  %.sroa.15399.0 = phi i64 [ %i.ig, %bb.bk ], [ 0, %.preheader114.i231 ], [ %i.jd, %bb.bp ], [ 0, %.preheader.i246 ], [ %i.iu, %bb.bo ], [ %i.hx, %bb.bj ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, i64 noundef %.sroa.15399.0) #21
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255
  %i.jg = phi ptr [ %.ph529, %bb.bt ], [ %i.bm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit255 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.jh = icmp eq i64 %i.bk, 0
  br i1 %i.jh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258.a, label %bb.br

bb.br:                                            ; preds = %bb.bq
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jg, i64 noundef %i.bk, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1380
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258.a

bb.bs:                                            ; preds = %.thread521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store i64 %i.bk, ptr %i.u, align 8
  %.sroa.5394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %.ph529, ptr %.sroa.5394.0..sroa_idx, align 8
  %.sroa.8395.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.bk, ptr %.sroa.8395.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258.a

bb.bt:                                            ; preds = %.thread521
  %i.ji = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.jj = load double, ptr %i.ji, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @40, i64 noundef 8, double noundef %i.jj) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.bq

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258.a: ; preds = %bb.br, %bb.bq, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.x, ptr %i.s, align 8
  %.sroa.475.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.475.0..sroa_idx, align 8
  %i.jk = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.jl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jm = load ptr, ptr %i.jl, align 8, !nonnull !4, !align !9, !noundef !4
  %i.jn = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.jk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.jm, ptr noundef nonnull @35, ptr noundef nonnull %i.s) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !1381)
  %.val.i259 = load i64, ptr %i.x, align 8, !range !5, !alias.scope !1381, !noundef !4 ; 2 uses
  %i.jo = icmp eq i64 %.val.i259, 0
  br i1 %i.jo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261, label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.val1.i260 = load ptr, ptr %i.jp, align 8, !alias.scope !1381, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i260, i64 noundef %.val.i259, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1381
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit261: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit258.a, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.p

bb.bv:                                            ; preds = %bb.j, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164
  %.sroa.4432.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164 ], [ 0, %bb.j ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4432.0.ph, i64 %i.br) #24
  unreachable

bb.bw:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i164
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bt, ptr nonnull align 1 %i.bp, i64 %i.br, i1 false)
  %cond605 = icmp eq i64 %i.br, 1
  %i.jq = load i8, ptr %i.bt, align 1, !alias.scope !1382 ; 2 uses
  br i1 %cond605, label %bb.bx, label %thread-pre-split.i293

bb.bx:                                            ; preds = %bb.bw
  switch i8 %i.jq, label %bb.ce [
    i8 43, label %.thread543
    i8 45, label %.thread543
  ]

thread-pre-split.i293:                            ; preds = %bb.bw
  switch i8 %i.jq, label %bb.ce [
    i8 43, label %bb.by
    i8 45, label %bb.bz
  ]

bb.by:                                            ; preds = %thread-pre-split.i293
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.js = add nsw i64 %i.br, -1
  br label %bb.ce

bb.bz:                                            ; preds = %thread-pre-split.i293
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bt, i64 1 ; 2 uses
  %i.ju = add nsw i64 %i.br, -1                   ; 3 uses
  %i.jv = icmp samesign ult i64 %i.br, 17
  br i1 %i.jv, label %.preheader114.i271, label %.lr.ph.i263

.preheader114.i271:                               ; preds = %bb.bz
  %.not103137.i272 = icmp eq i64 %i.ju, 0
  br i1 %.not103137.i272, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph141.i273

.lr.ph.i263:                                      ; preds = %bb.bz, %bb.cc
  %.sroa.0.1136.i264 = phi ptr [ %i.jw, %bb.cc ], [ %i.jt, %bb.bz ] ; 2 uses
  %.sroa.26.1135.i265 = phi i64 [ %i.jx, %bb.cc ], [ %i.ju, %bb.bz ]
  %.sroa.084.0134.i266 = phi i64 [ %i.ki, %bb.cc ], [ 0, %bb.bz ]
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i264, i64 1
  %i.jx = add nsw i64 %.sroa.26.1135.i265, -1     ; 2 uses
  %i.jy = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i266, i64 10) ; 2 uses
  %i.jz = extractvalue { i64, i1 } %i.jy, 0
  %i.ka = extractvalue { i64, i1 } %i.jy, 1
  br i1 %i.ka, label %.thread543, label %bb.ca, !prof !13

bb.ca:                                            ; preds = %.lr.ph.i263
  %i.kb = load i8, ptr %.sroa.0.1136.i264, align 1, !alias.scope !1382, !noundef !4
  %i.kc = zext i8 %i.kb to i32
  %i.kd = add nsw i32 %i.kc, -48                  ; 2 uses
  %i.ke = icmp ult i32 %i.kd, 10
  br i1 %i.ke, label %bb.cb, label %.thread543

bb.cb:                                            ; preds = %bb.ca
  %i.kf = zext nneg i32 %i.kd to i64
  %i.kg = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.jz, i64 %i.kf) ; 2 uses
  %i.kh = extractvalue { i64, i1 } %i.kg, 1
  br i1 %i.kh, label %.thread543, label %bb.cc, !prof !13

bb.cc:                                            ; preds = %bb.cb
  %i.ki = extractvalue { i64, i1 } %i.kg, 0       ; 2 uses
  %.not102.i268 = icmp eq i64 %i.jx, 0
  br i1 %.not102.i268, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph.i263

.lr.ph141.i273:                                   ; preds = %.preheader114.i271, %bb.cd
  %.sroa.0.2140.i274 = phi ptr [ %i.kp, %bb.cd ], [ %i.jt, %.preheader114.i271 ] ; 2 uses
  %.sroa.26.2139.i275 = phi i64 [ %i.ko, %bb.cd ], [ %i.ju, %.preheader114.i271 ]
  %.sroa.084.2138.i276 = phi i64 [ %i.kr, %bb.cd ], [ 0, %.preheader114.i271 ]
  %i.kj = load i8, ptr %.sroa.0.2140.i274, align 1, !alias.scope !1382, !noundef !4
  %i.kk = zext i8 %i.kj to i32
  %i.kl = add nsw i32 %i.kk, -48                  ; 2 uses
  %i.km = icmp ult i32 %i.kl, 10
  br i1 %i.km, label %bb.cd, label %.thread543

bb.cd:                                            ; preds = %.lr.ph141.i273
  %i.kn = mul i64 %.sroa.084.2138.i276, 10
  %i.ko = add nsw i64 %.sroa.26.2139.i275, -1     ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i274, i64 1
  %i.kq = zext nneg i32 %i.kl to i64
  %i.kr = sub i64 %i.kn, %i.kq                    ; 2 uses
  %.not103.i277 = icmp eq i64 %i.ko, 0
  br i1 %.not103.i277, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph141.i273

bb.ce:                                            ; preds = %bb.bx, %bb.by, %thread-pre-split.i293
  %.sroa.26.0.i278 = phi i64 [ %i.js, %bb.by ], [ %i.br, %thread-pre-split.i293 ], [ %i.br, %bb.bx ] ; 4 uses
  %.sroa.0.0.i279 = phi ptr [ %i.jr, %bb.by ], [ %i.bt, %thread-pre-split.i293 ], [ %i.bt, %bb.bx ] ; 2 uses
  %i.ks = icmp samesign ult i64 %.sroa.26.0.i278, 16
  br i1 %i.ks, label %.preheader.i286, label %.preheader111.i280

.preheader.i286:                                  ; preds = %bb.ce
  %.not105146.i287 = icmp eq i64 %.sroa.26.0.i278, 0
  br i1 %.not105146.i287, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph150.i288

.preheader111.i280:                               ; preds = %bb.ce, %bb.ch
  %.sroa.0.3145.i281 = phi ptr [ %i.kt, %bb.ch ], [ %.sroa.0.0.i279, %bb.ce ] ; 2 uses
  %.sroa.26.3144.i282 = phi i64 [ %i.ku, %bb.ch ], [ %.sroa.26.0.i278, %bb.ce ]
  %.sroa.084.3143.i283 = phi i64 [ %i.lf, %bb.ch ], [ 0, %bb.ce ]
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i281, i64 1
  %i.ku = add nsw i64 %.sroa.26.3144.i282, -1     ; 2 uses
  %i.kv = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i283, i64 10) ; 2 uses
  %i.kw = extractvalue { i64, i1 } %i.kv, 0
  %i.kx = extractvalue { i64, i1 } %i.kv, 1
  br i1 %i.kx, label %.thread543, label %bb.cf, !prof !13

bb.cf:                                            ; preds = %.preheader111.i280
  %i.ky = load i8, ptr %.sroa.0.3145.i281, align 1, !alias.scope !1382, !noundef !4
  %i.kz = zext i8 %i.ky to i32
  %i.la = add nsw i32 %i.kz, -48                  ; 2 uses
  %i.lb = icmp ult i32 %i.la, 10
  br i1 %i.lb, label %bb.cg, label %.thread543

bb.cg:                                            ; preds = %bb.cf
  %i.lc = zext nneg i32 %i.la to i64
  %i.ld = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.kw, i64 %i.lc) ; 2 uses
  %i.le = extractvalue { i64, i1 } %i.ld, 1
  br i1 %i.le, label %.thread543, label %bb.ch, !prof !13

bb.ch:                                            ; preds = %bb.cg
  %i.lf = extractvalue { i64, i1 } %i.ld, 0       ; 2 uses
  %.not104.i285 = icmp eq i64 %i.ku, 0
  br i1 %.not104.i285, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.preheader111.i280

.lr.ph150.i288:                                   ; preds = %.preheader.i286, %bb.ci
  %.sroa.0.4149.i289 = phi ptr [ %i.lm, %bb.ci ], [ %.sroa.0.0.i279, %.preheader.i286 ] ; 2 uses
  %.sroa.26.4148.i290 = phi i64 [ %i.ll, %bb.ci ], [ %.sroa.26.0.i278, %.preheader.i286 ]
  %.sroa.084.4147.i291 = phi i64 [ %i.lo, %bb.ci ], [ 0, %.preheader.i286 ]
  %i.lg = load i8, ptr %.sroa.0.4149.i289, align 1, !alias.scope !1382, !noundef !4
  %i.lh = zext i8 %i.lg to i32
  %i.li = add nsw i32 %i.lh, -48                  ; 2 uses
  %i.lj = icmp ult i32 %i.li, 10
  br i1 %i.lj, label %bb.ci, label %.thread543

bb.ci:                                            ; preds = %.lr.ph150.i288
  %i.lk = mul i64 %.sroa.084.4147.i291, 10
  %i.ll = add nsw i64 %.sroa.26.4148.i290, -1     ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i289, i64 1
  %i.ln = zext nneg i32 %i.li to i64
  %i.lo = add i64 %i.lk, %i.ln                    ; 2 uses
  %.not105.i292 = icmp eq i64 %i.ll, 0
  br i1 %.not105.i292, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295, label %.lr.ph150.i288

.thread543:                                       ; preds = %.lr.ph.i263, %bb.cb, %bb.ca, %.lr.ph141.i273, %.preheader111.i280, %bb.cf, %bb.cg, %.lr.ph150.i288, %bb.bx, %bb.bx, %bb.k
  %.ph551 = phi ptr [ inttoptr (i64 1 to ptr), %bb.k ], [ %i.bt, %.preheader111.i280 ], [ %i.bt, %.lr.ph150.i288 ], [ %i.bt, %bb.bx ], [ %i.bt, %.lr.ph141.i273 ], [ %i.bt, %bb.bx ], [ %i.bt, %bb.cg ], [ %i.bt, %bb.cf ], [ %i.bt, %bb.ca ], [ %i.bt, %bb.cb ], [ %i.bt, %.lr.ph.i263 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph551, i64 noundef %i.br) #20
  %i.lp = load i8, ptr %i.p, align 8, !range !18, !noundef !4
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.cl, label %bb.cm

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295: ; preds = %bb.cc, %bb.cd, %bb.ch, %bb.ci, %.preheader.i286, %.preheader114.i271
  %.sroa.15406.0 = phi i64 [ %i.kr, %bb.cd ], [ 0, %.preheader114.i271 ], [ %i.lo, %bb.ci ], [ 0, %.preheader.i286 ], [ %i.lf, %bb.ch ], [ %i.ki, %bb.cc ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, i64 noundef %.sroa.15406.0) #21
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cm, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295
  %i.lr = phi ptr [ %.ph551, %bb.cm ], [ %i.bt, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit295 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.ls = icmp eq i64 %i.br, 0
  br i1 %i.ls, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.lr, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1383
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298

bb.cl:                                            ; preds = %.thread543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 %i.br, ptr %i.o, align 8
  %.sroa.5401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.ph551, ptr %.sroa.5401.0..sroa_idx, align 8
  %.sroa.8402.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i64 %i.br, ptr %.sroa.8402.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @44, i64 noundef 27, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298

bb.cm:                                            ; preds = %.thread543
  %i.lt = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.lu = load double, ptr %i.lt, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, double noundef %i.lu) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.cj

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298: ; preds = %bb.ck, %bb.cj, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.r, ptr %i.m, align 8
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.494.0..sroa_idx, align 8
  %i.lv = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !nonnull !4, !align !9, !noundef !4
  %i.ly = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.lv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.lx, ptr noundef nonnull @35, ptr noundef nonnull %i.m) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !1384)
  %.val.i299 = load i64, ptr %i.r, align 8, !range !5, !alias.scope !1384, !noundef !4 ; 2 uses
  %i.lz = icmp eq i64 %.val.i299, 0
  br i1 %i.lz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301, label %bb.cn

bb.cn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298
  %i.ma = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val1.i300 = load ptr, ptr %i.ma, align 8, !alias.scope !1384, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i300, i64 noundef %.val.i299, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1384
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit301: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit298, %bb.cn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.p

bb.co:                                            ; preds = %bb.l, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168
  %.sroa.4436.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168 ], [ 0, %bb.l ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4436.0.ph, i64 %i.by) #24
  unreachable

bb.cp:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i168
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull align 1 %i.bw, i64 %i.by, i1 false)
  %cond606 = icmp eq i64 %i.by, 1
  %i.mb = load i8, ptr %i.ca, align 1, !alias.scope !1385 ; 2 uses
  br i1 %cond606, label %bb.cq, label %thread-pre-split.i333

bb.cq:                                            ; preds = %bb.cp
  switch i8 %i.mb, label %bb.cx [
    i8 43, label %.thread565
    i8 45, label %.thread565
  ]

thread-pre-split.i333:                            ; preds = %bb.cp
  switch i8 %i.mb, label %bb.cx [
    i8 43, label %bb.cr
    i8 45, label %bb.cs
  ]

bb.cr:                                            ; preds = %thread-pre-split.i333
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %i.md = add nsw i64 %i.by, -1
  br label %bb.cx

bb.cs:                                            ; preds = %thread-pre-split.i333
  %i.me = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  %i.mf = add nsw i64 %i.by, -1                   ; 3 uses
  %i.mg = icmp samesign ult i64 %i.by, 17
  br i1 %i.mg, label %.preheader114.i311, label %.lr.ph.i303

.preheader114.i311:                               ; preds = %bb.cs
  %.not103137.i312 = icmp eq i64 %i.mf, 0
  br i1 %.not103137.i312, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph141.i313

.lr.ph.i303:                                      ; preds = %bb.cs, %bb.cv
  %.sroa.0.1136.i304 = phi ptr [ %i.mh, %bb.cv ], [ %i.me, %bb.cs ] ; 2 uses
  %.sroa.26.1135.i305 = phi i64 [ %i.mi, %bb.cv ], [ %i.mf, %bb.cs ]
  %.sroa.084.0134.i306 = phi i64 [ %i.mt, %bb.cv ], [ 0, %bb.cs ]
  %i.mh = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i304, i64 1
  %i.mi = add nsw i64 %.sroa.26.1135.i305, -1     ; 2 uses
  %i.mj = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i306, i64 10) ; 2 uses
  %i.mk = extractvalue { i64, i1 } %i.mj, 0
  %i.ml = extractvalue { i64, i1 } %i.mj, 1
  br i1 %i.ml, label %.thread565, label %bb.ct, !prof !13

bb.ct:                                            ; preds = %.lr.ph.i303
  %i.mm = load i8, ptr %.sroa.0.1136.i304, align 1, !alias.scope !1385, !noundef !4
  %i.mn = zext i8 %i.mm to i32
  %i.mo = add nsw i32 %i.mn, -48                  ; 2 uses
  %i.mp = icmp ult i32 %i.mo, 10
  br i1 %i.mp, label %bb.cu, label %.thread565

bb.cu:                                            ; preds = %bb.ct
  %i.mq = zext nneg i32 %i.mo to i64
  %i.mr = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.mk, i64 %i.mq) ; 2 uses
  %i.ms = extractvalue { i64, i1 } %i.mr, 1
  br i1 %i.ms, label %.thread565, label %bb.cv, !prof !13

bb.cv:                                            ; preds = %bb.cu
  %i.mt = extractvalue { i64, i1 } %i.mr, 0       ; 2 uses
  %.not102.i308 = icmp eq i64 %i.mi, 0
  br i1 %.not102.i308, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph.i303

.lr.ph141.i313:                                   ; preds = %.preheader114.i311, %bb.cw
  %.sroa.0.2140.i314 = phi ptr [ %i.na, %bb.cw ], [ %i.me, %.preheader114.i311 ] ; 2 uses
  %.sroa.26.2139.i315 = phi i64 [ %i.mz, %bb.cw ], [ %i.mf, %.preheader114.i311 ]
  %.sroa.084.2138.i316 = phi i64 [ %i.nc, %bb.cw ], [ 0, %.preheader114.i311 ]
  %i.mu = load i8, ptr %.sroa.0.2140.i314, align 1, !alias.scope !1385, !noundef !4
  %i.mv = zext i8 %i.mu to i32
  %i.mw = add nsw i32 %i.mv, -48                  ; 2 uses
  %i.mx = icmp ult i32 %i.mw, 10
  br i1 %i.mx, label %bb.cw, label %.thread565

bb.cw:                                            ; preds = %.lr.ph141.i313
  %i.my = mul i64 %.sroa.084.2138.i316, 10
  %i.mz = add nsw i64 %.sroa.26.2139.i315, -1     ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i314, i64 1
  %i.nb = zext nneg i32 %i.mw to i64
  %i.nc = sub i64 %i.my, %i.nb                    ; 2 uses
  %.not103.i317 = icmp eq i64 %i.mz, 0
  br i1 %.not103.i317, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph141.i313

bb.cx:                                            ; preds = %bb.cq, %bb.cr, %thread-pre-split.i333
  %.sroa.26.0.i318 = phi i64 [ %i.md, %bb.cr ], [ %i.by, %thread-pre-split.i333 ], [ %i.by, %bb.cq ] ; 4 uses
  %.sroa.0.0.i319 = phi ptr [ %i.mc, %bb.cr ], [ %i.ca, %thread-pre-split.i333 ], [ %i.ca, %bb.cq ] ; 2 uses
  %i.nd = icmp samesign ult i64 %.sroa.26.0.i318, 16
  br i1 %i.nd, label %.preheader.i326, label %.preheader111.i320

.preheader.i326:                                  ; preds = %bb.cx
  %.not105146.i327 = icmp eq i64 %.sroa.26.0.i318, 0
  br i1 %.not105146.i327, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph150.i328

.preheader111.i320:                               ; preds = %bb.cx, %bb.da
  %.sroa.0.3145.i321 = phi ptr [ %i.ne, %bb.da ], [ %.sroa.0.0.i319, %bb.cx ] ; 2 uses
  %.sroa.26.3144.i322 = phi i64 [ %i.nf, %bb.da ], [ %.sroa.26.0.i318, %bb.cx ]
  %.sroa.084.3143.i323 = phi i64 [ %i.nq, %bb.da ], [ 0, %bb.cx ]
  %i.ne = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i321, i64 1
  %i.nf = add nsw i64 %.sroa.26.3144.i322, -1     ; 2 uses
  %i.ng = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i323, i64 10) ; 2 uses
  %i.nh = extractvalue { i64, i1 } %i.ng, 0
  %i.ni = extractvalue { i64, i1 } %i.ng, 1
  br i1 %i.ni, label %.thread565, label %bb.cy, !prof !13

bb.cy:                                            ; preds = %.preheader111.i320
  %i.nj = load i8, ptr %.sroa.0.3145.i321, align 1, !alias.scope !1385, !noundef !4
  %i.nk = zext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, -48                  ; 2 uses
  %i.nm = icmp ult i32 %i.nl, 10
  br i1 %i.nm, label %bb.cz, label %.thread565

bb.cz:                                            ; preds = %bb.cy
  %i.nn = zext nneg i32 %i.nl to i64
  %i.no = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.nh, i64 %i.nn) ; 2 uses
  %i.np = extractvalue { i64, i1 } %i.no, 1
  br i1 %i.np, label %.thread565, label %bb.da, !prof !13

bb.da:                                            ; preds = %bb.cz
  %i.nq = extractvalue { i64, i1 } %i.no, 0       ; 2 uses
  %.not104.i325 = icmp eq i64 %i.nf, 0
  br i1 %.not104.i325, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.preheader111.i320

.lr.ph150.i328:                                   ; preds = %.preheader.i326, %bb.db
  %.sroa.0.4149.i329 = phi ptr [ %i.nx, %bb.db ], [ %.sroa.0.0.i319, %.preheader.i326 ] ; 2 uses
  %.sroa.26.4148.i330 = phi i64 [ %i.nw, %bb.db ], [ %.sroa.26.0.i318, %.preheader.i326 ]
  %.sroa.084.4147.i331 = phi i64 [ %i.nz, %bb.db ], [ 0, %.preheader.i326 ]
  %i.nr = load i8, ptr %.sroa.0.4149.i329, align 1, !alias.scope !1385, !noundef !4
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add nsw i32 %i.ns, -48                  ; 2 uses
  %i.nu = icmp ult i32 %i.nt, 10
  br i1 %i.nu, label %bb.db, label %.thread565

bb.db:                                            ; preds = %.lr.ph150.i328
  %i.nv = mul i64 %.sroa.084.4147.i331, 10
  %i.nw = add nsw i64 %.sroa.26.4148.i330, -1     ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i329, i64 1
  %i.ny = zext nneg i32 %i.nt to i64
  %i.nz = add i64 %i.nv, %i.ny                    ; 2 uses
  %.not105.i332 = icmp eq i64 %i.nw, 0
  br i1 %.not105.i332, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335, label %.lr.ph150.i328

.thread565:                                       ; preds = %.lr.ph.i303, %bb.cu, %bb.ct, %.lr.ph141.i313, %.preheader111.i320, %bb.cy, %bb.cz, %.lr.ph150.i328, %bb.cq, %bb.cq, %bb.m
  %.ph573 = phi ptr [ inttoptr (i64 1 to ptr), %bb.m ], [ %i.ca, %.preheader111.i320 ], [ %i.ca, %.lr.ph150.i328 ], [ %i.ca, %bb.cq ], [ %i.ca, %.lr.ph141.i313 ], [ %i.ca, %bb.cq ], [ %i.ca, %bb.cz ], [ %i.ca, %bb.cy ], [ %i.ca, %bb.ct ], [ %i.ca, %bb.cu ], [ %i.ca, %.lr.ph.i303 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph573, i64 noundef %i.by) #20
  %i.oa = load i8, ptr %i.j, align 8, !range !18, !noundef !4
  %i.ob = trunc nuw i8 %i.oa to i1
  br i1 %i.ob, label %bb.de, label %bb.df

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335: ; preds = %bb.cv, %bb.cw, %bb.da, %bb.db, %.preheader.i326, %.preheader114.i311
  %.sroa.15413.0 = phi i64 [ %i.nc, %bb.cw ], [ 0, %.preheader114.i311 ], [ %i.nz, %bb.db ], [ 0, %.preheader.i326 ], [ %i.nq, %bb.da ], [ %i.mt, %bb.cv ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, i64 noundef %.sroa.15413.0) #21
  br label %bb.dc

bb.dc:                                            ; preds = %bb.df, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335
  %i.oc = phi ptr [ %.ph573, %bb.df ], [ %i.ca, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit335 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.od = icmp eq i64 %i.by, 0
  br i1 %i.od, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.oc, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1386
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338

bb.de:                                            ; preds = %.thread565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %i.by, ptr %i.i, align 8
  %.sroa.5408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.ph573, ptr %.sroa.5408.0..sroa_idx, align 8
  %.sroa.8409.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.by, ptr %.sroa.8409.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @45, i64 noundef 26, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338

bb.df:                                            ; preds = %.thread565
  %i.oe = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.of = load double, ptr %i.oe, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @38, i64 noundef 5, double noundef %i.of) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.dc

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338: ; preds = %bb.dd, %bb.dc, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.l, ptr %i.g, align 8
  %.sroa.4113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4113.0..sroa_idx, align 8
  %i.og = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.oh = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.oi = load ptr, ptr %i.oh, align 8, !nonnull !4, !align !9, !noundef !4
  %i.oj = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.og, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.oi, ptr noundef nonnull @35, ptr noundef nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !1387)
  %.val.i339 = load i64, ptr %i.l, align 8, !range !5, !alias.scope !1387, !noundef !4 ; 2 uses
  %i.ok = icmp eq i64 %.val.i339, 0
  br i1 %i.ok, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341, label %bb.dg

bb.dg:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338
  %i.ol = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.val1.i340 = load ptr, ptr %i.ol, align 8, !alias.scope !1387, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i340, i64 noundef %.val.i339, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1387
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit341: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit338, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.p

bb.dh:                                            ; preds = %bb.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172
  %.sroa.4440.0.ph = phi i64 [ 1, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172 ], [ 0, %bb.n ]
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4440.0.ph, i64 %i.cf) #24
  unreachable

bb.di:                                            ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i172
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull align 1 %i.cd, i64 %i.cf, i1 false)
  %cond607 = icmp eq i64 %i.cf, 1
  %i.om = load i8, ptr %i.ch, align 1, !alias.scope !1388 ; 2 uses
  br i1 %cond607, label %bb.dj, label %thread-pre-split.i373

bb.dj:                                            ; preds = %bb.di
  switch i8 %i.om, label %bb.dq [
    i8 43, label %.thread587
    i8 45, label %.thread587
  ]

thread-pre-split.i373:                            ; preds = %bb.di
  switch i8 %i.om, label %bb.dq [
    i8 43, label %bb.dk
    i8 45, label %bb.dl
  ]

bb.dk:                                            ; preds = %thread-pre-split.i373
  %i.on = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %i.oo = add nsw i64 %i.cf, -1
  br label %bb.dq

bb.dl:                                            ; preds = %thread-pre-split.i373
  %i.op = getelementptr inbounds nuw i8, ptr %i.ch, i64 1 ; 2 uses
  %i.oq = add nsw i64 %i.cf, -1                   ; 3 uses
  %i.or = icmp samesign ult i64 %i.cf, 17
  br i1 %i.or, label %.preheader114.i351, label %.lr.ph.i343

.preheader114.i351:                               ; preds = %bb.dl
  %.not103137.i352 = icmp eq i64 %i.oq, 0
  br i1 %.not103137.i352, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph141.i353

.lr.ph.i343:                                      ; preds = %bb.dl, %bb.do
  %.sroa.0.1136.i344 = phi ptr [ %i.os, %bb.do ], [ %i.op, %bb.dl ] ; 2 uses
  %.sroa.26.1135.i345 = phi i64 [ %i.ot, %bb.do ], [ %i.oq, %bb.dl ]
  %.sroa.084.0134.i346 = phi i64 [ %i.pe, %bb.do ], [ 0, %bb.dl ]
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.0.1136.i344, i64 1
  %i.ot = add nsw i64 %.sroa.26.1135.i345, -1     ; 2 uses
  %i.ou = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.0134.i346, i64 10) ; 2 uses
  %i.ov = extractvalue { i64, i1 } %i.ou, 0
  %i.ow = extractvalue { i64, i1 } %i.ou, 1
  br i1 %i.ow, label %.thread587, label %bb.dm, !prof !13

bb.dm:                                            ; preds = %.lr.ph.i343
  %i.ox = load i8, ptr %.sroa.0.1136.i344, align 1, !alias.scope !1388, !noundef !4
  %i.oy = zext i8 %i.ox to i32
  %i.oz = add nsw i32 %i.oy, -48                  ; 2 uses
  %i.pa = icmp ult i32 %i.oz, 10
  br i1 %i.pa, label %bb.dn, label %.thread587

bb.dn:                                            ; preds = %bb.dm
  %i.pb = zext nneg i32 %i.oz to i64
  %i.pc = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ov, i64 %i.pb) ; 2 uses
  %i.pd = extractvalue { i64, i1 } %i.pc, 1
  br i1 %i.pd, label %.thread587, label %bb.do, !prof !13

bb.do:                                            ; preds = %bb.dn
  %i.pe = extractvalue { i64, i1 } %i.pc, 0       ; 2 uses
  %.not102.i348 = icmp eq i64 %i.ot, 0
  br i1 %.not102.i348, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph.i343

.lr.ph141.i353:                                   ; preds = %.preheader114.i351, %bb.dp
  %.sroa.0.2140.i354 = phi ptr [ %i.pl, %bb.dp ], [ %i.op, %.preheader114.i351 ] ; 2 uses
  %.sroa.26.2139.i355 = phi i64 [ %i.pk, %bb.dp ], [ %i.oq, %.preheader114.i351 ]
  %.sroa.084.2138.i356 = phi i64 [ %i.pn, %bb.dp ], [ 0, %.preheader114.i351 ]
  %i.pf = load i8, ptr %.sroa.0.2140.i354, align 1, !alias.scope !1388, !noundef !4
  %i.pg = zext i8 %i.pf to i32
  %i.ph = add nsw i32 %i.pg, -48                  ; 2 uses
  %i.pi = icmp ult i32 %i.ph, 10
  br i1 %i.pi, label %bb.dp, label %.thread587

bb.dp:                                            ; preds = %.lr.ph141.i353
  %i.pj = mul i64 %.sroa.084.2138.i356, 10
  %i.pk = add nsw i64 %.sroa.26.2139.i355, -1     ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %.sroa.0.2140.i354, i64 1
  %i.pm = zext nneg i32 %i.ph to i64
  %i.pn = sub i64 %i.pj, %i.pm                    ; 2 uses
  %.not103.i357 = icmp eq i64 %i.pk, 0
  br i1 %.not103.i357, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph141.i353

bb.dq:                                            ; preds = %bb.dj, %bb.dk, %thread-pre-split.i373
  %.sroa.26.0.i358 = phi i64 [ %i.oo, %bb.dk ], [ %i.cf, %thread-pre-split.i373 ], [ %i.cf, %bb.dj ] ; 4 uses
  %.sroa.0.0.i359 = phi ptr [ %i.on, %bb.dk ], [ %i.ch, %thread-pre-split.i373 ], [ %i.ch, %bb.dj ] ; 2 uses
  %i.po = icmp samesign ult i64 %.sroa.26.0.i358, 16
  br i1 %i.po, label %.preheader.i366, label %.preheader111.i360

.preheader.i366:                                  ; preds = %bb.dq
  %.not105146.i367 = icmp eq i64 %.sroa.26.0.i358, 0
  br i1 %.not105146.i367, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph150.i368

.preheader111.i360:                               ; preds = %bb.dq, %bb.dt
  %.sroa.0.3145.i361 = phi ptr [ %i.pp, %bb.dt ], [ %.sroa.0.0.i359, %bb.dq ] ; 2 uses
  %.sroa.26.3144.i362 = phi i64 [ %i.pq, %bb.dt ], [ %.sroa.26.0.i358, %bb.dq ]
  %.sroa.084.3143.i363 = phi i64 [ %i.qb, %bb.dt ], [ 0, %bb.dq ]
  %i.pp = getelementptr inbounds nuw i8, ptr %.sroa.0.3145.i361, i64 1
  %i.pq = add nsw i64 %.sroa.26.3144.i362, -1     ; 2 uses
  %i.pr = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.084.3143.i363, i64 10) ; 2 uses
  %i.ps = extractvalue { i64, i1 } %i.pr, 0
  %i.pt = extractvalue { i64, i1 } %i.pr, 1
  br i1 %i.pt, label %.thread587, label %bb.dr, !prof !13

bb.dr:                                            ; preds = %.preheader111.i360
  %i.pu = load i8, ptr %.sroa.0.3145.i361, align 1, !alias.scope !1388, !noundef !4
  %i.pv = zext i8 %i.pu to i32
  %i.pw = add nsw i32 %i.pv, -48                  ; 2 uses
  %i.px = icmp ult i32 %i.pw, 10
  br i1 %i.px, label %bb.ds, label %.thread587

bb.ds:                                            ; preds = %bb.dr
  %i.py = zext nneg i32 %i.pw to i64
  %i.pz = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.ps, i64 %i.py) ; 2 uses
  %i.qa = extractvalue { i64, i1 } %i.pz, 1
  br i1 %i.qa, label %.thread587, label %bb.dt, !prof !13

bb.dt:                                            ; preds = %bb.ds
  %i.qb = extractvalue { i64, i1 } %i.pz, 0       ; 2 uses
  %.not104.i365 = icmp eq i64 %i.pq, 0
  br i1 %.not104.i365, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.preheader111.i360

.lr.ph150.i368:                                   ; preds = %.preheader.i366, %bb.du
  %.sroa.0.4149.i369 = phi ptr [ %i.qi, %bb.du ], [ %.sroa.0.0.i359, %.preheader.i366 ] ; 2 uses
  %.sroa.26.4148.i370 = phi i64 [ %i.qh, %bb.du ], [ %.sroa.26.0.i358, %.preheader.i366 ]
  %.sroa.084.4147.i371 = phi i64 [ %i.qk, %bb.du ], [ 0, %.preheader.i366 ]
  %i.qc = load i8, ptr %.sroa.0.4149.i369, align 1, !alias.scope !1388, !noundef !4
  %i.qd = zext i8 %i.qc to i32
  %i.qe = add nsw i32 %i.qd, -48                  ; 2 uses
  %i.qf = icmp ult i32 %i.qe, 10
  br i1 %i.qf, label %bb.du, label %.thread587

bb.du:                                            ; preds = %.lr.ph150.i368
  %i.qg = mul i64 %.sroa.084.4147.i371, 10
  %i.qh = add nsw i64 %.sroa.26.4148.i370, -1     ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %.sroa.0.4149.i369, i64 1
  %i.qj = zext nneg i32 %i.qe to i64
  %i.qk = add i64 %i.qg, %i.qj                    ; 2 uses
  %.not105.i372 = icmp eq i64 %i.qh, 0
  br i1 %.not105.i372, label %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375, label %.lr.ph150.i368

.thread587:                                       ; preds = %.lr.ph.i343, %bb.dn, %bb.dm, %.lr.ph141.i353, %.preheader111.i360, %bb.dr, %bb.ds, %.lr.ph150.i368, %bb.dj, %bb.dj, %bb.o
  %.ph595 = phi ptr [ inttoptr (i64 1 to ptr), %bb.o ], [ %i.ch, %.preheader111.i360 ], [ %i.ch, %.lr.ph150.i368 ], [ %i.ch, %bb.dj ], [ %i.ch, %.lr.ph141.i353 ], [ %i.ch, %bb.dj ], [ %i.ch, %bb.ds ], [ %i.ch, %bb.dr ], [ %i.ch, %bb.dm ], [ %i.ch, %bb.dn ], [ %i.ch, %.lr.ph.i343 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvXs2_NtNtCs6JMX4GRUq9U_4core3num11float_parsedNtNtNtB9_3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.ph595, i64 noundef %i.cf) #20
  %i.ql = load i8, ptr %i.d, align 8, !range !18, !noundef !4
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.dx, label %bb.dy

_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375: ; preds = %bb.do, %bb.dp, %bb.dt, %bb.du, %.preheader.i366, %.preheader114.i351
  %.sroa.15420.0 = phi i64 [ %i.pn, %bb.dp ], [ 0, %.preheader114.i351 ], [ %i.qk, %bb.du ], [ 0, %.preheader.i366 ], [ %i.qb, %bb.dt ], [ %i.pe, %bb.do ]
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRexECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, i64 noundef %.sroa.15420.0) #21
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dy, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375
  %i.qn = phi ptr [ %.ph595, %bb.dy ], [ %i.ch, %_RNvMsr_NtCs6JMX4GRUq9U_4core3numx27from_ascii_bytes_radix_impl.exit375 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.qo = icmp eq i64 %i.cf, 0
  br i1 %i.qo, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.qn, i64 noundef %i.cf, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1389
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378

bb.dx:                                            ; preds = %.thread587
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.cf, ptr %i.c, align 8
  %.sroa.5415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %.ph595, ptr %.sroa.5415.0..sroa_idx, align 8
  %.sroa.8416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.cf, ptr %.sroa.8416.0..sroa_idx, align 8
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setReNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvNtNtCsh036I4OHgIr_6uucore4mods6locale21get_message_with_args(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 34, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378

bb.dy:                                            ; preds = %.thread587
  %i.qp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.qq = load double, ptr %i.qp, align 8, !noundef !4
  call fastcc void @_RINvMNtCsiMbvvWBbXLn_13fluent_bundle4argsNtB3_10FluentArgs3setRedECs2szWGFz6wmN_7uu_test(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @43, i64 noundef 8, double noundef %i.qq) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.dv

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378: ; preds = %bb.dw, %bb.dv, %bb.dx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.4132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsq_NtCs7tKScEop1B6_5alloc6stringNtB5_6StringNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.4132.0..sroa_idx, align 8
  %i.qr = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.qs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.qt = load ptr, ptr %i.qs, align 8, !nonnull !4, !align !9, !noundef !4
  %i.qu = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.qr, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.qt, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !1390)
  %.val.i379 = load i64, ptr %i.f, align 8, !range !5, !alias.scope !1390, !noundef !4 ; 2 uses
  %i.qv = icmp eq i64 %.val.i379, 0
  br i1 %i.qv, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381, label %bb.dz

bb.dz:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378
  %i.qw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.val1.i380 = load ptr, ptr %i.qw, align 8, !alias.scope !1390, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i380, i64 noundef %.val.i379, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !1390
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit381: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs2szWGFz6wmN_7uu_test.exit378, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtRNtNtCs2szWGFz6wmN_7uu_test6parser6SymbolNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !9, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1394)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1395)
  %i.d = load i64, ptr %i.c, align 8, !range !6, !alias.scope !1394, !noundef !4
  switch i64 %i.d, label %default.unreachable [
    i64 0, label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit
    i64 1, label %bb.b
    i64 2, label %bb.e
    i64 3, label %bb.e
    i64 4, label %bb.c
    i64 5, label %bb.c
    i64 6, label %bb.d
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.a
  %.sink.i = phi i64 [ 16, %bb.c ], [ 8, %bb.a ], [ 8, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sink.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1394, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !1394, !noundef !4
  br label %_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit

_RNvXs_NtCs2szWGFz6wmN_7uu_test6parserNtB4_6SymbolNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.e
  %.sroa.5.0.i = phi i64 [ 4, %bb.d ], [ 1, %bb.b ], [ %i.i, %bb.e ], [ 1, %bb.a ]
  %.sroa.03.0.i = phi ptr [ @52, %bb.d ], [ @29, %bb.b ], [ %i.g, %bb.e ], [ @28, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1396
  store i64 1, ptr %i.b, align 8, !noalias !1396
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.sroa.03.0.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !1396
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %.sroa.5.0.i, ptr %.sroa.55.0..sroa_idx.i, align 8, !noalias !1396
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 1, ptr %i.j, align 8, !noalias !1396
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1396
  store ptr %i.b, ptr %i.a, align 8, !noalias !1396
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !1396
  %i.k = load ptr, ptr %1, align 8, !alias.scope !1395, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1395, !nonnull !4, !align !9, !noundef !4
  %i.n = call noundef zeroext i1 @_RNvNtCs6JMX4GRUq9U_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @35, ptr noundef nonnull %i.a) #21, !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1396
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1396
  ret i1 %i.n
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs6_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters8peekableINtB5_8PeekableINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEENtNtBb_5clone5Clone5cloneCs2szWGFz6wmN_7uu_test(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val3 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.c = ptrtoint ptr %.val3 to i64
  %i.d = ptrtoint ptr %.val to i64
  %i.e = sub nuw i64 %i.c, %i.d                   ; 5 uses
  %i.f = udiv exact i64 %i.e, 24                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1425)
  %i.g = icmp eq ptr %.val3, %.val
  br i1 %i.g, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1426
  %i.h = tail call noundef align 8 ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.e, i64 noundef range(i64 1, 9) 8) #21, !noalias !1426 ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.e) #24, !noalias !1427
  unreachable

.lr.ph.i.i:                                       ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i
  %.sroa.0.034.i.i = phi ptr [ %i.l, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %.val, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 4 uses
  %.sroa.7.033.i.i = phi i64 [ %i.m, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ 0, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ] ; 2 uses
  %.sroa.10.032.i.i = phi i64 [ %i.j, %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i ], [ %i.f, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i ]
  %i.j = add nsw i64 %.sroa.10.032.i.i, -1        ; 2 uses
  %i.k = icmp eq ptr %.sroa.0.034.i.i, %.val3
  br i1 %i.k, label %_RNvXsd_NtNtCs7tKScEop1B6_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtCs6JMX4GRUq9U_4core5clone5Clone5cloneCs2szWGFz6wmN_7uu_test.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.034.i.i, i64 24
  %i.m = add nuw nsw i64 %.sroa.7.033.i.i, 1
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.033.i.i ; 3 uses
  %i.o = getelementptr i8, ptr %.sroa.0.034.i.i, i64 8
  %.val.i.i = load ptr, ptr %i.o, align 8, !alias.scope !1425, !noalias !1428, !nonnull !4, !noundef !4
  %i.p = getelementptr i8, ptr %.sroa.0.034.i.i, i64 16
  %.val13.i.i = load i64, ptr %i.p, align 8, !alias.scope !1425, !noalias !1428, !noundef !4 ; 6 uses
  %i.q = icmp eq i64 %.val13.i.i, 0
  br i1 %i.q, label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !1429
  %i.r = tail call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.val13.i.i, i64 noundef range(i64 1, 9) 1) #21, !noalias !1429 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 range(i64 0, -9223372036854775808) %.val13.i.i) #24, !noalias !1430
  unreachable

bb.e:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull readonly align 1 %.val.i.i, i64 range(i64 0, -9223372036854775808) %.val13.i.i, i1 false), !noalias !1431
  br label %_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i

_RNvXs6_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core5clone5Clone5clone.exit.i.i: ; preds = %bb.e, %bb.c
  %.sroa.5.0.i.i.i = phi ptr [ %i.r, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.c ]
  store i64 %.val13.i.i, ptr %i.n, align 8, !noalias !1427
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
end_hunk_2
