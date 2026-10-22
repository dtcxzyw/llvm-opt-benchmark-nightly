Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lance-rs/original/lance_select-0ff45bf5da4bce36.lance_select.83dc7e5d3aa2c1eb-cgu.0?download=true
inline.NumInlined: 2541
inline.NumDeleted: 1173
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_RNvXs5_NtCsbjTsVCnQnhv_12lance_select4maskNtB5_14RowAddrTreeMapNtB5_9RowSetOps9union_all:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.sroa.611.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %.sroa.54.0..sroa_idx5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.12.32..sroa.6.0..sroa_idx7.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.14.32..sroa.6.0..sroa_idx7.i.i.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.4.0..sroa_idx165.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 5 uses
  %.sroa.5.0..sroa_idx166.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.do, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE7reserveBK_.exit.i.i.i.i.i.i.i
  %.sroa.5.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecTmNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE7reserveBK_.exit.i.i.i.i.i.i.i ], [ %i.ly, %bb.do ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !5620
  invoke fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10dying_nextB1u_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %bb.f, !noalias !5621

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.e
  %i.bd = load ptr, ptr %i.u, align 8, !noalias !5620, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i, label %bb.i

.thread.i.i.i.i.i.i.i.i.i.i:                      ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5620
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i:                        ; preds = %bb.dl, %.body.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.be, %bb.f ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i, %bb.dl ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i.i.i.i ]
  store i64 %.sroa.5.0.i.i.i.i.i.i.i.i.i, ptr %i.aw, align 8, !alias.scope !5622, !noalias !5623
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5624
  invoke fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10dying_nextB1u_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %.noexc.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5619

.noexc.i.i.i.i.i.i.i.i.i:                         ; preds = %.body.i.i.i.i.i.i.i.i.i.i
  %i.bf = load ptr, ptr %i.g, align 8, !noalias !5624, !noundef !4 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %.body.thread.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.noexc.i.i.i.i.i.i.i.i.i
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.g

bb.g:                                             ; preds = %.noexc2.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %.noexc2.i.i.i.i.i.i.i.i.i ]
  %.sroa.43.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5624
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %.sroa.43.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !noalias !5624 ; 2 uses
  %i.bj = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bj, label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB21_.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bk, align 8, !noalias !5624, !nonnull !4, !noundef !4
  %i.bl = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5624
  br label %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB21_.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB21_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !5624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !5624
  invoke fastcc void @_RNvMsz_NtNtNtCs40k4W9msRzi_5alloc11collections5btree3mapINtB5_8IntoIterRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEE10dying_nextB1u_(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.v)
          to label %.noexc2.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !5619

.noexc2.i.i.i.i.i.i.i.i.i:                        ; preds = %_RNvMsT_NtNtNtCs40k4W9msRzi_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingRmINtNtBb_3vec3VecRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valB21_.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.bm = load ptr, ptr %i.g, align 8, !noalias !5624, !noundef !4 ; 2 uses
  %.not.i.i1.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i1.i.i.i.i.i.i.i.i.i, label %.body.thread.i.i.i.i.i.i.i, label %bb.g

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5620 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !5625, !nonnull !4, !align !32, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.br = getelementptr inbounds nuw [24 x i8], ptr %i.bq, i64 %.sroa.42.0.copyload.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %.sroa.5.8.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !5626 ; 5 uses
  %.sroa.8.8..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.8.8..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5626 ; 5 uses
  %.sroa.8.sroa.5.0..sroa.8.8..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.8.sroa.5.0..sroa.8.8..sroa_idx.sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5626 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !5620
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.8.copyload.i.i.i.i.i.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.53.i.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  %i.bs = load i32, ptr %i.bp, align 4, !noalias !5627, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !5628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !5629
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.bu = icmp samesign ugt i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i, 50
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.bu, i64 10, i64 %.sroa.8.sroa.5.0.copyload.i.i.i.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !5630
  %i.bv = icmp eq i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.bv, label %_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap8multiopsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBU_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2g_B2e_9union_all0EINtB9_8MultiOpsRNtB7_13RoaringBitmapE5unionB2i_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.k

_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap8multiopsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBU_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2g_B2e_9union_all0EINtB9_8MultiOpsRNtB7_13RoaringBitmapE5unionB2i_.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5630
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx165.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5629
  store i64 0, ptr %.sroa.5.0..sroa_idx166.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5629
  br label %bb.dj

bb.k:                                             ; preds = %bb.j
  %i.bw = shl nuw nsw i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !5631
  %i.bx = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.bw, i64 noundef range(i64 1, 9) 8) #36, !noalias !5631 ; 3 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.l, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.bw) #37
          to label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dk, !noalias !5627

.noexc.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.l
  unreachable

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.k
  store i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.q, align 8, !noalias !5630
  store ptr %i.bx, ptr %i.ax, align 8, !noalias !5630
  store i64 0, ptr %i.ay, align 8, !noalias !5630
  br label %bb.m

bb.m:                                             ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bz = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.co, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ca = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cq, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.4.036.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cb, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cb = add nsw i64 %.sroa.4.036.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cc = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bt
  br i1 %i.cc, label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops25collect_starting_elementsQINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1f_10filter_map9FilterMapINtNtNtB1j_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2X_B2V_9union_all0ENcNtINtNtB1j_6result6ResultRNtB4_13RoaringBitmapNtNtB1j_7convert10InfallibleE2Ok0EB4I_B53_EB2Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.val5.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5628, !noalias !5632, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.ce = load i64, ptr %.val5.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !9, !noalias !5633, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i76.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !5628, !noalias !5632, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.cg = load i64, ptr %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !9, !noalias !5633, !noundef !4
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.cg, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ch = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ci = icmp eq ptr %i.ch, %i.bt
  br i1 %i.ci, label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops25collect_starting_elementsQINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1f_10filter_map9FilterMapINtNtNtB1j_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2X_B2V_9union_all0ENcNtINtNtB1j_6result6ResultRNtB4_13RoaringBitmapNtNtB1j_7convert10InfallibleE2Ok0EB4I_B53_EB2Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !5630 ; 2 uses
  %i.ck = icmp eq i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ck, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !5630, !nonnull !4, !noundef !4
  %i.cl = shl nuw i64 %.val17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.val18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.cl, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5630
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.val5.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.val5.i.i.i.i.i.i.i75.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val5.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !5634)
  %i.cm = load i64, ptr %i.q, align 8, !range !5, !alias.scope !5634, !noalias !5630, !noundef !4
  %i.cn = icmp eq i64 %i.ca, %i.cm
  br i1 %i.cn, label %bb.p, label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.p:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8grow_oneCsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !5630

._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !5634, !noalias !5630
  br label %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.co = phi ptr [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %._RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit_crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.ca
  store ptr %.val5.i.i.i.i.i.i.i.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.cp, align 8, !noalias !5635
  %i.cq = add nuw nsw i64 %i.ca, 1                ; 2 uses
  store i64 %i.cq, ptr %i.ay, align 8, !noalias !5630
  %i.cr = icmp eq i64 %i.cb, 0
  br i1 %i.cr, label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops25collect_starting_elementsQINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1f_10filter_map9FilterMapINtNtNtB1j_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2X_B2V_9union_all0ENcNtINtNtB1j_6result6ResultRNtB4_13RoaringBitmapNtNtB1j_7convert10InfallibleE2Ok0EB4I_B53_EB2Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.m

_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops25collect_starting_elementsQINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1f_10filter_map9FilterMapINtNtNtB1j_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2X_B2V_9union_all0ENcNtINtNtB1j_6result6ResultRNtB4_13RoaringBitmapNtNtB1j_7convert10InfallibleE2Ok0EB4I_B53_EB2Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ true, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.1.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.m ] ; 3 uses
  %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ca, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %spec.store.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ca, %bb.m ] ; 9 uses
  %.sroa.0.1.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bt, %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RNvMsF_NtCs40k4W9msRzi_5alloc3vecINtB5_3VecRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapE8push_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.bt, %bb.m ]
  %.sroa.0121.0.copyload.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noalias !5636 ; 8 uses
  %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !5636 ; 9 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !5630
  %i.cs = icmp samesign ult i64 %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !5637
  %i.ct = icmp samesign ult i64 %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2
  br i1 %i.ct, label %bb.t, label %bb.q, !prof !5638

bb.q:                                             ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops25collect_starting_elementsQINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1f_10filter_map9FilterMapINtNtNtB1j_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2X_B2V_9union_all0ENcNtINtNtB1j_6result6ResultRNtB4_13RoaringBitmapNtNtB1j_7convert10InfallibleE2Ok0EB4I_B53_EB2Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cu = icmp samesign ult i64 %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 21
  br i1 %i.cu, label %bb.s, label %bb.r, !prof !13

bb.r:                                             ; preds = %bb.q
  invoke void @_RINvNtNtNtCscI6d9CVNmLh_4core5slice4sort8unstable7ipnsortRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB6_SBT_20sort_unstable_by_keyINtNtB8_3cmp7ReversejENCINvNtBW_8multiops16try_multi_or_refNtNtB8_7convert10InfallibleINtNtNtNtB8_4iter8adapters3map3MapINtNtB3I_10filter_map9FilterMapINtNtB6_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B51_B4Z_9union_all0ENcNtINtNtB8_6result6ResultBT_B3c_E2Ok0EE0E0EB53_(ptr noalias noundef nonnull align 8 %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.dh, !noalias !5639

bb.s:                                             ; preds = %bb.q
  call fastcc void @_RINvNtNtNtNtCscI6d9CVNmLh_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNCINvMB8_SB1m_20sort_unstable_by_keyINtNtBa_3cmp7ReversejENCINvNtB1p_8multiops16try_multi_or_refNtNtBa_7convert10InfallibleINtNtNtNtBa_4iter8adapters3map3MapINtNtB4d_10filter_map9FilterMapINtNtB8_4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5w_B5u_9union_all0ENcNtINtNtBa_6result6ResultB1m_B3H_E2Ok0EE0E0EB5y_(ptr noalias noundef nonnull align 8 %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 0, 1152921504606846976) %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef 1), !noalias !5639
  br label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %bb.s, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5639
  br label %bb.v

bb.t:                                             ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops25collect_starting_elementsQINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters3map3MapINtNtB1f_10filter_map9FilterMapINtNtNtB1j_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2X_B2V_9union_all0ENcNtINtNtB1j_6result6ResultRNtB4_13RoaringBitmapNtNtB1j_7convert10InfallibleE2Ok0EB4I_B53_EB2Z_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !5637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !5639
  %i.cv = icmp eq i64 %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cv, label %bb.y, label %bb.v

bb.u:                                             ; preds = %bb.x
  %i.cw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cx = icmp eq i64 %.sroa.0121.0.copyload.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %.body.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dg

bb.v:                                             ; preds = %bb.t, %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.idx315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.da = load ptr, ptr %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5640, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !5639, !nonnull !4, !noundef !4 ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !5639, !noundef !4 ; 8 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %3, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.idx167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.de, 40 ; 2 uses
  call void @_RNvCs9hJ03s5DiqP_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #36, !noalias !5641
  %i.dg = call noundef align 8 ptr @_RNvCs9hJ03s5DiqP_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.idx167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 8) #36, !noalias !5641 ; 7 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %bb.x, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %bb.w
  %xtraiter2160 = and i64 %i.de, 3                ; 3 uses
  %i.di = icmp ult i64 %i.de, 4
  br i1 %i.di, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.de, -4
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_RNvNtCs40k4W9msRzi_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %.idx167.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) #37
          to label %.noexc38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.u, !noalias !5639

.noexc38.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %bb.x
  unreachable

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.dj = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.dv, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.dk = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.dj
  %i.dl = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dj ; 2 uses
  store i64 -1, ptr %i.dl, align 8, !noalias !5642
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dk, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5642
  %i.dm = or disjoint i64 %i.dj, 1                ; 2 uses
  %i.dn = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.dm
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dm ; 2 uses
  store i64 -1, ptr %i.do, align 8, !noalias !5642
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  store ptr %i.dn, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !5642
  %i.dp = or disjoint i64 %i.dj, 2                ; 2 uses
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.dp
  %i.dr = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dp ; 2 uses
  store i64 -1, ptr %i.dr, align 8, !noalias !5642
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dq, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !5642
  %i.ds = or disjoint i64 %i.dj, 3                ; 2 uses
  %i.dt = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.ds
  %i.du = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.ds ; 2 uses
  store i64 -1, ptr %i.du, align 8, !noalias !5642
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr %i.dt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !5642
  %i.dv = add nuw i64 %i.dj, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !5639
  %i.dw = icmp eq i64 %.sroa.0121.0.copyload.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.dw, label %_RNvXs0_NtNtCs1akgR21QTtx_7roaring6bitmap8multiopsINtNtNtNtCscI6d9CVNmLh_4core4iter8adapters10filter_map9FilterMapINtNtNtBU_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B2g_B2e_9union_all0EINtB9_8MultiOpsRNtB7_13RoaringBitmapE5unionB2i_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.split.i.i.i.i.i.i.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.y
  %i.dx = shl nuw i64 %.sroa.0121.0.copyload.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5643
  store i64 0, ptr %i.t, align 8, !noalias !5629
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx165.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5629
  store i64 0, ptr %.sroa.5.0..sroa_idx166.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5629
  br i1 %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionEBF_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.dj

.unr-lcssa:                                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod2161.not = icmp eq i64 %xtraiter2160, 0
  br i1 %lcmp.mod2161.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dv, %.unr-lcssa ]
  %lcmp.mod2162 = icmp ne i64 %xtraiter2160, 0
  call void @llvm.assume(i1 %lcmp.mod2162)
  br label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil: ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.dy = phi i64 [ %i.eb, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.dz = getelementptr inbounds nuw [40 x i8], ptr %i.dc, i64 %i.dy
  %i.ea = getelementptr inbounds nuw [40 x i8], ptr %i.dg, i64 %i.dy ; 2 uses
  store i64 -1, ptr %i.ea, align 8, !noalias !5642
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %i.dz, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !5642
  %i.eb = add nuw i64 %i.dy, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter2160
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !5228

.epilog-lcssa:                                    ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.unr-lcssa
  %i.ec = icmp samesign ult i64 %i.de, 230584300921369396
  call void @llvm.assume(i1 %i.ec)
  br label %bb.z

3:                                                ; preds = %bb.v
  %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i64 %.idx315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %4 = lshr exact i64 %gepdiff.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %4)
  %.idx169.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx169.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %.not23.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %.sroa.5123.0.copyload277.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %4
  br i1 %.not23.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.z, label %6

6:                                                ; preds = %3
  %7 = add nuw nsw i64 %.idx169.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 8
  %8 = icmp samesign eq i64 %7, %.idx315.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %spec.select.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %8, i64 0, i64 8
  %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 %spec.select.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %bb.z

bb.z:                                             ; preds = %6, %3, %.epilog-lcssa
  %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %3 ], [ inttoptr (i64 8 to ptr), %6 ], [ %i.dg, %.epilog-lcssa ]
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %5, %3 ], [ %spec.select.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %6 ], [ %i.cz, %.epilog-lcssa ]
  store i64 %i.de, ptr %i.s, align 8, !noalias !5639
  store ptr %.sroa.5.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5639
  store i64 %i.de, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !5639
  %i.ed = ptrtoint ptr %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  %i.ee = icmp eq i64 %.sroa.0121.0.copyload.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  %i.ef = shl nuw i64 %.sroa.0121.0.copyload.pr.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  br label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge, %bb.z
  %.sroa.0.3.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.2.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %.sroa.0.4.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.0107.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.4122.0.copyload.pre.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %.sroa.0107.1149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.7108.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ed, %bb.z ], [ %.sroa.7108.1152.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 3 uses
  %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.z ], [ %.sroa.16.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge ] ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.0107.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = inttoptr i64 %.sroa.7108.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i to ptr ; 3 uses
  %i.eh = icmp eq ptr %i.cy, %i.eg
  br i1 %i.eh, label %bb.ab, label %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.ee, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0107.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5644
  br label %bb.ae

.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs1_NtCs40k4W9msRzi_5alloc6borrowINtB5_3CowNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerE6to_mutCsbjTsVCnQnhv_12lance_select.exit.i.invoke.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.be, %bb.bg, %bb.bi, %bb.ca, %bb.cc, %bb.ay, %bb.ao, %.invoke, %.invoke1811
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %bb.by, %bb.bp, %bb.ak
  %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ih, %bb.bp ], [ %i.gh, %bb.ak ], [ %i.iw, %bb.by ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.ei = icmp eq ptr %.sroa.0107.1149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, null
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ei, i1 true, i1 %i.ee
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.thread141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0107.1149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCs9hJ03s5DiqP_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0107.1149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ef, i64 noundef range(i64 1, -9223372036854775807) 8) #36, !noalias !5645
  br label %.thread141.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ek = ptrtoint ptr %i.ej to i64
  %i.el = load ptr, ptr %i.eg, align 8, !noalias !5646, !nonnull !4, !align !8, !noundef !4
  br label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtB5_6result6ResultRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNtNtB5_7convert10InfallibleEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2z_5ChainINtNtB2B_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterB14_ENcNtBI_2Ok0EIB3g_INtNtB2B_10filter_map9FilterMapINtNtNtB5_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5E_B5C_9union_all0EB4p_EENtNtNtB2D_6traits8iterator8Iterator4next0EB5G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.em = icmp eq ptr %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.bt
  br i1 %i.em, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB4_6result6ResultB2h_NtNtB4_7convert10InfallibleE2Ok0EIB1e_INtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B58_B56_9union_all0EB35_EEEB5a_.exit73.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ae
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.val5.i.i.i.i.i49.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5628, !noalias !5647, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.eo = load i64, ptr %.val5.i.i.i.i.i49.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !9, !noalias !5648, !noundef !4
  %.not.i.i.i.i.i.i.i50.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eo, -1
  br i1 %.not.i.i.i.i.i.i.i50.i.i80.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtB5_6result6ResultRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNtNtB5_7convert10InfallibleEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2z_5ChainINtNtB2B_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterB14_ENcNtBI_2Ok0EIB3g_INtNtB2B_10filter_map9FilterMapINtNtNtB5_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5E_B5C_9union_all0EB4p_EENtNtNtB2D_6traits8iterator8Iterator4next0EB5G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %.val5.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.er, align 8, !alias.scope !5628, !noalias !5647, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  %i.eq = load i64, ptr %.val5.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !range !9, !noalias !5648, !noundef !4
  %.not.i.i.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.eq, -1
  br i1 %.not.i.i.i.i.i.i.i50.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtB5_6result6ResultRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNtNtB5_7convert10InfallibleEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2z_5ChainINtNtB2B_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterB14_ENcNtBI_2Ok0EIB3g_INtNtB2B_10filter_map9FilterMapINtNtNtB5_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5E_B5C_9union_all0EB4p_EENtNtNtB2D_6traits8iterator8Iterator4next0EB5G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCscI6d9CVNmLh_4core3ops8function5implsQNCNvMs4_NtCsbjTsVCnQnhv_12lance_select4maskNtBW_16RowAddrSelection9union_all0INtB7_5FnMutTRRB1v_EE8call_mutBY_.exit.i.i.i.i.i51.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.er = phi ptr [ %i.ep, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.en, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.es = icmp eq ptr %i.er, %i.bt
  br i1 %i.es, label %_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters5chain5ChainINtNtBG_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB4_6result6ResultB2h_NtNtB4_7convert10InfallibleE2Ok0EIB1e_INtNtBG_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B58_B56_9union_all0EB35_EEEB5a_.exit73.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtB5_6result6ResultRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNtNtB5_7convert10InfallibleEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2z_5ChainINtNtB2B_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterB14_ENcNtBI_2Ok0EIB3g_INtNtB2B_10filter_map9FilterMapINtNtNtB5_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5E_B5C_9union_all0EB4p_EENtNtNtB2D_6traits8iterator8Iterator4next0EB5G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.4.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i1 [ %.sroa.0.3.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.0.3.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ true, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.7108.1152.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ek, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7108.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7108.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0107.1149.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0107.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.16.1.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.16.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.en, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ep, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %.sroa.0.0.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.el, %_RINvNtNtNtCscI6d9CVNmLh_4core4iter8adapters5chain17and_then_or_clearINtNtB4_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapENcNtINtNtB8_6result6ResultB28_NtNtB8_7convert10InfallibleE2Ok0EB30_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val5.i.i.i.i.i49.i.i79.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.val5.i.i.i.i.i49.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i47.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !noalias !5639, !nonnull !4, !noundef !4 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i46.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !5639, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5649)
  call void @llvm.experimental.noalias.scope.decl(metadata !5650)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.ew, 40
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ey = icmp eq i64 %i.ew, 0
  br i1 %i.ey, label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge, label %.lr.ph.i52.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.backedge: ; preds = %.noexc59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtB5_6result6ResultRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNtNtB5_7convert10InfallibleEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2z_5ChainINtNtB2B_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterB14_ENcNtBI_2Ok0EIB3g_INtNtB2B_10filter_map9FilterMapINtNtNtB5_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5E_B5C_9union_all0EB4p_EENtNtNtB2D_6traits8iterator8Iterator4next0EB5G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RINvNtNtCs1akgR21QTtx_7roaring6bitmap8multiops19merge_container_refNCINvB2_16try_multi_or_refNtNtCscI6d9CVNmLh_4core7convert10InfallibleINtNtNtNtB1x_4iter8adapters3map3MapINtNtB2f_10filter_map9FilterMapINtNtNtB1x_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B3I_B3G_9union_all0ENcNtINtNtB1x_6result6ResultRNtB4_13RoaringBitmapB1t_E2Ok0EEs_0EB3K_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i52.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_RINvMNtCscI6d9CVNmLh_4core6optionINtB3_6OptionINtNtB5_6result6ResultRNtNtCs1akgR21QTtx_7roaring6bitmap13RoaringBitmapNtNtB5_7convert10InfallibleEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2z_5ChainINtNtB2B_3map3MapINtNtNtCs40k4W9msRzi_5alloc3vec9into_iter8IntoIterB14_ENcNtBI_2Ok0EIB3g_INtNtB2B_10filter_map9FilterMapINtNtNtB5_5slice4iter4IterRNtNtCsbjTsVCnQnhv_12lance_select4mask16RowAddrSelectionENCNvMs4_B5E_B5C_9union_all0EB4p_EENtNtNtB2D_6traits8iterator8Iterator4next0EB5G_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.pre.i53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5649, !noalias !5639
  br label %bb.af

bb.af:                                            ; preds = %.noexc59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i52.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ez = phi ptr [ %.pre.i53.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i52.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jf, %.noexc59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %.sroa.0.084.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.eu, %.lr.ph.i52.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fa, %.noexc59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 9 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.0.084.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.fb = load i64, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5649, !noalias !5639, !noundef !4 ; 11 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.0.084.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %.val.i54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i16, ptr %i.fc, align 2, !alias.scope !5650, !noalias !5639 ; 3 uses
  switch i64 %i.fb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %.thread.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  ]

.thread.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5651
  store ptr %.sroa.0.084.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !5651
  store i64 -1, ptr %i.o, align 8, !noalias !5651
  br label %bb.ah

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.af
  %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.af ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.fd = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 30 uses
  %i.fe = load i64, ptr %i.fd, align 8, !range !19, !alias.scope !5652, !noalias !5653, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fe, -1 ; 6 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 8 ; 16 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !5652, !noalias !5653, !nonnull !4, !align !8 ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fg, ptr %i.fd
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.fi = load i16, ptr %i.fh, align 8, !noalias !5654, !noundef !4 ; 2 uses
  %i.fj = icmp eq i16 %i.fi, %.val.i54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.fj, label %bb.am, label %bb.ag

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %bb.af, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fv, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fb, %bb.af ] ; 2 uses
  %.sroa.05.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.fk = lshr i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fl = add nuw nsw i64 %i.fk, %.sroa.05.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.fm = icmp ult i64 %i.fl, %i.fb
  call void @llvm.assume(i1 %i.fm)
  %i.fn = getelementptr inbounds nuw [40 x i8], ptr %i.ez, i64 %i.fl ; 3 uses
  %i.fo = load i64, ptr %i.fn, align 8, !range !19, !alias.scope !5655, !noalias !5653, !noundef !4
  %.not.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fo, -1
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !5655, !noalias !5653, !nonnull !4, !align !8
  %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i15.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.fq, ptr %i.fn
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i16.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.fs = load i16, ptr %i.fr, align 8, !noalias !5654, !noundef !4
  %i.ft = icmp ugt i16 %i.fs, %.val.i54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fu = select i1 %i.ft, i64 %.sroa.05.018.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 %i.fl, !unpredictable !4 ; 2 uses
  %i.fv = sub nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fk ; 2 uses
  %i.fw = icmp ugt i64 %i.fv, 1
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fx = icmp ult i16 %i.fi, %.val.i54.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fy = zext i1 %i.fx to i64
  %i.fz = add nuw nsw i64 %.sroa.05.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fy ; 2 uses
  %i.ga = icmp ule i64 %i.fz, %i.fb
  call void @llvm.assume(i1 %i.ga)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !5651
  store ptr %.sroa.0.084.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.az, align 8, !noalias !5651
  store i64 -1, ptr %i.o, align 8, !noalias !5651
  call void @llvm.experimental.noalias.scope.decl(metadata !5656)
  %i.gb = icmp ult i64 %i.fb, 230584300921369396
  call void @llvm.assume(i1 %i.gb)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.thread.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.4.0.i.i.ph59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.thread.i55.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fz, %bb.ag ] ; 3 uses
  %i.gc = load i64, ptr %i.s, align 8, !range !5, !alias.scope !5657, !noalias !5639, !noundef !4
  %i.gd = icmp eq i64 %i.fb, %i.gc
  br i1 %i.gd, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  invoke void @_RNvMs3_NtCs40k4W9msRzi_5alloc7raw_vecINtB5_6RawVecINtNtB7_6borrow3CowNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEE8grow_oneCsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.aj unwind label %bb.ak, !noalias !5658

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ge = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5657, !noalias !5639, !nonnull !4, !noundef !4 ; 2 uses
  %i.gf = getelementptr inbounds nuw [40 x i8], ptr %i.ge, i64 %.sroa.4.0.i.i.ph59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.gg = icmp samesign ult i64 %.sroa.4.0.i.i.ph59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fb
  br i1 %i.gg, label %bb.al, label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.gh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCscI6d9CVNmLh_4core3ptr9drop_glueINtNtCs40k4W9msRzi_5alloc6borrow3CowNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEECsbjTsVCnQnhv_12lance_select(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.o) #38, !noalias !5659
  br label %.body.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.al:                                            ; preds = %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 40
  %i.gj = sub nuw nsw i64 %i.fb, %.sroa.4.0.i.i.ph59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gk = mul nuw nsw i64 %i.gj, 40
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gi, ptr nonnull align 8 %i.gf, i64 %i.gk, i1 false), !noalias !5660
  br label %_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_RNvMs_NtCs40k4W9msRzi_5alloc3vecINtB4_3VecINtNtB6_6borrow3CowNtNtNtCs1akgR21QTtx_7roaring6bitmap9container9ContainerEE10insert_mutCsbjTsVCnQnhv_12lance_select.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.al, %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.gf, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.o, i64 40, i1 false), !noalias !5659
  %i.gl = add nuw nsw i64 %i.fb, 1
  store i64 %i.gl, ptr %.sroa.7.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !5657, !noalias !5639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !5651
  br label %.noexc59.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.am:                                            ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
end_hunk_0
