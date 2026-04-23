inline.NumInlined: 2636
inline.NumDeleted: 1243
begin_hunk_0_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !405  ; 17 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 4                   ; 4 uses
  %i.v = icmp ugt i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.y

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit, label %bb.n, !llvm.loop !412

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %i.cz = sub nuw i64 %2, %i.u                    ; 7 uses
  %.not7.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.neg194 = add nsw i64 %i.u, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_2
begin_hunk_3_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %.lcssa188.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dl, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %i.dn = icmp eq i64 %2, %.neg194
  br i1 %i.dn, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow6BufferEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not11.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit79.thread, label %.lr.ph.i.i.i.i.i74

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow6BufferEES4_SaIS3_EET0_T_S7_S6_RT1_.exit79.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow6BufferEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.t
  store ptr %i.es, ptr %i.c, align 8, !tbaa !201
  br label %_ZSt4fillIPSt10shared_ptrIN5arrow6BufferEES3_EvT_S5_RKT0_.exit

end_hunk_4
begin_hunk_5_@_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i.i.i77, label %.lr.ph.i.i.i81, label %.lr.ph.i.i.i.i.i74, !llvm.loop !408

.lr.ph.i.i.i81:                                   ; preds = %.lr.ph.i.i.i.i.i74
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.t
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !201
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.af
end_hunk_5
begin_hunk_6_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !455  ; 17 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 4                   ; 4 uses
  %i.v = icmp ugt i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.y

end_hunk_6
begin_hunk_7_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RKT0_.exit, label %bb.n, !llvm.loop !583

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %i.cz = sub nuw i64 %2, %i.u                    ; 7 uses
  %.not7.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow5ArrayEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

end_hunk_7
begin_hunk_8_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.neg194 = add nsw i64 %i.u, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_8
begin_hunk_9_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %.lcssa188.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dl, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %i.dn = icmp eq i64 %2, %.neg194
  br i1 %i.dn, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow5ArrayEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5ArrayEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us
end_hunk_9
begin_hunk_10_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not11.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow5ArrayEES4_SaIS3_EET0_T_S7_S6_RT1_.exit79.thread, label %.lr.ph.i.i.i.i.i74

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow5ArrayEES4_SaIS3_EET0_T_S7_S6_RT1_.exit79.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow5ArrayEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.t
  store ptr %i.es, ptr %i.c, align 8, !tbaa !344
  br label %_ZSt4fillIPSt10shared_ptrIN5arrow5ArrayEES3_EvT_S5_RKT0_.exit

end_hunk_10
begin_hunk_11_@_ZNSt6vectorISt10shared_ptrIN5arrow5ArrayEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i.i.i77, label %.lr.ph.i.i.i81, label %.lr.ph.i.i.i.i.i74, !llvm.loop !579

.lr.ph.i.i.i81:                                   ; preds = %.lr.ph.i.i.i.i.i74
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.t
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !344
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.af
end_hunk_11
begin_hunk_12_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !29   ; 17 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = ashr exact i64 %i.t, 4                   ; 4 uses
  %i.v = icmp ugt i64 %i.u, %2
  br i1 %i.v, label %bb.g, label %bb.y

end_hunk_12
begin_hunk_13_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i, label %_ZSt4fillIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RKT0_.exit, label %bb.n, !llvm.loop !593

bb.y:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE16_Temporary_valueC2IJRKS3_EEEPS5_DpOT_.exit
  %i.cz = sub nuw i64 %2, %i.u                    ; 7 uses
  %.not7.i.i.i.i = icmp eq i64 %i.cz, 0
  br i1 %.not7.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow5FieldEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i

end_hunk_13
begin_hunk_14_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a

.lr.ph.i.i.i.i.split.preheader:                   ; preds = %.lr.ph.i.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 9 uses
  %.neg194 = add nsw i64 %i.u, 1
  %xtraiter = and i64 %i.cz, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_14
begin_hunk_15_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  %.lcssa188.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.09.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dm, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %.068.i.i.i.i.unr = phi i64 [ %i.cz, %.lr.ph.i.i.i.i.split.preheader ], [ %i.dl, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.prol ]
  %i.dn = icmp eq i64 %2, %.neg194
  br i1 %i.dn, label %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow5FieldEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.split.preheader.new

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us.prol.loopexit, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.us
end_hunk_15
begin_hunk_16_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not11.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow5FieldEES4_SaIS3_EET0_T_S7_S6_RT1_.exit79.thread, label %.lr.ph.i.i.i.i.i74

_ZSt22__uninitialized_move_aIPSt10shared_ptrIN5arrow5FieldEES4_SaIS3_EET0_T_S7_S6_RT1_.exit79.thread: ; preds = %_ZSt24__uninitialized_fill_n_aIPSt10shared_ptrIN5arrow5FieldEEmS3_S3_ET_S5_T0_RKT1_RSaIT2_E.exit
  %i.es = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.t
  store ptr %i.es, ptr %i.c, align 8, !tbaa !325
  br label %_ZSt4fillIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RKT0_.exit

end_hunk_16
begin_hunk_17_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS3_S5_EEmRKS3_:bb.a
  br i1 %.not.i.i.i.i.i77, label %.lr.ph.i.i.i81, label %.lr.ph.i.i.i.i.i74, !llvm.loop !589

.lr.ph.i.i.i81:                                   ; preds = %.lr.ph.i.i.i.i.i74
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 %i.t
  store ptr %i.ey, ptr %i.c, align 8, !tbaa !325
  %i.ez = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  br label %bb.af
end_hunk_17
