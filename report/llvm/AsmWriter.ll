Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/AsmWriter?download=true
inline.NumInlined: 10254
inline.NumDeleted: 5067
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm6Module5printERNS_11raw_ostreamEPNS_24AssemblyAnnotationWriterEbb:bb.a
.lr.ph.i.i15.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i.i.i.i
  %.013.i.i16.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i18.i.i.i.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.0912.i.i17.i.i.i.i.i.i.i.i = phi ptr [ %.013.i.i16.i.i.i.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i.i.i.i ], [ %.08.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.my = load ptr, ptr %.013.i.i16.i.i.i.i.i.i.i.i, align 8, !tbaa !200, !noalias !840
  store ptr %i.my, ptr %.0912.i.i17.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.mz = getelementptr inbounds i8, ptr %.0912.i.i17.i.i.i.i.i.i.i.i, i64 -8
  %i.na = load i32, ptr %i.mz, align 8, !tbaa !102, !noalias !840
  %i.nb = getelementptr inbounds nuw i8, ptr %.0912.i.i17.i.i.i.i.i.i.i.i, i64 8
  store i32 %i.na, ptr %i.nb, align 8, !tbaa !429, !noalias !840
  %.0.i.i18.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i16.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val.i.i19.i.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i18.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.nc = call fastcc noundef zeroext i1 @"_ZZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEEENK3$_0clERKSC_IPKNS_3UseEjESO_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %12, ptr %.sroa.0.0.copyload.i.i8.i.i.i.i.i.i.i.i, ptr %.0.val.i.i19.i.i.i.i.i.i.i.i), !noalias !840
  br i1 %i.nc, label %.lr.ph.i.i15.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i12.i.i.i.i.i.i.i.i", !llvm.loop !786

"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i12.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i15.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.09.lcssa.i.i13.i.i.i.i.i.i.i.i = phi ptr [ %.08.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.013.i.i16.i.i.i.i.i.i.i.i, %.lr.ph.i.i15.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i8.i.i.i.i.i.i.i.i, ptr %.09.lcssa.i.i13.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.nd = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i13.i.i.i.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i10.i.i.i.i.i.i.i.i, ptr %i.nd, align 8, !tbaa !429, !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %12), !noalias !839
  %i.ne = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i14.i.i.i.i.i.i.i.i = icmp eq ptr %i.ne, %i.kw
  br i1 %.not.i14.i.i.i.i.i.i.i.i, label %"_ZSt26__unguarded_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !788

"_ZSt26__unguarded_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i.i": ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i12.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !839
  br label %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i"

.preheader.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull readonly align 8 dereferenceable(24) %16, i64 24, i1 false), !noalias !839
  %.019.i20.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  %i.nf = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 8
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bj, %.preheader.i.i.i.i.i.i.i.i.i
  %.022.i22.i.i.i.i.i.i.i.i = phi ptr [ %.019.i20.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.0.i32.i.i.i.i.i.i.i.i, %bb.bj ] ; 10 uses
  %.pn21.i23.i.i.i.i.i.i.i.i = phi ptr [ %.val.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i ], [ %.022.i22.i.i.i.i.i.i.i.i, %bb.bj ] ; 5 uses
  %.0.val.i24.i.i.i.i.i.i.i.i = load ptr, ptr %.022.i22.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %.val.i25.i.i.i.i.i.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.ng = call fastcc noundef zeroext i1 @"_ZZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEEENK3$_0clERKSC_IPKNS_3UseEjESO_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %11, ptr %.0.val.i24.i.i.i.i.i.i.i.i, ptr %.val.i25.i.i.i.i.i.i.i.i), !noalias !840
  br i1 %i.ng, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %.sroa.017.0.copyload.i39.i.i.i.i.i.i.i.i = load ptr, ptr %.022.i22.i.i.i.i.i.i.i.i, align 8, !noalias !840
  %.sroa.4.0..0.sroa_idx.i40.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn21.i23.i.i.i.i.i.i.i.i, i64 24
  %.sroa.4.0.copyload.i41.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.4.0..0.sroa_idx.i40.i.i.i.i.i.i.i.i, align 8, !noalias !840
  %i.nh = ptrtoint ptr %.022.i22.i.i.i.i.i.i.i.i to i64
  %i.ni = sub i64 %i.nh, %i.kx
  %i.nj = ashr exact i64 %i.ni, 4                 ; 5 uses
  %i.nk = icmp sgt i64 %i.nj, 0
  br i1 %i.nk, label %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIPKN4llvm3UseEjES6_ET0_T_S8_S7_.exit.i42.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i:   ; preds = %bb.bh
  %i.nl = getelementptr inbounds nuw i8, ptr %.pn21.i23.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %xtraiter = and i64 %i.nj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol:        ; preds = %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol
  %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ns, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ], [ %i.nj, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ]
  %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.nn, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ], [ %i.nl, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.nm, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ], [ %.022.i22.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ]
  %i.nm = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.nn = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.prol, i64 -16 ; 3 uses
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !200, !noalias !840
  store ptr %i.no, ptr %i.nn, align 8, !tbaa !428, !noalias !840
  %i.np = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.prol, i64 -8
  %i.nq = load i32, ptr %i.np, align 8, !tbaa !102, !noalias !840
  %i.nr = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.prol, i64 -8
  store i32 %i.nq, ptr %i.nr, align 8, !tbaa !429, !noalias !840
  %i.ns = add nsw i64 %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol, !llvm.loop !789

.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.nj, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ], [ %i.ns, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.nl, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ], [ %i.nn, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.unr = phi ptr [ %.022.i22.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i43.i.i.i.i.i.i.i.i ], [ %i.nm, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol ]
  %i.nt = icmp ult i64 %i.nj, 4
  br i1 %i.nt, label %_ZSt13move_backwardIPSt4pairIPKN4llvm3UseEjES6_ET0_T_S8_S7_.exit.i42.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i:             ; preds = %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i
  %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i = phi i64 [ %i.os, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i = phi ptr [ %i.on, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i = phi ptr [ %i.om, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit ] ; 8 uses
  %i.nu = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -16
  %i.nv = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -16
  %i.nw = load ptr, ptr %i.nu, align 8, !tbaa !200, !noalias !840
  store ptr %i.nw, ptr %i.nv, align 8, !tbaa !428, !noalias !840
  %i.nx = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -8
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !102, !noalias !840
  %i.nz = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -8
  store i32 %i.ny, ptr %i.nz, align 8, !tbaa !429, !noalias !840
  %i.oa = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -32
  %i.ob = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -32
  %i.oc = load ptr, ptr %i.oa, align 8, !tbaa !200, !noalias !840
  store ptr %i.oc, ptr %i.ob, align 8, !tbaa !428, !noalias !840
  %i.od = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -24
  %i.oe = load i32, ptr %i.od, align 8, !tbaa !102, !noalias !840
  %i.of = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -24
  store i32 %i.oe, ptr %i.of, align 8, !tbaa !429, !noalias !840
  %i.og = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -48
  %i.oh = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -48
  %i.oi = load ptr, ptr %i.og, align 8, !tbaa !200, !noalias !840
  store ptr %i.oi, ptr %i.oh, align 8, !tbaa !428, !noalias !840
  %i.oj = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -40
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !102, !noalias !840
  %i.ol = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -40
  store i32 %i.ok, ptr %i.ol, align 8, !tbaa !429, !noalias !840
  %i.om = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.on = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -64 ; 2 uses
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !200, !noalias !840
  store ptr %i.oo, ptr %i.on, align 8, !tbaa !428, !noalias !840
  %i.op = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i47.i.i.i.i.i.i.i.i, i64 -56
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !102, !noalias !840
  %i.or = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i46.i.i.i.i.i.i.i.i, i64 -56
  store i32 %i.oq, ptr %i.or, align 8, !tbaa !429, !noalias !840
  %i.os = add nsw i64 %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i, -4
  %i.ot = icmp sgt i64 %.010.i.i.i.i.i.i45.i.i.i.i.i.i.i.i, 4
  br i1 %i.ot, label %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIPKN4llvm3UseEjES6_ET0_T_S8_S7_.exit.i42.i.i.i.i.i.i.i.i, !llvm.loop !785

_ZSt13move_backwardIPSt4pairIPKN4llvm3UseEjES6_ET0_T_S8_S7_.exit.i42.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i44.i.i.i.i.i.i.i.i, %bb.bh
  store ptr %.sroa.017.0.copyload.i39.i.i.i.i.i.i.i.i, ptr %.val.i.i.i, align 8, !tbaa !428, !noalias !840
  store i32 %.sroa.4.0.copyload.i41.i.i.i.i.i.i.i.i, ptr %i.nf, align 8, !tbaa !429, !noalias !840
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull readonly align 8 dereferenceable(24) %11, i64 24, i1 false), !noalias !839
  %.sroa.0.0.copyload.i.i26.i.i.i.i.i.i.i.i = load ptr, ptr %.022.i22.i.i.i.i.i.i.i.i, align 8, !noalias !840 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i27.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn21.i23.i.i.i.i.i.i.i.i, i64 24
  %.sroa.5.0.copyload.i.i28.i.i.i.i.i.i.i.i = load i32, ptr %.sroa.5.0..sroa_idx.i.i27.i.i.i.i.i.i.i.i, align 8, !noalias !840
  %.0.val11.i.i29.i.i.i.i.i.i.i.i = load ptr, ptr %.pn21.i23.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.ou = call fastcc noundef zeroext i1 @"_ZZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEEENK3$_0clERKSC_IPKNS_3UseEjESO_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %11, ptr %.sroa.0.0.copyload.i.i26.i.i.i.i.i.i.i.i, ptr %.0.val11.i.i29.i.i.i.i.i.i.i.i), !noalias !840
  br i1 %i.ou, label %.lr.ph.i.i34.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i30.i.i.i.i.i.i.i.i"

.lr.ph.i.i34.i.i.i.i.i.i.i.i:                     ; preds = %bb.bi, %.lr.ph.i.i34.i.i.i.i.i.i.i.i
  %.013.i.i35.i.i.i.i.i.i.i.i = phi ptr [ %.0.i.i37.i.i.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.i.i ], [ %.pn21.i23.i.i.i.i.i.i.i.i, %bb.bi ] ; 4 uses
  %.0912.i.i36.i.i.i.i.i.i.i.i = phi ptr [ %.013.i.i35.i.i.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.i.i ], [ %.022.i22.i.i.i.i.i.i.i.i, %bb.bi ] ; 3 uses
  %i.ov = load ptr, ptr %.013.i.i35.i.i.i.i.i.i.i.i, align 8, !tbaa !200, !noalias !840
  store ptr %i.ov, ptr %.0912.i.i36.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.ow = getelementptr inbounds i8, ptr %.0912.i.i36.i.i.i.i.i.i.i.i, i64 -8
  %i.ox = load i32, ptr %i.ow, align 8, !tbaa !102, !noalias !840
  %i.oy = getelementptr inbounds nuw i8, ptr %.0912.i.i36.i.i.i.i.i.i.i.i, i64 8
  store i32 %i.ox, ptr %i.oy, align 8, !tbaa !429, !noalias !840
  %.0.i.i37.i.i.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.013.i.i35.i.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  %.0.val.i.i38.i.i.i.i.i.i.i.i = load ptr, ptr %.0.i.i37.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.oz = call fastcc noundef zeroext i1 @"_ZZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEEENK3$_0clERKSC_IPKNS_3UseEjESO_"(ptr noundef nonnull readonly align 8 dereferenceable(24) %10, ptr %.sroa.0.0.copyload.i.i26.i.i.i.i.i.i.i.i, ptr %.0.val.i.i38.i.i.i.i.i.i.i.i), !noalias !840
  br i1 %i.oz, label %.lr.ph.i.i34.i.i.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i30.i.i.i.i.i.i.i.i", !llvm.loop !786

"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i30.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i34.i.i.i.i.i.i.i.i, %bb.bi
  %.09.lcssa.i.i31.i.i.i.i.i.i.i.i = phi ptr [ %.022.i22.i.i.i.i.i.i.i.i, %bb.bi ], [ %.013.i.i35.i.i.i.i.i.i.i.i, %.lr.ph.i.i34.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %.sroa.0.0.copyload.i.i26.i.i.i.i.i.i.i.i, ptr %.09.lcssa.i.i31.i.i.i.i.i.i.i.i, align 8, !tbaa !428, !noalias !840
  %i.pa = getelementptr inbounds nuw i8, ptr %.09.lcssa.i.i31.i.i.i.i.i.i.i.i, i64 8
  store i32 %.sroa.5.0.copyload.i.i28.i.i.i.i.i.i.i.i, ptr %i.pa, align 8, !tbaa !429, !noalias !840
  call void @llvm.lifetime.end.p0(ptr nonnull %10), !noalias !839
  br label %bb.bj

bb.bj:                                            ; preds = %"_ZSt25__unguarded_linear_insertIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops14_Val_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_T0_.exit.i30.i.i.i.i.i.i.i.i", %_ZSt13move_backwardIPSt4pairIPKN4llvm3UseEjES6_ET0_T_S8_S7_.exit.i42.i.i.i.i.i.i.i.i
  %.0.i32.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.022.i22.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i33.i.i.i.i.i.i.i.i = icmp eq ptr %.0.i32.i.i.i.i.i.i.i.i, %i.kw
  br i1 %.not.i33.i.i.i.i.i.i.i.i, label %"_ZSt16__insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit48.i.i.i.i.i.i.i.i", label %bb.bg, !llvm.loop !787

"_ZSt16__insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit48.i.i.i.i.i.i.i.i": ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !839
  br label %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i"

"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i": ; preds = %"_ZSt16__insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit48.i.i.i.i.i.i.i.i", %"_ZSt26__unguarded_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i.i"
  %i.pb = load ptr, ptr %17, align 8, !tbaa !47, !noalias !839 ; 3 uses
  %i.pc = load i32, ptr %i.gj, align 8, !tbaa !136, !noalias !839 ; 2 uses
  %i.pd = zext i32 %i.pc to i64                   ; 4 uses
  %.idx.i30.i.i.i = shl nuw nsw i64 %i.pd, 4
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.idx.i30.i.i.i
  %switch = icmp ult i32 %i.pc, 2
  br i1 %switch, label %.loopexit.i31.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i"
  %.0.i.i.i.i.i.i.i228 = getelementptr inbounds nuw i8, ptr %i.pb, i64 16
  br label %bb.bk

.preheader.i.i.i.i.i.i.i:                         ; preds = %bb.bk
  %.0.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i231, i64 16 ; 2 uses
  %.not.i.i.i.i31.i.i.i = icmp eq ptr %.0.i.i.i.i.i.i.i, %i.pe
  br i1 %.not.i.i.i.i31.i.i.i, label %.loopexit.i31.i.i, label %bb.bk, !llvm.loop !790

bb.bk:                                            ; preds = %.lr.ph, %.preheader.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i231 = phi ptr [ %.0.i.i.i.i.i.i.i228, %.lr.ph ], [ %.0.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %.015.i.i.i.i.i.i.i230 = phi ptr [ %i.pb, %.lr.ph ], [ %.0.i.i.i.i.i.i.i231, %.preheader.i.i.i.i.i.i.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i230, i64 24
  %i.pg = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i.i.i230, i64 8
  %i.ph = load i32, ptr %i.pf, align 4, !tbaa !102, !noalias !840
  %i.pi = load i32, ptr %i.pg, align 4, !tbaa !102, !noalias !840
  %i.pj = icmp ult i32 %i.ph, %i.pi
  br i1 %i.pj, label %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.i.i.i, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !790

_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.i.i.i: ; preds = %bb.bk
  %i.pk = shl nuw nsw i64 %i.pd, 2
  %i.pl = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pk) #30, !noalias !840 ; 14 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.pd ; 3 uses
  store i32 0, ptr %i.pl, align 4, !tbaa !102, !noalias !840
  %i.pn = getelementptr i8, ptr %i.pl, i64 4      ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.a = add nsw i64 %i.pd, -1 ; 2 uses
  %.not1559.i.i.i.a = icmp eq i64 %.idx.i.i.i.i.i.i.i.i.i.i.a, 0
  br i1 %.not1559.i.i.i.a, label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.idx.i.i.i.i.i.i.i.i.i.i.a, 2 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.pn, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !102, !noalias !840
  %25 = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %25, %_ZSt6fill_nIPjmjET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.pn, %_ZN4llvm9is_sortedIRNS_11SmallVectorISt4pairIPKNS_3UseEjELj64EEENS_11less_secondEEEbOT_T0_.exit.i.i.i ] ; 3 uses
  %26 = load i32, ptr %i.gj, align 8, !tbaa !136, !noalias !839 ; 3 uses
  %27 = zext i32 %26 to i64                       ; 7 uses
  %.not1559.i.i.i = icmp eq i32 %26, 0
  br i1 %.not1559.i.i.i, label %.loopexit.i31.i.i, label %.lr.ph61.i.i.i

.lr.ph61.i.i.i:                                   ; preds = %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i
  %i.po = load ptr, ptr %17, align 8, !tbaa !47, !noalias !839 ; 15 uses
  %min.iters.check = icmp ult i32 %26, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph61.i.i.i
  %i.pp = shl nuw nsw i64 %27, 2
  %scevgep = getelementptr i8, ptr %i.pl, i64 %i.pp
  %scevgep238 = getelementptr nuw i8, ptr %i.po, i64 8
  %scevgep239 = getelementptr i8, ptr %i.po, i64 -4
  %i.pq = shl nuw nsw i64 %27, 4
  %scevgep240 = getelementptr i8, ptr %scevgep239, i64 %i.pq
  %bound0 = icmp ult ptr %i.pl, %scevgep240
  %bound1 = icmp ult ptr %scevgep238, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.pr = and i64 %27, 7                          ; 2 uses
  %i.ps = icmp eq i64 %i.pr, 0
  %i.pt = select i1 %i.ps, i64 8, i64 %i.pr
  %n.vec = sub nsw i64 %27, %i.pt                 ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 10 uses
  %i.pu = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.pv = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.pw = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.px = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.py = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.pz = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.qa = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %index
  %i.qc = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pv, i64 24
  %i.qe = getelementptr inbounds nuw i8, ptr %i.pw, i64 40
  %i.qf = getelementptr inbounds nuw i8, ptr %i.px, i64 56
  %i.qg = getelementptr inbounds nuw i8, ptr %i.py, i64 72
  %i.qh = getelementptr inbounds nuw i8, ptr %i.pz, i64 88
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qa, i64 104
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qb, i64 120
  %i.qk = load i32, ptr %i.qc, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.ql = load i32, ptr %i.qd, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qm = load i32, ptr %i.qe, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qn = load i32, ptr %i.qf, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qo = insertelement <4 x i32> poison, i32 %i.qk, i64 0
  %i.qp = insertelement <4 x i32> %i.qo, i32 %i.ql, i64 1
  %i.qq = insertelement <4 x i32> %i.qp, i32 %i.qm, i64 2
  %i.qr = insertelement <4 x i32> %i.qq, i32 %i.qn, i64 3
  %i.qs = load i32, ptr %i.qg, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qt = load i32, ptr %i.qh, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qu = load i32, ptr %i.qi, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qv = load i32, ptr %i.qj, align 8, !tbaa !429, !alias.scope !845, !noalias !840
  %i.qw = insertelement <4 x i32> poison, i32 %i.qs, i64 0
  %i.qx = insertelement <4 x i32> %i.qw, i32 %i.qt, i64 1
  %i.qy = insertelement <4 x i32> %i.qx, i32 %i.qu, i64 2
  %i.qz = insertelement <4 x i32> %i.qy, i32 %i.qv, i64 3
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %index ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 16
  store <4 x i32> %i.qr, ptr %i.ra, align 4, !tbaa !102, !alias.scope !846, !noalias !847
  store <4 x i32> %i.qz, ptr %i.rb, align 4, !tbaa !102, !alias.scope !846, !noalias !847
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.rc = icmp eq i64 %index.next, %n.vec
  br i1 %i.rc, label %scalar.ph.preheader, label %vector.body, !llvm.loop !794

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph61.i.i.i
  %.060.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph61.i.i.i ], [ %n.vec, %vector.body ] ; 4 uses
  %i.rd = sub nsw i64 %27, %.060.i.i.i.ph
  %xtraiter278 = and i64 %i.rd, 3                 ; 2 uses
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.060.i.i.i.prol = phi i64 [ %i.ri, %scalar.ph.prol ], [ %.060.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter280 = phi i64 [ %prol.iter280.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.re = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %.060.i.i.i.prol
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load i32, ptr %i.rf, align 8, !tbaa !429, !noalias !840
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %.060.i.i.i.prol
  store i32 %i.rg, ptr %i.rh, align 4, !tbaa !102, !noalias !840
  %i.ri = add nuw nsw i64 %.060.i.i.i.prol, 1     ; 2 uses
  %prol.iter280.next = add i64 %prol.iter280, 1   ; 2 uses
  %prol.iter280.cmp.not = icmp eq i64 %prol.iter280.next, %xtraiter278
  br i1 %prol.iter280.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !795

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.060.i.i.i.unr = phi i64 [ %.060.i.i.i.ph, %scalar.ph.preheader ], [ %i.ri, %scalar.ph.prol ]
  %i.rj = sub nsw i64 %.060.i.i.i.ph, %27
  %i.rk = icmp ugt i64 %i.rj, -4
  br i1 %i.rk, label %.loopexit.i31.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.060.i.i.i = phi i64 [ %i.se, %scalar.ph ], [ %.060.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %.060.i.i.i
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load i32, ptr %i.rm, align 8, !tbaa !429, !noalias !840
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %.060.i.i.i
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !102, !noalias !840
  %i.rp = add nuw nsw i64 %.060.i.i.i, 1          ; 2 uses
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.rp
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !429, !noalias !840
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.rp
  store i32 %i.rs, ptr %i.rt, align 4, !tbaa !102, !noalias !840
  %i.ru = add nuw nsw i64 %.060.i.i.i, 2          ; 2 uses
  %i.rv = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load i32, ptr %i.rw, align 8, !tbaa !429, !noalias !840
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.ru
  store i32 %i.rx, ptr %i.ry, align 4, !tbaa !102, !noalias !840
  %i.rz = add nuw nsw i64 %.060.i.i.i, 3          ; 2 uses
  %i.sa = getelementptr inbounds nuw [16 x i8], ptr %i.po, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 8
  %i.sc = load i32, ptr %i.sb, align 8, !tbaa !429, !noalias !840
  %i.sd = getelementptr inbounds nuw [4 x i8], ptr %i.pl, i64 %i.rz
  store i32 %i.sc, ptr %i.sd, align 4, !tbaa !102, !noalias !840
  %i.se = add nuw nsw i64 %.060.i.i.i, 4          ; 2 uses
  %.not15.i.i.i.3 = icmp eq i64 %i.se, %27
  br i1 %.not15.i.i.i.3, label %.loopexit.i31.i.i, label %scalar.ph, !llvm.loop !796

.loopexit.i31.i.i:                                ; preds = %.preheader.i.i.i.i.i.i.i, %scalar.ph.prol.loopexit, %scalar.ph, %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i", %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i
  %.sroa.0.1.i.i = phi ptr [ null, %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i" ], [ %i.pl, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i ], [ %i.pl, %scalar.ph.prol.loopexit ], [ %i.pl, %scalar.ph ], [ null, %.preheader.i.i.i.i.i.i.i ]
  %.sroa.9.0.i.i = phi ptr [ null, %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i" ], [ %.0.i.i.i.i.i.i.i.i, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %scalar.ph.prol.loopexit ], [ %.0.i.i.i.i.i.i.i.i, %scalar.ph ], [ null, %.preheader.i.i.i.i.i.i.i ]
  %.sroa.12.1.i.i = phi ptr [ null, %"_ZSt22__final_insertion_sortIPSt4pairIPKN4llvm3UseEjEN9__gnu_cxx5__ops15_Iter_comp_iterIZL24predictValueUseListOrderPKNS1_5ValueEjRKNS1_9MapVectorISC_jNS1_8DenseMapISC_jNS1_12DenseMapInfoISC_vEENS1_6detail12DenseMapPairISC_jEEEENS1_11SmallVectorIS0_ISC_jELj0EEELj0EEEE3$_0EEEvT_ST_T0_.exit.i.i.i.i.i.i.i" ], [ %i.pm, %_ZNSt6vectorIjSaIjEEC2EmRKS0_.exit.i.i.i ], [ %i.pm, %scalar.ph.prol.loopexit ], [ %i.pm, %scalar.ph ], [ null, %.preheader.i.i.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #26, !noalias !839
  br label %._crit_edge.thread.i.i.i

._crit_edge.thread.i.i.i:                         ; preds = %.loopexit.i31.i.i, %._crit_edge.i28.i.i, %bb.aq
  %.sroa.0.2.i.i = phi ptr [ %.sroa.0.1.i.i, %.loopexit.i31.i.i ], [ null, %._crit_edge.i28.i.i ], [ null, %bb.aq ] ; 5 uses
  %.sroa.9.1.i.i = phi ptr [ %.sroa.9.0.i.i, %.loopexit.i31.i.i ], [ null, %._crit_edge.i28.i.i ], [ null, %bb.aq ] ; 2 uses
  %.sroa.12.2.i.i = phi ptr [ %.sroa.12.1.i.i, %.loopexit.i31.i.i ], [ null, %._crit_edge.i28.i.i ], [ null, %bb.aq ] ; 2 uses
  %i.sf = load ptr, ptr %17, align 8, !tbaa !47, !noalias !839 ; 2 uses
  %i.sg = icmp eq ptr %i.sf, %i.gi
  br i1 %i.sg, label %_ZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEE.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.thread.i.i.i
  call void @free(ptr noundef %i.sf) #26, !noalias !840
  br label %_ZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEE.exit.i.i

_ZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEE.exit.i.i: ; preds = %bb.bl, %._crit_edge.thread.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #26, !noalias !839
  call void @llvm.lifetime.end.p0(ptr nonnull %16), !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !834
  %i.sh = icmp eq ptr %.sroa.0.2.i.i, %.sroa.9.1.i.i
  br i1 %i.sh, label %bb.bw, label %bb.bm

bb.bm:                                            ; preds = %_ZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEE.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #26, !noalias !834
  store ptr null, ptr %i.h, align 8, !tbaa !255, !noalias !834
  %i.si = load ptr, ptr %i.g, align 8, !tbaa !105, !noalias !834 ; 3 uses
  %i.sj = load i8, ptr %i.si, align 8, !tbaa !190 ; 2 uses
  %i.sk = icmp ult i8 %i.sj, 30
  br i1 %i.sk, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.sl = call noundef ptr @_ZNK4llvm11Instruction11getFunctionEv(ptr noundef nonnull align 8 dereferenceable(72) %i.si) #26
  store ptr %i.sl, ptr %i.h, align 8, !tbaa !255, !noalias !834
  %.pre.i.i = load ptr, ptr %i.g, align 8, !tbaa !105, !noalias !834 ; 2 uses
  %.pre65.i.i = load i8, ptr %.pre.i.i, align 8, !tbaa !190
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.sm = phi i8 [ %.pre65.i.i, %bb.bn ], [ %i.sj, %bb.bm ]
  %i.sn = phi ptr [ %.pre.i.i, %bb.bn ], [ %i.si, %bb.bm ]
  switch i8 %i.sm, label %bb.bq [
    i8 23, label %.sink.split.i.i
    i8 24, label %bb.bp
  ]

bb.bp:                                            ; preds = %bb.bo
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.bp, %bb.bo
  %.sink.i.i = phi i64 [ 72, %bb.bp ], [ 24, %bb.bo ]
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 %.sink.i.i
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !255
  store ptr %i.sp, ptr %i.h, align 8, !tbaa !255, !noalias !834
  br label %bb.bq

bb.bq:                                            ; preds = %.sink.split.i.i, %bb.bo
  %i.sq = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS1_IS8_jNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEENS_11SmallVectorISt4pairIS8_SB_ELj0EEELj0EEENSC_IS4_vEENSF_IS4_SM_EEEES4_SM_SN_SO_E24lookupOrInsertIntoBucketIRKS4_JEEESJ_IPSO_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %.fca.0.extract.i.i.i = extractvalue { ptr, i8 } %i.sq, 0 ; 4 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 8
  %i.ss = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24lookupOrInsertIntoBucketIRKS4_JEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(40) %i.sr, ptr noundef nonnull align 8 dereferenceable(8) %i.g), !noalias !850 ; 2 uses
  %.fca.0.extract.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.ss, 0 ; 2 uses
  %.fca.1.extract.i.i.i.i.i.i = extractvalue { ptr, i8 } %i.ss, 1
  %i.st = trunc nuw i8 %.fca.1.extract.i.i.i.i.i.i to i1
  %i.su = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 32 ; 4 uses
  br i1 %i.st, label %bb.br, label %bb.bu

bb.br:                                            ; preds = %bb.bq
  %i.sv = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 40 ; 4 uses
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !136 ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i, i64 8
  store i32 %i.sw, ptr %i.sx, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26, !noalias !834
  store ptr %i.g, ptr %8, align 8, !tbaa !432, !alias.scope !851, !noalias !834
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26, !noalias !834
  %i.sy = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i, i64 44
  %i.sz = load i32, ptr %i.sy, align 4, !tbaa !137
  %.not.i.i.i36.i.i = icmp ult i32 %i.sw, %i.sz
  br i1 %.not.i.i.i36.i.i, label %bb.bt, label %bb.bs, !prof !106

bb.bs:                                            ; preds = %bb.br
  %i.ta = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPKNS_5ValueESt6vectorIjSaIjEEELb0EE18growAndEmplaceBackIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESE_IJEEEEERS8_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.su, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %9) ; 0 uses
  %.pre.i.i37.i.i = load i32, ptr %i.sv, align 8, !tbaa !136
  br label %_ZN4llvm15SmallVectorImplISt4pairIPKNS_5ValueESt6vectorIjSaIjEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESE_IJEEEEERS8_DpOT_.exit.i.i.i.i

bb.bt:                                            ; preds = %bb.br
  %i.tb = zext i32 %i.sw to i64
  %i.tc = load ptr, ptr %i.su, align 8, !tbaa !47
  %i.td = getelementptr inbounds nuw [32 x i8], ptr %i.tc, i64 %i.tb ; 2 uses
  %i.te = load ptr, ptr %i.g, align 8, !tbaa !105, !noalias !834
  store ptr %i.te, ptr %i.td, align 8, !tbaa !438
  %i.tf = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.tf, i8 0, i64 24, i1 false)
  %i.tg = load i32, ptr %i.sv, align 8, !tbaa !136
  %i.th = add i32 %i.tg, 1                        ; 2 uses
  store i32 %i.th, ptr %i.sv, align 8, !tbaa !136
  br label %_ZN4llvm15SmallVectorImplISt4pairIPKNS_5ValueESt6vectorIjSaIjEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESE_IJEEEEERS8_DpOT_.exit.i.i.i.i

_ZN4llvm15SmallVectorImplISt4pairIPKNS_5ValueESt6vectorIjSaIjEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESE_IJEEEEERS8_DpOT_.exit.i.i.i.i: ; preds = %bb.bt, %bb.bs
  %i.ti = phi i32 [ %.pre.i.i37.i.i, %bb.bs ], [ %i.th, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26, !noalias !834
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26, !noalias !834
  %i.tj = load ptr, ptr %i.su, align 8, !tbaa !47
  %i.tk = zext i32 %i.ti to i64
  %i.tl = getelementptr inbounds nuw [32 x i8], ptr %i.tj, i64 %i.tk
  %i.tm = getelementptr inbounds i8, ptr %i.tl, i64 -32
  br label %_ZN4llvm9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S6_ELj0EEELj0EEixERKS3_.exit.i.i

bb.bu:                                            ; preds = %bb.bq
  %i.tn = load ptr, ptr %i.su, align 8, !tbaa !47
  %i.to = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i.i.i.i.i, i64 8
  %i.tp = load i32, ptr %i.to, align 8, !tbaa !109
  %i.tq = zext i32 %i.tp to i64
  %i.tr = getelementptr inbounds nuw [32 x i8], ptr %i.tn, i64 %i.tq
  br label %_ZN4llvm9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S6_ELj0EEELj0EEixERKS3_.exit.i.i

_ZN4llvm9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S6_ELj0EEELj0EEixERKS3_.exit.i.i: ; preds = %bb.bu, %_ZN4llvm15SmallVectorImplISt4pairIPKNS_5ValueESt6vectorIjSaIjEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESE_IJEEEEERS8_DpOT_.exit.i.i.i.i
  %.sroa.09.0.i.i.i.i = phi ptr [ %i.tm, %_ZN4llvm15SmallVectorImplISt4pairIPKNS_5ValueESt6vectorIjSaIjEEEE12emplace_backIJRKSt21piecewise_construct_tSt5tupleIJRKS4_EESE_IJEEEEERS8_DpOT_.exit.i.i.i.i ], [ %i.tr, %bb.bu ] ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 8 ; 2 uses
  %i.tt = load ptr, ptr %i.ts, align 8, !tbaa !439 ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 16
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i.i, i64 24 ; 2 uses
  %i.tw = load ptr, ptr %i.tv, align 8, !tbaa !440
  store ptr %.sroa.0.2.i.i, ptr %i.ts, align 8, !tbaa !439
  store ptr %.sroa.9.1.i.i, ptr %i.tu, align 8, !tbaa !441
  store ptr %.sroa.12.2.i.i, ptr %i.tv, align 8, !tbaa !440
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.tt, null
  br i1 %.not.i.i.i.i.i.i.i, label %.thread.i.i, label %bb.bv

bb.bv:                                            ; preds = %_ZN4llvm9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S6_ELj0EEELj0EEixERKS3_.exit.i.i
  %i.tx = ptrtoint ptr %i.tw to i64
  %i.ty = ptrtoint ptr %i.tt to i64
  %i.tz = sub i64 %i.tx, %i.ty
  call void @_ZdlPvm(ptr noundef nonnull %i.tt, i64 noundef %i.tz) #27
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.bv, %_ZN4llvm9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS_8DenseMapIS3_jNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEENS_11SmallVectorISt4pairIS3_S6_ELj0EEELj0EEixERKS3_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #26, !noalias !834
  br label %.critedge.i.i

bb.bw:                                            ; preds = %_ZL24predictValueUseListOrderPKN4llvm5ValueEjRKNS_9MapVectorIS2_jNS_8DenseMapIS2_jNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEEENS_11SmallVectorISt4pairIS2_jELj0EEELj0EEE.exit.i.i
  %.not.i.i.i38.i.i = icmp eq ptr %.sroa.0.2.i.i, null
  br i1 %.not.i.i.i38.i.i, label %.critedge.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ua = ptrtoint ptr %.sroa.12.2.i.i to i64
  %i.ub = ptrtoint ptr %.sroa.0.2.i.i to i64
  %i.uc = sub i64 %i.ua, %i.ub
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2.i.i, i64 noundef %i.uc) #27
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.bx, %bb.bw, %.thread.i.i, %.lr.ph.i23.i.i, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #26, !noalias !834
  %i.ud = getelementptr inbounds nuw i8, ptr %.01660.i.i, i64 16 ; 2 uses
  %.not.i73.i = icmp eq ptr %i.ud, %i.gh
  br i1 %.not.i73.i, label %._crit_edge.loopexit.i.i, label %bb.ap

._crit_edge.loopexit.i.i:                         ; preds = %.critedge.i.i
  %.pre66.i.i = load ptr, ptr %i.ae, align 8, !tbaa !47, !noalias !834
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZL11orderModulePKN4llvm6ModuleE.exit.i.i
  %i.ue = phi ptr [ %.pre66.i.i, %._crit_edge.loopexit.i.i ], [ %i.ge, %_ZL11orderModulePKN4llvm6ModuleE.exit.i.i ] ; 2 uses
  %i.uf = icmp eq ptr %i.ue, %i.af
  br i1 %i.uf, label %_ZN4llvm11SmallVectorISt4pairIPKNS_5ValueEjELj0EED2Ev.exit.i.i.i, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i.i
  call void @free(ptr noundef %i.ue) #26
  br label %_ZN4llvm11SmallVectorISt4pairIPKNS_5ValueEjELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorISt4pairIPKNS_5ValueEjELj0EED2Ev.exit.i.i.i: ; preds = %bb.by, %._crit_edge.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %18, i64 20
  %i.uh = load i32, ptr %i.ug, align 4, !tbaa !84, !noalias !834 ; 2 uses
  %i.ui = icmp eq i32 %i.uh, 0
  br i1 %i.ui, label %_ZL19predictUseListOrderPKN4llvm6ModuleE.exit.i, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm11SmallVectorISt4pairIPKNS_5ValueEjELj0EED2Ev.exit.i.i.i
  %i.uj = load ptr, ptr %18, align 8, !tbaa !101, !noalias !834
  %i.uk = zext i32 %i.uh to i64                   ; 2 uses
  %i.ul = shl nuw nsw i64 %i.uk, 4
  %i.um = add nuw nsw i64 %i.uk, 31
  %i.un = lshr i64 %i.um, 3
  %i.uo = and i64 %i.un, 1073741820
  %i.up = add nuw nsw i64 %i.uo, %i.ul
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.uj, i64 noundef %i.up, i64 noundef 8) #26
  br label %_ZL19predictUseListOrderPKN4llvm6ModuleE.exit.i

_ZL19predictUseListOrderPKN4llvm6ModuleE.exit.i:  ; preds = %bb.bz, %_ZN4llvm11SmallVectorISt4pairIPKNS_5ValueEjELj0EED2Ev.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #26, !noalias !834
  %i.uq = getelementptr inbounds nuw i8, ptr %24, i64 288 ; 3 uses
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_8FunctionENS_9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS1_IS8_jNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEENS_11SmallVectorISt4pairIS8_SB_ELj0EEELj0EEENSC_IS4_vEENSF_IS4_SM_EEEES4_SM_SN_SO_E10destroyAllEv(ptr noundef nonnull align 8 dereferenceable(24) %i.uq)
  %i.ur = getelementptr inbounds nuw i8, ptr %24, i64 308
  %i.us = load i32, ptr %i.ur, align 4, !tbaa !399 ; 2 uses
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %_ZN4llvm8DenseMapIPKNS_8FunctionENS_9MapVectorIPKNS_5ValueESt6vectorIjSaIjEENS0_IS7_jNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEENS_11SmallVectorISt4pairIS7_SA_ELj0EEELj0EEENSB_IS3_vEENSE_IS3_SL_EEEaSEOSO_.exit.i, label %bb.ca

bb.ca:                                            ; preds = %_ZL19predictUseListOrderPKN4llvm6ModuleE.exit.i
  %i.uu = load ptr, ptr %i.uq, align 8, !tbaa !400
  %i.uv = zext i32 %i.us to i64                   ; 2 uses
  %i.uw = mul nuw nsw i64 %i.uv, 48
  %i.ux = add nuw nsw i64 %i.uv, 31
end_hunk_0
