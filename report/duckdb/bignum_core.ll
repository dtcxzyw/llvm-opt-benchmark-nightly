begin_hunk_0_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  %.0 = phi i32 [ %i.cc, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit ], [ %i.t, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split.preheader ]
  tail call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %i.x, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aa, i8 0, i64 %i.ac, i1 false)
  %i.aw = tail call noundef i32 %4(ptr noundef %5, ptr noundef %i.ad, i64 noundef %i.s), !inline_history !46 ; 2 uses
  %.not.i25 = icmp eq i32 %i.aw, 0
  br i1 %.not.i25, label %bb.d, label %_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_.exit.split

end_hunk_0
begin_hunk_1_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  store <2 x i64> %wide.load66, ptr %i.bf, align 8, !tbaa !9
  %index.next67 = add nuw i64 %index64, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.bg, label %middle.block68, label %vector.body63, !llvm.loop !47

middle.block68:                                   ; preds = %vector.body63
  br i1 %cmp.n69, label %.lr.ph48.preheader.i, label %.lr.ph.i.preheader72
end_hunk_1
begin_hunk_2_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !9
  %i.bk = add nuw i64 %.046.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %i.ak
  br i1 %exitcond.not.i, label %.lr.ph48.preheader.i, label %.lr.ph.i, !llvm.loop !48

.loopexit44.i:                                    ; preds = %.lr.ph48.preheader.i, %bb.f
  br i1 %or.cond54.not.i, label %.lr.ph52.i.preheader, label %_Z24mbedtls_mpi_core_shift_rPmmm.exit
end_hunk_2
begin_hunk_3_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  store <2 x i64> %reverse57, ptr %i.bn, align 8, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <2 x i64> %i.bp, i64 1
end_hunk_3
begin_hunk_4_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  store i64 %i.ca, ptr %i.bw, align 8, !tbaa !9
  %i.cb = add i64 %.251.i, -1                     ; 2 uses
  %.not42.i = icmp eq i64 %i.cb, 0
  br i1 %.not42.i, label %_Z24mbedtls_mpi_core_shift_rPmmm.exit, label %.lr.ph52.i, !llvm.loop !50

_Z24mbedtls_mpi_core_shift_rPmmm.exit:            ; preds = %.lr.ph52.i, %middle.block, %bb.e, %.loopexit44.i
  %i.cc = add nsw i32 %.0, -1                     ; 2 uses
end_hunk_4
begin_hunk_5_@_Z23mbedtls_mpi_core_randomPmmPKmmPFiPvPhmES2_:bb.a
  %i.el = and i64 %i.ek, %i.ej
  %i.em = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9
  %i.en = icmp eq i64 %i.el, %i.em
  br i1 %i.en, label %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split, label %_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_.exit.split, !llvm.loop !51

_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_.exit.split: ; preds = %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit, %_Z24mbedtls_mpi_core_shift_rPmmm.exit, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread
  %.022.split = phi i32 [ -4, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread ], [ -14, %_Z24mbedtls_mpi_core_shift_rPmmm.exit ], [ 0, %_Z28mbedtls_mpi_core_uint_le_mpimPKmm.exit ], [ %i.aw, %_Z23mbedtls_mpi_core_bitlenPKmm.exit.thread.split ]
end_hunk_5
begin_hunk_6_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %i.am, ptr noundef %.032.i, ptr noundef nonnull %i.al, i64 noundef %3, ptr noundef nonnull readonly %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.u)
  %i.an = add nuw nsw i64 %.03031.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.an, %i.r
  br i1 %exitcond.not.i, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit, label %.lr.ph.i, !llvm.loop !52

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit: ; preds = %.lr.ph.i, %_ZL38exp_mod_calc_first_bit_optionally_safePKmmiPmS1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr nonnull align 8 %8, i64 %i.ak, i1 false)
end_hunk_6
begin_hunk_7_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
bb.f:                                             ; preds = %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us
  %.154.us = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us ], [ %i.au, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us ]
  %.1.us = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.us ], [ %i.ba, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us ]
  br i1 %or.cond.us, label %.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.us, !llvm.loop !53

_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split: ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader, %bb.h
  %.067 = phi i64 [ %.168, %bb.h ], [ %.2, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split.preheader ]
end_hunk_7
begin_hunk_8_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %i.cc = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %niter107.next.3 = add i64 %niter107, 4         ; 2 uses
  %niter107.ncmp.3 = icmp eq i64 %niter107.next.3, %unroll_iter106
  br i1 %niter107.ncmp.3, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i, !llvm.loop !54

.split.i.i:                                       ; preds = %bb.g, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i
  %.012.i.i = phi ptr [ %i.ea, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i ], [ %8, %bb.g ] ; 5 uses
end_hunk_8
begin_hunk_9_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %i.dz = add nuw nsw i64 %.01011.i.i, 1          ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %.012.i.i, i64 %3
  %exitcond.not.i.i = icmp eq i64 %i.dz, %i.r
  br i1 %exitcond.not.i.i, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %.split.i.i, !llvm.loop !54

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i
  br i1 %lcmp.mod104.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil.preheader
end_hunk_9
begin_hunk_10_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
  %i.ed = load volatile i64, ptr @mbedtls_ct_zero, align 8, !tbaa !9 ; 0 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit, label %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil, !llvm.loop !55

_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit: ; preds = %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.i.i, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit.loopexit.unr-lcssa, %_Z28mbedtls_mpi_core_cond_assignPmPKmmm.exit.us.i.i.epil
  tail call void @_Z24mbedtls_mpi_core_montmulPmPKmS1_mS1_mmS_(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.t, i64 noundef %3, ptr noundef nonnull %2, i64 noundef %3, i64 noundef %.neg11.i, ptr noundef nonnull %i.u)
end_hunk_10
begin_hunk_11_@_ZL40mbedtls_mpi_core_exp_mod_optionally_safePmPKmS1_mS1_miS1_S_:bb.a
bb.h:                                             ; preds = %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit
  %.154 = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit ], [ %i.bi, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split ]
  %.1 = phi i64 [ 0, %_ZL36exp_mod_table_lookup_optionally_safePmS_mmmi.exit ], [ %i.bo, %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split ]
  br i1 %or.cond, label %.split.us, label %_ZL25exp_mod_precompute_windowPKmS0_mmS0_mPmS1_.exit.split, !llvm.loop !53

.split.us:                                        ; preds = %bb.h, %bb.f
  ret void
end_hunk_11
begin_hunk_12_@_Z24mbedtls_mpi_core_sub_intPmPKmmm:bb.a
  %i.u = add nuw i64 %.01213, 2                   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !56
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(readwrite, target_mem: none) uwtable
end_hunk_12
begin_hunk_13_@_Z30mbedtls_mpi_core_check_zero_ctPKmm:bb.a
  %i.e = add nuw i64 %.09.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !57

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.07.lcssa = phi i64 [ 0, %bb.a ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.d, %.lr.ph.epil ]
end_hunk_13
begin_hunk_14_@_Z30mbedtls_mpi_core_check_zero_ctPKmm:bb.a
  %i.aq = add nuw i64 %.09, 8                     ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress uwtable
end_hunk_14
begin_hunk_15_@llvm.assume
!43 = !{!"p1 long", !44, i64 0}
!44 = !{!"any pointer", !5, i64 0}
!45 = !{!"short", !5, i64 0}
!46 = !{ptr @_Z28mbedtls_mpi_core_fill_randomPmmmPFiPvPhmES0_}
!47 = distinct !{!47, !8, !23, !24}
!48 = distinct !{!48, !8, !24, !23}
!49 = distinct !{!49, !8, !23, !24}
!50 = distinct !{!50, !8, !24, !23}
!51 = distinct !{!51, !8}
!52 = distinct !{!52, !8}
!53 = distinct !{!53, !8}
!54 = distinct !{!54, !8}
!55 = distinct !{!55, !37}
!56 = distinct !{!56, !8}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !8}
end_hunk_15
