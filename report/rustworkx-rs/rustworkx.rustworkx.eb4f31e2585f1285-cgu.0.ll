Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustworkx-rs/original/rustworkx.rustworkx.eb4f31e2585f1285-cgu.0?download=true
inline.NumInlined: 67643
inline.NumDeleted: 27589
loop-unroll.NumCompletelyUnrolled: 143
loop-unroll.NumRuntimeUnrolled: 258
loop-unroll.NumUnrolled: 402
begin_hunk_0_@_RINvNvNtCs3Tt2PVjAfPX_5numpy5array7as_view5innerINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimAjj2_EECskcxRuJ53GpR_9rustworkx:bb.a
  %i.o = load i64, ptr %i.n, align 8, !noalias !38640, !noundef !67 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !38641)
  call void @llvm.experimental.noalias.scope.decl(metadata !38642)
  call void @llvm.experimental.noalias.scope.decl(metadata !38643)
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
  call void @llvm.experimental.noalias.scope.decl(metadata !38644)
  call void @llvm.experimental.noalias.scope.decl(metadata !38645)
  call void @llvm.experimental.noalias.scope.decl(metadata !38646)
  %i.r = icmp eq i32 %i.d, 0
  %i.s = icmp eq i64 %i.g, 0
  %or.cond = select i1 %i.r, i1 true, i1 %i.s
  br i1 %or.cond, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !38647, !nonnull !67, !noundef !67
  %i.u = shl nuw nsw i64 %i.g, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.u, i64 noundef 8) #59, !noalias !38647
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtCshByAT0BfsDP_7ndarray9dimension3dim3DimNtNtBG_12dynindeximpl9IxDynImplEECskcxRuJ53GpR_9rustworkx.exit

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i20: ; preds = %.noexc.1
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i21 = load ptr, ptr %i.v, align 8, !alias.scope !38648, !nonnull !67, !noundef !67
  %i.w = shl nuw nsw i64 %i.g, 3
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i21, i64 noundef %i.w, i64 noundef 8) #59, !noalias !38648
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
  store i64 %4, ptr %i.a, align 8, !noalias !38649
  %i.y = icmp eq i64 %4, 2
  br i1 %i.y, label %_RNvXs0_NtNtCshByAT0BfsDP_7ndarray9dimension15dimension_traitINtNtB7_3dim3DimAjj2_ENtB5_9Dimension5zeros.exit, label %bb.g, !prof !77

bb.g:                                             ; preds = %bb.f
  call void @_RINvNtCslwFuT2d6ECx_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4133, ptr noundef null, ptr undef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4148) #60, !noalias !38649
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38707)
  %i.f = lshr i64 %0, 1                           ; 6 uses
  %.not.i = icmp ult i64 %i.f, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !38707
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38709)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !38710, !noalias !38711 ; 4 uses
  %.not.i.i19.i.i.i.i.i.i = icmp ult i64 %.sroa.060.0.copyload, %.sroa.461.0.copyload
  br i1 %.not.i.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4r_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !38710, !noalias !38711 ; 3 uses
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
  %umax37.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.967.0.copyload, i64 %.sroa.1068.0.copyload) ; 2 uses
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
  %i.y = load i64, ptr %.val.i.i, align 8, !noalias !38712, !noundef !67 ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.6.0.copyload
  br i1 %i.z, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = mul i64 %i.t, %.sroa.562.0.copyload
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.865.0.copyload, i64 %i.aa ; 3 uses
  %i.ac = mul i64 %i.y, %.sroa.7.0.copyload
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !noalias !38712, !noundef !67
  %i.af = mul i64 %i.y, %.sroa.1371.0.copyload
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !38712, !noundef !67
  %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ai, i64 0
  %i.ak = load ptr, ptr %i.p, align 8, !alias.scope !38713, !noalias !38714, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i3.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !38713, !noalias !38714 ; 3 uses
  %.val.i4.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !38713, !noalias !38714 ; 2 uses
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
  %i.bp = load double, ptr %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38715, !noundef !67
  %i.bq = fadd double %i.ae, %i.bp                ; 2 uses
  %i.br = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38715, !noundef !67
  %i.bs = fcmp olt double %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i
  store double %i.bq, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38715
  store i64 %i.ah, ptr %.sroa.9.0.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38715
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
  %i.cb = load i64, ptr %.val.i.i, align 8, !noalias !38712, !noundef !67 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.6.0.copyload
  br i1 %i.cc, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

.split.us.i.i.i.i.i.i:                            ; preds = %bb.p, %bb.g
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38716
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cd = mul i64 %i.cb, %.sroa.7.0.copyload
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !noalias !38712, !noundef !67
  %i.cg = icmp ult i64 %i.cb, %.sroa.1270.0.copyload
  br i1 %i.cg, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38717
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.ch = mul i64 %i.cb, %.sroa.1371.0.copyload
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !38712, !noundef !67
end_hunk_0
begin_hunk_1_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1J_9iterators11AxisIterMutdINtNtNtB1J_9dimension3dim3DimAjj1_EEEIB1D_IB2B_jB37_EEEINtNtB6_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EEB4H_:bb.a
  %.not.i.i4.i = icmp ugt i64 %i.f, %i.dw
  br i1 %.not.i.i4.i, label %bb.ab, label %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.ab:                                            ; preds = %_RNvXsg_NtNtCshByAT0BfsDP_7ndarray8parallel3parINtB5_16ParallelProducerINtNtB9_9iterators11AxisIterMutdINtNtNtB9_9dimension3dim3DimAjj1_EEENtNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !38719
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
  %.val.i.i12 = load ptr, ptr %i.ea, align 8, !noalias !38720, !noundef !67 ; 2 uses
  %i.eb = icmp eq ptr %.val.i.i12, null
  br i1 %i.eb, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2B_9iterators11AxisIterMutdINtNtNtB2B_9dimension3dim3DimAjj1_EEEIB2v_IB3t_jB3Z_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCBR_s_0uuE0B5z_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(280) %i.a, ptr noundef nonnull align 128 %.val.i.i12, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

bb.ad:                                            ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter3zipINtB5_11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB12_9iterators11AxisIterMutdINtNtNtB12_9dimension3dim3DimAjj1_EEEIBW_IB1U_jB2q_EEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ec = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !38720, !inline_history !38703
  %i.ed = load ptr, ptr %i.ec, align 8, !noalias !38720, !nonnull !67, !noundef !67 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ea, align 8, !noalias !38721, !noundef !67 ; 4 uses
  %i.ef = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ef, label %bb.af, label %bb.ae, !prof !71

bb.ae:                                            ; preds = %bb.ad
  %i.eg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.eh = load ptr, ptr %i.eg, align 16, !noalias !38721, !nonnull !67, !noundef !67
  %.not.i11 = icmp eq ptr %i.eh, %i.ed
  br i1 %.not.i11, label %bb.ag, label %bb.ah, !prof !77

bb.af:                                            ; preds = %bb.ad
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3r_9iterators11AxisIterMutdINtNtNtB3r_9dimension3dim3DimAjj1_EEEIB3l_IB4j_jB4P_EEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1G_s_0uuE0TuuEEB6q_(ptr noundef nonnull align 128 %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %i.a), !inline_history !38706
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

bb.ag:                                            ; preds = %bb.ae
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2B_9iterators11AxisIterMutdINtNtNtB2B_9dimension3dim3DimAjj1_EEEIB2v_IB3t_jB3Z_EEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCBR_s_0uuE0B5z_(ptr noalias nofree noundef align 8 captures(address) dereferenceable(280) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB33_9iterators11AxisIterMutdINtNtNtB33_9dimension3dim3DimAjj1_EEEIB2X_IB3V_jB4r_EEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1i_s_0uuE0TuuEEB62_.exit

bb.ah:                                            ; preds = %bb.ae
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3s_9iterators11AxisIterMutdINtNtNtB3s_9dimension3dim3DimAjj1_EEEIB3m_IB4k_jB4Q_EEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph10UndirectedE0EE0NCB1H_s_0uuE0TuuEEB6r_(ptr noundef nonnull align 128 %i.ee, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %i.a), !inline_history !38706
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38779)
  %i.f = lshr i64 %0, 1                           ; 6 uses
  %.not.i = icmp ult i64 %i.f, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !38779
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38781)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !38782, !noalias !38783 ; 4 uses
  %.not.i.i19.i.i.i.i.i.i = icmp ult i64 %.sroa.060.0.copyload, %.sroa.461.0.copyload
  br i1 %.not.i.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter3zip11ZipProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtBX_9iterators11AxisIterMutdINtNtNtBX_9dimension3dim3DimAjj1_EEEIBR_IB1P_jB2k_EEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE0EEB4r_.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.val1.i.i = load ptr, ptr %i.k, align 8, !alias.scope !38782, !noalias !38783 ; 3 uses
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
  %umax37.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.967.0.copyload, i64 %.sroa.1068.0.copyload) ; 2 uses
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
  %i.y = load i64, ptr %.val.i.i, align 8, !noalias !38784, !noundef !67 ; 3 uses
  %i.z = icmp ult i64 %i.y, %.sroa.6.0.copyload
  br i1 %i.z, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.us.i.i.i.i.i.i: ; preds = %bb.g
  %i.aa = mul i64 %i.t, %.sroa.562.0.copyload
  %i.ab = getelementptr inbounds [8 x i8], ptr %.sroa.865.0.copyload, i64 %i.aa ; 3 uses
  %i.ac = mul i64 %i.y, %.sroa.7.0.copyload
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !noalias !38784, !noundef !67
  %i.af = mul i64 %i.y, %.sroa.1371.0.copyload
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !noalias !38784, !noundef !67
  %.sroa.6.0.i.i.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.6.0.i.idx.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = select i1 %spec.select.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.ai, i64 0
  %i.ak = load ptr, ptr %i.p, align 8, !alias.scope !38785, !noalias !38786, !nonnull !67, !noundef !67 ; 3 uses
  %.val7.i3.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !38785, !noalias !38786 ; 3 uses
  %.val.i4.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !38785, !noalias !38786 ; 2 uses
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
  %i.bp = load double, ptr %.sroa.4.0.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38787, !noundef !67
  %i.bq = fadd double %i.ae, %i.bp                ; 2 uses
  %i.br = load double, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38787, !noundef !67
  %i.bs = fcmp olt double %i.bq, %i.br
  br i1 %i.bs, label %bb.o, label %_RNCINvNvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator8for_each4callTTQdRdEQjENCNCINvNtNtCskcxRuJ53GpR_9rustworkx13shortest_path14floyd_warshall20floyd_warshall_numpyNtCs68Jln09rRqb_8petgraph8DirectedE00E0B1A_.exit.i.i.i.i.us.i.i.i.i.i.i.backedge

bb.o:                                             ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters3zipINtB5_3ZipIBN_INtNtCshByAT0BfsDP_7ndarray9iterators7IterMutdINtNtNtB15_9dimension3dim3DimAjj1_EEINtB13_4IterdB1K_EEIB11_jB1K_EEINtB5_7ZipImplBW_B2D_E4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.us.i.i.i.i.i.i
  store double %i.bq, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38787
  store i64 %i.ah, ptr %.sroa.9.0.i.i.i.i.us.i.i.i.i.i.i, align 8, !noalias !38787
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
  %i.cb = load i64, ptr %.val.i.i, align 8, !noalias !38784, !noundef !67 ; 4 uses
  %i.cc = icmp ult i64 %i.cb, %.sroa.6.0.copyload
  br i1 %i.cc, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, !prof !77

.split.us.i.i.i.i.i.i:                            ; preds = %bb.p, %bb.g
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38788
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cd = mul i64 %i.cb, %.sroa.7.0.copyload
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %i.cd
  %i.cf = load double, ptr %i.ce, align 8, !noalias !38784, !noundef !67
  %i.cg = icmp ult i64 %i.cb, %.sroa.1270.0.copyload
  br i1 %i.cg, label %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !77

bb.q:                                             ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  tail call void @_RNvNtCshByAT0BfsDP_7ndarray11arraytraits19array_out_of_bounds() #60, !noalias !38789
  unreachable

_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefjINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXNtCshByAT0BfsDP_7ndarray11arraytraitsINtB4_8ArrayRefdINtNtNtB4_9dimension3dim3DimAjj1_EEINtNtNtCslwFuT2d6ECx_4core3ops5index5IndexjE5indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i
  %i.ch = mul i64 %i.cb, %.sroa.1371.0.copyload
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !38784, !noundef !67
end_hunk_1
begin_hunk_2_@_RINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB6_9enumerate17EnumerateProducerINtNtB6_3len14MaxLenProducerINtNtNtB8_5slice6chunks17ChunksMutProducerjEEEINtNtB6_3map11MapConsumerINtNtNtB6_7collect8consumer15CollectConsumerTjjNtNtB2l_4sort15MergeSortResultEENCINvB4c_13par_mergesortjNCINvYSjINtB2l_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB6I_11Vf2ppSorterINtB6I_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EEB6M_:bb.a
  store i64 %i.o, ptr %.sroa.5.8..sroa_idx, align 8, !alias.scope !39487
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.i.i, ptr %.sroa.6.8..sroa_idx, align 8, !alias.scope !39487
  br label %bb.q

bb.i:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !39480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !39488, !noalias !39489, !noundef !67 ; 3 uses
  %i.an = load ptr, ptr %5, align 8, !alias.scope !39488, !noalias !39489, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !39488, !noalias !39489, !noundef !67 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !39490, !noalias !39491, !noundef !67 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !39492, !noalias !39493, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39494)
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !39494, !noalias !39495, !noundef !67 ; 2 uses
  %.not.i.i = icmp ugt i64 %i.g, %i.av
  br i1 %.not.i.i, label %bb.j, label %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4179, i64 noundef 30, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4180) #60, !noalias !39496
  unreachable

_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit: ; preds = %bb.i
  %i.aw = add i64 %i.at, %i.g
  %i.ax = mul i64 %i.am, %i.g
  %i.ay = tail call i64 @llvm.umin.i64(i64 %i.ax, i64 %i.ap) ; 3 uses
  %i.az = sub nuw nsw i64 %i.ap, %i.ay
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !39494, !noalias !39495, !noundef !67 ; 2 uses
  %i.bd = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %i.g
  %i.be = sub nuw i64 %i.av, %i.g
  %i.bf = load ptr, ptr %6, align 8, !alias.scope !39494, !noalias !39495, !nonnull !67, !align !98, !noundef !67 ; 2 uses
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
  %.val.i.i = load ptr, ptr %i.bh, align 8, !noalias !39497, !noundef !67 ; 2 uses
  %i.bi = icmp eq ptr %.val.i.i, null
  br i1 %i.bi, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtBY_3len14MaxLenProducerINtNtNtB10_5slice6chunks17ChunksMutProducerjEEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTjjNtNtB3d_4sort15MergeSortResultEENCINvB55_13par_mergesortjNCINvYSjINtB3d_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB7B_11Vf2ppSorterINtB7B_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCBR_s_0INtB4l_13CollectResultB50_EB9T_E0B7F_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

bb.l:                                             ; preds = %_RNvXs4_NtNtCs1JJT1bG4y5L_5rayon4iter3mapINtB5_11MapConsumerINtNtNtB7_7collect8consumer15CollectConsumerTjjNtNtNtB9_5slice4sort15MergeSortResultEENCINvB1I_13par_mergesortjNCINvYSjINtB1K_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB4l_11Vf2ppSorterINtB4l_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EINtNtB7_8plumbing8ConsumerTjQB2O_EE8split_atB4p_.exit
  %i.bj = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !39497, !inline_history !39471
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !39497, !nonnull !67, !noundef !67 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.bh, align 8, !noalias !39498, !noundef !67 ; 4 uses
  %i.bm = icmp eq ptr %.val.i.i.i, null
  br i1 %i.bm, label %bb.n, label %bb.m, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.bo = load ptr, ptr %i.bn, align 16, !noalias !39498, !nonnull !67, !noundef !67
  %.not.i17 = icmp eq ptr %i.bo, %i.bk
  br i1 %.not.i17, label %bb.o, label %bb.p, !prof !77

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtB1N_3len14MaxLenProducerINtNtNtB1P_5slice6chunks17ChunksMutProducerjEEEINtNtB1N_3map11MapConsumerINtNtNtB1N_7collect8consumer15CollectConsumerTjjNtNtB44_4sort15MergeSortResultEENCINvB5Y_13par_mergesortjNCINvYSjINtB44_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB8u_11Vf2ppSorterINtB8u_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1G_s_0INtB5d_13CollectResultB5T_EBaN_E0TBaN_BaN_EEB8y_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 128 %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !39475
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

bb.o:                                             ; preds = %bb.m
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtBY_3len14MaxLenProducerINtNtNtB10_5slice6chunks17ChunksMutProducerjEEEINtNtBY_3map11MapConsumerINtNtNtBY_7collect8consumer15CollectConsumerTjjNtNtB3d_4sort15MergeSortResultEENCINvB55_13par_mergesortjNCINvYSjINtB3d_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB7B_11Vf2ppSorterINtB7B_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCBR_s_0INtB4l_13CollectResultB50_EB9T_E0B7F_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noalias nofree noundef align 8 captures(address) dereferenceable(168) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtB1p_3len14MaxLenProducerINtNtNtB1r_5slice6chunks17ChunksMutProducerjEEEINtNtB1p_3map11MapConsumerINtNtNtB1p_7collect8consumer15CollectConsumerTjjNtNtB3G_4sort15MergeSortResultEENCINvB5A_13par_mergesortjNCINvYSjINtB3G_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB86_11Vf2ppSorterINtB86_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1i_s_0INtB4P_13CollectResultB5v_EBap_E0TBap_Bap_EEB8a_.exit

bb.p:                                             ; preds = %bb.m
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtB1O_3len14MaxLenProducerINtNtNtB1Q_5slice6chunks17ChunksMutProducerjEEEINtNtB1O_3map11MapConsumerINtNtNtB1O_7collect8consumer15CollectConsumerTjjNtNtB45_4sort15MergeSortResultEENCINvB5Z_13par_mergesortjNCINvYSjINtB45_16ParallelSliceMutjE15par_sort_by_keyTjjINtNtCslwFuT2d6ECx_4core3cmp7ReversejEENCNvXs_NtNtCskcxRuJ53GpR_9rustworkx11isomorphism3vf2NtB8v_11Vf2ppSorterINtB8v_10NodeSorterNtCs68Jln09rRqb_8petgraph8DirectedE4sorts3_0E0E0EE0NCB1H_s_0INtB5e_13CollectResultB5U_EBaO_E0TBaO_BaO_EEB8z_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b, ptr noundef nonnull align 128 %i.bl, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(168) %i.a), !inline_history !39475
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
  store ptr %.sroa.043.0.copyload, ptr %0, align 8, !alias.scope !39499, !noalias !39500
  store <2 x i64> %i.bx, ptr %.sroa.545.0..sroa_idx46, align 8, !alias.scope !39499, !noalias !39500
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39538)
  %i.g = lshr i64 %0, 1                           ; 5 uses
  %.not.i = icmp ult i64 %i.g, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !39538
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39539)
  %i.m = sub i64 %.sroa.435.0.copyload, %.sroa.034.0.copyload
  %i.n = add i64 %.sroa.941.0.copyload, %i.m      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39540)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !39541, !noalias !39542 ; 3 uses
  %i.o = icmp ult i64 %.sroa.941.0.copyload, %i.n
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.034.0.copyload, i64 %.sroa.435.0.copyload)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39543
  store i64 %i.r, ptr %i.b, align 8, !noalias !39543
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39543
  store <2 x i64> %i.l, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39543
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !39544, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !39544
  call fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_EEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i) #64, !noalias !39543
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39543
  %exitcond11.not.i.i.i.i.i.i = icmp eq i64 %i.s, %i.n
  br i1 %exitcond11.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_EEs7_0EECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.i:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !39538
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39545)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39546)
  %.sroa.026.0.copyload.i.i = load i64, ptr %4, align 8, !alias.scope !39547, !noalias !39548 ; 3 uses
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.427.0.copyload.i.i = load i64, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !39547, !noalias !39548 ; 2 uses
  %i.w = sub i64 %.sroa.427.0.copyload.i.i, %.sroa.026.0.copyload.i.i
  %.not.i.i.i = icmp ugt i64 %i.g, %i.w
  br i1 %.not.i.i.i, label %bb.j, label %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !39549
  unreachable

_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i
  %.sroa.831.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.831.0.copyload.i.i = load ptr, ptr %.sroa.831.0..sroa_idx.i.i, align 8, !alias.scope !39547, !noalias !39548 ; 2 uses
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.730.0.copyload.i.i = load i64, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !alias.scope !39547, !noalias !39548 ; 2 uses
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.629.0.copyload.i.i = load i64, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !alias.scope !39547, !noalias !39548 ; 2 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.528.0.copyload.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !alias.scope !39547, !noalias !39548 ; 2 uses
  %i.x = add i64 %.sroa.026.0.copyload.i.i, %i.g  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !39547, !noalias !39548, !noundef !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !39545, !noalias !39550, !noundef !67 ; 2 uses
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
  %.val.i.i12 = load ptr, ptr %i.ae, align 8, !noalias !39551, !noundef !67 ; 2 uses
  %i.af = icmp eq ptr %.val.i.i12, null
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_EEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i12, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ag = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !39551, !inline_history !39534
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !39551, !nonnull !67, !noundef !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !39552, !noundef !67 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i, null
  br i1 %i.aj, label %bb.n, label %bb.m, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.al = load ptr, ptr %i.ak, align 16, !noalias !39552, !nonnull !67, !noundef !67
  %.not.i11 = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i11, label %bb.o, label %bb.p, !prof !77

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3D_9iterators11AxisIterMutdINtNtNtB3D_9dimension3dim3DimAjj1_EEEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8P_5types3any5PyAnyEB8K_EEs7_0EE0NCB1G_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39537
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.m
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_EEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_EEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3E_9iterators11AxisIterMutdINtNtNtB3E_9dimension3dim3DimAjj1_EEEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8Q_5types3any5PyAnyEB8L_EEs7_0EE0NCB1H_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39537
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39590)
  %i.g = lshr i64 %0, 1                           ; 5 uses
  %.not.i = icmp ult i64 %i.g, %3
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not1.i = icmp eq i64 %2, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvCslLviULm4Laq_10rayon_core19current_num_threads(), !noalias !39590
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39591)
  %i.m = sub i64 %.sroa.435.0.copyload, %.sroa.034.0.copyload
  %i.n = add i64 %.sroa.941.0.copyload, %i.m      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39592)
  %.val.i.i = load ptr, ptr %5, align 8, !alias.scope !39593, !noalias !39594 ; 3 uses
  %i.o = icmp ult i64 %.sroa.941.0.copyload, %i.n
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.034.0.copyload, i64 %.sroa.435.0.copyload)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !39595
  store i64 %i.r, ptr %i.b, align 8, !noalias !39595
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39595
  store <2 x i64> %i.l, ptr %.sroa.54.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !39595
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i, align 8, !noalias !39596, !nonnull !67, !align !98, !noundef !67
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.p, align 8, !noalias !39596
  call fastcc void @_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2C_5types3any5PyAnyEB2x_NtB1x_10UndirectedEEs5_0CskcxRuJ53GpR_9rustworkx(ptr nonnull %.val.i.i.i.i.i.i.i.i.i, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i.i) #64, !noalias !39595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !39595
  %exitcond11.not.i.i.i.i.i.i = icmp eq i64 %i.s, %i.n
  br i1 %exitcond11.not.i.i.i.i.i.i, label %_RINvYINtNtNtCs1JJT1bG4y5L_5rayon4iter9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB19_9iterators11AxisIterMutdINtNtNtB19_9dimension3dim3DimAjj1_EEEENtNtB8_8plumbing8Producer9fold_withINtNtB8_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB6T_5types3any5PyAnyEB6O_NtB5O_10UndirectedEEs7_0EECskcxRuJ53GpR_9rustworkx.exit, label %bb.g

bb.i:                                             ; preds = %bb.e, %bb.d
  %.sink.i = phi i64 [ %i.j, %bb.d ], [ %i.k, %bb.e ]
  store i64 %.sink.i, ptr %i.d, align 8, !alias.scope !39590
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.g, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39597)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !39598)
  %.sroa.026.0.copyload.i.i = load i64, ptr %4, align 8, !alias.scope !39599, !noalias !39600 ; 3 uses
  %.sroa.427.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.427.0.copyload.i.i = load i64, ptr %.sroa.427.0..sroa_idx.i.i, align 8, !alias.scope !39599, !noalias !39600 ; 2 uses
  %i.w = sub i64 %.sroa.427.0.copyload.i.i, %.sroa.026.0.copyload.i.i
  %.not.i.i.i = icmp ugt i64 %i.g, %i.w
  br i1 %.not.i.i.i, label %bb.j, label %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2341, i64 noundef 37, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4316) #60, !noalias !39601
  unreachable

_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.i
  %.sroa.831.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.sroa.831.0.copyload.i.i = load ptr, ptr %.sroa.831.0..sroa_idx.i.i, align 8, !alias.scope !39599, !noalias !39600 ; 2 uses
  %.sroa.730.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.730.0.copyload.i.i = load i64, ptr %.sroa.730.0..sroa_idx.i.i, align 8, !alias.scope !39599, !noalias !39600 ; 2 uses
  %.sroa.629.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.629.0.copyload.i.i = load i64, ptr %.sroa.629.0..sroa_idx.i.i, align 8, !alias.scope !39599, !noalias !39600 ; 2 uses
  %.sroa.528.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.528.0.copyload.i.i = load i64, ptr %.sroa.528.0..sroa_idx.i.i, align 8, !alias.scope !39599, !noalias !39600 ; 2 uses
  %i.x = add i64 %.sroa.026.0.copyload.i.i, %i.g  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.z = load i64, ptr %i.y, align 8, !alias.scope !39599, !noalias !39600, !noundef !67 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !39597, !noalias !39602, !noundef !67 ; 2 uses
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
  %.val.i.i12 = load ptr, ptr %i.ae, align 8, !noalias !39603, !noundef !67 ; 2 uses
  %i.af = icmp eq ptr %.val.i.i12, null
  br i1 %i.af, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_NtB6T_10UndirectedEEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i12, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.l:                                             ; preds = %_RNvXs1_NtNtCs1JJT1bG4y5L_5rayon4iter9enumerateINtB5_17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB1e_9iterators11AxisIterMutdINtNtNtB1e_9dimension3dim3DimAjj1_EEEENtNtB7_8plumbing8Producer8split_atCskcxRuJ53GpR_9rustworkx.exit
  %i.ag = call noundef nonnull align 8 ptr @_RNvNtCslLviULm4Laq_10rayon_core8registry15global_registry(), !noalias !39603, !inline_history !39586
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !39603, !nonnull !67, !noundef !67 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 128 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !noalias !39604, !noundef !67 ; 4 uses
  %i.aj = icmp eq ptr %.val.i.i.i, null
  br i1 %i.aj, label %bb.n, label %bb.m, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 272
  %i.al = load ptr, ptr %i.ak, align 16, !noalias !39604, !nonnull !67, !noundef !67
  %.not.i11 = icmp eq ptr %i.al, %i.ah
  br i1 %.not.i11, label %bb.o, label %bb.p, !prof !77

bb.n:                                             ; preds = %bb.l
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry14in_worker_coldNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1N_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3D_9iterators11AxisIterMutdINtNtNtB3D_9dimension3dim3DimAjj1_EEEEINtNtB1N_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8P_5types3any5PyAnyEB8K_NtB7K_10UndirectedEEs7_0EE0NCB1G_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39589
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.m
  call fastcc void @_RNCINvNtCslLviULm4Laq_10rayon_core4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtBY_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB2N_9iterators11AxisIterMutdINtNtNtB2N_9dimension3dim3DimAjj1_EEEEINtNtBY_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB7Y_5types3any5PyAnyEB7T_NtB6T_10UndirectedEEs7_0EE0NCBR_s_0uuE0CskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(184) %i.a, ptr noundef nonnull align 128 %.val.i.i.i, i1 noundef zeroext false) #64
  br label %_RINvNtCslLviULm4Laq_10rayon_core8registry9in_workerNCINvNtB4_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1p_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3f_9iterators11AxisIterMutdINtNtNtB3f_9dimension3dim3DimAjj1_EEEEINtNtB1p_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8r_5types3any5PyAnyEB8m_NtB7m_10UndirectedEEs7_0EE0NCB1i_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx.exit

bb.p:                                             ; preds = %bb.m
  call fastcc void @_RINvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB6_8Registry15in_worker_crossNCINvNtB8_4join12join_contextNCINvNvNtNtCs1JJT1bG4y5L_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB1O_9enumerate17EnumerateProducerINtNtNtCshByAT0BfsDP_7ndarray8parallel3par16ParallelProducerINtNtB3E_9iterators11AxisIterMutdINtNtNtB3E_9dimension3dim3DimAjj1_EEEEINtNtB1O_8for_each15ForEachConsumerNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core13shortest_path15distance_matrix15distance_matrixRINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB8Q_5types3any5PyAnyEB8L_NtB7L_10UndirectedEEs7_0EE0NCB1H_s_0uuE0TuuEECskcxRuJ53GpR_9rustworkx(ptr noundef nonnull align 128 %i.ai, ptr noundef nonnull align 128 %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(184) %i.a), !inline_history !39589
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
  store i64 %.sink.i, ptr %i.g, align 8, !alias.scope !39646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.j, ptr %i.f, align 8
  %.not.i.i = icmp ugt i64 %i.j, %6
  br i1 %.not.i.i, label %.noexc.i, label %bb.i, !prof !71

.noexc.i:                                         ; preds = %bb.e
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1533, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4221) #60
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !39647, !noalias !39648, !noundef !67 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !39647, !noalias !39648, !noundef !67 ; 2 uses
  %i.s = load ptr, ptr %7, align 8, !alias.scope !39647, !noalias !39648, !nonnull !67, !align !98, !noundef !67 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtBG_6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1O_6string6StringB2E_EEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3M_4read7StrReadEECskcxRuJ53GpR_9rustworkx:bb.a
  %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cn, %bb.z ], [ %.sink.i.i.i.i.i9.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cv = invoke fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %.sroa.8.1.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.bd)
          to label %bb.ah unwind label %.loopexit.split-lp39.i.i.i.i.i.i, !noalias !45023

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
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.04754.i.i.i.i.i.i.i.i, i64 noundef %.sroa.15.04655.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45040
  br label %.body.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc15.i.i.i.i.i.i.i.i, %bb.aa, %.noexc13.i.i.i.i.i.i.i.i, %.noexc12.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %.sroa.1026.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.ca, %.noexc.i.i.i.i.i.i.i.i ], [ %i.cm, %bb.aa ], [ %i.ci, %.noexc13.i.i.i.i.i.i.i.i ], [ %i.cb, %.noexc12.i.i.i.i.i.i.i.i ], [ %i.cv, %.noexc15.i.i.i.i.i.i.i.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.1026.0.ph.i.i.i.i.i.i.i.i) ]
  %i.cx = icmp eq i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.04754.i.i.i.i.i.i.i.i, i64 noundef %.sroa.15.04655.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45041
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
          to label %common.resume.i.i.i.i.i unwind label %bb.ak, !noalias !44999

_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.17.0.i.i.i.i.i.i = phi i64 [ %.sroa.4.0.copyload.i.i.i.i.i8.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i.i = phi ptr [ %.sink.i.i.i.i.i9.i.i.i.i.i.i.i.i, %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ inttoptr (i64 1 to ptr), %_RINvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB6_13StringVisitorNtB8_7Visitor9visit_strNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  switch i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, label %bb.ai [
    i64 -2, label %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i
    i64 -1, label %.thread.i.i.i.i.i.i
  ]

_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i: ; preds = %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtCs87CvPiUlf0m_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtCsatKl79ZghOI_10serde_json2de6MapKeyNtNtB2A_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i, %bb.ah, %.loopexit35.i.i.i.i.i.i, %bb.k
  %.sroa.9.014.i.i.i.i.i.i = phi ptr [ %.sroa.1026.0.ph.i.i.i.i.i.i.i.i, %bb.ah ], [ %.sroa.7.014.i.i.i.i.i.i.i.i.i, %.loopexit35.i.i.i.i.i.i ], [ %i.ba, %bb.k ], [ %.sroa.1026.0.ph.i.i.i.i.i.i.i.i, %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i20.i.i.i.i.i.i.i.i ], [ %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtCs87CvPiUlf0m_5alloc6string6StringENtB6_15DeserializeSeed11deserializeINtNtCsatKl79ZghOI_10serde_json2de6MapKeyNtNtB2A_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i.i.i ], [ %.sroa.10.04754.i.i.i.i.i.i.i.i, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m), !noalias !44999
  br label %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.ai:                                            ; preds = %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !44994
  store i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, ptr %i.l, align 8, !noalias !44994
  store ptr %.sroa.10.04754.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx2.i.i.i.i.i.i, align 8, !noalias !44994
  store i64 %.sroa.15.04655.i.i.i.i.i.i.i.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i.i.i.i, align 8, !noalias !44994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44994
  store i64 %.sroa.17.0.i.i.i.i.i.i, ptr %i.k, align 8, !noalias !44994
  store ptr %.sroa.16.0.i.i.i.i.i.i, ptr %.sroa.3.sroa.5.16..sroa_idx.i.i.i.i.i.i, align 8, !noalias !44994
  store i64 %.sroa.17.0.i.i.i.i.i.i, ptr %.sroa.3.sroa.6.16..sroa_idx.i.i.i.i.i.i, align 8, !noalias !44994
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44994
  invoke fastcc void @_RNvMsi_NtNtNtCs87CvPiUlf0m_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringB17_E6insertCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.aj unwind label %.loopexit.i19.i.i.i.i.i, !noalias !44999

.thread.i.i.i.i.i.i:                              ; preds = %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %bb.l
  %.sroa.623.8.copyload.i.i.i.i.i = load ptr, ptr %i.m, align 8, !noalias !45042
  %.sroa.8.8..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !45042
  br label %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.aj:                                            ; preds = %bb.ai
  %.val.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !range !66, !noalias !44994, !noundef !67 ; 2 uses
  %i.cy = icmp sgt i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.cy, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs87CvPiUlf0m_5alloc6string6StringEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i: ; preds = %bb.aj
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.aw, align 8, !noalias !44994, !nonnull !67, !noundef !67
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #59, !noalias !45043
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs87CvPiUlf0m_5alloc6string6StringEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs87CvPiUlf0m_5alloc6string6StringEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !44994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !44994
  br label %bb.j

bb.ak:                                            ; preds = %.body.i.i.i.i.i.i
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !44999
  unreachable

common.resume.i.i.i.i.i:                          ; preds = %bb.al, %.body.i.i.i.i.i.i
  %common.resume.op.i.i.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.dd, %bb.al ]
  resume { ptr, i32 } %common.resume.op.i.i.i.i.i

_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.thread.i.i.i.i.i.i, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i
  %.sroa.022.0.i.i.i.i.i = phi i64 [ 1, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i ], [ 0, %.thread.i.i.i.i.i.i ]
  %.sroa.623.0.i.i.i.i.i = phi ptr [ %.sroa.9.014.i.i.i.i.i.i, %_RINvYINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess10next_entryNtNtCs87CvPiUlf0m_5alloc6string6StringB1Z_ECskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i.i ], [ %.sroa.623.8.copyload.i.i.i.i.i, %.thread.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44994
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !44990
  %i.da = load i8, ptr %i.ak, align 8, !alias.scope !44992, !noalias !44991, !noundef !67
  %i.db = add i8 %i.da, 1
  store i8 %i.db, ptr %i.ak, align 8, !alias.scope !44992, !noalias !44991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !44990
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44990
  store i64 %.sroa.022.0.i.i.i.i.i, ptr %i.o, align 8, !noalias !44990
  %.sroa.623.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %.sroa.623.0.i.i.i.i.i, ptr %.sroa.623.0..sroa_idx.i.i.i.i.i, align 8, !noalias !44990
  %.sroa.8.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i.i.i.i, i64 16, i1 false), !noalias !44990
  %i.dc = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.am unwind label %bb.al, !noalias !44991 ; 5 uses

bb.al:                                            ; preds = %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringB1W_ENtNtCsatKl79ZghOI_10serde_json5error5ErrorEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(32) %i.o) #63
          to label %common.resume.i.i.i.i.i unwind label %bb.aq, !noalias !44991

bb.am:                                            ; preds = %_RINvXNvXs3d_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringB2C_ENtBc_7Visitor9visit_mapINtNtCsatKl79ZghOI_10serde_json2de9MapAccessNtNtB3u_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !44990
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.dc, ptr %i.de, align 8, !noalias !44990
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44990
  %i.df = load i64, ptr %i.p, align 8, !range !68, !noalias !44990, !noundef !67
  %i.dg = trunc nuw i64 %i.df to i1
  br i1 %i.dg, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not.i.i.i.i.i = icmp eq ptr %i.dc, null
  %i.dh = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.au, label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !44990, !nonnull !67, !align !98, !noundef !67 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  %.not43.i.i.i.i.i = icmp eq ptr %i.dc, null
  br i1 %.not43.i.i.i.i.i, label %.thread35.i.i.i.i.i, label %bb.ar

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringB1A_EECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(24) %i.dh), !noalias !44991
  br label %.thread35.i.i.i.i.i

bb.aq:                                            ; preds = %bb.al
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCslwFuT2d6ECx_4core9panicking16panic_in_cleanup() #58, !noalias !44991
  unreachable

.thread35.i.i.i.i.i:                              ; preds = %bb.ar, %bb.ap, %bb.ao
  %.sroa.7.042.i.i.i.i.i = phi ptr [ %i.dj, %bb.ar ], [ %i.dj, %bb.ao ], [ %i.dc, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44990
  br label %bb.as

bb.ar:                                            ; preds = %bb.ao
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCsatKl79ZghOI_10serde_json5error5ErrorECskcxRuJ53GpR_9rustworkx(ptr nonnull %i.dc), !noalias !44991
  br label %.thread35.i.i.i.i.i

bb.as:                                            ; preds = %.thread35.i.i.i.i.i, %bb.g
  %.sroa.7.1.i.i.i.i.i = phi ptr [ %.sroa.7.042.i.i.i.i.i, %.thread35.i.i.i.i.i ], [ %i.ao, %bb.g ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.1.i.i.i.i.i) ]
  %i.dl = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %.sroa.7.1.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !44991
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.h, %.loopexit.i.i.i.i.i
  %.sink259.i.ph.i.i.i = phi ptr [ %i.dl, %bb.as ], [ %i.ap, %bb.h ], [ %i.aj, %.loopexit.i.i.i.i.i ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink259.i.ph.i.i.i, ptr %i.dm, align 8, !alias.scope !45044, !noalias !45045
  store i64 2, ptr %0, align 8, !alias.scope !45044, !noalias !45045
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.au:                                            ; preds = %bb.an
  %.sroa.08.0.copyload.i.i.i.i.i = load ptr, ptr %i.dh, align 8, !noalias !44990
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !noalias !45045
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44990
  store i64 1, ptr %0, align 8, !alias.scope !45044, !noalias !45045
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.08.0.copyload.i.i.i.i.i, ptr %.sroa.44.0..sroa_idx.i.i.i, align 8, !alias.scope !45044, !noalias !45045
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.av:                                            ; preds = %bb.b
  %i.dn = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.dn, ptr %i.s, align 8, !alias.scope !45046, !noalias !45047
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45048)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.dn, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45049)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45050)
  %exitcond.not.i8.not.i.i = icmp ult i64 %i.dn, %i.u
  br i1 %exitcond.not.i8.not.i.i, label %bb.aw, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.do = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !noalias !45051, !noundef !67
  %i.dq = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.dq, ptr %i.s, align 8, !alias.scope !45052, !noalias !45053
  %.not.i.i.i = icmp eq i8 %i.dp, 117
  br i1 %.not.i.i.i, label %bb.ax, label %bb.bb, !prof !153

bb.ax:                                            ; preds = %bb.aw
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45054)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45055)
  %exitcond.not.i8.1.i.i = icmp eq i64 %i.dq, %umax.i.i.i
  br i1 %exitcond.not.i8.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dr = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !45056, !noundef !67
  %i.dt = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.dt, ptr %i.s, align 8, !alias.scope !45057, !noalias !45053
  %.not.i.1.i.i = icmp eq i8 %i.ds, 108
  br i1 %.not.i.1.i.i, label %bb.az, label %bb.bb, !prof !153

bb.az:                                            ; preds = %bb.ay
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45058)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45059)
  %exitcond.not.i8.2.i.i = icmp eq i64 %i.dt, %umax.i.i.i
  br i1 %exitcond.not.i8.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.du = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !noalias !45060, !noundef !67
  %i.dw = add i64 %i.y, 4
  store i64 %i.dw, ptr %i.s, align 8, !alias.scope !45061, !noalias !45053
  %.not.i.2.i.i = icmp eq i8 %i.dv, 108
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.bb, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.az, %bb.ax, %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !45062
  store i64 5, ptr %i.c, align 8, !noalias !45062
  %i.dx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !45063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45062
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba, %bb.ay, %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45062
  store i64 9, ptr %i.b, align 8, !noalias !45062
  %i.dy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !45063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45062
  br label %bb.bc

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.ba
  store i64 0, ptr %0, align 8, !alias.scope !45064, !noalias !45065
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.bc:                                            ; preds = %bb.bb, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.dx, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.dy, %bb.bb ]
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.dz, align 8, !alias.scope !45047, !noalias !45065
  store i64 2, ptr %0, align 8, !alias.scope !45047, !noalias !45065
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionINtNtNtNtCs87CvPiUlf0m_5alloc11collections5btree3map8BTreeMapNtNtB1u_6string6StringB2k_EENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB3n_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.at, %bb.au, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.bc
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtBG_6option6OptionjEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB2n_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45103)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45104)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45105)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45107)
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
  %.pre.i.i.i = load i8, ptr %i.c, align 8, !range !69, !alias.scope !45108, !noalias !45109
  %i.k = trunc nuw i8 %.pre.i.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45110)
  br i1 %i.k, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45111
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45114)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45116)
  %i.l = load i64, ptr %i.f, align 8, !alias.scope !45117, !noalias !45118, !noundef !67 ; 3 uses
  %i.m = load i64, ptr %i.g, align 8, !alias.scope !45117, !noalias !45118, !noundef !67
  %.not.i.not.i.i.i.i.i.peel.i.i = icmp eq i64 %i.m, %i.l
  br i1 %.not.i.not.i.i.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i: ; preds = %bb.b
  %i.n = load ptr, ptr %i.e, align 8, !alias.scope !45117, !noalias !45118, !nonnull !67, !noundef !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  %.val2.i.i.i.i.i.i.peel.i.i = load i8, ptr %i.o, align 1, !noalias !45119, !noundef !67
  %i.p = add i64 %i.l, 1
  store i64 %i.p, ptr %i.f, align 8, !alias.scope !45117, !noalias !45118
  br label %bb.c

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i: ; preds = %bb.b
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #62, !noalias !45109
  %.pr.i.i.i.peel.i.i = load i8, ptr %i.a, align 8, !noalias !45111
  switch i8 %.pr.i.i.i.peel.i.i, label %.sink.split18.i [
    i8 2, label %.sink.split.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %.pre.i.i.i.peel.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !45112, !noalias !45120
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i
  %.pre.i.i.peel.i.i = phi i8 [ %.pre.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i ], [ %.val2.i.i.i.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i ] ; 3 uses
  %i.q = icmp eq i8 %.pre.i.i.peel.i.i, 10
  %i.r = load i64, ptr %i.h, align 8, !alias.scope !45121, !noalias !45122, !noundef !67
  %i.s = add i64 %i.r, 1                          ; 2 uses
  br i1 %i.q, label %_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i

_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i: ; preds = %bb.c
  %i.t = load i64, ptr %i.i, align 8, !alias.scope !45121, !noalias !45122, !noundef !67
  %i.u = add i64 %i.t, %i.s
  store i64 %i.u, ptr %i.i, align 8, !alias.scope !45121, !noalias !45122
  %i.v = load i64, ptr %i.b, align 8, !alias.scope !45121, !noalias !45122, !noundef !67
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.b, align 8, !alias.scope !45121, !noalias !45122
  br label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i: ; preds = %_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i, %bb.c
  %.sink.i.peel.i.i = phi i64 [ 0, %_RNvXs_NtCsatKl79ZghOI_10serde_json4iterINtB4_15LineColIteratorINtNtNtCs87CvPiUlf0m_5alloc2io4util5BytesINtNtNtB13_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread1.i.i.peel.i.i ], [ %i.s, %bb.c ]
  store i64 %.sink.i.peel.i.i, ptr %i.h, align 8, !alias.scope !45121, !noalias !45122
  store i8 1, ptr %i.c, align 8, !alias.scope !45123, !noalias !45109
  store i8 %.pre.i.i.peel.i.i, ptr %i.d, align 1, !alias.scope !45123, !noalias !45109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45111
  br label %bb.d

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i: ; preds = %bb.a
  %i.x = load i8, ptr %i.d, align 1, !alias.scope !45123, !noalias !45109, !noundef !67
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
  store i8 0, ptr %i.c, align 8, !alias.scope !45124, !noalias !45125
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45126)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45131)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45132)
  %i.z = load i64, ptr %i.f, align 8, !alias.scope !45133, !noalias !45134, !noundef !67 ; 3 uses
  %i.aa = load i64, ptr %i.g, align 8, !alias.scope !45133, !noalias !45134, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.z
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %.peel.next.i.i
  %i.ab = load ptr, ptr %i.e, align 8, !alias.scope !45133, !noalias !45134, !nonnull !67, !noundef !67
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  %.val2.i.i.i.i.i.i.i.i = load i8, ptr %i.ac, align 1, !noalias !45135, !noundef !67
  %i.ad = add i64 %i.z, 1
  store i64 %i.ad, ptr %i.f, align 8, !alias.scope !45133, !noalias !45134
  br label %bb.e

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.e) #62, !noalias !45109
  %.pr.i.i.i.i.i = load i8, ptr %i.a, align 8, !noalias !45127
  switch i8 %.pr.i.i.i.i.i, label %.sink.split18.i [
    i8 2, label %.sink.split.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !45128, !noalias !45136
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i
  %.pre.i.i.i.i = phi i8 [ %.pre.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ] ; 4 uses
  %i.ae = icmp eq i8 %.pre.i.i.i.i, 10
  %i.af = load i64, ptr %i.h, align 8, !alias.scope !45137, !noalias !45138, !noundef !67
  %i.ag = add i64 %i.af, 1                        ; 2 uses
  br i1 %i.ae, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i: ; preds = %bb.e
  %i.ah = load i64, ptr %i.i, align 8, !alias.scope !45137, !noalias !45138, !noundef !67
  %i.ai = add i64 %i.ah, %i.ag
  store i64 %i.ai, ptr %i.i, align 8, !alias.scope !45137, !noalias !45138
  %i.aj = load i64, ptr %i.b, align 8, !alias.scope !45137, !noalias !45138, !noundef !67
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !45137, !noalias !45138
  store i64 0, ptr %i.h, align 8, !alias.scope !45137, !noalias !45138
  store i8 1, ptr %i.c, align 8, !alias.scope !45108, !noalias !45109
  store i8 10, ptr %i.d, align 1, !alias.scope !45108, !noalias !45109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45127
  br label %.peel.next.i.i.backedge

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.e
  store i64 %i.ag, ptr %i.h, align 8, !alias.scope !45137, !noalias !45138
  store i8 1, ptr %i.c, align 8, !alias.scope !45108, !noalias !45109
  store i8 %.pre.i.i.i.i, ptr %i.d, align 1, !alias.scope !45108, !noalias !45109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45127
  switch i8 %.pre.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i [
    i8 32, label %.peel.next.i.i.backedge
    i8 13, label %.peel.next.i.i.backedge
    i8 9, label %.peel.next.i.i.backedge
  ]

.peel.next.i.i.backedge:                          ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i
  br label %.peel.next.i.i, !llvm.loop !45097

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  %i.al = phi i8 [ %i.y, %bb.d ], [ %.pre.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i ]
  %i.am = icmp eq i8 %i.al, 110
  br i1 %i.am, label %bb.g, label %bb.f

.sink.split.i:                                    ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45139
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45140)
  %i.an = tail call fastcc { i64, ptr } @_RINvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtB9_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1m_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) #64, !noalias !45141 ; 2 uses
  %i.ao = extractvalue { i64, ptr } %i.an, 0
  %spec.select.i.i.i = add i64 %i.ao, 1
  %i.ap = extractvalue { i64, ptr } %i.an, 1
  %.sink2.i.i.i = ptrtoint ptr %i.ap to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.aq, align 8, !alias.scope !45141, !noalias !45142
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

bb.g:                                             ; preds = %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i
  store i8 0, ptr %i.c, align 8, !alias.scope !45143, !noalias !45144
  %i.ar = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE11parse_identCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 3), !noalias !45144 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i, label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit, label %bb.h

.sink.split18.i:                                  ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %i.as = load ptr, ptr %i.j, align 8, !noalias !45139, !nonnull !67, !noundef !67
  %i.at = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.as), !noalias !45109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45139
  br label %bb.h

bb.h:                                             ; preds = %.sink.split18.i, %bb.g
  %.sink.i.i = phi ptr [ %i.ar, %bb.g ], [ %i.at, %.sink.split18.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.au, align 8, !alias.scope !45144, !noalias !45145
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1Y_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g, %bb.h
  %.sink45.i.i = phi i64 [ 2, %bb.h ], [ %spec.select.i.i.i, %bb.f ], [ 0, %bb.g ]
  store i64 %.sink45.i.i, ptr %0, align 8, !alias.scope !45144, !noalias !45145
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs3_NtCs59S24YpdcPa_10serde_core2deINtNtCslwFuT2d6ECx_4core6marker11PhantomDataINtNtBG_6option6OptionjEENtB6_15DeserializeSeed11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB2n_4read7StrReadEECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45183)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45185)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !45186, !noalias !45187, !noundef !67 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !45188, !noalias !45189 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i.i.i, %i.e
  br i1 %i.f, label %.lr.ph.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !45186, !noalias !45187, !nonnull !67, !noundef !67 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.i = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.l, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45191)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noalias !45192, !noundef !67
  switch i8 %i.k, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = add i64 %i.i, 1                          ; 3 uses
  store i64 %i.l, ptr %i.c, align 8, !alias.scope !45193, !noalias !45189
  %exitcond.not.i.i.i = icmp eq i64 %i.l, %i.e
  br i1 %exitcond.not.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, label %bb.b

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45194)
  %i.m = tail call fastcc { i64, ptr } @_RINvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtB9_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1m_4read7StrReadEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) #64, !noalias !45195 ; 2 uses
  %i.n = extractvalue { i64, ptr } %i.m, 0
  %spec.select.i.i.i = add i64 %i.n, 1
  %i.o = extractvalue { i64, ptr } %i.m, 1
  %.sink2.i.i.i = ptrtoint ptr %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink2.i.i.i, ptr %i.p, align 8, !alias.scope !45195, !noalias !45196
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  %i.q = add i64 %i.i, 1                          ; 4 uses
  store i64 %i.q, ptr %i.c, align 8, !alias.scope !45197, !noalias !45198
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45199)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 %i.e) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45201)
  %exitcond.not.i8.not.i.i = icmp ult i64 %i.q, %i.e
  br i1 %exitcond.not.i8.not.i.i, label %bb.e, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noalias !45202, !noundef !67
  %i.t = add i64 %i.i, 2                          ; 3 uses
  store i64 %i.t, ptr %i.c, align 8, !alias.scope !45203, !noalias !45204
  %.not.i.i.i = icmp eq i8 %i.s, 117
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !153

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45206)
  %exitcond.not.i8.1.i.i = icmp eq i64 %i.t, %umax.i.i.i
  br i1 %exitcond.not.i8.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !noalias !45207, !noundef !67
  %i.w = add i64 %i.i, 3                          ; 3 uses
  store i64 %i.w, ptr %i.c, align 8, !alias.scope !45208, !noalias !45204
  %.not.i.1.i.i = icmp eq i8 %i.v, 108
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !153

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45210)
  %exitcond.not.i8.2.i.i = icmp eq i64 %i.w, %umax.i.i.i
  br i1 %exitcond.not.i8.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !45211, !noundef !67
  %i.z = add i64 %i.i, 4
  store i64 %i.z, ptr %i.c, align 8, !alias.scope !45212, !noalias !45204
  %.not.i.2.i.i = icmp eq i8 %i.y, 108
  br i1 %.not.i.2.i.i, label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit, label %bb.j, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !45213
  store i64 5, ptr %i.b, align 8, !noalias !45213
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !45214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45213
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !45213
  store i64 9, ptr %i.a, align 8, !noalias !45213
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !45214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !45213
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i.ph.i.i = phi ptr [ %i.aa, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ab, %bb.j ]
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i.i, ptr %i.ac, align 8, !alias.scope !45198, !noalias !45215
  br label %_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RINvXse_NtNtCs59S24YpdcPa_10serde_core2de5implsINtNtCslwFuT2d6ECx_4core6option6OptionjENtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1Y_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i, %bb.i, %bb.k
  %.sink.i.i = phi i64 [ 2, %bb.k ], [ %spec.select.i.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.thread.i.i ], [ 0, %bb.i ]
  store i64 %.sink.i.i, ptr %0, align 8, !alias.scope !45198, !noalias !45215
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45381)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45383)
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
  %.pre.i.i.i = load i8, ptr %i.as, align 8, !range !69, !alias.scope !45384, !noalias !45385
  %i.ba = trunc nuw i8 %.pre.i.i.i to i1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45386)
  br i1 %i.ba, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !45387
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45390)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45391)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45392)
  %i.bb = load i64, ptr %i.av, align 8, !alias.scope !45393, !noalias !45394, !noundef !67 ; 3 uses
  %i.bc = load i64, ptr %i.aw, align 8, !alias.scope !45393, !noalias !45394, !noundef !67
  %.not.i.not.i.i.i.i.i.peel.i.i = icmp eq i64 %i.bc, %i.bb
  br i1 %.not.i.not.i.i.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i: ; preds = %bb.b
  %i.bd = load ptr, ptr %i.au, align 8, !alias.scope !45393, !noalias !45394, !nonnull !67, !noundef !67
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb
  %.val2.i.i.i.i.i.i.peel.i.i = load i8, ptr %i.be, align 1, !noalias !45395, !noundef !67
  %i.bf = add i64 %i.bb, 1
  store i64 %i.bf, ptr %i.av, align 8, !alias.scope !45393, !noalias !45394
  br label %bb.c

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i: ; preds = %bb.b
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.am, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.au) #62, !noalias !45385
  %.pr.i.i.i.peel.i.i = load i8, ptr %i.am, align 8, !noalias !45387
  switch i8 %.pr.i.i.i.peel.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i [
    i8 2, label %.thread514.i.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %.pre.i.i.i.peel.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !45388, !noalias !45396
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i
  %.pre.i.i.peel.i.i = phi i8 [ %.pre.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.peel.i.i ], [ %.val2.i.i.i.i.i.i.peel.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.peel.i.i ] ; 3 uses
  %i.bg = icmp eq i8 %.pre.i.i.peel.i.i, 10
  %i.bh = load i64, ptr %i.ax, align 8, !alias.scope !45397, !noalias !45398, !noundef !67
  %i.bi = add i64 %i.bh, 1                        ; 2 uses
  br i1 %i.bg, label %.peel.next.i.i.sink.split, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  %i.bj = load ptr, ptr %i.az, align 8, !noalias !45387, !nonnull !67, !noundef !67
  %i.bk = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.bj), !noalias !45385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !45387
  br label %bb.f

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.i: ; preds = %bb.c
  store i64 %i.bi, ptr %i.ax, align 8, !alias.scope !45397, !noalias !45398
  store i8 1, ptr %i.as, align 8, !alias.scope !45399, !noalias !45385
  store i8 %.pre.i.i.peel.i.i, ptr %i.at, align 1, !alias.scope !45399, !noalias !45385
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !45387
  br label %bb.d

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.peel.i.thread.i: ; preds = %bb.a
  %i.bl = load i8, ptr %i.at, align 1, !alias.scope !45399, !noalias !45385, !noundef !67
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
  store i8 0, ptr %i.e, align 8, !alias.scope !46459, !noalias !46460
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46462
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46467)
  %i.ad = load i64, ptr %i.h, align 8, !alias.scope !46468, !noalias !46469, !noundef !67 ; 3 uses
  %i.ae = load i64, ptr %i.i, align 8, !alias.scope !46468, !noalias !46469, !noundef !67
  %.not.i.not.i.i.i.i.i.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not.i.not.i.i.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i: ; preds = %.peel.next.i.i
  %i.af = load ptr, ptr %i.g, align 8, !alias.scope !46468, !noalias !46469, !nonnull !67, !noundef !67
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad
  %.val2.i.i.i.i.i.i.i.i = load i8, ptr %i.ag, align 1, !noalias !46470, !noundef !67
  %i.ah = add i64 %i.ad, 1
  store i64 %i.ah, ptr %i.h, align 8, !alias.scope !46468, !noalias !46469
  br label %bb.e

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.peel.next.i.i
  call fastcc void @_RINvNtNtCs87CvPiUlf0m_5alloc2io4util24uninlined_slow_read_byteINtNtNtB4_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.g) #62, !noalias !46444
  %.pr.i.i.i.i.i = load i8, ptr %i.b, align 8, !noalias !46462
  switch i8 %.pr.i.i.i.i.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i [
    i8 2, label %.thread74.i.i
    i8 0, label %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i
  ]

_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.pre.i.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 1, !alias.scope !46463, !noalias !46471
  br label %bb.e

bb.e:                                             ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i
  %.pre.i.i.i.i = phi i8 [ %.pre.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit._crit_edge.i.i.i.i.i ], [ %.val2.i.i.i.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.thread.i.i.i.i.i ] ; 3 uses
  %i.ai = icmp eq i8 %.pre.i.i.i.i, 10
  %i.aj = load i64, ptr %i.j, align 8, !alias.scope !46472, !noalias !46473, !noundef !67
  %i.ak = add i64 %i.aj, 1                        ; 2 uses
  br i1 %i.ai, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i, label %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i: ; preds = %bb.e
  %i.al = load i64, ptr %i.k, align 8, !alias.scope !46472, !noalias !46473, !noundef !67
  %i.am = add i64 %i.al, %i.ak
  store i64 %i.am, ptr %i.k, align 8, !alias.scope !46472, !noalias !46473
  %i.an = load i64, ptr %i.d, align 8, !alias.scope !46472, !noalias !46473, !noundef !67
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.d, align 8, !alias.scope !46472, !noalias !46473
  store i64 0, ptr %i.j, align 8, !alias.scope !46472, !noalias !46473
  store i8 1, ptr %i.e, align 8, !alias.scope !46443, !noalias !46444
  store i8 10, ptr %i.f, align 1, !alias.scope !46443, !noalias !46444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46462
  br label %.peel.next.i.i.backedge

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i: ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.ap = load ptr, ptr %i.l, align 8, !noalias !46462, !nonnull !67, !noundef !67
  %i.aq = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ap), !noalias !46444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46462
  br label %bb.f

_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.e
  store i64 %i.ak, ptr %i.j, align 8, !alias.scope !46472, !noalias !46473
  store i8 1, ptr %i.e, align 8, !alias.scope !46443, !noalias !46444
  store i8 %.pre.i.i.i.i, ptr %i.f, align 1, !alias.scope !46443, !noalias !46444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46462
  switch i8 %.pre.i.i.i.i, label %.loopexit.i.i [
    i8 32, label %.peel.next.i.i.backedge
    i8 102, label %.loopexit20.i.i
    i8 9, label %.peel.next.i.i.backedge
    i8 13, label %.peel.next.i.i.backedge
    i8 116, label %.loopexit19.i.i
  ], !prof !46474

.peel.next.i.i.backedge:                          ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.thread.i
  br label %.peel.next.i.i, !llvm.loop !46433

.thread74.i.i:                                    ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i.peel.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46475
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46476
  store i64 5, ptr %i.c, align 8, !noalias !46476
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !46477, !noalias !46478, !noundef !67
  %.val8.i.i = load i64, ptr %i.j, align 8, !alias.scope !46477, !noalias !46478, !noundef !67
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.val.i.i, i64 noundef %.val8.i.i), !noalias !46478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46476
  br label %bb.f

bb.f:                                             ; preds = %.thread74.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i
  %.sink.i.i = phi ptr [ %i.ar, %.thread74.i.i ], [ %i.aq, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.thread.thread.i.i ], [ %i.aa, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE16parse_whitespaceCskcxRuJ53GpR_9rustworkx.exit.i.thread10.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i.i, ptr %i.as, align 8, !alias.scope !46478, !noalias !46477
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit19.i.i:                                  ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  store i8 0, ptr %i.e, align 8, !alias.scope !46479, !noalias !46478
  %i.at = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE11parse_identCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1138, i64 noundef 3), !noalias !46478 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.at, null
  br i1 %.not7.i.i, label %bb.h, label %bb.g

.loopexit20.i.i:                                  ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  store i8 0, ptr %i.e, align 8, !alias.scope !46480, !noalias !46478
  %i.au = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE11parse_identCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1139, i64 noundef 4), !noalias !46478 ; 2 uses
  %.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.loopexit20.i.i, %.loopexit19.i.i
  %.sink81.i.i = phi ptr [ %i.au, %.loopexit20.i.i ], [ %i.at, %.loopexit19.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink81.i.i, ptr %i.av, align 8, !alias.scope !46478, !noalias !46477
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

.loopexit.i.i:                                    ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.d
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerINtNtB7_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE17peek_invalid_typeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140), !noalias !46478
  %.val9.i.i = load i64, ptr %i.d, align 8, !alias.scope !46477, !noalias !46478
  %.val10.i.i = load i64, ptr %i.j, align 8, !alias.scope !46477, !noalias !46478
  %i.ax = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %i.aw, i64 %.val9.i.i, i64 %.val10.i.i), !noalias !46478
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.ay, align 8, !alias.scope !46478, !noalias !46477
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

bb.h:                                             ; preds = %.loopexit20.i.i, %.loopexit19.i.i
  %.sroa.7.0.i.i = phi i8 [ 1, %.loopexit19.i.i ], [ 0, %.loopexit20.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0.i.i, ptr %i.az, align 1, !alias.scope !46478, !noalias !46477
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit

_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerINtNtB1l_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.f, %bb.g, %.loopexit.i.i, %bb.h
  %storemerge.sink.i.i = phi i8 [ 1, %bb.g ], [ 1, %bb.f ], [ 0, %bb.h ], [ 1, %.loopexit.i.i ]
  store i8 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !46478, !noalias !46477
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46530)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46531)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46532)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46533)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46534)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !46535, !noalias !46536, !noundef !67 ; 6 uses
  %.promoted.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !46537, !noalias !46538 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !46535, !noalias !46536, !nonnull !67, !noundef !67 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.m = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46540)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !46541, !noundef !67
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
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !46542, !noalias !46538
  %exitcond.not.i.i.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !46543
  store i64 5, ptr %i.f, align 8, !noalias !46543
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !46544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !46543
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8, !alias.scope !46544, !noalias !46545
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !46546, !noalias !46544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46547)
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.s, i64 %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46548)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46549)
  %exitcond.not.i9.not.i.i = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i9.not.i.i, label %bb.e, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !46550, !noundef !67
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !46551, !noalias !46552
  %.not.i.i.i = icmp eq i8 %i.u, 114
  br i1 %.not.i.i.i, label %bb.f, label %bb.j, !prof !153

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46553)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46554)
  %exitcond.not.i9.1.i.i = icmp eq i64 %i.v, %umax.i.i.i
  br i1 %exitcond.not.i9.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !46555, !noundef !67
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !46556, !noalias !46552
  %.not.i.1.i.i = icmp eq i8 %i.x, 117
  br i1 %.not.i.1.i.i, label %bb.h, label %bb.j, !prof !153

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46557)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46558)
  %exitcond.not.i9.2.i.i = icmp eq i64 %i.y, %umax.i.i.i
  br i1 %exitcond.not.i9.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !46559, !noundef !67
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !46560, !noalias !46552
  %.not.i.2.i.i = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.j, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !46561
  store i64 5, ptr %i.e, align 8, !noalias !46561
  %i.ac = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !46562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !46561
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !46561
  store i64 9, ptr %i.d, align 8, !noalias !46561
  %i.ad = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !46562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !46561
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !46563, !noalias !46544
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46564)
  %umax.i12.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 %i.i) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46565)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46566)
  %exitcond.not.i14.not.i.i = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i14.not.i.i, label %bb.l, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !46567, !noundef !67
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !46568, !noalias !46569
  %.not.i15.i.i = icmp eq i8 %i.ag, 97
  br i1 %.not.i15.i.i, label %bb.m, label %bb.s, !prof !153

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46570)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46571)
  %exitcond.not.i14.1.i.i = icmp eq i64 %i.ah, %umax.i12.i.i
  br i1 %exitcond.not.i14.1.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !46572, !noundef !67
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !46573, !noalias !46569
  %.not.i15.1.i.i = icmp eq i8 %i.aj, 108
  br i1 %.not.i15.1.i.i, label %bb.o, label %bb.s, !prof !153

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46574)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46575)
  %exitcond.not.i14.2.i.i = icmp eq i64 %i.ak, %umax.i12.i.i
  br i1 %exitcond.not.i14.2.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !46576, !noundef !67
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !46577, !noalias !46569
  %.not.i15.2.i.i = icmp eq i8 %i.am, 115
  br i1 %.not.i15.2.i.i, label %bb.q, label %bb.s, !prof !153

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46578)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46579)
  %exitcond.not.i14.3.i.i = icmp eq i64 %i.an, %umax.i12.i.i
  br i1 %exitcond.not.i14.3.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !46580, !noundef !67
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !46581, !noalias !46569
  %.not.i15.3.i.i = icmp eq i8 %i.ap, 101
  br i1 %.not.i15.3.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.s, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !46582
  store i64 5, ptr %i.c, align 8, !noalias !46582
  %i.ar = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !46583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !46582
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46582
  store i64 9, ptr %i.b, align 8, !noalias !46582
  %i.as = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !46583
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46582
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i, %bb.j, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i
  %.sroa.0.1.i17.ph.sink.i.i = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18.i.i ], [ %i.ac, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink.i.i, ptr %i.at, align 8, !alias.scope !46544, !noalias !46545
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1140), !noalias !46544
  %i.av = call fastcc noundef nonnull align 8 ptr @_RINvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECskcxRuJ53GpR_9rustworkx(ptr noalias noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 dereferenceable(56) %1), !noalias !46544
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !46544, !noalias !46545
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.r, %bb.i
  %.sroa.7.0.i.i = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0.i.i, ptr %i.ax, align 1, !alias.scope !46544, !noalias !46545
  br label %_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit

_RINvXs1_NtNtCs59S24YpdcPa_10serde_core2de5implsbNtB8_11Deserialize11deserializeQINtNtCsatKl79ZghOI_10serde_json2de12DeserializerNtNtB1l_4read7StrReadEECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.loopexit.i.i, %bb.t, %bb.u, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i
  %storemerge.sink.i.i = phi i8 [ 1, %bb.t ], [ 1, %.loopexit.i.i ], [ 0, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ 1, %bb.u ]
  store i8 %storemerge.sink.i.i, ptr %0, align 8, !alias.scope !46544, !noalias !46545
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !46622
  store i64 %.val, ptr %i.b, align 8, !noalias !46622
  call fastcc void @_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8) #64, !noalias !46623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !46622
  %i.m = getelementptr i8, ptr %.sroa.0.08, i64 8
  %.val7 = load ptr, ptr %i.m, align 8, !nonnull !67, !noundef !67 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.08, i64 16
  %.val8 = load i64, ptr %i.n, align 8, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46626)
  %.idx.i.i = mul nuw nsw i64 %.val8, 24
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i.i
  %i.p = icmp eq i64 %.val8, 0
  br i1 %i.p, label %_RINvXs2_NtCskcxRuJ53GpR_9rustworkx9iteratorsINtNtCs87CvPiUlf0m_5alloc3vec3VecIBH_jEENtB6_6PyHash4hashNtNtNtCscQOBX8uaZYv_3std4hash6random13DefaultHasherEB8_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted15.i.i = load i64, ptr %1, align 8, !alias.scope !46627, !noalias !46628
  %.promoted24.i.i = load i64, ptr %i.g, align 8, !alias.scope !46627, !noalias !46628
  %.promoted27.i.i = load i64, ptr %i.i, align 8, !alias.scope !46627, !noalias !46628
  %.promoted34.i.i = load i64, ptr %i.h, align 8, !alias.scope !46627, !noalias !46628
  %.promoted41.i.i = load i64, ptr %i.j, align 8, !alias.scope !46627, !noalias !46628
  %.promoted48.i.i = load i64, ptr %i.e, align 8, !alias.scope !46627, !noalias !46628
  %.promoted.i.i = load i64, ptr %i.f, align 8, !alias.scope !46627, !noalias !46628
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
  %.sroa.03.0.val.i.i = load ptr, ptr %i.q, align 8, !alias.scope !46625, !noalias !46629, !nonnull !67, !noundef !67 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.03.023.i.i, i64 16
  %.sroa.03.0.val5.i.i = load i64, ptr %i.r, align 8, !alias.scope !46625, !noalias !46629, !noundef !67 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46630)
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
  %.sroa.03.0.val.i.i.i.i = load i64, ptr %.sroa.03.05.i.i.i.i, align 8, !alias.scope !46630, !noalias !46631, !noundef !67 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46632
  store i64 %.sroa.03.0.val.i.i.i.i, ptr %i.a, align 8, !noalias !46632
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46633)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46634)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46635), !noalias !46636
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46637), !noalias !46636
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
  store i64 %i.gg, ptr %i.u, align 8, !alias.scope !50138, !noalias !50139
  store i8 1, ptr %i.p, align 8, !alias.scope !50107, !noalias !50108
  store i8 %.pre.i.i124.i.i.i.i.i, ptr %i.q, align 1, !alias.scope !50107, !noalias !50108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50128
  switch i8 %.pre.i.i124.i.i.i.i.i, label %.loopexit179.i.i.i.i.i [
    i8 32, label %.peel.next448.i.i.i.i.i.backedge
    i8 58, label %.loopexit180.i.i.i.i.i
    i8 9, label %.peel.next448.i.i.i.i.i.backedge
    i8 13, label %.peel.next448.i.i.i.i.i.backedge
  ], !prof !157

.peel.next448.i.i.i.i.i.backedge:                 ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i
  br label %.peel.next448.i.i.i.i.i, !llvm.loop !49984

.loopexit572.i.i.i.i.i:                           ; preds = %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i134.peel.i.i.i.i.i, %_RNvXs5_NtNtCs87CvPiUlf0m_5alloc2io4utilINtB5_5BytesINtNtNtB7_8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit.i.i.i134.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50124
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !49991
  store i64 3, ptr %i.e, align 8, !noalias !49991
  %.val55.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !49991, !noundef !67
  %.val56.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !49991, !noundef !67
  %i.gn = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %.val55.i.i.i.i.i, i64 noundef %.val56.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !49991
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB2J_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit180.i.i.i.i.i:                           ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %bb.ad
  store i8 0, ptr %i.p, align 8, !alias.scope !50140
  br label %.peel.begin.i.i.i.i.i.backedge

.peel.begin.i.i.i.i.i.backedge:                   ; preds = %.loopexit180.i.i.i.i.i, %.critedge.i.i.i.i.i
  %.pre.i.i.i.i.i.i.be = phi i8 [ 0, %.loopexit180.i.i.i.i.i ], [ %.pre.i96.i.i.i.i.i, %.critedge.i.i.i.i.i ]
  br label %.peel.begin.i.i.i.i.i

.loopexit179.i.loopexit115.i.i.i.i:               ; preds = %bb.ad
  %.val54.i.pre.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !49991
  br label %.loopexit179.i.i.i.i.i

.loopexit179.i.i.i.i.i:                           ; preds = %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i, %.loopexit179.i.loopexit115.i.i.i.i
  %.val54.i.i.i.i.i = phi i64 [ %.val54.i.pre.i.i.i.i, %.loopexit179.i.loopexit115.i.i.i.i ], [ %i.gg, %_RNvXs2_NtCsatKl79ZghOI_10serde_json4readINtB5_6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEENtB5_4Read4peekCskcxRuJ53GpR_9rustworkx.exit.i129.i.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !49991
  store i64 6, ptr %i.f, align 8, !noalias !49991
  %.val53.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !49991, !noundef !67
  %i.go = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %.val53.i.i.i.i.i, i64 noundef %.val54.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !49991
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessINtNtB8_4read6IoReadINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufreader9BufReaderNtNtCscQOBX8uaZYv_3std2fs4FileEEENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB2J_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.af:                                            ; preds = %bb.x
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @89, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1715) #60
  unreachable

bb.ag:                                            ; preds = %bb.x
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.x
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.ag ], [ 7, %bb.x ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.j, align 8, !noalias !49991
  %.val.i.i.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !49991, !noundef !67
  %.val52.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !49991, !noundef !67
  %i.gp = call noundef nonnull align 8 ptr @_RNvMs0_NtCsatKl79ZghOI_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, i64 noundef %.val.i.i.i.i.i, i64 noundef %.val52.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !49991
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50283)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !50284, !noalias !50285, !noundef !67 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !50286, !noalias !50287 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !50284, !noalias !50285, !nonnull !67, !noundef !67 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50288)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50289)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !50290, !noundef !67
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !156

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !50291, !noalias !50287
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !50282
  store i64 3, ptr %i.o, align 8, !noalias !50282
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !50282
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !50282
  store i64 6, ptr %i.p, align 8, !noalias !50282
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !50282
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !50292
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50293)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50294)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50296)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 8 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !50297
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50298)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !50299, !noundef !67 ; 3 uses
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
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !50300, !noalias !50301
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bg, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !50297
  store i64 5, ptr %i.n, align 8, !noalias !50297
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !50297
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.ai, !prof !125

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !50302
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50303)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50304)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50305)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !50306, !noundef !67
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !50307, !noalias !50308
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !153

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50310)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !50311, !noundef !67
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !50312, !noalias !50308
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !153

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50314)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !50315, !noundef !67
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !50316, !noalias !50308
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !50317
  store i64 5, ptr %i.f, align 8, !noalias !50317
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !50318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !50317
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !50317
  store i64 9, ptr %i.e, align 8, !noalias !50317
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !50318
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !50317
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !50319
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50320)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ah) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50321)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50322)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !50323, !noundef !67
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !50324, !noalias !50325
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !153

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50326)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50327)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !50328, !noundef !67
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !50329, !noalias !50325
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !153

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50330)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50331)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !50332, !noundef !67
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !50333, !noalias !50325
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !50334
  store i64 5, ptr %i.d, align 8, !noalias !50334
  %i.bk = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !50335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !50334
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !50334
  store i64 9, ptr %i.c, align 8, !noalias !50334
  %i.bl = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !50335
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !50334
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !50336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50337)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ah) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50339)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !50340, !noundef !67
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !50341, !noalias !50342
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !153

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50343)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50344)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !50345, !noundef !67
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !50346, !noalias !50342
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !153

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50347)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50348)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !50349, !noundef !67
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !50350, !noalias !50342
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !153

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50352)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !50353, !noundef !67
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !50354, !noalias !50342
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50355
  store i64 5, ptr %i.b, align 8, !noalias !50355
  %i.bz = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !50356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !50355
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50355
  store i64 9, ptr %i.a, align 8, !noalias !50355
  %i.ca = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !50356
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50355
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !50357
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !50358
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50359)
  %i.cf = zext i1 %.sroa.039.0177.i.i.i.i.i to i64 ; 2 uses
  %i.cg = load i64, ptr %i.ad, align 8, !alias.scope !50360, !noundef !67 ; 3 uses
  %i.ch = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !50360, !noundef !67
  %i.ci = sub i64 %i.ch, %i.cg
  %i.cj = icmp ult i64 %i.ci, %i.cf
  br i1 %i.cj, label %bb.af, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, !prof !71

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i64 noundef %i.cg, i64 noundef %i.cf, i64 noundef 1, i64 noundef 1)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !50361
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i: ; preds = %bb.af, %bb.ae
  %i.ck = phi i64 [ %i.cg, %bb.ae ], [ %.pre.i.i.i.i.i.i, %bb.af ] ; 3 uses
  br i1 %.sroa.039.0177.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %i.cl = load ptr, ptr %i.af, align 8, !alias.scope !50361, !nonnull !67, !noundef !67
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store i8 %.sroa.7.0178.i.i.i.i.i, ptr %i.cm, align 1, !noalias !50362
  %i.cn = add i64 %i.ck, 1
  br label %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i
  %.val6.i.i.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ck, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i ]
  store i64 %.val6.i.i.i.i.i.i.i.i, ptr %i.ad, align 8, !alias.scope !50361, !noalias !50363
  %i.co = load i64, ptr %i.q, align 8, !alias.scope !50364, !noundef !67
  %i.cp = add i64 %i.co, 1
  store i64 %i.cp, ptr %i.q, align 8, !alias.scope !50364
  br label %bb.ah

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.aj, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.cq = load i64, ptr %i.ad, align 8, !alias.scope !50297, !noundef !67 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit, label %bb.ak

bb.ah:                                            ; preds = %bb.ak, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.de, %bb.ak ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %_RINvMsk_NtCs87CvPiUlf0m_5alloc3vecINtB6_3VechE14extend_trustedINtNtCslwFuT2d6ECx_4core6option8IntoIterhEECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ true, %bb.ak ], [ true, %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.cs = load i64, ptr %i.r, align 8, !alias.scope !50365, !noalias !50366, !noundef !67 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !50367, !noalias !50368 ; 2 uses
  %i.ct = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ah
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !50297
  %i.cu = load ptr, ptr %i.u, align 8, !alias.scope !50365, !noalias !50366, !nonnull !67, !noundef !67 ; 3 uses
  %i.cv = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !50297
  %i.cw = load ptr, ptr %i.af, align 8, !alias.scope !50297, !nonnull !67
  br label %.lr.ph.i75.i.i.i.i.i

bb.ai:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !50297
  store i64 10, ptr %i.m, align 8, !noalias !50297
  %i.cx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !50297
  br label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.aj:                                            ; preds = %bb.h
  %i.cy = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, label %_RINvXs9_NtCsatKl79ZghOI_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs59S24YpdcPa_10serde_core2de9MapAccess15next_value_seedINtNtCslwFuT2d6ECx_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECskcxRuJ53GpR_9rustworkx.exit

bb.ak:                                            ; preds = %bb.ag
  %i.cz = add i64 %i.cq, -1                       ; 3 uses
  store i64 %i.cz, ptr %i.ad, align 8, !alias.scope !50297
  %i.da = load i64, ptr %.0.val, align 8, !range !70, !alias.scope !50297, !noundef !67
  %i.db = icmp ult i64 %i.cz, %i.da
  tail call void @llvm.assume(i1 %i.db)
  %i.dc = load ptr, ptr %i.af, align 8, !alias.scope !50297, !nonnull !67, !noundef !67
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cz
  %i.de = load i8, ptr %i.dd, align 1, !noundef !67
  br label %bb.ah

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.av, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dp, %bb.av ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.av ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.du, %bb.av ] ; 6 uses
  %i.df = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dr, %bb.av ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50369)
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.lr.ph.i75.i.i.i.i.i
  %i.dg = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.dj, %bb.am ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50370)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50371)
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !noalias !50372, !noundef !67
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
  store i64 %i.dj, ptr %i.q, align 8, !alias.scope !50373, !noalias !50368
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.dj, %i.cs
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.al

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ah, %bb.av, %bb.am
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.du, %bb.av ], [ %.sroa.027.2163.i.i.i.i.i, %bb.am ], [ %.sroa.027.0.i.i.i.i.i, %bb.ah ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !50297
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.an [
    i8 91, label %bb.ap
    i8 123, label %bb.ao
  ]

end_hunk_5
begin_hunk_6_@_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx:bb.a
; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneReECskcxRuJ53GpR_9rustworkx(i64 %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, align 8, !noalias !50535, !noundef !67 ; 3 uses
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 8), align 8, !noalias !50535, !noundef !67 ; 5 uses
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 16), align 8, !noalias !50535, !noundef !67
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 24), align 8, !noalias !50535, !noundef !67
  %i.e = tail call noundef i64 @llvm.fshr.i64(i64 %.0.val, i64 %.0.val, i64 %1) ; 9 uses
  %i.f = icmp samesign ult i64 %1, 17
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp samesign ult i64 %1, 256
  %i.h = add i64 %i.b, %i.e                       ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.d, !prof !77

bb.c:                                             ; preds = %bb.a
  %i.i = icmp samesign ugt i64 %1, 7
  br i1 %i.i, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = add i64 %i.c, %i.e
  %i.k = add i64 %i.d, %i.e
  %i.l = tail call noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.k, i64 noundef %i.a) #62, !noalias !50536
  br label %_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit

bb.e:                                             ; preds = %bb.b
  %i.m = tail call noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash17hash_bytes_medium(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, i64 noundef %i.e, i64 noundef %i.h, i64 noundef %i.a), !noalias !50536
  br label %_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit

bb.f:                                             ; preds = %bb.c
  %i.n = icmp samesign ugt i64 %1, 3
  br i1 %i.n, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, label %bb.g

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.c
  %.sroa.020.0.copyload.i.i = load i64, ptr %0, align 1, !alias.scope !50537, !noalias !50536
  %i.o = xor i64 %.sroa.020.0.copyload.i.i, %i.e
  %i.p = getelementptr i8, ptr %0, i64 %1
  %i.q = getelementptr i8, ptr %i.p, i64 -8
  %.sroa.022.0.copyload.i.i = load i64, ptr %i.q, align 1, !alias.scope !50537, !noalias !50536
  %i.r = xor i64 %.sroa.022.0.copyload.i.i, %i.b
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %.not.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 %1
  %i.t = getelementptr i8, ptr %i.s, i64 -4
  %.sroa.025.0.copyload.i.i = load i32, ptr %i.t, align 1, !alias.scope !50537, !noalias !50536
  %.sroa.024.0.copyload.i.i = load i32, ptr %0, align 1, !alias.scope !50537, !noalias !50536
  %i.u = zext i32 %.sroa.024.0.copyload.i.i to i64
  %i.v = xor i64 %i.e, %i.u
  %i.w = zext i32 %.sroa.025.0.copyload.i.i to i64
  %i.x = xor i64 %i.b, %i.w
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.y = load i8, ptr %0, align 1, !alias.scope !50537, !noalias !50536, !noundef !67
  %i.z = lshr i64 %1, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !50537, !noalias !50536, !noundef !67
  %i.ac = getelementptr i8, ptr %0, i64 %1
  %i.ad = getelementptr i8, ptr %i.ac, i64 -1
  %i.ae = load i8, ptr %i.ad, align 1, !alias.scope !50537, !noalias !50536, !noundef !67
  %i.af = zext i8 %i.y to i64
  %i.ag = xor i64 %i.e, %i.af
  %i.ah = zext i8 %i.ae to i64
  %i.ai = shl nuw nsw i64 %i.ah, 8
  %i.aj = zext i8 %i.ab to i64
  %i.ak = or disjoint i64 %i.ai, %i.aj
  %i.al = xor i64 %i.ak, %i.b
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i, %bb.g, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i
  %.sroa.010.0.i.i = phi i64 [ %i.r, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.x, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.al, %bb.h ], [ %i.b, %bb.g ]
  %.sroa.0.0.i.i = phi i64 [ %i.o, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.v, %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultAhj4_NtNtB4_5array17TryFromSliceErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit.i.i ], [ %i.ag, %bb.h ], [ %i.e, %bb.g ]
  %i.am = zext i64 %.sroa.0.0.i.i to i128
  %i.an = zext i64 %.sroa.010.0.i.i to i128
  %i.ao = mul nuw i128 %i.am, %i.an               ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = xor i128 %i.ap, %i.ao
  %i.ar = trunc i128 %i.aq to i64
  br label %_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit

_RNvXs_NtCs1X8ypyHYXIB_8foldhash4fastNtB4_10FoldHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher6finish.exit: ; preds = %bb.i, %bb.e, %bb.d
  %.sink4.i = phi i64 [ %i.l, %bb.d ], [ %i.m, %bb.e ], [ %i.ar, %bb.i ]
  %i.as = xor i64 %.sink4.i, 255
  %i.at = zext i64 %i.as to i128
  %i.au = zext i64 %i.a to i128
  %i.av = mul nuw i128 %i.at, %i.au               ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = xor i128 %i.aw, %i.av
  %i.ay = trunc i128 %i.ax to i64
  ret i64 %i.ay
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng12try_from_rngNtNtCsVAQhhDbxgK_9getrandom7sys_rng6SysRngECskcxRuJ53GpR_9rustworkx(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 1                ; 4 uses
  %i.c = alloca [32 x i8], align 1                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.c, i8 0, i64 32, i1 false), !alias.scope !50547
  %i.d = load atomic ptr, ptr @_RNvNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN monotonic, align 8, !noalias !50548 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback4init() #62, !noalias !50548 ; 2 uses
  store atomic ptr %i.f, ptr @_RNvNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN monotonic, align 8, !noalias !50548
  br label %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i

_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = icmp eq ptr %.sroa.0.0.i.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.g, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.g
  %.sroa.0.040.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i, %bb.g ], [ %i.c, %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 3 uses
  %.sroa.6.039.i.i.i.i = phi i64 [ %.sroa.6.1.i.i.i.i, %bb.g ], [ 32, %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i ] ; 4 uses
  %i.h = call noundef i64 %.sroa.0.0.i.i.i.i(ptr noundef nonnull %.sroa.0.040.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %.sroa.6.039.i.i.i.i, i32 noundef 0) #59, !inline_history !50546 ; 5 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i.i
  %i.j = icmp eq i64 %i.h, -1
  br i1 %i.j, label %bb.e, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread

bb.d:                                             ; preds = %.preheader.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %i.h, %.sroa.6.039.i.i.i.i
  br i1 %.not.i.i.i.i, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread, label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = call noundef i32 @_RNvNtNtNtNtCsVAQhhDbxgK_9getrandom8backends8use_file5utils9get_errno9get_errno() ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = call noundef i32 @_RNvMNtCsVAQhhDbxgK_9getrandom5errorNtB2_5Error10from_errno(i32 noundef %i.k)
  br label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.6.1.i.i.i.i = phi i64 [ %i.p, %bb.h ], [ %.sroa.6.039.i.i.i.i, %bb.e ] ; 2 uses
  %.sroa.0.1.i.i.i.i = phi ptr [ %i.o, %bb.h ], [ %.sroa.0.040.i.i.i.i, %bb.e ]
  %i.n = icmp eq i64 %.sroa.6.1.i.i.i.i, 0
  br i1 %i.n, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4, label %.preheader.i.i.i

bb.h:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.040.i.i.i.i, i64 %i.h
  %i.p = sub nuw nsw i64 %.sroa.6.039.i.i.i.i, %i.h
  br label %bb.g

_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit: ; preds = %_RINvMNtNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback10fill_inner4lazyINtB3_7LazyPtrNtNtCslwFuT2d6ECx_4core3ffi6c_voidE15try_unsync_initzNCINvB2_11unsync_initNvB7_4initE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i
  %i.q = call noundef i32 @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback17use_file_fallback(ptr noalias nofree noundef nonnull %i.c, i64 noundef 32) #62 ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4, label %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread

_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread: ; preds = %bb.d, %bb.c, %bb.f, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit
  %.sroa.0.0.i.i.i3 = phi i32 [ %i.q, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit ], [ %i.m, %bb.f ], [ 65538, %bb.c ], [ 65538, %bb.d ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.0.0.i.i.i3, ptr %i.r, align 4
  br label %bb.i

_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4: ; preds = %bb.g, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs0_NtCs6EUok6QJynq_8rand_pcg6pcg128NtB5_11Lcg128Xsl64NtNtCsah9vjD7VjN6_9rand_core12seedable_rng11SeedableRng9from_seed(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(32) %i.b)
  %i.s = load i128, ptr %i.a, align 16, !noundef !67
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = load i128, ptr %i.t, align 16, !noundef !67
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %i.s, ptr %i.v, align 16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i128 %i.u, ptr %i.w, align 16
  br label %bb.i

bb.i:                                             ; preds = %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread
  %.sink = phi i32 [ 0, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread4 ], [ 1, %_RNvXNtCsVAQhhDbxgK_9getrandom7sys_rngNtB2_6SysRngNtCsah9vjD7VjN6_9rand_core6TryRng14try_fill_bytes.exit.thread ]
  store i32 %.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @_RINvYNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64NtNtCsjH8OHv3LeEG_4rand3rng6RngExt12random_rangejINtNtNtCslwFuT2d6ECx_4core3ops5range7RangeTojEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %bb.g, label %bb.b, !prof !71

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %1, 4294967295
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = trunc nuw i64 %1 to i32
  %i.d = load i128, ptr %0, align 16, !alias.scope !50581, !noalias !50582, !noundef !67
  %i.e = mul i128 %i.d, 47026247687942121848144207491837523525
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i128, ptr %i.f, align 16, !alias.scope !50581, !noalias !50582, !noundef !67 ; 2 uses
  %i.h = add i128 %i.e, %i.g                      ; 5 uses
  store i128 %i.h, ptr %0, align 16, !alias.scope !50581, !noalias !50582
  %i.i = lshr i128 %i.h, 122
  %i.j = trunc nuw nsw i128 %i.i to i64
  %i.k = lshr i128 %i.h, 64
  %i.l = xor i128 %i.k, %i.h
  %i.m = trunc i128 %i.l to i64                   ; 2 uses
  %i.n = tail call noundef i64 @llvm.fshr.i64(i64 %i.m, i64 %i.m, i64 %i.j)
  %i.o = and i64 %i.n, 4294967295
  %i.p = mul nuw i64 %i.o, %1                     ; 2 uses
  %i.q = lshr i64 %i.p, 32                        ; 2 uses
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  %i.s = sub i32 0, %i.c
  %i.t = icmp ult i32 %i.s, %i.r
  br i1 %i.t, label %bb.d, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %bb.c
  %i.u = mul i128 %i.h, 47026247687942121848144207491837523525
  %i.v = add i128 %i.u, %i.g                      ; 4 uses
  store i128 %i.v, ptr %0, align 16, !alias.scope !50583, !noalias !50582
  %i.w = lshr i128 %i.v, 122
  %i.x = trunc nuw nsw i128 %i.w to i64
  %i.y = lshr i128 %i.v, 64
  %i.z = xor i128 %i.y, %i.v
  %i.aa = trunc i128 %i.z to i64                  ; 2 uses
  %i.ab = tail call noundef i64 @llvm.fshr.i64(i64 %i.aa, i64 %i.aa, i64 %i.x)
  %3 = and i64 %i.ab, 4294967295
  %4 = mul nuw i64 %3, %1
  %5 = lshr i64 %4, 32
  %6 = trunc nuw i64 %5 to i32
  %i.ac = xor i32 %i.r, -1
  %.not9.i.i.i.i = icmp ult i32 %i.ac, %6
  %i.ad = zext i1 %.not9.i.i.i.i to i64
  %i.ae = add nuw nsw i64 %i.q, %i.ad
  br label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

bb.e:                                             ; preds = %bb.b
  %i.af = load i128, ptr %0, align 16, !alias.scope !50584, !noalias !50585, !noundef !67
  %i.ag = mul i128 %i.af, 47026247687942121848144207491837523525
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i128, ptr %i.ah, align 16, !alias.scope !50584, !noalias !50585, !noundef !67 ; 2 uses
  %i.aj = add i128 %i.ag, %i.ai                   ; 5 uses
  store i128 %i.aj, ptr %0, align 16, !alias.scope !50584, !noalias !50585
  %i.ak = lshr i128 %i.aj, 122
  %i.al = trunc nuw nsw i128 %i.ak to i64
  %i.am = lshr i128 %i.aj, 64
  %i.an = xor i128 %i.am, %i.aj
  %i.ao = trunc i128 %i.an to i64                 ; 2 uses
  %i.ap = tail call noundef i64 @llvm.fshr.i64(i64 %i.ao, i64 %i.ao, i64 %i.al)
  %i.aq = zext i64 %i.ap to i128
  %i.ar = zext i64 %1 to i128                     ; 2 uses
  %i.as = mul nuw i128 %i.aq, %i.ar               ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw i128 %i.at to i64             ; 2 uses
  %i.av = trunc i128 %i.as to i64                 ; 2 uses
  %i.aw = sub i64 0, %1
  %i.ax = icmp ult i64 %i.aw, %i.av
  br i1 %i.ax, label %bb.f, label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

bb.f:                                             ; preds = %bb.e
  %i.ay = mul i128 %i.aj, 47026247687942121848144207491837523525
  %i.az = add i128 %i.ay, %i.ai                   ; 4 uses
  store i128 %i.az, ptr %0, align 16, !alias.scope !50586, !noalias !50585
  %i.ba = lshr i128 %i.az, 122
  %i.bb = trunc nuw nsw i128 %i.ba to i64
  %i.bc = lshr i128 %i.az, 64
  %i.bd = xor i128 %i.bc, %i.az
  %i.be = trunc i128 %i.bd to i64                 ; 2 uses
  %i.bf = tail call noundef i64 @llvm.fshr.i64(i64 %i.be, i64 %i.be, i64 %i.bb)
  %7 = zext i64 %i.bf to i128
  %8 = mul nuw i128 %7, %i.ar
  %9 = lshr i128 %8, 64
  %10 = trunc nuw i128 %9 to i64
  %i.bg = xor i64 %i.av, -1
  %.not6.i.i.i.i = icmp ult i64 %i.bg, %10
  %i.bh = zext i1 %.not6.i.i.i.i to i64
  %i.bi = add nuw i64 %i.bh, %i.au
  br label %_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit

_RNvMNtCslwFuT2d6ECx_4core6resultINtB2_6ResultjNtNtNtCsjH8OHv3LeEG_4rand5distr7uniform5ErrorE6unwrapCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.d, %bb.c, %bb.f, %bb.e
  %.sroa.62.0 = phi i64 [ %i.q, %bb.c ], [ %i.ae, %bb.d ], [ %i.bi, %bb.f ], [ %i.au, %bb.e ]
  ret i64 %.sroa.62.0

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1150, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) #60
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexECskcxRuJ53GpR_9rustworkx(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !50601
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50601
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50601
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50601
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !50601
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !50601
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !50601
  %.val.i = load i32, ptr %0, align 4, !noalias !50602, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50603
  store i32 %.val.i, ptr %i.a, align 4, !noalias !50603
  call fastcc void @_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 4) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50603
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !50604
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50604
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50604 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50604
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !50604, !noundef !67
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50604, !noundef !67
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call noundef i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define internal fastcc noundef i64 @_RINvYNtNtNtCscQOBX8uaZYv_3std4hash6random11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher8hash_oneRhECskcxRuJ53GpR_9rustworkx(i64 %.0.val, i64 %.8.val, ptr noalias nofree noundef nonnull readonly captures(none) dereferenceable(1) %0) unnamed_addr #19 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = xor i64 %.0.val, 8317987319222330741
  %i.d = xor i64 %.8.val, 7237128888997146477
  %i.e = xor i64 %.0.val, 7816392313619706465
  %i.f = xor i64 %.8.val, 8387220255154660723
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !50617
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50617
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50617
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50617
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !50617
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !50617
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !50617
  %.val.i = load i8, ptr %0, align 1, !noalias !50618, !noundef !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !50619
  store i8 %.val.i, ptr %i.a, align 1, !noalias !50619
  call fastcc void @_RNvXs2_NtNtCscQOBX8uaZYv_3std4hash6randomNtB5_13DefaultHasherNtNtCslwFuT2d6ECx_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !50619
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !50620
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !50620
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !50620 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !50620
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !50620, !noundef !67
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !50620, !noundef !67
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call noundef i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call noundef i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call noundef i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call noundef i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call noundef i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call noundef i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call noundef i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call noundef i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call noundef i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
end_hunk_6
begin_hunk_7_@_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCskcxRuJ53GpR_9rustworkx:bb.a
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
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !65064, !noundef !67
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !65065
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65066)
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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !65067, !noundef !67 ; 2 uses
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65067
  store i64 14, ptr %i.a, align 8, !noalias !65067
  %i.aw = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !65066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65067
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !65066, !noalias !65068
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !65066, !noalias !65068
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65067
  store i64 14, ptr %i.b, align 8, !noalias !65067
  %i.be = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !65066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65067
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !65066, !noalias !65068
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit

_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !65066, !noalias !65068
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65127)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !65128, !noalias !65129, !noundef !67 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !65128, !noalias !65129, !noundef !67 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !65128, !noalias !65129, !nonnull !67, !noundef !67
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !65130, !noundef !67 ; 2 uses
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
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !65131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65132)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !65132, !noalias !65133, !nonnull !67 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65135)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !65136, !noundef !67
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !65137, !noalias !65138
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !153

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65140)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !65141, !noundef !67
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !65142, !noalias !65138
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !153

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65143)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65144)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !65145, !noundef !67
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !65146, !noalias !65138
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit, label %bb.j, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !65147
  store i64 5, ptr %i.f, align 8, !noalias !65147
  %i.al = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f), !noalias !65133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !65147
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !65147
  store i64 9, ptr %i.e, align 8, !noalias !65147
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e), !noalias !65133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !65147
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !65148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65149)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !65149, !noalias !65150, !nonnull !67 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.an, i64 %i.u)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65152)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !65153, !noundef !67
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !65154, !noalias !65155
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !153

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65157)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !65158, !noundef !67
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !65159, !noalias !65155
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !153

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65160)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65161)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !65162, !noundef !67
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !65163, !noalias !65155
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit30, label %bb.q, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !65164
  store i64 5, ptr %i.d, align 8, !noalias !65164
  %i.ay = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d), !noalias !65150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !65164
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !65164
  store i64 9, ptr %i.c, align 8, !noalias !65164
  %i.az = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c), !noalias !65150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !65164
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !65165
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65166)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !65166, !noalias !65167, !nonnull !67 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.u) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65168)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65169)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !65170, !noundef !67
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !65171, !noalias !65172
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !153

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65174)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !65175, !noundef !67
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !65176, !noalias !65172
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !153

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65178)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !65179, !noundef !67
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !65180, !noalias !65172
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !153

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65182)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !65183, !noundef !67
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !65184, !noalias !65172
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit38, label %bb.z, !prof !153

_RNvXs8_NtCsatKl79ZghOI_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !65185
  store i64 5, ptr %i.b, align 8, !noalias !65185
  %i.bo = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b), !noalias !65167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !65185
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !65185
  store i64 9, ptr %i.a, align 8, !noalias !65185
  %i.bp = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a), !noalias !65167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !65185
  br label %_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCskcxRuJ53GpR_9rustworkx.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !65186
  call fastcc void @_RNvMs3_NtCsatKl79ZghOI_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !152, !noundef !67
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !77

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !65187
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
end_hunk_7
begin_hunk_8_@_RNvNtCskcxRuJ53GpR_9rustworkx12random_graph33___pyfunction_random_regular_graph:bb.a
  %i.hf = icmp slt i64 %.us-phi382.i.i, 2305843009213693950
  call void @llvm.assume(i1 %i.hf), !noalias !116167
  %i.hg = and i64 %i.he, -16                      ; 2 uses
  %i.hh = add i64 %i.hg, 16                       ; 2 uses
  %i.hi = add nsw i64 %.us-phi382.i.i, 17
  %i.hj = add i64 %i.hi, %i.hh                    ; 3 uses
  %i.hk = icmp uge i64 %i.hj, %i.hh
  call void @llvm.assume(i1 %i.hk), !noalias !116167
  %i.hl = icmp ult i64 %i.hj, 9223372036854775793
  call void @llvm.assume(i1 %i.hl), !noalias !116167
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.us-phi381.i.i) ], !noalias !116167
  %i.hm = sub nuw nsw i64 -16, %i.hg
  %i.hn = getelementptr inbounds i8, ptr %.us-phi381.i.i, i64 %i.hm
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hn, i64 noundef %i.hj, i64 noundef range(i64 1, -9223372036854775807) 16) #59, !noalias !116164
  br label %.body.i.i

.split.i.i:                                       ; preds = %.noexc13.i.i, %.noexc13.us391.i.i, %.noexc13.us.i.i
  %.us-phi381.i.i = phi ptr [ %.sroa.0.0.copyload.i.i.i.us.i.i, %.noexc13.us.i.i ], [ %.sroa.0.0.copyload.i.i.i.us392.i.i, %.noexc13.us391.i.i ], [ %.sroa.0.0.copyload.i.i.i.i.i, %.noexc13.i.i ] ; 2 uses
  %.us-phi382.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i.us.i.i, %.noexc13.us.i.i ], [ %.sroa.5.0.copyload.i.i.i.us393.i.i, %.noexc13.us391.i.i ], [ %.sroa.5.0.copyload.i.i.i.i.i, %.noexc13.i.i ] ; 4 uses
  %.us-phi384.i.i = phi i64 [ 0, %.noexc13.us.i.i ], [ 8, %.noexc13.us391.i.i ], [ 8, %.noexc13.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.us-phi384.i.i, i64 %i.fl) #61
          to label %bb.w unwind label %bb.v, !noalias !116164

bb.w:                                             ; preds = %.split.i.i
  unreachable

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i: ; preds = %.noexc13.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fn, i64 16, i1 false), !noalias !116159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !116163
  store i64 %i.az, ptr %i.r, align 8, !noalias !116159
  store ptr %i.ha, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !noalias !116159
  store i64 0, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !noalias !116159
  store ptr %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !noalias !116159
  store i64 %.sroa.5.0.copyload.i.i.i.i.i, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !noalias !116159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12428.i.i.i, i64 16, i1 false), !noalias !116159
  store i64 %i.gy, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !116159
  store i64 %.pre-phi795.i.i.i, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !116159
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12428.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !116159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !116166
  call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #59, !noalias !116168
  %i.ho = call noundef align 4 ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef %i.fp, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116168 ; 4 uses
  %i.hp = icmp eq ptr %i.ho, null
  br i1 %i.hp, label %.split405.i.i, label %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

.split405.i.i:                                    ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.us.i.i
  %.us-phi410.i.i = phi i64 [ 0, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.us.i.i ], [ 4, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i ]
  invoke void @_RNvNtCs87CvPiUlf0m_5alloc7raw_vec12handle_error(i64 noundef %.us-phi410.i.i, i64 %i.fp) #61
          to label %.noexc.i.i.i unwind label %bb.z, !noalias !116159

.noexc.i.i.i:                                     ; preds = %.split405.i.i
  unreachable

_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i
  store i32 0, ptr %i.ho, align 4, !noalias !116166
  store i64 %i.fo, ptr %i.n, align 8, !noalias !116166
  store ptr %i.ho, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116166
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116166
  call void @llvm.experimental.noalias.scope.decl(metadata !116169)
  call void @llvm.experimental.noalias.scope.decl(metadata !116170)
  br label %.split.preheader.i.i.i.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i.i.i.i:               ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.hq = phi ptr [ %i.hw, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.ho, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %i.hr = phi i64 [ %i.hy, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 5 uses
  %storemerge.i.le.i19.i.i.i.i.i.i.i = phi i32 [ %storemerge.i.le.i21.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 0, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.val.i.i14.i.i.i.i.i.i.i = phi i64 [ %.val.i.i16.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ 1, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ] ; 4 uses
  %.val.i.i.i10.i.i.i.i.in.i.i.i = phi i64 [ %.us-phi.i.i.i.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i ], [ %i.bi, %_RNvMs5_NtCs87CvPiUlf0m_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ]
  %.val.i.i.i10.i.i.i.i.i.i.i = add i64 %.val.i.i.i10.i.i.i.i.in.i.i.i, -1 ; 2 uses
  %.not.i.i.i.peel.i.i.i.i.i.i.not.i.i.i = icmp eq i64 %.val.i.i.i10.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.peel.i.i.i.i.i.i.not.i.i.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.split.preheader.i.i.i.i.i.i.i.i.i
  %exitcond.peel.not.not.i.i.i.i.i.i.i.i.i = icmp ult i64 %.val.i.i14.i.i.i.i.i.i.i, %i.az
  br i1 %exitcond.peel.not.not.i.i.i.i.i.i.i.i.i, label %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i, label %bb.aa

_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i: ; preds = %bb.x
  %i.hs = add nuw nsw i64 %.val.i.i14.i.i.i.i.i.i.i, 1
  %storemerge.i.le2.i.i.i.i.i.i.i.i = trunc i64 %.val.i.i14.i.i.i.i.i.i.i to i32
  br label %bb.y

bb.y:                                             ; preds = %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i
  %storemerge.i.le.i21.i.i.i.i.i.i.i = phi i32 [ %storemerge.i.le2.i.i.i.i.i.i.i.i, %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %storemerge.i.le.i19.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val.i.i16.i.i.i.i.i.i.i = phi i64 [ %i.hs, %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %.val.i.i14.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ]
  %.us-phi.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bi, %_RINvNtNtNtCslwFuT2d6ECx_4core4iter8adapters7flatten17and_then_or_clearINtNtNtB6_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexEB1F_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECskcxRuJ53GpR_9rustworkx.exit.loopexit.i.i.i.i.i.i.i.i.i ], [ %.val.i.i.i10.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ht = icmp samesign ult i64 %i.hr, 2305843009213693952
  call void @llvm.assume(i1 %i.ht)
  %i.hu = load i64, ptr %i.n, align 8, !range !70, !alias.scope !116171, !noalias !116172, !noundef !67
  %i.hv = icmp eq i64 %i.hr, %i.hu
  br i1 %i.hv, label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  invoke fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n, i64 noundef %i.hr, i64 noundef %.us-phi.i.i.i.i.i.i.i.i.i, i64 noundef 4, i64 noundef 4)
          to label %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !116166

_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i
  %.pre47.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !116171, !noalias !116172
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i, %bb.y
  %i.hw = phi ptr [ %.pre47.i.i.i.i.i, %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i._RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VecNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i_crit_edge.i.i.i.i.i ], [ %i.hq, %bb.y ] ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.hw, i64 %i.hr
  store i32 %storemerge.i.le.i21.i.i.i.i.i.i.i, ptr %i.hx, align 4, !noalias !116173
  %i.hy = add nuw nsw i64 %i.hr, 1                ; 2 uses
  store i64 %i.hy, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !116171, !noalias !116172
  br label %.split.preheader.i.i.i.i.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i:   ; preds = %_RNvXs1_NtNtNtCslwFuT2d6ECx_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_3ops5range5RangejEINtNtNtB9_7sources8repeat_n7RepeatNNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENCNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtB27_12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB4Z_5types3any5PyAnyEB4U_NtB29_10UndirectedEB4U_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B6m_B4U_Es_00ENtNtNtB9_6traits8iterator8Iterator9size_hintB6s_.exit.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp33.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !noalias !116166 ; 2 uses
  %i.hz = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.hz, label %.body.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i
  %.val8.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !116166, !nonnull !67, !noundef !67
  %i.ia = shl nuw i64 %.val.i.i.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i.i.i, i64 noundef %i.ia, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116166
  br label %.body.i.i.i

bb.z:                                             ; preds = %.split405.i.i
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false), !noalias !116174
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116159 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !116166
  %i.ic = icmp ult i64 %.pre.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.ic)
  %i.id = icmp eq i64 %.pre.i.i.i, 0
  br i1 %i.id, label %._crit_edge730.i.i.i, label %.lr.ph729.i.i.i

.lr.ph729.i.i.i:                                  ; preds = %bb.aa, %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !116159
  %i.ie = invoke noundef i64 @_RNvNtCs1X8ypyHYXIB_8foldhash4seed19gen_per_hasher_seed()
          to label %bb.ad unwind label %bb.ac, !noalias !116159

._crit_edge730.i.i.i:                             ; preds = %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx.exit88.i.i.i, %bb.aa
  %.sroa.034.0.copyload35.i.i = load i64, ptr %i.r, align 8, !noalias !116175 ; 5 uses
  %.sroa.736.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !noalias !116175 ; 5 uses
  %.sroa.736.sroa.5.0.copyload.i.i = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !noalias !116175 ; 3 uses
  %.sroa.736.sroa.6.0.copyload.i.i = load ptr, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !noalias !116175 ; 2 uses
  %.sroa.736.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !noalias !116175 ; 4 uses
  %.val56.i.i.i = load i64, ptr %i.q, align 8, !noalias !116159 ; 2 uses
  %i.if = icmp eq i64 %.val56.i.i.i, 0
  br i1 %i.if, label %bb.ct, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i.i.i.i: ; preds = %._crit_edge730.i.i.i
  %.val57.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !116159, !nonnull !67, !noundef !67
  %i.ig = shl nuw i64 %.val56.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57.i.i.i, i64 noundef %i.ig, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116159
  br label %bb.ct

bb.ab:                                            ; preds = %.loopexit.split-lp.i.i.i, %bb.ac
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %lpad.phi.i.i.i, %.loopexit.split-lp.i.i.i ], [ %i.ij, %bb.ac ] ; 2 uses
  %.val54.i.i.i = load i64, ptr %i.q, align 8, !noalias !116159 ; 2 uses
  %i.ih = icmp eq i64 %.val54.i.i.i, 0
  br i1 %i.ih, label %.body.i.i.i, label %_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i62.i.i.i

_RNvXs1_NtCs87CvPiUlf0m_5alloc5allocNtB5_6GlobalNtNtCslwFuT2d6ECx_4core5alloc9Allocator10deallocate.exit.i.i.i4.i62.i.i.i: ; preds = %bb.ab
  %.val55.i.i.i = load ptr, ptr %i.fr, align 8, !noalias !116159, !nonnull !67, !noundef !67
  %i.ii = shl nuw i64 %.val54.i.i.i, 2
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val55.i.i.i, i64 noundef %i.ii, i64 noundef range(i64 1, -9223372036854775807) 4) #59, !noalias !116159
  br label %.body.i.i.i

bb.ac:                                            ; preds = %bb.ae, %.lr.ph729.i.i.i
  %i.ij = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ad:                                            ; preds = %.lr.ph729.i.i.i
  %i.ik = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNtNtCs1X8ypyHYXIB_8foldhash4seed6global19GLOBAL_SEED_STORAGE, i64 32) acquire, align 8, !noalias !116159
  %i.il = icmp eq i8 %i.ik, 2
  br i1 %i.il, label %bb.af, label %bb.ae, !prof !77

bb.ae:                                            ; preds = %bb.ad
  invoke void @_RNvMs_NtNtCs1X8ypyHYXIB_8foldhash4seed6globalNtB4_10GlobalSeed9init_slow()
          to label %bb.af unwind label %bb.ac, !noalias !116159

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i64 0, ptr %i.p, align 8, !alias.scope !116176, !noalias !116159
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116176, !noalias !116159
  store i64 0, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116176, !noalias !116159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i66.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) @112, i64 32, i1 false), !noalias !116159
  store i64 %i.ie, ptr %i.fq, align 8, !alias.scope !116176, !noalias !116159
  %i.im = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116159, !noundef !67 ; 8 uses
  %i.in = icmp ult i64 %i.im, 2
  br i1 %i.in, label %._crit_edge.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.io = load ptr, ptr %i.fr, align 8, !noalias !116159, !nonnull !67, !noundef !67 ; 4 uses
  %i.ip = icmp samesign ult i64 %i.im, 4294967295
  %.promoted.i.i.i.i = load i128, ptr %i.w, align 16, !noalias !116150 ; 3 uses
  %i.iq = load i128, ptr %i.fs, align 16, !noalias !116150 ; 6 uses
  br i1 %i.ip, label %.lr.ph22.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ag, %bb.al
  %i.ir = phi i128 [ %i.ku, %bb.al ], [ %.promoted.i.i.i.i, %bb.ag ] ; 2 uses
  %.sroa.06.017.i.i.i.i = phi i64 [ %i.is, %bb.al ], [ 0, %bb.ag ] ; 5 uses
  %i.is = add nuw nsw i64 %.sroa.06.017.i.i.i.i, 1 ; 5 uses
  %i.it = icmp samesign ugt i64 %.sroa.06.017.i.i.i.i, 4294967294
  br i1 %i.it, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i
  %i.iu = trunc nuw i64 %.sroa.06.017.i.i.i.i to i32
  %.neg576.i.i.i = xor i32 %i.iu, -1
  %i.iv = mul i128 %i.ir, 47026247687942121848144207491837523525
  %i.iw = add i128 %i.iv, %i.iq                   ; 5 uses
  %i.ix = lshr i128 %i.iw, 122
  %i.iy = trunc nuw nsw i128 %i.ix to i64
  %i.iz = lshr i128 %i.iw, 64
  %i.ja = xor i128 %i.iz, %i.iw
  %i.jb = trunc i128 %i.ja to i64                 ; 2 uses
  %i.jc = call noundef i64 @llvm.fshr.i64(i64 %i.jb, i64 %i.jb, i64 %i.iy)
  %i.jd = and i64 %i.jc, 4294967295
  %i.je = mul nuw i64 %i.jd, %i.is                ; 2 uses
  %i.jf = lshr i64 %i.je, 32                      ; 2 uses
  %i.jg = trunc i64 %i.je to i32                  ; 2 uses
  %i.jh = icmp ult i32 %.neg576.i.i.i, %i.jg
  br i1 %i.jh, label %bb.ai, label %.noexc68.i.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.ji = mul i128 %i.iw, 47026247687942121848144207491837523525
  %i.jj = add i128 %i.ji, %i.iq                   ; 4 uses
  %i.jk = lshr i128 %i.jj, 122
  %i.jl = trunc nuw nsw i128 %i.jk to i64
  %i.jm = lshr i128 %i.jj, 64
  %i.jn = xor i128 %i.jm, %i.jj
  %i.jo = trunc i128 %i.jn to i64                 ; 2 uses
  %i.jp = call noundef i64 @llvm.fshr.i64(i64 %i.jo, i64 %i.jo, i64 %i.jl)
  %5 = and i64 %i.jp, 4294967295
  %6 = mul nuw i64 %5, %i.is
  %7 = lshr i64 %6, 32
  %8 = trunc nuw i64 %7 to i32
  %i.jq = xor i32 %i.jg, -1
  %.not9.i.i.i.i.i.i.i.i = icmp ult i32 %i.jq, %8
  %i.jr = zext i1 %.not9.i.i.i.i.i.i.i.i to i64
  %i.js = add nuw nsw i64 %i.jf, %i.jr
  br label %.noexc68.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i
  %i.jt = mul i128 %i.ir, 47026247687942121848144207491837523525
  %i.ju = add i128 %i.jt, %i.iq                   ; 5 uses
  %i.jv = lshr i128 %i.ju, 122
  %i.jw = trunc nuw nsw i128 %i.jv to i64
  %i.jx = lshr i128 %i.ju, 64
  %i.jy = xor i128 %i.jx, %i.ju
  %i.jz = trunc i128 %i.jy to i64                 ; 2 uses
  %i.ka = call noundef i64 @llvm.fshr.i64(i64 %i.jz, i64 %i.jz, i64 %i.jw)
  %i.kb = zext i64 %i.ka to i128
  %i.kc = zext nneg i64 %i.is to i128             ; 2 uses
  %i.kd = mul nuw nsw i128 %i.kb, %i.kc           ; 2 uses
  %i.ke = lshr i128 %i.kd, 64
  %i.kf = trunc nuw nsw i128 %i.ke to i64         ; 2 uses
  %i.kg = trunc i128 %i.kd to i64                 ; 2 uses
  %i.kh = xor i64 %.sroa.06.017.i.i.i.i, -1
  %i.ki = icmp ult i64 %i.kh, %i.kg
  br i1 %i.ki, label %bb.ak, label %.noexc68.i.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.kj = mul i128 %i.ju, 47026247687942121848144207491837523525
  %i.kk = add i128 %i.kj, %i.iq                   ; 4 uses
  %i.kl = lshr i128 %i.kk, 122
  %i.km = trunc nuw nsw i128 %i.kl to i64
  %i.kn = lshr i128 %i.kk, 64
  %i.ko = xor i128 %i.kn, %i.kk
  %i.kp = trunc i128 %i.ko to i64                 ; 2 uses
  %i.kq = call noundef i64 @llvm.fshr.i64(i64 %i.kp, i64 %i.kp, i64 %i.km)
  %9 = zext i64 %i.kq to i128
  %10 = mul nuw nsw i128 %9, %i.kc
  %11 = lshr i128 %10, 64
  %12 = trunc nuw nsw i128 %11 to i64
  %i.kr = xor i64 %i.kg, -1
  %.not6.i.i.i.i.i.i.i.i = icmp ult i64 %i.kr, %12
  %i.ks = zext i1 %.not6.i.i.i.i.i.i.i.i to i64
  %i.kt = add nuw i64 %i.ks, %i.kf
  br label %.noexc68.i.i.i

.noexc68.i.i.i:                                   ; preds = %bb.ak, %bb.aj, %bb.ai, %bb.ah
  %i.ku = phi i128 [ %i.iw, %bb.ah ], [ %i.jj, %bb.ai ], [ %i.kk, %bb.ak ], [ %i.ju, %bb.aj ] ; 2 uses
  %.sroa.62.0.i.i.i.i = phi i64 [ %i.jf, %bb.ah ], [ %i.js, %bb.ai ], [ %i.kt, %bb.ak ], [ %i.kf, %bb.aj ] ; 3 uses
  %i.kv = icmp ult i64 %.sroa.62.0.i.i.i.i, %i.im
  br i1 %i.kv, label %bb.al, label %.invoke916.i.i.i

bb.al:                                            ; preds = %.noexc68.i.i.i
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.06.017.i.i.i.i ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.62.0.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i67.i.i.i = load i32, ptr %i.kw, align 4, !alias.scope !116177, !noalias !116178
  %i.ky = load i32, ptr %i.kx, align 4, !alias.scope !116177, !noalias !116178
  store i32 %i.ky, ptr %i.kw, align 4, !alias.scope !116177, !noalias !116178
  store i32 %.sroa.0.0.copyload.i.i67.i.i.i, ptr %i.kx, align 4, !alias.scope !116177, !noalias !116178
  %exitcond.not.i.i.i.i = icmp eq i64 %i.is, %i.im
  br i1 %exitcond.not.i.i.i.i, label %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph22.i.i.i.i:                                 ; preds = %bb.ag, %bb.as
  %i.kz = phi i128 [ %i.mr, %bb.as ], [ %.promoted.i.i.i.i, %bb.ag ]
  %.sroa.04.021.i.i.i.i = phi i64 [ %i.lb, %bb.as ], [ 0, %bb.ag ] ; 2 uses
  %.sroa.4.020.i.i.i.i = phi i32 [ %i.lc, %bb.as ], [ 0, %bb.ag ] ; 3 uses
  %.sroa.7.019.i.i.i.i = phi i32 [ %.sroa.7.2.i.i.i.i, %bb.as ], [ 0, %bb.ag ]
  %.sroa.12.018.i.i.i.i = phi i8 [ %.sroa.01.0.i.i.i.i.i, %bb.as ], [ 1, %bb.ag ] ; 2 uses
  %i.la = phi i128 [ %i.ms, %bb.as ], [ %.promoted.i.i.i.i, %bb.ag ] ; 2 uses
  %i.lb = add nuw nsw i64 %.sroa.04.021.i.i.i.i, 1 ; 2 uses
  %i.lc = add nuw i32 %.sroa.4.020.i.i.i.i, 1     ; 6 uses
  %i.ld = icmp eq i8 %.sroa.12.018.i.i.i.i, 0
  br i1 %i.ld, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph22.i.i.i.i
  %i.le = add i8 %.sroa.12.018.i.i.i.i, -1
  br label %bb.aq

bb.an:                                            ; preds = %.lr.ph22.i.i.i.i
  %i.lf = icmp eq i32 %i.lc, 2
  br i1 %i.lf, label %.thread.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %bb.an
  %.sroa.0.012.i.i.i.i.i.i = add nuw i32 %.sroa.4.020.i.i.i.i, 2 ; 2 uses
  %i.lg = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.lc, i32 %.sroa.0.012.i.i.i.i.i.i) ; 2 uses
  %i.lh = extractvalue { i32, i1 } %i.lg, 1
  br i1 %i.lh, label %.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !161

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  %i.li = sub i32 %.sroa.0.013.i.i.i.i.i.i, %.sroa.4.020.i.i.i.i
  %i.lj = trunc i32 %i.li to i8
  %i.lk = add i8 %i.lj, -1
  %i.ll = icmp eq i32 %i.mn, 0
  br i1 %i.ll, label %bb.ap, label %.thread.i.i.i.i.i.i, !prof !116179

.thread.i.i.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i, %bb.an
  %.sroa.03.010.i.i.i.i.i.i = phi i32 [ %i.mn, %._crit_edge.i.i.i.i.i.i ], [ 479001600, %bb.an ], [ %i.lc, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %.sroa.05.09.i.i.i.i.i.i = phi i8 [ %i.lk, %._crit_edge.i.i.i.i.i.i ], [ 10, %bb.an ], [ 0, %.preheader.i.i.i.i.i.i ]
  %i.lm = mul i128 %i.la, 47026247687942121848144207491837523525
  %i.ln = add i128 %i.lm, %i.iq                   ; 5 uses
  %i.lo = lshr i128 %i.ln, 122
  %i.lp = trunc nuw nsw i128 %i.lo to i64
  %i.lq = lshr i128 %i.ln, 64
  %i.lr = xor i128 %i.lq, %i.ln
  %i.ls = trunc i128 %i.lr to i64                 ; 2 uses
  %i.lt = call noundef i64 @llvm.fshr.i64(i64 %i.ls, i64 %i.ls, i64 %i.lp)
  %i.lu = and i64 %i.lt, 4294967295
  %i.lv = zext i32 %.sroa.03.010.i.i.i.i.i.i to i64 ; 2 uses
  %i.lw = mul nuw i64 %i.lu, %i.lv                ; 2 uses
  %i.lx = lshr i64 %i.lw, 32                      ; 2 uses
  %i.ly = trunc i64 %i.lw to i32                  ; 2 uses
  %i.lz = sub i32 0, %.sroa.03.010.i.i.i.i.i.i
  %i.ma = icmp ugt i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.ao, label %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.ao:                                            ; preds = %.thread.i.i.i.i.i.i
  %i.mb = mul i128 %i.ln, 47026247687942121848144207491837523525
  %i.mc = add i128 %i.mb, %i.iq                   ; 4 uses
  %i.md = lshr i128 %i.mc, 122
  %i.me = trunc nuw nsw i128 %i.md to i64
  %i.mf = lshr i128 %i.mc, 64
  %i.mg = xor i128 %i.mf, %i.mc
  %i.mh = trunc i128 %i.mg to i64                 ; 2 uses
  %i.mi = call noundef i64 @llvm.fshr.i64(i64 %i.mh, i64 %i.mh, i64 %i.me)
  %13 = and i64 %i.mi, 4294967295
  %14 = mul nuw i64 %13, %i.lv
  %15 = lshr i64 %14, 32
  %16 = trunc nuw i64 %15 to i32
  %i.mj = xor i32 %i.ly, -1
  %.not9.i.i.i.i.i.i.i.i.i.i = icmp ult i32 %i.mj, %16
  %i.mk = zext i1 %.not9.i.i.i.i.i.i.i.i.i.i to i64
  %i.ml = add nuw nsw i64 %i.lx, %i.mk
  br label %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.ap:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  invoke void @_RNvNtCslwFuT2d6ECx_4core9panicking9panic_fmt(ptr noundef nonnull @1150, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1320) #60
          to label %.noexc70.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i, !noalias !116159

.noexc70.i.i.i:                                   ; preds = %bb.ap
  unreachable

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.mm = phi { i32, i1 } [ %i.mo, %.lr.ph.i.i.i.i.i.i ], [ %i.lg, %.preheader.i.i.i.i.i.i ]
  %.sroa.0.013.i.i.i.i.i.i = phi i32 [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.012.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.mn = extractvalue { i32, i1 } %i.mm, 0       ; 3 uses
  %.sroa.0.0.i.i.i.i.i.i = add i32 %.sroa.0.013.i.i.i.i.i.i, 1 ; 2 uses
  %i.mo = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.mn, i32 %.sroa.0.0.i.i.i.i.i.i) ; 2 uses
  %i.mp = extractvalue { i32, i1 } %i.mo, 1
  br i1 %i.mp, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !162

_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.ao, %.thread.i.i.i.i.i.i
  %i.mq = phi i128 [ %i.mc, %bb.ao ], [ %i.ln, %.thread.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ml, %bb.ao ], [ %i.lx, %.thread.i.i.i.i.i.i ]
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw i64 %.sroa.04.0.i.i.i.i.i.i.i.i.i.i to i32
  br label %bb.aq

bb.aq:                                            ; preds = %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, %bb.am
  %i.mr = phi i128 [ %i.mq, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.kz, %bb.am ] ; 2 uses
  %i.ms = phi i128 [ %i.mq, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.la, %bb.am ]
  %.sroa.7.1.i.i.i.i = phi i32 [ %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %.sroa.7.019.i.i.i.i, %bb.am ] ; 4 uses
  %.sroa.01.0.i.i.i.i.i = phi i8 [ %.sroa.05.09.i.i.i.i.i.i, %_RNCNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB4_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_index0CskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i ], [ %i.le, %bb.am ] ; 2 uses
  %i.mt = icmp eq i8 %.sroa.01.0.i.i.i.i.i, 0
  br i1 %i.mt, label %_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mu = urem i32 %.sroa.7.1.i.i.i.i, %i.lc
  %i.mv = udiv i32 %.sroa.7.1.i.i.i.i, %i.lc
  br label %_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.sroa.7.2.i.i.i.i = phi i32 [ %i.mv, %bb.ar ], [ %.sroa.7.1.i.i.i.i, %bb.aq ]
  %.sroa.0.0.in.i.i.i.i.i = phi i32 [ %i.mu, %bb.ar ], [ %.sroa.7.1.i.i.i.i, %bb.aq ]
  %.sroa.0.0.i.i.i.i.i = zext i32 %.sroa.0.0.in.i.i.i.i.i to i64 ; 3 uses
  %i.mw = icmp samesign ugt i64 %i.im, %.sroa.0.0.i.i.i.i.i
  br i1 %i.mw, label %bb.as, label %.invoke916.i.i.i

bb.as:                                            ; preds = %_RNvMNtNtCsjH8OHv3LeEG_4rand3seq18increasing_uniformINtB2_17IncreasingUniformQNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64E10next_indexCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.04.021.i.i.i.i ; 2 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.0.0.i.i.i.i.i ; 2 uses
  %.sroa.0.0.copyload.i11.i.i.i.i = load i32, ptr %i.mx, align 4, !alias.scope !116180, !noalias !116178
  %i.mz = load i32, ptr %i.my, align 4, !alias.scope !116180, !noalias !116178
  store i32 %i.mz, ptr %i.mx, align 4, !alias.scope !116180, !noalias !116178
  store i32 %.sroa.0.0.copyload.i11.i.i.i.i, ptr %i.my, align 4, !alias.scope !116180, !noalias !116178
  %exitcond27.not.i.i.i.i = icmp eq i64 %i.lb, %i.im
  br i1 %exitcond27.not.i.i.i.i, label %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, label %.lr.ph22.i.i.i.i

.loopexit579.i.i.i:                               ; preds = %bb.ax
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.i.i.i:                ; preds = %bb.bg, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i.i, %_RINvMs6_NtCslcZTgAvcSNH_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCsfztDQZkQYYe_8indexmap5inner8get_hashNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjE0ECskcxRuJ53GpR_9rustworkx.exit.i.i.i169.i.i.i, %bb.cq, %bb.ce, %bb.bu
  %lpad.loopexit581.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i:       ; preds = %.invoke.i.i.i, %.invoke916.i.i.i, %bb.ap
  %lpad.loopexit.split-lp582.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i.i

.loopexit.split-lp.i.i.i:                         ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i, %.loopexit.split-lp.loopexit.i.i.i, %.loopexit579.i.i.i
  %lpad.phi.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i, %.loopexit579.i.i.i ], [ %lpad.loopexit581.i.i.i, %.loopexit.split-lp.loopexit.i.i.i ], [ %lpad.loopexit.split-lp582.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i ]
  call fastcc void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCsfztDQZkQYYe_8indexmap3map8IndexMapNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjNtNtCs1X8ypyHYXIB_8foldhash4fast11RandomStateEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef align 8 dereferenceable(64) %i.p) #63, !noalias !116159
  br label %bb.ab

_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i: ; preds = %bb.al, %bb.as
  %storemerge.i.i = phi i128 [ %i.mr, %bb.as ], [ %i.ku, %bb.al ]
  store i128 %storemerge.i.i, ptr %i.w, align 16, !noalias !116150
  %.pr.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !116159 ; 2 uses
  %i.na = icmp ult i64 %.pr.i.i.i, 2305843009213693952
  call void @llvm.assume(i1 %i.na)
  %i.nb = icmp samesign ugt i64 %.pr.i.i.i, 1
  br i1 %i.nb, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_RNvMs2_NtCsfztDQZkQYYe_8indexmap3mapINtB5_8IndexMapTNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexBO_EuE11insert_fullCskcxRuJ53GpR_9rustworkx.exit.i.i.i, %_RINvXs0_NtNtCsjH8OHv3LeEG_4rand3seq5sliceSNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexNtB6_11SliceRandom15partial_shuffleNtNtCs6EUok6QJynq_8rand_pcg6pcg12811Lcg128Xsl64ECskcxRuJ53GpR_9rustworkx.exit.i.i.i, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !116181)
  %i.nc = load i64, ptr %i.fx, align 8, !alias.scope !116181, !noalias !116182, !noundef !67
  %i.nd = icmp eq i64 %i.nc, 0
  br i1 %i.nd, label %.noexc74.thread.i.i.i, label %bb.at

bb.at:                                            ; preds = %._crit_edge.i.i.i
  %i.ne = load ptr, ptr %.sroa.42.0..sroa_idx.i64.i.i.i, align 8, !alias.scope !116181, !noalias !116182, !nonnull !67, !noundef !67 ; 8 uses
  %i.nf = load i64, ptr %.sroa.53.0..sroa_idx.i65.i.i.i, align 8, !alias.scope !116181, !noalias !116182, !noundef !67 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %i.nf, 24
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ne, i64 %.idx.i.i.i.i ; 5 uses
  %i.nh = icmp eq i64 %i.nf, 0
  br i1 %i.nh, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.preheader.i.i.i

.lr.ph.i73.preheader.i.i.i:                       ; preds = %bb.at
  %i.ni = load i64, ptr %.sroa.7426.0..sroa_idx.i.i.i, align 8, !noalias !116159
  %.fr.i.i.i = freeze i64 %i.ni                   ; 3 uses
  %i.nj = load ptr, ptr %.sroa.5425.0..sroa_idx.i.i.i, align 8, !noalias !116159, !nonnull !67 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 8
  %i.nl = getelementptr i8, ptr %i.nj, i64 12
  %.val5.i198.i.i.i = load i64, ptr %.sroa.13.0..sroa_idx.i.i.i, align 8, !noalias !116159 ; 2 uses
  %.val6.i199.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !116159 ; 2 uses
  %i.nm = xor i64 %.val5.i198.i.i.i, 8317987319222330741
  %i.nn = xor i64 %.val6.i199.i.i.i, 7237128888997146477 ; 3 uses
  %i.no = xor i64 %.val5.i198.i.i.i, 7816392313619706465
  %i.np = add i64 %i.nn, %i.nm                    ; 3 uses
  %i.nq = call i64 @llvm.fshl.i64(i64 %i.nn, i64 %i.nn, i64 13)
  %i.nr = xor i64 %i.nq, %i.np                    ; 3 uses
  %i.ns = call i64 @llvm.fshl.i64(i64 %i.np, i64 %i.np, i64 32)
  %i.nt = call i64 @llvm.fshl.i64(i64 %i.nr, i64 %i.nr, i64 17)
  %i.nu = load i64, ptr %.sroa.11.0..sroa_idx.i12.i.i, align 8, !noalias !116159 ; 2 uses
  %i.nv = load ptr, ptr %.sroa.9427.0..sroa_idx.i.i.i, align 8, !noalias !116159, !nonnull !67 ; 2 uses
  switch i64 %.fr.i.i.i, label %.lr.ph.i73.i.i.i.preheader [
    i64 0, label %.lr.ph.i73.preheader.i.split.us.i.i
    i64 1, label %.lr.ph.i73.i.us374.i.i
  ]

.lr.ph.i73.i.i.i.preheader:                       ; preds = %.lr.ph.i73.preheader.i.i.i
  %invariant.op = xor i64 %.val6.i199.i.i.i, 8387220255154660723
  br label %.lr.ph.i73.i.i.i

.lr.ph.i73.preheader.i.split.us.i.i:              ; preds = %.lr.ph.i73.preheader.i.i.i
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %.val12.i.us.i.us.i.i = load i32, ptr %i.nw, align 4, !noalias !116183, !noundef !67
  br label %.lr.ph.i73.i.us.i.i

.lr.ph.i73.i.us.i.i:                              ; preds = %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i, %.lr.ph.i73.preheader.i.split.us.i.i
  %.sroa.0.0314.i.i.us.i.i = phi ptr [ %i.nz, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i ], [ %i.ne, %.lr.ph.i73.preheader.i.split.us.i.i ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us.i.i, i64 16
  %.val.i.i.us.i.i = load i32, ptr %i.nx, align 4, !noalias !116183, !noundef !67
  %i.ny = icmp eq i32 %.val.i.i.us.i.i, %.val12.i.us.i.us.i.i
  br i1 %i.ny, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i, label %.noexc74.thread.i.i.i

_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.us.i.i: ; preds = %.lr.ph.i73.i.us.i.i
  %i.nz = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us.i.i, i64 24 ; 2 uses
  %i.oa = icmp eq ptr %i.nz, %i.ng
  br i1 %i.oa, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.i.us.i.i

.lr.ph.i73.i.us374.i.i:                           ; preds = %.lr.ph.i73.preheader.i.i.i, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i
  %.sroa.0.0314.i.i.us375.i.i = phi ptr [ %i.ob, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i ], [ %i.ne, %.lr.ph.i73.preheader.i.i.i ] ; 2 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us375.i.i, i64 24 ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.us375.i.i, i64 16
  %.val.i.i.us376.i.i = load i32, ptr %i.oc, align 4, !noalias !116183, !noundef !67 ; 3 uses
  br label %.lr.ph.i73.split.us714.i.us.i.i

.lr.ph.i73.split.us714.i.us.i.i:                  ; preds = %.noexc74.thread545.us717.i.us.i.i, %.lr.ph.i73.i.us374.i.i
  %.sroa.01.012.i.us715.i.us.i.i = phi ptr [ %i.od, %.noexc74.thread545.us717.i.us.i.i ], [ %i.ne, %.lr.ph.i73.i.us374.i.i ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.us715.i.us.i.i, i64 24 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.us715.i.us.i.i, i64 16
  %.val12.i.us716.i.us.i.i = load i32, ptr %i.oe, align 4, !noalias !116183, !noundef !67 ; 3 uses
  %i.of = icmp eq i32 %.val.i.i.us376.i.i, %.val12.i.us716.i.us.i.i
  br i1 %i.of, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i, label %.noexc74.us.i.us.i.i

.noexc74.us.i.us.i.i:                             ; preds = %.lr.ph.i73.split.us714.i.us.i.i
  %i.og = call i32 @llvm.umin.i32(i32 %.val.i.i.us376.i.i, i32 %.val12.i.us716.i.us.i.i)
  %i.oh = call i32 @llvm.umax.i32(i32 %.val.i.i.us376.i.i, i32 %.val12.i.us716.i.us.i.i)
  %.val3.i192.us.i.us.i.i = load i32, ptr %i.nk, align 4, !noalias !116184, !noundef !67
  %.val4.i193.us.i.us.i.i = load i32, ptr %i.nl, align 4, !noalias !116184
  %i.oi = icmp eq i32 %i.og, %.val3.i192.us.i.us.i.i
  %i.oj = icmp eq i32 %i.oh, %.val4.i193.us.i.us.i.i
  %spec.select.i.i.i194.us.i.us.i.i = select i1 %i.oi, i1 %i.oj, i1 false
  br i1 %spec.select.i.i.i194.us.i.us.i.i, label %.noexc74.thread545.us717.i.us.i.i, label %.noexc74.thread.i.i.i

.noexc74.thread545.us717.i.us.i.i:                ; preds = %.noexc74.us.i.us.i.i
  %i.ok = icmp eq ptr %i.od, %i.ng
  br i1 %i.ok, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i, label %.lr.ph.i73.split.us714.i.us.i.i

_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit79.us.i.i: ; preds = %.noexc74.thread545.us717.i.us.i.i, %.lr.ph.i73.split.us714.i.us.i.i
  %i.ol = icmp eq ptr %i.ob, %i.ng
  br i1 %i.ol, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.i.us374.i.i

.lr.ph.i73.i.i.i:                                 ; preds = %.lr.ph.i73.i.i.i.preheader, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i
  %.sroa.0.0314.i.i.i.i = phi ptr [ %i.om, %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i ], [ %i.ne, %.lr.ph.i73.i.i.i.preheader ] ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.i.i, i64 24 ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %.sroa.0.0314.i.i.i.i, i64 16
  %.val.i.i.i.i = load i32, ptr %i.on, align 4, !noalias !116183, !noundef !67 ; 3 uses
  br label %.lr.ph.i73.split.i.i.i

.lr.ph.i73.split.i.i.i:                           ; preds = %.noexc74.thread545.loopexit.i.i.i, %.lr.ph.i73.i.i.i
  %.sroa.01.012.i.i.i.i = phi ptr [ %i.oo, %.noexc74.thread545.loopexit.i.i.i ], [ %i.ne, %.lr.ph.i73.i.i.i ] ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.i.i.i, i64 24 ; 2 uses
  %i.op = getelementptr inbounds nuw i8, ptr %.sroa.01.012.i.i.i.i, i64 16
  %.val12.i.i.i.i = load i32, ptr %i.op, align 4, !noalias !116183, !noundef !67 ; 3 uses
  %i.oq = icmp eq i32 %.val.i.i.i.i, %.val12.i.i.i.i
  br i1 %i.oq, label %_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i, label %_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i349.i.i.i

_RNvXs2_NtNtCsfztDQZkQYYe_8indexmap3map4iterINtB5_4IterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexjENtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator4nextCskcxRuJ53GpR_9rustworkx.exit15.thread.i.i.loopexit.i.i: ; preds = %.noexc74.thread545.loopexit.i.i.i, %.lr.ph.i73.split.i.i.i
  %i.or = icmp eq ptr %i.om, %i.ng
  br i1 %i.or, label %_RNCINvNtNtCsbNMRYq9Xj9a_14rustworkx_core10generators12random_graph20random_regular_graphINtNtNtCs68Jln09rRqb_8petgraph10graph_impl12stable_graph11StableGraphINtNtCsi0YPOvDEjiZ_4pyo38instance2PyNtNtNtB2A_5types3any5PyAnyEB2v_NtB1v_10UndirectedEB2v_NCNvNtCskcxRuJ53GpR_9rustworkx12random_graph20random_regular_graph0B3X_B2v_E0B43_.exit.i.i.i, label %.lr.ph.i73.i.i.i

_RNvNtNtCslwFuT2d6ECx_4core4hash3sip9u8to64_le.exit.i.i349.i.i.i: ; preds = %.lr.ph.i73.split.i.i.i
  %i.os = call i32 @llvm.umin.i32(i32 %.val.i.i.i.i, i32 %.val12.i.i.i.i) ; 2 uses
  %i.ot = call i32 @llvm.umax.i32(i32 %.val.i.i.i.i, i32 %.val12.i.i.i.i) ; 2 uses
  %i.ou = zext i32 %i.os to i64
  %i.ov = zext i32 %i.ot to i64
end_hunk_8
begin_hunk_9_@_RNvYINtNtNtCsbv8bzjJ0gSk_6flate22gz5write9GzEncoderINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx:bb.a
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171788
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit

bb.w:                                             ; preds = %.split32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171788
  %i.cw = icmp ult ptr %.sroa.4.0.i.ph, inttoptr (i64 188978561024 to ptr)
  %i.cx = and i64 %i.cc, 1095216660480
  %i.cy = icmp ne i64 %i.cx, 1095216660480
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.assume(i1 %i.cy)
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit

bb.x:                                             ; preds = %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171788
  %i.cz = getelementptr i8, ptr %.sroa.4.0.i.ph, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cz) ]
  store ptr %i.cz, ptr %i.p, align 8, !alias.scope !171789, !noalias !171788
  store i8 3, ptr %i.a, align 8, !alias.scope !171789, !noalias !171788
  call void @_RNvXsd_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.p), !noalias !171788
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit: ; preds = %.thread.thread, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171788
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171799)
  %i.f = load i64, ptr %0, align 8, !range !70, !alias.scope !171799, !noalias !171800, !noundef !67
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !171799, !noalias !171800, !noundef !67 ; 4 uses
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
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !171799, !noalias !171800, !nonnull !67, !noundef !67
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.e, i1 false), !noalias !171799
  %i.p = add nuw i64 %i.h, %i.e
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !171799, !noalias !171800
  br label %_RNvXs4_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit

_RNvXs4_NtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriterINtB5_9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileENtNtNtCslwFuT2d6ECx_4core2io5write5Write9write_allCskcxRuJ53GpR_9rustworkx.exit: ; preds = %bb.d, %bb.c, %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i12, %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit ], [ null, %bb.d ], [ %i.l, %bb.c ]
  ret ptr %.sroa.0.0

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !171801
  store ptr %0, ptr %i.b, align 8, !noalias !171801
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.q, align 8, !noalias !171801
  %i.r = invoke noundef zeroext i1 @_RNvNtCslwFuT2d6ECx_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1096, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.m, %bb.e
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEEECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #63
          to label %bb.p unwind label %bb.o

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.q, align 8, !noalias !171801, !noundef !67 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null                ; 2 uses
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i, label %bb.m, label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit, !prof !71

bb.i:                                             ; preds = %bb.g
  br i1 %.not.i, label %_RINvNtNtCslwFuT2d6ECx_4core2io5write17default_write_fmtINtNtNtNtCs87CvPiUlf0m_5alloc2io8buffered9bufwriter9BufWriterNtNtCscQOBX8uaZYv_3std2fs4FileEECskcxRuJ53GpR_9rustworkx.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !171802
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
  store ptr %i.z, ptr %i.aa, align 8, !alias.scope !171803, !noalias !171802
  store i8 3, ptr %i.a, align 8, !alias.scope !171803, !noalias !171802
  call void @_RNvXsd_NtNtCslwFuT2d6ECx_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa), !noalias !171804
  br label %_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i

_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskcxRuJ53GpR_9rustworkx.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !171802
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !171801
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
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !171819, !noalias !171820, !noundef !67
  %.promoted.i.i.i = load i64, ptr %i.a, align 8, !alias.scope !171819, !noalias !171820 ; 5 uses
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i, i64 %i.c) ; 2 uses
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
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !171817

middle.block:                                     ; preds = %vector.body
  %i.q = add i64 %i.n, 3
  store i64 %i.q, ptr %i.a, align 8, !alias.scope !171819, !noalias !171820
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
  store i64 %i.s, ptr %i.a, align 8, !alias.scope !171819, !noalias !171820
  %i.t = add i64 %.sroa.01.0.i.i.i, -1            ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_RNvXs_NvNtNtNtNtCslwFuT2d6ECx_4core4iter6traits8iterator8Iterator10advance_byINtNtNtBc_8adapters3map3MapINtNtB1i_3zip3ZipIB1F_INtNtNtBe_5slice4iter4IterjEB20_EIB21_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB2M_9CooMatrixdE12triplet_iter0ENtB4_13SpecAdvanceBy15spec_advance_byCskcxRuJ53GpR_9rustworkx.exit, label %scalar.ph, !llvm.loop !171818

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
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !171853, !noalias !171854
  %.phi.trans.insert3 = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.pre4 = load i64, ptr %.phi.trans.insert3, align 8, !alias.scope !171853, !noalias !171854
  br label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !171855, !noalias !171856, !noundef !67 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %.phi.trans.insert, align 8, !alias.scope !171855, !noalias !171856 ; 5 uses
  %umax.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i, i64 %i.b) ; 2 uses
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
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !171844

middle.block:                                     ; preds = %vector.body
  %i.p = add i64 %i.m, 3
  store i64 %i.p, ptr %.phi.trans.insert, align 8, !alias.scope !171855, !noalias !171856
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
  store i64 %i.r, ptr %.phi.trans.insert, align 8, !alias.scope !171855, !noalias !171856
  %i.s = add i64 %.sroa.01.0.i.i.i.i, -1          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %.loopexit, label %scalar.ph, !llvm.loop !171845

.loopexit:                                        ; preds = %bb.c, %..loopexit_crit_edge
  %i.u = phi i64 [ %.pre4, %..loopexit_crit_edge ], [ %i.b, %bb.c ]
  %i.v = phi i64 [ %.pre, %..loopexit_crit_edge ], [ %i.r, %bb.c ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171858)
  %i.w = icmp ult i64 %i.v, %i.u
  br i1 %i.w, label %bb.d, label %_RNvYINtNtNtNtCslwFuT2d6ECx_4core4iter8adapters3map3MapINtNtB7_3zip3ZipIBR_INtNtNtBb_5slice4iter4IterjEB1a_EIB1b_dEENCNvMs_NtCsiQEdADXr2Fa_15nalgebra_sparse3cooINtB1W_9CooMatrixdE12triplet_iter0ENtNtNtB9_6traits8iterator8Iterator10advance_byCskcxRuJ53GpR_9rustworkx.exit

bb.d:                                             ; preds = %.loopexit
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.y = add nuw i64 %i.v, 1
  store i64 %i.y, ptr %i.x, align 8, !alias.scope !171853, !noalias !171854
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171859, !noalias !171854, !noundef !67
  %i.ab = add i64 %i.aa, %i.v                     ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %1, align 8, !alias.scope !171859, !noalias !171854, !nonnull !67, !noundef !67
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val1.i.i.i.i.i, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !171859, !noalias !171854, !nonnull !67, !noundef !67
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i.i, i64 %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i = load ptr, ptr %i.af, align 8, !alias.scope !171853, !noalias !171854, !nonnull !67, !noundef !67
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.v
  %i.ah = load i64, ptr %i.ac, align 8, !noalias !171860, !noundef !67
  %i.ai = load i64, ptr %i.ae, align 8, !noalias !171860, !noundef !67
  store i64 %i.ah, ptr %0, align 8, !alias.scope !171857, !noalias !171858
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %.sroa.44.0..sroa_idx.i, align 8, !alias.scope !171857, !noalias !171858
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
  store i8 %i.q, ptr %.sroa.0, align 4, !alias.scope !171880
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.r = or disjoint i8 %i.g, -64
  store i8 %i.r, ptr %.sroa.0, align 4, !alias.scope !171880
  %.sroa.0.1..sroa_idx17 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.e, ptr %.sroa.0.1..sroa_idx17, align 1, !alias.scope !171880
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.s = icmp samesign ult i32 %1, 65536
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = or disjoint i8 %i.k, -32
  store i8 %i.t, ptr %.sroa.0, align 4, !alias.scope !171880
  %.sroa.0.1..sroa_idx16 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.i, ptr %.sroa.0.1..sroa_idx16, align 1, !alias.scope !171880
  %.sroa.0.2..sroa_idx18 = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.e, ptr %.sroa.0.2..sroa_idx18, align 2, !alias.scope !171880
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.p, ptr %.sroa.0, align 4, !alias.scope !171880
  %.sroa.0.1..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 1
  store i8 %i.m, ptr %.sroa.0.1..sroa_idx, align 1, !alias.scope !171880
  %.sroa.0.2..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 2
  store i8 %i.i, ptr %.sroa.0.2..sroa_idx, align 2, !alias.scope !171880
  %.sroa.0.3..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0, i64 3
  store i8 %i.e, ptr %.sroa.0.3..sroa_idx, align 1, !alias.scope !171880
  br label %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171881)
  %i.u = load ptr, ptr %0, align 8, !alias.scope !171881, !noalias !171882, !nonnull !67, !align !98, !noundef !67 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171883)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171884)
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171886)
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !171887, !noalias !171888, !noundef !67 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !171889)
  %i.w = tail call i64 @llvm.uadd.sat.i64(i64 %.val.i.i.i.i, i64 range(i64 0, -9223372036854775808) %.sroa.0.05.i) ; 2 uses
  %i.x = load i64, ptr %i.u, align 8, !range !70, !alias.scope !171890, !noalias !171891, !noundef !67 ; 2 uses
  %i.y = icmp ugt i64 %i.w, %i.x
  br i1 %i.y, label %bb.h, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

bb.h:                                             ; preds = %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !171890, !noalias !171891, !noundef !67 ; 4 uses
  %i.ab = icmp sgt i64 %i.aa, -1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = sub i64 %i.w, %i.aa                     ; 2 uses
  %i.ad = sub nsw i64 %i.x, %i.aa
  %i.ae = icmp ugt i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i, !prof !71

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @_RINvNvMs2_NtCs87CvPiUlf0m_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskcxRuJ53GpR_9rustworkx(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef %i.aa, i64 noundef %i.ac, i64 noundef 1, i64 noundef 1), !noalias !171891
  br label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %_RNvNtNtCslwFuT2d6ECx_4core4char7methods15encode_utf8_raw.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !171890, !noalias !171891, !noundef !67 ; 5 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp ugt i64 %.val.i.i.i.i, %i.ag
  br i1 %i.ai, label %.lr.ph.preheader.i.i.i.i.i.i, label %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i

_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i: ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !171892, !noalias !171891
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i.i.i.i.i
  %i.aj = sub nuw i64 %.val.i.i.i.i, %i.ag
  %i.ak = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !171890, !noalias !171891, !nonnull !67, !noundef !67 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ag
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 range(i64 0, -9223372036854775808) %i.aj, i1 false), !alias.scope !171893, !noalias !171894
  store i64 %.val.i.i.i.i, ptr %i.af, align 8, !alias.scope !171890, !noalias !171891
  br label %_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i

_RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i, %_RNvMs_NtCs87CvPiUlf0m_5alloc3vecINtB4_3VechE7reserveCskcxRuJ53GpR_9rustworkx.exit.i._RINvNtNtCs87CvPiUlf0m_5alloc2io6cursor15reserve_and_padNtNtB6_5alloc6GlobalECskcxRuJ53GpR_9rustworkx.exit_crit_edge.i.i.i.i
end_hunk_9
begin_hunk_10_@llvm.fma.f64

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCslwFuT2d6ECx_4core3num11float_parseNtB4_15ParseFloatErrorNtNtB8_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs7_NtCsbv8bzjJ0gSk_6flate23memNtNtNtCslwFuT2d6ECx_4core2io5error5ErrorINtNtBC_7convert4FromNtB5_13CompressErrorE4from() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsb_NtNtCsi0YPOvDEjiZ_4pyo37pyclass5guardNtNtB9_3err5PyErrINtNtCslwFuT2d6ECx_4core7convert4FromNtB5_17PyClassGuardErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64), ptr noundef, ptr) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtNtCs1zNYWXRTdJn_9quick_xml6events10attributesNtB5_9AttributeINtNtCslwFuT2d6ECx_4core7convert4FromTReB1H_EE4from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @PyType_IsSubtype(ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtNtCslwFuT2d6ECx_4core3mem9alignmentNtB4_9AlignmentNtNtB8_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCslwFuT2d6ECx_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtCs59S24YpdcPa_10serde_core2deDNtB5_8ExpectedEL_NtNtCslwFuT2d6ECx_4core3fmt7Display3fmt(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtCse4xgDkpji04_10num_bigint7biguintNtB5_7BigUintNtNtCslwFuT2d6ECx_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCslwFuT2d6ECx_4core3fmt5floatdNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCslwFuT2d6ECx_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3Tt2PVjAfPX_5numpy6borrow6shared7release(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods4repr(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsi0YPOvDEjiZ_4pyo38instance13python_format(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs4_NtCslLviULm4Laq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsl_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numiNtNtBb_10conversion12IntoPyObject13into_pyobject(i64 noundef) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef ptr @PyObject_Call(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3anyINtNtB8_8instance5BoundNtB4_5PyAnyENtB4_12PyAnyMethods3str(ptr dead_on_unwind noalias nofree noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs_NtNtCsi0YPOvDEjiZ_4pyo35types3setINtNtB8_8instance5BoundNtB4_5PySetENtB4_12PySetMethods4iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs0_NtNtCsi0YPOvDEjiZ_4pyo35types9frozensetINtNtB9_8instance5BoundNtB5_11PyFrozenSetENtB5_18PyFrozenSetMethods4iter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCscQOBX8uaZYv_3std4sync6poison7condvarNtB2_7Condvar10notify_all(ptr noundef nonnull align 4) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtCsbv8bzjJ0gSk_6flate23memNtB5_10Decompress5reset(ptr noalias nofree noundef align 8 dereferenceable(24), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXsa_NtCscQOBX8uaZYv_3std2fsNtB5_4FileNtNtNtCs87CvPiUlf0m_5alloc2io4read4Read4read(ptr noalias nofree noundef align 4 dereferenceable(4), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMse_NtNtCs1zNYWXRTdJn_9quick_xml6events10attributesNtB5_9IterState4next(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noalias nofree noundef align 8 dereferenceable(48), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB5_19FunctionDescription29too_many_positional_arguments(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), i64 noundef) unnamed_addr #3

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs5_NtNtCsi0YPOvDEjiZ_4pyo35impl_16extract_argumentNtB5_19FunctionDescription27unexpected_keyword_argument(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80), ptr noundef nonnull) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_10tp_dealloc(ptr noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvMs0_NtNtCsi0YPOvDEjiZ_4pyo35types5tupleINtNtB9_8instance8BorrowedNtB5_7PyTupleE27get_borrowed_item_unchecked(ptr noundef nonnull, i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvNtNtCsi0YPOvDEjiZ_4pyo35types5tuple18wrong_tuple_length(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64), ptr noundef nonnull, i64 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCslwFuT2d6ECx_4core3fmt5floatfNtB7_7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs87CvPiUlf0m_5alloc4syncINtB5_3ArcNtNtB7_6string6StringE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs87CvPiUlf0m_5alloc4syncINtB5_3ArcNtNtCslLviULm4Laq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNtNtNtCslwFuT2d6ECx_4core3fmt3num3imphNtB6_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtNtCslwFuT2d6ECx_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXse_NtNtCslwFuT2d6ECx_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsu_NtNtCslwFuT2d6ECx_4core3fmt3nummNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCslwFuT2d6ECx_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCslwFuT2d6ECx_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash15hash_bytes_long(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvCs1X8ypyHYXIB_8foldhash17hash_bytes_medium(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvNtNtCs3Tt2PVjAfPX_5numpy6npyffi5array13PyArray_Check(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB5_11BoolVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs4_NtNtCs59S24YpdcPa_10serde_core2de5implsNtB5_13StringVisitorNtB7_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXNvXs1a_NtNtCs59S24YpdcPa_10serde_core2de5implsjNtBb_11Deserialize11deserializeNtB2_16PrimitiveVisitorNtBb_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCslwFuT2d6ECx_4core3str5errorNtB5_14ParseBoolErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_11DebugStruct21finish_non_exhaustive(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i8 -1, 2) i8 @llvm.scmp.i8.i64(i64, i64) #41

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs3_NtNtCsi0YPOvDEjiZ_4pyo36pycell5impl_NtB5_13BorrowCheckerNtB5_20PyClassBorrowChecker18release_borrow_mut(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCscQOBX8uaZYv_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4, i32 noundef) unnamed_addr #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCslwFuT2d6ECx_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs6_NtNtCslwFuT2d6ECx_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsu_NtNtCslwFuT2d6ECx_4core3str7patternNtB5_11StrSearcher3new(ptr dead_on_unwind noalias nofree noundef writable sret([104 x i8]) align 8 captures(none) dereferenceable(104), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcINtNtB7_3vec3VecINtNtNtCscnlsAxKLLci_4pest9iterators15queueable_token14QueueableTokenNtNtNtCsiQEdADXr2Fa_15nalgebra_sparse2io13matrix_market4RuleEEE9drop_slowB26_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs6_NtCs87CvPiUlf0m_5alloc2rcINtB5_2RcNtNtNtCscnlsAxKLLci_4pest9iterators10line_index9LineIndexE9drop_slowCsiQEdADXr2Fa_15nalgebra_sparse(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs2_NtNtCsi0YPOvDEjiZ_4pyo311conversions11num_complexINtCse4EQE0hdTSP_11num_complex7ComplexdENtNtB9_10conversion12IntoPyObject13into_pyobject(double noundef, double noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvXs3_NtNtNtCscQOBX8uaZYv_3std3sys5stdio4unixNtB5_6StderrNtNtNtCslwFuT2d6ECx_4core2io5write5Write5write(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCsVAQhhDbxgK_9getrandom8backends27linux_android_with_fallback4init() unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXsp_NtNtNtCsi0YPOvDEjiZ_4pyo311conversions3std3numRjNtNtBb_10conversion12IntoPyObject13into_pyobject(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #56

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.sincos.f64(double) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #41

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.smin.i128(i128, i128) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #41

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #47

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.sqrt.v2f64(<2 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fadd.v4f64(double, <4 x double>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #41

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #41

attributes #0 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree noinline norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { noinline nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #29 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #32 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #34 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #35 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #36 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #37 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #38 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #39 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #40 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #41 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #42 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #43 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #44 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #45 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #46 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #47 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #49 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #50 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsh0WfaQiVYm0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #51 = { nounwind nonlazybind allockind("alloc,zeroed,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #52 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #53 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #54 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #55 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(errnomem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #56 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #58 = { cold noreturn nounwind }
attributes #59 = { nounwind }
attributes #60 = { noinline noreturn }
attributes #61 = { noreturn }
attributes #62 = { noinline }
attributes #63 = { cold }
attributes #64 = { inlinehint }

!llvm.module.flags = !{!62, !63, !64}
!llvm.ident = !{!65}

!0 = distinct !{!0, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!1 = distinct !{!1, !0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!2 = distinct !{!2, !0, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!3 = distinct !{!3, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!4 = distinct !{!4, !3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!5 = distinct !{!5, !3, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!6 = distinct !{!6, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!7 = distinct !{!7, !6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!8 = distinct !{!8, !6, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!9 = distinct !{!9, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!10 = distinct !{!10, !9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!11 = distinct !{!11, !9, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!12 = distinct !{!12, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!13 = distinct !{!13, !12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!14 = distinct !{!14, !12, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!15 = distinct !{!15, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!16 = distinct !{!16, !15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!17 = distinct !{!17, !15, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!18 = distinct !{!18, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx"}
!19 = distinct !{!19, !18, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueNtNtCs87CvPiUlf0m_5alloc6string6StringECskcxRuJ53GpR_9rustworkx: argument 0"}
!20 = distinct !{!20, i1 false, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx"}
!21 = distinct !{!21, !20, !"_RINvNtCslwFuT2d6ECx_4core3ptr9drop_glueINtNtCs87CvPiUlf0m_5alloc3vec3VechEECskcxRuJ53GpR_9rustworkx: argument 0"}
!22 = distinct !{null}
!23 = distinct !{null}
!24 = distinct !{null}
!25 = distinct !{null, null}
!26 = distinct !{null}
!27 = distinct !{!27, i1 false, !"_RNvXse_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx"}
!28 = distinct !{!28, !27, !"_RNvXse_NtNtCs87CvPiUlf0m_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs68Jln09rRqb_8petgraph10graph_impl9NodeIndexENtNtNtCslwFuT2d6ECx_4core3ops4drop4Drop4dropCskcxRuJ53GpR_9rustworkx: argument 0"}
!29 = distinct !{null}
!30 = distinct !{null, null}
!31 = distinct !{null, null}
!32 = distinct !{!32, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!33 = distinct !{!33, !32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!34 = distinct !{!34, !32, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!35 = distinct !{!35, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!36 = distinct !{!36, !35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!37 = distinct !{!37, !35, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!38 = distinct !{!38, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!39 = distinct !{!39, !38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!40 = distinct !{!40, !38, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!41 = distinct !{!41, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!42 = distinct !{!42, !41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!43 = distinct !{!43, !41, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!44 = distinct !{!44, i1 false, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher"}
!45 = distinct !{!45, !44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 1"}
!46 = distinct !{!46, !44, !"_RNvXs1_NtCs1X8ypyHYXIB_8foldhash4fastNtB5_11RandomStateNtNtCslwFuT2d6ECx_4core4hash11BuildHasher12build_hasher: argument 0"}
!47 = distinct !{null, null, null}
!48 = distinct !{null, null, null, null, null}
!49 = distinct !{null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{null, null, null, null, null}
!52 = distinct !{null}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{null, null}
!56 = distinct !{null}
!57 = distinct !{null, null}
!58 = distinct !{null, null, null}
!59 = distinct !{null, null, null, null, null}
!60 = distinct !{null}
!61 = distinct !{null}
!62 = !{i32 8, !"PIC Level", i32 2}
!63 = !{i32 2, !"RtLibUseGOT", i32 1}
!64 = !{i32 7, !"uwtable", i32 2}
!65 = !{!"rustc version 1.100.0-nightly (809936eac 2026-09-12)"}
!66 = !{i64 -1, i64 -9223372036854775808}
!67 = !{}
!68 = !{i64 0, i64 2}
!69 = !{i8 0, i8 2}
!70 = !{i64 0, i64 -9223372036854775808}
!71 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!72 = !{!"branch_weights", !"expected", i32 2144103052, i32 3380596}
!73 = !{!"branch_weights", i32 2002, i32 2000}
!74 = !{!"llvm.loop.isvectorized", i32 1}
!75 = !{!"llvm.loop.unroll.runtime.disable"}
!76 = !{i32 0, i32 2}
!77 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!78 = !{i8 0, i8 3}
!79 = !{!"branch_weights", i32 1, i32 4001}
!80 = !{!"branch_weights", i32 1, i32 1999}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = !{!1}
!83 = !{!2}
!84 = !{!"branch_weights", i32 2146410443, i32 1073205}
!85 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!86 = !{!4}
!87 = !{!5}
!88 = !{!7}
!89 = !{!8}
!90 = !{!"branch_weights", i32 4001, i32 4000000}
!91 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!92 = !{!13}
!93 = !{!14}
!94 = !{!16}
!95 = !{!17}
end_hunk_10
