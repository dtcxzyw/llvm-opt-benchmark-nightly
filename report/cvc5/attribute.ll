inline.NumInlined: 4254
inline.NumDeleted: 1875
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_:bb.a
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
  %i.p = and i64 %indvar.a, 1
  %lcmp.mod.not.not.a = icmp eq i64 %i.p, 0
  br i1 %lcmp.mod.not.not.a, label %.lr.ph.i.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.i.prol.loopexit

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
  %i.aa = icmp eq i64 %indvar.a, 0
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
  %indvar.next.a = add i64 %indvar.a, 1
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
  %indvar = phi i64 [ %indvar.next, %bb.n ], [ 0, %.lr.ph.i26 ] ; 3 uses
  %.sroa.08.021.i27 = phi ptr [ %.sroa.08.0.i36, %bb.n ], [ %.sroa.08.018.i24, %.lr.ph.i26 ] ; 9 uses
  %.pn20.i28 = phi ptr [ %.sroa.08.021.i27, %bb.n ], [ %0, %.lr.ph.i26 ] ; 7 uses
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
  br i1 %i.cg, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i43, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i43: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i42, %bb.j
  %.sroa.5.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 40
  %.sroa.5.0.copyload.i45 = load i64, ptr %.sroa.5.0..sroa_idx.i44, align 8
  %i.ch = ptrtoint ptr %.sroa.08.021.i27 to i64
  %i.ci = sub i64 %i.ch, %i.b                     ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.preheader.i.i.i.i.i.i47, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i46

.lr.ph.preheader.i.i.i.i.i.i47:                   ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i43
  %2 = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 48
  %3 = udiv exact i64 %i.ci, 24                   ; 2 uses
  %4 = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %4, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.preheader.i.i.i.i.i.i47.a, label %.lr.ph.i.i.i.i.i.i48.prol.loopexit

.lr.ph.preheader.i.i.i.i.i.i47.a:                 ; preds = %.lr.ph.preheader.i.i.i.i.i.i47
  %5 = getelementptr inbounds i8, ptr %.sroa.08.021.i27, i64 -24 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 24 ; 2 uses
  %7 = load i64, ptr %5, align 8, !tbaa !113
  store i64 %7, ptr %6, align 8, !tbaa !335
  %8 = getelementptr inbounds i8, ptr %.sroa.08.021.i27, i64 -16
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 32
  store ptr %9, ptr %10, align 8, !tbaa !336
  %11 = getelementptr inbounds i8, ptr %.sroa.08.021.i27, i64 -8
  %12 = load i64, ptr %11, align 8, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 40
  store i64 %12, ptr %i.ck, align 8, !tbaa !308
  %13 = add nsw i64 %3, -1
  br label %.lr.ph.i.i.i.i.i.i48.prol.loopexit

.lr.ph.i.i.i.i.i.i48.prol.loopexit:               ; preds = %.lr.ph.preheader.i.i.i.i.i.i47.a, %.lr.ph.preheader.i.i.i.i.i.i47
  %.010.i.i.i.i.i.i49.unr = phi i64 [ %3, %.lr.ph.preheader.i.i.i.i.i.i47 ], [ %13, %.lr.ph.preheader.i.i.i.i.i.i47.a ]
  %.069.i.i.i.i.i.i50.unr = phi ptr [ %2, %.lr.ph.preheader.i.i.i.i.i.i47 ], [ %6, %.lr.ph.preheader.i.i.i.i.i.i47.a ]
  %.078.i.i.i.i.i.i51.unr = phi ptr [ %.sroa.08.021.i27, %.lr.ph.preheader.i.i.i.i.i.i47 ], [ %5, %.lr.ph.preheader.i.i.i.i.i.i47.a ]
  %14 = icmp eq i64 %indvar, 0
  br i1 %14, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i46, label %.lr.ph.i.i.i.i.i.i48

.lr.ph.i.i.i.i.i.i48:                             ; preds = %.lr.ph.i.i.i.i.i.i48.prol.loopexit, %.lr.ph.i.i.i.i.i.i48
  %.010.i.i.i.i.i.i49 = phi i64 [ %i.cu, %.lr.ph.i.i.i.i.i.i48 ], [ %.010.i.i.i.i.i.i49.unr, %.lr.ph.i.i.i.i.i.i48.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i.i50 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i48 ], [ %.069.i.i.i.i.i.i50.unr, %.lr.ph.i.i.i.i.i.i48.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i.i51 = phi ptr [ %i.cl, %.lr.ph.i.i.i.i.i.i48 ], [ %.078.i.i.i.i.i.i51.unr, %.lr.ph.i.i.i.i.i.i48.prol.loopexit ] ; 6 uses
  %15 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51, i64 -24
  %16 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50, i64 -24
  %17 = load i64, ptr %15, align 8, !tbaa !113
  store i64 %17, ptr %16, align 8, !tbaa !335
  %18 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51, i64 -16
  %19 = load ptr, ptr %18, align 8, !tbaa !52
  %20 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50, i64 -16
  store ptr %19, ptr %20, align 8, !tbaa !336
  %21 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51, i64 -8
  %22 = load i64, ptr %21, align 8, !tbaa !113
  %23 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50, i64 -8
  store i64 %22, ptr %23, align 8, !tbaa !308
  %i.cl = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51, i64 -48 ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50, i64 -48 ; 2 uses
  %i.cn = load i64, ptr %i.cl, align 8, !tbaa !113
  store i64 %i.cn, ptr %i.cm, align 8, !tbaa !335
  %i.co = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51, i64 -40
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !52
  %i.cq = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50, i64 -40
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !336
  %i.cr = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i51, i64 -32
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !113
  %i.ct = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i50, i64 -32
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !308
  %i.cu = add nsw i64 %.010.i.i.i.i.i.i49, -2
  %24 = icmp sgt i64 %.010.i.i.i.i.i.i49, 2
  br i1 %24, label %.lr.ph.i.i.i.i.i.i48, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i46, !llvm.loop !341

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i46: ; preds = %.lr.ph.i.i.i.i.i.i48.prol.loopexit, %.lr.ph.i.i.i.i.i.i48, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread.i43
  store i64 %.sroa.0.0.copyload.pre.i29, ptr %0, align 8, !tbaa !335
  store ptr %i.cb, ptr %i.by, align 8, !tbaa !336
  store i64 %.sroa.5.0.copyload.i45, ptr %i.bz, align 8, !tbaa !308
  br label %bb.n

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i30: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.i42, %bb.k
  %.sroa.7.0..sroa_idx.i.i31 = getelementptr inbounds nuw i8, ptr %.pn20.i28, i64 40
  %.sroa.7.0.copyload.i.i32 = load i64, ptr %.sroa.7.0..sroa_idx.i.i31, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i39, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i30
  %.sroa.06.0.i.i33 = phi ptr [ %.sroa.08.021.i27, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread17.i30 ], [ %.sroa.0.0.i.i34, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i39 ] ; 9 uses
  %.sroa.0.0.i.i34 = getelementptr inbounds i8, ptr %.sroa.06.0.i.i33, i64 -24 ; 3 uses
  %i.cv = getelementptr inbounds i8, ptr %.sroa.06.0.i.i33, i64 -16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !295 ; 3 uses
  %i.cx = icmp ult ptr %i.cb, %i.cw
  br i1 %i.cx, label %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i40, label %bb.m

._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i40: ; preds = %bb.l
  %.pre.i.i41 = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i39

bb.m:                                             ; preds = %bb.l
  %i.cy = icmp eq ptr %i.cb, %i.cw
  br i1 %i.cy, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i38, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i38: ; preds = %bb.m
  %i.cz = load i64, ptr %.sroa.0.0.i.i34, align 8, !tbaa !307 ; 2 uses
  %i.da = icmp ult i64 %.sroa.0.0.copyload.pre.i29, %i.cz
  br i1 %i.da, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i39, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i35

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread.i.i39: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i38, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i40
  %i.db = phi i64 [ %.pre.i.i41, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.thread_crit_edge.i.i40 ], [ %i.cz, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i38 ]
  store i64 %i.db, ptr %.sroa.06.0.i.i33, align 8, !tbaa !335
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i33, i64 8
  store ptr %i.cw, ptr %i.dc, align 8, !tbaa !336
  %i.dd = getelementptr inbounds i8, ptr %.sroa.06.0.i.i33, i64 -8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !113
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i33, i64 16
  store i64 %i.de, ptr %i.df, align 8, !tbaa !308
  br label %bb.l, !llvm.loop !342

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i35: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclIST_NSJ_IPST_SM_IST_SaIST_EEEEEEbRSR_T0_.exit.i.i38, %bb.m
  store i64 %.sroa.0.0.copyload.pre.i29, ptr %.sroa.06.0.i.i33, align 8, !tbaa !335
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i33, i64 8
  store ptr %i.cb, ptr %i.dg, align 8, !tbaa !336
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i33, i64 16
  store i64 %.sroa.7.0.copyload.i.i32, ptr %i.dh, align 8, !tbaa !308
  br label %bb.n

bb.n:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i35, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEESE_ET0_T_SG_SF_.exit.i46
  %.sroa.08.0.i36 = getelementptr inbounds nuw i8, ptr %.sroa.08.021.i27, i64 24 ; 2 uses
  %.not.i37 = icmp eq ptr %.sroa.08.0.i36, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i37, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit, label %bb.j, !llvm.loop !343

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit: ; preds = %bb.n, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops14_Val_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_.exit.i17, %.preheader.i23, %bb.i, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair.177") align 8 %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37
  %.039 = phi i64 [ %i.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37 ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.039, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 3 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [24 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !295  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !295  ; 3 uses
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = icmp eq ptr %i.j, %i.l
  br i1 %i.n, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit: ; preds = %bb.b
  %i.o = load i64, ptr %i.f, align 8, !tbaa !307
  %i.p = load i64, ptr %i.h, align 8, !tbaa !307
  %i.q = icmp ult i64 %i.o, %i.p
  %cond.fr = freeze i1 %i.q
  br i1 %cond.fr, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread: ; preds = %.lr.ph, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread
  %i.r = phi ptr [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread ], [ %i.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit ], [ %i.j, %bb.b ]
  %i.s = phi i64 [ %i.g, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread ], [ %i.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit ], [ %i.e, %bb.b ] ; 4 uses
  %i.t = getelementptr inbounds [24 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds [24 x i8], ptr %0, i64 %.039 ; 3 uses
  %i.v = load i64, ptr %i.t, align 8, !tbaa !113
  store i64 %i.v, ptr %i.u, align 8, !tbaa !335
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.r, ptr %i.w, align 8, !tbaa !336
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load i64, ptr %i.x, align 8, !tbaa !113
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i64 %i.y, ptr %i.z, align 8, !tbaa !308
  %i.aa = icmp slt i64 %i.s, %i.b
  br i1 %i.aa, label %.lr.ph, label %._crit_edge, !llvm.loop !345

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.s, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread37 ] ; 5 uses
  %i.ab = and i64 %2, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.ad = add nsw i64 %2, -2
  %i.ae = ashr exact i64 %i.ad, 1
  %i.af = icmp eq i64 %.0.lcssa, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = shl nsw i64 %.0.lcssa, 1
  %i.ah = or disjoint i64 %i.ag, 1                ; 2 uses
  %i.ai = getelementptr inbounds [24 x i8], ptr %0, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !113
  store i64 %i.ak, ptr %i.aj, align 8, !tbaa !335
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.am, ptr %i.an, align 8, !tbaa !336
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !308
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ah, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.035.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i64, ptr %.sroa.3.0..sroa_idx, align 8
  %i.ar = icmp sgt i64 %.1, %1
  br i1 %i.ar, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i
  %.019.i = phi i64 [ %.0920.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i ], [ %.1, %bb.e ] ; 4 uses
  %.0920.in.i = add nsw i64 %.019.i, -1
  %.0920.i = sdiv i64 %.0920.in.i, 2              ; 4 uses
  %i.as = getelementptr inbounds [24 x i8], ptr %0, i64 %.0920.i ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !295 ; 3 uses
  %i.av = icmp ult ptr %i.au, %.sroa.2.0.copyload
  br i1 %i.av, label %._ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread_crit_edge.i, label %bb.f

._ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread_crit_edge.i: ; preds = %.lr.ph.i
  %.pre.i = load i64, ptr %i.as, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i

bb.f:                                             ; preds = %.lr.ph.i
  %i.aw = icmp eq ptr %i.au, %.sroa.2.0.copyload
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.i: ; preds = %bb.f
  %i.ax = load i64, ptr %i.as, align 8, !tbaa !307 ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %.sroa.035.0.copyload
  br i1 %i.ay, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.i, %._ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread_crit_edge.i
  %i.az = phi i64 [ %.pre.i, %._ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread_crit_edge.i ], [ %i.ax, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.i ]
  %i.ba = getelementptr inbounds [24 x i8], ptr %0, i64 %.019.i ; 3 uses
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !335
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store ptr %i.au, ptr %i.bb, align 8, !tbaa !336
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !113
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !308
  %i.bf = icmp sgt i64 %.0920.i, %1
  br i1 %i.bf, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_RT2_.exit, !llvm.loop !346

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEElS9_NS0_5__ops14_Iter_comp_valIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_T0_S13_T1_RT2_.exit: ; preds = %bb.f, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i, %bb.e
  %.0.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.019.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.i ], [ %.0920.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEEST_EEbSR_RT0_.exit.thread.i ], [ %.019.i, %bb.f ]
  %i.bg = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa.i ; 3 uses
  store i64 %.sroa.035.0.copyload, ptr %i.bg, align 8, !tbaa !335
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %.sroa.2.0.copyload, ptr %i.bh, align 8, !tbaa !336
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i64 %.sroa.3.0.copyload, ptr %i.bi, align 8, !tbaa !308
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEEmESt6vectorIS9_SaIS9_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashImE6insertINSJ_8IteratorISJ_NSt8__detail14_Node_iteratorIS2_IKS7_NSJ_5IdMapEELb0ELb1EEENS1_IPS2_ImmESB_ISS_SaISS_EEEEEEEEvT_SY_EUlRKS9_S10_E_EEEvSY_SY_SY_SY_T0_(ptr %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !295  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !295  ; 8 uses
  %i.e = icmp ult ptr %i.b, %i.d
  br i1 %i.e, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %i.b, %i.d
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit: ; preds = %bb.b
  %i.g = load i64, ptr %1, align 8, !tbaa !307
  %i.h = load i64, ptr %2, align 8, !tbaa !307
  %i.i = icmp ult i64 %i.g, %i.h
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread30

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread: ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !295  ; 5 uses
  %i.l = icmp ult ptr %i.d, %i.k
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread_crit_edge, label %bb.c

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread_crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread
  %.pre39 = load i64, ptr %2, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread
  %i.m = icmp eq ptr %i.d, %i.k
  br i1 %i.m, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26: ; preds = %bb.c
  %i.n = load i64, ptr %2, align 8, !tbaa !307    ; 2 uses
  %i.o = load i64, ptr %3, align 8, !tbaa !307
  %i.p = icmp ult i64 %i.n, %i.o
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread31

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread_crit_edge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26
  %i.q = phi i64 [ %.pre39, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit.thread._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread_crit_edge ], [ %i.n, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26 ]
  %i.r = load i64, ptr %0, align 8, !tbaa !113
  store i64 %i.q, ptr %0, align 8, !tbaa !113
  store i64 %i.r, ptr %2, align 8, !tbaa !113
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !52
  store ptr %i.d, ptr %i.s, align 8, !tbaa !52
  store ptr %i.t, ptr %i.c, align 8, !tbaa !52
  br label %bb.g

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread31: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26
  %i.u = icmp ult ptr %i.b, %i.k
  br i1 %i.u, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread31._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit27.thread_crit_edge, label %bb.d

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread31._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit27.thread_crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashImE6insertINS7_8IteratorIS7_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS7_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSC_ImmESt6vectorISK_SaISK_EEEEEEEEvT_SR_EUlRKSC_ISC_ImSE_EmESV_E_EclINSJ_IPST_SM_IST_SaIST_EEEES12_EEbSR_T0_.exit26.thread31
end_hunk_0
begin_hunk_1_@_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashISA_E6insertINSL_8IteratorISL_NSt8__detail14_Node_iteratorIS2_IKS7_NSL_5IdMapEELb0ELb1EEENS1_IPS2_ImSA_ESD_ISU_SaISU_EEEEEEEEvT_S10_EUlRKSB_S12_E_EEEvS10_S10_S10_S10_T0_:bb.a
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread

bb.e:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit26.thread51
  %i.aa = icmp eq ptr %i.b, %i.k
  %.pre57 = load i64, ptr %1, align 8, !tbaa !113 ; 2 uses
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread52

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27: ; preds = %bb.e
  %i.ab = load i64, ptr %3, align 8, !tbaa !384   ; 2 uses
  %i.ac = icmp ult i64 %.pre57, %i.ab
  br i1 %i.ac, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread52

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit26.thread51._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread_crit_edge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27
  %i.ad = phi i64 [ %.pre58, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit26.thread51._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread_crit_edge ], [ %i.ab, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27 ]
  %i.ae = load i64, ptr %0, align 8, !tbaa !113
  store i64 %i.ad, ptr %0, align 8, !tbaa !113
  store i64 %i.ae, ptr %3, align 8, !tbaa !113
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  store ptr %i.k, ptr %i.af, align 8, !tbaa !52
  store ptr %i.ag, ptr %i.j, align 8, !tbaa !52
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !156 ; 3 uses
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i28 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not.i.i.i.i.i28, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i29, !prof !139

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i29: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread
  store ptr %i.ak, ptr %i.ah, align 8, !tbaa !156
  %.pre.i.i.i.i30 = load ptr, ptr %i.ai, align 8, !tbaa !156
  %i.al = icmp eq ptr %.pre.i.i.i.i30, %i.aj
  br i1 %i.al, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %bb.f, !prof !412

bb.f:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i29
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !156
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread52: ; preds = %bb.e, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27
  %i.am = load i64, ptr %0, align 8, !tbaa !113
  store i64 %.pre57, ptr %0, align 8, !tbaa !113
  store i64 %i.am, ptr %1, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !52
  store ptr %i.b, ptr %i.an, align 8, !tbaa !52
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !156 ; 3 uses
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i32 = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i.i.i32, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i33, !prof !139

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i33: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread52
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !156
  %.pre.i.i.i.i34 = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.at = icmp eq ptr %.pre.i.i.i.i34, %i.ar
  br i1 %i.at, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %bb.g, !prof !412

bb.g:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i33
  store ptr %i.ar, ptr %i.aq, align 8, !tbaa !156
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !382 ; 5 uses
  %i.aw = icmp ult ptr %i.b, %i.av
  br i1 %i.aw, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread_crit_edge, label %bb.h

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread_crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50
  %.pre56 = load i64, ptr %1, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50
  %i.ax = icmp eq ptr %i.b, %i.av
  br i1 %i.ax, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36: ; preds = %bb.h
  %i.ay = load i64, ptr %1, align 8, !tbaa !384   ; 2 uses
  %i.az = load i64, ptr %3, align 8, !tbaa !384
  %i.ba = icmp ult i64 %i.ay, %i.az
  br i1 %i.ba, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread_crit_edge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36
  %i.bb = phi i64 [ %.pre56, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread50._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread_crit_edge ], [ %i.ay, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36 ]
  %i.bc = load i64, ptr %0, align 8, !tbaa !113
  store i64 %i.bb, ptr %0, align 8, !tbaa !113
  store i64 %i.bc, ptr %1, align 8, !tbaa !113
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !52
  store ptr %i.b, ptr %i.bd, align 8, !tbaa !52
  store ptr %i.be, ptr %i.a, align 8, !tbaa !52
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bh = load ptr, ptr %i.bf, align 8, !tbaa !156 ; 3 uses
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i37 = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i.i.i.i37, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i38, !prof !139

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i38: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread
  store ptr %i.bi, ptr %i.bf, align 8, !tbaa !156
  %.pre.i.i.i.i39 = load ptr, ptr %i.bg, align 8, !tbaa !156
  %i.bj = icmp eq ptr %.pre.i.i.i.i39, %i.bh
  br i1 %i.bj, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %bb.i, !prof !412

bb.i:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i38
  store ptr %i.bh, ptr %i.bg, align 8, !tbaa !156
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36
  %i.bk = icmp ult ptr %i.d, %i.av
  br i1 %i.bk, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread_crit_edge, label %bb.j

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread_crit_edge: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53
  %.pre55 = load i64, ptr %3, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread

bb.j:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53
  %i.bl = icmp eq ptr %i.d, %i.av
  %.pre = load i64, ptr %2, align 8, !tbaa !113   ; 2 uses
  br i1 %i.bl, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41: ; preds = %bb.j
  %i.bm = load i64, ptr %3, align 8, !tbaa !384   ; 2 uses
  %i.bn = icmp ult i64 %.pre, %i.bm
  br i1 %i.bn, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread54

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread_crit_edge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41
  %i.bo = phi i64 [ %.pre55, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread53._ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread_crit_edge ], [ %i.bm, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41 ]
  %i.bp = load i64, ptr %0, align 8, !tbaa !113
  store i64 %i.bo, ptr %0, align 8, !tbaa !113
  store i64 %i.bp, ptr %3, align 8, !tbaa !113
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !52
  store ptr %i.av, ptr %i.bq, align 8, !tbaa !52
  store ptr %i.br, ptr %i.au, align 8, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !156 ; 3 uses
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i42 = icmp eq ptr %i.bu, %i.bv
  br i1 %.not.i.i.i.i.i42, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i43, !prof !139

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i43: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !156
  %.pre.i.i.i.i44 = load ptr, ptr %i.bt, align 8, !tbaa !156
  %i.bw = icmp eq ptr %.pre.i.i.i.i44, %i.bu
  br i1 %i.bw, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %bb.k, !prof !412

bb.k:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i43
  store ptr %i.bu, ptr %i.bt, align 8, !tbaa !156
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread54: ; preds = %bb.j, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41
  %i.bx = load i64, ptr %0, align 8, !tbaa !113
  store i64 %.pre, ptr %0, align 8, !tbaa !113
  store i64 %i.bx, ptr %2, align 8, !tbaa !113
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !52
  store ptr %i.d, ptr %i.by, align 8, !tbaa !52
  store ptr %i.bz, ptr %i.c, align 8, !tbaa !52
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !156 ; 3 uses
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i46 = icmp eq ptr %i.cc, %i.cd
  br i1 %.not.i.i.i.i.i46, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i47, !prof !139

_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i47: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread54
  store ptr %i.cd, ptr %i.ca, align 8, !tbaa !156
  %.pre.i.i.i.i48 = load ptr, ptr %i.cb, align 8, !tbaa !156
  %i.ce = icmp eq ptr %.pre.i.i.i.i48, %i.cc
  br i1 %i.ce, label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit, label %bb.l, !prof !412

bb.l:                                             ; preds = %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i47
  store ptr %i.cc, ptr %i.cb, align 8, !tbaa !156
  br label %_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit

_ZSt9iter_swapIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEESG_EvT_T0_.exit: ; preds = %bb.l, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i47, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread54, %bb.k, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i43, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit41.thread, %bb.i, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i38, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit36.thread, %bb.g, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i33, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread52, %bb.f, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i29, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit27.thread, %bb.d, %_ZN4cvc58internal12NodeTemplateILb0EEaSERKS2_.exit.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit26.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairIS2_ImPN4cvc58internal4expr9NodeValueEENS4_12NodeTemplateILb0EEEESt6vectorISB_SaISB_EEEENS0_5__ops15_Iter_comp_iterIZNS5_4attr8AttrHashISA_E6insertINSL_8IteratorISL_NSt8__detail14_Node_iteratorIS2_IKS7_NSL_5IdMapEELb0ELb1EEENS1_IPS2_ImSA_ESD_ISU_SaISU_EEEEEEEEvT_S10_EUlRKSB_S12_E_EEEvS10_S10_T0_(ptr %0, ptr %1) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.08.019 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not20 = icmp eq ptr %.sroa.08.019, %1
  br i1 %.not20, label %.loopexit18, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = ptrtoint ptr %0 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit
  %indvar = phi i64 [ 0, %.lr.ph ], [ %indvar.next, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit ] ; 3 uses
  %.sroa.08.022 = phi ptr [ %.sroa.08.019, %.lr.ph ], [ %.sroa.08.0, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit ] ; 9 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.sroa.08.022, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit ] ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.pn21, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !382  ; 6 uses
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !382  ; 2 uses
  %i.h = icmp ult ptr %i.f, %i.g
  %.sroa.0.0.copyload.pre = load i64, ptr %.sroa.08.022, align 8 ; 4 uses
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %i.f, %i.g
  br i1 %i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread17

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit: ; preds = %bb.c
  %i.j = load i64, ptr %0, align 8, !tbaa !384
  %i.k = icmp ult i64 %.sroa.0.0.copyload.pre, %i.j
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread17

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread: ; preds = %bb.b, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %.pn21, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !156  ; 2 uses
  %i.n = ptrtoint ptr %.sroa.08.022 to i64
  %i.o = sub i64 %i.n, %i.c                       ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i.i.i.i, label %.loopexit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread
  %i.q = getelementptr inbounds nuw i8, ptr %.pn21, i64 48
  %i.r = udiv exact i64 %i.o, 24                  ; 2 uses
  %2 = and i64 %indvar, 1
  %lcmp.mod.not.not = icmp eq i64 %2, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.i.i.i.prol, label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.preheader.i.i.i.i.i
  %3 = getelementptr inbounds i8, ptr %.sroa.08.022, i64 -24 ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %.pn21, i64 24 ; 2 uses
  %5 = load i64, ptr %3, align 8, !tbaa !113
  store i64 %5, ptr %4, align 8, !tbaa !335
  %6 = getelementptr inbounds i8, ptr %.sroa.08.022, i64 -16
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  %8 = getelementptr inbounds nuw i8, ptr %.pn21, i64 32
  store ptr %7, ptr %8, align 8, !tbaa !336
  %9 = getelementptr inbounds i8, ptr %.sroa.08.022, i64 -8
  %10 = getelementptr inbounds nuw i8, ptr %.pn21, i64 40 ; 2 uses
  %11 = load ptr, ptr %10, align 8, !tbaa !156
  %12 = load ptr, ptr %9, align 8, !tbaa !156     ; 2 uses
  %.not.i.i.i.i.i.i.i.prol = icmp eq ptr %11, %12
  br i1 %.not.i.i.i.i.i.i.i.prol, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol, label %13, !prof !139

13:                                               ; preds = %.lr.ph.i.i.i.i.i.prol
  store ptr %12, ptr %10, align 8, !tbaa !156
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol: ; preds = %13, %.lr.ph.i.i.i.i.i.prol
  %14 = add nsw i64 %i.r, -1
  br label %.lr.ph.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i.unr = phi i64 [ %i.r, %.lr.ph.preheader.i.i.i.i.i ], [ %14, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol ]
  %.069.i.i.i.i.i.unr = phi ptr [ %i.q, %.lr.ph.preheader.i.i.i.i.i ], [ %4, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol ]
  %.078.i.i.i.i.i.unr = phi ptr [ %.sroa.08.022, %.lr.ph.preheader.i.i.i.i.i ], [ %3, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.prol ]
  %15 = icmp eq i64 %indvar, 0
  br i1 %15, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a
  %.010.i.i.i.i.i = phi i64 [ %i.ac, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a ], [ %.010.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %18, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a ], [ %.069.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %.078.i.i.i.i.i = phi ptr [ %17, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a ], [ %.078.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24
  %i.t = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24
  %i.u = load i64, ptr %i.s, align 8, !tbaa !113
  store i64 %i.u, ptr %i.t, align 8, !tbaa !335
  %i.v = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52
  %i.x = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !336
  %i.y = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.z = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !156
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i, label %16, !prof !139

16:                                               ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !156
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i: ; preds = %16, %.lr.ph.i.i.i.i.i
  %17 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -48 ; 2 uses
  %18 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -48 ; 2 uses
  %19 = load i64, ptr %17, align 8, !tbaa !113
  store i64 %19, ptr %18, align 8, !tbaa !335
  %20 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -40
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  %22 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -40
  store ptr %21, ptr %22, align 8, !tbaa !336
  %23 = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -32
  %24 = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -32 ; 2 uses
  %25 = load ptr, ptr %24, align 8, !tbaa !156
  %26 = load ptr, ptr %23, align 8, !tbaa !156    ; 2 uses
  %.not.i.i.i.i.i.i.i.1 = icmp eq ptr %25, %26
  br i1 %.not.i.i.i.i.i.i.i.1, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a, label %bb.d, !prof !139

bb.d:                                             ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i
  store ptr %26, ptr %24, align 8, !tbaa !156
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a: ; preds = %bb.d, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i
  %i.ac = add nsw i64 %.010.i.i.i.i.i, -2
  %i.ad = icmp sgt i64 %.010.i.i.i.i.i, 2
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i, label %.loopexit, !llvm.loop !416

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.i.i.i.i.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread
  store i64 %.sroa.0.0.copyload.pre, ptr %0, align 8, !tbaa !335
  store ptr %i.f, ptr %i.b, align 8, !tbaa !336
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !156
  %.not.i.i = icmp eq ptr %i.ae, %i.m
  br i1 %.not.i.i, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit, label %bb.e, !prof !139

bb.e:                                             ; preds = %.loopexit
  store ptr %i.m, ptr %i.d, align 8, !tbaa !156
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread17: ; preds = %bb.c, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %.pn21, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !156 ; 2 uses
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i: ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.backedge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread17
  %.sroa.08.0.i = phi ptr [ %.sroa.08.022, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclINSL_IPSV_SO_ISV_SaISV_EEEES14_EEbST_T0_.exit.thread17 ], [ %.sroa.0.0.i, %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.backedge ] ; 9 uses
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -24 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !382 ; 3 uses
  %i.aj = icmp ult ptr %i.f, %i.ai
  br i1 %i.aj, label %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread_crit_edge.i, label %bb.f

._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread_crit_edge.i: ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i
  %.pre.i = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread.i

bb.f:                                             ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i
  %i.ak = icmp eq ptr %i.f, %i.ai
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread11.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.i: ; preds = %bb.f
  %i.al = load i64, ptr %.sroa.0.0.i, align 8, !tbaa !384 ; 2 uses
  %i.am = icmp ult i64 %.sroa.0.0.copyload.pre, %i.al
  br i1 %i.am, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread11.i

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.i, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread_crit_edge.i
  %i.an = phi i64 [ %.pre.i, %._ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread_crit_edge.i ], [ %i.al, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.i ]
  store i64 %i.an, ptr %.sroa.08.0.i, align 8, !tbaa !335
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store ptr %i.ai, ptr %i.ao, align 8, !tbaa !336
  %i.ap = getelementptr inbounds i8, ptr %.sroa.08.0.i, i64 -8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !156
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !156 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.as
  br i1 %.not.i.i.i, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.backedge, label %bb.g, !prof !139

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread.i
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !156
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.backedge

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i.backedge: ; preds = %bb.g, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread.i
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit.i, !llvm.loop !385

_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread11.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.i, %bb.f
  store i64 %.sroa.0.0.copyload.pre, ptr %.sroa.08.0.i, align 8, !tbaa !335
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 8
  store ptr %i.f, ptr %i.at, align 8, !tbaa !336
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.08.0.i, i64 16 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !156
  %.not.i.i1.i = icmp eq ptr %i.av, %i.ag
  br i1 %.not.i.i1.i, label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit, label %bb.h, !prof !139

bb.h:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread11.i
  store ptr %i.ag, ptr %i.au, align 8, !tbaa !156
  br label %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit

_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit: ; preds = %bb.h, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIZN4cvc58internal4expr4attr8AttrHashINS3_12NodeTemplateILb0EEEE6insertINS9_8IteratorIS9_NSt8__detail14_Node_iteratorISt4pairIKPNS4_9NodeValueENS9_5IdMapEELb0ELb1EEENS_17__normal_iteratorIPSE_ImS8_ESt6vectorISM_SaISM_EEEEEEEEvT_ST_EUlRKSE_ISE_ImSG_ES8_ESX_E_EclISV_NSL_IPSV_SO_ISV_SaISV_EEEEEEbRST_T0_.exit.thread11.i, %bb.e, %.loopexit
  %.sroa.08.0 = getelementptr inbounds nuw i8, ptr %.sroa.08.022, i64 24 ; 2 uses
  %.not = icmp eq ptr %.sroa.08.0, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %.loopexit18, label %bb.b, !llvm.loop !417

.loopexit18:                                      ; preds = %_ZNSt4pairIS_ImPN4cvc58internal4expr9NodeValueEENS1_12NodeTemplateILb0EEEEaSEOS8_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE6rehashEm(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !347  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !233
  %i.f = add i64 %i.e, 1
  %i.g = uitofp i64 %i.f to double
  %i.h = load float, ptr %i.a, align 8, !tbaa !39
  %i.i = fpext float %i.h to double
  %i.j = fdiv double %i.g, %i.i
  %i.k = tail call double @llvm.ceil.f64(double %i.j)
  %i.l = fptoui double %i.k to i64
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.l)
  %i.m = tail call noundef i64 @_ZNKSt8__detail20_Prime_rehash_policy11_M_next_bktEm(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 noundef %.sroa.speculated) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !43
  %.not = icmp eq i64 %i.m, %i.o
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %i.m)
          to label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  %i.r = tail call ptr @__cxa_begin_catch(ptr %i.q) #24 ; 0 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !347
  invoke void @__cxa_rethrow() #25
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.s

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #23
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

bb.h:                                             ; preds = %bb.a
  store i64 %i.c, ptr %i.b, align 8, !tbaa !347
  br label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit

_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit: ; preds = %bb.b, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !139

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !418
  br label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !139

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #25
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #25
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #26 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKPN4cvc58internal4expr9NodeValueENS5_4attr8AttrHashINS4_12NodeTemplateILb0EEEE5IdMapEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !76   ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !76
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %.02530 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %i.i = load ptr, ptr %.02530, align 8, !tbaa !55 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.02530, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60   ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !76
  store ptr %i.o, ptr %.02530, align 8, !tbaa !55
  store ptr %.02530, ptr %i.g, align 8, !tbaa !76
  store ptr %i.g, ptr %i.m, align 8, !tbaa !60
  %i.p = load ptr, ptr %.02530, align 8, !tbaa !55
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.031
  store ptr %.02530, ptr %i.q, align 8, !tbaa !60
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !55
  store ptr %i.r, ptr %.02530, align 8, !tbaa !55
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !60
  store ptr %.02530, ptr %i.s, align 8, !tbaa !55
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.031, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !419

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !42     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !43
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #22
  br label %_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableIPN4cvc58internal4expr9NodeValueESt4pairIKS4_NS2_4attr8AttrHashINS1_12NodeTemplateILb0EEEE5IdMapEESaISD_ENSt8__detail10_Select1stESt8equal_toIS4_ENS7_20AttrBoolHashFunctionENSF_18_Mod_range_hashingENSF_20_Default_ranged_hashENSF_20_Prime_rehash_policyENSF_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !43
  store ptr %.0.i, ptr %0, align 8, !tbaa !42
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt8__detail9_Map_baseIPN4cvc58internal4expr9NodeValueESt4pairIKS5_NS3_4attr8AttrHashINS2_12NodeTemplateILb0EEEE5IdMapEESaISE_ENS_10_Select1stESt8equal_toIS5_ENS8_20AttrBoolHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::_Hashtable<cvc5::internal::expr::NodeValue *, std::pair<cvc5::internal::expr::NodeValue *const, cvc5::internal::expr::attr::AttrHash<cvc5::internal::NodeTemplate<false>>::IdMap>, std::allocator<std::pair<cvc5::internal::expr::NodeValue *const, cvc5::internal::expr::attr::AttrHash<cvc5::internal::NodeTemplate<false>>::IdMap>>, std::__detail::_Select1st, std::equal_to<cvc5::internal::expr::NodeValue *>, cvc5::internal::expr::attr::AttrBoolHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !52     ; 4 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 1099511627775              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = urem i64 %i.c, %i.e                      ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.f
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !60   ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !55   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !58
  %i.n = icmp eq i64 %i.c, %i.m
  %i.o = load ptr, ptr %i.k, align 8
  %i.p = icmp eq ptr %i.a, %i.o
  %i.q = select i1 %i.n, i1 %i.p, i1 false
  br i1 %i.q, label %.loopexit28, label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.s = icmp eq i64 %i.c, %i.y
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = icmp eq ptr %i.a, %i.t
  %i.v = select i1 %i.s, i1 %i.u, i1 false
end_hunk_1
