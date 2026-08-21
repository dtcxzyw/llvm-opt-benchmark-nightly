inline.NumInlined: 4254
inline.NumDeleted: 1875
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorISt4pairIS0_ImPN4cvc58internal4expr9NodeValueEEmESaIS7_EE19_M_range_initializeINS3_4attr8AttrHashImE8IteratorISD_NSt8__detail14_Node_iteratorIS0_IKS5_NSD_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS0_ImmES_ISN_SaISN_EEEEEEEEvT_ST_St20forward_iterator_tag:bb.a
.lr.ph.i.i.i.i3:                                  ; preds = %.lr.ph.i.i.i.preheader.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.cx = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.preheader.i.i.i.i ] ; 4 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !133 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !133
  %i.dc = icmp eq ptr %i.cz, %i.db
  br i1 %i.dc, label %.lr.ph.i.i.i.i.i.i.i, label %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.i.i.i.i, !llvm.loop !137

_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i3, %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.preheader.i.i.i.i, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit.thread.i.i.i.i
  %i.dd = phi ptr [ %i.cp, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.cp, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit.thread.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cz, %.lr.ph.i.i.i.i3 ] ; 2 uses
  %i.de = phi ptr [ null, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.ci, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit.thread.i.i.i.i ], [ %i.cx, %.lr.ph.i.i.i.i3 ], [ null, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.df = phi i8 [ 1, %.lr.ph.i.i.i.preheader.i.i.i.i ], [ %i.ch, %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit.thread.i.i.i.i ], [ %i.ch, %.lr.ph.i.i.i.i3 ], [ 1, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0815.i27.i.i.i, i64 24 ; 2 uses
  %i.dh = trunc i8 %i.df to i1
  %.not30.i.i.i.i = xor i1 %i.dh, true
  %i.di = icmp eq ptr %i.de, %.sroa.328.0.copyload
  %or.cond.i.i.i.i = select i1 %.not30.i.i.i.i, i1 %i.di, i1 false
  %.not.i.i.i.i = icmp eq ptr %i.dd, %.sroa.429.0.copyload
  %or.cond31.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %.not.i.i.i.i, i1 false
  br i1 %or.cond31.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN4cvc58internal4expr4attr8AttrHashImE8IteratorIS5_NSt8__detail14_Node_iteratorISt4pairIKPNS2_9NodeValueENS5_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS9_ImmESt6vectorISI_SaISI_EEEEEEPS9_IS9_ImSB_EmESQ_ET0_T_ST_SS_RSaIT1_E.exit, label %_ZNK4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEneERKSN_.exit.thread.i.i.i.i

_ZSt22__uninitialized_copy_aIN4cvc58internal4expr4attr8AttrHashImE8IteratorIS5_NSt8__detail14_Node_iteratorISt4pairIKPNS2_9NodeValueENS5_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS9_ImmESt6vectorISI_SaISI_EEEEEEPS9_IS9_ImSB_EmESQ_ET0_T_ST_SS_RSaIT1_E.exit: ; preds = %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.i.i.i.i, %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.us.i.i.i.i, %_ZNSt12_Vector_baseISt4pairIS0_ImPN4cvc58internal4expr9NodeValueEEmESaIS7_EE11_M_allocateEm.exit.thread126, %.lr.ph16.split.split.i.preheader.i.i.i, %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.us.thread.i.i.i.i
  %.08.lcssa.i.i.i.i = phi ptr [ %i.ce, %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.us.i.i.i.i ], [ null, %_ZNSt12_Vector_baseISt4pairIS0_ImPN4cvc58internal4expr9NodeValueEEmESaIS7_EE11_M_allocateEm.exit.thread126 ], [ %i.cb, %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.us.thread.i.i.i.i ], [ %i.bc, %.lr.ph16.split.split.i.preheader.i.i.i ], [ %i.dg, %_ZN4cvc58internal4expr4attr8AttrHashImE8IteratorIS4_NSt8__detail14_Node_iteratorISt4pairIKPNS1_9NodeValueENS4_5IdMapEELb0ELb1EEEN9__gnu_cxx17__normal_iteratorIPS8_ImmESt6vectorISH_SaISH_EEEEEppEv.exit.i.i.i.i ]
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.08.lcssa.i.i.i.i, ptr %i.dj, align 8, !tbaa !332
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.std::pair.177", align 8    ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_SY_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEESY_SY_SY_T0_.exit
  %i.h = icmp eq i64 %i.bc, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph56, !llvm.loop !333

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa52 = phi i64 [ %i.c, %.lr.ph ], [ %i.be, %bb.b ]
  %storemerge29.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.011.1.i.i, %bb.b ]
  %i.i = udiv exact i64 %.lcssa52, 24             ; 2 uses
  %i.j = add nsw i64 %i.i, -2
  %i.k = lshr i64 %i.j, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.08.i.i.i = phi i64 [ %i.k, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.l = getelementptr inbounds [24 x i8], ptr %0, i64 %.08.i.i.i
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_T2_(ptr %0, i64 noundef %.08.i.i.i, i64 noundef %i.i, ptr noundef nonnull byval(%"struct.std::pair.177") align 8 %i.l)
  %.not.i.i.i = icmp eq i64 %.08.i.i.i, 0
  %i.m = add nsw i64 %.08.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !334

.lr.ph.i9.i:                                      ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %storemerge29.lcssa, %.lr.ph.i9.i ], [ %i.o, %bb.d ] ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.p = load i64, ptr %0, align 8, !tbaa !113
  store i64 %i.p, ptr %i.o, align 8, !tbaa !335
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !52
  %i.r = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !336
  %i.s = load i64, ptr %i.n, align 8, !tbaa !113
  %i.t = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !308
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.u, %i.a                       ; 2 uses
  %i.w = sdiv exact i64 %i.v, 24
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull byval(%"struct.std::pair.177") align 8 %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.x = icmp sgt i64 %i.v, 24
  br i1 %i.x, label %bb.d, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_SY_T0_.exit, !llvm.loop !337

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2955 = phi ptr [ %.sroa.011.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.03054 = phi i64 [ %i.bc, %bb.b ], [ %2, %.lr.ph ]
  %i.y = phi i64 [ %i.be, %bb.b ], [ %i.c, %.lr.ph ]
  %i.z = udiv i64 %i.y, 48
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.z
  %i.ab = getelementptr inbounds i8, ptr %storemerge2955, i64 -24
  tail call void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_SY_SY_T0_(ptr %0, ptr nonnull %i.e, ptr %i.aa, ptr nonnull %i.ab)
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %.lr.ph56
  %.sroa.011.0.i.i = phi ptr [ %i.e, %.lr.ph56 ], [ %i.bb, %bb.i ]
  %.sroa.0.0.i.i = phi ptr [ %storemerge2955, %.lr.ph56 ], [ %.sroa.0.1.i.i, %bb.i ]
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !295 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i.i, %bb.e
  %.sroa.011.1.i.i = phi ptr [ %.sroa.011.0.i.i, %bb.e ], [ %i.ak, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i.i ] ; 13 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !295 ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.ac
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = icmp eq ptr %i.ae, %i.ac
  br i1 %i.ag, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread14.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i.i: ; preds = %bb.g
  %i.ah = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !307
  %i.ai = load i64, ptr %0, align 8, !tbaa !307
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread14.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i.i, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 24
  br label %bb.f, !llvm.loop !338

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread14.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i.i, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread14.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread14.i.i ], [ %.sroa.0.1.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i.backedge ] ; 4 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -24 ; 6 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !295 ; 3 uses
  %i.ao = icmp ult ptr %i.ac, %i.an
  br i1 %i.ao, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i.backedge, label %bb.h

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i
  %i.ap = icmp eq ptr %i.ac, %i.an
  br i1 %i.ap, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread15.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.i.i: ; preds = %bb.h
  %i.aq = load i64, ptr %0, align 8, !tbaa !307
  %i.ar = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !307
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i.backedge, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread15.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i.backedge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread.i.i, !llvm.loop !339

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread15.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.i.i, %bb.h
  %i.at = icmp ult ptr %.sroa.011.1.i.i, %.sroa.0.1.i.i
  br i1 %i.at, label %bb.i, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEESY_SY_SY_T0_.exit

bb.i:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread15.i.i
  %i.au = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -16
  %i.av = load i64, ptr %.sroa.011.1.i.i, align 8, !tbaa !113
  %i.aw = load i64, ptr %.sroa.0.1.i.i, align 8, !tbaa !113
  store i64 %i.aw, ptr %.sroa.011.1.i.i, align 8, !tbaa !113
  store i64 %i.av, ptr %.sroa.0.1.i.i, align 8, !tbaa !113
  store ptr %i.an, ptr %i.al, align 8, !tbaa !52
  store ptr %i.ae, ptr %i.au, align 8, !tbaa !52
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 16 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 2 uses
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !113
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !113
  store i64 %i.ba, ptr %i.ax, align 8, !tbaa !113
  store i64 %i.az, ptr %i.ay, align 8, !tbaa !113
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i, i64 24
  br label %bb.e, !llvm.loop !340

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEESY_SY_SY_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit8.thread15.i.i
  %i.bc = add nsw i64 %.03054, -1                 ; 3 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElNS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_T1_(ptr %.sroa.011.1.i.i, ptr %storemerge2955, i64 noundef %i.bc)
  %i.bd = ptrtoint ptr %.sroa.011.1.i.i to i64
  %i.be = sub i64 %i.bd, %i.a                     ; 3 uses
  %i.bf = icmp sgt i64 %i.be, 384
  br i1 %i.bf, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_SY_T0_.exit, !llvm.loop !333

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_SY_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEESY_SY_SY_T0_.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph.i, label %bb.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %indvar = phi i64 [ %indvar.next, %bb.f ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.08.021.i.idx = phi i64 [ %.sroa.08.021.i.add, %bb.f ], [ 24, %.lr.ph.i ] ; 3 uses
  %.pn20.i = phi ptr [ %.sroa.08.021.i.ptr, %bb.f ], [ %0, %.lr.ph.i ] ; 7 uses
  %.sroa.08.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.08.021.i.idx ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !295  ; 6 uses
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !295  ; 2 uses
  %i.j = icmp ult ptr %i.h, %i.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %.sroa.08.021.i.ptr, align 8 ; 4 uses
  br i1 %i.j, label %.lr.ph.preheader.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %i.h, %i.i
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i: ; preds = %bb.c
  %i.l = load i64, ptr %0, align 8, !tbaa !307
  %i.m = icmp ult i64 %.sroa.0.0.copyload.pre.i, %i.l
  br i1 %i.m, label %.lr.ph.preheader.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 48
  %i.o = udiv exact i64 %.sroa.08.021.i.idx, 24   ; 2 uses
  %i.p = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %i.p, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.preheader.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr, i64 -24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 24 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !113
  store i64 %i.s, ptr %i.r, align 8, !tbaa !335
  %i.t = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr, i64 -16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 32
  store ptr %i.u, ptr %i.v, align 8, !tbaa !336
  %i.w = getelementptr inbounds i8, ptr %.sroa.08.021.i.ptr, i64 -8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !113
  %i.y = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  store i64 %i.x, ptr %i.y, align 8, !tbaa !308
  %i.z = add nsw i64 %i.o, -1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i.i
  %.010.i.i.i.i.i.i.unr = phi i64 [ %i.o, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.z, %.lr.ph.i.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.i.unr = phi ptr [ %i.n, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.r, %.lr.ph.i.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.i.unr = phi ptr [ %.sroa.08.021.i.ptr, %.lr.ph.preheader.i.i.i.i.i.i ], [ %i.q, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.aa = icmp eq i64 %indvar, 0
  br i1 %i.aa, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %.010.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.069.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i.i.i ], [ %.078.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ab = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -24
  %i.ac = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -24
  %i.ad = load i64, ptr %i.ab, align 8, !tbaa !113
  store i64 %i.ad, ptr %i.ac, align 8, !tbaa !335
  %i.ae = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !52
  %i.ag = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -16
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !336
  %i.ah = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !113
  %i.aj = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !308
  %i.ak = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.al = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -48 ; 2 uses
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !113
  store i64 %i.am, ptr %i.al, align 8, !tbaa !335
  %i.an = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  %i.ap = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -40
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !336
  %i.aq = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -32
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !113
  %i.as = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -32
  store i64 %i.ar, ptr %i.as, align 8, !tbaa !308
  %i.at = add nsw i64 %.010.i.i.i.i.i.i, -2
  %i.au = icmp sgt i64 %.010.i.i.i.i.i.i, 2
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i, !llvm.loop !341

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  store i64 %.sroa.0.0.copyload.pre.i, ptr %0, align 8, !tbaa !335
  store ptr %i.h, ptr %i.e, align 8, !tbaa !336
  store i64 %.sroa.5.0.copyload.i, ptr %i.f, align 8, !tbaa !308
  br label %bb.f

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i, %bb.c
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 40
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i
  %.sroa.06.0.i.i = phi ptr [ %.sroa.08.021.i.ptr, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i ], [ %.sroa.0.0.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i ] ; 9 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -24 ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !295 ; 3 uses
  %i.ax = icmp ult ptr %i.h, %i.aw
  br i1 %i.ax, label %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i, label %bb.e

._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i: ; preds = %bb.d
  %.pre.i.i = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i

bb.e:                                             ; preds = %bb.d
  %i.ay = icmp eq ptr %i.h, %i.aw
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i: ; preds = %bb.e
  %i.az = load i64, ptr %.sroa.0.0.i.i, align 8, !tbaa !307 ; 2 uses
  %i.ba = icmp ult i64 %.sroa.0.0.copyload.pre.i, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i
  %i.bb = phi i64 [ %.pre.i.i, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i ], [ %i.az, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i ]
  store i64 %i.bb, ptr %.sroa.06.0.i.i, align 8, !tbaa !335
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  store ptr %i.aw, ptr %i.bc, align 8, !tbaa !336
  %i.bd = getelementptr inbounds i8, ptr %.sroa.06.0.i.i, i64 -8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !113
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  store i64 %i.be, ptr %i.bf, align 8, !tbaa !308
  br label %bb.d, !llvm.loop !342

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i, %bb.e
  store i64 %.sroa.0.0.copyload.pre.i, ptr %.sroa.06.0.i.i, align 8, !tbaa !335
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  store ptr %i.h, ptr %i.bg, align 8, !tbaa !336
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 16
  store i64 %.sroa.7.0.copyload.i.i, ptr %i.bh, align 8, !tbaa !308
  br label %bb.f

bb.f:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i
  %.sroa.08.021.i.add = add nuw nsw i64 %.sroa.08.021.i.idx, 24 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.08.021.i.add, 384
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, label %bb.b, !llvm.loop !343

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit: ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  %.not6.i = icmp eq ptr %i.bi, %1
  br i1 %.not6.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i17
  %.sroa.0.07.i = phi ptr [ %i.bw, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i17 ], [ %i.bi, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit ] ; 5 uses
  %.sroa.03.0.copyload.i.i = load i64, ptr %.sroa.0.07.i, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 16
  %.sroa.7.0.copyload.i.i14 = load i64, ptr %.sroa.7.0..sroa_idx.i.i13, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i20, %.lr.ph.i12
  %.sroa.06.0.i.i15 = phi ptr [ %.sroa.0.07.i, %.lr.ph.i12 ], [ %.sroa.0.0.i.i16, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i20 ] ; 9 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i15, i64 -24 ; 3 uses
  %i.bj = getelementptr inbounds i8, ptr %.sroa.06.0.i.i15, i64 -16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !295 ; 3 uses
  %i.bl = icmp ult ptr %.sroa.5.0.copyload.i.i, %i.bk
  br i1 %i.bl, label %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i21, label %bb.h

._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i21: ; preds = %bb.g
  %.pre.i.i22 = load i64, ptr %.sroa.0.0.i.i16, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i20

bb.h:                                             ; preds = %bb.g
  %i.bm = icmp eq ptr %.sroa.5.0.copyload.i.i, %i.bk
  br i1 %i.bm, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i19, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i17

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i19: ; preds = %bb.h
  %i.bn = load i64, ptr %.sroa.0.0.i.i16, align 8, !tbaa !307 ; 2 uses
  %i.bo = icmp ult i64 %.sroa.03.0.copyload.i.i, %i.bn
  br i1 %i.bo, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i20, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i17

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i20: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i19, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i21
  %i.bp = phi i64 [ %.pre.i.i22, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i21 ], [ %i.bn, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i19 ]
  store i64 %i.bp, ptr %.sroa.06.0.i.i15, align 8, !tbaa !335
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i15, i64 8
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !336
  %i.br = getelementptr inbounds i8, ptr %.sroa.06.0.i.i15, i64 -8
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !113
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i15, i64 16
  store i64 %i.bs, ptr %i.bt, align 8, !tbaa !308
  br label %bb.g, !llvm.loop !342

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i17: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i19, %bb.h
  store i64 %.sroa.03.0.copyload.i.i, ptr %.sroa.06.0.i.i15, align 8, !tbaa !335
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i15, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %i.bu, align 8, !tbaa !336
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i15, i64 16
  store i64 %.sroa.7.0.copyload.i.i14, ptr %i.bv, align 8, !tbaa !308
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i, i64 24 ; 2 uses
  %.not.i18 = icmp eq ptr %i.bw, %1
  br i1 %.not.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, label %.lr.ph.i12, !llvm.loop !344

bb.i:                                             ; preds = %bb.a
  %i.bx = icmp eq ptr %0, %1
  br i1 %i.bx, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, label %.preheader.i23

.preheader.i23:                                   ; preds = %bb.i
  %.sroa.08.018.i24 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not19.i25 = icmp eq ptr %.sroa.08.018.i24, %1
  br i1 %.not19.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i23
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %.lr.ph.i26
  %.sroa.08.021.i27 = phi ptr [ %.sroa.08.018.i24, %.lr.ph.i26 ], [ %.sroa.08.0.i36, %bb.n ] ; 6 uses
  %.pn20.i28 = phi ptr [ %0, %.lr.ph.i26 ], [ %.sroa.08.021.i27, %bb.n ] ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !295 ; 6 uses
  %i.cc = load ptr, ptr %i.by, align 8, !tbaa !295 ; 2 uses
  %i.cd = icmp ult ptr %i.cb, %i.cc
  %.sroa.0.0.copyload.pre.i29 = load i64, ptr %.sroa.08.021.i27, align 8 ; 4 uses
  br i1 %i.cd, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i43, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = icmp eq ptr %i.cb, %i.cc
  br i1 %i.ce, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i42, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i42: ; preds = %bb.k
  %i.cf = load i64, ptr %0, align 8, !tbaa !307
  %i.cg = icmp ult i64 %.sroa.0.0.copyload.pre.i29, %i.cf
end_hunk_0
