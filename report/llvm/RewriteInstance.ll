Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/RewriteInstance?download=true
inline.NumInlined: 27087
inline.NumDeleted: 8981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_:bb.a
._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.sroa.051.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa66 = phi i64 [ %i.e, %bb.a ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa66) ; 2 uses
  %.idx61 = mul nsw i64 %.sroa.speculated, 48
  %i.au = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa, i64 %.idx61 ; 5 uses
  %i.av = icmp ne i64 %.sroa.speculated, 0
  %i.aw = icmp ne ptr %i.au, %1
  %or.cond24.i16 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond24.i16, label %.lr.ph.i34, label %.critedge.i17

.lr.ph.i34:                                       ; preds = %._crit_edge, %bb.h
  %.027.i35 = phi ptr [ %i.bh, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.020.026.i36 = phi ptr [ %.sroa.020.1.i41, %bb.h ], [ %.sroa.051.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.016.025.i37 = phi ptr [ %.sroa.016.1.i40, %bb.h ], [ %i.au, %._crit_edge ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 24
  %.0.copyload.i.i.i.i.i.i38 = load i32, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 24
  %.0.copyload.i.i.i2.i.i.i39 = load i32, ptr %i.ay, align 1
  %i.az = icmp ult i32 %.0.copyload.i.i.i.i.i.i38, %.0.copyload.i.i.i2.i.i.i39
  %i.ba = getelementptr inbounds nuw i8, ptr %.027.i35, i64 8 ; 2 uses
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i34
  %i.bb = load ptr, ptr %.sroa.016.025.i37, align 8, !tbaa !917
  store ptr %i.bb, ptr %.027.i35, align 8, !tbaa !1320
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bc, i64 40, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34
  %i.be = load ptr, ptr %.sroa.020.026.i36, align 8, !tbaa !917
  store ptr %i.be, ptr %.027.i35, align 8, !tbaa !1320
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ba, ptr noundef nonnull align 8 dereferenceable(40) %i.bf, i64 40, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.016.1.i40 = phi ptr [ %i.bd, %bb.f ], [ %.sroa.016.025.i37, %bb.g ] ; 3 uses
  %.sroa.020.1.i41 = phi ptr [ %.sroa.020.026.i36, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.027.i35, i64 48 ; 2 uses
  %i.bi = icmp ne ptr %.sroa.020.1.i41, %i.au
  %i.bj = icmp ne ptr %.sroa.016.1.i40, %1
  %or.cond.i42 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.i42, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !4684

.critedge.i17:                                    ; preds = %bb.h, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.au, %._crit_edge ], [ %.sroa.016.1.i40, %bb.h ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.051.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i41, %bb.h ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21

.lr.ph.preheader.i.i.i.i.i.i29:                   ; preds = %.critedge.i17
  %i.bo = udiv exact i64 %i.bm, 48
  br label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %.lr.ph.i.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i31 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i.i32 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i30 ], [ %.0.lcssa.i20, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %.0910.i.i.i.i.i.i33 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i30 ], [ %.sroa.020.0.lcssa.i19, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %i.bp = load ptr, ptr %.0910.i.i.i.i.i.i33, align 8, !tbaa !917
  store ptr %i.bp, ptr %.0811.i.i.i.i.i.i32, align 8, !tbaa !1320
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.br, ptr noundef nonnull align 8 dereferenceable(40) %i.bq, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 48 ; 2 uses
  %i.bu = add nsw i64 %.012.i.i.i.i.i.i31, -1
  %i.bv = icmp samesign ugt i64 %.012.i.i.i.i.i.i31, 1
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21, !llvm.loop !81

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21: ; preds = %.lr.ph.i.i.i.i.i.i30, %.critedge.i17
  %.08.lcssa.i.i.i.i.i.i22 = phi ptr [ %.0.lcssa.i20, %.critedge.i17 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i30 ]
  %i.bw = ptrtoint ptr %.sroa.016.0.lcssa.i18 to i64
  %i.bx = sub i64 %i.b, %i.bw                     ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.preheader.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43

.lr.ph.preheader.i.i.i.i.i10.i24:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  %i.bz = udiv exact i64 %i.bx, 48
  br label %.lr.ph.i.i.i.i.i11.i25

.lr.ph.i.i.i.i.i11.i25:                           ; preds = %.lr.ph.i.i.i.i.i11.i25, %.lr.ph.preheader.i.i.i.i.i10.i24
  %.012.i.i.i.i.i12.i26 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i11.i25 ], [ %i.bz, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 2 uses
  %.0811.i.i.i.i.i13.i27 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i11.i25 ], [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %.0910.i.i.i.i.i14.i28 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i11.i25 ], [ %.sroa.016.0.lcssa.i18, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %i.ca = load ptr, ptr %.0910.i.i.i.i.i14.i28, align 8, !tbaa !917
  store ptr %i.ca, ptr %.0811.i.i.i.i.i13.i27, align 8, !tbaa !1320
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull align 8 dereferenceable(40) %i.cb, i64 40, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 48
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 48
  %i.cf = add nsw i64 %.012.i.i.i.i.i12.i26, -1
  %i.cg = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i11.i25, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43, !llvm.loop !81

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i11.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 48                  ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 48
  %.idx56 = mul nsw i64 %3, 96
  %.not57 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.ay, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.030.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 5 uses
  %.01629.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.0.028.i = phi ptr [ %i.r, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01629.i, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.i, align 1
  %i.j = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = load ptr, ptr %.01629.i, align 8, !tbaa !917
  store ptr %i.l, ptr %.sroa.0.028.i, align 8, !tbaa !1320
  %i.m = getelementptr inbounds nuw i8, ptr %.01629.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.01629.i, i64 48
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %.030.i, align 8, !tbaa !917
  store ptr %i.o, ptr %.sroa.0.028.i, align 8, !tbaa !1320
  %i.p = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.117.i = phi ptr [ %i.n, %bb.c ], [ %.01629.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.030.i, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 48 ; 2 uses
  %i.s = icmp ne ptr %.1.i, %i.f
  %i.t = icmp ne ptr %.117.i, %i.g
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !4686

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.r, %bb.e ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 2 uses
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = ptrtoint ptr %.0.lcssa.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i
  %i.z = udiv exact i64 %i.x, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !917
  store ptr %i.aa, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1320
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ag = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, !llvm.loop !81

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.am = ptrtoint ptr %.016.lcssa.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i
  %i.ap = udiv exact i64 %i.an, 48
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i20.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i20.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i20.i ], [ %.016.lcssa.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !917
  store ptr %i.aq, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !1320
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 48
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 48 ; 2 uses
  %i.av = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i, !llvm.loop !81

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i20.i
  %4 = ptrtoint ptr %i.au to i64
  br label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit: ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.ah, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i ]
  %i.ax = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.ah
  %i.ay = getelementptr inbounds i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.az = sub i64 %i.b, %i.al
  %i.ba = sdiv exact i64 %i.az, 48                ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !4687

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ay, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = mul nsw i64 %.sroa.speculated, 48
  %i.bb = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.i43, label %._crit_edge.i25

.lr.ph.i43:                                       ; preds = %._crit_edge, %bb.h
  %.030.i44 = phi ptr [ %.1.i50, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01629.i45 = phi ptr [ %.117.i49, %bb.h ], [ %i.bb, %._crit_edge ] ; 5 uses
  %.sroa.0.028.i46 = phi ptr [ %i.bp, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 24
  %.0.copyload.i.i.i.i.i.i47 = load i32, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.030.i44, i64 24
  %.0.copyload.i.i.i2.i.i.i48 = load i32, ptr %i.bg, align 1
  %i.bh = icmp ult i32 %.0.copyload.i.i.i.i.i.i47, %.0.copyload.i.i.i2.i.i.i48
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i43
  %i.bj = load ptr, ptr %.01629.i45, align 8, !tbaa !917
  store ptr %i.bj, ptr %.sroa.0.028.i46, align 8, !tbaa !1320
  %i.bk = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bk, i64 40, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i43
  %i.bm = load ptr, ptr %.030.i44, align 8, !tbaa !917
  store ptr %i.bm, ptr %.sroa.0.028.i46, align 8, !tbaa !1320
  %i.bn = getelementptr inbounds nuw i8, ptr %.030.i44, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bi, ptr noundef nonnull align 8 dereferenceable(40) %i.bn, i64 40, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.030.i44, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i49 = phi ptr [ %i.bl, %bb.f ], [ %.01629.i45, %bb.g ] ; 3 uses
  %.1.i50 = phi ptr [ %.030.i44, %bb.f ], [ %i.bo, %bb.g ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 48 ; 2 uses
  %i.bq = icmp ne ptr %.1.i50, %i.bb
  %i.br = icmp ne ptr %.117.i49, %1
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph.i43, label %._crit_edge.i25, !llvm.loop !4686

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.bp, %bb.h ] ; 4 uses
  %.016.lcssa.i27 = phi ptr [ %i.bb, %._crit_edge ], [ %.117.i49, %bb.h ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i50, %bb.h ] ; 2 uses
  %i.bt = ptrtoint ptr %i.bb to i64
  %i.bu = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %._crit_edge.i25
  %i.bx = udiv exact i64 %i.bv, 48
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i40 = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i39 ], [ %i.bx, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.0811.i.i.i.i.i.i41 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %.0910.i.i.i.i.i.i42 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i39 ], [ %.0.lcssa.i28, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %i.by = load ptr, ptr %.0910.i.i.i.i.i.i42, align 8, !tbaa !917
  store ptr %i.by, ptr %.0811.i.i.i.i.i.i41, align 8, !tbaa !1320
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ca, ptr noundef nonnull align 8 dereferenceable(40) %i.bz, i64 40, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 48 ; 2 uses
  %i.cd = add nsw i64 %.012.i.i.i.i.i.i40, -1
  %i.ce = icmp samesign ugt i64 %.012.i.i.i.i.i.i40, 1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29, !llvm.loop !81

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i39, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i39 ]
  %i.cf = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.cg = sub i64 %i.b, %i.cf                     ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.preheader.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51

.lr.ph.preheader.i.i.i.i.i19.i32:                 ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  %i.ci = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.cj = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.ck
  %i.cm = udiv exact i64 %i.cg, 48
  br label %.lr.ph.i.i.i.i.i20.i33

.lr.ph.i.i.i.i.i20.i33:                           ; preds = %.lr.ph.i.i.i.i.i20.i33, %.lr.ph.preheader.i.i.i.i.i19.i32
  %.012.i.i.i.i.i21.i34 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 2 uses
  %.0811.i.i.i.i.i22.i35 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cl, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %.0910.i.i.i.i.i23.i36 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.i33 ], [ %.016.lcssa.i27, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %i.cn = load ptr, ptr %.0910.i.i.i.i.i23.i36, align 8, !tbaa !917
  store ptr %i.cn, ptr %.0811.i.i.i.i.i22.i35, align 8, !tbaa !1320
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cp, ptr noundef nonnull align 8 dereferenceable(40) %i.co, i64 40, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 48
  %i.cs = add nsw i64 %.012.i.i.i.i.i21.i34, -1
  %i.ct = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i20.i33, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51, !llvm.loop !81

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51: ; preds = %.lr.ph.i.i.i.i.i20.i33, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.i.i.i.i = alloca %"struct.llvm::object::Elf_Shdr_Base", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond84 = or i1 %i.a, %i.b
  br i1 %or.cond84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8189 = phi i64 [ %4, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 4 uses
  %.tr8088 = phi i64 [ %3, %.lr.ph ], [ %i.aw, %tailrecurse ] ; 4 uses
  %.tr7886 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr85 = phi ptr [ %0, %.lr.ph ], [ %i.av, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr8189, %.tr8088
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7886, i64 24
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.tr85, i64 24
  %.0.copyload.i.i.i2.i.i = load i32, ptr %i.g, align 1
  %i.h = icmp ult i32 %.0.copyload.i.i.i.i.i, %.0.copyload.i.i.i2.i.i
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %.tr85, align 8, !tbaa !917
  %i.j = load ptr, ptr %.tr7886, align 8, !tbaa !917
  store ptr %i.j, ptr %.tr85, align 8, !tbaa !917
  store ptr %i.i, ptr %.tr7886, align 8, !tbaa !917
  %i.k = getelementptr inbounds nuw i8, ptr %.tr85, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr7886, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.k, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr8088, %.tr8189
  %i.n = ptrtoint ptr %.tr7886 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr8088, 2                     ; 2 uses
  %i.p = getelementptr inbounds [48 x i8], ptr %.tr85, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n                       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.s = udiv exact i64 %i.q, 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.t, align 1
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.s, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7886, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.u = lshr i64 %.016.i, 1                      ; 3 uses
  %i.v = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.015.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.w, align 1
  %i.x = icmp ult i32 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.z = xor i64 %i.u, -1
  %i.aa = add nsw i64 %.016.i, %i.z
  %.sroa.011.1.i = select i1 %i.x, ptr %i.y, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.x, i64 %i.aa, i64 %i.u     ; 2 uses
  %i.ab = icmp sgt i64 %.1.i, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit.loopexit, !llvm.loop !82

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb0EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit

end_hunk_0
begin_hunk_1_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_:bb.a
._crit_edge:                                      ; preds = %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.sroa.051.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.0.lcssa = phi ptr [ %2, %bb.a ], [ %.08.lcssa.i.i.i.i.i9.i, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa66 = phi i64 [ %i.e, %bb.a ], [ %i.at, %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa66) ; 2 uses
  %.idx61 = mul nsw i64 %.sroa.speculated, 72
  %i.au = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa, i64 %.idx61 ; 5 uses
  %i.av = icmp ne i64 %.sroa.speculated, 0
  %i.aw = icmp ne ptr %i.au, %1
  %or.cond24.i16 = select i1 %i.av, i1 %i.aw, i1 false
  br i1 %or.cond24.i16, label %.lr.ph.i34, label %.critedge.i17

.lr.ph.i34:                                       ; preds = %._crit_edge, %bb.h
  %.027.i35 = phi ptr [ %i.bh, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.020.026.i36 = phi ptr [ %.sroa.020.1.i41, %bb.h ], [ %.sroa.051.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.016.025.i37 = phi ptr [ %.sroa.016.1.i40, %bb.h ], [ %i.au, %._crit_edge ] ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 32
  %.0.copyload.i.i.i.i.i.i38 = load i64, ptr %i.ax, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 32
  %.0.copyload.i.i.i2.i.i.i39 = load i64, ptr %i.ay, align 1
  %i.az = icmp ult i64 %.0.copyload.i.i.i.i.i.i38, %.0.copyload.i.i.i2.i.i.i39
  %i.ba = getelementptr inbounds nuw i8, ptr %.027.i35, i64 8 ; 2 uses
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i34
  %i.bb = load ptr, ptr %.sroa.016.025.i37, align 8, !tbaa !917
  store ptr %i.bb, ptr %.027.i35, align 8, !tbaa !1385
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bc, i64 64, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34
  %i.be = load ptr, ptr %.sroa.020.026.i36, align 8, !tbaa !917
  store ptr %i.be, ptr %.027.i35, align 8, !tbaa !1385
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ba, ptr noundef nonnull align 8 dereferenceable(64) %i.bf, i64 64, i1 false)
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.016.1.i40 = phi ptr [ %i.bd, %bb.f ], [ %.sroa.016.025.i37, %bb.g ] ; 3 uses
  %.sroa.020.1.i41 = phi ptr [ %.sroa.020.026.i36, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.027.i35, i64 72 ; 2 uses
  %i.bi = icmp ne ptr %.sroa.020.1.i41, %i.au
  %i.bj = icmp ne ptr %.sroa.016.1.i40, %1
  %or.cond.i42 = select i1 %i.bi, i1 %i.bj, i1 false
  br i1 %or.cond.i42, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !5079

.critedge.i17:                                    ; preds = %bb.h, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.au, %._crit_edge ], [ %.sroa.016.1.i40, %bb.h ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.051.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i41, %bb.h ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bh, %bb.h ] ; 2 uses
  %i.bk = ptrtoint ptr %i.au to i64
  %i.bl = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bm = sub i64 %i.bk, %i.bl                    ; 2 uses
  %i.bn = icmp sgt i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21

.lr.ph.preheader.i.i.i.i.i.i29:                   ; preds = %.critedge.i17
  %i.bo = udiv exact i64 %i.bm, 72
  br label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %.lr.ph.i.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i31 = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bo, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i.i32 = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i30 ], [ %.0.lcssa.i20, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %.0910.i.i.i.i.i.i33 = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i30 ], [ %.sroa.020.0.lcssa.i19, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %i.bp = load ptr, ptr %.0910.i.i.i.i.i.i33, align 8, !tbaa !917
  store ptr %i.bp, ptr %.0811.i.i.i.i.i.i32, align 8, !tbaa !1385
  %i.bq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.br, ptr noundef nonnull align 8 dereferenceable(64) %i.bq, i64 64, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 72 ; 2 uses
  %i.bu = add nsw i64 %.012.i.i.i.i.i.i31, -1
  %i.bv = icmp samesign ugt i64 %.012.i.i.i.i.i.i31, 1
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21, !llvm.loop !99

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21: ; preds = %.lr.ph.i.i.i.i.i.i30, %.critedge.i17
  %.08.lcssa.i.i.i.i.i.i22 = phi ptr [ %.0.lcssa.i20, %.critedge.i17 ], [ %i.bt, %.lr.ph.i.i.i.i.i.i30 ]
  %i.bw = ptrtoint ptr %.sroa.016.0.lcssa.i18 to i64
  %i.bx = sub i64 %i.b, %i.bw                     ; 2 uses
  %i.by = icmp sgt i64 %i.bx, 0
  br i1 %i.by, label %.lr.ph.preheader.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43

.lr.ph.preheader.i.i.i.i.i10.i24:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  %i.bz = udiv exact i64 %i.bx, 72
  br label %.lr.ph.i.i.i.i.i11.i25

.lr.ph.i.i.i.i.i11.i25:                           ; preds = %.lr.ph.i.i.i.i.i11.i25, %.lr.ph.preheader.i.i.i.i.i10.i24
  %.012.i.i.i.i.i12.i26 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i11.i25 ], [ %i.bz, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 2 uses
  %.0811.i.i.i.i.i13.i27 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i11.i25 ], [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %.0910.i.i.i.i.i14.i28 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i11.i25 ], [ %.sroa.016.0.lcssa.i18, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %i.ca = load ptr, ptr %.0910.i.i.i.i.i14.i28, align 8, !tbaa !917
  store ptr %i.ca, ptr %.0811.i.i.i.i.i13.i27, align 8, !tbaa !1385
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cc, ptr noundef nonnull align 8 dereferenceable(64) %i.cb, i64 64, i1 false)
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 72
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 72
  %i.cf = add nsw i64 %.012.i.i.i.i.i12.i26, -1
  %i.cg = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i11.i25, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43, !llvm.loop !99

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i11.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 72                  ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 72
  %.idx56 = mul nsw i64 %3, 144
  %.not57 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.ay, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.030.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 5 uses
  %.01629.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.0.028.i = phi ptr [ %i.r, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01629.i, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.i, align 1
  %i.j = icmp ult i64 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8 ; 2 uses
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = load ptr, ptr %.01629.i, align 8, !tbaa !917
  store ptr %i.l, ptr %.sroa.0.028.i, align 8, !tbaa !1385
  %i.m = getelementptr inbounds nuw i8, ptr %.01629.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %.01629.i, i64 72
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.o = load ptr, ptr %.030.i, align 8, !tbaa !917
  store ptr %i.o, ptr %.sroa.0.028.i, align 8, !tbaa !1385
  %i.p = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %.030.i, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.117.i = phi ptr [ %i.n, %bb.c ], [ %.01629.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.030.i, %bb.c ], [ %i.q, %bb.d ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 72 ; 2 uses
  %i.s = icmp ne ptr %.1.i, %i.f
  %i.t = icmp ne ptr %.117.i, %i.g
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5081

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.r, %bb.e ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 2 uses
  %i.v = ptrtoint ptr %i.f to i64
  %i.w = ptrtoint ptr %.0.lcssa.i to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i
  %i.z = udiv exact i64 %i.x, 72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %i.z, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.aa = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !917
  store ptr %i.aa, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1385
  %i.ab = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ac, ptr noundef nonnull align 8 dereferenceable(64) %i.ab, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.af = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ag = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, !llvm.loop !99

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ae, %.lr.ph.i.i.i.i.i.i ]
  %i.ah = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.aj ; 2 uses
  %i.al = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.am = ptrtoint ptr %.016.lcssa.i to i64
  %i.an = sub i64 %i.al, %i.am                    ; 2 uses
  %i.ao = icmp sgt i64 %i.an, 0
  br i1 %i.ao, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i
  %i.ap = udiv exact i64 %i.an, 72
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i20.i ], [ %i.ap, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i20.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i20.i ], [ %.016.lcssa.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %i.aq = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !917
  store ptr %i.aq, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !1385
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 8 dereferenceable(64) %i.ar, i64 64, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 72
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72 ; 2 uses
  %i.av = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.aw = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i, !llvm.loop !99

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i20.i
  %4 = ptrtoint ptr %i.au to i64
  br label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit: ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.ah, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i ]
  %i.ax = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.ah
  %i.ay = getelementptr inbounds i8, ptr %i.ak, i64 %i.ax ; 2 uses
  %i.az = sub i64 %i.b, %i.al
  %i.ba = sdiv exact i64 %i.az, 72                ; 2 uses
  %.not = icmp slt i64 %i.ba, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5082

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ay, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = mul nsw i64 %.sroa.speculated, 72
  %i.bb = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.bc = icmp ne i64 %.sroa.speculated, 0
  %i.bd = icmp ne ptr %i.bb, %1
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph.i43, label %._crit_edge.i25

.lr.ph.i43:                                       ; preds = %._crit_edge, %bb.h
  %.030.i44 = phi ptr [ %.1.i50, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01629.i45 = phi ptr [ %.117.i49, %bb.h ], [ %i.bb, %._crit_edge ] ; 5 uses
  %.sroa.0.028.i46 = phi ptr [ %i.bp, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 32
  %.0.copyload.i.i.i.i.i.i47 = load i64, ptr %i.bf, align 1
  %i.bg = getelementptr inbounds nuw i8, ptr %.030.i44, i64 32
  %.0.copyload.i.i.i2.i.i.i48 = load i64, ptr %i.bg, align 1
  %i.bh = icmp ult i64 %.0.copyload.i.i.i.i.i.i47, %.0.copyload.i.i.i2.i.i.i48
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 8 ; 2 uses
  br i1 %i.bh, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i43
  %i.bj = load ptr, ptr %.01629.i45, align 8, !tbaa !917
  store ptr %i.bj, ptr %.sroa.0.028.i46, align 8, !tbaa !1385
  %i.bk = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bk, i64 64, i1 false)
  %i.bl = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i43
  %i.bm = load ptr, ptr %.030.i44, align 8, !tbaa !917
  store ptr %i.bm, ptr %.sroa.0.028.i46, align 8, !tbaa !1385
  %i.bn = getelementptr inbounds nuw i8, ptr %.030.i44, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bi, ptr noundef nonnull align 8 dereferenceable(64) %i.bn, i64 64, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %.030.i44, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i49 = phi ptr [ %i.bl, %bb.f ], [ %.01629.i45, %bb.g ] ; 3 uses
  %.1.i50 = phi ptr [ %.030.i44, %bb.f ], [ %i.bo, %bb.g ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 72 ; 2 uses
  %i.bq = icmp ne ptr %.1.i50, %i.bb
  %i.br = icmp ne ptr %.117.i49, %1
  %i.bs = select i1 %i.bq, i1 %i.br, i1 false
  br i1 %i.bs, label %.lr.ph.i43, label %._crit_edge.i25, !llvm.loop !5081

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.bp, %bb.h ] ; 4 uses
  %.016.lcssa.i27 = phi ptr [ %i.bb, %._crit_edge ], [ %.117.i49, %bb.h ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i50, %bb.h ] ; 2 uses
  %i.bt = ptrtoint ptr %i.bb to i64
  %i.bu = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.bv = sub i64 %i.bt, %i.bu                    ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %._crit_edge.i25
  %i.bx = udiv exact i64 %i.bv, 72
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i40 = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i39 ], [ %i.bx, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.0811.i.i.i.i.i.i41 = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %.0910.i.i.i.i.i.i42 = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i39 ], [ %.0.lcssa.i28, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %i.by = load ptr, ptr %.0910.i.i.i.i.i.i42, align 8, !tbaa !917
  store ptr %i.by, ptr %.0811.i.i.i.i.i.i41, align 8, !tbaa !1385
  %i.bz = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ca, ptr noundef nonnull align 8 dereferenceable(64) %i.bz, i64 64, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 72
  %i.cc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 72 ; 2 uses
  %i.cd = add nsw i64 %.012.i.i.i.i.i.i40, -1
  %i.ce = icmp samesign ugt i64 %.012.i.i.i.i.i.i40, 1
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29, !llvm.loop !99

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i39, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i39 ]
  %i.cf = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.cg = sub i64 %i.b, %i.cf                     ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, 0
  br i1 %i.ch, label %.lr.ph.preheader.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51

.lr.ph.preheader.i.i.i.i.i19.i32:                 ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  %i.ci = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.cj = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.ck = sub i64 %i.ci, %i.cj
  %i.cl = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.ck
  %i.cm = udiv exact i64 %i.cg, 72
  br label %.lr.ph.i.i.i.i.i20.i33

.lr.ph.i.i.i.i.i20.i33:                           ; preds = %.lr.ph.i.i.i.i.i20.i33, %.lr.ph.preheader.i.i.i.i.i19.i32
  %.012.i.i.i.i.i21.i34 = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 2 uses
  %.0811.i.i.i.i.i22.i35 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cl, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %.0910.i.i.i.i.i23.i36 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i20.i33 ], [ %.016.lcssa.i27, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %i.cn = load ptr, ptr %.0910.i.i.i.i.i23.i36, align 8, !tbaa !917
  store ptr %i.cn, ptr %.0811.i.i.i.i.i22.i35, align 8, !tbaa !1385
  %i.co = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cp, ptr noundef nonnull align 8 dereferenceable(64) %i.co, i64 64, i1 false)
  %i.cq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 72
  %i.cr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 72
  %i.cs = add nsw i64 %.012.i.i.i.i.i21.i34, -1
  %i.ct = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34, 1
  br i1 %i.ct, label %.lr.ph.i.i.i.i.i20.i33, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51, !llvm.loop !99

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51: ; preds = %.lr.ph.i.i.i.i.i20.i33, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE1ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.i.i.i.i = alloca %"struct.llvm::object::Elf_Shdr_Base.2288", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond84 = or i1 %i.a, %i.b
  br i1 %or.cond84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8189 = phi i64 [ %4, %.lr.ph ], [ %i.ax, %tailrecurse ] ; 4 uses
  %.tr8088 = phi i64 [ %3, %.lr.ph ], [ %i.aw, %tailrecurse ] ; 4 uses
  %.tr7886 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr85 = phi ptr [ %0, %.lr.ph ], [ %i.av, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr8189, %.tr8088
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7886, i64 32
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %.tr85, i64 32
  %.0.copyload.i.i.i2.i.i = load i64, ptr %i.g, align 1
  %i.h = icmp ult i64 %.0.copyload.i.i.i.i.i, %.0.copyload.i.i.i2.i.i
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %.tr85, align 8, !tbaa !917
  %i.j = load ptr, ptr %.tr7886, align 8, !tbaa !917
  store ptr %i.j, ptr %.tr85, align 8, !tbaa !917
  store ptr %i.i, ptr %.tr7886, align 8, !tbaa !917
  %i.k = getelementptr inbounds nuw i8, ptr %.tr85, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.tr7886, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i.i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = icmp sgt i64 %.tr8088, %.tr8189
  %i.n = ptrtoint ptr %.tr7886 to i64             ; 4 uses
  br i1 %i.m, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.o = sdiv i64 %.tr8088, 2                     ; 2 uses
  %i.p = getelementptr inbounds [72 x i8], ptr %.tr85, i64 %i.o ; 2 uses
  %i.q = sub i64 %i.c, %i.n                       ; 2 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.s = udiv exact i64 %i.q, 72
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.t, align 1
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.s, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7886, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.u = lshr i64 %.016.i, 1                      ; 3 uses
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %.sroa.011.015.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.w, align 1
  %i.x = icmp ult i64 %.0.copyload.i.i.i.i.i.i, %.0.copyload.i.i.i2.i.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.z = xor i64 %i.u, -1
  %i.aa = add nsw i64 %.016.i, %i.z
  %.sroa.011.1.i = select i1 %i.x, ptr %i.y, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.x, i64 %i.aa, i64 %i.u     ; 2 uses
  %i.ab = icmp sgt i64 %.1.i, 0
  br i1 %i.ab, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit.loopexit, !llvm.loop !100

_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.sroa.011.1.i to i64
  br label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE1ELb1EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit

end_hunk_1
begin_hunk_2_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_:bb.a
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa66) ; 2 uses
  %.idx61 = mul nsw i64 %.sroa.speculated, 48
  %i.aw = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa, i64 %.idx61 ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond24.i16 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond24.i16, label %.lr.ph.i34, label %.critedge.i17

.lr.ph.i34:                                       ; preds = %._crit_edge, %bb.h
  %.027.i35 = phi ptr [ %i.bl, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.020.026.i36 = phi ptr [ %.sroa.020.1.i41, %bb.h ], [ %.sroa.051.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.016.025.i37 = phi ptr [ %.sroa.016.1.i40, %bb.h ], [ %i.aw, %._crit_edge ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 24
  %.0.copyload.i.i.i.i.i.i38 = load i32, ptr %i.az, align 1
  %i.ba = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i38)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 24
  %.0.copyload.i.i.i2.i.i.i39 = load i32, ptr %i.bb, align 1
  %i.bc = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i39)
  %i.bd = icmp ult i32 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.027.i35, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i34
  %i.bf = load ptr, ptr %.sroa.016.025.i37, align 8, !tbaa !917
  store ptr %i.bf, ptr %.027.i35, align 8, !tbaa !1430
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bg, i64 40, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34
  %i.bi = load ptr, ptr %.sroa.020.026.i36, align 8, !tbaa !917
  store ptr %i.bi, ptr %.027.i35, align 8, !tbaa !1430
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.be, ptr noundef nonnull align 8 dereferenceable(40) %i.bj, i64 40, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.016.1.i40 = phi ptr [ %i.bh, %bb.f ], [ %.sroa.016.025.i37, %bb.g ] ; 3 uses
  %.sroa.020.1.i41 = phi ptr [ %.sroa.020.026.i36, %bb.f ], [ %i.bk, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.027.i35, i64 48 ; 2 uses
  %i.bm = icmp ne ptr %.sroa.020.1.i41, %i.aw
  %i.bn = icmp ne ptr %.sroa.016.1.i40, %1
  %or.cond.i42 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond.i42, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !5449

.critedge.i17:                                    ; preds = %bb.h, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.016.1.i40, %bb.h ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.051.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i41, %bb.h ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bo = ptrtoint ptr %i.aw to i64
  %i.bp = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21

.lr.ph.preheader.i.i.i.i.i.i29:                   ; preds = %.critedge.i17
  %i.bs = udiv exact i64 %i.bq, 48
  br label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %.lr.ph.i.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i31 = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i.i32 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i30 ], [ %.0.lcssa.i20, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %.0910.i.i.i.i.i.i33 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i30 ], [ %.sroa.020.0.lcssa.i19, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %i.bt = load ptr, ptr %.0910.i.i.i.i.i.i33, align 8, !tbaa !917
  store ptr %i.bt, ptr %.0811.i.i.i.i.i.i32, align 8, !tbaa !1430
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bv, ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 40, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 48
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 48 ; 2 uses
  %i.by = add nsw i64 %.012.i.i.i.i.i.i31, -1
  %i.bz = icmp samesign ugt i64 %.012.i.i.i.i.i.i31, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21, !llvm.loop !116

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21: ; preds = %.lr.ph.i.i.i.i.i.i30, %.critedge.i17
  %.08.lcssa.i.i.i.i.i.i22 = phi ptr [ %.0.lcssa.i20, %.critedge.i17 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i30 ]
  %i.ca = ptrtoint ptr %.sroa.016.0.lcssa.i18 to i64
  %i.cb = sub i64 %i.b, %i.ca                     ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43

.lr.ph.preheader.i.i.i.i.i10.i24:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  %i.cd = udiv exact i64 %i.cb, 48
  br label %.lr.ph.i.i.i.i.i11.i25

.lr.ph.i.i.i.i.i11.i25:                           ; preds = %.lr.ph.i.i.i.i.i11.i25, %.lr.ph.preheader.i.i.i.i.i10.i24
  %.012.i.i.i.i.i12.i26 = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i11.i25 ], [ %i.cd, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 2 uses
  %.0811.i.i.i.i.i13.i27 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i11.i25 ], [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %.0910.i.i.i.i.i14.i28 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i11.i25 ], [ %.sroa.016.0.lcssa.i18, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %i.ce = load ptr, ptr %.0910.i.i.i.i.i14.i28, align 8, !tbaa !917
  store ptr %i.ce, ptr %.0811.i.i.i.i.i13.i27, align 8, !tbaa !1430
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 48
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 48
  %i.cj = add nsw i64 %.012.i.i.i.i.i12.i26, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i11.i25, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43, !llvm.loop !116

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i11.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 48                  ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 48
  %.idx56 = mul nsw i64 %3, 96
  %.not57 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.030.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 5 uses
  %.01629.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.0.028.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01629.i, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.h, align 1
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.030.i, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.j, align 1
  %i.k = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i)
  %i.l = icmp ult i32 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %.01629.i, align 8, !tbaa !917
  store ptr %i.n, ptr %.sroa.0.028.i, align 8, !tbaa !1430
  %i.o = getelementptr inbounds nuw i8, ptr %.01629.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i64 40, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.01629.i, i64 48
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.030.i, align 8, !tbaa !917
  store ptr %i.q, ptr %.sroa.0.028.i, align 8, !tbaa !1430
  %i.r = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.117.i = phi ptr [ %i.p, %bb.c ], [ %.01629.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.030.i, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 48 ; 2 uses
  %i.u = icmp ne ptr %.1.i, %i.f
  %i.v = icmp ne ptr %.117.i, %i.g
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5451

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.t, %bb.e ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 2 uses
  %i.x = ptrtoint ptr %i.f to i64
  %i.y = ptrtoint ptr %.0.lcssa.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i
  %i.ab = udiv exact i64 %i.z, 48
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !917
  store ptr %i.ac, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1430
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 40, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.ah = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, !llvm.loop !116

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.aj = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ak = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.016.lcssa.i to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i
  %i.ar = udiv exact i64 %i.ap, 48
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i20.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i20.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i20.i ], [ %.016.lcssa.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !917
  store ptr %i.as, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !1430
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.au, ptr noundef nonnull align 8 dereferenceable(40) %i.at, i64 40, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 48
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 48 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i, !llvm.loop !116

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i20.i
  %4 = ptrtoint ptr %i.aw to i64
  br label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit: ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.aj, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i ]
  %i.az = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.aj
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 %i.az ; 2 uses
  %i.bb = sub i64 %i.b, %i.an
  %i.bc = sdiv exact i64 %i.bb, 48                ; 2 uses
  %.not = icmp slt i64 %i.bc, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5452

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.bc, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = mul nsw i64 %.sroa.speculated, 48
  %i.bd = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.be = icmp ne i64 %.sroa.speculated, 0
  %i.bf = icmp ne ptr %i.bd, %1
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph.i43, label %._crit_edge.i25

.lr.ph.i43:                                       ; preds = %._crit_edge, %bb.h
  %.030.i44 = phi ptr [ %.1.i50, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01629.i45 = phi ptr [ %.117.i49, %bb.h ], [ %i.bd, %._crit_edge ] ; 5 uses
  %.sroa.0.028.i46 = phi ptr [ %i.bt, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 24
  %.0.copyload.i.i.i.i.i.i47 = load i32, ptr %i.bh, align 1
  %i.bi = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i47)
  %i.bj = getelementptr inbounds nuw i8, ptr %.030.i44, i64 24
  %.0.copyload.i.i.i2.i.i.i48 = load i32, ptr %i.bj, align 1
  %i.bk = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i48)
  %i.bl = icmp ult i32 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i43
  %i.bn = load ptr, ptr %.01629.i45, align 8, !tbaa !917
  store ptr %i.bn, ptr %.sroa.0.028.i46, align 8, !tbaa !1430
  %i.bo = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.bo, i64 40, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 48
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i43
  %i.bq = load ptr, ptr %.030.i44, align 8, !tbaa !917
  store ptr %i.bq, ptr %.sroa.0.028.i46, align 8, !tbaa !1430
  %i.br = getelementptr inbounds nuw i8, ptr %.030.i44, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bm, ptr noundef nonnull align 8 dereferenceable(40) %i.br, i64 40, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.030.i44, i64 48
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i49 = phi ptr [ %i.bp, %bb.f ], [ %.01629.i45, %bb.g ] ; 3 uses
  %.1.i50 = phi ptr [ %.030.i44, %bb.f ], [ %i.bs, %bb.g ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 48 ; 2 uses
  %i.bu = icmp ne ptr %.1.i50, %i.bd
  %i.bv = icmp ne ptr %.117.i49, %1
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph.i43, label %._crit_edge.i25, !llvm.loop !5451

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.bt, %bb.h ] ; 4 uses
  %.016.lcssa.i27 = phi ptr [ %i.bd, %._crit_edge ], [ %.117.i49, %bb.h ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i50, %bb.h ] ; 2 uses
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %._crit_edge.i25
  %i.cb = udiv exact i64 %i.bz, 48
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i40 = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i39 ], [ %i.cb, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.0811.i.i.i.i.i.i41 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %.0910.i.i.i.i.i.i42 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i39 ], [ %.0.lcssa.i28, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %i.cc = load ptr, ptr %.0910.i.i.i.i.i.i42, align 8, !tbaa !917
  store ptr %i.cc, ptr %.0811.i.i.i.i.i.i41, align 8, !tbaa !1430
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %i.cd, i64 40, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 48
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 48 ; 2 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i.i40, -1
  %i.ci = icmp samesign ugt i64 %.012.i.i.i.i.i.i40, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29, !llvm.loop !116

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i39, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i39 ]
  %i.cj = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.ck = sub i64 %i.b, %i.cj                     ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.preheader.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51

.lr.ph.preheader.i.i.i.i.i19.i32:                 ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  %i.cm = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.cn = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.co
  %i.cq = udiv exact i64 %i.ck, 48
  br label %.lr.ph.i.i.i.i.i20.i33

.lr.ph.i.i.i.i.i20.i33:                           ; preds = %.lr.ph.i.i.i.i.i20.i33, %.lr.ph.preheader.i.i.i.i.i19.i32
  %.012.i.i.i.i.i21.i34 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cq, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 2 uses
  %.0811.i.i.i.i.i22.i35 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cp, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %.0910.i.i.i.i.i23.i36 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.i33 ], [ %.016.lcssa.i27, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %i.cr = load ptr, ptr %.0910.i.i.i.i.i23.i36, align 8, !tbaa !917
  store ptr %i.cr, ptr %.0811.i.i.i.i.i22.i35, align 8, !tbaa !1430
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ct, ptr noundef nonnull align 8 dereferenceable(40) %i.cs, i64 40, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 48
  %i.cw = add nsw i64 %.012.i.i.i.i.i21.i34, -1
  %i.cx = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i20.i33, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51, !llvm.loop !116

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51: ; preds = %.lr.ph.i.i.i.i.i20.i33, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb0EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.i.i.i.i = alloca %"struct.llvm::object::Elf_Shdr_Base.2294", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond84 = or i1 %i.a, %i.b
  br i1 %or.cond84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8189 = phi i64 [ %4, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr8088 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr7886 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr85 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr8189, %.tr8088
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7886, i64 24
  %.0.copyload.i.i.i.i.i = load i32, ptr %i.f, align 1
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.tr85, i64 24
  %.0.copyload.i.i.i2.i.i = load i32, ptr %i.h, align 1
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i)
  %i.j = icmp ult i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.tr85, align 8, !tbaa !917
  %i.l = load ptr, ptr %.tr7886, align 8, !tbaa !917
  store ptr %i.l, ptr %.tr85, align 8, !tbaa !917
  store ptr %i.k, ptr %.tr7886, align 8, !tbaa !917
  %i.m = getelementptr inbounds nuw i8, ptr %.tr85, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr7886, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.m, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.n, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.n, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %.tr8088, %.tr8189
  %i.p = ptrtoint ptr %.tr7886 to i64             ; 4 uses
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.q = sdiv i64 %.tr8088, 2                     ; 2 uses
  %i.r = getelementptr inbounds [48 x i8], ptr %.tr85, i64 %i.q ; 2 uses
  %i.s = sub i64 %i.c, %i.p                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.u = udiv exact i64 %i.s, 48
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %.0.copyload.i.i.i2.i.i.i = load i32, ptr %i.v, align 1
  %i.w = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i2.i.i.i)
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7886, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb0EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.x = lshr i64 %.016.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sroa.011.015.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %.0.copyload.i.i.i.i.i.i = load i32, ptr %i.z, align 1
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i.i.i.i)
  %i.ab = icmp ult i32 %i.aa, %i.w                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.ad = xor i64 %i.x, -1
  %i.ae = add nsw i64 %.016.i, %i.ad
  %.sroa.011.1.i = select i1 %i.ab, ptr %i.ac, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.ab, i64 %i.ae, i64 %i.x    ; 2 uses
  %i.af = icmp sgt i64 %.1.i, 0
end_hunk_2
begin_hunk_3_@_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_lNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_:bb.a
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa66) ; 2 uses
  %.idx61 = mul nsw i64 %.sroa.speculated, 72
  %i.aw = getelementptr inbounds i8, ptr %.sroa.051.0.lcssa, i64 %.idx61 ; 5 uses
  %i.ax = icmp ne i64 %.sroa.speculated, 0
  %i.ay = icmp ne ptr %i.aw, %1
  %or.cond24.i16 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond24.i16, label %.lr.ph.i34, label %.critedge.i17

.lr.ph.i34:                                       ; preds = %._crit_edge, %bb.h
  %.027.i35 = phi ptr [ %i.bl, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 4 uses
  %.sroa.020.026.i36 = phi ptr [ %.sroa.020.1.i41, %bb.h ], [ %.sroa.051.0.lcssa, %._crit_edge ] ; 5 uses
  %.sroa.016.025.i37 = phi ptr [ %.sroa.016.1.i40, %bb.h ], [ %i.aw, %._crit_edge ] ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 32
  %.0.copyload.i.i.i.i.i.i38 = load i64, ptr %i.az, align 1
  %i.ba = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i38)
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 32
  %.0.copyload.i.i.i2.i.i.i39 = load i64, ptr %i.bb, align 1
  %i.bc = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i2.i.i.i39)
  %i.bd = icmp ult i64 %i.ba, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %.027.i35, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i34
  %i.bf = load ptr, ptr %.sroa.016.025.i37, align 8, !tbaa !917
  store ptr %i.bf, ptr %.027.i35, align 8, !tbaa !1477
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.bg, i64 64, i1 false)
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.016.025.i37, i64 72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i34
  %i.bi = load ptr, ptr %.sroa.020.026.i36, align 8, !tbaa !917
  store ptr %i.bi, ptr %.027.i35, align 8, !tbaa !1477
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.bj, i64 64, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.020.026.i36, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.016.1.i40 = phi ptr [ %i.bh, %bb.f ], [ %.sroa.016.025.i37, %bb.g ] ; 3 uses
  %.sroa.020.1.i41 = phi ptr [ %.sroa.020.026.i36, %bb.f ], [ %i.bk, %bb.g ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.027.i35, i64 72 ; 2 uses
  %i.bm = icmp ne ptr %.sroa.020.1.i41, %i.aw
  %i.bn = icmp ne ptr %.sroa.016.1.i40, %1
  %or.cond.i42 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond.i42, label %.lr.ph.i34, label %.critedge.i17, !llvm.loop !5835

.critedge.i17:                                    ; preds = %bb.h, %._crit_edge
  %.sroa.016.0.lcssa.i18 = phi ptr [ %i.aw, %._crit_edge ], [ %.sroa.016.1.i40, %bb.h ] ; 2 uses
  %.sroa.020.0.lcssa.i19 = phi ptr [ %.sroa.051.0.lcssa, %._crit_edge ], [ %.sroa.020.1.i41, %bb.h ] ; 2 uses
  %.0.lcssa.i20 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.bl, %bb.h ] ; 2 uses
  %i.bo = ptrtoint ptr %i.aw to i64
  %i.bp = ptrtoint ptr %.sroa.020.0.lcssa.i19 to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = icmp sgt i64 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.i.i.i.i.i.i29, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21

.lr.ph.preheader.i.i.i.i.i.i29:                   ; preds = %.critedge.i17
  %i.bs = udiv exact i64 %i.bq, 72
  br label %.lr.ph.i.i.i.i.i.i30

.lr.ph.i.i.i.i.i.i30:                             ; preds = %.lr.ph.i.i.i.i.i.i30, %.lr.ph.preheader.i.i.i.i.i.i29
  %.012.i.i.i.i.i.i31 = phi i64 [ %i.by, %.lr.ph.i.i.i.i.i.i30 ], [ %i.bs, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 2 uses
  %.0811.i.i.i.i.i.i32 = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i30 ], [ %.0.lcssa.i20, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %.0910.i.i.i.i.i.i33 = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.i30 ], [ %.sroa.020.0.lcssa.i19, %.lr.ph.preheader.i.i.i.i.i.i29 ] ; 3 uses
  %i.bt = load ptr, ptr %.0910.i.i.i.i.i.i33, align 8, !tbaa !917
  store ptr %i.bt, ptr %.0811.i.i.i.i.i.i32, align 8, !tbaa !1477
  %i.bu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bv, ptr noundef nonnull align 8 dereferenceable(64) %i.bu, i64 64, i1 false)
  %i.bw = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i33, i64 72
  %i.bx = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i32, i64 72 ; 2 uses
  %i.by = add nsw i64 %.012.i.i.i.i.i.i31, -1
  %i.bz = icmp samesign ugt i64 %.012.i.i.i.i.i.i31, 1
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i30, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21, !llvm.loop !133

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21: ; preds = %.lr.ph.i.i.i.i.i.i30, %.critedge.i17
  %.08.lcssa.i.i.i.i.i.i22 = phi ptr [ %.0.lcssa.i20, %.critedge.i17 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i30 ]
  %i.ca = ptrtoint ptr %.sroa.016.0.lcssa.i18 to i64
  %i.cb = sub i64 %i.b, %i.ca                     ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.lr.ph.preheader.i.i.i.i.i10.i24, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43

.lr.ph.preheader.i.i.i.i.i10.i24:                 ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  %i.cd = udiv exact i64 %i.cb, 72
  br label %.lr.ph.i.i.i.i.i11.i25

.lr.ph.i.i.i.i.i11.i25:                           ; preds = %.lr.ph.i.i.i.i.i11.i25, %.lr.ph.preheader.i.i.i.i.i10.i24
  %.012.i.i.i.i.i12.i26 = phi i64 [ %i.cj, %.lr.ph.i.i.i.i.i11.i25 ], [ %i.cd, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 2 uses
  %.0811.i.i.i.i.i13.i27 = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i11.i25 ], [ %.08.lcssa.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %.0910.i.i.i.i.i14.i28 = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i11.i25 ], [ %.sroa.016.0.lcssa.i18, %.lr.ph.preheader.i.i.i.i.i10.i24 ] ; 3 uses
  %i.ce = load ptr, ptr %.0910.i.i.i.i.i14.i28, align 8, !tbaa !917
  store ptr %i.ce, ptr %.0811.i.i.i.i.i13.i27, align 8, !tbaa !1477
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cg, ptr noundef nonnull align 8 dereferenceable(64) %i.cf, i64 64, i1 false)
  %i.ch = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i14.i28, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i13.i27, i64 72
  %i.cj = add nsw i64 %.012.i.i.i.i.i12.i26, -1
  %i.ck = icmp samesign ugt i64 %.012.i.i.i.i.i12.i26, 1
  br i1 %i.ck, label %.lr.ph.i.i.i.i.i11.i25, label %_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43, !llvm.loop !133

_ZSt12__move_mergeIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_NS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit43: ; preds = %.lr.ph.i.i.i.i.i11.i25, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESE_ET0_T_SK_SJ_.exit.i21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt17__merge_sort_loopIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEElNSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SZ_T1_T2_(ptr noundef %0, ptr noundef %1, ptr %2, i64 noundef %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = shl nsw i64 %3, 1                        ; 2 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = sdiv exact i64 %i.d, 72                  ; 2 uses
  %.not65 = icmp slt i64 %i.e, %i.a
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.idx = mul nsw i64 %3, 72
  %.idx56 = mul nsw i64 %3, 144
  %.not57 = icmp eq i64 %3, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit
  %.sroa.022.067 = phi ptr [ %2, %.lr.ph ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.066 = phi ptr [ %0, %.lr.ph ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %.066, i64 %.idx ; 4 uses
  %i.g = getelementptr inbounds i8, ptr %.066, i64 %.idx56 ; 4 uses
  br i1 %.not57, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.e
  %.030.i = phi ptr [ %.1.i, %bb.e ], [ %.066, %bb.b ] ; 5 uses
  %.01629.i = phi ptr [ %.117.i, %bb.e ], [ %i.f, %bb.b ] ; 5 uses
  %.sroa.0.028.i = phi ptr [ %i.t, %bb.e ], [ %.sroa.022.067, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01629.i, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.h, align 1
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.j, align 1
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i2.i.i.i)
  %i.l = icmp ult i64 %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr %.01629.i, align 8, !tbaa !917
  store ptr %i.n, ptr %.sroa.0.028.i, align 8, !tbaa !1477
  %i.o = getelementptr inbounds nuw i8, ptr %.01629.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.o, i64 64, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.01629.i, i64 72
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = load ptr, ptr %.030.i, align 8, !tbaa !917
  store ptr %i.q, ptr %.sroa.0.028.i, align 8, !tbaa !1477
  %i.r = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.030.i, i64 72
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.117.i = phi ptr [ %i.p, %bb.c ], [ %.01629.i, %bb.d ] ; 3 uses
  %.1.i = phi ptr [ %.030.i, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i, i64 72 ; 2 uses
  %i.u = icmp ne ptr %.1.i, %i.f
  %i.v = icmp ne ptr %.117.i, %i.g
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !5837

._crit_edge.i:                                    ; preds = %bb.e, %bb.b
  %.sroa.0.0.lcssa.i = phi ptr [ %.sroa.022.067, %bb.b ], [ %i.t, %bb.e ] ; 4 uses
  %.016.lcssa.i = phi ptr [ %i.f, %bb.b ], [ %.117.i, %bb.e ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %.066, %bb.b ], [ %.1.i, %bb.e ] ; 2 uses
  %i.x = ptrtoint ptr %i.f to i64
  %i.y = ptrtoint ptr %.0.lcssa.i to i64
  %i.z = sub i64 %i.x, %i.y                       ; 2 uses
  %i.aa = icmp sgt i64 %i.z, 0
  br i1 %i.aa, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %._crit_edge.i
  %i.ab = udiv exact i64 %i.z, 72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi i64 [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.ab, %.lr.ph.preheader.i.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.0910.i.i.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i ], [ %.0.lcssa.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ac = load ptr, ptr %.0910.i.i.i.i.i.i, align 8, !tbaa !917
  store ptr %i.ac, ptr %.0811.i.i.i.i.i.i, align 8, !tbaa !1477
  %i.ad = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 8 dereferenceable(64) %i.ad, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i, i64 72
  %i.ag = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i, i64 72 ; 2 uses
  %i.ah = add nsw i64 %.012.i.i.i.i.i.i, -1
  %i.ai = icmp samesign ugt i64 %.012.i.i.i.i.i.i, 1
  br i1 %i.ai, label %.lr.ph.i.i.i.i.i.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, !llvm.loop !133

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.08.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i, %._crit_edge.i ], [ %i.ag, %.lr.ph.i.i.i.i.i.i ]
  %i.aj = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i to i64 ; 3 uses
  %i.ak = ptrtoint ptr %.sroa.0.0.lcssa.i to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i, i64 %i.al ; 2 uses
  %i.an = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.ao = ptrtoint ptr %.016.lcssa.i to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = icmp sgt i64 %i.ap, 0
  br i1 %i.aq, label %.lr.ph.preheader.i.i.i.i.i19.i, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

.lr.ph.preheader.i.i.i.i.i19.i:                   ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i
  %i.ar = udiv exact i64 %i.ap, 72
  br label %.lr.ph.i.i.i.i.i20.i

.lr.ph.i.i.i.i.i20.i:                             ; preds = %.lr.ph.i.i.i.i.i20.i, %.lr.ph.preheader.i.i.i.i.i19.i
  %.012.i.i.i.i.i21.i = phi i64 [ %i.ax, %.lr.ph.i.i.i.i.i20.i ], [ %i.ar, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 2 uses
  %.0811.i.i.i.i.i22.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i.i20.i ], [ %i.am, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %.0910.i.i.i.i.i23.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i20.i ], [ %.016.lcssa.i, %.lr.ph.preheader.i.i.i.i.i19.i ] ; 3 uses
  %i.as = load ptr, ptr %.0910.i.i.i.i.i23.i, align 8, !tbaa !917
  store ptr %i.as, ptr %.0811.i.i.i.i.i22.i, align 8, !tbaa !1477
  %i.at = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.au, ptr noundef nonnull align 8 dereferenceable(64) %i.at, i64 64, i1 false)
  %i.av = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i, i64 72 ; 2 uses
  %i.ax = add nsw i64 %.012.i.i.i.i.i21.i, -1
  %i.ay = icmp samesign ugt i64 %.012.i.i.i.i.i21.i, 1
  br i1 %i.ay, label %.lr.ph.i.i.i.i.i20.i, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i, !llvm.loop !133

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i: ; preds = %.lr.ph.i.i.i.i.i20.i
  %4 = ptrtoint ptr %i.aw to i64
  br label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit: ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i
  %.08.lcssa.i.i.i.i.i18.i = phi i64 [ %i.aj, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i ], [ %4, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit24.loopexit.i ]
  %i.az = sub i64 %.08.lcssa.i.i.i.i.i18.i, %i.aj
  %i.ba = getelementptr inbounds i8, ptr %i.am, i64 %i.az ; 2 uses
  %i.bb = sub i64 %i.b, %i.an
  %i.bc = sdiv exact i64 %i.bb, 72                ; 2 uses
  %.not = icmp slt i64 %i.bc, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !5838

._crit_edge:                                      ; preds = %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 3 uses
  %.sroa.022.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.ba, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ] ; 2 uses
  %.lcssa63 = phi i64 [ %i.e, %bb.a ], [ %i.bc, %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit ]
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %3, i64 %.lcssa63) ; 2 uses
  %.idx58 = mul nsw i64 %.sroa.speculated, 72
  %i.bd = getelementptr inbounds i8, ptr %.0.lcssa, i64 %.idx58 ; 5 uses
  %i.be = icmp ne i64 %.sroa.speculated, 0
  %i.bf = icmp ne ptr %i.bd, %1
  %i.bg = and i1 %i.be, %i.bf
  br i1 %i.bg, label %.lr.ph.i43, label %._crit_edge.i25

.lr.ph.i43:                                       ; preds = %._crit_edge, %bb.h
  %.030.i44 = phi ptr [ %.1.i50, %bb.h ], [ %.0.lcssa, %._crit_edge ] ; 5 uses
  %.01629.i45 = phi ptr [ %.117.i49, %bb.h ], [ %i.bd, %._crit_edge ] ; 5 uses
  %.sroa.0.028.i46 = phi ptr [ %i.bt, %bb.h ], [ %.sroa.022.0.lcssa, %._crit_edge ] ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 32
  %.0.copyload.i.i.i.i.i.i47 = load i64, ptr %i.bh, align 1
  %i.bi = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i47)
  %i.bj = getelementptr inbounds nuw i8, ptr %.030.i44, i64 32
  %.0.copyload.i.i.i2.i.i.i48 = load i64, ptr %i.bj, align 1
  %i.bk = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i2.i.i.i48)
  %i.bl = icmp ult i64 %i.bi, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i43
  %i.bn = load ptr, ptr %.01629.i45, align 8, !tbaa !917
  store ptr %i.bn, ptr %.sroa.0.028.i46, align 8, !tbaa !1477
  %i.bo = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.bo, i64 64, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %.01629.i45, i64 72
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i43
  %i.bq = load ptr, ptr %.030.i44, align 8, !tbaa !917
  store ptr %i.bq, ptr %.sroa.0.028.i46, align 8, !tbaa !1477
  %i.br = getelementptr inbounds nuw i8, ptr %.030.i44, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bm, ptr noundef nonnull align 8 dereferenceable(64) %i.br, i64 64, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %.030.i44, i64 72
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117.i49 = phi ptr [ %i.bp, %bb.f ], [ %.01629.i45, %bb.g ] ; 3 uses
  %.1.i50 = phi ptr [ %.030.i44, %bb.f ], [ %i.bs, %bb.g ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i46, i64 72 ; 2 uses
  %i.bu = icmp ne ptr %.1.i50, %i.bd
  %i.bv = icmp ne ptr %.117.i49, %1
  %i.bw = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %i.bw, label %.lr.ph.i43, label %._crit_edge.i25, !llvm.loop !5837

._crit_edge.i25:                                  ; preds = %bb.h, %._crit_edge
  %.sroa.0.0.lcssa.i26 = phi ptr [ %.sroa.022.0.lcssa, %._crit_edge ], [ %i.bt, %bb.h ] ; 4 uses
  %.016.lcssa.i27 = phi ptr [ %i.bd, %._crit_edge ], [ %.117.i49, %bb.h ] ; 2 uses
  %.0.lcssa.i28 = phi ptr [ %.0.lcssa, %._crit_edge ], [ %.1.i50, %bb.h ] ; 2 uses
  %i.bx = ptrtoint ptr %i.bd to i64
  %i.by = ptrtoint ptr %.0.lcssa.i28 to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.preheader.i.i.i.i.i.i38, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29

.lr.ph.preheader.i.i.i.i.i.i38:                   ; preds = %._crit_edge.i25
  %i.cb = udiv exact i64 %i.bz, 72
  br label %.lr.ph.i.i.i.i.i.i39

.lr.ph.i.i.i.i.i.i39:                             ; preds = %.lr.ph.i.i.i.i.i.i39, %.lr.ph.preheader.i.i.i.i.i.i38
  %.012.i.i.i.i.i.i40 = phi i64 [ %i.ch, %.lr.ph.i.i.i.i.i.i39 ], [ %i.cb, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 2 uses
  %.0811.i.i.i.i.i.i41 = phi ptr [ %i.cg, %.lr.ph.i.i.i.i.i.i39 ], [ %.sroa.0.0.lcssa.i26, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %.0910.i.i.i.i.i.i42 = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i.i39 ], [ %.0.lcssa.i28, %.lr.ph.preheader.i.i.i.i.i.i38 ] ; 3 uses
  %i.cc = load ptr, ptr %.0910.i.i.i.i.i.i42, align 8, !tbaa !917
  store ptr %i.cc, ptr %.0811.i.i.i.i.i.i41, align 8, !tbaa !1477
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 8
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ce, ptr noundef nonnull align 8 dereferenceable(64) %i.cd, i64 64, i1 false)
  %i.cf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i42, i64 72
  %i.cg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i41, i64 72 ; 2 uses
  %i.ch = add nsw i64 %.012.i.i.i.i.i.i40, -1
  %i.ci = icmp samesign ugt i64 %.012.i.i.i.i.i.i40, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i39, label %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29, !llvm.loop !133

_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29: ; preds = %.lr.ph.i.i.i.i.i.i39, %._crit_edge.i25
  %.08.lcssa.i.i.i.i.i.i30 = phi ptr [ %.sroa.0.0.lcssa.i26, %._crit_edge.i25 ], [ %i.cg, %.lr.ph.i.i.i.i.i.i39 ]
  %i.cj = ptrtoint ptr %.016.lcssa.i27 to i64
  %i.ck = sub i64 %i.b, %i.cj                     ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.preheader.i.i.i.i.i19.i32, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51

.lr.ph.preheader.i.i.i.i.i19.i32:                 ; preds = %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  %i.cm = ptrtoint ptr %.08.lcssa.i.i.i.i.i.i30 to i64
  %i.cn = ptrtoint ptr %.sroa.0.0.lcssa.i26 to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = getelementptr inbounds i8, ptr %.sroa.0.0.lcssa.i26, i64 %i.co
  %i.cq = udiv exact i64 %i.ck, 72
  br label %.lr.ph.i.i.i.i.i20.i33

.lr.ph.i.i.i.i.i20.i33:                           ; preds = %.lr.ph.i.i.i.i.i20.i33, %.lr.ph.preheader.i.i.i.i.i19.i32
  %.012.i.i.i.i.i21.i34 = phi i64 [ %i.cw, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cq, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 2 uses
  %.0811.i.i.i.i.i22.i35 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i20.i33 ], [ %i.cp, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %.0910.i.i.i.i.i23.i36 = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i20.i33 ], [ %.016.lcssa.i27, %.lr.ph.preheader.i.i.i.i.i19.i32 ] ; 3 uses
  %i.cr = load ptr, ptr %.0910.i.i.i.i.i23.i36, align 8, !tbaa !917
  store ptr %i.cr, ptr %.0811.i.i.i.i.i22.i35, align 8, !tbaa !1477
  %i.cs = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ct, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, i64 64, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23.i36, i64 72
  %i.cv = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22.i35, i64 72
  %i.cw = add nsw i64 %.012.i.i.i.i.i21.i34, -1
  %i.cx = icmp samesign ugt i64 %.012.i.i.i.i.i21.i34, 1
  br i1 %i.cx, label %.lr.ph.i.i.i.i.i20.i33, label %_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51, !llvm.loop !133

_ZSt12__move_mergeIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEENSD_5__ops15_Iter_comp_iterIZNS2_15RewriteInstance17getOutputSectionsIS9_EESF_INS5_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESZ_SO_SO_SO_SO_SZ_T1_.exit51: ; preds = %.lr.ph.i.i.i.i.i20.i33, %_ZSt4moveIPSt4pairIPN4llvm4bolt13BinarySectionENS1_6object13Elf_Shdr_ImplINS5_7ELFTypeILNS1_10endiannessE0ELb1EEEEEEN9__gnu_cxx17__normal_iteratorISC_St6vectorISB_SaISB_EEEEET0_T_SK_SJ_.exit.i29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__merge_without_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElNS0_5__ops15_Iter_comp_iterIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEEvSO_SO_SO_SZ_SZ_T1_(ptr %0, ptr %1, ptr %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #3 comdat {
bb.a:
  %.sroa.0.i.i.i.i = alloca %"struct.llvm::object::Elf_Shdr_Base.2300", align 8 ; 4 uses
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond84 = or i1 %i.a, %i.b
  br i1 %or.cond84, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8189 = phi i64 [ %4, %.lr.ph ], [ %i.bd, %tailrecurse ] ; 4 uses
  %.tr8088 = phi i64 [ %3, %.lr.ph ], [ %i.bc, %tailrecurse ] ; 4 uses
  %.tr7886 = phi ptr [ %1, %.lr.ph ], [ %.sroa.0.0, %tailrecurse ] ; 9 uses
  %.tr85 = phi ptr [ %0, %.lr.ph ], [ %i.bb, %tailrecurse ] ; 9 uses
  %i.d = add nsw i64 %.tr8189, %.tr8088
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.tr7886, i64 32
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.f, align 1
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %.tr85, i64 32
  %.0.copyload.i.i.i2.i.i = load i64, ptr %i.h, align 1
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i2.i.i)
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %.tr85, align 8, !tbaa !917
  %i.l = load ptr, ptr %.tr7886, align 8, !tbaa !917
  store ptr %i.l, ptr %.tr85, align 8, !tbaa !917
  store ptr %i.k, ptr %.tr7886, align 8, !tbaa !917
  %i.m = getelementptr inbounds nuw i8, ptr %.tr85, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.tr7886, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.n, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0.i.i.i.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.o = icmp sgt i64 %.tr8088, %.tr8189
  %i.p = ptrtoint ptr %.tr7886 to i64             ; 4 uses
  br i1 %i.o, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit53

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.q = sdiv i64 %.tr8088, 2                     ; 2 uses
  %i.r = getelementptr inbounds [72 x i8], ptr %.tr85, i64 %i.q ; 2 uses
  %i.s = sub i64 %i.c, %i.p                       ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i, label %_ZSt13__lower_boundIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEESD_NS0_5__ops14_Iter_comp_valIZNS4_15RewriteInstance17getOutputSectionsISB_EESF_INS7_13ELFObjectFileIT_E8Elf_ShdrESaISQ_EEPSP_RSF_IjSaIjEEEUlRKSO_RKT0_E_EEESO_SO_SO_S11_T1_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.u = udiv exact i64 %i.s, 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %.0.copyload.i.i.i2.i.i.i = load i64, ptr %i.v, align 1
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i2.i.i.i)
  br label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i
  %.016.i = phi i64 [ %i.u, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %.sroa.011.015.i = phi ptr [ %.tr7886, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.lr.ph.i ], [ %.sroa.011.1.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPSt4pairIPN4llvm4bolt13BinarySectionENS3_6object13Elf_Shdr_ImplINS7_7ELFTypeILNS3_10endiannessE0ELb1EEEEEESt6vectorISD_SaISD_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i ] ; 2 uses
  %i.x = lshr i64 %.016.i, 1                      ; 3 uses
  %i.y = getelementptr inbounds nuw [72 x i8], ptr %.sroa.011.015.i, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %.0.copyload.i.i.i.i.i.i = load i64, ptr %i.z, align 1
  %i.aa = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i.i.i.i.i.i)
  %i.ab = icmp ult i64 %i.aa, %i.w                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  %i.ad = xor i64 %i.x, -1
  %i.ae = add nsw i64 %.016.i, %i.ad
  %.sroa.011.1.i = select i1 %i.ab, ptr %i.ac, ptr %.sroa.011.015.i ; 3 uses
  %.1.i = select i1 %i.ab, i64 %i.ae, i64 %i.x    ; 2 uses
  %i.af = icmp sgt i64 %.1.i, 0
end_hunk_3
