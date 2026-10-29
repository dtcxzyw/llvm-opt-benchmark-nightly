Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_tr-4ec185560a9f7532.uu_tr.f6bffaffa43728d0-cgu.0?download=true
inline.NumInlined: 1207
inline.NumDeleted: 660
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_18SpecFromIterNestedB11_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB2m_5slice4iter4IterB11_ENCNvMs1_B13_B11_20solve_set_characterss2_0EE9from_iterB15_:bb.a
  br label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %.loopexit.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i
  %.sroa.118.3.in = phi ptr [ %.sroa.118.0..sroa_idx9, %.loopexit.i.i ], [ %.val.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i ]
  %.sroa.0.0 = phi i8 [ %i.h, %.loopexit.i.i ], [ 3, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i ]
  %.sroa.118.3 = load i64, ptr %.sroa.118.3.in, align 8, !noalias !1920
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !1921
  %i.n = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, 9) 8) #32, !noalias !1921 ; 7 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit

bb.d:                                             ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 8, i64 64) #35
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator8allocate.exit.i.i
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.519.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11, i64 6, i1 false)
  store i8 %.sroa.0.0, ptr %i.n, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 %i.k, ptr %.sroa.418.0..sroa_idx, align 1
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 %.sroa.118.3, ptr %.sroa.620.0..sroa_idx, align 8
  store i64 4, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1923)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  %i.p = icmp eq ptr %i.g, %i.c
  br i1 %i.p, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB23_5slice4iter4IterBR_ENCNvMs1_BT_BR_20solve_set_characterss2_0EE11spec_extendBV_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit, %bb.g
  %i.q = phi ptr [ %i.ad, %bb.g ], [ %i.n, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ]
  %i.r = phi i64 [ %i.af, %bb.g ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ] ; 5 uses
  %.lcssa243133.i.i = phi ptr [ %i.t, %bb.g ], [ %i.g, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ]
  br label %bb.e

bb.e:                                             ; preds = %.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.s = phi ptr [ %.lcssa243133.i.i, %.lr.ph.i.i.i.i ], [ %i.t, %.backedge.i.i.i.i ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  %i.u = load i8, ptr %i.s, align 8, !range !15, !alias.scope !1926, !noalias !1927, !noundef !11 ; 2 uses
  %i.v = icmp eq i8 %i.u, 2
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = load i8, ptr %i.w, align 1, !alias.scope !1928, !noalias !1929 ; 2 uses
  br i1 %i.v, label %bb.f, label %.loopexit.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %.backedge.i.i.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %bb.f
  %i.z = icmp eq ptr %i.t, %i.c
  br i1 %i.z, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB23_5slice4iter4IterBR_ENCNvMs1_BT_BR_20solve_set_characterss2_0EE11spec_extendBV_.exit, label %bb.e

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i.i.i: ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1C_B1A_20solve_set_characterss2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.e
  %.sroa.11.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx5.i.i, i64 6, i1 false), !noalias !1930
  %.sroa.116.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  br label %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1C_B1A_20solve_set_characterss2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.i.i

_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1C_B1A_20solve_set_characterss2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.i.i: ; preds = %.loopexit.i.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i.i.i
  %.sroa.116.3.in.i.i = phi ptr [ %.sroa.116.0..sroa_idx7.i.i, %.loopexit.i.i.i.i ], [ %.val.i.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i.i.i ]
  %.sroa.0.0.i.i = phi i8 [ %i.u, %.loopexit.i.i.i.i ], [ 3, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core3ops8function5implsQNCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtBW_8Sequence20solve_set_characterss2_0INtB7_5FnMutTRB1s_EE8call_mutBY_.exit.thread.i.i.i.i ]
  %.sroa.116.3.i.i = load i64, ptr %.sroa.116.3.in.i.i, align 8, !noalias !1929
  %i.aa = icmp samesign ult i64 %i.r, 576460752303423488
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i64, ptr %i.a, align 8, !range !12, !alias.scope !1931, !noundef !11
  %i.ac = icmp eq i64 %i.r, %i.ab
  br i1 %i.ac, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceE7reserveBI_.exit.i.i, label %bb.g

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceE7reserveBI_.exit.i.i: ; preds = %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1C_B1A_20solve_set_characterss2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16) #32, !noalias !1932
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1931
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceE7reserveBI_.exit.i.i, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1C_B1A_20solve_set_characterss2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.i.i
  %i.ad = phi ptr [ %.pre, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceE7reserveBI_.exit.i.i ], [ %i.q, %_RNvXs0_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENCNvMs1_B1C_B1A_20solve_set_characterss2_0ENtNtNtB9_6traits8iterator8Iterator4nextB1E_.exit.i.i ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.r ; 4 uses
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.515.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.i.i, i64 6, i1 false), !noalias !1930
  store i8 %.sroa.0.0.i.i, ptr %i.ae, align 8, !noalias !1930
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store i8 %i.x, ptr %.sroa.414.0..sroa_idx.i.i, align 1, !noalias !1930
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i64 %.sroa.116.3.i.i, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !1930
  %i.af = add nuw nsw i64 %i.r, 1                 ; 2 uses
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1931
  %i.ag = icmp eq ptr %i.t, %i.c
  br i1 %i.ag, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB23_5slice4iter4IterBR_ENCNvMs1_BT_BR_20solve_set_characterss2_0EE11spec_extendBV_.exit, label %.lr.ph.i.i.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB23_5slice4iter4IterBR_ENCNvMs1_BT_BR_20solve_set_characterss2_0EE11spec_extendBV_.exit: ; preds = %bb.g, %.backedge.i.i.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.h

._crit_edge.i.i:                                  ; preds = %.backedge.i.i, %bb.a
  store i64 0, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ai, align 8
  br label %bb.h

bb.h:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VecNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtB2_10SpecExtendBR_INtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10filter_map9FilterMapINtNtNtB23_5slice4iter4IterBR_ENCNvMs1_BT_BR_20solve_set_characterss2_0EE11spec_extendBV_.exit, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1z_7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B3c_B3a_7flattenEEE9from_iterB3e_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.8.i.i.i = alloca i64, align 8            ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca i64, align 8                ; 4 uses
  %.sroa.8.i = alloca i64, align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !2021, !noundef !11 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit: ; preds = %bb.a
  %i.i = add i64 %i.g, -1
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !2021
  %i.j = tail call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #34 ; 2 uses
  %i.k = extractvalue { i1, i8 } %i.j, 0
  %i.l = extractvalue { i1, i8 } %i.j, 1
  br i1 %i.k, label %bb.b, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread

bb.b:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2022)
  %i.m = load i64, ptr %i.f, align 8, !alias.scope !2022, !noundef !11 ; 3 uses
  %i.n = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2023)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2024)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2025)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2026)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2027
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !2028, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.p, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2029)
  br i1 %.not.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !2030, !nonnull !11, !align !13, !noundef !11
  %i.r = getelementptr inbounds nuw i8, ptr %.val3.i.i.i.i, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !invariant.load !11, !noalias !2031, !nonnull !11
  call void %i.s(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.p) #34, !noalias !2032, !inline_history !1952
  %.pre.i.i.i = load i64, ptr %i.d, align 8, !noalias !2027
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre74.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !range !22, !noalias !2027
  %.phi.trans.insert75.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre76.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i, align 8, !noalias !2027
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i: ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %.pre76.i.i.i, %bb.d ], [ 0, %bb.c ]
  %i.u = phi i64 [ %.pre74.i.i.i, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %i.v = phi i64 [ %.pre.i.i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2027
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !2028, !noundef !11 ; 2 uses
  %.not53.i.i.i = icmp eq ptr %i.x, null
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  br i1 %.not53.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !2034, !nonnull !11, !align !13, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %.val3.i63.i.i.i, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !11, !noalias !2035, !nonnull !11
  call void %i.aa(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.x) #34, !noalias !2036, !inline_history !1952
  %.pre77.i.i.i = load i64, ptr %i.c, align 8, !noalias !2027
  %.phi.trans.insert78.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre79.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i, align 8, !range !22, !noalias !2027
  %.phi.trans.insert80.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre81.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i, align 8, !noalias !2027
  %i.ab = call i64 @llvm.uadd.sat.i64(i64 %i.v, i64 %.pre77.i.i.i)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i: ; preds = %bb.e, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i
  %i.ac = phi i64 [ %.pre81.i.i.i, %bb.e ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i ]
  %.fr75 = phi i64 [ %.pre79.i.i.i, %bb.e ], [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i ] ; 2 uses
  %i.ad = phi i64 [ %i.ab, %bb.e ], [ %i.v, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2027
  %i.ae = load ptr, ptr %1, align 8, !alias.scope !2028, !noundef !11 ; 2 uses
  %.not54.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not54.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val61.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !2028, !nonnull !11, !noundef !11
  %i.ag = icmp eq ptr %.val61.i.i.i, %i.ae
  %i.ah = trunc nuw i64 %i.u to i1
  %i.ai = trunc nuw i64 %.fr75 to i1
  %op.rdx73 = select i1 %i.ag, i1 %i.ah, i1 false
  %op.rdx74 = select i1 %op.rdx73, i1 %i.ai, i1 false
  br i1 %op.rdx74, label %bb.h, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit

bb.g:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i
  %i.aj = and i64 %.fr75, %i.u
  %or.cond55.not.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %or.cond55.not.i.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ak = add i64 %i.ac, %i.t
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.sink85.i.i.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.h ], [ %.sroa.5.i, %bb.g ], [ %.sroa.5.i, %bb.f ]
  %.sink.i.i.i = phi i64 [ %i.ak, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  store i64 %.sink.i.i.i, ptr %.sink85.i.i.sroa.phi.i, align 8, !alias.scope !2037, !noalias !2038
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %..i.i = call noundef i64 @llvm.umin.i64(i64 %i.m, i64 %i.ad)
  %i.al = call i64 @llvm.uadd.sat.i64(i64 %..i.i, i64 1)
  %i.am = call i64 @llvm.umax.i64(i64 %i.al, i64 8) ; 3 uses
  %.not.i.i = icmp slt i64 %i.am, 0
  br i1 %.not.i.i, label %bb.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread, !prof !2039

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread: ; preds = %bb.b, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit
  %..i.sink.i55 = phi i64 [ %i.am, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit ], [ 8, %bb.b ] ; 3 uses
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2040
  %i.an = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %..i.sink.i55, i64 noundef range(i64 1, 9) 1) #32, !noalias !2040 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit

bb.i:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit
  %..i.sink.i56 = phi i64 [ %..i.sink.i55, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread ], [ %i.am, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit ]
  %.sroa.4.0.ph.i = phi i64 [ 1, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread ], [ 0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %..i.sink.i56) #35
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.thread
  store i8 %i.l, ptr %i.an, align 1
  store i64 %..i.sink.i55, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.011.0.copyload = load ptr, ptr %1, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx12, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.13.0.copyload = load ptr, ptr %.sroa.13.0..sroa_idx, align 8 ; 2 uses
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.17.0.copyload = load ptr, ptr %.sroa.17.0..sroa_idx, align 8 ; 7 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.21.0.copyload = load ptr, ptr %.sroa.21.0..sroa_idx, align 8 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2041)
  call void @llvm.experimental.noalias.scope.decl(metadata !2042)
  br i1 %i.n, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert75.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert78.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert80.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.not.i8.i.i = icmp eq ptr %.sroa.17.0.copyload, null ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 32
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i
  %i.ar = phi ptr [ %i.an, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i ], [ %i.cx, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %i.as = phi i64 [ 1, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i ], [ %i.cz, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 5 uses
  %.sroa.13.0 = phi ptr [ %.sroa.13.0.copyload, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i ], [ %.sroa.13.2, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %.sroa.8.0 = phi ptr [ %.sroa.8.0.copyload, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i ], [ %.sroa.8.4, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %.sroa.011.0 = phi ptr [ %.sroa.011.0.copyload, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i ], [ %.sroa.011.3, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %i.at = phi i64 [ %i.m, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.lr.ph.i.i ], [ %i.au, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %i.au = add i64 %i.at, -1                       ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i
  %.sroa.13.2 = phi ptr [ %.sroa.13.0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i ], [ %i.bj, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 8 uses
  %.sroa.8.2 = phi ptr [ %.sroa.8.0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i ], [ %i.bi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 5 uses
  %.sroa.011.1 = phi ptr [ %.sroa.011.0, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i ], [ %i.bg, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 6 uses
  %.not.i.i.i6 = icmp eq ptr %.sroa.8.2, null
  br i1 %.not.i.i.i6, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.13.2, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !invariant.load !11, !noalias !2043, !nonnull !11
  %i.ax = call { i1, i8 } %i.aw(ptr noundef nonnull %.sroa.8.2) #34, !noalias !2043, !inline_history !5 ; 2 uses
  %i.ay = extractvalue { i1, i8 } %i.ax, 0
  br i1 %i.ay, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemhEL_EhNvYB16_B1G_4nextECslbrwWrVtb7E_5uu_tr.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %.sroa.13.2, align 8, !invariant.load !11, !noalias !2043 ; 2 uses
  %.not.i.i.i.i.i7 = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void %i.az(ptr noundef nonnull %.sroa.8.2) #34, !noalias !2043, !inline_history !6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.13.2, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !range !12, !invariant.load !11, !noalias !2043 ; 2 uses
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i8

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i8: ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.13.2, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !14, !invariant.load !11, !noalias !2043
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.2, i64 noundef %i.bb, i64 noundef range(i64 1, -9223372036854775807) %i.be) #32, !noalias !2043
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9: ; preds = %bb.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i8, %bb.j
  %.not.i5.i.i = icmp eq ptr %.sroa.011.1, null
  %i.bf = icmp eq ptr %.sroa.011.1, %.sroa.6.0.copyload
  %or.cond = select i1 %.not.i5.i.i, i1 true, i1 %i.bf
  br i1 %or.cond, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.011.1, i64 16 ; 2 uses
  %i.bh = call fastcc { ptr, ptr } @_RNvYNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence7flattenINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRBE_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.011.1) #34, !noalias !2044 ; 2 uses
  %i.bi = extractvalue { ptr, ptr } %i.bh, 0      ; 2 uses
  %.not.i.i10 = icmp eq ptr %i.bi, null
  br i1 %.not.i.i10, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i
  %i.bj = extractvalue { ptr, ptr } %i.bh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ], !noalias !2045
  br label %bb.j

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9
  %.sroa.011.2 = phi ptr [ %.sroa.011.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i9 ], [ %i.bg, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i ]
  br i1 %.not.i8.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload) ]
  %i.bk = load ptr, ptr %i.ap, align 8, !invariant.load !11, !noalias !2046, !nonnull !11
  %i.bl = call { i1, i8 } %i.bk(ptr noundef nonnull %.sroa.17.0.copyload) #34, !noalias !2046, !inline_history !5 ; 2 uses
  %i.bm = extractvalue { i1, i8 } %i.bl, 0
  br i1 %i.bm, label %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemhEL_EhNvYB16_B1G_4nextECslbrwWrVtb7E_5uu_tr.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = load ptr, ptr %.sroa.21.0.copyload, align 8, !invariant.load !11, !noalias !2046 ; 2 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i.i10.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void %i.bn(ptr noundef nonnull %.sroa.17.0.copyload) #34, !noalias !2046, !inline_history !6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !range !12, !invariant.load !11, !noalias !2046 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit.sink.split

_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemhEL_EhNvYB16_B1G_4nextECslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %bb.k, %bb.o
  %.sroa.8.4 = phi ptr [ null, %bb.o ], [ %.sroa.8.2, %bb.k ] ; 4 uses
  %.sroa.011.3 = phi ptr [ %.sroa.011.2, %bb.o ], [ %.sroa.011.1, %bb.k ] ; 3 uses
  %.pn = phi { i1, i8 } [ %i.bl, %bb.o ], [ %i.ax, %bb.k ]
  %.sroa.3.0.i13.pn.i.i = extractvalue { i1, i8 } %.pn, 1
  %i.br = icmp sgt i64 %i.as, -1
  call void @llvm.assume(i1 %i.br)
  %i.bs = load i64, ptr %i.e, align 8, !range !12, !alias.scope !2045, !noundef !11
  %i.bt = icmp eq i64 %i.as, %i.bs
  br i1 %i.bt, label %bb.y, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread.i.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit
  %.sroa.13.1 = phi ptr [ %.sroa.13.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ], [ %.sroa.13.2, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 4 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ], [ %.sroa.8.4, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 3 uses
  %i.bu = icmp eq ptr %.sroa.8.1, null
  br i1 %i.bu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.1) ]
  %i.bv = load ptr, ptr %.sroa.13.1, align 8, !invariant.load !11, !noalias !2047 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void %i.bv(ptr noundef nonnull %.sroa.8.1) #34, !noalias !2047, !inline_history !1987
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 8
  %i.bx = load i64, ptr %i.bw, align 8, !range !12, !invariant.load !11, !noalias !2047 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.13.1, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !range !14, !invariant.load !11, !noalias !2047
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.1, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) %i.ca) #32, !noalias !2047
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i, %bb.u, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread.i.i
  %i.cb = icmp eq ptr %.sroa.17.0.copyload, null
  br i1 %i.cb, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit, label %bb.v

bb.v:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload) ]
  %i.cc = load ptr, ptr %.sroa.21.0.copyload, align 8, !invariant.load !11, !noalias !2047 ; 2 uses
  %.not.i.i4.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i4.i.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void %i.cc(ptr noundef nonnull %.sroa.17.0.copyload) #34, !noalias !2047, !inline_history !1987
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !12, !invariant.load !11, !noalias !2047 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit.sink.split

bb.y:                                             ; preds = %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemhEL_EhNvYB16_B1G_4nextECslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.cg = icmp eq i64 %i.au, 0
  br i1 %i.cg, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2048)
  call void @llvm.experimental.noalias.scope.decl(metadata !2049)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2050
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.8.4, null
  br i1 %.not.i.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.2) ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.13.2, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !invariant.load !11, !noalias !2051, !nonnull !11
  call void %i.ci(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.sroa.8.4) #34, !noalias !2052, !inline_history !2005
  %.pre.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !2050
  %.pre74.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !range !22, !noalias !2050
  %.pre76.i.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i.i, align 8, !noalias !2050
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i: ; preds = %bb.aa, %bb.z
  %i.cj = phi i64 [ %.pre76.i.i.i.i.i, %bb.aa ], [ 0, %bb.z ]
  %i.ck = phi i64 [ %.pre74.i.i.i.i.i, %bb.aa ], [ 1, %bb.z ] ; 2 uses
  %i.cl = phi i64 [ %.pre.i.i.i.i.i, %bb.aa ], [ 0, %bb.z ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2050
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2050
  br i1 %.not.i8.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.21.0.copyload) ]
  %i.cm = load ptr, ptr %i.aq, align 8, !invariant.load !11, !noalias !2053, !nonnull !11
  call void %i.cm(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %.sroa.17.0.copyload) #34, !noalias !2054, !inline_history !2005
  %.pre77.i.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !2050
  %.pre79.i.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i.i, align 8, !range !22, !noalias !2050
  %.pre81.i.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i.i, align 8, !noalias !2050
  %i.cn = call i64 @llvm.uadd.sat.i64(i64 %i.cl, i64 %.pre77.i.i.i.i.i)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i.i: ; preds = %bb.ab, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i
  %i.co = phi i64 [ %.pre81.i.i.i.i.i, %bb.ab ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i ]
  %i.cp = phi i64 [ %.pre79.i.i.i.i.i, %bb.ab ], [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i ] ; 2 uses
  %i.cq = phi i64 [ %i.cn, %bb.ab ], [ %i.cl, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2050
  %.not54.i.i.i.i.i = icmp eq ptr %.sroa.011.3, null
  br i1 %.not54.i.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.cr = icmp eq ptr %.sroa.6.0.copyload, %.sroa.011.3
  %i.cs = trunc nuw i64 %i.ck to i1
  %i.ct = trunc nuw i64 %i.cp to i1
  %op.rdx = select i1 %i.cr, i1 %i.cs, i1 false
  %op.rdx72 = select i1 %op.rdx, i1 %i.ct, i1 false
  br i1 %op.rdx72, label %bb.ae, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i.i

bb.ad:                                            ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i.i
  %i.cu = and i64 %i.cp, %i.ck
  %or.cond55.not.i.i.i.i.i = icmp eq i64 %i.cu, 0
  br i1 %or.cond55.not.i.i.i.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.cv = add i64 %i.co, %i.cj
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i.i: ; preds = %bb.ae, %bb.ad, %bb.ac
  %.sink85.i.i.sroa.phi.i.i.i = phi ptr [ %.sroa.8.i.i.i, %bb.ae ], [ %.sroa.5.i.i.i, %bb.ad ], [ %.sroa.5.i.i.i, %bb.ac ]
  %.sink.i.i.i.i.i = phi i64 [ %i.cv, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ]
  store i64 %.sink.i.i.i.i.i, ptr %.sink85.i.i.sroa.phi.i.i.i, align 8, !alias.scope !2055, !noalias !2056
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i)
  %..i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 %i.cq)
  %i.cw = call i64 @llvm.uadd.sat.i64(i64 %..i.i.i.i, i64 1)
  br label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.i.i

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i.i, %bb.y
  %..i.sink.i.i.i = phi i64 [ %i.cw, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i.i ], [ 1, %bb.y ]
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.as, i64 noundef %..i.sink.i.i.i, i64 noundef 1, i64 noundef 1) #32, !noalias !2057
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2045
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.i.i, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemhEL_EhNvYB16_B1G_4nextECslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.cx = phi ptr [ %.pre, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_9size_hintB1P_.exit.i.i ], [ %i.ar, %_RINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten17and_then_or_clearINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB6_6traits8iterator8Iteratorp4ItemhEL_EhNvYB16_B1G_4nextECslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.as
  store i8 %.sroa.3.0.i13.pn.i.i, ptr %i.cy, align 1, !noalias !2058
  %i.cz = add nuw i64 %i.as, 1                    ; 2 uses
  store i64 %i.cz, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2045
  %i.da = icmp eq i64 %i.au, 0
  br i1 %i.da, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread.i.i, label %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.i.i

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit.sink.split: ; preds = %bb.x, %bb.r
  %.sink = phi i64 [ %i.bp, %bb.r ], [ %i.ce, %bb.x ]
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.21.0.copyload, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !range !14, !invariant.load !11, !noalias !2045
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.17.0.copyload, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) %i.dc) #32, !noalias !2045
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit.sink.split, %bb.r, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i.i, %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B21_B1Z_7flattenEEEB23_.exit

_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread: ; preds = %bb.a, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit
  store i64 0, ptr %0, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.de, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2059)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2061)
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val2.i.i.i = load ptr, ptr %i.df, align 8, !alias.scope !2062, !noundef !11 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !2062 ; 4 uses
  %i.dh = icmp eq ptr %.val2.i.i.i, null
  br i1 %i.dh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i, label %bb.af

bb.af:                                            ; preds = %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i) ]
  %i.di = load ptr, ptr %.val3.i.i.i, align 8, !invariant.load !11, !noalias !2062 ; 2 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i.i5, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void %i.di(ptr noundef nonnull %.val2.i.i.i) #34, !noalias !2062, !inline_history !2020
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !12, !invariant.load !11, !noalias !2062 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !14, !invariant.load !11, !noalias !2062
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) %i.dn) #32, !noalias !2062
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ah, %_RNvXs_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4takeINtB4_4TakeINtNtB6_7flatten7FlatMapINtNtNtBa_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB8_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1N_B1L_7flattenEEB33_4nextB1P_.exit.thread
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i.i = load ptr, ptr %i.do, align 8, !alias.scope !2062, !noundef !11 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !2062 ; 4 uses
  %i.dq = icmp eq ptr %.val.i.i.i, null
  br i1 %i.dq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B21_B1Z_7flattenEEEB23_.exit, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  %i.dr = load ptr, ptr %.val1.i.i.i, align 8, !invariant.load !11, !noalias !2062 ; 2 uses
  %.not.i.i4.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i4.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void %i.dr(ptr noundef nonnull %.val.i.i.i) #34, !noalias !2062, !inline_history !2020
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !12, !invariant.load !11, !noalias !2062 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B21_B1Z_7flattenEEEB23_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i: ; preds = %bb.ak
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !14, !invariant.load !11, !noalias !2062
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #32, !noalias !2062
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B21_B1Z_7flattenEEEB23_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4take4TakeINtNtBG_7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B21_B1Z_7flattenEEEB23_.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i.i, %bb.ak, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters4take4TakeINtNtB1h_7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2U_B2S_7flattenEEE11spec_extendB2W_.exit
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1D_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB39_8Sequence20solve_set_characterss0_0EE9from_iterB3b_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef align 8 dereferenceable(16) %1) #34 ; 2 uses
  %i.d = extractvalue { i1, i8 } %i.c, 0
  br i1 %i.d, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit, label %bb.c

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2071
  %i.e = tail call noundef dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 1) #32, !noalias !2071 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #35
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit
  %i.g = extractvalue { i1, i8 } %i.c, 1
  store i8 %i.g, ptr %i.e, align 1
  store i64 8, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2073)
  %i.h = call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34, !noalias !2074 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss0_0EE11spec_extendB2T_.exit

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.j = phi ptr [ %i.p, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.e, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ]
  %i.k = phi i64 [ %i.q, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ 8, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ] ; 3 uses
  %i.l = phi i64 [ %i.s, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ] ; 4 uses
  %.pn.i.i = phi { i1, i8 } [ %i.t, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ]
  %i.m = extractvalue { i1, i8 } %.pn.i.i, 1
  %i.n = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.l, %i.k
  br i1 %i.o, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i: ; preds = %.lr.ph.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef 1, i64 noundef 1, i64 noundef 1) #32, !noalias !2075
  %.pre3.i.i = load i64, ptr %i.b, align 8, !range !12, !alias.scope !2074
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2074
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i, %.lr.ph.i.i
  %i.p = phi ptr [ %.pre, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i ], [ %i.j, %.lr.ph.i.i ] ; 2 uses
  %i.q = phi i64 [ %.pre3.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i ], [ %i.k, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  store i8 %i.m, ptr %i.r, align 1, !noalias !2076
  %i.s = add nuw i64 %i.l, 1                      ; 2 uses
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2074
  %i.t = call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss0_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34, !noalias !2074 ; 2 uses
  %i.u = extractvalue { i1, i8 } %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss0_0EE11spec_extendB2T_.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss0_0EE11spec_extendB2T_.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss0_0EE11spec_extendB2T_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1D_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB39_8Sequence20solve_set_characterss4_0EE9from_iterB3b_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef align 8 dereferenceable(16) %1) #34 ; 2 uses
  %i.d = extractvalue { i1, i8 } %i.c, 0
  br i1 %i.d, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit, label %bb.c

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit: ; preds = %bb.a
  tail call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2085
  %i.e = tail call noundef dereferenceable_or_null(8) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 1) #32, !noalias !2085 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit

bb.b:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit
  tail call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 8) #35
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit
  %i.g = extractvalue { i1, i8 } %i.c, 1
  store i8 %i.g, ptr %i.e, align 1
  store i64 8, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2087)
  %i.h = call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34, !noalias !2088 ; 2 uses
  %i.i = extractvalue { i1, i8 } %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss4_0EE11spec_extendB2T_.exit

.lr.ph.i.i:                                       ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.j = phi ptr [ %i.p, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.e, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ]
  %i.k = phi i64 [ %i.q, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ 8, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ] ; 3 uses
  %i.l = phi i64 [ %i.s, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ 1, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ] ; 4 uses
  %.pn.i.i = phi { i1, i8 } [ %i.t, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.h, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ]
  %i.m = extractvalue { i1, i8 } %.pn.i.i, 1
  %i.n = icmp sgt i64 %i.l, -1
  tail call void @llvm.assume(i1 %i.n)
  %i.o = icmp eq i64 %i.l, %i.k
  br i1 %i.o, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i: ; preds = %.lr.ph.i.i
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.k, i64 noundef 1, i64 noundef 1, i64 noundef 1) #32, !noalias !2089
  %.pre3.i.i = load i64, ptr %i.b, align 8, !range !12, !alias.scope !2088
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2088
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i, %.lr.ph.i.i
  %i.p = phi ptr [ %.pre, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i ], [ %i.j, %.lr.ph.i.i ] ; 2 uses
  %i.q = phi i64 [ %.pre3.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator9size_hintB1O_.exit.i.i ], [ %i.k, %.lr.ph.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.l
  store i8 %i.m, ptr %i.r, align 1, !noalias !2090
  %i.s = add nuw i64 %i.l, 1                      ; 2 uses
  store i64 %i.s, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2088
  %i.t = call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB1M_8Sequence20solve_set_characterss4_0ENtNtNtB9_6traits8iterator8Iterator4nextB1O_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #34, !noalias !2088 ; 2 uses
  %i.u = extractvalue { i1, i8 } %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss4_0EE11spec_extendB2T_.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss4_0EE11spec_extendB2T_.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtNtB1l_3ops5range14RangeInclusivehENCNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB2R_8Sequence20solve_set_characterss4_0EE11spec_extendB2T_.exit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvXNtNtCs7tKScEop1B6_5alloc3vec21spec_from_iter_nestedINtB4_3VechEINtB2_18SpecFromIterNestedhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1D_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1B_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2T_B2R_7flattenEE9from_iterB2V_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i.i = alloca i64, align 8              ; 4 uses
  %.sroa.7.i.i = alloca i64, align 8              ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = tail call fastcc { i1, i8 } @_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_(ptr noalias nofree noundef align 8 dereferenceable(48) %1) #34 ; 2 uses
  %i.g = extractvalue { i1, i8 } %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.ah

bb.b:                                             ; preds = %bb.a
  %i.i = extractvalue { i1, i8 } %i.f, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2178
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !2179, !noundef !11 ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  br i1 %.not.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !2181, !nonnull !11, !align !13, !noundef !11
  %i.l = getelementptr inbounds nuw i8, ptr %.val3.i.i.i, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !invariant.load !11, !noalias !2182, !nonnull !11
  call void %i.m(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull %i.j) #34, !noalias !2183, !inline_history !2105
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !2178
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre74.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !range !22, !noalias !2178
  %.phi.trans.insert75.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre76.i.i = load i64, ptr %.phi.trans.insert75.i.i, align 8, !noalias !2178
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %bb.c, %bb.b
  %i.n = phi i64 [ %.pre76.i.i, %bb.c ], [ 0, %bb.b ]
  %i.o = phi i64 [ %.pre74.i.i, %bb.c ], [ 1, %bb.b ] ; 2 uses
  %i.p = phi i64 [ %.pre.i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2178
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !2179, !noundef !11 ; 8 uses
  %.not53.i.i = icmp eq ptr %i.r, null            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  br i1 %.not53.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val3.i63.i.i = load ptr, ptr %i.s, align 8, !alias.scope !2185, !nonnull !11, !align !13, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %.val3.i63.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !11, !noalias !2186, !nonnull !11
  call void %i.u(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull %i.r) #34, !noalias !2187, !inline_history !2105
  %.pre77.i.i = load i64, ptr %i.c, align 8, !noalias !2178
  %.phi.trans.insert78.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre79.i.i = load i64, ptr %.phi.trans.insert78.i.i, align 8, !range !22, !noalias !2178
  %.phi.trans.insert80.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre81.i.i = load i64, ptr %.phi.trans.insert80.i.i, align 8, !noalias !2178
  %i.v = call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 %.pre77.i.i)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i: ; preds = %bb.d, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i
  %i.w = phi i64 [ %.pre81.i.i, %bb.d ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i ]
  %.fr115 = phi i64 [ %.pre79.i.i, %bb.d ], [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i ] ; 2 uses
  %i.x = phi i64 [ %i.v, %bb.d ], [ %i.p, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2178
  %i.y = load ptr, ptr %1, align 8, !alias.scope !2179, !noundef !11 ; 3 uses
  %.not54.i.i = icmp eq ptr %i.y, null
  br i1 %.not54.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val61.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2179, !nonnull !11, !noundef !11
  %i.aa = icmp eq ptr %.val61.i.i, %i.y
  %i.ab = trunc nuw i64 %i.o to i1
  %i.ac = trunc nuw i64 %.fr115 to i1
  %op.rdx113 = select i1 %i.aa, i1 %i.ab, i1 false
  %op.rdx114 = select i1 %op.rdx113, i1 %i.ac, i1 false
  br i1 %op.rdx114, label %bb.g, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit

bb.f:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i
  %i.ad = and i64 %.fr115, %i.o
  %or.cond55.not.i.i = icmp eq i64 %i.ad, 0
  br i1 %or.cond55.not.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = add i64 %i.w, %i.n
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %.sink85.i.i.sroa.phi = phi ptr [ %.sroa.7, %bb.g ], [ %.sroa.5, %bb.f ], [ %.sroa.5, %bb.e ]
  %.sink.i.i = phi i64 [ %i.ae, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ]
  store i64 %.sink.i.i, ptr %.sink85.i.i.sroa.phi, align 8, !alias.scope !2188
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %i.af = call i64 @llvm.uadd.sat.i64(i64 %i.x, i64 1)
  %..i = call noundef i64 @llvm.umax.i64(i64 %i.af, i64 8) ; 5 uses
  %.not.i.i4 = icmp slt i64 %..i, 0
  br i1 %.not.i.i4, label %bb.i, label %bb.h, !prof !28

bb.h:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !noalias !2189
  %i.ag = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %..i, i64 noundef range(i64 1, 9) 1) #32, !noalias !2189 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit

bb.i:                                             ; preds = %bb.h, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.h ], [ 0, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4.0.ph.i, i64 %..i) #35
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit: ; preds = %bb.h
  store i8 %i.i, ptr %i.ag, align 1
  store i64 %..i, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.ag, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.19.0.copyload = load ptr, ptr %.sroa.19.0..sroa_idx, align 8
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.31.0.copyload = load ptr, ptr %.sroa.31.0..sroa_idx, align 8 ; 11 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  br label %bb.j

bb.j:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i20, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit
  %.sroa.19.3 = phi ptr [ %.sroa.19.0.copyload, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ], [ %i.aw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i20 ] ; 5 uses
  %.sroa.11.5 = phi ptr [ %i.j, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ], [ %i.av, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i20 ] ; 5 uses
  %.sroa.032.4 = phi ptr [ %i.y, %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslbrwWrVtb7E_5uu_tr.exit ], [ %i.at, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i20 ] ; 6 uses
  %.not.i.i.i13 = icmp eq ptr %.sroa.11.5, null
  br i1 %.not.i.i.i13, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.19.3, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !11, !noalias !2192, !nonnull !11
  %i.ak = call { i1, i8 } %i.aj(ptr noundef nonnull %.sroa.11.5) #34, !noalias !2192, !inline_history !5 ; 2 uses
  %i.al = extractvalue { i1, i8 } %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load ptr, ptr %.sroa.19.3, align 8, !invariant.load !11, !noalias !2192 ; 2 uses
  %.not.i.i.i.i.i14 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i14, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void %i.am(ptr noundef nonnull %.sroa.11.5) #34, !noalias !2192, !inline_history !6
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.19.3, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !12, !invariant.load !11, !noalias !2192 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i15

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i15: ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.19.3, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !14, !invariant.load !11, !noalias !2192
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.5, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) %i.ar) #32, !noalias !2192
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16: ; preds = %bb.n, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i15, %bb.j
  %.not.i5.i.i17 = icmp eq ptr %.sroa.032.4, null
  %i.as = icmp eq ptr %.sroa.032.4, %.sroa.8.0.copyload
  %or.cond = select i1 %.not.i5.i.i17, i1 true, i1 %i.as
  br i1 %or.cond, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i21, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i18

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i18: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.032.4, i64 16 ; 2 uses
  %i.au = call fastcc { ptr, ptr } @_RNvYNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence7flattenINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRBE_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.032.4) #34, !noalias !2193 ; 2 uses
  %i.av = extractvalue { ptr, ptr } %i.au, 0      ; 2 uses
  %.not.i.i19 = icmp eq ptr %i.av, null
  br i1 %.not.i.i19, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i21, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i20

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i20: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i18
  %i.aw = extractvalue { ptr, ptr } %i.au, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ], !noalias !2194
  br label %bb.j

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i21: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i18, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16
  %.sroa.032.5 = phi ptr [ %.sroa.032.4, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i16 ], [ %i.at, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i18 ]
  br i1 %.not53.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit, label %bb.o

bb.o:                                             ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i21
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.copyload) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !11, !noalias !2195, !nonnull !11
  %i.az = call { i1, i8 } %i.ay(ptr noundef nonnull %i.r) #34, !noalias !2195, !inline_history !5 ; 2 uses
  %i.ba = extractvalue { i1, i8 } %i.az, 0
  br i1 %i.ba, label %.lr.ph.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %.sroa.31.0.copyload, align 8, !invariant.load !11, !noalias !2195 ; 2 uses
  %.not.i.i.i10.i.i24 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i10.i.i24, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void %i.bb(ptr noundef nonnull %i.r) #34, !noalias !2195, !inline_history !6
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !12, !invariant.load !11, !noalias !2195 ; 2 uses
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit.sink.split

.lr.ph.i.i:                                       ; preds = %bb.k, %bb.o
  %.sroa.11.7 = phi ptr [ null, %bb.o ], [ %.sroa.11.5, %bb.k ]
  %.sroa.032.6 = phi ptr [ %.sroa.032.5, %bb.o ], [ %.sroa.032.4, %bb.k ]
  %.pn = phi { i1, i8 } [ %i.az, %bb.o ], [ %i.ak, %bb.k ]
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.phi.trans.insert75.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.phi.trans.insert78.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.phi.trans.insert80.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 24
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge, %.lr.ph.i.i
  %i.bh = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %i.cc, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.3, %.lr.ph.i.i ], [ %.sroa.19.2, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ] ; 3 uses
  %.sroa.11.1 = phi ptr [ %.sroa.11.7, %.lr.ph.i.i ], [ %.sroa.11.1.be, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ] ; 3 uses
  %.sroa.032.0 = phi ptr [ %.sroa.032.6, %.lr.ph.i.i ], [ %.sroa.032.0.be, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ] ; 3 uses
  %i.bi = phi i64 [ %..i, %.lr.ph.i.i ], [ %i.cd, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ] ; 3 uses
  %i.bj = phi i64 [ 1, %.lr.ph.i.i ], [ %i.cf, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ] ; 4 uses
  %.pn.pn = phi { i1, i8 } [ %.pn, %.lr.ph.i.i ], [ %.pn.pn.be, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge ]
  %.sroa.3.0.i13.pn.i.i27.pn = extractvalue { i1, i8 } %.pn.pn, 1
  %i.bk = icmp sgt i64 %i.bj, -1
  call void @llvm.assume(i1 %i.bk)
  %i.bl = icmp eq i64 %i.bj, %i.bi
  br i1 %i.bl, label %bb.s, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

bb.s:                                             ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2196)
  call void @llvm.experimental.noalias.scope.decl(metadata !2197)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2198
  %.not.i.i.i.i = icmp eq ptr %.sroa.11.1, null
  br i1 %.not.i.i.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.19.1) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.19.1, i64 32
  %i.bn = load ptr, ptr %i.bm, align 8, !invariant.load !11, !noalias !2199, !nonnull !11
  call void %i.bn(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull %.sroa.11.1) #34, !noalias !2200, !inline_history !2148
  %.pre.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !2198
  %.pre74.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !22, !noalias !2198
  %.pre76.i.i.i.i = load i64, ptr %.phi.trans.insert75.i.i.i.i, align 8, !noalias !2198
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  %i.bo = phi i64 [ %.pre76.i.i.i.i, %bb.t ], [ 0, %bb.s ]
  %i.bp = phi i64 [ %.pre74.i.i.i.i, %bb.t ], [ 1, %bb.s ] ; 2 uses
  %i.bq = phi i64 [ %.pre.i.i.i.i, %bb.t ], [ 0, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2198
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2198
  br i1 %.not53.i.i, label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.copyload) ]
  %i.br = load ptr, ptr %i.bf, align 8, !invariant.load !11, !noalias !2201, !nonnull !11
  call void %i.br(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.r) #34, !noalias !2202, !inline_history !2148
  %.pre77.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !2198
  %.pre79.i.i.i.i = load i64, ptr %.phi.trans.insert78.i.i.i.i, align 8, !range !22, !noalias !2198
  %.pre81.i.i.i.i = load i64, ptr %.phi.trans.insert80.i.i.i.i, align 8, !noalias !2198
  %i.bs = call i64 @llvm.uadd.sat.i64(i64 %i.bq, i64 %.pre77.i.i.i.i)
  br label %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i

_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i: ; preds = %bb.u, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i
  %i.bt = phi i64 [ %.pre81.i.i.i.i, %bb.u ], [ 0, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i ]
  %i.bu = phi i64 [ %.pre79.i.i.i.i, %bb.u ], [ 1, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i ] ; 2 uses
  %i.bv = phi i64 [ %i.bs, %bb.u ], [ %i.bq, %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2198
  %.not54.i.i.i.i = icmp eq ptr %.sroa.032.0, null
  br i1 %.not54.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload) ]
  %i.bw = icmp eq ptr %.sroa.8.0.copyload, %.sroa.032.0
  %i.bx = trunc nuw i64 %i.bp to i1
  %i.by = trunc nuw i64 %i.bu to i1
  %op.rdx = select i1 %i.bw, i1 %i.bx, i1 false
  %op.rdx112 = select i1 %op.rdx, i1 %i.by, i1 false
  br i1 %op.rdx112, label %bb.x, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i

bb.w:                                             ; preds = %_RINvMNtCs6JMX4GRUq9U_4core6optionINtB3_6OptionRINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB5_4iter6traits8iterator8Iteratorp4ItemhEL_EE6map_orTjIBw_jEENvYBJ_B1j_9size_hintECslbrwWrVtb7E_5uu_tr.exit64.i.i.i.i
  %i.bz = and i64 %i.bu, %i.bp
  %or.cond55.not.i.i.i.i = icmp eq i64 %i.bz, 0
  br i1 %or.cond55.not.i.i.i.i, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ca = add i64 %i.bt, %i.bo
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i: ; preds = %bb.x, %bb.w, %bb.v
  %.sink85.i.i.sroa.phi.i.i = phi ptr [ %.sroa.7.i.i, %bb.x ], [ %.sroa.5.i.i, %bb.w ], [ %.sroa.5.i.i, %bb.v ]
  %.sink.i.i.i.i = phi i64 [ %i.ca, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ]
  store i64 %.sink.i.i.i.i, ptr %.sink85.i.i.sroa.phi.i.i, align 8, !alias.scope !2203, !noalias !2204
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %i.cb = call i64 @llvm.uadd.sat.i64(i64 %i.bv, i64 1)
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECslbrwWrVtb7E_5uu_tr(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e, i64 noundef %i.bi, i64 noundef %i.cb, i64 noundef 1, i64 noundef 1) #32, !noalias !2205
  %.pre4.i.i = load i64, ptr %i.e, align 8, !range !12, !alias.scope !2194
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !2194
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit
  %i.cc = phi ptr [ %.pre, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i ], [ %i.bh, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit ] ; 2 uses
  %i.cd = phi i64 [ %.pre4.i.i, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_9size_hintB1y_.exit.i.i ], [ %i.bi, %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bj
  store i8 %.sroa.3.0.i13.pn.i.i27.pn, ptr %i.ce, align 1, !noalias !2204
  %i.cf = add nuw i64 %i.bj, 1                    ; 2 uses
  store i64 %i.cf, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !2194
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i9, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i
  %.sroa.19.2 = phi ptr [ %.sroa.19.1, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.cu, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i9 ] ; 5 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.1, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.ct, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i9 ] ; 5 uses
  %.sroa.032.1 = phi ptr [ %.sroa.032.0, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCslbrwWrVtb7E_5uu_tr.exit.i.i ], [ %i.cr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i9 ] ; 6 uses
  %.not.i.i.i = icmp eq ptr %.sroa.11.2, null
  br i1 %.not.i.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.19.2, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !invariant.load !11, !noalias !2206, !nonnull !11
  %i.ci = call { i1, i8 } %i.ch(ptr noundef nonnull %.sroa.11.2) #34, !noalias !2206, !inline_history !5 ; 2 uses
  %i.cj = extractvalue { i1, i8 } %i.ci, 0
  br i1 %i.cj, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ck = load ptr, ptr %.sroa.19.2, align 8, !invariant.load !11, !noalias !2206 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void %i.ck(ptr noundef nonnull %.sroa.11.2) #34, !noalias !2206, !inline_history !6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.19.2, i64 8
  %i.cm = load i64, ptr %i.cl, align 8, !range !12, !invariant.load !11, !noalias !2206 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.19.2, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !range !14, !invariant.load !11, !noalias !2206
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.11.2, i64 noundef %i.cm, i64 noundef range(i64 1, -9223372036854775807) %i.cp) #32, !noalias !2206
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i: ; preds = %bb.ac, %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.y
  %.not.i5.i.i = icmp eq ptr %.sroa.032.1, null
  %i.cq = icmp eq ptr %.sroa.032.1, %.sroa.8.0.copyload
  %or.cond48 = select i1 %.not.i5.i.i, i1 true, i1 %i.cq
  br i1 %or.cond48, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.032.1, i64 16 ; 2 uses
  %i.cs = call fastcc { ptr, ptr } @_RNvYNvMs1_NtCslbrwWrVtb7E_5uu_tr9operationNtB8_8Sequence7flattenINtNtNtCs6JMX4GRUq9U_4core3ops8function5FnMutTRBE_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %.sroa.032.1) #34, !noalias !2207 ; 2 uses
  %i.ct = extractvalue { ptr, ptr } %i.cs, 0      ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i8, label %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i9

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i9: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i
  %i.cu = extractvalue { ptr, ptr } %i.cs, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cu) ], !noalias !2194
  br label %bb.y

_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i
  %.sroa.032.2 = phi ptr [ %.sroa.032.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i.i ], [ %i.cr, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i ]
  br i1 %.not53.i.i, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit, label %bb.ad

bb.ad:                                            ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.31.0.copyload) ]
  %i.cv = load ptr, ptr %i.bg, align 8, !invariant.load !11, !noalias !2208, !nonnull !11
  %i.cw = call { i1, i8 } %i.cv(ptr noundef nonnull %i.r) #34, !noalias !2208, !inline_history !5 ; 2 uses
  %i.cx = extractvalue { i1, i8 } %i.cw, 0
  br i1 %i.cx, label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge, label %bb.ae

_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit.backedge: ; preds = %bb.z, %bb.ad
  %.sroa.11.1.be = phi ptr [ null, %bb.ad ], [ %.sroa.11.2, %bb.z ]
  %.sroa.032.0.be = phi ptr [ %.sroa.032.2, %bb.ad ], [ %.sroa.032.1, %bb.z ]
  %.pn.pn.be = phi { i1, i8 } [ %i.cw, %bb.ad ], [ %i.ci, %bb.z ]
  br label %_RNvXs1_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1w_B1u_7flattenEB2M_4nextB1y_.exit

bb.ae:                                            ; preds = %bb.ad
  %i.cy = load ptr, ptr %.sroa.31.0.copyload, align 8, !invariant.load !11, !noalias !2208 ; 2 uses
  %.not.i.i.i10.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i10.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void %i.cy(ptr noundef nonnull %i.r) #34, !noalias !2208, !inline_history !6
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 8
  %i.da = load i64, ptr %i.cz, align 8, !range !12, !invariant.load !11, !noalias !2208 ; 2 uses
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit, label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit.sink.split

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit.sink.split: ; preds = %bb.ag, %bb.r
  %.sink = phi i64 [ %i.bd, %bb.r ], [ %i.da, %bb.ag ]
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.31.0.copyload, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !range !14, !invariant.load !11, !noalias !2194
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.r, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) %i.dd) #32, !noalias !2194
  br label %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit

_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit: ; preds = %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit.sink.split, %_RNvXs9_NtNtNtCs6JMX4GRUq9U_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceENvMs1_B1G_B1E_7flattenEEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i21, %bb.r, %bb.ag
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1J_B1H_7flattenEEB1L_.exit

bb.ah:                                            ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.df, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2210)
  %.val2.i.i = load ptr, ptr %i.h, align 8, !alias.scope !2211, !noundef !11 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val3.i.i = load ptr, ptr %i.dg, align 8, !alias.scope !2211 ; 4 uses
  %i.dh = icmp eq ptr %.val2.i.i, null
  br i1 %i.dh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i) ]
  %i.di = load ptr, ptr %.val3.i.i, align 8, !invariant.load !11, !noalias !2211 ; 2 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.di, null
  br i1 %.not.i.i.i.i7, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  tail call void %i.di(ptr noundef nonnull %.val2.i.i) #34, !noalias !2211, !inline_history !2173
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.dj = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !range !12, !invariant.load !11, !noalias !2211 ; 2 uses
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.ak
  %i.dm = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 16
  %i.dn = load i64, ptr %i.dm, align 8, !range !14, !invariant.load !11, !noalias !2211
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) %i.dn) #32, !noalias !2211
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.ak, %bb.ah
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val.i.i = load ptr, ptr %i.do, align 8, !alias.scope !2211, !noundef !11 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.val1.i.i = load ptr, ptr %i.dp, align 8, !alias.scope !2211 ; 4 uses
  %i.dq = icmp eq ptr %.val.i.i, null
  br i1 %i.dq, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1J_B1H_7flattenEEB1L_.exit, label %bb.al

bb.al:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.dr = load ptr, ptr %.val1.i.i, align 8, !invariant.load !11, !noalias !2211 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i4.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void %i.dr(ptr noundef nonnull %.val.i.i) #34, !noalias !2211, !inline_history !2173
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !range !12, !invariant.load !11, !noalias !2211 ; 2 uses
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1J_B1H_7flattenEEB1L_.exit, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i: ; preds = %bb.an
  %i.dv = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.dw = load i64, ptr %i.dv, align 8, !range !14, !invariant.load !11, !noalias !2211
  tail call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.dt, i64 noundef range(i64 1, -9223372036854775807) %i.dw) #32, !noalias !2211
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1J_B1H_7flattenEEB1L_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtNtB4_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtBI_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B1J_B1H_7flattenEEB1L_.exit: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i5.i.i, %bb.an, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs7tKScEop1B6_5alloc5boxed3BoxDNtNtNtNtB4_4iter6traits8iterator8Iteratorp4ItemhEL_EEECslbrwWrVtb7E_5uu_tr.exit.i.i, %_RNvXNtNtCs7tKScEop1B6_5alloc3vec11spec_extendINtB4_3VechEINtB2_10SpecExtendhINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters7flatten7FlatMapINtNtNtB1l_5slice4iter4IterNtNtCslbrwWrVtb7E_5uu_tr9operation8SequenceEINtNtB6_5boxed3BoxDNtNtNtB1j_6traits8iterator8Iteratorp4ItemhEL_ENvMs1_B2B_B2z_7flattenEE11spec_extendB2D_.exit
  ret void
}

end_hunk_0
