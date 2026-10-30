Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_linalg-a41068480ef1e611.lance_linalg.7155760e2fbf712c-cgu.0?download=true
inline.NumInlined: 5334
inline.NumDeleted: 2333
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 146
begin_hunk_0_@_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l22l2NtNtCs2k6O4uMwKJm_4half8binary163f16EB6_
define internal noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l22l2NtNtCs2k6O4uMwKJm_4half8binary163f16EB6_(ptr noalias noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias noundef nonnull readonly align 2 captures(none) %2, i64 noundef range(i64 0, 4611686018427387904) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef float @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2NtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_2L22l2(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %2, i64 noundef %3)
  ret float %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l22l2dEB6_(ptr noalias noundef nonnull readonly align 8 captures(none) %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull readonly align 8 captures(none) %2, i64 noundef range(i64 0, 1152921504606846976) %3) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc noundef float @_RNvXs3_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2dNtB5_2L22l2(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3)
  ret float %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l22l2fEB6_(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1787
  store i64 %1, ptr %i.e, align 8, !noalias !1787
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1787
  store i64 %3, ptr %i.d, align 8, !noalias !1787
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1787
  store ptr %i.e, ptr %i.c, align 8, !noalias !1787
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !1787
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.g, align 8, !noalias !1787
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !noalias !1787
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @53, ptr nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #74, !noalias !1787
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1787
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1787
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8, !noalias !1788
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1788
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.b, align 8, !noalias !1788
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1788
  store ptr %i.b, ptr %i.a, align 8, !noalias !1788
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !1788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1788
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i: ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, align 8, !range !42, !noalias !1788, !noundef !18
  switch i8 %i.j, label %bb.e [
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.h
  ]

bb.e:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i
  %i.k = call fastcc noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_EB6_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvXs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2fNtB5_2L22l2.exit

bb.f:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i
  %i.l = call fastcc noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8610l2_f32_avx(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvXs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2fNtB5_2L22l2.exit

bb.g:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i
  %i.m = call fastcc noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8614l2_f32_avx_fma(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvXs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2fNtB5_2L22l2.exit

bb.h:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i.i
  %i.n = call fastcc noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l23x8613l2_f32_avx512(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvXs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2fNtB5_2L22l2.exit

_RNvXs1_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2fNtB5_2L22l2.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i.i = phi float [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  ret float %.sroa.0.0.i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_EB6_(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %3, ptr %i.b, align 8
  %i.d = icmp eq i64 %1, %3
  br i1 %i.d, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.45.0..sroa_idx, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.e, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef nonnull @53, ptr nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.f = and i64 %1, 15                           ; 2 uses
  %i.g = and i64 %1, 2305843009213693936          ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 5 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g ; 5 uses
  %i.j = icmp eq i64 %i.f, 0
  br i1 %i.j, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.k = icmp samesign ult i64 %i.f, 4
  br i1 %i.k, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %1, 12
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.018.i.i.i.i = phi float [ -0.000000e+00, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ai, %.lr.ph.i.i.i.i ]
  %.sroa.02.017.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.ad, %.lr.ph.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.l = or disjoint i64 %.sroa.02.017.i.i.i.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.02.017.i.i.i.i
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.02.017.i.i.i.i
  %.val15.i.i.i.i = load float, ptr %i.m, align 4, !noalias !1798, !noundef !18
  %.val16.i.i.i.i = load float, ptr %i.n, align 4, !noalias !1798, !noundef !18
  %i.o = fsub float %.val15.i.i.i.i, %.val16.i.i.i.i ; 2 uses
  %i.p = fmul float %i.o, %i.o
  %i.q = fadd float %.sroa.0.018.i.i.i.i, %i.p
  %i.r = or disjoint i64 %.sroa.02.017.i.i.i.i, 2 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.l
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.l
  %.val15.i.i.i.i.1 = load float, ptr %i.s, align 4, !noalias !1798, !noundef !18
  %.val16.i.i.i.i.1 = load float, ptr %i.t, align 4, !noalias !1798, !noundef !18
  %i.u = fsub float %.val15.i.i.i.i.1, %.val16.i.i.i.i.1 ; 2 uses
  %i.v = fmul float %i.u, %i.u
  %i.w = fadd float %i.q, %i.v
  %i.x = or disjoint i64 %.sroa.02.017.i.i.i.i, 3 ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.r
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.r
  %.val15.i.i.i.i.2 = load float, ptr %i.y, align 4, !noalias !1798, !noundef !18
  %.val16.i.i.i.i.2 = load float, ptr %i.z, align 4, !noalias !1798, !noundef !18
  %i.aa = fsub float %.val15.i.i.i.i.2, %.val16.i.i.i.i.2 ; 2 uses
  %i.ab = fmul float %i.aa, %i.aa
  %i.ac = fadd float %i.w, %i.ab
  %i.ad = add nuw nsw i64 %.sroa.02.017.i.i.i.i, 4 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.x
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.x
  %.val15.i.i.i.i.3 = load float, ptr %i.ae, align 4, !noalias !1798, !noundef !18
  %.val16.i.i.i.i.3 = load float, ptr %i.af, align 4, !noalias !1798, !noundef !18
  %i.ag = fsub float %.val15.i.i.i.i.3, %.val16.i.i.i.i.3 ; 2 uses
  %i.ah = fmul float %i.ag, %i.ag
  %i.ai = fadd float %i.ac, %i.ah                 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.018.i.i.i.i.epil.init = phi float [ -0.000000e+00, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa ]
  %.sroa.02.017.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa ]
  %lcmp.mod101 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.018.i.i.i.i.epil = phi float [ %i.ao, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.018.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.02.017.i.i.i.i.epil = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.epil ], [ %.sroa.02.017.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.aj = add nuw nsw i64 %.sroa.02.017.i.i.i.i.epil, 1
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.02.017.i.i.i.i.epil
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.sroa.02.017.i.i.i.i.epil
  %.val15.i.i.i.i.epil = load float, ptr %i.ak, align 4, !noalias !1798, !noundef !18
  %.val16.i.i.i.i.epil = load float, ptr %i.al, align 4, !noalias !1798, !noundef !18
  %i.am = fsub float %.val15.i.i.i.i.epil, %.val16.i.i.i.i.epil ; 2 uses
  %i.an = fmul float %i.am, %i.am
  %i.ao = fadd float %.sroa.0.018.i.i.i.i.epil, %i.an ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !1797

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.c
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.c ], [ %i.ai, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.i.i.i.i.epil ] ; 2 uses
  %i.ap = lshr i64 %1, 4                          ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.aq = extractelement <16 x float> %i.ce, i64 0
  %i.ar = extractelement <16 x float> %i.ce, i64 1
  %i.as = fadd float %i.aq, %i.ar
  %i.at = extractelement <16 x float> %i.ce, i64 2
  %i.au = fadd float %i.as, %i.at
  %i.av = extractelement <16 x float> %i.ce, i64 3
  %i.aw = fadd float %i.au, %i.av
  %i.ax = extractelement <16 x float> %i.ce, i64 4
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = extractelement <16 x float> %i.ce, i64 5
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = extractelement <16 x float> %i.ce, i64 6
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = extractelement <16 x float> %i.ce, i64 7
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = extractelement <16 x float> %i.ce, i64 8
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = extractelement <16 x float> %i.ce, i64 9
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = extractelement <16 x float> %i.ce, i64 10
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = extractelement <16 x float> %i.ce, i64 11
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = extractelement <16 x float> %i.ce, i64 12
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = extractelement <16 x float> %i.ce, i64 13
  %i.bq = fadd float %i.bo, %i.bp
  %i.br = extractelement <16 x float> %i.ce, i64 14
  %i.bs = fadd float %i.bq, %i.br
  %i.bt = extractelement <16 x float> %i.ce, i64 15
  %4 = fadd float %i.bs, %i.bt
  %i.bu = fadd float %.sroa.0.0, %4
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit
  %i.bv = phi float [ %.sroa.0.0, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit ], [ %i.bu, %.preheader.loopexit ]
  ret float %i.bv

.lr.ph:                                           ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit, %.lr.ph
  %.sroa.16.062 = phi i64 [ %i.cf, %.lr.ph ], [ 0, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit ] ; 2 uses
  %i.bw = phi <16 x float> [ %i.ce, %.lr.ph ], [ zeroinitializer, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarffKj10_E0EEB2q_.exit ]
  %i.bx = shl nuw nsw i64 %.sroa.16.062, 4        ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bx
  %i.ca = load <16 x float>, ptr %i.by, align 4
  %i.cb = load <16 x float>, ptr %i.bz, align 4
  %i.cc = fsub <16 x float> %i.ca, %i.cb          ; 2 uses
  %i.cd = fmul <16 x float> %i.cc, %i.cc
  %i.ce = fadd <16 x float> %i.bw, %i.cd          ; 17 uses
  %i.cf = add nuw nsw i64 %.sroa.16.062, 1        ; 2 uses
  %exitcond.not = icmp eq i64 %i.cf, %i.ap
  br i1 %exitcond.not, label %.preheader.loopexit, label %.lr.ph
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_EB6_(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %3, 15                           ; 2 uses
  %i.b = and i64 %3, 2305843009213693936
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.b ; 5 uses
  %i.d = and i64 %1, 2305843009213693936
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.d ; 5 uses
  %i.f = icmp eq i64 %i.a, 0
  br i1 %i.f, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx = and i64 %1, 15                          ; 2 uses
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.idx, i64 %i.a) ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %.idx, 0
  br i1 %.not.i.i.i.i, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %xtraiter = and i64 %.sroa.0.0.i.i.i, 3         ; 3 uses
  %i.g = icmp samesign ult i64 %.sroa.0.0.i.i.i, 4
  br i1 %i.g, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %.sroa.0.0.i.i.i, 12
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.018.i.i.i.i = phi float [ -0.000000e+00, %.lr.ph.i.i.i.i.preheader.new ], [ %i.aa, %.lr.ph.i.i.i.i ]
  %.sroa.02.017.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %i.w, %.lr.ph.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i ]
  %i.h = or disjoint i64 %.sroa.02.017.i.i.i.i, 1 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.02.017.i.i.i.i
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.02.017.i.i.i.i
  %.val15.i.i.i.i = load float, ptr %i.i, align 4, !noalias !1808, !noundef !18
  %.val16.i.i.i.i = load float, ptr %i.j, align 4, !noalias !1808, !noundef !18
  %i.k = fmul float %.val15.i.i.i.i, %.val16.i.i.i.i
  %i.l = fadd float %.sroa.0.018.i.i.i.i, %i.k
  %i.m = or disjoint i64 %.sroa.02.017.i.i.i.i, 2 ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.h
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.h
  %.val15.i.i.i.i.1 = load float, ptr %i.n, align 4, !noalias !1808, !noundef !18
  %.val16.i.i.i.i.1 = load float, ptr %i.o, align 4, !noalias !1808, !noundef !18
  %i.p = fmul float %.val15.i.i.i.i.1, %.val16.i.i.i.i.1
  %i.q = fadd float %i.l, %i.p
  %i.r = or disjoint i64 %.sroa.02.017.i.i.i.i, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.m
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.m
  %.val15.i.i.i.i.2 = load float, ptr %i.s, align 4, !noalias !1808, !noundef !18
  %.val16.i.i.i.i.2 = load float, ptr %i.t, align 4, !noalias !1808, !noundef !18
  %i.u = fmul float %.val15.i.i.i.i.2, %.val16.i.i.i.i.2
  %i.v = fadd float %i.q, %i.u
  %i.w = add nuw nsw i64 %.sroa.02.017.i.i.i.i, 4 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.r
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.r
  %.val15.i.i.i.i.3 = load float, ptr %i.x, align 4, !noalias !1808, !noundef !18
  %.val16.i.i.i.i.3 = load float, ptr %i.y, align 4, !noalias !1808, !noundef !18
  %i.z = fmul float %.val15.i.i.i.i.3, %.val16.i.i.i.i.3
  %i.aa = fadd float %i.v, %i.z                   ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.018.i.i.i.i.epil.init = phi float [ -0.000000e+00, %.lr.ph.i.i.i.i.preheader ], [ %i.aa, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa ]
  %.sroa.02.017.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.w, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa ]
  %lcmp.mod91 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.018.i.i.i.i.epil = phi float [ %i.af, %.lr.ph.i.i.i.i.epil ], [ %.sroa.0.018.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ]
  %.sroa.02.017.i.i.i.i.epil = phi i64 [ %i.ab, %.lr.ph.i.i.i.i.epil ], [ %.sroa.02.017.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ab = add nuw nsw i64 %.sroa.02.017.i.i.i.i.epil, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.sroa.02.017.i.i.i.i.epil
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.sroa.02.017.i.i.i.i.epil
  %.val15.i.i.i.i.epil = load float, ptr %i.ac, align 4, !noalias !1808, !noundef !18
  %.val16.i.i.i.i.epil = load float, ptr %i.ad, align 4, !noalias !1808, !noundef !18
  %i.ae = fmul float %.val15.i.i.i.i.epil, %.val16.i.i.i.i.epil
  %i.af = fadd float %.sroa.0.018.i.i.i.i.epil, %i.ae ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit, label %.lr.ph.i.i.i.i.epil, !llvm.loop !1807

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.b, %bb.a
  %.sroa.0.0 = phi float [ 0.000000e+00, %bb.a ], [ -0.000000e+00, %bb.b ], [ %i.aa, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit.loopexit.unr-lcssa ], [ %i.af, %.lr.ph.i.i.i.i.epil ]
  %i.ag = lshr i64 %3, 4
  %i.ah = lshr i64 %1, 4
  %.sroa.0.0.i.i.i10 = tail call noundef i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ag) ; 5 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.i10, 0
  br i1 %.not, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit
  %xtraiter92 = and i64 %.sroa.0.0.i.i.i10, 1
  %i.ai = icmp eq i64 %.sroa.0.0.i.i.i10, 1
  br i1 %i.ai, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter97 = and i64 %.sroa.0.0.i.i.i10, 144115188075855870
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %lcmp.mod94.not = icmp eq i64 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %.preheader.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %.sroa.16.054.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.cn, %.preheader.loopexit.unr-lcssa ]
  %.epil.init = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.cm, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod96 = trunc i64 %.sroa.0.0.i.i.i10 to i1
  tail call void @llvm.assume(i1 %lcmp.mod96)
  %i.aj = shl nuw nsw i64 %.sroa.16.054.epil.init, 4 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aj
  %i.am = load <16 x float>, ptr %i.ak, align 4
  %i.an = load <16 x float>, ptr %i.al, align 4
  %i.ao = fmul <16 x float> %i.am, %i.an
  %i.ap = fadd <16 x float> %i.ao, %.epil.init
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi <16 x float> [ %i.cm, %.preheader.loopexit.unr-lcssa ], [ %i.ap, %.lr.ph.epil.preheader ] ; 16 uses
  %i.aq = extractelement <16 x float> %.lcssa, i64 0
  %i.ar = extractelement <16 x float> %.lcssa, i64 1
  %i.as = fadd float %i.aq, %i.ar
  %i.at = extractelement <16 x float> %.lcssa, i64 2
  %i.au = fadd float %i.as, %i.at
  %i.av = extractelement <16 x float> %.lcssa, i64 3
  %i.aw = fadd float %i.au, %i.av
  %i.ax = extractelement <16 x float> %.lcssa, i64 4
  %i.ay = fadd float %i.aw, %i.ax
  %i.az = extractelement <16 x float> %.lcssa, i64 5
  %i.ba = fadd float %i.ay, %i.az
  %i.bb = extractelement <16 x float> %.lcssa, i64 6
  %i.bc = fadd float %i.ba, %i.bb
  %i.bd = extractelement <16 x float> %.lcssa, i64 7
  %i.be = fadd float %i.bc, %i.bd
  %i.bf = extractelement <16 x float> %.lcssa, i64 8
  %i.bg = fadd float %i.be, %i.bf
  %i.bh = extractelement <16 x float> %.lcssa, i64 9
  %i.bi = fadd float %i.bg, %i.bh
  %i.bj = extractelement <16 x float> %.lcssa, i64 10
  %i.bk = fadd float %i.bi, %i.bj
  %i.bl = extractelement <16 x float> %.lcssa, i64 11
  %i.bm = fadd float %i.bk, %i.bl
  %i.bn = extractelement <16 x float> %.lcssa, i64 12
  %i.bo = fadd float %i.bm, %i.bn
  %i.bp = extractelement <16 x float> %.lcssa, i64 13
  %i.bq = fadd float %i.bo, %i.bp
  %i.br = extractelement <16 x float> %.lcssa, i64 14
  %i.bs = fadd float %i.bq, %i.br
  %i.bt = extractelement <16 x float> %.lcssa, i64 15
  %i.bu = fadd float %i.bs, %i.bt
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit
  %i.bv = phi float [ 0.000000e+00, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterfEB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_E0EEB2q_.exit ], [ %i.bu, %.preheader.loopexit ]
  %i.bw = fadd float %.sroa.0.0, %i.bv
  ret float %i.bw

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.sroa.16.054 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.cn, %.lr.ph ] ; 3 uses
  %i.bx = phi <16 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.cm, %.lr.ph ]
  %niter98 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter98.next.1, %.lr.ph ]
  %i.by = shl nuw nsw i64 %.sroa.16.054, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.by
  %i.cb = load <16 x float>, ptr %i.bz, align 4
  %i.cc = load <16 x float>, ptr %i.ca, align 4
  %i.cd = fmul <16 x float> %i.cb, %i.cc
  %i.ce = fadd <16 x float> %i.cd, %i.bx
  %i.cf = shl i64 %.sroa.16.054, 4
  %i.cg = or disjoint i64 %i.cf, 16               ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cg
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cg
  %i.cj = load <16 x float>, ptr %i.ch, align 4
  %i.ck = load <16 x float>, ptr %i.ci, align 4
  %i.cl = fmul <16 x float> %i.cj, %i.ck
  %i.cm = fadd <16 x float> %i.cl, %i.ce          ; 3 uses
  %i.cn = add nuw nsw i64 %.sroa.16.054, 2        ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsl:bb.a
  %unroll_iter = and i64 %i.i, -4
  %i.ou = and i32 %i.h, 3
  %lcmp.mod.not = icmp eq i32 %i.ou, 0
  %i.ov = and i32 %i.h, 3
  %lcmp.mod160 = icmp ne i32 %i.ov, 0
  br label %.preheader.i.i.preheader.i.i.i.i.i.i54

.preheader.i.i.preheader.i.i.i.i.i.i54:           ; preds = %.preheader.i.i.preheader.i.i.i.i.i.i54.preheader, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i
  %i.ow = phi i64 [ %i.px, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i54.preheader ] ; 2 uses
  %i.ox = phi i64 [ %i.pu, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.ok, %.preheader.i.i.preheader.i.i.i.i.i.i54.preheader ]
  %i.oy = phi ptr [ %i.pt, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.od, %.preheader.i.i.preheader.i.i.i.i.i.i54.preheader ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7394)
  br i1 %i.ot, label %.preheader.i.i.i.i.i.i.i.i55.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i55

.preheader.i.i.i.i.i.i.i.i55:                     ; preds = %.preheader.i.i.preheader.i.i.i.i.i.i54, %.preheader.i.i.i.i.i.i.i.i55
  %.sroa.04.0.i.i.i.i.i.i.i.i.i56 = phi i64 [ %i.po, %.preheader.i.i.i.i.i.i.i.i55 ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i54 ] ; 5 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i57 = phi double [ %i.pn, %.preheader.i.i.i.i.i.i.i.i55 ], [ -0.000000e+00, %.preheader.i.i.preheader.i.i.i.i.i.i54 ]
  %niter = phi i64 [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i55 ], [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i54 ]
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56
  %.val.i.i.i.i.i.i.i.i.i58 = load double, ptr %i.oz, align 8, !alias.scope !7395, !noalias !7396, !noundef !18 ; 2 uses
  %i.pa = fmul double %.val.i.i.i.i.i.i.i.i.i58, %.val.i.i.i.i.i.i.i.i.i58
  %i.pb = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i57, %i.pa
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 8
  %.val.i.i.i.i.i.i.i.i.i58.1 = load double, ptr %i.pd, align 8, !alias.scope !7395, !noalias !7396, !noundef !18 ; 2 uses
  %i.pe = fmul double %.val.i.i.i.i.i.i.i.i.i58.1, %.val.i.i.i.i.i.i.i.i.i58.1
  %i.pf = fadd double %i.pb, %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %.val.i.i.i.i.i.i.i.i.i58.2 = load double, ptr %i.ph, align 8, !alias.scope !7395, !noalias !7396, !noundef !18 ; 2 uses
  %i.pi = fmul double %.val.i.i.i.i.i.i.i.i.i58.2, %.val.i.i.i.i.i.i.i.i.i58.2
  %i.pj = fadd double %i.pf, %i.pi
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 24
  %.val.i.i.i.i.i.i.i.i.i58.3 = load double, ptr %i.pl, align 8, !alias.scope !7395, !noalias !7396, !noundef !18 ; 2 uses
  %i.pm = fmul double %.val.i.i.i.i.i.i.i.i.i58.3, %.val.i.i.i.i.i.i.i.i.i58.3
  %i.pn = fadd double %i.pj, %i.pm                ; 3 uses
  %i.po = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i55

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i55
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i55.epil.preheader

.preheader.i.i.i.i.i.i.i.i55.epil.preheader:      ; preds = %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa, %.preheader.i.i.preheader.i.i.i.i.i.i54
  %.sroa.04.0.i.i.i.i.i.i.i.i.i56.epil.init = phi i64 [ 0, %.preheader.i.i.preheader.i.i.i.i.i.i54 ], [ %i.po, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.i.i.i57.epil.init = phi double [ -0.000000e+00, %.preheader.i.i.preheader.i.i.i.i.i.i54 ], [ %i.pn, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod160)
  br label %.preheader.i.i.i.i.i.i.i.i55.epil

.preheader.i.i.i.i.i.i.i.i55.epil:                ; preds = %.preheader.i.i.i.i.i.i.i.i55.epil, %.preheader.i.i.i.i.i.i.i.i55.epil.preheader
  %.sroa.04.0.i.i.i.i.i.i.i.i.i56.epil = phi i64 [ %i.ps, %.preheader.i.i.i.i.i.i.i.i55.epil ], [ %.sroa.04.0.i.i.i.i.i.i.i.i.i56.epil.init, %.preheader.i.i.i.i.i.i.i.i55.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.i.i.i.i.i57.epil = phi double [ %i.pr, %.preheader.i.i.i.i.i.i.i.i55.epil ], [ %.sroa.02.0.i.i.i.i.i.i.i.i.i57.epil.init, %.preheader.i.i.i.i.i.i.i.i55.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i55.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i55.epil.preheader ]
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56.epil
  %.val.i.i.i.i.i.i.i.i.i58.epil = load double, ptr %i.pp, align 8, !alias.scope !7395, !noalias !7396, !noundef !18 ; 2 uses
  %i.pq = fmul double %.val.i.i.i.i.i.i.i.i.i58.epil, %.val.i.i.i.i.i.i.i.i.i58.epil
  %i.pr = fadd double %.sroa.02.0.i.i.i.i.i.i.i.i.i57.epil, %i.pq ; 2 uses
  %i.ps = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i56.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i.i.i55.epil, !llvm.loop !7370

_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.preheader.i.i.i.i.i.i.i.i55.epil, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa
  %.lcssa157 = phi double [ %i.pn, %_RINvXs2J_NtNtCscI6d9CVNmLh_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folddNCINvNtNtBY_8adapters3map8map_foldRdddNCNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l216norm_squared_fsls0_00NCINvXs26_NtBW_5accumdNtB3F_3Sum3sumINtB1I_3MapBF_B2f_EE0E0EB2p_.exit.loopexit.i.i.i.i.i.i.i.i.unr-lcssa ], [ %i.pr, %.preheader.i.i.i.i.i.i.i.i55.epil ]
  %i.pt = getelementptr inbounds nuw [8 x i8], ptr %i.oy, i64 %i.i
  %i.pu = sub nuw nsw i64 %i.ox, %i.i             ; 2 uses
  %i.pv = fptrunc double %.lcssa157 to float
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i49, i64 %i.ow
  store float %i.pv, ptr %i.pw, align 4, !noalias !7397
  %i.px = add i64 %i.ow, 1                        ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp ult i64 %i.pu, %i.i
  br i1 %.not.i.i.i.i.i.i.i59, label %.loopexit92, label %.preheader.i.i.preheader.i.i.i.i.i.i54

bb.cd:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXNtCs8SUNSmrkv52_12arrow_schema16datatype_displayNtNtB4_8datatype8DataTypeNtNtCscI6d9CVNmLh_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  invoke void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @265, ptr noundef nonnull %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266) #74
          to label %bb.cf unwind label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.py = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCs8SUNSmrkv52_12arrow_schema8datatype8DataTypeECs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %.body unwind label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  unreachable

bb.cg:                                            ; preds = %bb.ce, %.body
  %i.pz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscI6d9CVNmLh_4core9panicking16panic_in_cleanup() #75
  unreachable

bb.ch:                                            ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef float @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l222norm_l2_f32_dispatched(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a, %bb.b
  %i.e = load i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, align 8, !range !42, !noundef !18
  switch i8 %i.e, label %bb.c [
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.e
    i8 6, label %bb.f
    i8 7, label %bb.f
  ]

bb.c:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  %i.f = and i64 %1, 15                           ; 2 uses
  %i.g = and i64 %1, 2305843009213693936          ; 4 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 5 uses
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i, label %.preheader16.i.preheader

.preheader16.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %1, 3                       ; 3 uses
  %i.j = icmp samesign ult i64 %i.f, 4
  br i1 %i.j, label %.preheader16.i.epil.preheader, label %.preheader16.i.preheader.new

.preheader16.i.preheader.new:                     ; preds = %.preheader16.i.preheader
  %unroll_iter = and i64 %1, 12
  br label %.preheader16.i

.preheader16.i:                                   ; preds = %.preheader16.i, %.preheader16.i.preheader.new
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %.preheader16.i.preheader.new ], [ %i.z, %.preheader16.i ] ; 5 uses
  %.sroa.02.0.i.i.i.i = phi float [ -0.000000e+00, %.preheader16.i.preheader.new ], [ %i.y, %.preheader16.i ]
  %niter = phi i64 [ 0, %.preheader16.i.preheader.new ], [ %niter.next.3, %.preheader16.i ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.i
  %.val.i.i.i.i = load float, ptr %i.k, align 4, !alias.scope !7401, !noundef !18 ; 2 uses
  %i.l = fmul float %.val.i.i.i.i, %.val.i.i.i.i
  %i.m = fadd float %.sroa.02.0.i.i.i.i, %i.l
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val.i.i.i.i.1 = load float, ptr %i.o, align 4, !alias.scope !7401, !noundef !18 ; 2 uses
  %i.p = fmul float %.val.i.i.i.i.1, %.val.i.i.i.i.1
  %i.q = fadd float %i.m, %i.p
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.val.i.i.i.i.2 = load float, ptr %i.s, align 4, !alias.scope !7401, !noundef !18 ; 2 uses
  %i.t = fmul float %.val.i.i.i.i.2, %.val.i.i.i.i.2
  %i.u = fadd float %i.q, %i.t
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %.val.i.i.i.i.3 = load float, ptr %i.w, align 4, !alias.scope !7401, !noundef !18 ; 2 uses
  %i.x = fmul float %.val.i.i.i.i.3, %.val.i.i.i.i.3
  %i.y = fadd float %i.u, %i.x                    ; 3 uses
  %i.z = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 4   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa, label %.preheader16.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa: ; preds = %.preheader16.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i, label %.preheader16.i.epil.preheader

.preheader16.i.epil.preheader:                    ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa, %.preheader16.i.preheader
  %.sroa.04.0.i.i.i.i.epil.init = phi i64 [ 0, %.preheader16.i.preheader ], [ %i.z, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.epil.init = phi float [ -0.000000e+00, %.preheader16.i.preheader ], [ %i.y, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod68 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod68)
  br label %.preheader16.i.epil

.preheader16.i.epil:                              ; preds = %.preheader16.i.epil, %.preheader16.i.epil.preheader
  %.sroa.04.0.i.i.i.i.epil = phi i64 [ %i.ad, %.preheader16.i.epil ], [ %.sroa.04.0.i.i.i.i.epil.init, %.preheader16.i.epil.preheader ] ; 2 uses
  %.sroa.02.0.i.i.i.i.epil = phi float [ %i.ac, %.preheader16.i.epil ], [ %.sroa.02.0.i.i.i.i.epil.init, %.preheader16.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader16.i.epil ], [ 0, %.preheader16.i.epil.preheader ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.i.epil
  %.val.i.i.i.i.epil = load float, ptr %i.aa, align 4, !alias.scope !7401, !noundef !18 ; 2 uses
  %i.ab = fmul float %.val.i.i.i.i.epil, %.val.i.i.i.i.epil
  %i.ac = fadd float %.sroa.02.0.i.i.i.i.epil, %i.ab ; 2 uses
  %i.ad = add nuw nsw i64 %.sroa.04.0.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i, label %.preheader16.i.epil, !llvm.loop !7400

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa, %.preheader16.i.epil, %bb.c
  %.sroa.0.0.i = phi float [ 0.000000e+00, %bb.c ], [ %i.y, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i.loopexit.unr-lcssa ], [ %i.ac, %.preheader16.i.epil ] ; 2 uses
  %.not19.i = icmp eq i64 %i.g, 0
  br i1 %.not19.i, label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_EB6_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i
  %i.ae = add nsw i64 %1, -16                     ; 2 uses
  %i.af = and i64 %i.ae, 16
  %lcmp.mod70.not.not = icmp eq i64 %i.af, 0
  br i1 %lcmp.mod70.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.ag = load <16 x float>, ptr %0, align 4, !alias.scope !7401 ; 2 uses
  %i.ah = fmul <16 x float> %i.ag, %i.ag          ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aj = add nsw i64 %i.g, -16
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi <16 x float> [ poison, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %.sroa.01.021.i.unr = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.ai, %.lr.ph.i.prol ]
  %.sroa.5.020.i.unr = phi i64 [ %i.g, %.lr.ph.i.preheader ], [ %i.aj, %.lr.ph.i.prol ]
  %.unr = phi <16 x float> [ zeroinitializer, %.lr.ph.i.preheader ], [ %i.ah, %.lr.ph.i.prol ]
  %i.ak = icmp ult i64 %i.ae, 16
  br i1 %i.ak, label %.preheader.loopexit.i, label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.lcssa = phi <16 x float> [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.bx, %.lr.ph.i ] ; 16 uses
  %i.al = extractelement <16 x float> %.lcssa, i64 0
  %i.am = extractelement <16 x float> %.lcssa, i64 1
  %i.an = fadd float %i.al, %i.am
  %i.ao = extractelement <16 x float> %.lcssa, i64 2
  %i.ap = fadd float %i.an, %i.ao
  %i.aq = extractelement <16 x float> %.lcssa, i64 3
  %i.ar = fadd float %i.ap, %i.aq
  %i.as = extractelement <16 x float> %.lcssa, i64 4
  %i.at = fadd float %i.ar, %i.as
  %i.au = extractelement <16 x float> %.lcssa, i64 5
  %i.av = fadd float %i.at, %i.au
  %i.aw = extractelement <16 x float> %.lcssa, i64 6
  %i.ax = fadd float %i.av, %i.aw
  %i.ay = extractelement <16 x float> %.lcssa, i64 7
  %i.az = fadd float %i.ax, %i.ay
  %i.ba = extractelement <16 x float> %.lcssa, i64 8
  %i.bb = fadd float %i.az, %i.ba
  %i.bc = extractelement <16 x float> %.lcssa, i64 9
  %i.bd = fadd float %i.bb, %i.bc
  %i.be = extractelement <16 x float> %.lcssa, i64 10
  %i.bf = fadd float %i.bd, %i.be
  %i.bg = extractelement <16 x float> %.lcssa, i64 11
  %i.bh = fadd float %i.bf, %i.bg
  %i.bi = extractelement <16 x float> %.lcssa, i64 12
  %i.bj = fadd float %i.bh, %i.bi
  %i.bk = extractelement <16 x float> %.lcssa, i64 13
  %i.bl = fadd float %i.bj, %i.bk
  %i.bm = extractelement <16 x float> %.lcssa, i64 14
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = extractelement <16 x float> %.lcssa, i64 15
  %2 = fadd float %i.bn, %i.bo
  %i.bp = fadd float %.sroa.0.0.i, %2
  br label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_EB6_.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.01.021.i = phi ptr [ %i.by, %.lr.ph.i ], [ %.sroa.01.021.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.5.020.i = phi i64 [ %i.bz, %.lr.ph.i ], [ %.sroa.5.020.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.bq = phi <16 x float> [ %i.bx, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ]
  %i.br = load <16 x float>, ptr %.sroa.01.021.i, align 4, !alias.scope !7401 ; 2 uses
  %i.bs = fmul <16 x float> %i.br, %i.br
  %i.bt = fadd <16 x float> %i.bq, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 64
  %i.bv = load <16 x float>, ptr %i.bu, align 4, !alias.scope !7401 ; 2 uses
  %i.bw = fmul <16 x float> %i.bv, %i.bv
  %i.bx = fadd <16 x float> %i.bt, %i.bw          ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 128
  %i.bz = add i64 %.sroa.5.020.i, -32             ; 2 uses
  %.not.i.1 = icmp eq i64 %i.bz, 0
  br i1 %.not.i.1, label %.preheader.loopexit.i, label %.lr.ph.i

_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_EB6_.exit: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i, %.preheader.loopexit.i
  %i.ca = phi float [ %.sroa.0.0.i, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterfENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_E0EEB24_.exit.i ], [ %i.bp, %.preheader.loopexit.i ]
  %i.cb = call noundef float @llvm.sqrt.f32(float %i.ca)
  br label %bb.g

bb.d:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  %i.cc = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8615norm_l2_f32_avx(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.g

bb.e:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  %i.cd = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8619norm_l2_f32_avx_fma(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.g

bb.f:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  %i.ce = call noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l23x8618norm_l2_f32_avx512(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_EB6_.exit
  %.sroa.0.0 = phi float [ %i.cb, %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implffKj10_EB6_.exit ], [ %i.cc, %bb.d ], [ %i.cd, %bb.e ], [ %i.ce, %bb.f ]
  ret float %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u814select_backend() unnamed_addr #2 {
bb.a:
  %i.a = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %.split, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit, !prof !23

.split:                                           ; preds = %bb.a
  %i.c = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.d = and i128 %i.c, 524288
  %.not9 = icmp eq i128 %i.d, 0
  br i1 %.not9, label %bb.b, label %bb.e

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit: ; preds = %bb.a
  %i.e = and i64 %i.a, 524288
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.split8, %.split7, %.split, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit6, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit
  %i.f = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.d, !prof !23

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.i = and i128 %i.h, 32768
  %i.j = icmp ne i128 %i.i, 0
  br label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2

bb.d:                                             ; preds = %bb.b
  %i.k = and i64 %i.f, 32768
  %i.l = icmp ne i64 %i.k, 0
  br label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2: ; preds = %bb.c, %bb.d
  %.sroa.0.0.in.i1 = phi i1 [ %i.j, %bb.c ], [ %i.l, %bb.d ]
  %_RNvYNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u814select_backends_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRShB1Z_EE9call_onceBa_._RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u822cosine_u8_accum_scalar = select i1 %.sroa.0.0.in.i1, ptr @_RNvYNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u814select_backends_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRShB1Z_EE9call_onceBa_, ptr @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u822cosine_u8_accum_scalar
  br label %bb.g

bb.e:                                             ; preds = %.split, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit
  %i.m = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.split7, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4, !prof !23

.split7:                                          ; preds = %bb.e
  %i.o = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.p = and i128 %i.o, 8388608
  %.not11 = icmp eq i128 %i.p, 0
  br i1 %.not11, label %bb.b, label %bb.f

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4: ; preds = %bb.e
  %i.q = and i64 %i.m, 8388608
  %.not10 = icmp eq i64 %i.q, 0
  br i1 %.not10, label %bb.b, label %bb.f

bb.f:                                             ; preds = %.split7, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit4
  %i.r = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %.split8, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit6, !prof !23

.split8:                                          ; preds = %bb.f
  %i.t = tail call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize()
  %i.u = and i128 %i.t, 8589934592
  %.not13 = icmp eq i128 %i.u, 0
  br i1 %.not13, label %bb.b, label %bb.g

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit6: ; preds = %bb.f
  %i.v = and i64 %i.r, 8589934592
  %.not12 = icmp eq i64 %i.v, 0
  br i1 %.not12, label %bb.b, label %bb.g

bb.g:                                             ; preds = %.split8, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit6, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2
  %.sroa.0.0 = phi ptr [ %_RNvYNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u814select_backends_0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRShB1Z_EE9call_onceBa_._RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u822cosine_u8_accum_scalar, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit2 ], [ @_RNvYNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u814select_backend0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRShB1X_EE9call_onceBa_, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit6 ], [ @_RNvYNCNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u814select_backend0INtNtNtCscI6d9CVNmLh_4core3ops8function6FnOnceTRShB1X_EE9call_onceBa_, %.split8 ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal void @_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance9cosine_u822cosine_u8_accum_scalar(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([12 x i8]) align 4 captures(none) dereferenceable(12) %0, ptr noalias noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef nonnull readonly captures(none) %3, i64 noundef range(i64 0, -9223372036854775808) %4) unnamed_addr #23 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %2) ; 5 uses
  %.not = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %.sroa.0.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.preheader40, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %.sroa.0.0.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %vec.phi28 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi29 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %vec.phi30 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.p, %vector.body ]
  %vec.phi31 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi32 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 %index ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.load = load <4 x i8>, ptr %i.a, align 1
  %wide.load33 = load <4 x i8>, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %wide.load34 = load <4 x i8>, ptr %i.b, align 1
  %wide.load35 = load <4 x i8>, ptr %i.d, align 1
  %i.e = zext <4 x i8> %wide.load to <4 x i32>    ; 3 uses
  %i.f = zext <4 x i8> %wide.load33 to <4 x i32>  ; 3 uses
  %i.g = zext <4 x i8> %wide.load34 to <4 x i32>  ; 3 uses
  %i.h = zext <4 x i8> %wide.load35 to <4 x i32>  ; 3 uses
  %i.i = mul nuw nsw <4 x i32> %i.g, %i.e
  %i.j = mul nuw nsw <4 x i32> %i.h, %i.f
  %i.k = add <4 x i32> %i.i, %vec.phi             ; 2 uses
  %i.l = add <4 x i32> %i.j, %vec.phi28           ; 2 uses
  %i.m = mul nuw nsw <4 x i32> %i.e, %i.e
  %i.n = mul nuw nsw <4 x i32> %i.f, %i.f
  %i.o = add <4 x i32> %i.m, %vec.phi29           ; 2 uses
  %i.p = add <4 x i32> %i.n, %vec.phi30           ; 2 uses
  %i.q = mul nuw nsw <4 x i32> %i.g, %i.g
  %i.r = mul nuw nsw <4 x i32> %i.h, %i.h
  %i.s = add <4 x i32> %i.q, %vec.phi31           ; 2 uses
  %i.t = add <4 x i32> %i.r, %vec.phi32           ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !7402

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.l, %i.k
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %bin.rdx36 = add <4 x i32> %i.p, %i.o
  %i.w = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx36) ; 2 uses
  %bin.rdx37 = add <4 x i32> %i.t, %i.s
  %i.x = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx37) ; 2 uses
  %cmp.n = icmp eq i64 %.sroa.0.0.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader40

.lr.ph.preheader40:                               ; preds = %.lr.ph.preheader, %middle.block
  %.sroa.0.019.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.v, %middle.block ]
  %.sroa.02.018.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.w, %middle.block ]
  %.sroa.04.017.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.sroa.8.016.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader40, %.lr.ph
  %.sroa.0.019 = phi i32 [ %i.ag, %.lr.ph ], [ %.sroa.0.019.ph, %.lr.ph.preheader40 ]
  %.sroa.02.018 = phi i32 [ %i.ai, %.lr.ph ], [ %.sroa.02.018.ph, %.lr.ph.preheader40 ]
  %.sroa.04.017 = phi i32 [ %i.ak, %.lr.ph ], [ %.sroa.04.017.ph, %.lr.ph.preheader40 ]
  %.sroa.8.016 = phi i64 [ %i.y, %.lr.ph ], [ %.sroa.8.016.ph, %.lr.ph.preheader40 ] ; 3 uses
  %i.y = add nuw nsw i64 %.sroa.8.016, 1          ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.8.016
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 %.sroa.8.016
  %i.ab = load i8, ptr %i.z, align 1, !noundef !18
  %i.ac = load i8, ptr %i.aa, align 1, !noundef !18
  %i.ad = zext i8 %i.ab to i32                    ; 3 uses
  %i.ae = zext i8 %i.ac to i32                    ; 3 uses
  %i.af = mul nuw nsw i32 %i.ae, %i.ad
  %i.ag = add i32 %i.af, %.sroa.0.019             ; 2 uses
  %i.ah = mul nuw nsw i32 %i.ad, %i.ad
  %i.ai = add i32 %i.ah, %.sroa.02.018            ; 2 uses
  %i.aj = mul nuw nsw i32 %i.ae, %i.ae
  %i.ak = add i32 %i.aj, %.sroa.04.017            ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %.sroa.0.0.i.i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !7403

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.sroa.04.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.x, %middle.block ], [ %i.ak, %.lr.ph ]
  %.sroa.02.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.w, %middle.block ], [ %i.ai, %.lr.ph ]
  %.sroa.0.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.v, %middle.block ], [ %i.ag, %.lr.ph ]
  store i32 %.sroa.0.0.lcssa, ptr %0, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.02.0.lcssa, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.04.0.lcssa, ptr %i.am, align 4
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %0) unnamed_addr #24 {
bb.a:
  %i.a = bitcast i16 %0 to half
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance2l2NtNtCs2k6O4uMwKJm_4half8binary163f16NtB5_2L22l2:bb.a
  %i.k = and i64 %1, 15                           ; 2 uses
  %i.l = and i64 %1, 4611686018427387888          ; 2 uses
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.l
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.l
  %i.o = icmp eq i64 %i.k, 0
  br i1 %i.o, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.e, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i
  %.sroa.0.017.i.i.i.i.i = phi float [ %i.cw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i ], [ -0.000000e+00, %bb.e ]
  %.sroa.02.016.i.i.i.i.i = phi i64 [ %i.p, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.p = add nuw nsw i64 %.sroa.02.016.i.i.i.i.i, 1 ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.sroa.02.016.i.i.i.i.i
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.n, i64 %.sroa.02.016.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !8183)
  call void @llvm.experimental.noalias.scope.decl(metadata !8184)
  call void @llvm.experimental.noalias.scope.decl(metadata !8185)
  call void @llvm.experimental.noalias.scope.decl(metadata !8186)
  %i.s = load i16, ptr %i.q, align 2, !alias.scope !8187, !noalias !8188, !noundef !18 ; 6 uses
  %i.t = load i16, ptr %i.r, align 2, !alias.scope !8189, !noalias !8188, !noundef !18 ; 6 uses
  %i.u = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !8190 ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.split.i.i.i.i.i.i.i.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i.i, !prof !23

.split.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i
  %i.w = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !8190
  %i.x = and i128 %i.w, 36028797018963968
  %.not1.i.i.i.i.i.i.i.i = icmp eq i128 %i.x, 0
  br i1 %.not1.i.i.i.i.i.i.i.i, label %bb.f, label %bb.o

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.y = and i64 %i.u, 36028797018963968
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  %i.z = and i16 %i.s, 32767
  %i.aa = icmp eq i16 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = zext i16 %i.s to i32
  %i.ac = shl nuw i32 %i.ab, 16
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ad = and i16 %i.s, -32768
  %i.ae = zext i16 %i.ad to i32                   ; 2 uses
  %i.af = and i16 %i.s, 31744                     ; 3 uses
  %i.ag = and i16 %i.s, 1023                      ; 3 uses
  %i.ah = zext nneg i16 %i.ag to i32              ; 3 uses
  %i.ai = icmp eq i16 %i.af, 31744
  br i1 %i.ai, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i16 %i.ag, 0
  %i.ak = shl nuw i32 %i.ae, 16                   ; 2 uses
  br i1 %i.aj, label %bb.k, label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.al = shl nuw i32 %i.ae, 16                   ; 2 uses
  %i.am = icmp eq i16 %i.af, 0
  br i1 %i.am, label %bb.m, label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.an = or disjoint i32 %i.ak, 2139095040
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.i
  %i.ao = shl nuw nsw i32 %i.ah, 13
  %i.ap = or disjoint i32 %i.ak, %i.ao
  %i.aq = or i32 %i.ap, 2143289344
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.j
  %i.ar = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.ag, i1 false)
  %i.as = zext nneg i16 %i.ar to i32              ; 2 uses
  %i.at = add nuw nsw i32 %i.as, 8
  %i.au = shl i32 %i.ah, %i.at
  %i.av = and i32 %i.au, 8388607
  %reass.sub.i.i.i.i.i.i.i.i.i = or disjoint i32 %i.al, 989855744
  %i.aw = shl nuw nsw i32 %i.as, 23
  %i.ax = sub nuw nsw i32 %reass.sub.i.i.i.i.i.i.i.i.i, %i.aw
  %i.ay = or disjoint i32 %i.av, %i.ax
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.j
  %i.az = lshr exact i16 %i.af, 10
  %narrow.i.i.i.i.i.i.i.i.i = add nuw nsw i16 %i.az, 112
  %i.ba = zext nneg i16 %narrow.i.i.i.i.i.i.i.i.i to i32
  %i.bb = shl nuw nsw i32 %i.ba, 23
  %i.bc = shl nuw nsw i32 %i.ah, 13
  %i.bd = or disjoint i32 %i.bb, %i.bc
  %i.be = or disjoint i32 %i.bd, %i.al
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.g
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.ac, %bb.g ], [ %i.an, %bb.k ], [ %i.aq, %bb.l ], [ %i.ay, %bb.m ], [ %i.be, %bb.n ]
  %i.bf = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i.i to float
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i.i
  %i.bg = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.s)
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i.i.i.i.i.i.i

_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i.i.i.i.i.i.i: ; preds = %bb.o, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi float [ %i.bg, %bb.o ], [ %i.bf, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i.i ]
  %i.bh = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !8190 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.split.i8.i.i.i.i.i.i.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i1.i.i.i.i.i.i.i, !prof !23

.split.i8.i.i.i.i.i.i.i:                          ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i.i.i.i.i.i.i
  %i.bj = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !8190
  %i.bk = and i128 %i.bj, 36028797018963968
  %.not1.i9.i.i.i.i.i.i.i = icmp eq i128 %i.bk, 0
  br i1 %.not1.i9.i.i.i.i.i.i.i, label %bb.p, label %bb.y

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i1.i.i.i.i.i.i.i: ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i.i.i.i.i.i.i
  %i.bl = and i64 %i.bh, 36028797018963968
  %.not.i2.i.i.i.i.i.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not.i2.i.i.i.i.i.i.i, label %bb.p, label %bb.y

bb.p:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i1.i.i.i.i.i.i.i, %.split.i8.i.i.i.i.i.i.i
  %i.bm = and i16 %i.t, 32767
  %i.bn = icmp eq i16 %i.bm, 0
  br i1 %i.bn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bo = zext i16 %i.t to i32
  %i.bp = shl nuw i32 %i.bo, 16
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bq = and i16 %i.t, -32768
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %i.bs = and i16 %i.t, 31744                     ; 3 uses
  %i.bt = and i16 %i.t, 1023                      ; 3 uses
  %i.bu = zext nneg i16 %i.bt to i32              ; 3 uses
  %i.bv = icmp eq i16 %i.bs, 31744
  br i1 %i.bv, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bw = icmp eq i16 %i.bt, 0
  %i.bx = shl nuw i32 %i.br, 16                   ; 2 uses
  br i1 %i.bw, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.by = shl nuw i32 %i.br, 16                   ; 2 uses
  %i.bz = icmp eq i16 %i.bs, 0
  br i1 %i.bz, label %bb.w, label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.ca = or disjoint i32 %i.bx, 2139095040
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i

bb.v:                                             ; preds = %bb.s
  %i.cb = shl nuw nsw i32 %i.bu, 13
  %i.cc = or disjoint i32 %i.bx, %i.cb
  %i.cd = or i32 %i.cc, 2143289344
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i

bb.w:                                             ; preds = %bb.t
  %i.ce = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.bt, i1 false)
  %i.cf = zext nneg i16 %i.ce to i32              ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, 8
  %i.ch = shl i32 %i.bu, %i.cg
  %i.ci = and i32 %i.ch, 8388607
  %reass.sub.i.i7.i.i.i.i.i.i.i = or disjoint i32 %i.by, 989855744
  %i.cj = shl nuw nsw i32 %i.cf, 23
  %i.ck = sub nuw nsw i32 %reass.sub.i.i7.i.i.i.i.i.i.i, %i.cj
  %i.cl = or disjoint i32 %i.ci, %i.ck
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.t
  %i.cm = lshr exact i16 %i.bs, 10
  %narrow.i.i4.i.i.i.i.i.i.i = add nuw nsw i16 %i.cm, 112
  %i.cn = zext nneg i16 %narrow.i.i4.i.i.i.i.i.i.i to i32
  %i.co = shl nuw nsw i32 %i.cn, 23
  %i.cp = shl nuw nsw i32 %i.bu, 13
  %i.cq = or disjoint i32 %i.co, %i.cp
  %i.cr = or disjoint i32 %i.cq, %i.by
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.u, %bb.q
  %.sroa.0.0.i.i6.i.i.i.i.i.i.i = phi i32 [ %i.bp, %bb.q ], [ %i.ca, %bb.u ], [ %i.cd, %bb.v ], [ %i.cl, %bb.w ], [ %i.cr, %bb.x ]
  %i.cs = bitcast i32 %.sroa.0.0.i.i6.i.i.i.i.i.i.i to float
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i

bb.y:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i1.i.i.i.i.i.i.i, %.split.i8.i.i.i.i.i.i.i
  %i.ct = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.t)
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i: ; preds = %bb.y, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i
  %.sroa.0.0.i3.i.i.i.i.i.i.i = phi float [ %i.ct, %bb.y ], [ %i.cs, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i5.i.i.i.i.i.i.i ]
  %i.cu = fsub float %.sroa.0.0.i.i.i.i.i.i.i.i, %.sroa.0.0.i3.i.i.i.i.i.i.i ; 2 uses
  %i.cv = fmul float %i.cu, %i.cu
  %i.cw = fadd float %.sroa.0.017.i.i.i.i.i, %i.cv ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.p, %i.k
  br i1 %exitcond.not.i.i.i.i.i, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i, label %.lr.ph.i.i.i.i.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i, %bb.e
  %.sroa.0.0.i = phi float [ 0.000000e+00, %bb.e ], [ %i.cw, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldTRNtNtCs2k6O4uMwKJm_4half8binary163f16BV_EffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarBW_fKj10_E0NCINvXs22_NtNtB8_6traits5accumfNtB2U_3Sum3sumINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB3T_EB1C_EE0E0B1L_.exit.i.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8191
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.a, i8 0, i64 64, i1 false), !noalias !8191
  %i.cx = lshr i64 %1, 4                          ; 2 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarNtNtCs2k6O4uMwKJm_4half8binary163f16fKj10_EB6_.exit, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit31.i
  %i.cy = add nuw nsw i64 %.sroa.16.075.i, 1      ; 2 uses
  %exitcond78.not.i = icmp eq i64 %i.cy, %i.cx
  br i1 %exitcond78.not.i, label %.preheader.loopexit.i, label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.loopexit.i
  %.val.i.i.i.pre.i = load float, ptr %i.a, align 4, !noalias !8191
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val.i.i.i.1.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !noalias !8191
  %.phi.trans.insert81.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.2.pre.i = load float, ptr %.phi.trans.insert81.i, align 4, !noalias !8191
  %.phi.trans.insert83.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.val.i.i.i.3.pre.i = load float, ptr %.phi.trans.insert83.i, align 4, !noalias !8191
  %.phi.trans.insert85.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.4.pre.i = load float, ptr %.phi.trans.insert85.i, align 4, !noalias !8191
  %.phi.trans.insert87.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.val.i.i.i.5.pre.i = load float, ptr %.phi.trans.insert87.i, align 4, !noalias !8191
  %.phi.trans.insert89.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i.i.i.6.pre.i = load float, ptr %.phi.trans.insert89.i, align 4, !noalias !8191
  %.phi.trans.insert91.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.val.i.i.i.7.pre.i = load float, ptr %.phi.trans.insert91.i, align 4, !noalias !8191
  %.phi.trans.insert93.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i.8.pre.i = load float, ptr %.phi.trans.insert93.i, align 4, !noalias !8191
  %.phi.trans.insert95.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.val.i.i.i.9.pre.i = load float, ptr %.phi.trans.insert95.i, align 4, !noalias !8191
  %.phi.trans.insert97.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val.i.i.i.10.pre.i = load float, ptr %.phi.trans.insert97.i, align 4, !noalias !8191
  %.phi.trans.insert99.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.val.i.i.i.11.pre.i = load float, ptr %.phi.trans.insert99.i, align 4, !noalias !8191
  %.phi.trans.insert101.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val.i.i.i.12.pre.i = load float, ptr %.phi.trans.insert101.i, align 4, !noalias !8191
  %.phi.trans.insert103.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.val.i.i.i.13.pre.i = load float, ptr %.phi.trans.insert103.i, align 4, !noalias !8191
  %.phi.trans.insert105.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val.i.i.i.14.pre.i = load float, ptr %.phi.trans.insert105.i, align 4, !noalias !8191
  %.phi.trans.insert107.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.val.i.i.i.15.pre.i = load float, ptr %.phi.trans.insert107.i, align 4, !noalias !8191
  %4 = fadd float %.val.i.i.i.pre.i, %.val.i.i.i.1.pre.i
  %i.cz = fadd float %4, %.val.i.i.i.2.pre.i
  %i.da = fadd float %i.cz, %.val.i.i.i.3.pre.i
  %i.db = fadd float %i.da, %.val.i.i.i.4.pre.i
  %i.dc = fadd float %i.db, %.val.i.i.i.5.pre.i
  %i.dd = fadd float %i.dc, %.val.i.i.i.6.pre.i
  %i.de = fadd float %i.dd, %.val.i.i.i.7.pre.i
  %i.df = fadd float %i.de, %.val.i.i.i.8.pre.i
  %i.dg = fadd float %i.df, %.val.i.i.i.9.pre.i
  %i.dh = fadd float %i.dg, %.val.i.i.i.10.pre.i
  %i.di = fadd float %i.dh, %.val.i.i.i.11.pre.i
  %i.dj = fadd float %i.di, %.val.i.i.i.12.pre.i
  %i.dk = fadd float %i.dj, %.val.i.i.i.13.pre.i
  %i.dl = fadd float %i.dk, %.val.i.i.i.14.pre.i
  %i.dm = fadd float %i.dl, %.val.i.i.i.15.pre.i
  %i.dn = fadd float %.sroa.0.0.i, %i.dm
  br label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarNtNtCs2k6O4uMwKJm_4half8binary163f16fKj10_EB6_.exit

.lr.ph.i:                                         ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i, %.loopexit.i
  %.sroa.16.075.i = phi i64 [ %i.cy, %.loopexit.i ], [ 0, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i ] ; 2 uses
  %i.do = shl nuw nsw i64 %.sroa.16.075.i, 4      ; 2 uses
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.do
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.do
  br label %bb.z

bb.z:                                             ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit31.i, %.lr.ph.i
  %.sroa.012.074.i = phi i64 [ 0, %.lr.ph.i ], [ %i.dr, %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit31.i ] ; 4 uses
  %i.dr = add nuw nsw i64 %.sroa.012.074.i, 1     ; 2 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.dp, i64 %.sroa.012.074.i
  %i.dt = load i16, ptr %i.ds, align 2, !alias.scope !8181, !noundef !18 ; 6 uses
  %i.du = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !8191 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %.split.i.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i, !prof !23

.split.i.i:                                       ; preds = %bb.z
  %i.dw = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !8191
  %i.dx = and i128 %i.dw, 36028797018963968
  %.not1.i.i = icmp eq i128 %i.dx, 0
  br i1 %.not1.i.i, label %bb.aa, label %bb.aj

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i: ; preds = %bb.z
  %i.dy = and i64 %i.du, 36028797018963968
  %.not.i.i = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.dz = and i16 %i.dt, 32767
  %i.ea = icmp eq i16 %i.dz, 0
  br i1 %i.ea, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.eb = zext i16 %i.dt to i32
  %i.ec = shl nuw i32 %i.eb, 16
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.ed = and i16 %i.dt, -32768
  %i.ee = zext i16 %i.ed to i32                   ; 2 uses
  %i.ef = and i16 %i.dt, 31744                    ; 3 uses
  %i.eg = and i16 %i.dt, 1023                     ; 3 uses
  %i.eh = zext nneg i16 %i.eg to i32              ; 3 uses
  %i.ei = icmp eq i16 %i.ef, 31744
  br i1 %i.ei, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.ej = icmp eq i16 %i.eg, 0
  %i.ek = shl nuw i32 %i.ee, 16                   ; 2 uses
  br i1 %i.ej, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  %i.el = shl nuw i32 %i.ee, 16                   ; 2 uses
  %i.em = icmp eq i16 %i.ef, 0
  br i1 %i.em, label %bb.ah, label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %i.en = or disjoint i32 %i.ek, 2139095040
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.ag:                                            ; preds = %bb.ad
  %i.eo = shl nuw nsw i32 %i.eh, 13
  %i.ep = or disjoint i32 %i.ek, %i.eo
  %i.eq = or i32 %i.ep, 2143289344
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.ah:                                            ; preds = %bb.ae
  %i.er = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.eg, i1 false)
  %i.es = zext nneg i16 %i.er to i32              ; 2 uses
  %i.et = add nuw nsw i32 %i.es, 8
  %i.eu = shl i32 %i.eh, %i.et
  %i.ev = and i32 %i.eu, 8388607
  %reass.sub.i.i.i = or disjoint i32 %i.el, 989855744
  %i.ew = shl nuw nsw i32 %i.es, 23
  %i.ex = sub nuw nsw i32 %reass.sub.i.i.i, %i.ew
  %i.ey = or disjoint i32 %i.ev, %i.ex
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.ai:                                            ; preds = %bb.ae
  %i.ez = lshr exact i16 %i.ef, 10
  %narrow.i.i.i = add nuw nsw i16 %i.ez, 112
  %i.fa = zext nneg i16 %narrow.i.i.i to i32
  %i.fb = shl nuw nsw i32 %i.fa, 23
  %i.fc = shl nuw nsw i32 %i.eh, 13
  %i.fd = or disjoint i32 %i.fb, %i.fc
  %i.fe = or disjoint i32 %i.fd, %i.el
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ab
  %.sroa.0.0.i.i.i = phi i32 [ %i.ec, %bb.ab ], [ %i.en, %bb.af ], [ %i.eq, %bb.ag ], [ %i.ey, %bb.ah ], [ %i.fe, %bb.ai ]
  %i.ff = bitcast i32 %.sroa.0.0.i.i.i to float
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i

bb.aj:                                            ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.fg = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.dt)
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i

_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i: ; preds = %bb.aj, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i
  %.sroa.0.0.i.i = phi float [ %i.fg, %bb.aj ], [ %i.ff, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i ]
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %i.dq, i64 %.sroa.012.074.i
  %i.fi = load i16, ptr %i.fh, align 2, !alias.scope !8182, !noundef !18 ; 6 uses
  %i.fj = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !8191 ; 2 uses
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.split.i29.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i22.i, !prof !23

.split.i29.i:                                     ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i
  %i.fl = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !8191
  %i.fm = and i128 %i.fl, 36028797018963968
  %.not1.i30.i = icmp eq i128 %i.fm, 0
  br i1 %.not1.i30.i, label %bb.ak, label %bb.at

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i22.i: ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i
  %i.fn = and i64 %i.fj, 36028797018963968
  %.not.i23.i = icmp eq i64 %i.fn, 0
  br i1 %.not.i23.i, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i22.i, %.split.i29.i
  %i.fo = and i16 %i.fi, 32767
  %i.fp = icmp eq i16 %i.fo, 0
  br i1 %i.fp, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fq = zext i16 %i.fi to i32
  %i.fr = shl nuw i32 %i.fq, 16
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i

bb.am:                                            ; preds = %bb.ak
  %i.fs = and i16 %i.fi, -32768
  %i.ft = zext i16 %i.fs to i32                   ; 2 uses
  %i.fu = and i16 %i.fi, 31744                    ; 3 uses
  %i.fv = and i16 %i.fi, 1023                     ; 3 uses
  %i.fw = zext nneg i16 %i.fv to i32              ; 3 uses
  %i.fx = icmp eq i16 %i.fu, 31744
  br i1 %i.fx, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.fy = icmp eq i16 %i.fv, 0
  %i.fz = shl nuw i32 %i.ft, 16                   ; 2 uses
  br i1 %i.fy, label %bb.ap, label %bb.aq

bb.ao:                                            ; preds = %bb.am
  %i.ga = shl nuw i32 %i.ft, 16                   ; 2 uses
  %i.gb = icmp eq i16 %i.fu, 0
  br i1 %i.gb, label %bb.ar, label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.gc = or disjoint i32 %i.fz, 2139095040
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i

bb.aq:                                            ; preds = %bb.an
  %i.gd = shl nuw nsw i32 %i.fw, 13
  %i.ge = or disjoint i32 %i.fz, %i.gd
  %i.gf = or i32 %i.ge, 2143289344
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i

bb.ar:                                            ; preds = %bb.ao
  %i.gg = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.fv, i1 false)
  %i.gh = zext nneg i16 %i.gg to i32              ; 2 uses
  %i.gi = add nuw nsw i32 %i.gh, 8
  %i.gj = shl i32 %i.fw, %i.gi
  %i.gk = and i32 %i.gj, 8388607
  %reass.sub.i.i28.i = or disjoint i32 %i.ga, 989855744
  %i.gl = shl nuw nsw i32 %i.gh, 23
  %i.gm = sub nuw nsw i32 %reass.sub.i.i28.i, %i.gl
  %i.gn = or disjoint i32 %i.gk, %i.gm
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i

bb.as:                                            ; preds = %bb.ao
  %i.go = lshr exact i16 %i.fu, 10
  %narrow.i.i25.i = add nuw nsw i16 %i.go, 112
  %i.gp = zext nneg i16 %narrow.i.i25.i to i32
  %i.gq = shl nuw nsw i32 %i.gp, 23
  %i.gr = shl nuw nsw i32 %i.fw, 13
  %i.gs = or disjoint i32 %i.gq, %i.gr
  %i.gt = or disjoint i32 %i.gs, %i.ga
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i: ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.al
  %.sroa.0.0.i.i27.i = phi i32 [ %i.fr, %bb.al ], [ %i.gc, %bb.ap ], [ %i.gf, %bb.aq ], [ %i.gn, %bb.ar ], [ %i.gt, %bb.as ]
  %i.gu = bitcast i32 %.sroa.0.0.i.i27.i to float
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit31.i

bb.at:                                            ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i22.i, %.split.i29.i
  %i.gv = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.fi)
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit31.i

_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit31.i: ; preds = %bb.at, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i
  %.sroa.0.0.i24.i = phi float [ %i.gv, %bb.at ], [ %i.gu, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i26.i ]
  %i.gw = fsub float %.sroa.0.0.i.i, %.sroa.0.0.i24.i ; 2 uses
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.012.074.i ; 2 uses
  %i.gy = fmul float %i.gw, %i.gw
  %i.gz = load float, ptr %i.gx, align 4, !alias.scope !8192, !noalias !8191, !noundef !18
  %i.ha = fadd float %i.gz, %i.gy
  store float %i.ha, ptr %i.gx, align 4, !alias.scope !8192, !noalias !8191
  %exitcond.not.i = icmp eq i64 %i.dr, 16
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.z

_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarNtNtCs2k6O4uMwKJm_4half8binary163f16fKj10_EB6_.exit: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i, %.preheader.loopexit.i
  %i.hb = phi float [ %i.dn, %.preheader.loopexit.i ], [ %.sroa.0.0.i, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance2l29l2_scalarB2a_fKj10_E0EEB2Z_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8191
  ret float %i.hb
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef float @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotfNtB5_3Dot3dot(ptr noalias noundef nonnull readonly align 4 captures(none) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(none) %2, i64 noundef range(i64 0, 2305843009213693952) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %1, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %3, ptr %i.d, align 8
  %i.f = icmp eq i64 %1, %3
  br i1 %i.f, label %bb.c, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.e, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.g, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noundef nonnull @53, ptr nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8196)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8197)
  %i.h = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8, !noalias !8198
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8198
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.b, align 8, !noalias !8198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8198
  store ptr %i.b, ptr %i.a, align 8, !noalias !8198
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !8198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8198
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8198
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.d, %bb.c
  %i.j = load i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, align 8, !range !42, !noalias !8198, !noundef !18
  switch i8 %i.j, label %bb.e [
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.h
  ]

bb.e:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.k = call fastcc noundef float @_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarffKj10_EB6_(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1), !alias.scope !8198
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot18dot_f32_dispatched.exit

bb.f:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.l = call fastcc noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8611dot_f32_avx(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot18dot_f32_dispatched.exit

bb.g:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.m = call fastcc noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8615dot_f32_avx_fma(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot18dot_f32_dispatched.exit

bb.h:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.n = call fastcc noundef float @_RNvNtNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot3x8614dot_f32_avx512(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %2, i64 noundef range(i64 0, 2305843009213693952) %1)
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot18dot_f32_dispatched.exit

_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot18dot_f32_dispatched.exit: ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %.sroa.0.0.i = phi float [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.n, %bb.h ]
  ret float %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotfNtB5_3Dot9dot_batch(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([328 x i8]) align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef range(i64 0, 2305843009213693952) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %3, i64 noundef range(i64 0, 2305843009213693952) %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %2, ptr %i.h, align 8
  store i64 %4, ptr %i.g, align 8
  store i64 %5, ptr %i.f, align 8
  %.not.i = icmp eq i64 %5, 0
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCscI6d9CVNmLh_4core9panicking9panic_fmt(ptr noundef nonnull @222, ptr noundef nonnull inttoptr (i64 89 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @223) #74
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %2, %5
  br i1 %i.i, label %bb.e, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.f, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.f, ptr noundef nonnull @224, ptr nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #74
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.k = urem i64 %4, %5                          ; 2 uses
  store i64 %i.k, ptr %i.d, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_RNvNtCs9JgWGBoX3PY_12lance_linalg8distance19assert_batch_layout.exit, label %bb.f, !prof !16

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.g, ptr %i.c, align 8
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.410.0..sroa_idx.i, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.f, ptr %i.m, align 8
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @_RNvXsi_NtNtNtCscI6d9CVNmLh_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.414.0..sroa_idx.i, align 8
  call void @_RINvNtCscI6d9CVNmLh_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @140, ptr noundef nonnull @226, ptr nonnull %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #74
  unreachable

_RNvNtCs9JgWGBoX3PY_12lance_linalg8distance19assert_batch_layout.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8203)
  %i.n = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8, !noalias !8204
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, label %bb.g, !prof !16

bb.g:                                             ; preds = %_RNvNtCs9JgWGBoX3PY_12lance_linalg8distance19assert_batch_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8204
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.b, align 8, !noalias !8204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8204
  store ptr %i.b, ptr %i.a, align 8, !noalias !8204
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2), !noalias !8204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8204
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i: ; preds = %bb.g, %_RNvNtCs9JgWGBoX3PY_12lance_linalg8distance19assert_batch_layout.exit
  %i.p = load i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, align 8, !range !42, !noalias !8204, !noundef !18
  switch i8 %i.p, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit [
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.i
    i8 6, label %bb.j
    i8 7, label %bb.k
  ]

bb.h:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit3.i, %.split8.i, %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i, %.split.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit

bb.i:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  br label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit

bb.j:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.q = icmp samesign ugt i64 %5, 16
  br i1 %i.q, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit, label %bb.l

bb.k:                                             ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit.i
  %i.r = icmp samesign ugt i64 %5, 16
  br i1 %i.r, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit, label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.s = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !8204 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.split.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i, !prof !23

.split.i:                                         ; preds = %bb.l
  %i.u = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !8204
  %i.v = and i128 %i.u, 72057594037927936
  %.not11.i = icmp eq i128 %i.v, 0
  br i1 %.not11.i, label %bb.h, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i: ; preds = %bb.l
  %i.w = and i64 %i.s, 72057594037927936
  %.not10.i = icmp eq i64 %i.w, 0
  br i1 %.not10.i, label %bb.h, label %_RNvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot30dot_batch_f32_runtime_dispatch.exit

bb.m:                                             ; preds = %bb.k
  %i.x = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !8204 ; 2 uses
end_hunk_2
begin_hunk_3_@_RNvXs_NtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotNtNtCs2k6O4uMwKJm_4half8binary163f16NtB4_3Dot3dot:bb.a
  %i.ha = and i32 %i.gz, 8388607
  %reass.sub.i.i20.i = or disjoint i32 %i.gq, 989855744
  %i.hb = shl nuw nsw i32 %i.gx, 23
  %i.hc = sub nuw nsw i32 %reass.sub.i.i20.i, %i.hb
  %i.hd = or disjoint i32 %i.ha, %i.hc
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i18.i

bb.ar:                                            ; preds = %bb.an
  %i.he = lshr exact i16 %i.gk, 10
  %narrow.i.i17.i = add nuw nsw i16 %i.he, 112
  %i.hf = zext nneg i16 %narrow.i.i17.i to i32
  %i.hg = shl nuw nsw i32 %i.hf, 23
  %i.hh = shl nuw nsw i32 %i.gm, 13
  %i.hi = or disjoint i32 %i.hg, %i.hh
  %i.hj = or disjoint i32 %i.hi, %i.gq
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i18.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i18.i: ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.ak
  %.sroa.0.0.i.i19.i = phi i32 [ %i.gh, %bb.ak ], [ %i.gs, %bb.ao ], [ %i.gv, %bb.ap ], [ %i.hd, %bb.aq ], [ %i.hj, %bb.ar ]
  %i.hk = bitcast i32 %.sroa.0.0.i.i19.i to float
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit23.i

bb.as:                                            ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i14.i, %.split.i21.i
  %i.hl = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.fy)
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit23.i

_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit23.i: ; preds = %bb.as, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i18.i
  %.sroa.0.0.i16.i = phi float [ %i.hl, %bb.as ], [ %i.hk, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i18.i ]
  %i.hm = fmul float %.sroa.0.0.i.i, %.sroa.0.0.i16.i
  %i.hn = load float, ptr %i.eh, align 4, !alias.scope !9333, !noalias !9332, !noundef !18
  %i.ho = fadd float %i.hm, %i.hn
  store float %i.ho, ptr %i.eh, align 4, !alias.scope !9333, !noalias !9332
  %exitcond.not.i = icmp eq i64 %i.eg, 32
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.y

_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarNtNtCs2k6O4uMwKJm_4half8binary163f16fKj20_EB6_.exit: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarB2a_fKj20_E0EEB2Z_.exit.i, %.preheader.loopexit.i
  %i.hp = phi float [ %i.ec, %.preheader.loopexit.i ], [ 0.000000e+00, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtB17_3zip3ZipINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16EB1K_ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dot10dot_scalarB2a_fKj20_E0EEB2Z_.exit.i ]
  %i.hq = fadd float %.sroa.0.0.i, %i.hp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9332
  ret float %i.hq
}

; Function Attrs: nonlazybind uwtable
define noundef float @_RNvXs_NtNtCs9JgWGBoX3PY_12lance_linalg8distance6cosineNtNtCs2k6O4uMwKJm_4half6bfloat4bf16NtB4_6Cosine11cosine_fast(ptr noalias noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1, float noundef %2, ptr noalias noundef nonnull readonly align 2 captures(none) %3, i64 noundef range(i64 0, 4611686018427387904) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a, %bb.b
  %i.e = call fastcc noundef float @_RNvXNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotNtNtCs2k6O4uMwKJm_4half6bfloat4bf16NtB2_3Dot3dot(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  %i.f = call fastcc noundef float @_RNvXNtNtCs9JgWGBoX3PY_12lance_linalg8distance3dotNtNtCs2k6O4uMwKJm_4half6bfloat4bf16NtB2_3Dot3dot(ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %3, i64 noundef %4)
  %i.g = call float @llvm.sqrt.f32(float %i.e)
  %i.h = fmul float %2, %i.g
  %i.i = fdiv float %i.f, %i.h
  %i.j = fsub float 1.000000e+00, %i.i
  ret float %i.j
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef float @_RNvXs_NtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l2NtNtCs2k6O4uMwKJm_4half8binary163f16NtB4_9Normalize7norm_l2(ptr noalias noundef nonnull readonly align 2 captures(none) %0, i64 noundef range(i64 0, 4611686018427387904) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 4               ; 36 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8) acquire, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, label %bb.b, !prof !16

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_RNvMs0_NtNtNtNtCsgczF5crJ4sT_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs63DIHKhvmTb_10lance_core5utils3cpu12SIMD_SUPPORT, i64 8), i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit

_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit: ; preds = %bb.a, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !9342)
  %i.f = and i64 %1, 31                           ; 2 uses
  %i.g = and i64 %1, 4611686018427387872          ; 3 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.g
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i, label %.preheader16.i

.preheader16.i:                                   ; preds = %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i
  %.sroa.04.0.i.i.i.i = phi i64 [ %i.ba, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i ], [ 0, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi float [ %i.az, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i ], [ -0.000000e+00, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit ]
  %i.j = getelementptr inbounds nuw [2 x i8], ptr %i.h, i64 %.sroa.04.0.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9343)
  call void @llvm.experimental.noalias.scope.decl(metadata !9344)
  %i.k = load i16, ptr %i.j, align 2, !alias.scope !9345, !noundef !18 ; 6 uses
  %i.l = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !9345 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.split.i.i.i.i.i.i.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i, !prof !23

.split.i.i.i.i.i.i.i:                             ; preds = %.preheader16.i
  %i.n = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !9345
  %i.o = and i128 %i.n, 36028797018963968
  %.not1.i.i.i.i.i.i.i = icmp eq i128 %i.o, 0
  br i1 %.not1.i.i.i.i.i.i.i, label %bb.c, label %bb.l

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i: ; preds = %.preheader16.i
  %i.p = and i64 %i.l, 36028797018963968
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.c, label %bb.l

bb.c:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  %i.q = and i16 %i.k, 32767
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = zext i16 %i.k to i32
  %i.t = shl nuw i32 %i.s, 16
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.u = and i16 %i.k, -32768
  %i.v = zext i16 %i.u to i32                     ; 2 uses
  %i.w = and i16 %i.k, 31744                      ; 3 uses
  %i.x = and i16 %i.k, 1023                       ; 3 uses
  %i.y = zext nneg i16 %i.x to i32                ; 3 uses
  %i.z = icmp eq i16 %i.w, 31744
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp eq i16 %i.x, 0
  %i.ab = shl nuw i32 %i.v, 16                    ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ac = shl nuw i32 %i.v, 16                    ; 2 uses
  %i.ad = icmp eq i16 %i.w, 0
  br i1 %i.ad, label %bb.j, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.ae = or disjoint i32 %i.ab, 2139095040
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  %i.af = shl nuw nsw i32 %i.y, 13
  %i.ag = or disjoint i32 %i.ab, %i.af
  %i.ah = or i32 %i.ag, 2143289344
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.g
  %i.ai = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.x, i1 false)
  %i.aj = zext nneg i16 %i.ai to i32              ; 2 uses
  %i.ak = add nuw nsw i32 %i.aj, 8
  %i.al = shl i32 %i.y, %i.ak
  %i.am = and i32 %i.al, 8388607
  %reass.sub.i.i.i.i.i.i.i.i = or disjoint i32 %i.ac, 989855744
  %i.an = shl nuw nsw i32 %i.aj, 23
  %i.ao = sub nuw nsw i32 %reass.sub.i.i.i.i.i.i.i.i, %i.an
  %i.ap = or disjoint i32 %i.am, %i.ao
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.g
  %i.aq = lshr exact i16 %i.w, 10
  %narrow.i.i.i.i.i.i.i.i = add nuw nsw i16 %i.aq, 112
  %i.ar = zext nneg i16 %narrow.i.i.i.i.i.i.i.i to i32
  %i.as = shl nuw nsw i32 %i.ar, 23
  %i.at = shl nuw nsw i32 %i.y, 13
  %i.au = or disjoint i32 %i.as, %i.at
  %i.av = or disjoint i32 %i.au, %i.ac
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.d
  %.sroa.0.0.i.i.i.i.i.i.i.i = phi i32 [ %i.t, %bb.d ], [ %i.ae, %bb.h ], [ %i.ah, %bb.i ], [ %i.ap, %bb.j ], [ %i.av, %bb.k ]
  %i.aw = bitcast i32 %.sroa.0.0.i.i.i.i.i.i.i.i to float
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i

bb.l:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i.i.i.i.i.i, %.split.i.i.i.i.i.i.i
  %i.ax = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.k)
  br label %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i

_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i: ; preds = %bb.l, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i = phi float [ %i.ax, %bb.l ], [ %i.aw, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = fmul float %.sroa.0.0.i.i.i.i.i.i.i, %.sroa.0.0.i.i.i.i.i.i.i
  %i.az = fadd float %.sroa.02.0.i.i.i.i, %i.ay   ; 2 uses
  %i.ba = add nuw nsw i64 %.sroa.04.0.i.i.i.i, 1  ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %i.f
  br i1 %i.bb, label %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i, label %.preheader16.i

_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i: ; preds = %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit
  %.sroa.0.0.i = phi float [ 0.000000e+00, %_RINvMs0_NtNtCsgczF5crJ4sT_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockNtNtNtCs63DIHKhvmTb_10lance_core5utils3cpu11SimdSupportE5force0ECs9JgWGBoX3PY_12lance_linalg.exit ], [ %i.az, %_RNCINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map8map_foldRNtNtCs2k6O4uMwKJm_4half8binary163f16ffNCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implBV_fKj20_E0NCINvXs22_NtNtB8_6traits5accumfNtB2Y_3Sum3sumINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1x_EE0E0B1G_.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9342
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %i.a, i8 0, i64 128, i1 false), !noalias !9342
  %.not19.i = icmp eq i64 %i.g, 0
  br i1 %.not19.i, label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implNtNtCs2k6O4uMwKJm_4half8binary163f16fKj20_EB6_.exit, label %.lr.ph.i

.loopexit.i:                                      ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.01.021.i, i64 64
  %i.bd = add i64 %.sroa.5.020.i, -32             ; 2 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.loopexit.i
  %.val.i.i.i.pre.i = load float, ptr %i.a, align 4, !noalias !9342
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.val.i.i.i.1.pre.i = load float, ptr %.phi.trans.insert.i, align 4, !noalias !9342
  %.phi.trans.insert26.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.i.i.2.pre.i = load float, ptr %.phi.trans.insert26.i, align 4, !noalias !9342
  %.phi.trans.insert28.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.val.i.i.i.3.pre.i = load float, ptr %.phi.trans.insert28.i, align 4, !noalias !9342
  %.phi.trans.insert30.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.4.pre.i = load float, ptr %.phi.trans.insert30.i, align 4, !noalias !9342
  %.phi.trans.insert32.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.val.i.i.i.5.pre.i = load float, ptr %.phi.trans.insert32.i, align 4, !noalias !9342
  %.phi.trans.insert34.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i.i.i.6.pre.i = load float, ptr %.phi.trans.insert34.i, align 4, !noalias !9342
  %.phi.trans.insert36.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.val.i.i.i.7.pre.i = load float, ptr %.phi.trans.insert36.i, align 4, !noalias !9342
  %.phi.trans.insert38.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val.i.i.i.8.pre.i = load float, ptr %.phi.trans.insert38.i, align 4, !noalias !9342
  %.phi.trans.insert40.i = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  %.val.i.i.i.9.pre.i = load float, ptr %.phi.trans.insert40.i, align 4, !noalias !9342
  %.phi.trans.insert42.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val.i.i.i.10.pre.i = load float, ptr %.phi.trans.insert42.i, align 4, !noalias !9342
  %.phi.trans.insert44.i = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %.val.i.i.i.11.pre.i = load float, ptr %.phi.trans.insert44.i, align 4, !noalias !9342
  %.phi.trans.insert46.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.val.i.i.i.12.pre.i = load float, ptr %.phi.trans.insert46.i, align 4, !noalias !9342
  %.phi.trans.insert48.i = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %.val.i.i.i.13.pre.i = load float, ptr %.phi.trans.insert48.i, align 4, !noalias !9342
  %.phi.trans.insert50.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.val.i.i.i.14.pre.i = load float, ptr %.phi.trans.insert50.i, align 4, !noalias !9342
  %.phi.trans.insert52.i = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  %.val.i.i.i.15.pre.i = load float, ptr %.phi.trans.insert52.i, align 4, !noalias !9342
  %.phi.trans.insert54.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.val.i.i.i.16.pre.i = load float, ptr %.phi.trans.insert54.i, align 4, !noalias !9342
  %.phi.trans.insert56.i = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %.val.i.i.i.17.pre.i = load float, ptr %.phi.trans.insert56.i, align 4, !noalias !9342
  %.phi.trans.insert58.i = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.val.i.i.i.18.pre.i = load float, ptr %.phi.trans.insert58.i, align 4, !noalias !9342
  %.phi.trans.insert60.i = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.val.i.i.i.19.pre.i = load float, ptr %.phi.trans.insert60.i, align 4, !noalias !9342
  %.phi.trans.insert62.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.val.i.i.i.20.pre.i = load float, ptr %.phi.trans.insert62.i, align 4, !noalias !9342
  %.phi.trans.insert64.i = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %.val.i.i.i.21.pre.i = load float, ptr %.phi.trans.insert64.i, align 4, !noalias !9342
  %.phi.trans.insert66.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.val.i.i.i.22.pre.i = load float, ptr %.phi.trans.insert66.i, align 4, !noalias !9342
  %.phi.trans.insert68.i = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %.val.i.i.i.23.pre.i = load float, ptr %.phi.trans.insert68.i, align 4, !noalias !9342
  %.phi.trans.insert70.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.val.i.i.i.24.pre.i = load float, ptr %.phi.trans.insert70.i, align 4, !noalias !9342
  %.phi.trans.insert72.i = getelementptr inbounds nuw i8, ptr %i.a, i64 100
  %.val.i.i.i.25.pre.i = load float, ptr %.phi.trans.insert72.i, align 4, !noalias !9342
  %.phi.trans.insert74.i = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %.val.i.i.i.26.pre.i = load float, ptr %.phi.trans.insert74.i, align 4, !noalias !9342
  %.phi.trans.insert76.i = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  %.val.i.i.i.27.pre.i = load float, ptr %.phi.trans.insert76.i, align 4, !noalias !9342
  %.phi.trans.insert78.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %.val.i.i.i.28.pre.i = load float, ptr %.phi.trans.insert78.i, align 4, !noalias !9342
  %.phi.trans.insert80.i = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  %.val.i.i.i.29.pre.i = load float, ptr %.phi.trans.insert80.i, align 4, !noalias !9342
  %.phi.trans.insert82.i = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val.i.i.i.30.pre.i = load float, ptr %.phi.trans.insert82.i, align 4, !noalias !9342
  %.phi.trans.insert84.i = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  %.val.i.i.i.31.pre.i = load float, ptr %.phi.trans.insert84.i, align 4, !noalias !9342
  %2 = fadd float %.val.i.i.i.pre.i, %.val.i.i.i.1.pre.i
  %i.be = fadd float %2, %.val.i.i.i.2.pre.i
  %i.bf = fadd float %i.be, %.val.i.i.i.3.pre.i
  %i.bg = fadd float %i.bf, %.val.i.i.i.4.pre.i
  %i.bh = fadd float %i.bg, %.val.i.i.i.5.pre.i
  %i.bi = fadd float %i.bh, %.val.i.i.i.6.pre.i
  %i.bj = fadd float %i.bi, %.val.i.i.i.7.pre.i
  %i.bk = fadd float %i.bj, %.val.i.i.i.8.pre.i
  %i.bl = fadd float %i.bk, %.val.i.i.i.9.pre.i
  %i.bm = fadd float %i.bl, %.val.i.i.i.10.pre.i
  %i.bn = fadd float %i.bm, %.val.i.i.i.11.pre.i
  %i.bo = fadd float %i.bn, %.val.i.i.i.12.pre.i
  %i.bp = fadd float %i.bo, %.val.i.i.i.13.pre.i
  %i.bq = fadd float %i.bp, %.val.i.i.i.14.pre.i
  %i.br = fadd float %i.bq, %.val.i.i.i.15.pre.i
  %i.bs = fadd float %i.br, %.val.i.i.i.16.pre.i
  %i.bt = fadd float %i.bs, %.val.i.i.i.17.pre.i
  %i.bu = fadd float %i.bt, %.val.i.i.i.18.pre.i
  %i.bv = fadd float %i.bu, %.val.i.i.i.19.pre.i
  %i.bw = fadd float %i.bv, %.val.i.i.i.20.pre.i
  %i.bx = fadd float %i.bw, %.val.i.i.i.21.pre.i
  %i.by = fadd float %i.bx, %.val.i.i.i.22.pre.i
  %i.bz = fadd float %i.by, %.val.i.i.i.23.pre.i
  %i.ca = fadd float %i.bz, %.val.i.i.i.24.pre.i
  %i.cb = fadd float %i.ca, %.val.i.i.i.25.pre.i
  %i.cc = fadd float %i.cb, %.val.i.i.i.26.pre.i
  %i.cd = fadd float %i.cc, %.val.i.i.i.27.pre.i
  %i.ce = fadd float %i.cd, %.val.i.i.i.28.pre.i
  %i.cf = fadd float %i.ce, %.val.i.i.i.29.pre.i
  %i.cg = fadd float %i.cf, %.val.i.i.i.30.pre.i
  %i.ch = fadd float %i.cg, %.val.i.i.i.31.pre.i
  %i.ci = fadd float %.sroa.0.0.i, %i.ch
  br label %_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implNtNtCs2k6O4uMwKJm_4half8binary163f16fKj20_EB6_.exit

.lr.ph.i:                                         ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i, %.loopexit.i
  %.sroa.01.021.i = phi ptr [ %i.bc, %.loopexit.i ], [ %0, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i ] ; 2 uses
  %.sroa.5.020.i = phi i64 [ %i.bd, %.loopexit.i ], [ %i.g, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i ]
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i, %.lr.ph.i
  %.sroa.08.018.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cj, %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i ] ; 3 uses
  %i.cj = add nuw nsw i64 %.sroa.08.018.i, 1      ; 2 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.08.018.i ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.021.i, i64 %.sroa.08.018.i
  %i.cm = load i16, ptr %i.cl, align 2, !alias.scope !9342, !noundef !18 ; 6 uses
  %i.cn = load atomic i64, ptr @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache5CACHE monotonic, align 8, !noalias !9342 ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.split.i.i, label %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i, !prof !23

.split.i.i:                                       ; preds = %bb.m
  %i.cp = call noundef i128 @_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache21detect_and_initialize(), !noalias !9342
  %i.cq = and i128 %i.cp, 36028797018963968
  %.not1.i.i = icmp eq i128 %i.cq, 0
  br i1 %.not1.i.i, label %bb.n, label %bb.w

_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i: ; preds = %bb.m
  %i.cr = and i64 %i.cn, 36028797018963968
  %.not.i.i = icmp eq i64 %i.cr, 0
  br i1 %.not.i.i, label %bb.n, label %bb.w

bb.n:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.cs = and i16 %i.cm, 32767
  %i.ct = icmp eq i16 %i.cs, 0
  br i1 %i.ct, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cu = zext i16 %i.cm to i32
  %i.cv = shl nuw i32 %i.cu, 16
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.p:                                             ; preds = %bb.n
  %i.cw = and i16 %i.cm, -32768
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = and i16 %i.cm, 31744                    ; 3 uses
  %i.cz = and i16 %i.cm, 1023                     ; 3 uses
  %i.da = zext nneg i16 %i.cz to i32              ; 3 uses
  %i.db = icmp eq i16 %i.cy, 31744
  br i1 %i.db, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dc = icmp eq i16 %i.cz, 0
  %i.dd = shl nuw i32 %i.cx, 16                   ; 2 uses
  br i1 %i.dc, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.p
  %i.de = shl nuw i32 %i.cx, 16                   ; 2 uses
  %i.df = icmp eq i16 %i.cy, 0
  br i1 %i.df, label %bb.u, label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.dg = or disjoint i32 %i.dd, 2139095040
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.t:                                             ; preds = %bb.q
  %i.dh = shl nuw nsw i32 %i.da, 13
  %i.di = or disjoint i32 %i.dd, %i.dh
  %i.dj = or i32 %i.di, 2143289344
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.u:                                             ; preds = %bb.r
  %i.dk = call range(i16 6, 17) i16 @llvm.ctlz.i16(i16 %i.cz, i1 false)
  %i.dl = zext nneg i16 %i.dk to i32              ; 2 uses
  %i.dm = add nuw nsw i32 %i.dl, 8
  %i.dn = shl i32 %i.da, %i.dm
  %i.do = and i32 %i.dn, 8388607
  %reass.sub.i.i.i = or disjoint i32 %i.de, 989855744
  %i.dp = shl nuw nsw i32 %i.dl, 23
  %i.dq = sub nuw nsw i32 %reass.sub.i.i.i, %i.dp
  %i.dr = or disjoint i32 %i.do, %i.dq
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

bb.v:                                             ; preds = %bb.r
  %i.ds = lshr exact i16 %i.cy, 10
  %narrow.i.i.i = add nuw nsw i16 %i.ds, 112
  %i.dt = zext nneg i16 %narrow.i.i.i to i32
  %i.du = shl nuw nsw i32 %i.dt, 23
  %i.dv = shl nuw nsw i32 %i.da, 13
  %i.dw = or disjoint i32 %i.du, %i.dv
  %i.dx = or disjoint i32 %i.dw, %i.de
  br label %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i

_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.o
  %.sroa.0.0.i.i.i = phi i32 [ %i.cv, %bb.o ], [ %i.dg, %bb.s ], [ %i.dj, %bb.t ], [ %i.dr, %bb.u ], [ %i.dx, %bb.v ]
  %i.dy = bitcast i32 %.sroa.0.0.i.i.i to float
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i

bb.w:                                             ; preds = %_RNvNtNtCsi9YoAGUbCUq_10std_detect6detect5cache4test.exit.i.i, %.split.i.i
  %i.dz = call fastcc noundef float @_RNvNtNtNtCs2k6O4uMwKJm_4half8binary164arch3x8619f16_to_f32_x86_f16c(i16 noundef %i.cm)
  br label %_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i

_RNvXsy_NtCs2k6O4uMwKJm_4half10num_traitsNtNtB7_8binary163f16INtNtCs9Dp5gG9Z4kl_10num_traits4cast11AsPrimitivefE3as_.exit.i: ; preds = %bb.w, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i
  %.sroa.0.0.i.i = phi float [ %i.dz, %bb.w ], [ %i.dy, %_RNvNtNtCs2k6O4uMwKJm_4half8binary164arch19f16_to_f32_fallback.exit.i.i ] ; 2 uses
  %i.ea = fmul float %.sroa.0.0.i.i, %.sroa.0.0.i.i
  %i.eb = load float, ptr %i.ck, align 4, !alias.scope !9346, !noalias !9342, !noundef !18
  %i.ec = fadd float %i.ea, %i.eb
  store float %i.ec, ptr %i.ck, align 4, !alias.scope !9346, !noalias !9342
  %exitcond.not.i = icmp eq i64 %i.cj, 32
  br i1 %exitcond.not.i, label %.loopexit.i, label %bb.m

_RINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implNtNtCs2k6O4uMwKJm_4half8binary163f16fKj20_EB6_.exit: ; preds = %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i, %.preheader.loopexit.i
  %i.ed = phi float [ %i.ci, %.preheader.loopexit.i ], [ %.sroa.0.0.i, %_RINvXs22_NtNtNtCscI6d9CVNmLh_4core4iter6traits5accumfNtB7_3Sum3sumINtNtNtBb_8adapters3map3MapINtNtNtBd_5slice4iter4IterNtNtCs2k6O4uMwKJm_4half8binary163f16ENCINvNtNtCs9JgWGBoX3PY_12lance_linalg8distance7norm_l212norm_l2_implB1T_fKj20_E0EEB2D_.exit.i ]
  %i.ee = call noundef float @llvm.sqrt.f32(float %i.ed)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9342
  ret float %i.ee
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtNtCsgczF5crJ4sT_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardbEENtNtCscI6d9CVNmLh_4core3fmt5Debug3fmtCs9JgWGBoX3PY_12lance_linalg(ptr noalias readonly align 8 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter12debug_struct(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @450, i64 noundef 11)
  %i.b = call noundef zeroext i1 @_RNvMs1_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !50, !noundef !18 ; 2 uses
  %i.b = zext nneg i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXsa_NtCs8SUNSmrkv52_12arrow_schema8datatypeNtB5_8TimeUnitNtNtCscI6d9CVNmLh_4core3fmt5Debug3fmt.910, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCscI6d9CVNmLh_4core5arrayAdj4_NtNtB7_3fmt5Debug3fmtCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.i.i:
  %i.a = alloca [8 x i8], align 8                 ; 16 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9352
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9354
  store ptr %0, ptr %i.a, align 8, !noalias !9354
  %i.c = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9354
  %.sroa.0.07.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9354
  store ptr %.sroa.0.07.i.i.ptr.1, ptr %i.a, align 8, !noalias !9354
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9354
  %.sroa.0.07.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9354
  store ptr %.sroa.0.07.i.i.ptr.2, ptr %i.a, align 8, !noalias !9354
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9354
  %.sroa.0.07.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9354
  store ptr %.sroa.0.07.i.i.ptr.3, ptr %i.a, align 8, !noalias !9354
  %i.f = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9354
  %i.g = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9352
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCscI6d9CVNmLh_4core5arrayAdj8_NtNtB7_3fmt5Debug3fmtCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.i.i:
  %i.a = alloca [8 x i8], align 8                 ; 32 uses
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9360
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9361
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %0, ptr %i.a, align 8, !noalias !9362
  %i.c = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.1, ptr %i.a, align 8, !noalias !9362
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.2, ptr %i.a, align 8, !noalias !9362
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.3, ptr %i.a, align 8, !noalias !9362
  %i.f = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.4, ptr %i.a, align 8, !noalias !9362
  %i.g = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.5, ptr %i.a, align 8, !noalias !9362
  %i.h = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.6, ptr %i.a, align 8, !noalias !9362
  %i.i = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %.sroa.0.07.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9362
  store ptr %.sroa.0.07.i.i.ptr.7, ptr %i.a, align 8, !noalias !9362
  %i.j = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9362
  %i.k = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9360
  ret i1 %i.k
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsa_NtCscI6d9CVNmLh_4core5arrayAfj10_NtNtB7_3fmt5Debug3fmtCs9JgWGBoX3PY_12lance_linalg(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph.i.i:
  %i.a = alloca [8 x i8], align 8                 ; 64 uses
  %i.b = alloca [16 x i8], align 8                ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9368
  call void @_RNvMsa_NtCscI6d9CVNmLh_4core3fmtNtB5_9Formatter10debug_list(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !9369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %0, ptr %i.a, align 8, !noalias !9370
  %i.c = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.1, ptr %i.a, align 8, !noalias !9370
  %i.d = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.2, ptr %i.a, align 8, !noalias !9370
  %i.e = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.3, ptr %i.a, align 8, !noalias !9370
  %i.f = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.4, ptr %i.a, align 8, !noalias !9370
  %i.g = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.5, ptr %i.a, align 8, !noalias !9370
  %i.h = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.6, ptr %i.a, align 8, !noalias !9370
  %i.i = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.7, ptr %i.a, align 8, !noalias !9370
  %i.j = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.8, ptr %i.a, align 8, !noalias !9370
  %i.k = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %0, i64 36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.9, ptr %i.a, align 8, !noalias !9370
  %i.l = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.10, ptr %i.a, align 8, !noalias !9370
  %i.m = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.11, ptr %i.a, align 8, !noalias !9370
  %i.n = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.12, ptr %i.a, align 8, !noalias !9370
  %i.o = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.13, ptr %i.a, align 8, !noalias !9370
  %i.p = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.14, ptr %i.a, align 8, !noalias !9370
  %i.q = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %.sroa.0.07.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %0, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9370
  store ptr %.sroa.0.07.i.i.ptr.15, ptr %i.a, align 8, !noalias !9370
  %i.r = call noundef nonnull align 8 ptr @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @15) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9370
  %i.s = call noundef zeroext i1 @_RNvMs5_NtNtCscI6d9CVNmLh_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9368
end_hunk_3
