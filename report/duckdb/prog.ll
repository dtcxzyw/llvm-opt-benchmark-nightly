begin_hunk_0

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 4 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !184 ; 19 uses
  %i.ax = load i32, ptr %6, align 8, !tbaa !170   ; 4 uses
  %i.ay = sext i32 %i.ax to i64                   ; 2 uses
  %.idx = shl nsw i64 %i.ay, 3                    ; 2 uses
end_hunk_0
begin_hunk_1
bb.j:                                             ; preds = %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i.a, %bb.i
  %.021.i.idx.i = phi i64 [ 8, %bb.i ], [ %.021.i.add.i, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i.a ] ; 4 uses
  %.pn20.i.i = phi ptr [ %i.aw, %bb.i ], [ %.021.i.ptr.i, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i.a ] ; 3 uses
  %.021.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.021.i.idx.i ; 6 uses
  %i.bf = load i32, ptr %.021.i.ptr.i, align 4, !tbaa !185
  %i.bg = load i32, ptr %i.aw, align 4, !tbaa !185
  %i.bh = icmp slt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.sroa.02.0.copyload.i.i = load <2 x i32>, ptr %.021.i.ptr.i, align 4
  %i.bi = icmp samesign ugt i64 %.021.i.idx.i, 8
  br i1 %i.bi, label %bb.l, label %bb.m, !prof !187

bb.l:                                             ; preds = %bb.k
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %i.aw, i64 %.021.i.idx.i, i1 false)
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i

bb.m:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw i8, ptr %.pn20.i.i, i64 8
  %i.bk = load i64, ptr %i.aw, align 4
  store i64 %i.bk, ptr %i.bj, align 4
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i

_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.m, %bb.l
  store <2 x i32> %.sroa.02.0.copyload.i.i, ptr %i.aw, align 4
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i.a

bb.n:                                             ; preds = %bb.j
  %8 = load i64, ptr %.021.i.ptr.i, align 4       ; 2 uses
  %.sroa.0128.0.extract.trunc = trunc i64 %8 to i32 ; 2 uses
  %i.bl = load i32, ptr %.pn20.i.i, align 4, !tbaa !185
  %i.bm = icmp sgt i32 %i.bl, %.sroa.0128.0.extract.trunc
  br i1 %i.bm, label %.lr.ph.i.i.i109, label %_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i.i

.lr.ph.i.i.i109:                                  ; preds = %bb.n, %.lr.ph.i.i.i109
  %.012.i.i.i = phi ptr [ %.0.i.i.i, %.lr.ph.i.i.i109 ], [ %.pn20.i.i, %bb.n ] ; 4 uses
end_hunk_1
begin_hunk_2
  %.0.i.i.i = getelementptr inbounds i8, ptr %.012.i.i.i, i64 -8 ; 2 uses
  %i.bo = load i32, ptr %.0.i.i.i, align 4, !tbaa !185
  %i.bp = icmp sgt i32 %i.bo, %.sroa.0128.0.extract.trunc
  br i1 %i.bp, label %.lr.ph.i.i.i109, label %_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i.i, !llvm.loop !188

_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i.i: ; preds = %.lr.ph.i.i.i109, %bb.n
  %.09.lcssa.i.i.i = phi ptr [ %.021.i.ptr.i, %bb.n ], [ %.012.i.i.i, %.lr.ph.i.i.i109 ]
  store i64 %8, ptr %.09.lcssa.i.i.i, align 4
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i.a

_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i.a: ; preds = %_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i.i, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i.i
  %.021.i.add.i = add nuw nsw i64 %.021.i.idx.i, 8 ; 2 uses
  %.not.i.i107 = icmp eq i64 %.021.i.add.i, 128
  br i1 %.not.i.i107, label %_ZSt16__insertion_sortIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_T0_.exit.i, label %bb.j, !llvm.loop !189
end_hunk_2
begin_hunk_3
  br label %.lr.ph.i19.i

.lr.ph.i19.i:                                     ; preds = %.lr.ph.i19.i.preheader, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i30.i
  %.021.i20.i = phi ptr [ %.0.i24.i, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i30.i ], [ %.018.i18.i, %.lr.ph.i19.i.preheader ] ; 8 uses
  %.pn20.i21.i = phi ptr [ %.021.i20.i, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i30.i ], [ %i.aw, %.lr.ph.i19.i.preheader ] ; 4 uses
  %i.cp = load i32, ptr %.021.i20.i, align 4, !tbaa !185
  %i.cq = load i32, ptr %i.aw, align 4, !tbaa !185
  %i.cr = icmp slt i32 %i.cp, %i.cq
  br i1 %i.cr, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.i19.i
  %.sroa.02.0.copyload.i30.i = load <2 x i32>, ptr %.021.i20.i, align 4
  %i.cs = ptrtoint ptr %.021.i20.i to i64
  %i.ct = sub i64 %i.cs, %i.ba                    ; 3 uses
  %i.cu = ashr exact i64 %i.ct, 3                 ; 2 uses
end_hunk_3
begin_hunk_4
  %i.cx = sub nsw i64 0, %i.cu
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.cw, i64 %i.cx
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cy, ptr noundef nonnull align 4 dereferenceable(1) %i.aw, i64 %i.ct, i1 false)
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i31.i

bb.r:                                             ; preds = %bb.p
  %i.cz = icmp eq i64 %i.ct, 8
  br i1 %i.cz, label %bb.s, label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i31.i

bb.s:                                             ; preds = %bb.r
  %i.da = getelementptr inbounds nuw i8, ptr %.pn20.i21.i, i64 8
  %i.db = load i64, ptr %i.aw, align 4
  store i64 %i.db, ptr %i.da, align 4
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i31.i

_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i31.i: ; preds = %bb.s, %bb.r, %bb.q
  store <2 x i32> %.sroa.02.0.copyload.i30.i, ptr %i.aw, align 4
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i30.i

bb.t:                                             ; preds = %.lr.ph.i19.i
  %9 = load i64, ptr %.021.i20.i, align 4         ; 2 uses
  %.sroa.0135.0.extract.trunc = trunc i64 %9 to i32 ; 2 uses
  %i.dc = load i32, ptr %.pn20.i21.i, align 4, !tbaa !185
  %i.dd = icmp sgt i32 %i.dc, %.sroa.0135.0.extract.trunc
  br i1 %i.dd, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i

.lr.ph.i.i26.i:                                   ; preds = %bb.t, %.lr.ph.i.i26.i
  %.012.i.i27.i = phi ptr [ %.0.i.i29.i, %.lr.ph.i.i26.i ], [ %.pn20.i21.i, %bb.t ] ; 4 uses
end_hunk_4
begin_hunk_5
  %.0.i.i29.i = getelementptr inbounds i8, ptr %.012.i.i27.i, i64 -8 ; 2 uses
  %i.df = load i32, ptr %.0.i.i29.i, align 4, !tbaa !185
  %i.dg = icmp sgt i32 %i.df, %.sroa.0135.0.extract.trunc
  br i1 %i.dg, label %.lr.ph.i.i26.i, label %_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i, !llvm.loop !188

_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i: ; preds = %.lr.ph.i.i26.i, %bb.t
  %.09.lcssa.i.i23.i = phi ptr [ %.021.i20.i, %bb.t ], [ %.012.i.i27.i, %.lr.ph.i.i26.i ]
  store i64 %9, ptr %.09.lcssa.i.i23.i, align 4
  br label %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i30.i

_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i30.i: ; preds = %_ZSt25__unguarded_linear_insertIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops14_Val_comp_iterIPFbRKS3_S9_EEEEvT_T0_.exit.i22.i, %_ZSt13move_backwardIPN10duckdb_re211SparseArrayIiE10IndexValueES4_ET0_T_S6_S5_.exit.i31.i
  %.0.i24.i = getelementptr inbounds nuw i8, ptr %.021.i20.i, i64 8 ; 2 uses
  %.not.i25.i = icmp eq ptr %.0.i24.i, %i.az
  br i1 %.not.i25.i, label %_ZSt4sortIPN10duckdb_re211SparseArrayIiE10IndexValueEPFbRKS3_S6_EEvT_S9_T0_.exit, label %.lr.ph.i19.i, !llvm.loop !189
end_hunk_5
begin_hunk_6
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph31

end_hunk_6
begin_hunk_7
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i = load <2 x i32>, ptr %0, align 4
  %i.ay = load i64, ptr %i.au, align 4
  store i64 %i.ay, ptr %0, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i.i.i, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.az = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %i.av)
  %.sroa.0.0.copyload.i.i22.i.i = load <2 x i32>, ptr %0, align 4 ; 2 uses
  br i1 %i.az, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ba = load i64, ptr %i.av, align 4
  store i64 %i.ba, ptr %0, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i22.i.i, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  %i.bb = load i64, ptr %i.e, align 4
  store i64 %i.bb, ptr %0, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i22.i.i, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph31
end_hunk_7
begin_hunk_8
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i24.i.i = load <2 x i32>, ptr %0, align 4
  %6 = load i64, ptr %i.e, align 4
  store i64 %6, ptr %0, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i24.i.i, ptr %i.e, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bd = tail call noundef zeroext i1 %3(ptr noundef nonnull align 4 dereferenceable(8) %i.au, ptr noundef nonnull align 4 dereferenceable(8) %i.av)
  %.sroa.0.0.copyload.i.i25.i.i = load <2 x i32>, ptr %0, align 4 ; 2 uses
  br i1 %i.bd, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.be = load i64, ptr %i.av, align 4
  store i64 %i.be, ptr %0, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i25.i.i, ptr %i.av, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  %i.bf = load i64, ptr %i.au, align 4
  store i64 %i.bf, ptr %0, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i25.i.i, ptr %i.au, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
end_hunk_8
begin_hunk_9
  br i1 %i.bj, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i12.i = load <2 x i32>, ptr %.1.i.i, align 4
  %i.bk = load i64, ptr %.114.i.i, align 4
  store i64 %i.bk, ptr %.1.i.i, align 4
  store <2 x i32> %.sroa.0.0.copyload.i.i.i12.i, ptr %.114.i.i, align 4
  br label %_ZSt22__move_median_to_firstIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEEvT_SD_SD_SD_T0_.exit.i, !llvm.loop !258

_ZSt27__unguarded_partition_pivotIPN10duckdb_re211SparseArrayIiE10IndexValueEN9__gnu_cxx5__ops15_Iter_comp_iterIPFbRKS3_S9_EEEET_SD_SD_T0_.exit: ; preds = %bb.q
end_hunk_9
