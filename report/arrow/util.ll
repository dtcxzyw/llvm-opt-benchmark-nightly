inline.NumInlined: 6631
inline.NumDeleted: 2675
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !1375 ; 17 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s
  %.fr189 = freeze i64 %i.t                       ; 3 uses
  %i.u = ashr i64 %.fr189, 4                      ; 3 uses
  %i.v = icmp ugt i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.y

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit, label %bb.n, !llvm.loop !2234

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %i.db = sub nuw i64 %2, %i.u                    ; 8 uses
  %.not7.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %xtraiter = and i64 %i.db, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %.lcssa183.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.split.preheader ], [ %i.do, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.split.preheader ], [ %i.do, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.db, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dn, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %i.dp = icmp eq i64 %i.db, 1
  br i1 %i.dp, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %i.eu, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread, label %.lr.ph.i.i.i.i.i72

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit76.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.ev = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr189
  store ptr %i.ev, ptr %i.c, align 8, !tbaa !1292
  br label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit

end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %i.fb, label %.lr.ph.i.i.i78, label %.lr.ph.i.i.i.i.i72, !llvm.loop !2230

.lr.ph.i.i.i78:                                   ; preds = %.lr.ph.i.i.i.i.i72
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %.fr189
  store ptr %i.fc, ptr %i.c, align 8, !tbaa !1292
  %i.fd = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.af
end_hunk_5
