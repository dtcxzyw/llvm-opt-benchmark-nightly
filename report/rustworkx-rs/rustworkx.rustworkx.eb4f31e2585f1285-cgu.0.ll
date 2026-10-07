Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 261
loop-unroll.NumUnrolled: 405
begin_hunk_0_@_RINvNvNtCs3Tt2PVjAfPX_5numpy5array7as_view5innerINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx:bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !38642, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38643)
  call void @llvm.experimental.noalias.scope.decl(metadata !38644)
  call void @llvm.experimental.noalias.scope.decl(metadata !38645)
  %i.p = icmp eq i32 %i.d, 0
  %i.q = icmp eq i64 %i.g, 0
  %or.cond26 = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond26, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit22, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i20

.loopexit:                                        ; preds = %.noexc, %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit.i.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.experimental.noalias.scope.decl(metadata !38646)
  call void @llvm.experimental.noalias.scope.decl(metadata !38647)
  call void @llvm.experimental.noalias.scope.decl(metadata !38648)
  %i.r = icmp eq i32 %i.d, 0
  %i.s = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !38649, !nonnull !67, !noundef !67
  %i.u = shl nuw nsw i64 %i.g, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.u, i64 noundef 8) #59, !noalias !38649
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i20: ; preds = %.noexc.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i21 = load ptr, ptr %i.v, align 8, !alias.scope !38650, !nonnull !67, !noundef !67
  %i.w = shl nuw nsw i64 %i.g, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i21, i64 noundef %i.w, i64 noundef 8) #59, !noalias !38650
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit22

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit22: ; preds = %.noexc.1, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.x = icmp samesign ult i64 %4, 33
  br i1 %i.x, label %bb.f, label %bb.e, !prof !77

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCslwFuT2d6ECx_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1108, i64 noundef 159, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1109) #61
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @1111, ptr %i.b, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCslwFuT2d6ECx_4core3fmtReNtB6_7Display3fmtCskcxRuJ53GpR_9rustworkx, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1112) #60
  unreachable

bb.f:                                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %4, ptr %i.a, align 8, !noalias !38651
  %i.y = icmp eq i64 %4, 2
  br i1 %i.y, label %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit, label %bb.g, !prof !77

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCslwFuT2d6ECx_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4133, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4148) #60, !noalias !38651
  unreachable

_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = load i64, ptr %3, align 8, !noundef !67  ; 4 uses
  %i.aa = icmp sgt i64 %i.z, -1                   ; 3 uses
  %i.ab = sub i64 0, %i.z
  %i.ac = add i64 %i.m, -1
  %i.ad = mul i64 %i.ac, %i.z
  %i.ae = getelementptr inbounds i8, ptr %6, i64 %i.ad
  %.pn = select i1 %i.aa, i64 %i.z, i64 %i.ab
  %.sroa.02.1 = select i1 %i.aa, i32 0, i32 1     ; 2 uses
  %.sroa.0.1 = select i1 %i.aa, ptr %6, ptr %i.ae ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !67 ; 4 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  br i1 %i.ah, label %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit.1, label %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit18.1

_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit18.1: ; preds = %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit
  %i.ai = sub i64 0, %i.ag
  %i.aj = add i64 %i.o, -1
  %i.ak = mul i64 %i.aj, %i.ag
  %i.al = getelementptr inbounds i8, ptr %.sroa.0.1, i64 %i.ak
  %i.am = or disjoint i32 %.sroa.02.1, 2
  br label %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit.1

_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit.1: ; preds = %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit18.1, %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit
  %.pn.1 = phi i64 [ %i.ai, %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit18.1 ], [ %i.ag, %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit ]
  %.sroa.02.1.1 = phi i32 [ %i.am, %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit18.1 ], [ %.sroa.02.1, %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit ]
  %.sroa.0.1.1 = phi ptr [ %i.al, %_RNvXsi_NtNtCshByAT0BfsDP_7ndarray9dimension10conversionINtNtB7_3dim3DimAjj2_EINtNtNtCslwFuT2d6ECx_4core3ops5index8IndexMutjE9index_mut.exit18.1 ], [ %.sroa.0.1, %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit ]
  %.sink = udiv i64 %.pn, %5
  %.sink.1 = udiv i64 %.pn.1, %5
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.o, ptr %.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.3.0..sroa.424.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sink.1, ptr %.sroa.3.0..sroa.424.0..sroa_idx.sroa_idx, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.02.1.1, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.0.1.1, ptr %i.ao, align 8
  ret void

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 39 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38709)
  %i.f = lshr i64 %0, 1                           ; 6 uses
  %.not.i = icmp ult i64 %i.f, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !38709
  %i.h = lshr i64 %2, 1
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.j = lshr i64 %2, 1
  br label %bb.z

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.060.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.461.0.copyload = load i64, ptr %.sroa.461.0..sroa_idx, align 8 ; 3 uses
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.562.0.copyload = load i64, ptr %.sroa.562.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx63, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx64, align 8 ; 5 uses
  %.sroa.865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.865.0.copyload = load ptr, ptr %.sroa.865.0..sroa_idx, align 8 ; 3 uses
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.967.0.copyload = load i64, ptr %.sroa.967.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.1068.0.copyload = load i64, ptr %.sroa.1068.0..sroa_idx, align 8
  %.sroa.1169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.1169.0.copyload = load i64, ptr %.sroa.1169.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.1270.0.copyload = load i64, ptr %.sroa.1270.0..sroa_idx, align 8 ; 6 uses
  %.sroa.1371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.1371.0.copyload = load i64, ptr %.sroa.1371.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.1472.0.copyload = load ptr, ptr %.sroa.1472.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38710)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38711)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !38712, !noalias !38713 ; 4 uses
  %.not.i.i19.i.i.i.i.i.i = icmp ult i64 %.sroa.060.0.copyload, %.sroa.461.0.copyload
  br i1 %.not.i.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !38712, !noalias !38713 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.865.0.copyload) ]
  %i.l = icmp eq i64 %.sroa.7.0.copyload, 1
  %i.m = icmp ult i64 %.sroa.6.0.copyload, 2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.l ; 4 uses
  %.sroa.6.0.i.idx.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 2, i64 1 ; 2 uses
  %i.n = icmp eq i64 %.sroa.1371.0.copyload, 1
  %i.o = icmp ult i64 %.sroa.1270.0.copyload, 2
  %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %i.o ; 4 uses
  %.sroa.6.0.i18.idx.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i, i64 %.sroa.1270.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.i20.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i, i64 2, i64 1 ; 2 uses
  %injected.cond.i.i.i.i.i.i = icmp ule i64 %.sroa.6.0.copyload, %.sroa.1270.0.copyload
  %injected.cond.fr.i.i.i.i.i.i = freeze i1 %injected.cond.i.i.i.i.i.i
  %umax37.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.1068.0.copyload, i64 %.sroa.967.0.copyload) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 40 ; 2 uses
  br i1 %injected.cond.fr.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  %i.s = phi i64 [ %i.x, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i ], [ %.sroa.967.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.t = phi i64 [ %i.u, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i ], [ %.sroa.060.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %exitcond38.not.i.i.i.i.i.i = icmp eq i64 %i.s, %umax37.i.i.i.i.i.i
  br i1 %exitcond38.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %i.v = mul i64 %i.s, %.sroa.1169.0.copyload
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.1472.0.copyload, i64 %i.v ; 3 uses
  %i.x = add i64 %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i64, ptr %.val.i.i, align 8, !noalias !38714, !noundef !67 ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.6.0.copyload
  br i1 %i.z, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = mul i64 %i.t, %.sroa.562.0.copyload
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.865.0.copyload, i64 %i.aa ; 3 uses
  %i.ac = mul i64 %i.y, %.sroa.7.0.copyload
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !noalias !38714, !noundef !67
  %i.af = mul i64 %i.y, %.sroa.1371.0.copyload
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !38714, !noundef !67
  %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ai, i64 0
  %i.ak = load ptr, ptr %i.p, align 8, !alias.scope !38715, !noalias !38716, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i3.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !38715, !noalias !38716 ; 3 uses
  %.val.i4.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !38715, !noalias !38716 ; 2 uses
  %i.al = icmp ne i64 %.val.i4.i.i.i.us.i.i.i.i.i.i, 1
  %i.am = icmp ugt i64 %.val7.i3.i.i.i.us.i.i.i.i.i.i, 1
  %spec.select.i.i.not.i.i.i.i.us.i.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.us.i.i.i.i.i.i, label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.val7.i3.i.i.i.us.i.i.i.i.i.i
  %i.ao = ptrtoint ptr %i.ak to i64
  br label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i

_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i: ; preds = %bb.h, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i
  %.sroa.828.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ undef, %bb.h ], [ %.val7.i3.i.i.i.us.i.i.i.i.i.i, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ]
  %.sink31.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ 2, %bb.h ], [ 1, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ]
  %.sink30.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ 0, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ]
  %.sink.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ %i.ak, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i18.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.6.0.i18.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = ptrtoint ptr %i.w to i64
  %i.aq = select i1 %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i, i64 %i.ap, i64 0
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i
  %.sroa.21.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.aq, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %.sroa.21.1.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.12.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sink30.i.i.i.i.us.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %.sroa.12.1.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.4.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.aj, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ] ; 3 uses
  %spec.select.i.i.i18.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i20.i.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %spec.select.i.i.i17.i.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ]
  %spec.select.i.i13.i.i.i15.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sink31.i.i.i.i.us.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %spec.select.i.i13.i.i.i14.i.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ]
  %spec.select.i.i.i.i.i12.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i11.i.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ]
  switch i64 %spec.select.i.i.i.i.i12.i.i.i.i.us.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i [
    i64 2, label %bb.i
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  ]

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i
  %i.ar = inttoptr i64 %.sroa.4.0.i.i.i.us.i.i.i.i.i.i to ptr ; 3 uses
  %i.as = icmp eq ptr %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i, %i.ar
  br i1 %i.as, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = ptrtoint ptr %i.at to i64
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i
  %i.av = mul i64 %.sroa.4.0.i.i.i.us.i.i.i.i.i.i, %.sroa.7.0.copyload
  %i.aw = add i64 %.sroa.4.0.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.6.0.copyload
  %spec.select.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = zext i1 %i.ax to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i, i64 %i.av
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.j
  %.sroa.4.1.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.aw, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.au, %bb.j ]
  %spec.select.i.i.i.i.i11.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ 2, %bb.j ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.ay, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.ar, %bb.j ] ; 2 uses
  switch i64 %spec.select.i.i13.i.i.i15.i.i.i.i.us.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i [
    i64 2, label %bb.k
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  ]

bb.k:                                             ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.az = inttoptr i64 %.sroa.12.0.i.i.i.us.i.i.i.i.i.i to ptr ; 3 uses
  %i.ba = icmp eq ptr %.sink.i.i.i.i.us.i.i.i.i.i.i, %i.az
  br i1 %i.ba, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.bd = mul i64 %.sroa.12.0.i.i.i.us.i.i.i.i.i.i, %.val.i4.i.i.i.us.i.i.i.i.i.i
  %i.be = add i64 %.sroa.12.0.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.sroa.828.0.i.i.i.us.i.i.i.i.i.i
  %spec.select.i.i13.i.i.i.i.i.i.i.us.i.i.i.i.i.i = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i.us.i.i.i.i.i.i, i64 %i.bd
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.l
  %.sroa.12.1.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.bc, %bb.l ]
  %spec.select.i.i13.i.i.i14.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %spec.select.i.i13.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ 2, %bb.l ]
  %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.bg, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.az, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i) ]
  switch i64 %spec.select.i.i.i18.i.i.i.i.us.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i [
    i64 2, label %bb.m
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.bh = inttoptr i64 %.sroa.21.0.i.i.i.us.i.i.i.i.i.i to ptr ; 3 uses
  %i.bi = icmp eq ptr %.sroa.6.0.i18.i.i.i.us.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.bl = mul i64 %.sroa.21.0.i.i.i.us.i.i.i.i.i.i, %.sroa.1371.0.copyload
  %i.bm = add i64 %.sroa.21.0.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %.sroa.1270.0.copyload
  %spec.select.i.i.i.i.i.i.i.us.i.i.i.i.i.i = zext i1 %i.bn to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i18.i.i.i.us.i.i.i.i.i.i, i64 %i.bl
  br label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.n
  %.sroa.21.1.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.bm, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.bk, %bb.n ]
  %spec.select.i.i.i17.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ 2, %bb.n ]
  %.sroa.9.0.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.bo, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.bh, %bb.n ]
  %i.bp = load double, ptr %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38717, !noundef !67
  %i.bq = fadd double %i.ae, %i.bp                ; 2 uses
  %i.br = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38717, !noundef !67
  %i.bs = fcmp olt double %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i
  store double %i.bq, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38717
  store i64 %i.ah, ptr %.sroa.9.0.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38717
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge: ; preds = %bb.o, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i: ; preds = %bb.m, %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.k, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i
  %exitcond39.not.i.i.i.i.i.i = icmp eq i64 %i.u, %.sroa.461.0.copyload
  br i1 %exitcond39.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit, label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.i.i.i.i.i.i
  %i.bt = phi i64 [ %i.ca, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.i.i.i.i.i.i ], [ %.sroa.967.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bu = phi i64 [ %i.bv, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.i.i.i.i.i.i ], [ %.sroa.060.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bt, %umax37.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.bw = mul i64 %i.bu, %.sroa.562.0.copyload
  %i.bx = getelementptr inbounds [8 x i8], ptr %.sroa.865.0.copyload, i64 %i.bw ; 3 uses
  %i.by = mul i64 %i.bt, %.sroa.1169.0.copyload
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sroa.1472.0.copyload, i64 %i.by ; 3 uses
  %i.ca = add i64 %i.bt, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.cb = load i64, ptr %.val.i.i, align 8, !noalias !38714, !noundef !67 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.6.0.copyload
  br i1 %i.cc, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

.split.us.i.i.i.i.i.i:                            ; preds = %bb.p, %bb.g
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38718
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cd = mul i64 %i.cb, %.sroa.7.0.copyload
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !noalias !38714, !noundef !67
  %i.cg = icmp ult i64 %i.cb, %.sroa.1270.0.copyload
  br i1 %i.cg, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38719
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.ch = mul i64 %i.cb, %.sroa.1371.0.copyload
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !38714, !noundef !67
end_hunk_0
begin_hunk_1_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_:bb.a
  %.not.i.i4.i = icmp ugt i64 %i.f, %i.dw
  br i1 %.not.i.i4.i, label %bb.ab, label %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.ab:                                            ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !38721
  unreachable

_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit.i
  %i.dx = add i64 %.sroa.046.0.copyload, %i.f     ; 2 uses
  %i.dy = add i64 %.sroa.1053.0.copyload, %i.f    ; 2 uses
  store ptr %i.d, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.b, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.dx, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.447.0.copyload, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.548.0.copyload, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.649.0.copyload, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.750.0.copyload, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.851.0.copyload, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %.sroa.952.0.copyload, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.dy, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 %.sroa.1154.0.copyload, ptr %.sroa.7.sroa.11.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i64 %.sroa.1255.0.copyload, ptr %.sroa.7.sroa.12.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.1356.0.copyload, ptr %.sroa.7.sroa.13.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.14.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %.sroa.1457.0.copyload, ptr %.sroa.7.sroa.14.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.15.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %.sroa.1558.0.copyload, ptr %.sroa.7.sroa.15.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.16.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.sroa.1659.0.copyload, ptr %.sroa.7.sroa.16.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.b, ptr %i.dz, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %.sroa.046.0.copyload, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %i.dx, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i64 %.sroa.548.0.copyload, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  store i64 %.sroa.649.0.copyload, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  store i64 %.sroa.750.0.copyload, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %.sroa.851.0.copyload, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 %.sroa.952.0.copyload, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %.sroa.1053.0.copyload, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  store i64 %i.dy, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  store i64 %.sroa.1255.0.copyload, ptr %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.13.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 248
  store i64 %.sroa.1356.0.copyload, ptr %.sroa.6.sroa.13.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.14.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  store i64 %.sroa.1457.0.copyload, ptr %.sroa.6.sroa.14.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 264
  store ptr %.sroa.1558.0.copyload, ptr %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  store i64 %.sroa.1659.0.copyload, ptr %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.ea = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i12 = load ptr, ptr %i.ea, align 8, !noalias !38722, !noundef !67 ; 2 uses
  %i.eb = icmp eq ptr %.val.i.i12, null
  br i1 %i.eb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2B_9iterators11AxisIterMutdINtNtNtB2B_9dimension3dim3DimAjj1_EEEIB2v_IB3t_jB3Z_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCBR_s_0uuE0B5z_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(280) %i.a, ptr noundef nonnull align 128 %.val.i.i12, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

bb.ad:                                            ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ec = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !38722, !inline_history !38705
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !38722, !nonnull !67, !noundef !67 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !38723, !noundef !67 ; 4 uses
  %i.ef = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ef, label %bb.af, label %bb.ae, !prof !71

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.eh = load ptr, ptr %i.eg, align 16, !noalias !38723, !nonnull !67, !noundef !67
  %.not.i11 = icmp eq ptr %i.eh, %i.ed
  br i1 %.not.i11, label %bb.ag, label %bb.ah, !prof !77

bb.af:                                            ; preds = %bb.ad
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3r_9iterators11AxisIterMutdINtNtNtB3r_9dimension3dim3DimAjj1_EEEIB3l_IB4j_jB4P_EEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1G_s_0uuE0TuuEEB6q_(ptr noundef nonnull align 128 %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %i.a), !inline_history !38708
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2B_9iterators11AxisIterMutdINtNtNtB2B_9dimension3dim3DimAjj1_EEEIB2v_IB3t_jB3Z_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCBR_s_0uuE0B5z_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(280) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

bb.ah:                                            ; preds = %bb.ae
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3s_9iterators11AxisIterMutdINtNtNtB3s_9dimension3dim3DimAjj1_EEEIB3m_IB4k_jB4Q_EEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1H_s_0uuE0TuuEEB6r_(ptr noundef nonnull align 128 %i.ee, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %i.a), !inline_history !38708
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit

_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0E0B3d_.exit.us.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.i, %bb.f, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4H_(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(112) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [280 x i8], align 8               ; 39 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %3, ptr %i.e, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38781)
  %i.f = lshr i64 %0, 1                           ; 6 uses
  %.not.i = icmp ult i64 %i.f, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !38781
  %i.h = lshr i64 %2, 1
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  br label %bb.z

bb.e:                                             ; preds = %bb.c
  %i.j = lshr i64 %2, 1
  br label %bb.z

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.060.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.461.0.copyload = load i64, ptr %.sroa.461.0..sroa_idx, align 8 ; 3 uses
  %.sroa.562.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.562.0.copyload = load i64, ptr %.sroa.562.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx63, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx64, align 8 ; 5 uses
  %.sroa.865.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.865.0.copyload = load ptr, ptr %.sroa.865.0..sroa_idx, align 8 ; 3 uses
  %.sroa.967.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.967.0.copyload = load i64, ptr %.sroa.967.0..sroa_idx, align 8 ; 3 uses
  %.sroa.1068.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.1068.0.copyload = load i64, ptr %.sroa.1068.0..sroa_idx, align 8
  %.sroa.1169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.1169.0.copyload = load i64, ptr %.sroa.1169.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1270.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 80
  %.sroa.1270.0.copyload = load i64, ptr %.sroa.1270.0..sroa_idx, align 8 ; 6 uses
  %.sroa.1371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.1371.0.copyload = load i64, ptr %.sroa.1371.0..sroa_idx, align 8 ; 5 uses
  %.sroa.1472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.1472.0.copyload = load ptr, ptr %.sroa.1472.0..sroa_idx, align 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38782)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38783)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !38784, !noalias !38785 ; 4 uses
  %.not.i.i19.i.i.i.i.i.i = icmp ult i64 %.sroa.060.0.copyload, %.sroa.461.0.copyload
  br i1 %.not.i.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4r_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !38784, !noalias !38785 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.865.0.copyload) ]
  %i.l = icmp eq i64 %.sroa.7.0.copyload, 1
  %i.m = icmp ult i64 %.sroa.6.0.copyload, 2
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.l ; 4 uses
  %.sroa.6.0.i.idx.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.6.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 2, i64 1 ; 2 uses
  %i.n = icmp eq i64 %.sroa.1371.0.copyload, 1
  %i.o = icmp ult i64 %.sroa.1270.0.copyload, 2
  %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i = select i1 %i.n, i1 true, i1 %i.o ; 4 uses
  %.sroa.6.0.i18.idx.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i, i64 %.sroa.1270.0.copyload, i64 0 ; 2 uses
  %.sroa.0.0.i20.i.i.i.i.i.i.i.i.i = select i1 %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i, i64 2, i64 1 ; 2 uses
  %injected.cond.i.i.i.i.i.i = icmp ule i64 %.sroa.6.0.copyload, %.sroa.1270.0.copyload
  %injected.cond.fr.i.i.i.i.i.i = freeze i1 %injected.cond.i.i.i.i.i.i
  %umax37.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.1068.0.copyload, i64 %.sroa.967.0.copyload) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 40 ; 2 uses
  br i1 %injected.cond.fr.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  %i.s = phi i64 [ %i.x, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i ], [ %.sroa.967.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.t = phi i64 [ %i.u, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i ], [ %.sroa.060.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 2 uses
  %exitcond38.not.i.i.i.i.i.i = icmp eq i64 %i.s, %umax37.i.i.i.i.i.i
  br i1 %exitcond38.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4r_.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %i.v = mul i64 %i.s, %.sroa.1169.0.copyload
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.1472.0.copyload, i64 %i.v ; 3 uses
  %i.x = add i64 %i.s, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.y = load i64, ptr %.val.i.i, align 8, !noalias !38786, !noundef !67 ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.6.0.copyload
  br i1 %i.z, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = mul i64 %i.t, %.sroa.562.0.copyload
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.865.0.copyload, i64 %i.aa ; 3 uses
  %i.ac = mul i64 %i.y, %.sroa.7.0.copyload
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !noalias !38786, !noundef !67
  %i.af = mul i64 %i.y, %.sroa.1371.0.copyload
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !38786, !noundef !67
  %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ai, i64 0
  %i.ak = load ptr, ptr %i.p, align 8, !alias.scope !38787, !noalias !38788, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i3.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !38787, !noalias !38788 ; 3 uses
  %.val.i4.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !38787, !noalias !38788 ; 2 uses
  %i.al = icmp ne i64 %.val.i4.i.i.i.us.i.i.i.i.i.i, 1
  %i.am = icmp ugt i64 %.val7.i3.i.i.i.us.i.i.i.i.i.i, 1
  %spec.select.i.i.not.i.i.i.i.us.i.i.i.i.i.i = select i1 %i.al, i1 %i.am, i1 false
  br i1 %spec.select.i.i.not.i.i.i.i.us.i.i.i.i.i.i, label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.val7.i3.i.i.i.us.i.i.i.i.i.i
  %i.ao = ptrtoint ptr %i.ak to i64
  br label %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i

_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i: ; preds = %bb.h, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i
  %.sroa.828.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ undef, %bb.h ], [ %.val7.i3.i.i.i.us.i.i.i.i.i.i, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ]
  %.sink31.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ 2, %bb.h ], [ 1, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ]
  %.sink30.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.h ], [ 0, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ]
  %.sink.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.an, %bb.h ], [ %i.ak, %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.0.i18.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %.sroa.6.0.i18.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ap = ptrtoint ptr %i.w to i64
  %i.aq = select i1 %spec.select.i.i.i15.i.i.i.i.i.i.i.i.i, i64 %i.ap, i64 0
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i
  %.sroa.21.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.aq, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %.sroa.21.1.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.12.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sink30.i.i.i.i.us.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %.sroa.12.1.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.4.0.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.aj, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %.sroa.4.1.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ] ; 3 uses
  %spec.select.i.i.i18.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i20.i.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %spec.select.i.i.i17.i.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ]
  %spec.select.i.i13.i.i.i15.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sink31.i.i.i.i.us.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %spec.select.i.i13.i.i.i14.i.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ]
  %spec.select.i.i.i.i.i12.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i, %_RNvMs6_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EE3newCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i11.i.i.i.i.us.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge ]
  switch i64 %spec.select.i.i.i.i.i12.i.i.i.i.us.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i [
    i64 2, label %bb.i
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  ]

bb.i:                                             ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i
  %i.ar = inttoptr i64 %.sroa.4.0.i.i.i.us.i.i.i.i.i.i to ptr ; 3 uses
  %i.as = icmp eq ptr %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i, %i.ar
  br i1 %i.as, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.au = ptrtoint ptr %i.at to i64
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i
  %i.av = mul i64 %.sroa.4.0.i.i.i.us.i.i.i.i.i.i, %.sroa.7.0.copyload
  %i.aw = add i64 %.sroa.4.0.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %.sroa.6.0.copyload
  %spec.select.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = zext i1 %i.ax to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i, i64 %i.av
  br label %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.j
  %.sroa.4.1.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.aw, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.au, %bb.j ]
  %spec.select.i.i.i.i.i11.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ 2, %bb.j ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.ay, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.ar, %bb.j ] ; 2 uses
  switch i64 %spec.select.i.i13.i.i.i15.i.i.i.i.us.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i [
    i64 2, label %bb.k
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  ]

bb.k:                                             ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.az = inttoptr i64 %.sroa.12.0.i.i.i.us.i.i.i.i.i.i to ptr ; 3 uses
  %i.ba = icmp eq ptr %.sink.i.i.i.i.us.i.i.i.i.i.i, %i.az
  br i1 %i.ba, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = ptrtoint ptr %i.bb to i64
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.bd = mul i64 %.sroa.12.0.i.i.i.us.i.i.i.i.i.i, %.val.i4.i.i.i.us.i.i.i.i.i.i
  %i.be = add i64 %.sroa.12.0.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  %i.bf = icmp ult i64 %i.be, %.sroa.828.0.i.i.i.us.i.i.i.i.i.i
  %spec.select.i.i13.i.i.i.i.i.i.i.us.i.i.i.i.i.i = zext i1 %i.bf to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i.i.us.i.i.i.i.i.i, i64 %i.bd
  br label %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i

_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.l
  %.sroa.12.1.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.be, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.bc, %bb.l ]
  %spec.select.i.i13.i.i.i14.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %spec.select.i.i13.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ 2, %bb.l ]
  %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.bg, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i10.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.az, %bb.l ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i) ]
  switch i64 %spec.select.i.i.i18.i.i.i.i.us.i.i.i.i.i.i, label %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i [
    i64 2, label %bb.m
    i64 0, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i
  ]

bb.m:                                             ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.bh = inttoptr i64 %.sroa.21.0.i.i.i.us.i.i.i.i.i.i to ptr ; 3 uses
  %i.bi = icmp eq ptr %.sroa.6.0.i18.i.i.i.us.i.i.i.i.i.i, %i.bh
  br i1 %i.bi, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i

_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.bl = mul i64 %.sroa.21.0.i.i.i.us.i.i.i.i.i.i, %.sroa.1371.0.copyload
  %i.bm = add i64 %.sroa.21.0.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %.sroa.1270.0.copyload
  %spec.select.i.i.i.i.i.i.i.us.i.i.i.i.i.i = zext i1 %i.bn to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.sroa.6.0.i18.i.i.i.us.i.i.i.i.i.i, i64 %i.bl
  br label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i: ; preds = %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.n
  %.sroa.21.1.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.bm, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.bk, %bb.n ]
  %spec.select.i.i.i17.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %spec.select.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ 2, %bb.n ]
  %.sroa.9.0.i.i.i.i.us.i.i.i.i.i.i = phi ptr [ %i.bo, %_RNvXs_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB6_3dim3DimAjj1_ENtB4_9Dimension8next_for.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i ], [ %i.bh, %bb.n ]
  %i.bp = load double, ptr %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38789, !noundef !67
  %i.bq = fadd double %i.ae, %i.bp                ; 2 uses
  %i.br = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38789, !noundef !67
  %i.bs = fcmp olt double %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i
  store double %i.bq, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38789
  store i64 %i.ah, ptr %.sroa.9.0.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38789
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge: ; preds = %bb.o, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i
  br label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.us.i.i.i.i.i.i: ; preds = %bb.m, %_RNvXsb_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_4IterdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.k, %_RNvXsg_NtCshByAT0BfsDP_7ndarray9iteratorsINtB5_7IterMutdINtNtNtB7_9dimension3dim3DimAjj1_EENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.us.i.i.i.i.i.i, %bb.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i
  %exitcond39.not.i.i.i.i.i.i = icmp eq i64 %i.u, %.sroa.461.0.copyload
  br i1 %exitcond39.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4r_.exit, label %.lr.ph.split.us.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.i.i.i.i.i.i
  %i.bt = phi i64 [ %i.ca, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.i.i.i.i.i.i ], [ %.sroa.967.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.bu = phi i64 [ %i.bv, %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTINtCshByAT0BfsDP_7ndarray9ArrayBaseINtB1j_8ViewReprQdEINtNtNtB1j_9dimension3dim3DimAjj1_EdEIB1h_IB1Q_QjEB28_jEERNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0E0B3d_.exit.i.i.i.i.i.i ], [ %.sroa.060.0.copyload, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bt, %umax37.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4r_.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.bw = mul i64 %i.bu, %.sroa.562.0.copyload
  %i.bx = getelementptr inbounds [8 x i8], ptr %.sroa.865.0.copyload, i64 %i.bw ; 3 uses
  %i.by = mul i64 %i.bt, %.sroa.1169.0.copyload
  %i.bz = getelementptr inbounds [8 x i8], ptr %.sroa.1472.0.copyload, i64 %i.by ; 3 uses
  %i.ca = add i64 %i.bt, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.cb = load i64, ptr %.val.i.i, align 8, !noalias !38786, !noundef !67 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.6.0.copyload
  br i1 %i.cc, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

.split.us.i.i.i.i.i.i:                            ; preds = %bb.p, %bb.g
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38790
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cd = mul i64 %i.cb, %.sroa.7.0.copyload
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !noalias !38786, !noundef !67
  %i.cg = icmp ult i64 %i.cb, %.sroa.1270.0.copyload
  br i1 %i.cg, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38791
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.ch = mul i64 %i.cb, %.sroa.1371.0.copyload
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !38786, !noundef !67
end_hunk_1
begin_hunk_2_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB6_3len14MaxLenProducerINtNtNtB8_5slice6chunks17ChunksMutProducerjEEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTjjNtNtB2l_4sort15MergeSortResultEENCINvB4c_13par_mergesortjNCINvYSjINtB2l_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6I_11Vf2ppSorterINtB6I_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EEB6M_:bb.a
  store i64 %i.o, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !39489
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.8..sroa_idx, align 8, !alias.scope !39489
  br label %bb.q

bb.i:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !39482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !39490, !noalias !39491, !noundef !67 ; 3 uses
  %i.an = load ptr, ptr %5, align 8, !alias.scope !39490, !noalias !39491, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !39490, !noalias !39491, !noundef !67 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !39492, !noalias !39493, !noundef !67 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !39494, !noalias !39495, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39496)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !39496, !noalias !39497, !noundef !67 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.av
  br i1 %.not.i.i, label %bb.j, label %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4179, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60, !noalias !39498
  unreachable

_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit: ; preds = %bb.i
  %i.aw = add i64 %i.at, %i.g
  %i.ax = mul i64 %i.am, %i.g
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ap) ; 3 uses
  %i.az = sub nuw nsw i64 %i.ap, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !39496, !noalias !39497, !noundef !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.g
  %i.be = sub nuw i64 %i.av, %i.g
  %i.bf = load ptr, ptr %6, align 8, !alias.scope !39496, !noalias !39497, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ba, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.64.sroa.4.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.az, ptr %.sroa.64.sroa.4.0..sroa.64.0..sroa_idx.sroa_idx, align 8
  %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.am, ptr %.sroa.64.sroa.5.0..sroa.64.0..sroa_idx.sroa_idx, align 8
  %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.ar, ptr %.sroa.64.sroa.6.0..sroa.64.0..sroa_idx.sroa_idx, align 8
  %.sroa.64.sroa.7.0..sroa.64.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.aw, ptr %.sroa.64.sroa.7.0..sroa.64.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.bf, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.bd, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.be, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.c, ptr %i.bg, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.an, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %i.ay, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %i.am, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.ar, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %i.at, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr %i.bf, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store ptr %i.bc, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i64 %i.g, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.bh = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i = load ptr, ptr %i.bh, align 8, !noalias !39499, !noundef !67 ; 2 uses
  %i.bi = icmp eq ptr %.val.i.i, null
  br i1 %i.bi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtBY_3len14MaxLenProducerINtNtNtB10_5slice6chunks17ChunksMutProducerjEEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTjjNtNtB3d_4sort15MergeSortResultEENCINvB55_13par_mergesortjNCINvYSjINtB3d_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB7B_11Vf2ppSorterINtB7B_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCBR_s_0INtB4l_13CollectResultB50_EB9T_E0B7F_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

bb.l:                                             ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit
  %i.bj = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !39499, !inline_history !39473
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !39499, !nonnull !67, !noundef !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !39500, !noundef !67 ; 4 uses
  %i.bm = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bm, label %bb.n, label %bb.m, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.bo = load ptr, ptr %i.bn, align 16, !noalias !39500, !nonnull !67, !noundef !67
  %.not.i17 = icmp eq ptr %i.bo, %i.bk
  br i1 %.not.i17, label %bb.o, label %bb.p, !prof !77

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtB1N_3len14MaxLenProducerINtNtNtB1P_5slice6chunks17ChunksMutProducerjEEEINtNtB1N_3map11MapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerTjjNtNtB44_4sort15MergeSortResultEENCINvB5Y_13par_mergesortjNCINvYSjINtB44_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB8u_11Vf2ppSorterINtB8u_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1G_s_0INtB5d_13CollectResultB5T_EBaN_E0TBaN_BaN_EEB8y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 128 %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !39477
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

bb.o:                                             ; preds = %bb.m
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtBY_3len14MaxLenProducerINtNtNtB10_5slice6chunks17ChunksMutProducerjEEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTjjNtNtB3d_4sort15MergeSortResultEENCINvB55_13par_mergesortjNCINvYSjINtB3d_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB7B_11Vf2ppSorterINtB7B_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCBR_s_0INtB4l_13CollectResultB50_EB9T_E0B7F_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

bb.p:                                             ; preds = %bb.m
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtB1O_3len14MaxLenProducerINtNtNtB1Q_5slice6chunks17ChunksMutProducerjEEEINtNtB1O_3map11MapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerTjjNtNtB45_4sort15MergeSortResultEENCINvB5Z_13par_mergesortjNCINvYSjINtB45_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB8v_11Vf2ppSorterINtB8v_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1H_s_0INtB5e_13CollectResultB5U_EBaO_E0TBaO_BaO_EEB8z_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 128 %i.bl, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !39477
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.k
  %.sroa.043.0.copyload = load ptr, ptr %i.b, align 8 ; 2 uses
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.748.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.051.0.copyload = load ptr, ptr %i.bp, align 8
  %.sroa.452.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.545.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.748.0.copyload = load i64, ptr %.sroa.748.0..sroa_idx, align 8
  %i.bq = load <2 x i64>, ptr %.sroa.545.0..sroa_idx, align 8
  %i.br = load <2 x i64>, ptr %.sroa.452.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bs = getelementptr inbounds nuw [24 x i8], ptr %.sroa.043.0.copyload, i64 %.sroa.748.0.copyload
  %i.bt = icmp eq ptr %i.bs, %.sroa.051.0.copyload
  %i.bu = insertelement <2 x i1> poison, i1 %i.bt, i64 0
  %i.bv = shufflevector <2 x i1> %i.bu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bw = select <2 x i1> %i.bv, <2 x i64> %i.br, <2 x i64> zeroinitializer
  %i.bx = add <2 x i64> %i.bw, %i.bq
  store ptr %.sroa.043.0.copyload, ptr %0, align 8, !alias.scope !39501, !noalias !39502
  store <2 x i64> %i.bx, ptr %.sroa.545.0..sroa_idx46, align 8, !alias.scope !39501, !noalias !39502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.q

bb.q:                                             ; preds = %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtB8_3len14MaxLenProducerINtNtNtBa_5slice6chunks17ChunksMutProducerjEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_3map9MapFolderINtNtNtB8_7collect8consumer13CollectResultTjjNtNtB1z_4sort15MergeSortResultEENCINvB3U_13par_mergesortjNCINvYSjINtB1z_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6q_11Vf2ppSorterINtB6q_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EEB6u_.exit, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1V_9iterators11AxisIterMutdINtNtNtB1V_9dimension3dim3DimAjj1_EEEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB76_5types3any5PyAnyEB71_EEs7_0EECskcxRuJ53GpR_9rustworkx(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 27 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39540)
  %i.g = lshr i64 %0, 1                           ; 5 uses
  %.not.i = icmp ult i64 %i.g, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !39540
  %i.i = lshr i64 %2, 1
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = lshr i64 %2, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.034.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.435.0.copyload = load i64, ptr %.sroa.435.0..sroa_idx, align 8 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load <2 x i64>, ptr %.sroa.6.0..sroa_idx37, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.839.0.copyload = load ptr, ptr %.sroa.839.0..sroa_idx, align 8
  %.sroa.941.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.941.0.copyload = load i64, ptr %.sroa.941.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39541)
  %i.m = sub i64 %.sroa.435.0.copyload, %.sroa.034.0.copyload
  %i.n = add i64 %.sroa.941.0.copyload, %i.m      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39542)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !39543, !noalias !39544 ; 3 uses
  %i.o = icmp ult i64 %.sroa.941.0.copyload, %i.n
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.435.0.copyload, i64 %.sroa.034.0.copyload)
  %i.p = getelementptr i8, ptr %.val.i.i, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.q = phi i64 [ %.sroa.034.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.r = phi i64 [ %.sroa.941.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.q, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = mul i64 %i.q, %.sroa.536.0.copyload
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.839.0.copyload, i64 %i.t
  %i.v = add i64 %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39545
  store i64 %i.r, ptr %i.b, align 8, !noalias !39545
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39545
  store <2 x i64> %i.l, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39545
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !39546, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !39546
  call fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i) #64, !noalias !39545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39545
  %exitcond11.not.i.i.i.i.i.i = icmp eq i64 %i.s, %i.n
  br i1 %exitcond11.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.i:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !39540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39547)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39548)
  %.sroa.026.0.copyload.i.i = load i64, ptr %4, align 8, !alias.scope !39549, !noalias !39550 ; 3 uses
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.427.0.copyload.i.i = load i64, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !39549, !noalias !39550 ; 2 uses
  %i.w = sub i64 %.sroa.427.0.copyload.i.i, %.sroa.026.0.copyload.i.i
  %.not.i.i.i = icmp ugt i64 %i.g, %i.w
  br i1 %.not.i.i.i, label %bb.j, label %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !39551
  unreachable

_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i
  %.sroa.831.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.831.0.copyload.i.i = load ptr, ptr %.sroa.831.0..sroa_idx.i.i, align 8, !alias.scope !39549, !noalias !39550 ; 2 uses
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.730.0.copyload.i.i = load i64, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !alias.scope !39549, !noalias !39550 ; 2 uses
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.629.0.copyload.i.i = load i64, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !alias.scope !39549, !noalias !39550 ; 2 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.528.0.copyload.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !alias.scope !39549, !noalias !39550 ; 2 uses
  %i.x = add i64 %.sroa.026.0.copyload.i.i, %i.g  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !39549, !noalias !39550, !noundef !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !39547, !noalias !39552, !noundef !67 ; 2 uses
  %i.ac = add i64 %i.ab, %i.g
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.x, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.427.0.copyload.i.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.528.0.copyload.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.629.0.copyload.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.730.0.copyload.i.i, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.831.0.copyload.i.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.z, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.ac, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.c, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %.sroa.026.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.x, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.sroa.528.0.copyload.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.629.0.copyload.i.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 %.sroa.730.0.copyload.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %.sroa.831.0.copyload.i.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %i.z, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %i.ab, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.ae = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i12 = load ptr, ptr %i.ae, align 8, !noalias !39553, !noundef !67 ; 2 uses
  %i.af = icmp eq ptr %.val.i.i12, null
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_EEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i12, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ag = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !39553, !inline_history !39536
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !39553, !nonnull !67, !noundef !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !39554, !noundef !67 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i, null
  br i1 %i.aj, label %bb.n, label %bb.m, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.al = load ptr, ptr %i.ak, align 16, !noalias !39554, !nonnull !67, !noundef !67
  %.not.i11 = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i11, label %bb.o, label %bb.p, !prof !77

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3D_9iterators11AxisIterMutdINtNtNtB3D_9dimension3dim3DimAjj1_EEEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8P_5types3any5PyAnyEB8K_EEs7_0EE0NCB1G_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39539
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.m
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_EEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3E_9iterators11AxisIterMutdINtNtNtB3E_9dimension3dim3DimAjj1_EEEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8Q_5types3any5PyAnyEB8L_EEs7_0EE0NCB1H_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39539
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit

_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1V_9iterators11AxisIterMutdINtNtNtB1V_9dimension3dim3DimAjj1_EEEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB76_5types3any5PyAnyEB71_NtB61_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx(i64 noundef %0, i1 noundef zeroext %1, i64 noundef %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(64) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [184 x i8], align 8               ; 27 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %3, ptr %i.f, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39592)
  %i.g = lshr i64 %0, 1                           ; 5 uses
  %.not.i = icmp ult i64 %i.g, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !39592
  %i.i = lshr i64 %2, 1
  %i.j = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.i)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.k = lshr i64 %2, 1
  br label %bb.i

bb.f:                                             ; preds = %bb.a, %bb.c
  %.sroa.034.0.copyload = load i64, ptr %4, align 8 ; 3 uses
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.435.0.copyload = load i64, ptr %.sroa.435.0..sroa_idx, align 8 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.l = load <2 x i64>, ptr %.sroa.6.0..sroa_idx37, align 8
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.839.0.copyload = load ptr, ptr %.sroa.839.0..sroa_idx, align 8
  %.sroa.941.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.941.0.copyload = load i64, ptr %.sroa.941.0..sroa_idx, align 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39593)
  %i.m = sub i64 %.sroa.435.0.copyload, %.sroa.034.0.copyload
  %i.n = add i64 %.sroa.941.0.copyload, %i.m      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39594)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !39595, !noalias !39596 ; 3 uses
  %i.o = icmp ult i64 %.sroa.941.0.copyload, %i.n
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.435.0.copyload, i64 %.sroa.034.0.copyload)
  %i.p = getelementptr i8, ptr %.val.i.i, i64 8
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i
  %i.q = phi i64 [ %.sroa.034.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.v, %bb.h ] ; 3 uses
  %i.r = phi i64 [ %.sroa.941.0.copyload, %.lr.ph.i.i.i.i.i.i ], [ %i.s, %bb.h ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.q, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = add i64 %i.r, 1                          ; 2 uses
  %i.t = mul i64 %i.q, %.sroa.536.0.copyload
  %i.u = getelementptr inbounds [8 x i8], ptr %.sroa.839.0.copyload, i64 %i.t
  %i.v = add i64 %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39597
  store i64 %i.r, ptr %i.b, align 8, !noalias !39597
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39597
  store <2 x i64> %i.l, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39597
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !39598, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !39598
  call fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i) #64, !noalias !39597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39597
  %exitcond11.not.i.i.i.i.i.i = icmp eq i64 %i.s, %i.n
  br i1 %exitcond11.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.i:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !39592
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39599)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39600)
  %.sroa.026.0.copyload.i.i = load i64, ptr %4, align 8, !alias.scope !39601, !noalias !39602 ; 3 uses
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.427.0.copyload.i.i = load i64, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !39601, !noalias !39602 ; 2 uses
  %i.w = sub i64 %.sroa.427.0.copyload.i.i, %.sroa.026.0.copyload.i.i
  %.not.i.i.i = icmp ugt i64 %i.g, %i.w
  br i1 %.not.i.i.i, label %bb.j, label %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !39603
  unreachable

_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i
  %.sroa.831.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.831.0.copyload.i.i = load ptr, ptr %.sroa.831.0..sroa_idx.i.i, align 8, !alias.scope !39601, !noalias !39602 ; 2 uses
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.730.0.copyload.i.i = load i64, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !alias.scope !39601, !noalias !39602 ; 2 uses
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.629.0.copyload.i.i = load i64, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !alias.scope !39601, !noalias !39602 ; 2 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.528.0.copyload.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !alias.scope !39601, !noalias !39602 ; 2 uses
  %i.x = add i64 %.sroa.026.0.copyload.i.i, %i.g  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !39601, !noalias !39602, !noundef !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !39599, !noalias !39604, !noundef !67 ; 2 uses
  %i.ac = add i64 %i.ab, %i.g
  store ptr %i.e, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %5, ptr %.sroa.64.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.x, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %.sroa.427.0.copyload.i.i, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %.sroa.528.0.copyload.i.i, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.629.0.copyload.i.i, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.730.0.copyload.i.i, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.831.0.copyload.i.i, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.z, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %i.ac, ptr %.sroa.7.sroa.10.0..sroa.7.0..sroa_idx.sroa_idx, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.c, ptr %i.ad, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %5, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i64 %.sroa.026.0.copyload.i.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store i64 %i.x, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  store i64 %.sroa.528.0.copyload.i.i, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i64 %.sroa.629.0.copyload.i.i, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  store i64 %.sroa.730.0.copyload.i.i, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %.sroa.831.0.copyload.i.i, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i64 %i.z, ptr %.sroa.6.sroa.9.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i64 %i.ab, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  %i.ae = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCslLviULm4Laq_10rayon_core8registry19WORKER_THREAD_STATE0s_023___RUST_STD_INTERNAL_VAL) ; 2 uses
  %.val.i.i12 = load ptr, ptr %i.ae, align 8, !noalias !39605, !noundef !67 ; 2 uses
  %i.af = icmp eq ptr %.val.i.i12, null
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_NtB6T_10UndirectedEEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i12, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ag = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !39605, !inline_history !39588
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !39605, !nonnull !67, !noundef !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !39606, !noundef !67 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i, null
  br i1 %i.aj, label %bb.n, label %bb.m, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.al = load ptr, ptr %i.ak, align 16, !noalias !39606, !nonnull !67, !noundef !67
  %.not.i11 = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i11, label %bb.o, label %bb.p, !prof !77

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3D_9iterators11AxisIterMutdINtNtNtB3D_9dimension3dim3DimAjj1_EEEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8P_5types3any5PyAnyEB8K_NtB7K_10UndirectedEEs7_0EE0NCB1G_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39591
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.m
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_NtB6T_10UndirectedEEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3E_9iterators11AxisIterMutdINtNtNtB3E_9dimension3dim3DimAjj1_EEEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8Q_5types3any5PyAnyEB8L_NtB7L_10UndirectedEEs7_0EE0NCB1H_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39591
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.p, %bb.o, %bb.n, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit

_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerINtNtCslwFuT2d6ECx_4core6option6OptionNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerIB1F_dEENCINvNtCsbNMRYq9Xj9a_14rustworkx_core10centrality20closeness_centralityRINtNtB2i_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB69_5types3any5PyAnyEB64_EEs0_0EECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr noalias nofree noundef nonnull align 4 %5, i64 noundef %6, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %7) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 18 uses
  %i.b = alloca [120 x i8], align 8               ; 18 uses
  %i.c = alloca [120 x i8], align 8               ; 18 uses
  %i.d = alloca [120 x i8], align 8               ; 18 uses
  %i.e = alloca [48 x i8], align 8                ; 11 uses
  %i.f = alloca [8 x i8], align 8                 ; 11 uses
  %i.g = alloca [16 x i8], align 8                ; 10 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  store i64 %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %4, ptr %i.i, align 8
  %i.j = lshr i64 %1, 1                           ; 16 uses
  %.not.i = icmp ult i64 %i.j, %4
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %.noexc, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %3, 0
  br i1 %.not1.i, label %bb.f, label %bb.d

.noexc:                                           ; preds = %bb.b
  %i.k = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads()
  %i.l = lshr i64 %3, 1
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l)
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = lshr i64 %3, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %.sink.i = phi i64 [ %i.m, %.noexc ], [ %i.n, %bb.d ]
  store i64 %.sink.i, ptr %i.g, align 8, !alias.scope !39648
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.f, align 8
  %.not.i.i = icmp ugt i64 %i.j, %6
  br i1 %.not.i.i, label %.noexc.i, label %bb.i, !prof !71

.noexc.i:                                         ; preds = %bb.e
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1533, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4221) #60
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !39649, !noalias !39650, !noundef !67 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !39649, !noalias !39650, !noundef !67 ; 2 uses
  %i.s = load ptr, ptr %7, align 8, !alias.scope !39649, !noalias !39650, !nonnull !67, !align !98, !noundef !67 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringB2E_EEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3M_4read7StrReadEECskcxRuJ53GpR_9rustworkx:bb.a
  %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.z ], [ %.sink.i.i.i.i.i9.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bd)
          to label %bb.ah unwind label %.loopexit.split-lp39.i.i.i.i.i.i, !noalias !45025

.loopexit38.i.i.i.i.i.i:                          ; preds = %bb.y
  %lpad.loopexit40.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp39.i.i.i.i.i.i:                 ; preds = %.noexc15.i.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i10.invoke.i.i.i.i.i.i.i.i, %bb.z, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v, %.loopexit.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp41.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp39.i.i.i.i.i.i, %.loopexit38.i.i.i.i.i.i
  %lpad.phi42.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit40.i.i.i.i.i.i, %.loopexit38.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp41.i.i.i.i.i.i, %.loopexit.split-lp39.i.i.i.i.i.i ] ; 2 uses
  %i.cw = icmp eq i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, 0
  br i1 %i.cw, label %.body.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.04754.i.i.i.i.i.i.i.i, i64 noundef %.sroa.15.04655.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45042
  br label %.body.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc15.i.i.i.i.i.i.i.i, %bb.aa, %.noexc13.i.i.i.i.i.i.i.i, %.noexc12.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %.sroa.1026.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.noexc.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.aa ], [ %i.ci, %.noexc13.i.i.i.i.i.i.i.i ], [ %i.cb, %.noexc12.i.i.i.i.i.i.i.i ], [ %i.cv, %.noexc15.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1026.0.ph.i.i.i.i.i.i.i.i) ]
  %i.cx = icmp eq i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.04754.i.i.i.i.i.i.i.i, i64 noundef %.sroa.15.04655.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45043
  br label %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i

.loopexit.i19.i.i.i.i.i:                          ; preds = %bb.ai, %bb.m, %bb.j
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.invoke.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i

.body.i.i.i.i.i.i:                                ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i19.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %eh.lpad-body.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi42.i.i.i.i.i.i, %bb.ag ], [ %lpad.phi42.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i19.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #63
          to label %common.resume.i.i.i.i.i unwind label %bb.ak, !noalias !45001

_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.17.0.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i8.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i.i = phi ptr [ %.sink.i.i.i.i.i9.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  switch i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, label %bb.ai [
    i64 -2, label %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i
    i64 -1, label %.thread.i.i.i.i.i.i
  ]

_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i: ; preds = %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtCs87CvPiUlf0m_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtCsatKl79ZghOI_10serde_json2de6MapKeyNtNtB2A_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i, %bb.ah, %.loopexit35.i.i.i.i.i.i, %bb.k
  %.sroa.9.014.i.i.i.i.i.i = phi ptr [ %.sroa.1026.0.ph.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.7.014.i.i.i.i.i.i.i.i.i, %.loopexit35.i.i.i.i.i.i ], [ %i.ba, %bb.k ], [ %.sroa.1026.0.ph.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtCs87CvPiUlf0m_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtCsatKl79ZghOI_10serde_json2de6MapKeyNtNtB2A_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.04754.i.i.i.i.i.i.i.i, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m), !noalias !45001
  br label %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.ai:                                            ; preds = %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !44996
  store i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !44996
  store ptr %.sroa.10.04754.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !44996
  store i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !44996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44996
  store i64 %.sroa.17.0.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !44996
  store ptr %.sroa.16.0.i.i.i.i.i.i, ptr %.sroa.3.sroa.5.16..sroa_idx.i.i.i.i.i.i, align 8, !noalias !44996
  store i64 %.sroa.17.0.i.i.i.i.i.i, ptr %.sroa.3.sroa.6.16..sroa_idx.i.i.i.i.i.i, align 8, !noalias !44996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44996
  invoke fastcc void @_RNvMsi_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.aj unwind label %.loopexit.i19.i.i.i.i.i, !noalias !45001

.thread.i.i.i.i.i.i:                              ; preds = %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.l
  %.sroa.623.8.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !45044
  %.sroa.8.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !45044
  br label %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !66, !noalias !44996, !noundef !67 ; 2 uses
  %i.cy = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.cy, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs87CvPiUlf0m_5alloc6string6StringEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !44996, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45045
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs87CvPiUlf0m_5alloc6string6StringEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs87CvPiUlf0m_5alloc6string6StringEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !44996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !44996
  br label %bb.j

bb.ak:                                            ; preds = %.body.i.i.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !45001
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.al, %.body.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.dd, %bb.al ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i
  %.sroa.022.0.i.i.i.i.i = phi i64 [ 1, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i ], [ 0, %.thread.i.i.i.i.i.i ]
  %.sroa.623.0.i.i.i.i.i = phi ptr [ %.sroa.9.014.i.i.i.i.i.i, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i ], [ %.sroa.623.8.copyload.i.i.i.i.i, %.thread.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !44992
  %i.da = load i8, ptr %i.ak, align 8, !alias.scope !44994, !noalias !44993, !noundef !67
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.ak, align 8, !alias.scope !44994, !noalias !44993
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !44992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44992
  store i64 %.sroa.022.0.i.i.i.i.i, ptr %i.o, align 8, !noalias !44992
  %.sroa.623.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.623.0.i.i.i.i.i, ptr %.sroa.623.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44992
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i.i, i64 16, i1 false), !noalias !44992
  %i.dc = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.am unwind label %bb.al, !noalias !44993 ; 5 uses

bb.al:                                            ; preds = %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_ENtNtCsatKl79ZghOI_10serde_json5error5ErrorEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #63
          to label %common.resume.i.i.i.i.i unwind label %bb.aq, !noalias !44993

bb.am:                                            ; preds = %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !44992
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.dc, ptr %i.de, align 8, !noalias !44992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44992
  %i.df = load i64, ptr %i.p, align 8, !range !68, !noalias !44992, !noundef !67
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.au, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !44992, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  %.not43.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not43.i.i.i.i.i, label %.thread35.i.i.i.i.i, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dh), !noalias !44993
  br label %.thread35.i.i.i.i.i

bb.aq:                                            ; preds = %bb.al
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !44993
  unreachable

.thread35.i.i.i.i.i:                              ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.7.042.i.i.i.i.i = phi ptr [ %i.dj, %bb.ar ], [ %i.dj, %bb.ao ], [ %i.dc, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44992
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx(ptr nonnull %i.dc), !noalias !44993
  br label %.thread35.i.i.i.i.i

bb.as:                                            ; preds = %.thread35.i.i.i.i.i, %bb.g
  %.sroa.7.1.i.i.i.i.i = phi ptr [ %.sroa.7.042.i.i.i.i.i, %.thread35.i.i.i.i.i ], [ %i.ao, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i) ]
  %i.dl = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %.sroa.7.1.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !44993
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.h, %.loopexit.i.i.i.i.i
  %.sink259.i.ph.i.i.i = phi ptr [ %i.dl, %bb.as ], [ %i.ap, %bb.h ], [ %i.aj, %.loopexit.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink259.i.ph.i.i.i, ptr %i.dm, align 8, !alias.scope !45046, !noalias !45047
  store i64 2, ptr %0, align 8, !alias.scope !45046, !noalias !45047
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.au:                                            ; preds = %bb.an
  %.sroa.08.0.copyload.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !44992
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !45047
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44992
  store i64 1, ptr %0, align 8, !alias.scope !45046, !noalias !45047
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0.copyload.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !45046, !noalias !45047
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.av:                                            ; preds = %bb.b
  %i.dn = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.dn, ptr %i.s, align 8, !alias.scope !45048, !noalias !45049
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45050)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.dn) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45052)
  %exitcond.not.i8.not.i.i = icmp ult i64 %i.dn, %i.u
  br i1 %exitcond.not.i8.not.i.i, label %bb.aw, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !noalias !45053, !noundef !67
  %i.dq = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.dq, ptr %i.s, align 8, !alias.scope !45054, !noalias !45055
  %.not.i.i.i = icmp eq i8 %i.dp, 117
  br i1 %.not.i.i.i, label %bb.ax, label %bb.bb, !prof !153

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45056)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45057)
  %exitcond.not.i8.1.i.i = icmp eq i64 %i.dq, %umax.i.i.i
  br i1 %exitcond.not.i8.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !45058, !noundef !67
  %i.dt = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.dt, ptr %i.s, align 8, !alias.scope !45059, !noalias !45055
  %.not.i.1.i.i = icmp eq i8 %i.ds, 108
  br i1 %.not.i.1.i.i, label %bb.az, label %bb.bb, !prof !153

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45061)
  %exitcond.not.i8.2.i.i = icmp eq i64 %i.dt, %umax.i.i.i
  br i1 %exitcond.not.i8.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !45062, !noundef !67
  %i.dw = add i64 %i.y, 4
  store i64 %i.dw, ptr %i.s, align 8, !alias.scope !45063, !noalias !45055
  %.not.i.2.i.i = icmp eq i8 %i.dv, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bb, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.az, %bb.ax, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45064
  store i64 5, ptr %i.c, align 8, !noalias !45064
  %i.dx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !45065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45064
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45064
  store i64 9, ptr %i.b, align 8, !noalias !45064
  %i.dy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !45065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45064
  br label %bb.bc

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ba
  store i64 0, ptr %0, align 8, !alias.scope !45066, !noalias !45067
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.bc:                                            ; preds = %bb.bb, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.dx, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.dy, %bb.bb ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.dz, align 8, !alias.scope !45049, !noalias !45067
  store i64 2, ptr %0, align 8, !alias.scope !45049, !noalias !45067
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.at, %bb.au, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.bc
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtBG_6option6OptionjEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB2n_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45109)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i.i.i = load i8, ptr %i.c, align 8, !range !69, !alias.scope !45110, !noalias !45111
  %i.k = trunc nuw i8 %.pre.i.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45112)
  br i1 %i.k, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45113
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45118)
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !45119, !noalias !45120, !noundef !67 ; 3 uses
  %i.m = load i64, ptr %i.g, align 8, !alias.scope !45119, !noalias !45120, !noundef !67
  %.not.i.not.i.i.i.i.i.peel.i.i = icmp eq i64 %i.m, %i.l
  br i1 %.not.i.not.i.i.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !45119, !noalias !45120, !nonnull !67, !noundef !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %.val2.i.i.i.i.i.i.peel.i.i = load i8, ptr %i.o, align 1, !noalias !45121, !noundef !67
  %i.p = add i64 %i.l, 1
  store i64 %i.p, ptr %i.f, align 8, !alias.scope !45119, !noalias !45120
  br label %bb.c

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i: ; preds = %bb.b
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #62, !noalias !45111
  %.pr.i.i.i.peel.i.i = load i8, ptr %i.a, align 8, !noalias !45113
  switch i8 %.pr.i.i.i.peel.i.i, label %.sink.split18.i [
    i8 2, label %.sink.split.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %.pre.i.i.i.peel.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !45114, !noalias !45122
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i
  %.pre.i.i.peel.i.i = phi i8 [ %.pre.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i ], [ %.val2.i.i.i.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i ] ; 3 uses
  %i.q = icmp eq i8 %.pre.i.i.peel.i.i, 10
  %i.r = load i64, ptr %i.h, align 8, !alias.scope !45123, !noalias !45124, !noundef !67
  %i.s = add i64 %i.r, 1                          ; 2 uses
  br i1 %i.q, label %_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i

_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.i, align 8, !alias.scope !45123, !noalias !45124, !noundef !67
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.i, align 8, !alias.scope !45123, !noalias !45124
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !45123, !noalias !45124, !noundef !67
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.b, align 8, !alias.scope !45123, !noalias !45124
  br label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i: ; preds = %_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i, %bb.c
  %.sink.i.peel.i.i = phi i64 [ 0, %_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i ], [ %i.s, %bb.c ]
  store i64 %.sink.i.peel.i.i, ptr %i.h, align 8, !alias.scope !45123, !noalias !45124
  store i8 1, ptr %i.c, align 8, !alias.scope !45125, !noalias !45111
  store i8 %.pre.i.i.peel.i.i, ptr %i.d, align 1, !alias.scope !45125, !noalias !45111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45113
  br label %bb.d

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i: ; preds = %bb.a
  %i.x = load i8, ptr %i.d, align 1, !alias.scope !45125, !noalias !45111, !noundef !67
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i
  %i.y = phi i8 [ %i.x, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i ], [ %.pre.i.i.peel.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i ] ; 2 uses
  switch i8 %i.y, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i [
    i8 32, label %.peel.next.i.i.preheader
    i8 10, label %.peel.next.i.i.preheader
    i8 9, label %.peel.next.i.i.preheader
    i8 13, label %.peel.next.i.i.preheader
  ]

.peel.next.i.i.preheader:                         ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.backedge, %.peel.next.i.i.preheader
  store i8 0, ptr %i.c, align 8, !alias.scope !45126, !noalias !45127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45128)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45129
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45134)
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !45135, !noalias !45136, !noundef !67 ; 3 uses
  %i.aa = load i64, ptr %i.g, align 8, !alias.scope !45135, !noalias !45136, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.z
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %.peel.next.i.i
  %i.ab = load ptr, ptr %i.e, align 8, !alias.scope !45135, !noalias !45136, !nonnull !67, !noundef !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  %.val2.i.i.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !noalias !45137, !noundef !67
  %i.ad = add i64 %i.z, 1
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !45135, !noalias !45136
  br label %bb.e

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #62, !noalias !45111
  %.pr.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !45129
  switch i8 %.pr.i.i.i.i.i, label %.sink.split18.i [
    i8 2, label %.sink.split.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !45130, !noalias !45138
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i
  %.pre.i.i.i.i = phi i8 [ %.pre.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ] ; 4 uses
  %i.ae = icmp eq i8 %.pre.i.i.i.i, 10
  %i.af = load i64, ptr %i.h, align 8, !alias.scope !45139, !noalias !45140, !noundef !67
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  br i1 %i.ae, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.i, align 8, !alias.scope !45139, !noalias !45140, !noundef !67
  %i.ai = add i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !45139, !noalias !45140
  %i.aj = load i64, ptr %i.b, align 8, !alias.scope !45139, !noalias !45140, !noundef !67
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !45139, !noalias !45140
  store i64 0, ptr %i.h, align 8, !alias.scope !45139, !noalias !45140
  store i8 1, ptr %i.c, align 8, !alias.scope !45110, !noalias !45111
  store i8 10, ptr %i.d, align 1, !alias.scope !45110, !noalias !45111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45129
  br label %.peel.next.i.i.backedge

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.e
  store i64 %i.ag, ptr %i.h, align 8, !alias.scope !45139, !noalias !45140
  store i8 1, ptr %i.c, align 8, !alias.scope !45110, !noalias !45111
  store i8 %.pre.i.i.i.i, ptr %i.d, align 1, !alias.scope !45110, !noalias !45111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45129
  switch i8 %.pre.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i [
    i8 32, label %.peel.next.i.i.backedge
    i8 13, label %.peel.next.i.i.backedge
    i8 9, label %.peel.next.i.i.backedge
  ]

.peel.next.i.i.backedge:                          ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i
  br label %.peel.next.i.i, !llvm.loop !45099

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  %i.al = phi i8 [ %i.y, %bb.d ], [ %.pre.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.am = icmp eq i8 %i.al, 110
  br i1 %i.am, label %bb.g, label %bb.f

.sink.split.i:                                    ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45141
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45142)
  %i.an = tail call fastcc { i64, ptr } @_RINvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtB9_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1m_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) #64, !noalias !45143 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %spec.select.i.i.i = add i64 %i.ao, 1
  %i.ap = extractvalue { i64, ptr } %i.an, 1
  %.sink2.i.i.i = ptrtoint ptr %i.ap to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.aq, align 8, !alias.scope !45143, !noalias !45144
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

bb.g:                                             ; preds = %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  store i8 0, ptr %i.c, align 8, !alias.scope !45145, !noalias !45146
  %i.ar = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE11parse_identCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 3), !noalias !45146 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.h

.sink.split18.i:                                  ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %i.as = load ptr, ptr %i.j, align 8, !noalias !45141, !nonnull !67, !noundef !67
  %i.at = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.as), !noalias !45111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45141
  br label %bb.h

bb.h:                                             ; preds = %.sink.split18.i, %bb.g
  %.sink.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.at, %.sink.split18.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.au, align 8, !alias.scope !45146, !noalias !45147
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.sink45.i.i = phi i64 [ 2, %bb.h ], [ %spec.select.i.i.i, %bb.f ], [ 0, %bb.g ]
  store i64 %.sink45.i.i, ptr %0, align 8, !alias.scope !45146, !noalias !45147
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtBG_6option6OptionjEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45187)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !45188, !noalias !45189, !noundef !67 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !45190, !noalias !45191 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i.i.i, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !45188, !noalias !45189, !nonnull !67, !noundef !67 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45192)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45193)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !45194, !noundef !67
  switch i8 %i.k, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !45195, !noalias !45191
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.b

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45196)
  %i.m = tail call fastcc { i64, ptr } @_RINvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtB9_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #64, !noalias !45197 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %spec.select.i.i.i = add i64 %i.n, 1
  %i.o = extractvalue { i64, ptr } %i.m, 1
  %.sink2.i.i.i = ptrtoint ptr %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.p, align 8, !alias.scope !45197, !noalias !45198
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !45199, !noalias !45200
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45201)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.e, i64 %i.q) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45202)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45203)
  %exitcond.not.i8.not.i.i = icmp ult i64 %i.q, %i.e
  br i1 %exitcond.not.i8.not.i.i, label %bb.e, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !45204, !noundef !67
  %i.t = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !45205, !noalias !45206
  %.not.i.i.i = icmp eq i8 %i.s, 117
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !153

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45208)
  %exitcond.not.i8.1.i.i = icmp eq i64 %i.t, %umax.i.i.i
  br i1 %exitcond.not.i8.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !45209, !noundef !67
  %i.w = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !45210, !noalias !45206
  %.not.i.1.i.i = icmp eq i8 %i.v, 108
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !153

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45212)
  %exitcond.not.i8.2.i.i = icmp eq i64 %i.w, %umax.i.i.i
  br i1 %exitcond.not.i8.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !45213, !noundef !67
  %i.z = add i64 %i.i, 4
  store i64 %i.z, ptr %i.c, align 8, !alias.scope !45214, !noalias !45206
  %.not.i.2.i.i = icmp eq i8 %i.y, 108
  br i1 %.not.i.2.i.i, label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit, label %bb.j, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45215
  store i64 5, ptr %i.b, align 8, !noalias !45215
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !45216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45215
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45215
  store i64 9, ptr %i.a, align 8, !noalias !45215
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !45216
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45215
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.aa, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ab, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ac, align 8, !alias.scope !45200, !noalias !45217
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %bb.i, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.k ], [ %spec.select.i.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i ], [ 0, %bb.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !45200, !noalias !45217
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtCs87CvPiUlf0m_5alloc3vec3VecNtNtNtCskcxRuJ53GpR_9rustworkx4json14node_link_data9LinkInputEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB3w_4read6IoReadINtNtNtNtB1o_2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEEB1W_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [16 x i8], align 8                ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 11 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.382.i.i.i.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 17 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 7 uses
  %i.v = alloca [16 x i8], align 8                ; 6 uses
  %i.w = alloca [16 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 7 uses
  %i.z = alloca [16 x i8], align 8                ; 12 uses
  %i.aa = alloca [16 x i8], align 8               ; 15 uses
  %i.ab = alloca [64 x i8], align 8               ; 10 uses
  %i.ac = alloca [72 x i8], align 8               ; 8 uses
  %i.ad = alloca [24 x i8], align 8               ; 4 uses
  %i.ae = alloca [64 x i8], align 8               ; 11 uses
  %i.af = alloca [72 x i8], align 8               ; 8 uses
  %.sroa.16.i.i.i.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 4 uses
  %.sroa.14.i.i.i.i.i.i.i.i = alloca [48 x i8], align 8 ; 7 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [16 x i8], align 8               ; 7 uses
  %i.aj = alloca [64 x i8], align 8               ; 7 uses
  %i.ak = alloca [24 x i8], align 8               ; 10 uses
  %i.al = alloca [16 x i8], align 8               ; 6 uses
  %i.am = alloca [16 x i8], align 8               ; 14 uses
  %i.an = alloca [24 x i8], align 8               ; 7 uses
  %i.ao = alloca [32 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45385)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 97 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.am, i64 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.pre.i.i.i = load i8, ptr %i.as, align 8, !range !69, !alias.scope !45386, !noalias !45387
  %i.ba = trunc nuw i8 %.pre.i.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45388)
  br i1 %i.ba, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !45389
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45394)
  %i.bb = load i64, ptr %i.av, align 8, !alias.scope !45395, !noalias !45396, !noundef !67 ; 3 uses
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !45395, !noalias !45396, !noundef !67
  %.not.i.not.i.i.i.i.i.peel.i.i = icmp eq i64 %i.bc, %i.bb
  br i1 %.not.i.not.i.i.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i: ; preds = %bb.b
  %i.bd = load ptr, ptr %i.au, align 8, !alias.scope !45395, !noalias !45396, !nonnull !67, !noundef !67
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  %.val2.i.i.i.i.i.i.peel.i.i = load i8, ptr %i.be, align 1, !noalias !45397, !noundef !67
  %i.bf = add i64 %i.bb, 1
  store i64 %i.bf, ptr %i.av, align 8, !alias.scope !45395, !noalias !45396
  br label %bb.c

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i: ; preds = %bb.b
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.au) #62, !noalias !45387
  %.pr.i.i.i.peel.i.i = load i8, ptr %i.am, align 8, !noalias !45389
  switch i8 %.pr.i.i.i.peel.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i [
    i8 2, label %.thread514.i.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %.pre.i.i.i.peel.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !45390, !noalias !45398
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i
  %.pre.i.i.peel.i.i = phi i8 [ %.pre.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i ], [ %.val2.i.i.i.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i ] ; 3 uses
  %i.bg = icmp eq i8 %.pre.i.i.peel.i.i, 10
  %i.bh = load i64, ptr %i.ax, align 8, !alias.scope !45399, !noalias !45400, !noundef !67
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  br i1 %i.bg, label %.peel.next.i.i.sink.split, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %i.bj = load ptr, ptr %i.az, align 8, !noalias !45389, !nonnull !67, !noundef !67
  %i.bk = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.bj), !noalias !45387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !45389
  br label %bb.f

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i: ; preds = %bb.c
  store i64 %i.bi, ptr %i.ax, align 8, !alias.scope !45399, !noalias !45400
  store i8 1, ptr %i.as, align 8, !alias.scope !45401, !noalias !45387
  store i8 %.pre.i.i.peel.i.i, ptr %i.at, align 1, !alias.scope !45401, !noalias !45387
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !45389
  br label %bb.d

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i: ; preds = %bb.a
  %i.bl = load i8, ptr %i.at, align 1, !alias.scope !45401, !noalias !45387, !noundef !67
  br label %bb.d

bb.d:                                             ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i
  %i.bm = phi i8 [ %i.bl, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i ], [ %.pre.i.i.peel.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i ]
  switch i8 %i.bm, label %.loopexit.i.i [
    i8 32, label %.peel.next.i.i.preheader
    i8 10, label %.peel.next.i.i.preheader
    i8 9, label %.peel.next.i.i.preheader
    i8 13, label %.peel.next.i.i.preheader
    i8 91, label %.loopexit59.i.i
end_hunk_3
begin_hunk_4_@_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDatabENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB20_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx:bb.a
    i8 9, label %.peel.next.i.i.preheader
    i8 13, label %.peel.next.i.i.preheader
    i8 116, label %.loopexit19.i.i
    i8 102, label %.loopexit20.i.i
  ], !prof !159

.peel.next.i.i.preheader:                         ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.backedge, %.peel.next.i.i.preheader
  store i8 0, ptr %i.e, align 8, !alias.scope !46461, !noalias !46462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46469)
  %i.ad = load i64, ptr %i.h, align 8, !alias.scope !46470, !noalias !46471, !noundef !67 ; 3 uses
  %i.ae = load i64, ptr %i.i, align 8, !alias.scope !46470, !noalias !46471, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %.peel.next.i.i
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !46470, !noalias !46471, !nonnull !67, !noundef !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  %.val2.i.i.i.i.i.i.i.i = load i8, ptr %i.ag, align 1, !noalias !46472, !noundef !67
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.h, align 8, !alias.scope !46470, !noalias !46471
  br label %bb.e

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #62, !noalias !46446
  %.pr.i.i.i.i.i = load i8, ptr %i.b, align 8, !noalias !46464
  switch i8 %.pr.i.i.i.i.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i [
    i8 2, label %.thread74.i.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !46465, !noalias !46473
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i
  %.pre.i.i.i.i = phi i8 [ %.pre.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.ai = icmp eq i8 %.pre.i.i.i.i, 10
  %i.aj = load i64, ptr %i.j, align 8, !alias.scope !46474, !noalias !46475, !noundef !67
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  br i1 %i.ai, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.k, align 8, !alias.scope !46474, !noalias !46475, !noundef !67
  %i.am = add i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.k, align 8, !alias.scope !46474, !noalias !46475
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !46474, !noalias !46475, !noundef !67
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.d, align 8, !alias.scope !46474, !noalias !46475
  store i64 0, ptr %i.j, align 8, !alias.scope !46474, !noalias !46475
  store i8 1, ptr %i.e, align 8, !alias.scope !46445, !noalias !46446
  store i8 10, ptr %i.f, align 1, !alias.scope !46445, !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46464
  br label %.peel.next.i.i.backedge

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.l, align 8, !noalias !46464, !nonnull !67, !noundef !67
  %i.aq = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ap), !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46464
  br label %bb.f

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.e
  store i64 %i.ak, ptr %i.j, align 8, !alias.scope !46474, !noalias !46475
  store i8 1, ptr %i.e, align 8, !alias.scope !46445, !noalias !46446
  store i8 %.pre.i.i.i.i, ptr %i.f, align 1, !alias.scope !46445, !noalias !46446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46464
  switch i8 %.pre.i.i.i.i, label %.loopexit.i.i [
    i8 32, label %.peel.next.i.i.backedge
    i8 102, label %.loopexit20.i.i
    i8 9, label %.peel.next.i.i.backedge
    i8 13, label %.peel.next.i.i.backedge
    i8 116, label %.loopexit19.i.i
  ], !prof !46476

.peel.next.i.i.backedge:                          ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i
  br label %.peel.next.i.i, !llvm.loop !46435

.thread74.i.i:                                    ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46477
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46478
  store i64 5, ptr %i.c, align 8, !noalias !46478
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !46479, !noalias !46480, !noundef !67
  %.val8.i.i = load i64, ptr %i.j, align 8, !alias.scope !46479, !noalias !46480, !noundef !67
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i.i, i64 noundef %.val8.i.i), !noalias !46480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46478
  br label %bb.f

bb.f:                                             ; preds = %.thread74.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i
  %.sink.i.i = phi ptr [ %i.ar, %.thread74.i.i ], [ %i.aq, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i ], [ %i.aa, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.as, align 8, !alias.scope !46480, !noalias !46479
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit19.i.i:                                  ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  store i8 0, ptr %i.e, align 8, !alias.scope !46481, !noalias !46480
  %i.at = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE11parse_identCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1138, i64 noundef 3), !noalias !46480 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.at, null
  br i1 %.not7.i.i, label %bb.h, label %bb.g

.loopexit20.i.i:                                  ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  store i8 0, ptr %i.e, align 8, !alias.scope !46482, !noalias !46480
  %i.au = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE11parse_identCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1139, i64 noundef 4), !noalias !46480 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit20.i.i, %.loopexit19.i.i
  %.sink81.i.i = phi ptr [ %i.au, %.loopexit20.i.i ], [ %i.at, %.loopexit19.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.i, ptr %i.av, align 8, !alias.scope !46480, !noalias !46479
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit.i.i:                                    ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE17peek_invalid_typeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140), !noalias !46480
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !46479, !noalias !46480
  %.val10.i.i = load i64, ptr %i.j, align 8, !alias.scope !46479, !noalias !46480
  %i.ax = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %i.aw, i64 %.val9.i.i, i64 %.val10.i.i), !noalias !46480
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !46480, !noalias !46479
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

bb.h:                                             ; preds = %.loopexit20.i.i, %.loopexit19.i.i
  %.sroa.7.0.i.i = phi i8 [ 1, %.loopexit19.i.i ], [ 0, %.loopexit20.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0.i.i, ptr %i.az, align 1, !alias.scope !46480, !noalias !46479
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g, %.loopexit.i.i, %bb.h
  %storemerge.sink.i.i = phi i8 [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %bb.h ], [ 1, %.loopexit.i.i ]
  store i8 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !46480, !noalias !46479
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDatabENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB20_4read7StrReadEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46534)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46535)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46536)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !46537, !noalias !46538, !noundef !67 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !46539, !noalias !46540 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !46537, !noalias !46538, !nonnull !67, !noundef !67 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.m = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46541)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46542)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !46543, !noundef !67
  switch i8 %i.o, label %bb.u [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.d
    i8 102, label %bb.k
  ], !prof !159

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !46544, !noalias !46540
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46545
  store i64 5, ptr %i.f, align 8, !noalias !46545
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !46546
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46545
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !46546, !noalias !46547
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !46548, !noalias !46546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46549)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46550)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46551)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i9.not.i.i, label %bb.e, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !46552, !noundef !67
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !46553, !noalias !46554
  %.not.i.i.i = icmp eq i8 %i.u, 114
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !153

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46555)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46556)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !46557, !noundef !67
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !46558, !noalias !46554
  %.not.i.1.i.i = icmp eq i8 %i.x, 117
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !153

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46560)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !46561, !noundef !67
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !46562, !noalias !46554
  %.not.i.2.i.i = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.j, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46563
  store i64 5, ptr %i.e, align 8, !noalias !46563
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !46564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46563
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46563
  store i64 9, ptr %i.d, align 8, !noalias !46563
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !46564
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46563
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !46565, !noalias !46546
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46566)
  %umax.i12.i.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ae) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46567)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46568)
  %exitcond.not.i14.not.i.i = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i14.not.i.i, label %bb.l, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !46569, !noundef !67
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !46570, !noalias !46571
  %.not.i15.i.i = icmp eq i8 %i.ag, 97
  br i1 %.not.i15.i.i, label %bb.m, label %bb.s, !prof !153

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46572)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46573)
  %exitcond.not.i14.1.i.i = icmp eq i64 %i.ah, %umax.i12.i.i
  br i1 %exitcond.not.i14.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !46574, !noundef !67
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !46575, !noalias !46571
  %.not.i15.1.i.i = icmp eq i8 %i.aj, 108
  br i1 %.not.i15.1.i.i, label %bb.o, label %bb.s, !prof !153

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46576)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46577)
  %exitcond.not.i14.2.i.i = icmp eq i64 %i.ak, %umax.i12.i.i
  br i1 %exitcond.not.i14.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !46578, !noundef !67
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !46579, !noalias !46571
  %.not.i15.2.i.i = icmp eq i8 %i.am, 115
  br i1 %.not.i15.2.i.i, label %bb.q, label %bb.s, !prof !153

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46581)
  %exitcond.not.i14.3.i.i = icmp eq i64 %i.an, %umax.i12.i.i
  br i1 %exitcond.not.i14.3.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !46582, !noundef !67
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !46583, !noalias !46571
  %.not.i15.3.i.i = icmp eq i8 %i.ap, 101
  br i1 %.not.i15.3.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.s, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46584
  store i64 5, ptr %i.c, align 8, !noalias !46584
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !46585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46584
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46584
  store i64 9, ptr %i.b, align 8, !noalias !46584
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !46585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46584
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, %bb.j, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i17.ph.sink.i.i = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i ], [ %i.ac, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink.i.i, ptr %i.at, align 8, !alias.scope !46546, !noalias !46547
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140), !noalias !46546
  %i.av = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !46546
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !46546, !noalias !46547
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.r, %bb.i
  %.sroa.7.0.i.i = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0.i.i, ptr %i.ax, align 1, !alias.scope !46546, !noalias !46547
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i.i, %bb.t, %bb.u, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i
  %storemerge.sink.i.i = phi i8 [ 1, %bb.t ], [ 1, %.loopexit.i.i ], [ 0, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 1, %bb.u ]
  store i8 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !46546, !noalias !46547
  ret void
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RINvXs3_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapjINtNtCs87CvPiUlf0m_5alloc3vec3VecIB1n_jEENtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = mul nuw nsw i64 %.16.val, 40
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  %i.d = icmp eq i64 %.16.val, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecIBH_jEENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit, %bb.a
  store i64 0, ptr %0, align 8
  ret void

bb.b:                                             ; preds = %.lr.ph, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecIBH_jEENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit
  %.sroa.0.08 = phi ptr [ %.8.val, %.lr.ph ], [ %i.k, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecIBH_jEENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.08, i64 32
  %.val = load i64, ptr %i.l, align 8, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46624
  store i64 %.val, ptr %i.b, align 8, !noalias !46624
  call fastcc void @_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #64, !noalias !46625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46624
  %i.m = getelementptr i8, ptr %.sroa.0.08, i64 8
  %.val7 = load ptr, ptr %i.m, align 8, !nonnull !67, !noundef !67 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.08, i64 16
  %.val8 = load i64, ptr %i.n, align 8, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46628)
  %.idx.i.i = mul nuw nsw i64 %.val8, 24
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i.i
  %i.p = icmp eq i64 %.val8, 0
  br i1 %i.p, label %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecIBH_jEENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted15.i.i = load i64, ptr %1, align 8, !alias.scope !46629, !noalias !46630
  %.promoted24.i.i = load i64, ptr %i.g, align 8, !alias.scope !46629, !noalias !46630
  %.promoted27.i.i = load i64, ptr %i.i, align 8, !alias.scope !46629, !noalias !46630
  %.promoted34.i.i = load i64, ptr %i.h, align 8, !alias.scope !46629, !noalias !46630
  %.promoted41.i.i = load i64, ptr %i.j, align 8, !alias.scope !46629, !noalias !46630
  %.promoted48.i.i = load i64, ptr %i.e, align 8, !alias.scope !46629, !noalias !46630
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !46629, !noalias !46630
  br label %bb.c

bb.c:                                             ; preds = %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i, %.lr.ph.i.i
  %storemerge.i.i.lcssa52.i.i = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %storemerge.i.i.lcssa51.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 2 uses
  %.lcssa50.i.i = phi i64 [ %.promoted48.i.i, %.lr.ph.i.i ], [ %.lcssa49.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 2 uses
  %.promoted1447.i.i = phi i64 [ %.promoted41.i.i, %.lr.ph.i.i ], [ %.promoted1446.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 3 uses
  %.promoted1240.i.i = phi i64 [ %.promoted34.i.i, %.lr.ph.i.i ], [ %.promoted1239.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 3 uses
  %.promoted1333.i.i = phi i64 [ %.promoted27.i.i, %.lr.ph.i.i ], [ %.promoted1332.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 3 uses
  %.promoted1126.i.i = phi i64 [ %.promoted24.i.i, %.lr.ph.i.i ], [ %.promoted1125.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 2 uses
  %.sroa.03.023.i.i = phi ptr [ %.val7, %.lr.ph.i.i ], [ %i.dv, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 3 uses
  %.promoted102122.i.i = phi i64 [ %.promoted15.i.i, %.lr.ph.i.i ], [ %.promoted1020.i.i, %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i ] ; 3 uses
  %i.q = getelementptr i8, ptr %.sroa.03.023.i.i, i64 8
  %.sroa.03.0.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !46627, !noalias !46631, !nonnull !67, !noundef !67 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.03.023.i.i, i64 16
  %.sroa.03.0.val5.i.i = load i64, ptr %i.r, align 8, !alias.scope !46627, !noalias !46631, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46632)
  %.idx.i.i.i.i = shl i64 %.sroa.03.0.val5.i.i, 3 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val.i.i, i64 %.idx.i.i.i.i
  %i.t = icmp eq i64 %.sroa.03.0.val5.i.i, 0
  br i1 %i.t, label %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecjENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i
  %.promoted1445.i.i = phi i64 [ %.promoted1442.i.i, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1447.i.i, %bb.c ] ; 2 uses
  %.promoted1238.i.i = phi i64 [ %.promoted1235.i.i, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1240.i.i, %bb.c ] ; 2 uses
  %.promoted1331.i.i = phi i64 [ %.promoted1328.i.i, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1333.i.i, %bb.c ] ; 2 uses
  %.promoted1019.i.i = phi i64 [ %.promoted1016.i.i, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted102122.i.i, %bb.c ] ; 2 uses
  %i.u = phi i64 [ %i.dn, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1447.i.i, %bb.c ] ; 3 uses
  %i.v = phi i64 [ %i.do, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1333.i.i, %bb.c ] ; 5 uses
  %i.w = phi i64 [ %i.dp, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1240.i.i, %bb.c ] ; 3 uses
  %i.x = phi i64 [ %i.dq, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted1126.i.i, %bb.c ]
  %i.y = phi i64 [ %i.dr, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.promoted102122.i.i, %bb.c ] ; 3 uses
  %storemerge.i.i9.i.i = phi i64 [ %storemerge.i.i.i.i, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %storemerge.i.i.lcssa52.i.i, %bb.c ] ; 5 uses
  %.sroa.03.05.i.i.i.i = phi ptr [ %i.ds, %_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write.exit.i.i ], [ %.sroa.03.0.val.i.i, %bb.c ] ; 2 uses
  %.sroa.03.0.val.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i, align 8, !alias.scope !46632, !noalias !46633, !noundef !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46634
  store i64 %.sroa.03.0.val.i.i.i.i, ptr %i.a, align 8, !noalias !46634
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46635)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46637), !noalias !46638
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46639), !noalias !46638
  %i.z = icmp eq i64 %storemerge.i.i9.i.i, 0
  br i1 %i.z, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aa = sub i64 8, %storemerge.i.i9.i.i         ; 3 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 range(i64 1, 9) 8) ; 2 uses
  %i.ac = icmp ugt i64 %i.aa, 3                   ; 3 uses
  %i.ad = and i64 %.sroa.03.0.val.i.i.i.i, 4294967295
  %.sroa.03.0.i.i.i.i.i = select i1 %i.ac, i64 4, i64 0 ; 4 uses
  %.sroa.0.0.i.i.i.i.i = select i1 %i.ac, i64 %i.ad, i64 0 ; 2 uses
  %i.ae = or disjoint i64 %.sroa.03.0.i.i.i.i.i, 1
  %i.af = icmp samesign ult i64 %i.ae, %i.ab
  br i1 %i.af, label %bb.e, label %bb.f
end_hunk_4
begin_hunk_5_@_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_valueNtNtB2D_11ignored_any10IgnoredAnyECskcxRuJ53GpR_9rustworkx:bb.a
_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i: ; preds = %bb.ae
  store i64 %i.gg, ptr %i.u, align 8, !alias.scope !50140, !noalias !50141
  store i8 1, ptr %i.p, align 8, !alias.scope !50109, !noalias !50110
  store i8 %.pre.i.i124.i.i.i.i.i, ptr %i.q, align 1, !alias.scope !50109, !noalias !50110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50130
  switch i8 %.pre.i.i124.i.i.i.i.i, label %.loopexit179.i.i.i.i.i [
    i8 32, label %.peel.next448.i.i.i.i.i.backedge
    i8 58, label %.loopexit180.i.i.i.i.i
    i8 9, label %.peel.next448.i.i.i.i.i.backedge
    i8 13, label %.peel.next448.i.i.i.i.i.backedge
  ], !prof !157

.peel.next448.i.i.i.i.i.backedge:                 ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i
  br label %.peel.next448.i.i.i.i.i, !llvm.loop !49986

.loopexit572.i.i.i.i.i:                           ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i134.peel.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i134.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49993
  store i64 3, ptr %i.e, align 8, !noalias !49993
  %.val55.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !49993, !noundef !67
  %.val56.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !49993, !noundef !67
  %i.gn = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val55.i.i.i.i.i, i64 noundef %.val56.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !49993
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB2J_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit180.i.i.i.i.i:                           ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %bb.ad
  store i8 0, ptr %i.p, align 8, !alias.scope !50142
  br label %.peel.begin.i.i.i.i.i.backedge

.peel.begin.i.i.i.i.i.backedge:                   ; preds = %.loopexit180.i.i.i.i.i, %.critedge.i.i.i.i.i
  %.pre.i.i.i.i.i.i.be = phi i8 [ 0, %.loopexit180.i.i.i.i.i ], [ %.pre.i96.i.i.i.i.i, %.critedge.i.i.i.i.i ]
  br label %.peel.begin.i.i.i.i.i

.loopexit179.i.loopexit115.i.i.i.i:               ; preds = %bb.ad
  %.val54.i.pre.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !49993
  br label %.loopexit179.i.i.i.i.i

.loopexit179.i.i.i.i.i:                           ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %.loopexit179.i.loopexit115.i.i.i.i
  %.val54.i.i.i.i.i = phi i64 [ %.val54.i.pre.i.i.i.i, %.loopexit179.i.loopexit115.i.i.i.i ], [ %i.gg, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !49993
  store i64 6, ptr %i.f, align 8, !noalias !49993
  %.val53.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !49993, !noundef !67
  %i.go = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val53.i.i.i.i.i, i64 noundef %.val54.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !49993
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB2J_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.af:                                            ; preds = %bb.x
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #60
  unreachable

bb.ag:                                            ; preds = %bb.x
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.x
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.ag ], [ 7, %bb.x ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.j, align 8, !noalias !49993
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !49993, !noundef !67
  %.val52.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !49993, !noundef !67
  %i.gp = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i.i.i.i.i, i64 noundef %.val52.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !49993
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB2J_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB2J_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit187.i.i.i.i.i, %.loopexit188.i.i.i.i.i, %.loopexit189.i.i.i.i.i, %.loopexit190.i.i.i.i.i, %.loopexit191.i.i.i.i.i, %bb.i, %bb.l, %.loopexit182.i.i.i.i.i, %bb.v, %bb.a, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread27.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i.i.i.i, %.loopexit566.i.i.i.i.i, %bb.k, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit91.i.thread39.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i81.thread.thread.i.i.i.i.i, %bb.t, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit115.i.thread51.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i105.thread.thread.i.i.i.i.i, %.loopexit569.i.i.i.i.i, %.loopexit181.i.i.i.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit139.i.thread67.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.thread.thread.i.i.i.i.i, %.loopexit572.i.i.i.i.i, %.loopexit179.i.i.i.i.i, %bb.ah
  %.sroa.0.0.i = phi ptr [ %i.m, %bb.a ], [ %i.dn, %bb.t ], [ %i.fs, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit139.i.thread67.i.i.i.i ], [ %i.bg, %.loopexit566.i.i.i.i.i ], [ %i.ap, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread27.i.i.i.i ], [ %i.bf, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i.i.i.i ], [ %i.dm, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i81.thread.thread.i.i.i.i.i ], [ %i.fe, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i105.thread.thread.i.i.i.i.i ], [ %i.gm, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.thread.thread.i.i.i.i.i ], [ null, %bb.v ], [ %i.go, %.loopexit179.i.i.i.i.i ], [ %i.el, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit115.i.thread51.i.i.i.i ], [ %i.fh, %.loopexit181.i.i.i.i.i ], [ %i.cb, %bb.k ], [ %i.cw, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit91.i.thread39.i.i.i.i ], [ %i.gp, %bb.ah ], [ %i.ff, %.loopexit569.i.i.i.i.i ], [ %i.gn, %.loopexit572.i.i.i.i.i ], [ %i.bl, %.loopexit189.i.i.i.i.i ], [ %i.bk, %.loopexit188.i.i.i.i.i ], [ %i.bj, %.loopexit187.i.i.i.i.i ], [ %i.bm, %.loopexit190.i.i.i.i.i ], [ %i.cc, %bb.l ], [ %i.bn, %.loopexit191.i.i.i.i.i ], [ %i.fg, %.loopexit182.i.i.i.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECskcxRuJ53GpR_9rustworkx(ptr %.0.val) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50285)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !50286, !noalias !50287, !noundef !67 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !50288, !noalias !50289 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !50286, !noalias !50287, !nonnull !67, !noundef !67 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50290)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50291)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !50292, !noundef !67
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !156

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !50293, !noalias !50289
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !50284
  store i64 3, ptr %i.o, align 8, !noalias !50284
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !50284
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !50284
  store i64 6, ptr %i.p, align 8, !noalias !50284
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !50284
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !50294
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50296)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50298)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !50299
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 3 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bg, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eq, %bb.bg ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bg ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.ep, %bb.bg ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bg ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bg ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50300)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !50301, !noundef !67 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !50302, !noalias !50303
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !50299
  store i64 5, ptr %i.n, align 8, !noalias !50299
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !50299
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ai, !prof !125

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !50304
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50305)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50307)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !50308, !noundef !67
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !50309, !noalias !50310
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !153

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50312)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !50313, !noundef !67
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !50314, !noalias !50310
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !153

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50316)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !50317, !noundef !67
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !50318, !noalias !50310
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !50319
  store i64 5, ptr %i.f, align 8, !noalias !50319
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !50320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !50319
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50319
  store i64 9, ptr %i.e, align 8, !noalias !50319
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !50320
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50319
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !50321
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50322)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50324)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !50325, !noundef !67
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !50326, !noalias !50327
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !153

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50329)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !50330, !noundef !67
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !50331, !noalias !50327
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !153

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50333)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !50334, !noundef !67
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !50335, !noalias !50327
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50336
  store i64 5, ptr %i.d, align 8, !noalias !50336
  %i.bk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !50337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50336
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50336
  store i64 9, ptr %i.c, align 8, !noalias !50336
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !50337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50336
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !50338
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50339)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50341)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !50342, !noundef !67
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !50343, !noalias !50344
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !153

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50346)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !50347, !noundef !67
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !50348, !noalias !50344
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !153

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50350)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !50351, !noundef !67
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !50352, !noalias !50344
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !153

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50354)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !50355, !noundef !67
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !50356, !noalias !50344
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50357
  store i64 5, ptr %i.b, align 8, !noalias !50357
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !50358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50357
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50357
  store i64 9, ptr %i.a, align 8, !noalias !50357
  %i.ca = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !50358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50357
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !50359
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !50360
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50361)
  %i.cf = zext i1 %.sroa.039.0177.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !50362, !noundef !67 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !50362, !noundef !67
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, !prof !71

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !50363
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.039.0177.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !50363, !nonnull !67, !noundef !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.7.0178.i.i.i.i.i, ptr %i.cm, align 1, !noalias !50364
  %i.cn = add i64 %i.ck, 1
  br label %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val6.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
  store i64 %.val6.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !50363, !noalias !50365
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !50366, !noundef !67
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !50366
  br label %bb.ah

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !50299, !noundef !67 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ak

bb.ah:                                            ; preds = %bb.ak, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.de, %bb.ak ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ true, %bb.ak ], [ true, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.cs = load i64, ptr %i.r, align 8, !alias.scope !50367, !noalias !50368, !noundef !67 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !50369, !noalias !50370 ; 2 uses
  %i.ct = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ah
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !50299
  %i.cu = load ptr, ptr %i.u, align 8, !alias.scope !50367, !noalias !50368, !nonnull !67, !noundef !67 ; 3 uses
  %i.cv = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !50299
  %i.cw = load ptr, ptr %i.af, align 8, !alias.scope !50299, !nonnull !67
  br label %.lr.ph.i75.i.i.i.i.i

bb.ai:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !50299
  store i64 10, ptr %i.m, align 8, !noalias !50299
  %i.cx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !50299
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.aj:                                            ; preds = %bb.h
  %i.cy = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cz = add i64 %i.cq, -1                       ; 3 uses
  store i64 %i.cz, ptr %i.ad, align 8, !alias.scope !50299
  %i.da = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !50299, !noundef !67
  %i.db = icmp ult i64 %i.cz, %i.da
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = load ptr, ptr %i.af, align 8, !alias.scope !50299, !nonnull !67, !noundef !67
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cz
  %i.de = load i8, ptr %i.dd, align 1, !noundef !67
  br label %bb.ah

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dp, %bb.av ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.du, %bb.av ] ; 6 uses
  %i.df = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dr, %bb.av ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50371)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i75.i.i.i.i.i
  %i.dg = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.dj, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50372)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50373)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !50374, !noundef !67
  switch i8 %i.di, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.am
    i8 10, label %bb.am
    i8 9, label %bb.am
    i8 13, label %bb.am
    i8 44, label %bb.aq
    i8 93, label %bb.ar
    i8 125, label %bb.as
  ]

bb.am:                                            ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.dj = add i64 %i.dg, 1                        ; 3 uses
  store i64 %i.dj, ptr %i.q, align 8, !alias.scope !50375, !noalias !50370
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.dj, %i.cs
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.al

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ah, %bb.av, %bb.am
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.du, %bb.av ], [ %.sroa.027.2163.i.i.i.i.i, %bb.am ], [ %.sroa.027.0.i.i.i.i.i, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !50299
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

end_hunk_5
begin_hunk_6_@_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCskcxRuJ53GpR_9rustworkx:bb.a
  %i.w = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !65066, !noundef !67
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !65067
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65068)
  %i.al = uitofp i64 %3 to double                 ; 2 uses
  %.sroa.012.020.i = tail call i32 @llvm.abs.i32(i32 %.sroa.015.0, i1 false) ; 2 uses
  %i.am = icmp ult i32 %.sroa.012.020.i, 309
  br i1 %i.am, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %bb.l
  %.sroa.0.022.i = phi i32 [ %i.au, %bb.l ], [ %.sroa.015.0, %bb.j ] ; 2 uses
  %.sroa.04.021.i = phi double [ %i.at, %bb.l ], [ %i.al, %bb.j ] ; 3 uses
  %i.an = fcmp oeq double %.sroa.04.021.i, 0.000000e+00
  br i1 %i.an, label %.loopexit.i, label %bb.k

._crit_edge.i:                                    ; preds = %bb.l, %bb.j
  %.sroa.04.0.lcssa.i = phi double [ %i.al, %bb.j ], [ %i.at, %bb.l ] ; 2 uses
  %.sroa.0.0.lcssa.i = phi i32 [ %.sroa.015.0, %bb.j ], [ %i.au, %bb.l ]
  %.sroa.012.0.lcssa.i = phi i32 [ %.sroa.012.020.i, %bb.j ], [ %.sroa.012.0.i, %bb.l ]
  %i.ao = zext nneg i32 %.sroa.012.0.lcssa.i to i64
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCsatKl79ZghOI_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !65069, !noundef !67 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !71

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65069
  store i64 14, ptr %i.a, align 8, !noalias !65069
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !65068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65069
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !65068, !noalias !65070
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !65068, !noalias !65070
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !71

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65069
  store i64 14, ptr %i.b, align 8, !noalias !65069
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !65068
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65069
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !65068, !noalias !65070
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !65068, !noalias !65070
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !90

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #62
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [24 x i8], align 8                ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65129)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !65130, !noalias !65131, !noundef !67 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !65130, !noalias !65131, !noundef !67 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !65130, !noalias !65131, !nonnull !67, !noundef !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !65132, !noundef !67 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !174

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !153

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !65133
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65134)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !65134, !noalias !65135, !nonnull !67 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65137)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !65138, !noundef !67
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !65139, !noalias !65140
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !153

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65142)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !65143, !noundef !67
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !65144, !noalias !65140
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !153

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65146)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !65147, !noundef !67
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !65148, !noalias !65140
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit, label %bb.j, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !65149
  store i64 5, ptr %i.f, align 8, !noalias !65149
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !65135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !65149
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !65149
  store i64 9, ptr %i.e, align 8, !noalias !65149
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !65135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !65149
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !65150
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65151)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !65151, !noalias !65152, !nonnull !67 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65154)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !65155, !noundef !67
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !65156, !noalias !65157
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !153

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65159)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !65160, !noundef !67
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !65161, !noalias !65157
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !153

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65163)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !65164, !noundef !67
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !65165, !noalias !65157
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit30, label %bb.q, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !65166
  store i64 5, ptr %i.d, align 8, !noalias !65166
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !65152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !65166
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !65166
  store i64 9, ptr %i.c, align 8, !noalias !65166
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !65152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !65166
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !65167
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65168)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !65168, !noalias !65169, !nonnull !67 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65170)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65171)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !65172, !noundef !67
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !65173, !noalias !65174
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !153

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65176)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !65177, !noundef !67
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !65178, !noalias !65174
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !153

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65180)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !65181, !noundef !67
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !65182, !noalias !65174
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !153

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65184)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !65185, !noundef !67
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !65186, !noalias !65174
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit38, label %bb.z, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65187
  store i64 5, ptr %i.b, align 8, !noalias !65187
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !65169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65187
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65187
  store i64 9, ptr %i.a, align 8, !noalias !65187
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !65169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65187
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !65188
  call fastcc void @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !152, !noundef !67
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !77

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !65189
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !126, !noundef !67
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !67, !noundef !67 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !77

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCsatKl79ZghOI_10serde_json5errorNtB5_5ErrorNtNtCs59S24YpdcPa_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCsatKl79ZghOI_10serde_json5errorNtB5_5ErrorNtNtCs59S24YpdcPa_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCsatKl79ZghOI_10serde_json5errorNtB5_5ErrorNtNtCs59S24YpdcPa_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit38, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit30, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit ], [ %i.ce, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit30 ], [ %i.cg, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCsatKl79ZghOI_10serde_json5errorNtB5_5ErrorNtNtCs59S24YpdcPa_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCsatKl79ZghOI_10serde_json5errorNtB5_5ErrorNtNtCs59S24YpdcPa_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !67, !align !98, !noundef !67
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCsatKl79ZghOI_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCsatKl79ZghOI_10serde_json5errorNtB5_5ErrorNtNtCs59S24YpdcPa_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !152, !noundef !67
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !77

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !67, !align !98, !noundef !67
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCsatKl79ZghOI_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread: ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_6
begin_hunk_7_@_RNvYINtNtNtCsbv8bzjJ0gSk_6flate22gz5write9GzEncoderINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx:bb.a
  br i1 %i.bz, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split, %.split32, %.split33, %bb.t
  %.sroa.07.0 = phi ptr [ @4377, %bb.t ], [ %.sroa.4.0.i.ph, %.split33 ], [ %.sroa.4.0.i.ph, %.split32 ], [ %.sroa.4.0.i.ph, %.split ], [ %.sroa.4.0.i.ph, %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error14is_interrupted.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit36

bb.v:                                             ; preds = %bb.t
  %i.cu = sub nuw nsw i64 %.sroa.6.092, %i.cb
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.093, i64 %i.cb
  br label %bb.y

_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.cj, label %.thread.thread, label %bb.u

.loopexit36:                                      ; preds = %bb.y, %bb.a, %bb.u
  %.sroa.07.1 = phi ptr [ %.sroa.07.0, %bb.u ], [ null, %bb.a ], [ null, %bb.y ]
  ret ptr %.sroa.07.1

.thread.thread:                                   ; preds = %_RNvMs1_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_5Error14is_interrupted.exit, %.split33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171851
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit

bb.w:                                             ; preds = %.split32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171851
  %i.cw = icmp ult ptr %.sroa.4.0.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.cx = and i64 %i.cc, 1095216660480
  %i.cy = icmp ne i64 %i.cx, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.cy)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit

bb.x:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171851
  %i.cz = getelementptr i8, ptr %.sroa.4.0.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  store ptr %i.cz, ptr %i.p, align 8, !alias.scope !171852, !noalias !171851
  store i8 3, ptr %i.a, align 8, !alias.scope !171852, !noalias !171851
  call void @_RNvXsd_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !171851
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.thread.thread, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171851
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.124 = phi ptr [ %.sroa.0.093, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cv, %bb.v ]
  %.sroa.6.122 = phi i64 [ %.sroa.6.092, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit ], [ %i.cu, %bb.v ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.da = icmp eq i64 %.sroa.6.122, 0
  br i1 %i.da, label %.loopexit36, label %bb.b

bb.z:                                             ; preds = %.noexc, %bb.s
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o) #63
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  resume { ptr, i32 } %lpad.thr_comm

bb.ab:                                            ; preds = %bb.z
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvYINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_fmtCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %i.c, 1                         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171862)
  %i.f = load i64, ptr %0, align 8, !range !70, !alias.scope !171862, !noalias !171863, !noundef !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !171862, !noalias !171863, !noundef !67 ; 4 uses
  %i.i = icmp sgt i64 %i.h, -1
  tail call void @llvm.assume(i1 %i.i)
  %i.j = sub nsw i64 %i.f, %i.h
  %i.k = icmp ult i64 %i.e, %i.j
  br i1 %i.k, label %bb.d, label %bb.c, !prof !77

bb.c:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef ptr @_RNvMs_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileE14write_all_coldCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %i.e) #62
  br label %_RNvXs4_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !171862, !noalias !171863, !nonnull !67, !noundef !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !171862
  %i.p = add nuw i64 %i.h, %i.e
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !171862, !noalias !171863
  br label %_RNvXs4_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit

_RNvXs4_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.d, %bb.c, %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i12, %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit ], [ null, %bb.d ], [ %i.l, %bb.c ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171864
  store ptr %0, ptr %i.b, align 8, !noalias !171864
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !noalias !171864
  %i.r = invoke noundef zeroext i1 @_RNvNtCslwFuT2d6ECx_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1096, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #63
          to label %bb.p unwind label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.q, align 8, !noalias !171864, !noundef !67 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null                ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.m, label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.i:                                             ; preds = %bb.g
  br i1 %.not.i, label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171865
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = and i64 %i.u, 3
  switch i64 %i.v, label %default.unreachable [
    i64 2, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i
    i64 3, label %bb.k
    i64 0, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i
    i64 1, label %bb.l
  ], !prof !106

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.w = icmp ult ptr %i.t, inttoptr (i64 188978561024 to ptr)
  %i.x = and i64 %i.u, 1095216660480
  %i.y = icmp ne i64 %i.x, 1095216660480
  call void @llvm.assume(i1 %i.w)
  call void @llvm.assume(i1 %i.y)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !171866, !noalias !171865
  store i8 3, ptr %i.a, align 8, !alias.scope !171866, !noalias !171865
  call void @_RNvXsd_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !171867
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171865
  br label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit

bb.m:                                             ; preds = %bb.h
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1092, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1094) #61
          to label %bb.n unwind label %bb.f

bb.n:                                             ; preds = %bb.m
  unreachable

bb.o:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58
  unreachable

bb.p:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.s

_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.h, %bb.i, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.0.0.i12 = phi ptr [ %i.t, %bb.h ], [ null, %bb.i ], [ null, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171864
  br label %_RNvXs4_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal noundef i64 @_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %0, i64 noundef %1) unnamed_addr #35 personality ptr @rust_eh_personality {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_RNvXs_NvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtB1i_3zip3ZipIB1F_INtNtNtBe_5slice4iter4IterjEB20_EIB21_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB2M_9CooMatrixdE12triplet_iter0ENtB4_13SpecAdvanceBy15spec_advance_byCskcxRuJ53GpR_9rustworkx.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !171882, !noalias !171883, !noundef !67
  %.promoted.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !171882, !noalias !171883 ; 5 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.c, i64 %.promoted.i.i.i) ; 2 uses
  %i.d = sub i64 %umax.i.i, %.promoted.i.i.i
  %i.e = add i64 %1, -1
  %i.f = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.e)
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.h = and i64 %i.g, 3                          ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  %i.j = select i1 %i.i, i64 4, i64 %i.h
  %n.vec = sub i64 %i.g, %i.j                     ; 3 uses
  %i.k = add i64 %.promoted.i.i.i, %n.vec
  %i.l = sub i64 %1, %n.vec
  %i.m = add i64 %.promoted.i.i.i, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.n = phi i64 [ %i.m, %vector.ph ], [ %i.o, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = add i64 %i.n, 4
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !171880

middle.block:                                     ; preds = %vector.body
  %i.q = add i64 %i.n, 3
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !171882, !noalias !171883
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted.i.i.i, %bb.b ], [ %i.k, %middle.block ]
  %.sroa.01.0.i.i.i.ph = phi i64 [ %1, %bb.b ], [ %i.l, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.r = phi i64 [ %i.s, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ %i.t, %bb.c ], [ %.sroa.01.0.i.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.r, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RNvXs_NvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtB1i_3zip3ZipIB1F_INtNtNtBe_5slice4iter4IterjEB20_EIB21_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB2M_9CooMatrixdE12triplet_iter0ENtB4_13SpecAdvanceBy15spec_advance_byCskcxRuJ53GpR_9rustworkx.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.s = add i64 %i.r, 1                          ; 2 uses
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !171882, !noalias !171883
  %i.t = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvXs_NvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtB1i_3zip3ZipIB1F_INtNtNtBe_5slice4iter4IterjEB20_EIB21_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB2M_9CooMatrixdE12triplet_iter0ENtB4_13SpecAdvanceBy15spec_advance_byCskcxRuJ53GpR_9rustworkx.exit, label %scalar.ph, !llvm.loop !171881

_RNvXs_NvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtB1i_3zip3ZipIB1F_INtNtNtBe_5slice4iter4IterjEB20_EIB21_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB2M_9CooMatrixdE12triplet_iter0ENtB4_13SpecAdvanceBy15spec_advance_byCskcxRuJ53GpR_9rustworkx.exit: ; preds = %scalar.ph, %bb.c, %bb.a
  %.sroa.0.1.i = phi i64 [ 0, %bb.a ], [ %.sroa.01.0.i.i.i, %scalar.ph ], [ 0, %bb.c ]
  ret i64 %.sroa.0.1.i
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal void @_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator3nthCskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1, i64 noundef %2) unnamed_addr #18 personality ptr @rust_eh_personality {
bb.a:
  %.not.i.i = icmp eq i64 %2, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  br i1 %.not.i.i, label %..loopexit_crit_edge, label %bb.b

..loopexit_crit_edge:                             ; preds = %bb.a
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !171916, !noalias !171917
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre4 = load i64, ptr %.phi.trans.insert3, align 8, !alias.scope !171916, !noalias !171917
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !171918, !noalias !171919, !noundef !67 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !171918, !noalias !171919 ; 5 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %.promoted.i.i.i.i) ; 2 uses
  %i.c = sub i64 %umax.i.i.i, %.promoted.i.i.i.i
  %i.d = add i64 %2, -1
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.d)
  %i.f = add i64 %i.e, 1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.f, 5
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.b
  %i.g = and i64 %i.f, 3                          ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub i64 %i.f, %i.i                     ; 3 uses
  %i.j = add i64 %.promoted.i.i.i.i, %n.vec
  %i.k = sub i64 %2, %n.vec
  %i.l = add i64 %.promoted.i.i.i.i, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %i.m = phi i64 [ %i.l, %vector.ph ], [ %i.n, %vector.body ] ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = add i64 %i.m, 4
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !171907

middle.block:                                     ; preds = %vector.body
  %i.p = add i64 %i.m, 3
  store i64 %i.p, ptr %.phi.trans.insert, align 8, !alias.scope !171918, !noalias !171919
  br label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %bb.b, %middle.block
  %.ph = phi i64 [ %.promoted.i.i.i.i, %bb.b ], [ %i.j, %middle.block ]
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %2, %bb.b ], [ %i.k, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.c
  %i.q = phi i64 [ %i.r, %bb.c ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %i.s, %bb.c ], [ %.sroa.01.0.i.i.i.i.ph, %scalar.ph.preheader ]
  %exitcond.not.i.i.i = icmp eq i64 %i.q, %umax.i.i.i
  br i1 %exitcond.not.i.i.i, label %_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskcxRuJ53GpR_9rustworkx.exit, label %bb.c

bb.c:                                             ; preds = %scalar.ph
  %i.r = add i64 %i.q, 1                          ; 3 uses
  store i64 %i.r, ptr %.phi.trans.insert, align 8, !alias.scope !171918, !noalias !171919
  %i.s = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %scalar.ph, !llvm.loop !171908

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge
  %i.u = phi i64 [ %.pre4, %..loopexit_crit_edge ], [ %i.b, %bb.c ]
  %i.v = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.r, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171921)
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.d, label %_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = add nuw i64 %i.v, 1
  store i64 %i.y, ptr %i.x, align 8, !alias.scope !171916, !noalias !171917
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171922, !noalias !171917, !noundef !67
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !171922, !noalias !171917, !nonnull !67, !noundef !67
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !171922, !noalias !171917, !nonnull !67, !noundef !67
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !171916, !noalias !171917, !nonnull !67, !noundef !67
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.v
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !171923, !noundef !67
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !171923, !noundef !67
  store i64 %i.ah, ptr %0, align 8, !alias.scope !171920, !noalias !171921
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !171920, !noalias !171921
  br label %_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskcxRuJ53GpR_9rustworkx.exit

_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskcxRuJ53GpR_9rustworkx.exit: ; preds = %scalar.ph, %bb.d, %.loopexit
  %.sink.i.sink = phi ptr [ null, %.loopexit ], [ %i.ag, %bb.d ], [ null, %scalar.ph ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink.i.sink, ptr %i.aj, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmt7AdapterINtNtB9_6cursor6CursorINtNtCs87CvPiUlf0m_5alloc3vec3VechEEENtNtBb_3fmt5Write10write_charCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca i32, align 4                  ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  store i32 0, ptr %.sroa.0, align 4
  %i.a = icmp samesign ult i32 %1, 128
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %1, 2048
  %i.c = trunc i32 %1 to i8
  %i.d = and i8 %i.c, 63
  %i.e = or disjoint i8 %i.d, -128                ; 3 uses
  %i.f = lshr i32 %1, 6
  %i.g = trunc i32 %i.f to i8                     ; 2 uses
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 2 uses
  %i.j = lshr i32 %1, 12
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128
  %i.n = lshr i32 %1, 18
  %i.o = trunc nuw nsw i32 %i.n to i8
  %i.p = or disjoint i8 %i.o, -16
  br i1 %i.b, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.q = trunc nuw nsw i32 %1 to i8
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !171943
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !171943
  %.sroa.0.1..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx17, align 1, !alias.scope !171943
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !171943
  %.sroa.0.1..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx16, align 1, !alias.scope !171943
  %.sroa.0.2..sroa_idx18 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx18, align 2, !alias.scope !171943
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !171943
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !171943
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !171943
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !171943
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171944)
  %i.u = load ptr, ptr %0, align 8, !alias.scope !171944, !noalias !171945, !nonnull !67, !align !98, !noundef !67 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171946)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171947)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171949)
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !171950, !noalias !171951, !noundef !67 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171952)
  %i.w = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.0.05.i) ; 2 uses
  %i.x = load i64, ptr %i.u, align 8, !range !70, !alias.scope !171953, !noalias !171954, !noundef !67 ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.h:                                             ; preds = %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171953, !noalias !171954, !noundef !67 ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sub i64 %i.w, %i.aa                     ; 2 uses
  %i.ad = sub nsw i64 %i.x, %i.aa
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !71

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef 1, i64 noundef 1), !noalias !171954
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !171953, !noalias !171954, !noundef !67 ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ugt i64 %.val.i.i.i.i, %i.ag
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !171955, !noalias !171954
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.aj = sub nuw i64 %.val.i.i.i.i, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !171953, !noalias !171954, !nonnull !67, !noundef !67 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 range(i64 0, -9223372036854775808) %i.aj, i1 false), !alias.scope !171956, !noalias !171957
  store i64 %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !171953, !noalias !171954
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i
end_hunk_7
