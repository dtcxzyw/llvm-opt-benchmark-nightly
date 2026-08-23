Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/nary_eltwise_layers?download=true
inline.NumInlined: 39348
inline.NumDeleted: 7373
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1191
loop-unroll.NumUnrolled: 1193
begin_hunk_0_@_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m:bb.a

bb.bq:                                            ; preds = %bb.bp
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !75
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #24
  br label %.body115

.body115:                                         ; preds = %bb.n, %bb.bq, %bb.bp
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %.pn78.pn, %bb.bq ], [ %.pn78.pn, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.it = load ptr, ptr %13, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i146, label %.body104, label %bb.br

bb.br:                                            ; preds = %.body115
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #24
  br label %.body104

.body104:                                         ; preds = %bb.k, %bb.br, %.body115
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn82.pn.pn, %bb.br ], [ %.pn82.pn.pn, %.body115 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.iz = load ptr, ptr %12, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i149, label %.body94, label %bb.bs

bb.bs:                                            ; preds = %.body104
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !75
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #24
  br label %.body94

.body94:                                          ; preds = %bb.h, %bb.bs, %.body104
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn82.pn.pn.pn, %bb.bs ], [ %.pn82.pn.pn.pn, %.body104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.jf = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i152, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.body94
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !89
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #24
  br label %.body

.body:                                            ; preds = %bb.bt, %.body94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS6_10opDispatchIiJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKiSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS6_10opDispatchIiJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKiSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE0_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !2522
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2653, !nonnull !359, !align !389
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  switch i64 %i.b, label %.thread40 [
    i64 1, label %bb.b
    i64 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2655, !nonnull !359, !align !389
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  switch i64 %i.e, label %.thread40 [
    i64 1, label %bb.c
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2656, !nonnull !359, !align !389
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %.thread40

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !370
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph54, label %.loopexit

.lr.ph54:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !2657, !nonnull !359, !align !389
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !286
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !2658, !nonnull !359, !align !389
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !286
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !2659, !nonnull !359, !align !389
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !286
  %i.w = sext i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit
  %indvars.iv77 = phi i64 [ %i.w, %.lr.ph54 ], [ %indvars.iv.next78, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv77
  %i.y = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv77
  %i.z = load i32, ptr %i.x, align 4, !tbaa !112
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !112 ; 4 uses
  %i.ab = srem i32 %i.z, %i.aa                    ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = icmp sgt i32 %i.aa, 0
  %or.cond.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %i.ab, 0
  %i.af = icmp slt i32 %i.aa, 0
  %or.cond3.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add nsw i32 %i.ab, %i.aa
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ag, %bb.g ], [ %i.ab, %bb.f ]
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv77
  store i32 %.0.i.i, ptr %i.ah, align 4, !tbaa !112
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !370
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next78, %i.aj
  br i1 %i.ak, label %bb.e, label %.loopexit, !llvm.loop !2660

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !2656, !nonnull !359, !align !389
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %.thread40

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !2658, !nonnull !359, !align !389
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !286
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !112
  %.fr57 = freeze i32 %i.as                       ; 6 uses
  %i.at = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !370
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !2657, !nonnull !359, !align !389
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !286 ; 2 uses
  %i.ba = icmp sgt i32 %.fr57, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !2659, !nonnull !359, !align !389
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !286 ; 2 uses
  %i.be = sext i32 %i.at to i64                   ; 2 uses
  br i1 %i.ba, label %.lr.ph46.split.split.us, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit29.us.us

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit29.us.us: ; preds = %.lr.ph46
  %i.bf = icmp slt i32 %.fr57, 0
  br i1 %i.bf, label %.lr.ph46.split.us.split, label %.loopexit

.lr.ph46.split.us.split:                          ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph46.split.us.split ], [ %i.be, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit29.us.us ] ; 3 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !112
  %i.bi = srem i32 %i.bh, %.fr57                  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = select i1 %i.bj, i32 %.fr57, i32 0
  %spec.select = add nsw i32 %i.bi, %i.bk
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv68
  store i32 %spec.select, ptr %i.bl, align 4, !tbaa !112
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.bm = load i32, ptr %i.au, align 4, !tbaa !370
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next69, %i.bn
  br i1 %i.bo, label %.lr.ph46.split.us.split, label %.loopexit, !llvm.loop !2661

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46, %.lr.ph46.split.split.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph46.split.split.us ], [ %i.be, %.lr.ph46 ] ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv71
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !112
  %i.br = srem i32 %i.bq, %.fr57                  ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = select i1 %i.bs, i32 %.fr57, i32 0
  %.0.i.i28.us50 = add nsw i32 %i.br, %i.bt
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv71
  store i32 %.0.i.i28.us50, ptr %i.bu, align 4, !tbaa !112
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bv = load i32, ptr %i.au, align 4, !tbaa !370
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next72, %i.bw
  br i1 %i.bx, label %.lr.ph46.split.split.us, label %.loopexit, !llvm.loop !2661

bb.j:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !2655, !nonnull !359, !align !389
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %.thread40

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !2656, !nonnull !359, !align !389
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !45
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !2657, !nonnull !359, !align !389
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !286
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !112
  %i.ck = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !370
  %i.cn = icmp slt i32 %i.ck, %i.cm
  br i1 %i.cn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !2658, !nonnull !359, !align !389
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !286
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !2659, !nonnull !359, !align !389
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !286
  %i.cu = sext i32 %i.ck to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit33
  %indvars.iv = phi i64 [ %i.cu, %.lr.ph ], [ %indvars.iv.next, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit33 ] ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !112 ; 4 uses
  %i.cx = srem i32 %i.cj, %i.cw                   ; 4 uses
  %i.cy = icmp slt i32 %i.cx, 0
  %i.cz = icmp sgt i32 %i.cw, 0
  %or.cond.i.i30 = and i1 %i.cz, %i.cy
  br i1 %or.cond.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = icmp sgt i32 %i.cx, 0
  %i.db = icmp slt i32 %i.cw, 0
  %or.cond3.i.i31 = and i1 %i.db, %i.da
  br i1 %or.cond3.i.i31, label %bb.o, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit33

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = add nsw i32 %i.cx, %i.cw
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit33

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit33: ; preds = %bb.n, %bb.o
  %.0.i.i32 = phi i32 [ %i.dc, %bb.o ], [ %i.cx, %bb.n ]
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv
  store i32 %.0.i.i32, ptr %i.dd, align 4, !tbaa !112
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.de = load i32, ptr %i.cl, align 4, !tbaa !370
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %bb.m, label %.loopexit, !llvm.loop !2662

.thread40:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.h, %bb.k, %bb.j
  %i.dh = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !370
  %i.dk = icmp slt i32 %i.dh, %i.dj
  br i1 %i.dk, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %.thread40
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !2657, !nonnull !359, !align !389 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !2658, !nonnull !359, !align !389 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !2659, !nonnull !359, !align !389 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !2655, !nonnull !359, !align !389
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !2656, !nonnull !359, !align !389
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph56, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit37
  %.055 = phi i32 [ %i.dh, %.lr.ph56 ], [ %i.ei, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit37 ]
  %i.dx = load ptr, ptr %i.dm, align 8, !tbaa !286 ; 2 uses
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !286
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !112
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !112 ; 4 uses
  %i.eb = srem i32 %i.dz, %i.ea                   ; 4 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %i.ed = icmp sgt i32 %i.ea, 0
  %or.cond.i.i34 = and i1 %i.ed, %i.ec
  br i1 %or.cond.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = icmp sgt i32 %i.eb, 0
  %i.ef = icmp slt i32 %i.ea, 0
  %or.cond3.i.i35 = and i1 %i.ef, %i.ee
  br i1 %or.cond3.i.i35, label %bb.r, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit37

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.eg = add nsw i32 %i.eb, %i.ea
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit37

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit37: ; preds = %bb.q, %bb.r
  %.0.i.i36 = phi i32 [ %i.eg, %bb.r ], [ %i.eb, %bb.q ]
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !286
  store i32 %.0.i.i36, ptr %i.eh, align 4, !tbaa !112
  %i.ei = add nsw i32 %.055, 1                    ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.b
  store ptr %i.ej, ptr %i.dm, align 8, !tbaa !286
  %i.ek = load ptr, ptr %i.do, align 8, !tbaa !286
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.dt
  store ptr %i.el, ptr %i.do, align 8, !tbaa !286
  %i.em = load ptr, ptr %i.dq, align 8, !tbaa !286
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.dw
  store ptr %i.en, ptr %i.dq, align 8, !tbaa !286
  %i.eo = load i32, ptr %i.di, align 4, !tbaa !370
  %i.ep = icmp slt i32 %i.ei, %i.eo
  br i1 %i.ep, label %bb.p, label %.loopexit, !llvm.loop !2663

.loopexit:                                        ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit33, %.lr.ph46.split.us.split, %.lr.ph46.split.split.us, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit37, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit29.us.us, %bb.l, %bb.i, %bb.d, %.thread40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS6_10opDispatchIiJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKiSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS6_10opDispatchIiJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKiSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE1_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !tbaa.struct !409
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS3_10opDispatchIiJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKiSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIiiZNS1_10opDispatchIiJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKiSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !370
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !2664, !nonnull !359, !align !389
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !2666, !nonnull !359, !align !389
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !2667, !nonnull !359, !align !389
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !2668, !nonnull !359, !align !415
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !359, !align !389
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !359, !align !389
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !359, !align !389
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !359, !align !389
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2669, !nonnull !359, !align !389
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !359, !align !389 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !359, !align !389 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !359, !align !415 ; 8 uses
  %i.af = sext i32 %i.a to i64
  br label %bb.b

._crit_edge108:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph107, %.loopexit
  %indvars.iv124 = phi i64 [ %i.af, %.lr.ph107 ], [ %indvars.iv.next125, %.loopexit ] ; 2 uses
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !112 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ai = add nsw i32 %i.ag, -2
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.an = zext nneg i32 %i.ai to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.066.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.az, %bb.c ] ; 4 uses
  %.065.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.bd, %bb.c ] ; 4 uses
  %.064.lcssa = phi ptr [ %i.l, %bb.b ], [ %i.bh, %bb.c ] ; 4 uses
  switch i64 %i.y, label %.thread81 [
    i64 1, label %bb.d
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.06388 = phi i64 [ %indvars.iv124, %.lr.ph ], [ %i.ar, %bb.c ] ; 2 uses
  %.06487 = phi ptr [ %i.l, %.lr.ph ], [ %i.bh, %bb.c ]
  %.06586 = phi ptr [ %i.i, %.lr.ph ], [ %i.bd, %bb.c ]
  %.06685 = phi ptr [ %i.f, %.lr.ph ], [ %i.az, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = udiv i64 %.06388, %i.aq                 ; 2 uses
  %i.as = zext i32 %i.ap to i64
  %i.at = mul i64 %i.ar, %i.as
  %i.au = sub i64 %.06388, %i.at
  %sext = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext, 32                ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.06685, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %.06586, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = mul i64 %i.bf, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %.06487, i64 %i.bg ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !2670

bb.d:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !45
  switch i64 %i.bi, label %.thread81 [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %.preheader, label %.thread81

.preheader:                                       ; preds = %bb.e
  %i.bl = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %.preheader, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit ], [ 0, %.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.066.lcssa, i64 %indvars.iv121
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.065.lcssa, i64 %indvars.iv121
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !112
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !112 ; 4 uses
  %i.br = srem i32 %i.bp, %i.bq                   ; 4 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = icmp sgt i32 %i.bq, 0
  %or.cond.i.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph99
  %i.bu = icmp sgt i32 %i.br, 0
  %i.bv = icmp slt i32 %i.bq, 0
  %or.cond3.i.i = and i1 %i.bv, %i.bu
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %.lr.ph99
  %i.bw = add nsw i32 %i.br, %i.bq
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIiJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKiSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.bw, %bb.g ], [ %i.br, %bb.f ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa, i64 %indvars.iv121
  store i32 %.0.i.i, ptr %i.bx, align 4, !tbaa !112
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.by = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next122, %i.bz
  br i1 %i.ca, label %.lr.ph99, label %.loopexit, !llvm.loop !2671

bb.h:                                             ; preds = %bb.d
  %i.cb = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.cc = icmp eq i64 %i.cb, 1
end_hunk_0
begin_hunk_1_@_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m:bb.a
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %.pn78.pn, %bb.bq ], [ %.pn78.pn, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.it = load ptr, ptr %13, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i146, label %.body104, label %bb.br

bb.br:                                            ; preds = %.body115
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #24
  br label %.body104

.body104:                                         ; preds = %bb.k, %bb.br, %.body115
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn82.pn.pn, %bb.br ], [ %.pn82.pn.pn, %.body115 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.iz = load ptr, ptr %12, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i149, label %.body94, label %bb.bs

bb.bs:                                            ; preds = %.body104
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !75
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #24
  br label %.body94

.body94:                                          ; preds = %bb.h, %bb.bs, %.body104
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn82.pn.pn.pn, %bb.bs ], [ %.pn82.pn.pn.pn, %.body104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.jf = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i152, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.body94
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !89
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #24
  br label %.body

.body:                                            ; preds = %bb.bt, %.body94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS6_10opDispatchIlJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKlSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS6_10opDispatchIlJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKlSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE0_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !3274
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3433, !nonnull !359, !align !389
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  switch i64 %i.b, label %.thread40 [
    i64 1, label %bb.b
    i64 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3435, !nonnull !359, !align !389
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  switch i64 %i.e, label %.thread40 [
    i64 1, label %bb.c
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3436, !nonnull !359, !align !389
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %.thread40

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !370  ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph54, label %.loopexit

.lr.ph54:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !3437, !nonnull !359, !align !389
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !288
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !3438, !nonnull !359, !align !389
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !288
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !3439, !nonnull !359, !align !389
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !288
  %i.w = sext i32 %i.j to i64
  %wide.trip.count88 = sext i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit
  %indvars.iv85 = phi i64 [ %i.w, %.lr.ph54 ], [ %indvars.iv.next86, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv85
  %i.y = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv85
  %i.z = load i64, ptr %i.x, align 8, !tbaa !45
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !45
  %i.ac = trunc i64 %i.ab to i32                  ; 4 uses
  %i.ad = srem i32 %i.aa, %i.ac                   ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = icmp sgt i32 %i.ac, 0
  %or.cond.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp sgt i32 %i.ad, 0
  %i.ah = icmp slt i32 %i.ac, 0
  %or.cond3.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = add nsw i32 %i.ad, %i.ac
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ai, %bb.g ], [ %i.ad, %bb.f ]
  %i.aj = sext i32 %.0.i.i to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv85
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !45
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %bb.e, !llvm.loop !3440

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !3436, !nonnull !359, !align !389
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %.thread40

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !370 ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !3438, !nonnull !359, !align !389
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !288
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !3437, !nonnull !359, !align !389
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 6 uses
  %.fr = freeze i64 %i.aw
  %i.ba = trunc i64 %.fr to i32                   ; 14 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !3439, !nonnull !359, !align !389
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !288 ; 6 uses
  %i.bf = sext i32 %i.ap to i64                   ; 12 uses
  %wide.trip.count78 = sext i32 %i.ar to i64      ; 6 uses
  br i1 %i.bb, label %.lr.ph46.split.split.us.preheader, label %.lr.ph46.split.us

.lr.ph46.split.split.us.preheader:                ; preds = %.lr.ph46
  %i.bg = sub nsw i64 %wide.trip.count78, %i.bf
  %xtraiter117 = and i64 %i.bg, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph46.split.split.us.prol.loopexit, label %.lr.ph46.split.split.us.prol

.lr.ph46.split.split.us.prol:                     ; preds = %.lr.ph46.split.split.us.preheader
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = srem i32 %i.bj, %i.ba                   ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 %i.ba, i32 0
  %.0.i.i28.us50.prol = add nsw i32 %i.bk, %i.bm
  %i.bn = sext i32 %.0.i.i28.us50.prol to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !45
  %indvars.iv.next76.prol = add nsw i64 %i.bf, 1
  br label %.lr.ph46.split.split.us.prol.loopexit

.lr.ph46.split.split.us.prol.loopexit:            ; preds = %.lr.ph46.split.split.us.prol, %.lr.ph46.split.split.us.preheader
  %indvars.iv75.unr = phi i64 [ %i.bf, %.lr.ph46.split.split.us.preheader ], [ %indvars.iv.next76.prol, %.lr.ph46.split.split.us.prol ]
  %i.bp = add nsw i64 %wide.trip.count78, -1
  %i.bq = icmp eq i64 %i.bp, %i.bf
  br i1 %i.bq, label %.loopexit, label %.lr.ph46.split.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  %i.br = icmp slt i32 %i.ba, 0
  br i1 %i.br, label %.lr.ph46.split.us.split.preheader, label %.loopexit

.lr.ph46.split.us.split.preheader:                ; preds = %.lr.ph46.split.us
  %i.bs = sub nsw i64 %wide.trip.count78, %i.bf
  %xtraiter115 = and i64 %i.bs, 1
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit29.us.us, label %.lr.ph46.split.us.split.prol

.lr.ph46.split.us.split.prol:                     ; preds = %.lr.ph46.split.us.split.preheader
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = srem i32 %i.bv, %i.ba                   ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = select i1 %i.bx, i32 %i.ba, i32 0
  %spec.select.prol = add nsw i32 %i.bw, %i.by
  %i.bz = sext i32 %spec.select.prol to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !45
  %indvars.iv.next71.prol = add nsw i64 %i.bf, 1
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit29.us.us

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit29.us.us: ; preds = %.lr.ph46.split.us.split.prol, %.lr.ph46.split.us.split.preheader
  %indvars.iv65 = phi i64 [ %i.bf, %.lr.ph46.split.us.split.preheader ], [ %indvars.iv.next71.prol, %.lr.ph46.split.us.split.prol ]
  %indvars.iv.next66.1 = add nsw i64 %wide.trip.count78, -1
  %exitcond69.not.1 = icmp eq i64 %indvars.iv.next66.1, %i.bf
  br i1 %exitcond69.not.1, label %.loopexit, label %.lr.ph46.split.us.split

.lr.ph46.split.us.split:                          ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.1, %.lr.ph46.split.us.split ], [ %indvars.iv65, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit29.us.us ] ; 4 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv70
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !45
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = srem i32 %i.cd, %i.ba                   ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = select i1 %i.cf, i32 %i.ba, i32 0
  %spec.select = add nsw i32 %i.ce, %i.cg
  %i.ch = sext i32 %spec.select to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv70
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !45
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv.next71
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = srem i32 %i.cl, %i.ba                   ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = select i1 %i.cn, i32 %i.ba, i32 0
  %spec.select.1 = add nsw i32 %i.cm, %i.co
  %i.cp = sext i32 %spec.select.1 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next71
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !45
  %indvars.iv.next71.1 = add nsw i64 %indvars.iv70, 2 ; 2 uses
  %exitcond74.not.1 = icmp eq i64 %indvars.iv.next71.1, %wide.trip.count78
  br i1 %exitcond74.not.1, label %.loopexit, label %.lr.ph46.split.us.split, !llvm.loop !3441

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46.split.split.us.prol.loopexit, %.lr.ph46.split.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.1, %.lr.ph46.split.split.us ], [ %indvars.iv75.unr, %.lr.ph46.split.split.us.prol.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv75
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = srem i32 %i.ct, %i.ba                   ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  %i.cw = select i1 %i.cv, i32 %i.ba, i32 0
  %.0.i.i28.us50 = add nsw i32 %i.cu, %i.cw
  %i.cx = sext i32 %.0.i.i28.us50 to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv75
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !45
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv.next76
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !45
  %i.db = trunc i64 %i.da to i32
  %i.dc = srem i32 %i.db, %i.ba                   ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  %i.de = select i1 %i.dd, i32 %i.ba, i32 0
  %.0.i.i28.us50.1 = add nsw i32 %i.dc, %i.de
  %i.df = sext i32 %.0.i.i28.us50.1 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next76
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !45
  %indvars.iv.next76.1 = add nsw i64 %indvars.iv75, 2 ; 2 uses
  %exitcond79.not.1 = icmp eq i64 %indvars.iv.next76.1, %wide.trip.count78
  br i1 %exitcond79.not.1, label %.loopexit, label %.lr.ph46.split.split.us, !llvm.loop !3441

bb.j:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !3435, !nonnull !359, !align !389
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !45
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.k, label %.thread40

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !3436, !nonnull !359, !align !389
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !45
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !370 ; 2 uses
  %i.ds = icmp slt i32 %i.dp, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !3437, !nonnull !359, !align !389
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !288
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !3438, !nonnull !359, !align !389
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !288
  %i.ea = trunc i64 %i.dw to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !3439, !nonnull !359, !align !389
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !288
  %i.ee = sext i32 %i.dp to i64
  %wide.trip.count = sext i32 %i.dr to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit33
  %indvars.iv = phi i64 [ %i.ee, %.lr.ph ], [ %indvars.iv.next, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit33 ] ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %indvars.iv
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !45
  %i.eh = trunc i64 %i.eg to i32                  ; 4 uses
  %i.ei = srem i32 %i.ea, %i.eh                   ; 4 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = icmp sgt i32 %i.eh, 0
  %or.cond.i.i30 = and i1 %i.ek, %i.ej
  br i1 %or.cond.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = icmp sgt i32 %i.ei, 0
  %i.em = icmp slt i32 %i.eh, 0
  %or.cond3.i.i31 = and i1 %i.em, %i.el
  br i1 %or.cond3.i.i31, label %bb.o, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit33

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.en = add nsw i32 %i.ei, %i.eh
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit33

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit33: ; preds = %bb.n, %bb.o
  %.0.i.i32 = phi i32 [ %i.en, %bb.o ], [ %i.ei, %bb.n ]
  %i.eo = sext i32 %.0.i.i32 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %indvars.iv
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !45
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !3442

.thread40:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.h, %bb.k, %bb.j
  %i.eq = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !370 ; 2 uses
  %i.et = icmp slt i32 %i.eq, %i.es
  br i1 %i.et, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %.thread40
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !3437, !nonnull !359, !align !389 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !3438, !nonnull !359, !align !389 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !3439, !nonnull !359, !align !389 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph56, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit37
  %.055 = phi i32 [ %i.eq, %.lr.ph56 ], [ %i.fq, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit37 ]
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !288 ; 2 uses
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !288
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !45
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i64, ptr %i.fd, align 8, !tbaa !45
  %i.fh = trunc i64 %i.fg to i32                  ; 4 uses
  %i.fi = srem i32 %i.ff, %i.fh                   ; 4 uses
  %i.fj = icmp slt i32 %i.fi, 0
  %i.fk = icmp sgt i32 %i.fh, 0
  %or.cond.i.i34 = and i1 %i.fk, %i.fj
  br i1 %or.cond.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = icmp sgt i32 %i.fi, 0
  %i.fm = icmp slt i32 %i.fh, 0
  %or.cond3.i.i35 = and i1 %i.fm, %i.fl
  br i1 %or.cond3.i.i35, label %bb.r, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit37

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fn = add nsw i32 %i.fi, %i.fh
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit37

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit37: ; preds = %bb.q, %bb.r
  %.0.i.i36 = phi i32 [ %i.fn, %bb.r ], [ %i.fi, %bb.q ]
  %i.fo = sext i32 %.0.i.i36 to i64
  %i.fp = load ptr, ptr %i.ez, align 8, !tbaa !288
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !45
  %i.fq = add nsw i32 %.055, 1                    ; 2 uses
  %i.fr = load ptr, ptr %0, align 8, !tbaa !3433, !nonnull !359, !align !389
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fs
  store ptr %i.ft, ptr %i.ev, align 8, !tbaa !288
  %i.fu = load ptr, ptr %i.fa, align 8, !tbaa !3435, !nonnull !359, !align !389
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fw = load ptr, ptr %i.ex, align 8, !tbaa !288
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fv
  store ptr %i.fx, ptr %i.ex, align 8, !tbaa !288
  %i.fy = load ptr, ptr %i.fb, align 8, !tbaa !3436, !nonnull !359, !align !389
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !45
  %i.ga = load ptr, ptr %i.ez, align 8, !tbaa !288
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fz
  store ptr %i.gb, ptr %i.ez, align 8, !tbaa !288
  %exitcond90.not = icmp eq i32 %i.fq, %i.es
  br i1 %exitcond90.not, label %.loopexit, label %bb.p, !llvm.loop !3443

.loopexit:                                        ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit33, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split, %.lr.ph46.split.split.us.prol.loopexit, %.lr.ph46.split.split.us, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit37, %.lr.ph46.split.us, %bb.l, %bb.i, %bb.d, %.thread40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS6_10opDispatchIlJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKlSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS6_10opDispatchIlJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKlSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE1_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !tbaa.struct !409
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS3_10opDispatchIlJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKlSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIllZNS1_10opDispatchIlJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKlSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !370  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !3444, !nonnull !359, !align !389
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !3446, !nonnull !359, !align !389
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !3447, !nonnull !359, !align !389
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !3448, !nonnull !359, !align !415
  %i.o = load i32, ptr %i.n, align 4, !tbaa !112  ; 2 uses
  %i.p = add i32 %i.o, -2
  %i.q = icmp sgt i32 %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !359, !align !389
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !359, !align !389
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !359, !align !389
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !359, !align !389
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !3449, !nonnull !359, !align !389 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !359, !align !389 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !359, !align !389 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !359, !align !415 ; 4 uses
  %i.ah = zext i32 %i.p to i64
  %i.ai = sext i32 %i.a to i64
  %wide.trip.count132 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge108:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph107, %.loopexit
  %indvars.iv129 = phi i64 [ %i.ai, %.lr.ph107 ], [ %indvars.iv.next130, %.loopexit ] ; 2 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !72
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.066.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.az, %bb.c ] ; 4 uses
  %.065.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.bd, %bb.c ] ; 4 uses
  %.064.lcssa = phi ptr [ %i.l, %bb.b ], [ %i.bh, %bb.c ] ; 4 uses
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !45
  switch i64 %i.an, label %.thread81 [
    i64 1, label %bb.d
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.06388 = phi i64 [ %indvars.iv129, %.lr.ph ], [ %i.ar, %bb.c ] ; 2 uses
  %.06487 = phi ptr [ %i.l, %.lr.ph ], [ %i.bh, %bb.c ]
  %.06586 = phi ptr [ %i.i, %.lr.ph ], [ %i.bd, %bb.c ]
  %.06685 = phi ptr [ %i.f, %.lr.ph ], [ %i.az, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = udiv i64 %.06388, %i.aq                 ; 2 uses
  %i.as = zext i32 %i.ap to i64
  %i.at = mul i64 %i.ar, %i.as
  %i.au = sub i64 %.06388, %i.at
  %sext = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext, 32                ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.06685, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %.06586, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = mul i64 %i.bf, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %.06487, i64 %i.bg ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !3450

bb.d:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !45
  switch i64 %i.bi, label %.thread81 [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %.preheader, label %.thread81

.preheader:                                       ; preds = %bb.e
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !112 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %.preheader
  %wide.trip.count126 = zext nneg i32 %i.bl to i64
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvars.iv.next124, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.066.lcssa, i64 %indvars.iv123
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.065.lcssa, i64 %indvars.iv123
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bs = trunc i64 %i.br to i32                  ; 4 uses
  %i.bt = srem i32 %i.bq, %i.bs                   ; 4 uses
  %i.bu = icmp slt i32 %i.bt, 0
  %i.bv = icmp sgt i32 %i.bs, 0
  %or.cond.i.i = and i1 %i.bv, %i.bu
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph99
  %i.bw = icmp sgt i32 %i.bt, 0
  %i.bx = icmp slt i32 %i.bs, 0
  %or.cond3.i.i = and i1 %i.bx, %i.bw
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %.lr.ph99
  %i.by = add nsw i32 %i.bt, %i.bs
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIlJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKlSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.by, %bb.g ], [ %i.bt, %bb.f ]
  %i.bz = sext i32 %.0.i.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.064.lcssa, i64 %indvars.iv123
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !45
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m:bb.a
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %.pn78.pn, %bb.bq ], [ %.pn78.pn, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.it = load ptr, ptr %13, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i146, label %.body104, label %bb.br

bb.br:                                            ; preds = %.body115
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #24
  br label %.body104

.body104:                                         ; preds = %bb.k, %bb.br, %.body115
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn82.pn.pn, %bb.br ], [ %.pn82.pn.pn, %.body115 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.iz = load ptr, ptr %12, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i149, label %.body94, label %bb.bs

bb.bs:                                            ; preds = %.body104
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !75
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #24
  br label %.body94

.body94:                                          ; preds = %bb.h, %bb.bs, %.body104
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn82.pn.pn.pn, %bb.bs ], [ %.pn82.pn.pn.pn, %.body104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.jf = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i152, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.body94
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !89
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #24
  br label %.body

.body:                                            ; preds = %bb.bt, %.body94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS6_10opDispatchIdJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKdSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS6_10opDispatchIdJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKdSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE0_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !5717
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !5851, !nonnull !359, !align !389
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  switch i64 %i.b, label %.thread40 [
    i64 1, label %bb.b
    i64 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5853, !nonnull !359, !align !389
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  switch i64 %i.e, label %.thread40 [
    i64 1, label %bb.c
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !5854, !nonnull !359, !align !389
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %.thread40

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !370  ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph54, label %.loopexit

.lr.ph54:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !5855, !nonnull !359, !align !389
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !5542
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !5856, !nonnull !359, !align !389
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !5542
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !5857, !nonnull !359, !align !389
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !5542
  %i.w = sext i32 %i.j to i64
  %wide.trip.count88 = sext i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit
  %indvars.iv85 = phi i64 [ %i.w, %.lr.ph54 ], [ %indvars.iv.next86, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv85
  %i.y = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv85
  %i.z = load double, ptr %i.x, align 8, !tbaa !5533
  %i.aa = fptosi double %i.z to i32
  %i.ab = load double, ptr %i.y, align 8, !tbaa !5533
  %i.ac = fptosi double %i.ab to i32              ; 4 uses
  %i.ad = srem i32 %i.aa, %i.ac                   ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = icmp sgt i32 %i.ac, 0
  %or.cond.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp sgt i32 %i.ad, 0
  %i.ah = icmp slt i32 %i.ac, 0
  %or.cond3.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = add nsw i32 %i.ad, %i.ac
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ai, %bb.g ], [ %i.ad, %bb.f ]
  %i.aj = sitofp i32 %.0.i.i to double
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv85
  store double %i.aj, ptr %i.ak, align 8, !tbaa !5533
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %bb.e, !llvm.loop !5858

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !5854, !nonnull !359, !align !389
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %.thread40

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !370 ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !5856, !nonnull !359, !align !389
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !5542
  %i.aw = load double, ptr %i.av, align 8, !tbaa !5533
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !5855, !nonnull !359, !align !389
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !5542 ; 6 uses
  %i.ba = fptosi double %i.aw to i32
  %.fr57 = freeze i32 %i.ba                       ; 14 uses
  %i.bb = icmp sgt i32 %.fr57, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !5857, !nonnull !359, !align !389
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !5542 ; 6 uses
  %i.bf = sext i32 %i.ap to i64                   ; 12 uses
  %wide.trip.count78 = sext i32 %i.ar to i64      ; 6 uses
  br i1 %i.bb, label %.lr.ph46.split.split.us.preheader, label %.lr.ph46.split.us

.lr.ph46.split.split.us.preheader:                ; preds = %.lr.ph46
  %i.bg = sub nsw i64 %wide.trip.count78, %i.bf
  %xtraiter116 = and i64 %i.bg, 1
  %lcmp.mod117.not = icmp eq i64 %xtraiter116, 0
  br i1 %lcmp.mod117.not, label %.lr.ph46.split.split.us.prol.loopexit, label %.lr.ph46.split.split.us.prol

.lr.ph46.split.split.us.prol:                     ; preds = %.lr.ph46.split.split.us.preheader
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !5533
  %i.bj = fptosi double %i.bi to i32
  %i.bk = srem i32 %i.bj, %.fr57                  ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 %.fr57, i32 0
  %.0.i.i28.us50.prol = add nsw i32 %i.bk, %i.bm
  %i.bn = sitofp i32 %.0.i.i28.us50.prol to double
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store double %i.bn, ptr %i.bo, align 8, !tbaa !5533
  %indvars.iv.next76.prol = add nsw i64 %i.bf, 1
  br label %.lr.ph46.split.split.us.prol.loopexit

.lr.ph46.split.split.us.prol.loopexit:            ; preds = %.lr.ph46.split.split.us.prol, %.lr.ph46.split.split.us.preheader
  %indvars.iv75.unr = phi i64 [ %i.bf, %.lr.ph46.split.split.us.preheader ], [ %indvars.iv.next76.prol, %.lr.ph46.split.split.us.prol ]
  %i.bp = add nsw i64 %wide.trip.count78, -1
  %i.bq = icmp eq i64 %i.bp, %i.bf
  br i1 %i.bq, label %.loopexit, label %.lr.ph46.split.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  %i.br = icmp slt i32 %.fr57, 0
  br i1 %i.br, label %.lr.ph46.split.us.split.preheader, label %.loopexit

.lr.ph46.split.us.split.preheader:                ; preds = %.lr.ph46.split.us
  %i.bs = sub nsw i64 %wide.trip.count78, %i.bf
  %xtraiter114 = and i64 %i.bs, 1
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit29.us.us, label %.lr.ph46.split.us.split.prol

.lr.ph46.split.us.split.prol:                     ; preds = %.lr.ph46.split.us.split.preheader
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !5533
  %i.bv = fptosi double %i.bu to i32
  %i.bw = srem i32 %i.bv, %.fr57                  ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = select i1 %i.bx, i32 %.fr57, i32 0
  %spec.select.prol = add nsw i32 %i.bw, %i.by
  %i.bz = sitofp i32 %spec.select.prol to double
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store double %i.bz, ptr %i.ca, align 8, !tbaa !5533
  %indvars.iv.next71.prol = add nsw i64 %i.bf, 1
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit29.us.us

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit29.us.us: ; preds = %.lr.ph46.split.us.split.prol, %.lr.ph46.split.us.split.preheader
  %indvars.iv65 = phi i64 [ %i.bf, %.lr.ph46.split.us.split.preheader ], [ %indvars.iv.next71.prol, %.lr.ph46.split.us.split.prol ]
  %indvars.iv.next66.1 = add nsw i64 %wide.trip.count78, -1
  %exitcond69.not.1 = icmp eq i64 %indvars.iv.next66.1, %i.bf
  br i1 %exitcond69.not.1, label %.loopexit, label %.lr.ph46.split.us.split

.lr.ph46.split.us.split:                          ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.1, %.lr.ph46.split.us.split ], [ %indvars.iv65, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit29.us.us ] ; 4 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv70
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !5533
  %i.cd = fptosi double %i.cc to i32
  %i.ce = srem i32 %i.cd, %.fr57                  ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = select i1 %i.cf, i32 %.fr57, i32 0
  %spec.select = add nsw i32 %i.ce, %i.cg
  %i.ch = sitofp i32 %spec.select to double
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv70
  store double %i.ch, ptr %i.ci, align 8, !tbaa !5533
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv.next71
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !5533
  %i.cl = fptosi double %i.ck to i32
  %i.cm = srem i32 %i.cl, %.fr57                  ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = select i1 %i.cn, i32 %.fr57, i32 0
  %spec.select.1 = add nsw i32 %i.cm, %i.co
  %i.cp = sitofp i32 %spec.select.1 to double
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next71
  store double %i.cp, ptr %i.cq, align 8, !tbaa !5533
  %indvars.iv.next71.1 = add nsw i64 %indvars.iv70, 2 ; 2 uses
  %exitcond74.not.1 = icmp eq i64 %indvars.iv.next71.1, %wide.trip.count78
  br i1 %exitcond74.not.1, label %.loopexit, label %.lr.ph46.split.us.split, !llvm.loop !5859

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46.split.split.us.prol.loopexit, %.lr.ph46.split.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.1, %.lr.ph46.split.split.us ], [ %indvars.iv75.unr, %.lr.ph46.split.split.us.prol.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv75
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !5533
  %i.ct = fptosi double %i.cs to i32
  %i.cu = srem i32 %i.ct, %.fr57                  ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  %i.cw = select i1 %i.cv, i32 %.fr57, i32 0
  %.0.i.i28.us50 = add nsw i32 %i.cu, %i.cw
  %i.cx = sitofp i32 %.0.i.i28.us50 to double
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv75
  store double %i.cx, ptr %i.cy, align 8, !tbaa !5533
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv.next76
  %i.da = load double, ptr %i.cz, align 8, !tbaa !5533
  %i.db = fptosi double %i.da to i32
  %i.dc = srem i32 %i.db, %.fr57                  ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  %i.de = select i1 %i.dd, i32 %.fr57, i32 0
  %.0.i.i28.us50.1 = add nsw i32 %i.dc, %i.de
  %i.df = sitofp i32 %.0.i.i28.us50.1 to double
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next76
  store double %i.df, ptr %i.dg, align 8, !tbaa !5533
  %indvars.iv.next76.1 = add nsw i64 %indvars.iv75, 2 ; 2 uses
  %exitcond79.not.1 = icmp eq i64 %indvars.iv.next76.1, %wide.trip.count78
  br i1 %exitcond79.not.1, label %.loopexit, label %.lr.ph46.split.split.us, !llvm.loop !5859

bb.j:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !5853, !nonnull !359, !align !389
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !45
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.k, label %.thread40

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !5854, !nonnull !359, !align !389
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !45
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !370 ; 2 uses
  %i.ds = icmp slt i32 %i.dp, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !5855, !nonnull !359, !align !389
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !5542
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !5533
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !5856, !nonnull !359, !align !389
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !5542
  %i.ea = fptosi double %i.dw to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !5857, !nonnull !359, !align !389
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !5542
  %i.ee = sext i32 %i.dp to i64
  %wide.trip.count = sext i32 %i.dr to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit33
  %indvars.iv = phi i64 [ %i.ee, %.lr.ph ], [ %indvars.iv.next, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit33 ] ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %indvars.iv
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !5533
  %i.eh = fptosi double %i.eg to i32              ; 4 uses
  %i.ei = srem i32 %i.ea, %i.eh                   ; 4 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = icmp sgt i32 %i.eh, 0
  %or.cond.i.i30 = and i1 %i.ek, %i.ej
  br i1 %or.cond.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = icmp sgt i32 %i.ei, 0
  %i.em = icmp slt i32 %i.eh, 0
  %or.cond3.i.i31 = and i1 %i.em, %i.el
  br i1 %or.cond3.i.i31, label %bb.o, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit33

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.en = add nsw i32 %i.ei, %i.eh
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit33

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit33: ; preds = %bb.n, %bb.o
  %.0.i.i32 = phi i32 [ %i.en, %bb.o ], [ %i.ei, %bb.n ]
  %i.eo = sitofp i32 %.0.i.i32 to double
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %indvars.iv
  store double %i.eo, ptr %i.ep, align 8, !tbaa !5533
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !5860

.thread40:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.h, %bb.k, %bb.j
  %i.eq = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !370 ; 2 uses
  %i.et = icmp slt i32 %i.eq, %i.es
  br i1 %i.et, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %.thread40
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !5855, !nonnull !359, !align !389 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !5856, !nonnull !359, !align !389 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !5857, !nonnull !359, !align !389 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !5853, !nonnull !359, !align !389
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !45
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !5854, !nonnull !359, !align !389
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph56, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit37
  %.055 = phi i32 [ %i.eq, %.lr.ph56 ], [ %i.fu, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit37 ]
  %i.fg = load ptr, ptr %i.ev, align 8, !tbaa !5542 ; 2 uses
  %i.fh = load ptr, ptr %i.ex, align 8, !tbaa !5542
  %i.fi = load double, ptr %i.fg, align 8, !tbaa !5533
  %i.fj = fptosi double %i.fi to i32
  %i.fk = load double, ptr %i.fh, align 8, !tbaa !5533
  %i.fl = fptosi double %i.fk to i32              ; 4 uses
  %i.fm = srem i32 %i.fj, %i.fl                   ; 4 uses
  %i.fn = icmp slt i32 %i.fm, 0
  %i.fo = icmp sgt i32 %i.fl, 0
  %or.cond.i.i34 = and i1 %i.fo, %i.fn
  br i1 %or.cond.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fp = icmp sgt i32 %i.fm, 0
  %i.fq = icmp slt i32 %i.fl, 0
  %or.cond3.i.i35 = and i1 %i.fq, %i.fp
  br i1 %or.cond3.i.i35, label %bb.r, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit37

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fr = add nsw i32 %i.fm, %i.fl
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit37

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit37: ; preds = %bb.q, %bb.r
  %.0.i.i36 = phi i32 [ %i.fr, %bb.r ], [ %i.fm, %bb.q ]
  %i.fs = sitofp i32 %.0.i.i36 to double
  %i.ft = load ptr, ptr %i.ez, align 8, !tbaa !5542
  store double %i.fs, ptr %i.ft, align 8, !tbaa !5533
  %i.fu = add nsw i32 %.055, 1                    ; 2 uses
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %i.b
  store ptr %i.fv, ptr %i.ev, align 8, !tbaa !5542
  %i.fw = load ptr, ptr %i.ex, align 8, !tbaa !5542
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fc
  store ptr %i.fx, ptr %i.ex, align 8, !tbaa !5542
  %i.fy = load ptr, ptr %i.ez, align 8, !tbaa !5542
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.ff
  store ptr %i.fz, ptr %i.ez, align 8, !tbaa !5542
  %exitcond90.not = icmp eq i32 %i.fu, %i.es
  br i1 %exitcond90.not, label %.loopexit, label %bb.p, !llvm.loop !5861

.loopexit:                                        ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit33, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split, %.lr.ph46.split.split.us.prol.loopexit, %.lr.ph46.split.split.us, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit37, %.lr.ph46.split.us, %bb.l, %bb.i, %bb.d, %.thread40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS6_10opDispatchIdJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKdSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS6_10opDispatchIdJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKdSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE1_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !tbaa.struct !409
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS3_10opDispatchIdJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKdSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIddZNS1_10opDispatchIdJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKdSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !370  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !5862, !nonnull !359, !align !389
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !5864, !nonnull !359, !align !389
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !5865, !nonnull !359, !align !389
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !5866, !nonnull !359, !align !415
  %i.o = load i32, ptr %i.n, align 4, !tbaa !112  ; 2 uses
  %i.p = add i32 %i.o, -2
  %i.q = icmp sgt i32 %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !359, !align !389
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !359, !align !389
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !359, !align !389
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !359, !align !389
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !5867, !nonnull !359, !align !389
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !45 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !359, !align !389 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !359, !align !389 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.ah = zext i32 %i.p to i64
  %i.ai = sext i32 %i.a to i64
  %wide.trip.count132 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge108:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph107, %.loopexit
  %indvars.iv129 = phi i64 [ %i.ai, %.lr.ph107 ], [ %indvars.iv.next130, %.loopexit ] ; 2 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !72
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.066.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.ay, %bb.c ] ; 4 uses
  %.065.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.bc, %bb.c ] ; 4 uses
  %.064.lcssa = phi ptr [ %i.l, %bb.b ], [ %i.bg, %bb.c ] ; 4 uses
  switch i64 %i.ab, label %.thread81 [
    i64 1, label %bb.d
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.06388 = phi i64 [ %indvars.iv129, %.lr.ph ], [ %i.aq, %bb.c ] ; 2 uses
  %.06487 = phi ptr [ %i.l, %.lr.ph ], [ %i.bg, %bb.c ]
  %.06586 = phi ptr [ %i.i, %.lr.ph ], [ %i.bc, %bb.c ]
  %.06685 = phi ptr [ %i.f, %.lr.ph ], [ %i.ay, %bb.c ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !112 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = udiv i64 %.06388, %i.ap                 ; 2 uses
  %i.ar = zext i32 %i.ao to i64
  %i.as = mul i64 %i.aq, %i.ar
  %i.at = sub i64 %.06388, %i.as
  %sext = shl i64 %i.at, 32
  %i.au = ashr exact i64 %sext, 32                ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !45
  %i.ax = mul i64 %i.au, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %.06685, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !45
  %i.bb = mul i64 %i.ba, %i.au
  %i.bc = getelementptr inbounds nuw i8, ptr %.06586, i64 %i.bb ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !45
  %i.bf = mul i64 %i.be, %i.au
  %i.bg = getelementptr inbounds nuw i8, ptr %.06487, i64 %i.bf ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !5868

bb.d:                                             ; preds = %._crit_edge
  %i.bh = load i64, ptr %i.ad, align 8, !tbaa !45
  switch i64 %i.bh, label %.thread81 [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.bi = load i64, ptr %i.af, align 8, !tbaa !45
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %.preheader, label %.thread81

.preheader:                                       ; preds = %bb.e
  %i.bk = load ptr, ptr %i.ag, align 8, !tbaa !5869, !nonnull !359, !align !415
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !112 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %.preheader
  %wide.trip.count126 = zext nneg i32 %i.bl to i64
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvars.iv.next124, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.066.lcssa, i64 %indvars.iv123
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.065.lcssa, i64 %indvars.iv123
  %i.bp = load double, ptr %i.bn, align 8, !tbaa !5533
  %i.bq = fptosi double %i.bp to i32
  %i.br = load double, ptr %i.bo, align 8, !tbaa !5533
  %i.bs = fptosi double %i.br to i32              ; 4 uses
  %i.bt = srem i32 %i.bq, %i.bs                   ; 4 uses
  %i.bu = icmp slt i32 %i.bt, 0
  %i.bv = icmp sgt i32 %i.bs, 0
  %or.cond.i.i = and i1 %i.bv, %i.bu
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph99
  %i.bw = icmp sgt i32 %i.bt, 0
  %i.bx = icmp slt i32 %i.bs, 0
  %or.cond3.i.i = and i1 %i.bx, %i.bw
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %.lr.ph99
  %i.by = add nsw i32 %i.bt, %i.bs
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIdJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXoontsr3std11is_integralIT_EE5valuesr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKdSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.by, %bb.g ], [ %i.bt, %bb.f ]
  %i.bz = sitofp i32 %.0.i.i to double
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.064.lcssa, i64 %indvars.iv123
  store double %i.bz, ptr %i.ca, align 8, !tbaa !5533
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m:bb.a

bb.bq:                                            ; preds = %bb.bp
  %i.io = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !75
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.in to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.in, i64 noundef %i.is) #24
  br label %.body115

.body115:                                         ; preds = %bb.n, %bb.bq, %bb.bp
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %.pn78.pn, %bb.bq ], [ %.pn78.pn, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.it = load ptr, ptr %13, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i146, label %.body104, label %bb.br

bb.br:                                            ; preds = %.body115
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #24
  br label %.body104

.body104:                                         ; preds = %bb.k, %bb.br, %.body115
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn82.pn.pn, %bb.br ], [ %.pn82.pn.pn, %.body115 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.iz = load ptr, ptr %12, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i149, label %.body94, label %bb.bs

bb.bs:                                            ; preds = %.body104
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !75
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #24
  br label %.body94

.body94:                                          ; preds = %bb.h, %bb.bs, %.body104
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn82.pn.pn.pn, %bb.bs ], [ %.pn82.pn.pn.pn, %.body104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.jf = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i152, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.body94
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !89
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #24
  br label %.body

.body:                                            ; preds = %bb.bt, %.body94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS6_10opDispatchIjJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKjSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS6_10opDispatchIjJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKjSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE0_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !2522
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9113, !nonnull !359, !align !389
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45   ; 2 uses
  switch i64 %i.b, label %.thread40 [
    i64 1, label %bb.b
    i64 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9115, !nonnull !359, !align !389
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  switch i64 %i.e, label %.thread40 [
    i64 1, label %bb.c
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9116, !nonnull !359, !align !389
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %.thread40

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !370
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph54, label %.loopexit

.lr.ph54:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9117, !nonnull !359, !align !389
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !286
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9118, !nonnull !359, !align !389
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !286
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9119, !nonnull !359, !align !389
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !286
  %i.w = sext i32 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit
  %indvars.iv77 = phi i64 [ %i.w, %.lr.ph54 ], [ %indvars.iv.next78, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv77
  %i.y = getelementptr inbounds [4 x i8], ptr %i.s, i64 %indvars.iv77
  %i.z = load i32, ptr %i.x, align 4, !tbaa !112
  %i.aa = load i32, ptr %i.y, align 4, !tbaa !112 ; 4 uses
  %i.ab = srem i32 %i.z, %i.aa                    ; 4 uses
  %i.ac = icmp slt i32 %i.ab, 0
  %i.ad = icmp sgt i32 %i.aa, 0
  %or.cond.i.i = and i1 %i.ad, %i.ac
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %i.ab, 0
  %i.af = icmp slt i32 %i.aa, 0
  %or.cond3.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ag = add nsw i32 %i.ab, %i.aa
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ag, %bb.g ], [ %i.ab, %bb.f ]
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.v, i64 %indvars.iv77
  store i32 %.0.i.i, ptr %i.ah, align 4, !tbaa !112
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.ai = load i32, ptr %i.k, align 4, !tbaa !370
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next78, %i.aj
  br i1 %i.ak, label %bb.e, label %.loopexit, !llvm.loop !9120

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9116, !nonnull !359, !align !389
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %.thread40

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !9118, !nonnull !359, !align !389
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !286
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !112
  %.fr57 = freeze i32 %i.as                       ; 6 uses
  %i.at = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !370
  %i.aw = icmp slt i32 %i.at, %i.av
  br i1 %i.aw, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9117, !nonnull !359, !align !389
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !286 ; 2 uses
  %i.ba = icmp sgt i32 %.fr57, 0
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !9119, !nonnull !359, !align !389
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !286 ; 2 uses
  %i.be = sext i32 %i.at to i64                   ; 2 uses
  br i1 %i.ba, label %.lr.ph46.split.split.us, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit29.us.us

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit29.us.us: ; preds = %.lr.ph46
  %i.bf = icmp slt i32 %.fr57, 0
  br i1 %i.bf, label %.lr.ph46.split.us.split, label %.loopexit

.lr.ph46.split.us.split:                          ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.lr.ph46.split.us.split ], [ %i.be, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit29.us.us ] ; 3 uses
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv68
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !112
  %i.bi = srem i32 %i.bh, %.fr57                  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %i.bk = select i1 %i.bj, i32 %.fr57, i32 0
  %spec.select = add nsw i32 %i.bi, %i.bk
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv68
  store i32 %spec.select, ptr %i.bl, align 4, !tbaa !112
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.bm = load i32, ptr %i.au, align 4, !tbaa !370
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp slt i64 %indvars.iv.next69, %i.bn
  br i1 %i.bo, label %.lr.ph46.split.us.split, label %.loopexit, !llvm.loop !9121

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46, %.lr.ph46.split.split.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %.lr.ph46.split.split.us ], [ %i.be, %.lr.ph46 ] ; 3 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.az, i64 %indvars.iv71
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !112
  %i.br = srem i32 %i.bq, %.fr57                  ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = select i1 %i.bs, i32 %.fr57, i32 0
  %.0.i.i28.us50 = add nsw i32 %i.br, %i.bt
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %indvars.iv71
  store i32 %.0.i.i28.us50, ptr %i.bu, align 4, !tbaa !112
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, 1 ; 2 uses
  %i.bv = load i32, ptr %i.au, align 4, !tbaa !370
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next72, %i.bw
  br i1 %i.bx, label %.lr.ph46.split.split.us, label %.loopexit, !llvm.loop !9121

bb.j:                                             ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !9115, !nonnull !359, !align !389
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.cb = icmp eq i64 %i.ca, 1
  br i1 %i.cb, label %bb.k, label %.thread40

bb.k:                                             ; preds = %bb.j
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !9116, !nonnull !359, !align !389
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !45
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !9117, !nonnull !359, !align !389
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !286
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !112
  %i.ck = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !370
  %i.cn = icmp slt i32 %i.ck, %i.cm
  br i1 %i.cn, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !9118, !nonnull !359, !align !389
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !286
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !9119, !nonnull !359, !align !389
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !286
  %i.cu = sext i32 %i.ck to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit33
  %indvars.iv = phi i64 [ %i.cu, %.lr.ph ], [ %indvars.iv.next, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit33 ] ; 3 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !112 ; 4 uses
  %i.cx = srem i32 %i.cj, %i.cw                   ; 4 uses
  %i.cy = icmp slt i32 %i.cx, 0
  %i.cz = icmp sgt i32 %i.cw, 0
  %or.cond.i.i30 = and i1 %i.cz, %i.cy
  br i1 %or.cond.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.da = icmp sgt i32 %i.cx, 0
  %i.db = icmp slt i32 %i.cw, 0
  %or.cond3.i.i31 = and i1 %i.db, %i.da
  br i1 %or.cond3.i.i31, label %bb.o, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit33

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.dc = add nsw i32 %i.cx, %i.cw
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit33

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit33: ; preds = %bb.n, %bb.o
  %.0.i.i32 = phi i32 [ %i.dc, %bb.o ], [ %i.cx, %bb.n ]
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv
  store i32 %.0.i.i32, ptr %i.dd, align 4, !tbaa !112
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.de = load i32, ptr %i.cl, align 4, !tbaa !370
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next, %i.df
  br i1 %i.dg, label %bb.m, label %.loopexit, !llvm.loop !9122

.thread40:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.h, %bb.k, %bb.j
  %i.dh = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !370
  %i.dk = icmp slt i32 %i.dh, %i.dj
  br i1 %i.dk, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %.thread40
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !9117, !nonnull !359, !align !389 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !9118, !nonnull !359, !align !389 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !9119, !nonnull !359, !align !389 ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !9115, !nonnull !359, !align !389
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !45
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !9116, !nonnull !359, !align !389
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !45
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph56, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit37
  %.055 = phi i32 [ %i.dh, %.lr.ph56 ], [ %i.ei, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit37 ]
  %i.dx = load ptr, ptr %i.dm, align 8, !tbaa !286 ; 2 uses
  %i.dy = load ptr, ptr %i.do, align 8, !tbaa !286
  %i.dz = load i32, ptr %i.dx, align 4, !tbaa !112
  %i.ea = load i32, ptr %i.dy, align 4, !tbaa !112 ; 4 uses
  %i.eb = srem i32 %i.dz, %i.ea                   ; 4 uses
  %i.ec = icmp slt i32 %i.eb, 0
  %i.ed = icmp sgt i32 %i.ea, 0
  %or.cond.i.i34 = and i1 %i.ed, %i.ec
  br i1 %or.cond.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ee = icmp sgt i32 %i.eb, 0
  %i.ef = icmp slt i32 %i.ea, 0
  %or.cond3.i.i35 = and i1 %i.ef, %i.ee
  br i1 %or.cond3.i.i35, label %bb.r, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit37

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.eg = add nsw i32 %i.eb, %i.ea
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit37

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit37: ; preds = %bb.q, %bb.r
  %.0.i.i36 = phi i32 [ %i.eg, %bb.r ], [ %i.eb, %bb.q ]
  %i.eh = load ptr, ptr %i.dq, align 8, !tbaa !286
  store i32 %.0.i.i36, ptr %i.eh, align 4, !tbaa !112
  %i.ei = add nsw i32 %.055, 1                    ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %i.b
  store ptr %i.ej, ptr %i.dm, align 8, !tbaa !286
  %i.ek = load ptr, ptr %i.do, align 8, !tbaa !286
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.dt
  store ptr %i.el, ptr %i.do, align 8, !tbaa !286
  %i.em = load ptr, ptr %i.dq, align 8, !tbaa !286
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.dw
  store ptr %i.en, ptr %i.dq, align 8, !tbaa !286
  %i.eo = load i32, ptr %i.di, align 4, !tbaa !370
  %i.ep = icmp slt i32 %i.ei, %i.eo
  br i1 %i.ep, label %bb.p, label %.loopexit, !llvm.loop !9123

.loopexit:                                        ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit33, %.lr.ph46.split.us.split, %.lr.ph46.split.split.us, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit37, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit29.us.us, %bb.l, %bb.i, %bb.d, %.thread40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS6_10opDispatchIjJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKjSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS6_10opDispatchIjJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKjSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE1_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !tbaa.struct !409
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS3_10opDispatchIjJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKjSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implIjjZNS1_10opDispatchIjJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKjSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !370
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !9124, !nonnull !359, !align !389
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9126, !nonnull !359, !align !389
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9127, !nonnull !359, !align !389
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9128, !nonnull !359, !align !415
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !359, !align !389
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !359, !align !389
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !359, !align !389
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !359, !align !389
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !9129, !nonnull !359, !align !389
  %i.y = load i64, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !359, !align !389 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !359, !align !389 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !359, !align !415 ; 8 uses
  %i.af = sext i32 %i.a to i64
  br label %bb.b

._crit_edge108:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph107, %.loopexit
  %indvars.iv124 = phi i64 [ %i.af, %.lr.ph107 ], [ %indvars.iv.next125, %.loopexit ] ; 2 uses
  %i.ag = load i32, ptr %i.n, align 4, !tbaa !112 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.ai = add nsw i32 %i.ag, -2
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !86
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !72
  %i.al = load ptr, ptr %i.t, align 8, !tbaa !72
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !72
  %i.an = zext nneg i32 %i.ai to i64
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.066.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.az, %bb.c ] ; 4 uses
  %.065.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.bd, %bb.c ] ; 4 uses
  %.064.lcssa = phi ptr [ %i.l, %bb.b ], [ %i.bh, %bb.c ] ; 4 uses
  switch i64 %i.y, label %.thread81 [
    i64 1, label %bb.d
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.an, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.06388 = phi i64 [ %indvars.iv124, %.lr.ph ], [ %i.ar, %bb.c ] ; 2 uses
  %.06487 = phi ptr [ %i.l, %.lr.ph ], [ %i.bh, %bb.c ]
  %.06586 = phi ptr [ %i.i, %.lr.ph ], [ %i.bd, %bb.c ]
  %.06685 = phi ptr [ %i.f, %.lr.ph ], [ %i.az, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = udiv i64 %.06388, %i.aq                 ; 2 uses
  %i.as = zext i32 %i.ap to i64
  %i.at = mul i64 %i.ar, %i.as
  %i.au = sub i64 %.06388, %i.at
  %sext = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext, 32                ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.06685, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %.06586, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = mul i64 %i.bf, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %.06487, i64 %i.bg ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !9130

bb.d:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.aa, align 8, !tbaa !45
  switch i64 %i.bi, label %.thread81 [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.bj = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %.preheader, label %.thread81

.preheader:                                       ; preds = %bb.e
  %i.bl = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph99, label %.loopexit

.lr.ph99:                                         ; preds = %.preheader, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit ], [ 0, %.preheader ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.066.lcssa, i64 %indvars.iv121
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %.065.lcssa, i64 %indvars.iv121
  %i.bp = load i32, ptr %i.bn, align 4, !tbaa !112
  %i.bq = load i32, ptr %i.bo, align 4, !tbaa !112 ; 4 uses
  %i.br = srem i32 %i.bp, %i.bq                   ; 4 uses
  %i.bs = icmp slt i32 %i.br, 0
  %i.bt = icmp sgt i32 %i.bq, 0
  %or.cond.i.i = and i1 %i.bt, %i.bs
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph99
  %i.bu = icmp sgt i32 %i.br, 0
  %i.bv = icmp slt i32 %i.bq, 0
  %or.cond3.i.i = and i1 %i.bv, %i.bu
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %.lr.ph99
  %i.bw = add nsw i32 %i.br, %i.bq
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchIjJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKjSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.bw, %bb.g ], [ %i.br, %bb.f ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.064.lcssa, i64 %indvars.iv121
  store i32 %.0.i.i, ptr %i.bx, align 4, !tbaa !112
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.by = load i32, ptr %i.ae, align 4, !tbaa !112
  %i.bz = sext i32 %i.by to i64
  %i.ca = icmp slt i64 %indvars.iv.next122, %i.bz
  br i1 %i.ca, label %.lr.ph99, label %.loopexit, !llvm.loop !9131

bb.h:                                             ; preds = %bb.d
  %i.cb = load i64, ptr %i.ac, align 8, !tbaa !45
  %i.cc = icmp eq i64 %i.cb, 1
end_hunk_3
begin_hunk_4_@_ZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_m:bb.a
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.ba, %bb.n ], [ %.pn78.pn, %bb.bq ], [ %.pn78.pn, %bb.bp ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.it = load ptr, ptr %13, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i146 = icmp eq ptr %i.it, null
  br i1 %.not.i.i.i146, label %.body104, label %bb.br

bb.br:                                            ; preds = %.body115
  %i.iu = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !75
  %i.iw = ptrtoint ptr %i.iv to i64
  %i.ix = ptrtoint ptr %i.it to i64
  %i.iy = sub i64 %i.iw, %i.ix
  call void @_ZdlPvm(ptr noundef nonnull %i.it, i64 noundef %i.iy) #24
  br label %.body104

.body104:                                         ; preds = %bb.k, %bb.br, %.body115
  %.pn82.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %.pn82.pn.pn, %bb.br ], [ %.pn82.pn.pn, %.body115 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %i.iz = load ptr, ptr %12, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i149 = icmp eq ptr %i.iz, null
  br i1 %.not.i.i.i149, label %.body94, label %bb.bs

bb.bs:                                            ; preds = %.body104
  %i.ja = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !75
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.iz to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.iz, i64 noundef %i.je) #24
  br label %.body94

.body94:                                          ; preds = %bb.h, %bb.bs, %.body104
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ac, %bb.h ], [ %.pn82.pn.pn.pn, %bb.bs ], [ %.pn82.pn.pn.pn, %.body104 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.jf = load ptr, ptr %11, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i152 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i152, label %.body, label %bb.bt

bb.bt:                                            ; preds = %.body94
  %i.jg = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !89
  %i.ji = ptrtoint ptr %i.jh to i64
  %i.jj = ptrtoint ptr %i.jf to i64
  %i.jk = sub i64 %i.ji, %i.jj
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jk) #24
  br label %.body

.body:                                            ; preds = %bb.bt, %.body94
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS6_10opDispatchImJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKmSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS6_10opDispatchImJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKmSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE0_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !tbaa.struct !3274
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE0_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE0_clESZ_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9884, !nonnull !359, !align !389
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  switch i64 %i.b, label %.thread40 [
    i64 1, label %bb.b
    i64 0, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9886, !nonnull !359, !align !389
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  switch i64 %i.e, label %.thread40 [
    i64 1, label %bb.c
    i64 0, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9887, !nonnull !359, !align !389
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.d, label %.thread40

bb.d:                                             ; preds = %bb.c
  %i.j = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !370  ; 2 uses
  %i.m = icmp slt i32 %i.j, %i.l
  br i1 %i.m, label %.lr.ph54, label %.loopexit

.lr.ph54:                                         ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9888, !nonnull !359, !align !389
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !288
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !9889, !nonnull !359, !align !389
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !288
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !9890, !nonnull !359, !align !389
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !288
  %i.w = sext i32 %i.j to i64
  %wide.trip.count88 = sext i32 %i.l to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph54, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit
  %indvars.iv85 = phi i64 [ %i.w, %.lr.ph54 ], [ %indvars.iv.next86, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv85
  %i.y = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv85
  %i.z = load i64, ptr %i.x, align 8, !tbaa !45
  %i.aa = trunc i64 %i.z to i32
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !45
  %i.ac = trunc i64 %i.ab to i32                  ; 4 uses
  %i.ad = srem i32 %i.aa, %i.ac                   ; 4 uses
  %i.ae = icmp slt i32 %i.ad, 0
  %i.af = icmp sgt i32 %i.ac, 0
  %or.cond.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp sgt i32 %i.ad, 0
  %i.ah = icmp slt i32 %i.ac, 0
  %or.cond3.i.i = and i1 %i.ah, %i.ag
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = add nsw i32 %i.ad, %i.ac
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.ai, %bb.g ], [ %i.ad, %bb.f ]
  %i.aj = sext i32 %.0.i.i to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv85
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !45
  %indvars.iv.next86 = add nsw i64 %indvars.iv85, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next86, %wide.trip.count88
  br i1 %exitcond89.not, label %.loopexit, label %bb.e, !llvm.loop !9891

bb.h:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !9887, !nonnull !359, !align !389
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = icmp eq i64 %i.an, 1
  br i1 %i.ao, label %bb.i, label %.thread40

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !370 ; 2 uses
  %i.as = icmp slt i32 %i.ap, %i.ar
  br i1 %i.as, label %.lr.ph46, label %.loopexit

.lr.ph46:                                         ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !9889, !nonnull !359, !align !389
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !288
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !9888, !nonnull !359, !align !389
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !288 ; 6 uses
  %.fr = freeze i64 %i.aw
  %i.ba = trunc i64 %.fr to i32                   ; 14 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !9890, !nonnull !359, !align !389
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !288 ; 6 uses
  %i.bf = sext i32 %i.ap to i64                   ; 12 uses
  %wide.trip.count78 = sext i32 %i.ar to i64      ; 6 uses
  br i1 %i.bb, label %.lr.ph46.split.split.us.preheader, label %.lr.ph46.split.us

.lr.ph46.split.split.us.preheader:                ; preds = %.lr.ph46
  %i.bg = sub nsw i64 %wide.trip.count78, %i.bf
  %xtraiter117 = and i64 %i.bg, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph46.split.split.us.prol.loopexit, label %.lr.ph46.split.split.us.prol

.lr.ph46.split.split.us.prol:                     ; preds = %.lr.ph46.split.split.us.preheader
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !45
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = srem i32 %i.bj, %i.ba                   ; 2 uses
  %i.bl = icmp slt i32 %i.bk, 0
  %i.bm = select i1 %i.bl, i32 %i.ba, i32 0
  %.0.i.i28.us50.prol = add nsw i32 %i.bk, %i.bm
  %i.bn = sext i32 %.0.i.i28.us50.prol to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !45
  %indvars.iv.next76.prol = add nsw i64 %i.bf, 1
  br label %.lr.ph46.split.split.us.prol.loopexit

.lr.ph46.split.split.us.prol.loopexit:            ; preds = %.lr.ph46.split.split.us.prol, %.lr.ph46.split.split.us.preheader
  %indvars.iv75.unr = phi i64 [ %i.bf, %.lr.ph46.split.split.us.preheader ], [ %indvars.iv.next76.prol, %.lr.ph46.split.split.us.prol ]
  %i.bp = add nsw i64 %wide.trip.count78, -1
  %i.bq = icmp eq i64 %i.bp, %i.bf
  br i1 %i.bq, label %.loopexit, label %.lr.ph46.split.split.us

.lr.ph46.split.us:                                ; preds = %.lr.ph46
  %i.br = icmp slt i32 %i.ba, 0
  br i1 %i.br, label %.lr.ph46.split.us.split.preheader, label %.loopexit

.lr.ph46.split.us.split.preheader:                ; preds = %.lr.ph46.split.us
  %i.bs = sub nsw i64 %wide.trip.count78, %i.bf
  %xtraiter115 = and i64 %i.bs, 1
  %lcmp.mod116.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod116.not, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit29.us.us, label %.lr.ph46.split.us.split.prol

.lr.ph46.split.us.split.prol:                     ; preds = %.lr.ph46.split.us.split.preheader
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.bf
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !45
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = srem i32 %i.bv, %i.ba                   ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  %i.by = select i1 %i.bx, i32 %i.ba, i32 0
  %spec.select.prol = add nsw i32 %i.bw, %i.by
  %i.bz = sext i32 %spec.select.prol to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.be, i64 %i.bf
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !45
  %indvars.iv.next71.prol = add nsw i64 %i.bf, 1
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit29.us.us

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit29.us.us: ; preds = %.lr.ph46.split.us.split.prol, %.lr.ph46.split.us.split.preheader
  %indvars.iv65 = phi i64 [ %i.bf, %.lr.ph46.split.us.split.preheader ], [ %indvars.iv.next71.prol, %.lr.ph46.split.us.split.prol ]
  %indvars.iv.next66.1 = add nsw i64 %wide.trip.count78, -1
  %exitcond69.not.1 = icmp eq i64 %indvars.iv.next66.1, %i.bf
  br i1 %exitcond69.not.1, label %.loopexit, label %.lr.ph46.split.us.split

.lr.ph46.split.us.split:                          ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split
  %indvars.iv70 = phi i64 [ %indvars.iv.next71.1, %.lr.ph46.split.us.split ], [ %indvars.iv65, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit29.us.us ] ; 4 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv70
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !45
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = srem i32 %i.cd, %i.ba                   ; 2 uses
  %i.cf = icmp sgt i32 %i.ce, 0
  %i.cg = select i1 %i.cf, i32 %i.ba, i32 0
  %spec.select = add nsw i32 %i.ce, %i.cg
  %i.ch = sext i32 %spec.select to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv70
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !45
  %indvars.iv.next71 = add nsw i64 %indvars.iv70, 1 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv.next71
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.cl = trunc i64 %i.ck to i32
  %i.cm = srem i32 %i.cl, %i.ba                   ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %i.co = select i1 %i.cn, i32 %i.ba, i32 0
  %spec.select.1 = add nsw i32 %i.cm, %i.co
  %i.cp = sext i32 %spec.select.1 to i64
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next71
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !45
  %indvars.iv.next71.1 = add nsw i64 %indvars.iv70, 2 ; 2 uses
  %exitcond74.not.1 = icmp eq i64 %indvars.iv.next71.1, %wide.trip.count78
  br i1 %exitcond74.not.1, label %.loopexit, label %.lr.ph46.split.us.split, !llvm.loop !9892

.lr.ph46.split.split.us:                          ; preds = %.lr.ph46.split.split.us.prol.loopexit, %.lr.ph46.split.split.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76.1, %.lr.ph46.split.split.us ], [ %indvars.iv75.unr, %.lr.ph46.split.split.us.prol.loopexit ] ; 4 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv75
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = srem i32 %i.ct, %i.ba                   ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  %i.cw = select i1 %i.cv, i32 %i.ba, i32 0
  %.0.i.i28.us50 = add nsw i32 %i.cu, %i.cw
  %i.cx = sext i32 %.0.i.i28.us50 to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv75
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !45
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.az, i64 %indvars.iv.next76
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !45
  %i.db = trunc i64 %i.da to i32
  %i.dc = srem i32 %i.db, %i.ba                   ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  %i.de = select i1 %i.dd, i32 %i.ba, i32 0
  %.0.i.i28.us50.1 = add nsw i32 %i.dc, %i.de
  %i.df = sext i32 %.0.i.i28.us50.1 to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.be, i64 %indvars.iv.next76
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !45
  %indvars.iv.next76.1 = add nsw i64 %indvars.iv75, 2 ; 2 uses
  %exitcond79.not.1 = icmp eq i64 %indvars.iv.next76.1, %wide.trip.count78
  br i1 %exitcond79.not.1, label %.loopexit, label %.lr.ph46.split.split.us, !llvm.loop !9892

bb.j:                                             ; preds = %bb.a
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !9886, !nonnull !359, !align !389
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !45
  %i.dk = icmp eq i64 %i.dj, 1
  br i1 %i.dk, label %bb.k, label %.thread40

bb.k:                                             ; preds = %bb.j
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !9887, !nonnull !359, !align !389
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !45
  %i.do = icmp eq i64 %i.dn, 1
  br i1 %i.do, label %bb.l, label %.thread40

bb.l:                                             ; preds = %bb.k
  %i.dp = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !370 ; 2 uses
  %i.ds = icmp slt i32 %i.dp, %i.dr
  br i1 %i.ds, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.l
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !9888, !nonnull !359, !align !389
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !288
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !45
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !9889, !nonnull !359, !align !389
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !288
  %i.ea = trunc i64 %i.dw to i32
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !9890, !nonnull !359, !align !389
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !288
  %i.ee = sext i32 %i.dp to i64
  %wide.trip.count = sext i32 %i.dr to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit33
  %indvars.iv = phi i64 [ %i.ee, %.lr.ph ], [ %indvars.iv.next, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit33 ] ; 3 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %indvars.iv
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !45
  %i.eh = trunc i64 %i.eg to i32                  ; 4 uses
  %i.ei = srem i32 %i.ea, %i.eh                   ; 4 uses
  %i.ej = icmp slt i32 %i.ei, 0
  %i.ek = icmp sgt i32 %i.eh, 0
  %or.cond.i.i30 = and i1 %i.ek, %i.ej
  br i1 %or.cond.i.i30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.el = icmp sgt i32 %i.ei, 0
  %i.em = icmp slt i32 %i.eh, 0
  %or.cond3.i.i31 = and i1 %i.em, %i.el
  br i1 %or.cond3.i.i31, label %bb.o, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit33

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.en = add nsw i32 %i.ei, %i.eh
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit33

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit33: ; preds = %bb.n, %bb.o
  %.0.i.i32 = phi i32 [ %i.en, %bb.o ], [ %i.ei, %bb.n ]
  %i.eo = sext i32 %.0.i.i32 to i64
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %indvars.iv
  store i64 %i.eo, ptr %i.ep, align 8, !tbaa !45
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.m, !llvm.loop !9893

.thread40:                                        ; preds = %bb.b, %bb.c, %bb.a, %bb.h, %bb.k, %bb.j
  %i.eq = load i32, ptr %1, align 4, !tbaa !368   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !370 ; 2 uses
  %i.et = icmp slt i32 %i.eq, %i.es
  br i1 %i.et, label %.lr.ph56, label %.loopexit

.lr.ph56:                                         ; preds = %.thread40
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !9888, !nonnull !359, !align !389 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !9889, !nonnull !359, !align !389 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !9890, !nonnull !359, !align !389 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph56, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit37
  %.055 = phi i32 [ %i.eq, %.lr.ph56 ], [ %i.fq, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit37 ]
  %i.fc = load ptr, ptr %i.ev, align 8, !tbaa !288 ; 2 uses
  %i.fd = load ptr, ptr %i.ex, align 8, !tbaa !288
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !45
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i64, ptr %i.fd, align 8, !tbaa !45
  %i.fh = trunc i64 %i.fg to i32                  ; 4 uses
  %i.fi = srem i32 %i.ff, %i.fh                   ; 4 uses
  %i.fj = icmp slt i32 %i.fi, 0
  %i.fk = icmp sgt i32 %i.fh, 0
  %or.cond.i.i34 = and i1 %i.fk, %i.fj
  br i1 %or.cond.i.i34, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fl = icmp sgt i32 %i.fi, 0
  %i.fm = icmp slt i32 %i.fh, 0
  %or.cond3.i.i35 = and i1 %i.fm, %i.fl
  br i1 %or.cond3.i.i35, label %bb.r, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit37

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.fn = add nsw i32 %i.fi, %i.fh
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit37

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit37: ; preds = %bb.q, %bb.r
  %.0.i.i36 = phi i32 [ %i.fn, %bb.r ], [ %i.fi, %bb.q ]
  %i.fo = sext i32 %.0.i.i36 to i64
  %i.fp = load ptr, ptr %i.ez, align 8, !tbaa !288
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !45
  %i.fq = add nsw i32 %.055, 1                    ; 2 uses
  %i.fr = load ptr, ptr %0, align 8, !tbaa !9884, !nonnull !359, !align !389
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.fs
  store ptr %i.ft, ptr %i.ev, align 8, !tbaa !288
  %i.fu = load ptr, ptr %i.fa, align 8, !tbaa !9886, !nonnull !359, !align !389
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !45
  %i.fw = load ptr, ptr %i.ex, align 8, !tbaa !288
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fv
  store ptr %i.fx, ptr %i.ex, align 8, !tbaa !288
  %i.fy = load ptr, ptr %i.fb, align 8, !tbaa !9887, !nonnull !359, !align !389
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !45
  %i.ga = load ptr, ptr %i.ez, align 8, !tbaa !288
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %i.fz
  store ptr %i.gb, ptr %i.ez, align 8, !tbaa !288
  %exitcond90.not = icmp eq i32 %i.fq, %i.es
  br i1 %exitcond90.not, label %.loopexit, label %bb.p, !llvm.loop !9894

.loopexit:                                        ; preds = %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit33, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit29.us.us, %.lr.ph46.split.us.split, %.lr.ph46.split.split.us.prol.loopexit, %.lr.ph46.split.split.us, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit37, %.lr.ph46.split.us, %bb.l, %bb.i, %bb.d, %.thread40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS6_10opDispatchImJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKmSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !373
  tail call void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS6_10opDispatchImJRSt6vectorINS0_3MatESaISA_EESD_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISF_bEE5valueEvE4typeEmDpOT0_EUlRKmSM_E8_EEvRKT1_iRKS9_IiSaIiEEPKcRKS9_ImSaImEESW_S10_PcS10_mEUlS3_E1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mEUlRKNS_5RangeEE1_, ptr %0, align 8, !tbaa !384
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !373
  store ptr %i.a, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !373
  %i.c = tail call noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #23 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false), !tbaa.struct !409
  store ptr %i.c, ptr %0, align 8, !tbaa !373
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !373    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 112) #24
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS3_10opDispatchImJRSt6vectorINS1_3MatESaIS7_EESA_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISC_bEE5valueEvE4typeEmDpOT0_EUlRKmSJ_E8_EEvRKT1_iRKS6_IiSaIiEEPKcRKS6_ImSaImEEST_SX_PcSX_mEUlRKNS1_5RangeEE1_E10_M_managerERSt9_Any_dataRKS14_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZZN2cv3dnn20NaryEltwiseLayerImpl19binary_forward_implImmZNS1_10opDispatchImJRSt6vectorINS_3MatESaIS5_EES8_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameISA_bEE5valueEvE4typeEmDpOT0_EUlRKmSH_E8_EEvRKT1_iRKS4_IiSaIiEEPKcRKS4_ImSaImEESR_SV_PcSV_mENKUlRKNS_5RangeEE1_clESZ_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !368    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !370  ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !9895, !nonnull !359, !align !389
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !362  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9897, !nonnull !359, !align !389
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !362  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9898, !nonnull !359, !align !389
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !362  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9899, !nonnull !359, !align !415
  %i.o = load i32, ptr %i.n, align 4, !tbaa !112  ; 2 uses
  %i.p = add i32 %i.o, -2
  %i.q = icmp sgt i32 %i.o, 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !359, !align !389
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !359, !align !389
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !359, !align !389
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !359, !align !389
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !9900, !nonnull !359, !align !389 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !359, !align !389 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !359, !align !389 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !359, !align !415 ; 4 uses
  %i.ah = zext i32 %i.p to i64
  %i.ai = sext i32 %i.a to i64
  %wide.trip.count132 = sext i32 %i.c to i64
  br label %bb.b

._crit_edge108:                                   ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph107, %.loopexit
  %indvars.iv129 = phi i64 [ %i.ai, %.lr.ph107 ], [ %indvars.iv.next130, %.loopexit ] ; 2 uses
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.aj = load ptr, ptr %i.s, align 8, !tbaa !86
  %i.ak = load ptr, ptr %i.u, align 8, !tbaa !72
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !72
  br label %bb.c

._crit_edge:                                      ; preds = %bb.c, %bb.b
  %.066.lcssa = phi ptr [ %i.f, %bb.b ], [ %i.az, %bb.c ] ; 4 uses
  %.065.lcssa = phi ptr [ %i.i, %bb.b ], [ %i.bd, %bb.c ] ; 4 uses
  %.064.lcssa = phi ptr [ %i.l, %bb.b ], [ %i.bh, %bb.c ] ; 4 uses
  %i.an = load i64, ptr %i.aa, align 8, !tbaa !45
  switch i64 %i.an, label %.thread81 [
    i64 1, label %bb.d
    i64 0, label %bb.j
  ]

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ah, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 6 uses
  %.06388 = phi i64 [ %indvars.iv129, %.lr.ph ], [ %i.ar, %bb.c ] ; 2 uses
  %.06487 = phi ptr [ %i.l, %.lr.ph ], [ %i.bh, %bb.c ]
  %.06586 = phi ptr [ %i.i, %.lr.ph ], [ %i.bd, %bb.c ]
  %.06685 = phi ptr [ %i.f, %.lr.ph ], [ %i.az, %bb.c ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !112 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = udiv i64 %.06388, %i.aq                 ; 2 uses
  %i.as = zext i32 %i.ap to i64
  %i.at = mul i64 %i.ar, %i.as
  %i.au = sub i64 %.06388, %i.at
  %sext = shl i64 %i.au, 32
  %i.av = ashr exact i64 %sext, 32                ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !45
  %i.ay = mul i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %.06685, i64 %i.ay ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bc = mul i64 %i.bb, %i.av
  %i.bd = getelementptr inbounds nuw i8, ptr %.06586, i64 %i.bc ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !45
  %i.bg = mul i64 %i.bf, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %.06487, i64 %i.bg ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not = icmp eq i64 %indvars.iv, 0
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !9901

bb.d:                                             ; preds = %._crit_edge
  %i.bi = load i64, ptr %i.ac, align 8, !tbaa !45
  switch i64 %i.bi, label %.thread81 [
    i64 1, label %bb.e
    i64 0, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.bj = load i64, ptr %i.ae, align 8, !tbaa !45
  %i.bk = icmp eq i64 %i.bj, 1
  br i1 %i.bk, label %.preheader, label %.thread81

.preheader:                                       ; preds = %bb.e
  %i.bl = load i32, ptr %i.ag, align 4, !tbaa !112 ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %.lr.ph99.preheader, label %.loopexit

.lr.ph99.preheader:                               ; preds = %.preheader
  %wide.trip.count126 = zext nneg i32 %i.bl to i64
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit
  %indvars.iv123 = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvars.iv.next124, %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit ] ; 4 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.066.lcssa, i64 %indvars.iv123
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %.065.lcssa, i64 %indvars.iv123
  %i.bp = load i64, ptr %i.bn, align 8, !tbaa !45
  %i.bq = trunc i64 %i.bp to i32
  %i.br = load i64, ptr %i.bo, align 8, !tbaa !45
  %i.bs = trunc i64 %i.br to i32                  ; 4 uses
  %i.bt = srem i32 %i.bq, %i.bs                   ; 4 uses
  %i.bu = icmp slt i32 %i.bt, 0
  %i.bv = icmp sgt i32 %i.bs, 0
  %or.cond.i.i = and i1 %i.bv, %i.bu
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph99
  %i.bw = icmp sgt i32 %i.bt, 0
  %i.bx = icmp slt i32 %i.bs, 0
  %or.cond3.i.i = and i1 %i.bx, %i.bw
  br i1 %or.cond3.i.i, label %bb.g, label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit

bb.g:                                             ; preds = %bb.f, %.lr.ph99
  %i.by = add nsw i32 %i.bt, %i.bs
  br label %_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit

_ZZN2cv3dnn20NaryEltwiseLayerImpl10opDispatchImJRSt6vectorINS_3MatESaIS4_EES7_EEENSt9enable_ifIXaasr3std11is_integralIT_EE5valuentsr3std7is_sameIS9_bEE5valueEvE4typeEmDpOT0_ENKUlRKmSG_E8_clESG_SG_.exit: ; preds = %bb.f, %bb.g
  %.0.i.i = phi i32 [ %i.by, %bb.g ], [ %i.bt, %bb.f ]
  %i.bz = sext i32 %.0.i.i to i64
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.064.lcssa, i64 %indvars.iv123
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !45
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
end_hunk_4
