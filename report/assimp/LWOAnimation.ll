inline.NumInlined: 685
inline.NumDeleted: 224
begin_hunk_0_@_ZN6Assimp3LWO12AnimResolver18ExtractAnimChannelEPP10aiNodeAnimj:bb.a
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = ptrtoint ptr %i.ff to i64               ; 2 uses
  %i.fi = sub i64 %i.fg, %i.fh
  %i.fj = sdiv exact i64 %i.fi, 24                ; 2 uses
  %i.fk = trunc i64 %i.fj to i32                  ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.dc, i64 1040 ; 2 uses
  store i32 %i.fk, ptr %i.fl, align 8
  %i.fm = and i64 %i.fj, 4294967295               ; 3 uses
  %i.fn = shl nuw nsw i64 %i.fm, 5
  %i.fo = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.fn) #18
          to label %bb.aj unwind label %bb.am     ; 3 uses

bb.aj:                                            ; preds = %bb.ai
  %i.fp = icmp eq i64 %i.fm, 0
end_hunk_0
begin_hunk_1_@_ZN6Assimp3LWO12AnimResolver18ExtractAnimChannelEPP10aiNodeAnimj:bb.a

bb.ak:                                            ; preds = %bb.aj
  %i.fq = getelementptr inbounds nuw [32 x i8], ptr %i.fo, i64 %i.fm
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %bb.ak
  %i.fr = phi ptr [ %i.fo, %bb.ak ], [ %i.fu, %bb.al ] ; 4 uses
  store double 0.000000e+00, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.fs, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 24
  store i32 1, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 32 ; 2 uses
  %i.fv = icmp eq ptr %i.fu, %i.fq
  br i1 %i.fv, label %.loopexit131, label %bb.al

.loopexit131:                                     ; preds = %bb.al, %bb.aj
  store ptr %i.fo, ptr %i.dd, align 8
  %.not134 = icmp eq i32 %i.fk, 0
  br i1 %.not134, label %._crit_edge, label %.lr.ph
end_hunk_1
begin_hunk_2_@_ZN6Assimp3LWO12AnimResolver18ExtractAnimChannelEPP10aiNodeAnimj:bb.a
  %i.jh = load i32, ptr %i.fl, align 8
  %i.ji = zext i32 %i.jh to i64
  %i.jj = icmp samesign ult i64 %indvars.iv.next, %i.ji
  br i1 %i.jj, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !36

bb.an:                                            ; preds = %bb.am
  %i.jk = getelementptr inbounds nuw i8, ptr %4, i64 16
end_hunk_2
begin_hunk_3_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i, i64 40
  %.not.i.i.i.i.i = icmp eq ptr %i.n, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !37

_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.c, align 8
end_hunk_3
begin_hunk_4_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.06.i.i.i.prol, i64 40 ; 2 uses
  %prol.iter144.next = add i64 %prol.iter144, 1   ; 2 uses
  %prol.iter144.cmp.not = icmp eq i64 %prol.iter144.next, %xtraiter142
  br i1 %prol.iter144.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !38

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %bb.h
  %.06.i.i.i.unr = phi ptr [ %1, %bb.h ], [ %i.ab, %.lr.ph.i.i.i.prol ]
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i.sroa_idx.3, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq ptr %i.ag, %i.x
  br i1 %.not.i.i.i.3, label %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !40

bb.i:                                             ; preds = %bb.c
  %i.ah = sub nuw i64 %2, %i.k                    ; 4 uses
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !41

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.lcssa141.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.i.i.prol ]
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.ap = add i64 %.068.i.i.i.i, -4               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.3 = icmp eq i64 %i.ap, 0
  br i1 %.not.i.i.i.i.3, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !42

_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.i
  %i.ar = phi ptr [ %i.d, %bb.i ], [ %.lcssa141.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.aq, %.lr.ph.i.i.i.i ] ; 3 uses
end_hunk_7
begin_hunk_8_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i72, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i71, i64 40
  %.not.i.i.i.i.i73 = icmp eq ptr %i.at, %i.d
  br i1 %.not.i.i.i.i.i73, label %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75, label %.lr.ph.i.i.i.i.i70, !llvm.loop !37

_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75: ; preds = %.lr.ph.i.i.i.i.i70
  %i.av = load ptr, ptr %i.c, align 8
end_hunk_8
begin_hunk_9_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9.8..06.i.i.i78.sroa_idx, ptr noundef nonnull align 1 dereferenceable(35) %.sroa.9, i64 35, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %.06.i.i.i78, i64 40 ; 2 uses
  %.not.i.i.i79 = icmp eq ptr %i.ax, %i.d
  br i1 %.not.i.i.i79, label %_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit, label %.lr.ph.i.i.i77, !llvm.loop !40

_ZSt4fillIPN6Assimp3LWO3KeyES2_EvT_S4_RKT0_.exit: ; preds = %.lr.ph.i.i.i77, %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %_ZSt22__uninitialized_move_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit75.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
end_hunk_9
begin_hunk_10_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83.prol, i64 40 ; 2 uses
  %prol.iter147.next = add i64 %prol.iter147, 1   ; 2 uses
  %prol.iter147.cmp.not = icmp eq i64 %prol.iter147.next, %xtraiter145
  br i1 %prol.iter147.cmp.not, label %.lr.ph.i.i.i.i82.prol.loopexit, label %.lr.ph.i.i.i.i82.prol, !llvm.loop !43

.lr.ph.i.i.i.i82.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i82.prol, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit
  %.09.i.i.i.i83.unr = phi ptr [ %i.bn, %_ZNSt12_Vector_baseIN6Assimp3LWO3KeyESaIS2_EE11_M_allocateEm.exit ], [ %i.bp, %.lr.ph.i.i.i.i82.prol ]
end_hunk_10
begin_hunk_11_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.bu = add i64 %.068.i.i.i.i84, -4             ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i83, i64 160
  %.not.i.i.i.i85.3 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i85.3, label %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87, label %.lr.ph.i.i.i.i82, !llvm.loop !42

_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87: ; preds = %.lr.ph.i.i.i.i82, %.lr.ph.i.i.i.i82.prol.loopexit
  %.not11.i.i.i.i.i88 = icmp eq ptr %i.ay, %1
end_hunk_11
begin_hunk_12_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i91, i64 40 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i90, i64 40 ; 2 uses
  %.not.i.i.i.i.i92 = icmp eq ptr %i.bw, %1
  br i1 %.not.i.i.i.i.i92, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i89, !llvm.loop !37

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %.lr.ph.i.i.i.i.i89, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87
  %.0.lcssa.i.i.i.i.i93 = phi ptr [ %i.bm, %_ZSt24__uninitialized_fill_n_aIPN6Assimp3LWO3KeyEmS2_S2_ET_S4_T0_RKT1_RSaIT2_E.exit87 ], [ %i.bx, %.lr.ph.i.i.i.i.i89 ]
end_hunk_12
begin_hunk_13_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS2_S4_EEmRKS2_:bb.a
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.08.012.i.i.i.i.i97, i64 40 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.013.i.i.i.i.i96, i64 40 ; 2 uses
  %.not.i.i.i.i.i98 = icmp eq ptr %i.bz, %i.d
  br i1 %.not.i.i.i.i.i98, label %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100, label %.lr.ph.i.i.i.i.i95, !llvm.loop !37

_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit100: ; preds = %.lr.ph.i.i.i.i.i95, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i99 = phi ptr [ %i.by, %_ZSt34__uninitialized_move_if_noexcept_aIPN6Assimp3LWO3KeyES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %i.ca, %.lr.ph.i.i.i.i.i95 ]
end_hunk_13
begin_hunk_14_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.08.i.i.i.prol, i64 40 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !44

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.t, %.lr.ph.i.i.i.prol ]
end_hunk_14
begin_hunk_15_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm:bb.a
  %i.ak = add i64 %.057.i.i.i, -4                 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.3 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i.i.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.al, %.lr.ph.i.i.i ]
end_hunk_15
begin_hunk_16_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm:bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %.08.i.i.i31.prol, i64 40 ; 2 uses
  %prol.iter46.next = add i64 %prol.iter46, 1     ; 2 uses
  %prol.iter46.cmp.not = icmp eq i64 %prol.iter46.next, %xtraiter44
  br i1 %prol.iter46.cmp.not, label %.lr.ph.i.i.i30.prol.loopexit, label %.lr.ph.i.i.i30.prol, !llvm.loop !46

.lr.ph.i.i.i30.prol.loopexit:                     ; preds = %.lr.ph.i.i.i30.prol, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit
  %.08.i.i.i31.unr = phi ptr [ %i.ar, %_ZNKSt6vectorIN6Assimp3LWO3KeyESaIS2_EE12_M_check_lenEmPKc.exit ], [ %i.aw, %.lr.ph.i.i.i30.prol ]
end_hunk_16
begin_hunk_17_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm:bb.a
  %i.bn = add i64 %.057.i.i.i32, -4               ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.08.i.i.i31, i64 160
  %.not.i.i.i33.3 = icmp eq i64 %i.bn, 0
  br i1 %.not.i.i.i33.3, label %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, label %.lr.ph.i.i.i30, !llvm.loop !45

_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35: ; preds = %.lr.ph.i.i.i30, %.lr.ph.i.i.i30.prol.loopexit
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
end_hunk_17
begin_hunk_18_@_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE17_M_default_appendEm:bb.a
.lr.ph.i.i.i37:                                   ; preds = %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35, %.lr.ph.i.i.i37
  %.012.i.i.i = phi ptr [ %i.bq, %.lr.ph.i.i.i37 ], [ %i.aq, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i37 ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.0911.i.i.i, i64 40, i1 false), !alias.scope !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %.not.i.i.i38 = icmp eq ptr %i.bp, %i.b
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i37, !llvm.loop !51

_ZNSt6vectorIN6Assimp3LWO3KeyESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i37, %_ZSt27__uninitialized_default_n_aIPN6Assimp3LWO3KeyEmS2_ET_S4_T0_RSaIT1_E.exit35
  %.not.i40 = icmp eq ptr %i.c, null
end_hunk_18
begin_hunk_19_@llvm.fmuladd.v2f32
!33 = distinct !{!33, !32, !"_ZSt19__relocate_object_aI11aiVectorKeyS0_SaIS0_EEvPT_PT0_RT1_: argument 1"}
!34 = !{i8 0, i8 2}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !4}
!41 = distinct !{!41, !39}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !39}
!44 = distinct !{!44, !39}
!45 = distinct !{!45, !4}
!46 = distinct !{!46, !39}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!49 = distinct !{!49, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_"}
!50 = distinct !{!50, !49, !"_ZSt19__relocate_object_aIN6Assimp3LWO3KeyES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!51 = distinct !{!51, !4}
end_hunk_19
