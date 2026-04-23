inline.NumInlined: 59
inline.NumDeleted: 18
begin_hunk_0_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %.2 = phi i64 [ %i.m, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i ], [ %5, %bb.a ] ; 3 uses
  %storemerge.i = phi i64 [ %i.n, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.o = shl i64 %.2, 6
  %9 = icmp ugt i64 %i.o, 79                      ; 2 uses
  %i.p = select i1 %9, i64 3, i64 1               ; 4 uses
  %i.q = shl nuw nsw i64 1, %i.p
  %10 = freeze i64 %i.q                           ; 5 uses
  %i.r = shl i64 %3, %i.p
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.r ; 11 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %3 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef nonnull %8, ptr noundef nonnull %8, ptr noundef readonly %7, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %3 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr readonly align 8 %1, i64 %i.aj, i1 false)
  br i1 %9, label %.lr.ph.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit

.lr.ph.i:                                         ; preds = %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit, %.lr.ph.i
  %.032.i = phi ptr [ %i.al, %.lr.ph.i ], [ %i.ak, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.032.i, i64 %3 ; 2 uses
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %i.al, ptr noundef %.032.i, ptr noundef nonnull %i.ak, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.t)
  %i.am = add nuw nsw i64 %.03031.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.am, %10
  br i1 %exitcond.not.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit, label %.lr.ph.i, !llvm.loop !52

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit: ; preds = %.lr.ph.i, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit
end_hunk_2
begin_hunk_3_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %unroll_iter101 = and i64 %3, -2
  %lcmp.mod99.not = icmp eq i64 %xtraiter98, 0
  %lcmp.mod100 = trunc i64 %3 to i1
  %11 = add i64 %10, -1
  %xtraiter103 = and i64 %10, 3                   ; 3 uses
  %12 = icmp ult i64 %11, 3
  %unroll_iter106 = and i64 %10, -4
  %lcmp.mod104.not = icmp eq i64 %xtraiter103, 0
  %lcmp.mod105 = icmp ne i64 %xtraiter103, 0
  br label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split
end_hunk_3
begin_hunk_4_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  br i1 %.not.i.i60, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader, label %.split.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader: ; preds = %bb.g
  br i1 %12, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i

_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
  %niter107 = phi i64 [ %niter107.next.3, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i ], [ 0, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.preheader ]
end_hunk_4
begin_hunk_5_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i: ; preds = %.lr.ph.i.us.i.i.epil.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit91.unr-lcssa, %.lr.ph.i.i.i.epil.preheader, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i.loopexit.unr-lcssa, %.split.i.i
  %i.dy = add nuw nsw i64 %.01011.i.i, 1          ; 2 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %3
  %exitcond.not.i.i = icmp eq i64 %i.dy, %10
  br i1 %exitcond.not.i.i, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %.split.i.i, !llvm.loop !54

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
end_hunk_5
begin_hunk_6_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %i.eb = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %i.ec = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter103
  br i1 %epil.iter.cmp.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil, !llvm.loop !55

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil
end_hunk_6
