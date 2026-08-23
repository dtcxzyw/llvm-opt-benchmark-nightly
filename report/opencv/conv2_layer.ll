Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_layer?download=true
inline.NumInlined: 1047
inline.NumDeleted: 475
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK2cv29ParallelLoopBodyLambdaWrapperclERKNS_5RangeE:bb.a
}

; Function Attrs: noreturn
declare void @_ZSt25__throw_bad_function_callv() local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313    ; 8 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !308    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !310
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph38.i.i.i, label %_ZSt10__invoke_rIvRZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS0_5RangeEE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph38.i.i.i:                                   ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.k = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.i.i.i, %.lr.ph38.i.i.i
  %indvars.iv44.i.i.i = phi i64 [ %i.k, %.lr.ph38.i.i.i ], [ %indvars.iv.next45.i.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.l = shl nsw i64 %indvars.iv44.i.i.i, 3       ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !328, !nonnull !121, !align !330
  %i.n = load i32, ptr %i.m, align 4, !tbaa !104
  %i.o = sext i32 %i.n to i64
  %i.p = sub nsw i64 %i.o, %i.l                   ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !331, !nonnull !121, !align !332
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !307
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !333, !nonnull !121, !align !330
  %i.t = load i32, ptr %i.s, align 4, !tbaa !104
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %indvars.iv44.i.i.i, 5
  %.idx.i.i.i = mul i64 %i.v, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i.i.i
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !334, !nonnull !121, !align !330
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104
  %i.z = sext i32 %i.y to i64
  %.idx27.i.i.i = shl nsw i64 %i.z, 5
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx27.i.i.i ; 2 uses
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !335, !nonnull !121, !align !332
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !307
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.l ; 2 uses
  %.wide.i.i.i = icmp sgt i64 %i.p, 7
  br i1 %.wide.i.i.i, label %.preheader.i.i.i, label %bb.c

.preheader.i.i.i:                                 ; preds = %bb.b
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !336, !nonnull !121, !align !330
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !104
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph36.i.i.i, label %.loopexit.i.i.i

.lr.ph36.i.i.i:                                   ; preds = %.preheader.i.i.i, %.lr.ph36.i.i.i
  %indvars.iv41.i.i.i = phi i64 [ %indvars.iv.next42.i.i.i, %.lr.ph36.i.i.i ], [ 0, %.preheader.i.i.i ] ; 2 uses
  %.02334.i.i.i = phi ptr [ %i.am, %.lr.ph36.i.i.i ], [ %i.aa, %.preheader.i.i.i ] ; 2 uses
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !328, !nonnull !121, !align !330
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !104
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %indvars.iv41.i.i.i, %i.aj
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ak
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.al, ptr noundef nonnull align 4 dereferenceable(32) %.02334.i.i.i, i64 32, i1 false)
  %i.am = getelementptr inbounds nuw i8, ptr %.02334.i.i.i, i64 32
  %indvars.iv.next42.i.i.i = add nuw nsw i64 %indvars.iv41.i.i.i, 1 ; 2 uses
  %i.an = load ptr, ptr %i.j, align 8, !tbaa !336, !nonnull !121, !align !330
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !104
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp slt i64 %indvars.iv.next42.i.i.i, %i.ap
  br i1 %i.aq, label %.lr.ph36.i.i.i, label %.loopexit.i.i.i, !llvm.loop !337

bb.c:                                             ; preds = %bb.b
  %i.ar = shl nsw i64 %i.p, 2
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !336, !nonnull !121, !align !330
  %i.at = load i32, ptr %i.as, align 4, !tbaa !104
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.c ] ; 2 uses
  %.12432.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i ], [ %i.aa, %bb.c ] ; 2 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !328, !nonnull !121, !align !330
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !104
  %i.ax = sext i32 %i.aw to i64
  %i.ay = mul nsw i64 %indvars.iv.i.i.i, %i.ax
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ay
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.az, ptr align 4 %.12432.i.i.i, i64 %i.ar, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %.12432.i.i.i, i64 32
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = load ptr, ptr %i.j, align 8, !tbaa !336, !nonnull !121, !align !330
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !104
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp slt i64 %indvars.iv.next.i.i.i, %i.bd
  br i1 %i.be, label %.lr.ph.i.i.i, label %.loopexit.i.i.i, !llvm.loop !338

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i, %.lr.ph36.i.i.i, %bb.c, %.preheader.i.i.i
  %indvars.iv.next45.i.i.i = add nsw i64 %indvars.iv44.i.i.i, 1 ; 2 uses
  %i.bf = load i32, ptr %i.c, align 4, !tbaa !310
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next45.i.i.i, %i.bg
  br i1 %i.bh, label %bb.b, label %_ZSt10__invoke_rIvRZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS0_5RangeEE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, !llvm.loop !339

_ZSt10__invoke_rIvRZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS0_5RangeEE_JS8_EENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %.loopexit.i.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlS3_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !340
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !313
  store ptr %i.a, ptr %0, align 8, !tbaa !313
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !313
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !tbaa.struct !342
  store ptr %i.c, ptr %0, align 8, !tbaa !313
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !313    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 48) #25
  br label %_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZN2cv3dnn14Conv2LayerImpl17gatherNCHWcToNHWCEPKfiiiiPfiEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlS3_E_E9_M_invokeERKSt9_Any_dataS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !313
  tail call void @_ZZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfENKUlRKNS_5RangeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull align 4 dereferenceable(8) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNKS0_3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlS3_E_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #0 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS_5RangeEE_, ptr %0, align 8, !tbaa !340
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !313
  store ptr %i.a, ptr %0, align 8, !tbaa !313
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !313
  %i.c = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #21 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.c, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !tbaa.struct !343
  store ptr %i.c, ptr %0, align 8, !tbaa !313
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !313    ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 104) #25
  br label %_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfEUlRKNS1_5RangeEE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZNK2cv3dnn14Conv2LayerImpl18scatterAndActivateEPKfiiiiPfENKUlRKNS_5RangeEE_clES7_(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = alloca [8 x float], align 32             ; 36 uses
  %i.b = alloca [8 x float], align 32             ; 37 uses
  %i.c = alloca [8 x float], align 32             ; 52 uses
  %i.d = load i32, ptr %1, align 4, !tbaa !308    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !310  ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.lr.ph73, label %._crit_edge74

.lr.ph73:                                         ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !344, !nonnull !121, !align !330
  %i.i = load i32, ptr %i.h, align 4, !tbaa !104  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !346, !nonnull !121, !align !332
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !307
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !347, !nonnull !121, !align !330
  %i.o = load i32, ptr %i.n, align 4, !tbaa !104
  %i.p = sext i32 %i.o to i64
  %factor.op.mul = shl nsw i64 %i.p, 5
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !348, !nonnull !121, !align !330
  %i.s = load i32, ptr %i.r, align 4, !tbaa !104
  %i.t = sext i32 %i.s to i64
  %.idx45 = shl nsw i64 %i.t, 5
  %invariant.gep = getelementptr i8, ptr %i.l, i64 %.idx45
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !349, !nonnull !121, !align !332
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !307
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !121, !align !332 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !121, !align !332 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !121, !align !332
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !350, !nonnull !121, !align !330
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !104 ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.aj = sext i32 %i.i to i64                    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 17 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 17 uses
  %i.am = sext i32 %i.d to i64
  %i.an = sub i32 %i.f, %i.d
  %wide.trip.count = zext nneg i32 %i.ag to i64
  %wide.trip.count115 = zext nneg i32 %i.ag to i64
  %wide.trip.count136 = zext nneg i32 %i.ag to i64
  %.4..sroa_idx310 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.4..sroa_idx269 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.8..sroa_idx315 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..sroa_idx275 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.12..sroa_idx320 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.12..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.16..sroa_idx325 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..sroa_idx287 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.20..sroa_idx330 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.20..sroa_idx293 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.24..sroa_idx335 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.28..sroa_idx340 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.28..sroa_idx305 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.4..sroa_idx270 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.4..sroa_idx218 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.8..sroa_idx276 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..sroa_idx225 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.12..sroa_idx282 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.12..sroa_idx232 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.16..sroa_idx288 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.20..sroa_idx294 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.20..sroa_idx246 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.24..sroa_idx300 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.24..sroa_idx253 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.28..sroa_idx306 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.28..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.4..sroa_idx311 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.4..sroa_idx219 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.8..sroa_idx316 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..sroa_idx226 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.12..sroa_idx321 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.12..sroa_idx233 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.16..sroa_idx326 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.20..sroa_idx331 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.20..sroa_idx247 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.24..sroa_idx336 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..sroa_idx254 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.28..sroa_idx341 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.28..sroa_idx261 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.4..sroa_idx312 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.4..sroa_idx220 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.8..sroa_idx317 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..sroa_idx227 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.12..sroa_idx322 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.12..sroa_idx234 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.16..sroa_idx327 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..sroa_idx241 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.20..sroa_idx332 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.20..sroa_idx248 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.24..sroa_idx337 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..sroa_idx255 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.28..sroa_idx342 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.28..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.4..sroa_idx313 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.4..sroa_idx271 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.4..sroa_idx221 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.8..sroa_idx318 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.8..sroa_idx277 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..sroa_idx228 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.12..sroa_idx323 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.12..sroa_idx283 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.12..sroa_idx235 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.16..sroa_idx328 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..sroa_idx289 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.20..sroa_idx333 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.20..sroa_idx295 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.20..sroa_idx249 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.24..sroa_idx338 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.24..sroa_idx301 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.24..sroa_idx256 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.28..sroa_idx343 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.28..sroa_idx307 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.28..sroa_idx263 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.4..sroa_idx267 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.8..sroa_idx273 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.12..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.16..sroa_idx285 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.20..sroa_idx291 = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %.20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.24..sroa_idx297 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.28..sroa_idx303 = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %.28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %.4..sroa_idx216 = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %.8..sroa_idx223 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.12..sroa_idx230 = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.16..sroa_idx237 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.20..sroa_idx244 = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %.24..sroa_idx251 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.28..sroa_idx258 = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  br label %bb.b

._crit_edge74:                                    ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph73, %._crit_edge
  %indvars.iv138 = phi i64 [ %i.am, %.lr.ph73 ], [ %indvars.iv.next139, %._crit_edge ] ; 3 uses
  %indvar = phi i32 [ 0, %.lr.ph73 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %i.ao = add i32 %i.d, %indvar
  %i.ap = shl i32 %i.ao, 3
  %i.aq = sub i32 %i.i, %i.ap
  %i.ar = tail call i32 @llvm.smax.i32(i32 %i.aq, i32 1)
  %i.as = tail call i32 @llvm.umin.i32(i32 %i.ar, i32 8)
  %i.at = shl nuw nsw i32 %i.as, 2
  %i.au = zext nneg i32 %i.at to i64              ; 4 uses
  %2 = add i32 %i.d, %indvar
  %i.av = shl i32 %2, 3
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 2                    ; 3 uses
  %i.ay = shl nsw i64 %indvars.iv138, 3           ; 5 uses
  %i.az = sub nsw i64 %i.aj, %i.ay                ; 71 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv138
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.reass ; 3 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ay ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  %i.bb = icmp sgt i64 %i.az, 0                   ; 6 uses
  br i1 %i.bb, label %.lr.ph, label %.preheader61

.lr.ph:                                           ; preds = %bb.b
  %i.bc = load ptr, ptr %i.y, align 8, !tbaa !307 ; 3 uses
  %.not48 = icmp eq ptr %i.bc, null               ; 9 uses
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !307 ; 4 uses
  %.not49 = icmp eq ptr %i.bd, null               ; 17 uses
  %i.be = load ptr, ptr %i.ac, align 8, !tbaa !307 ; 2 uses
  %.not50 = icmp eq ptr %i.be, null
  br i1 %.not50, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %i.c, ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i64 %i.au, i1 false), !tbaa !279
  %invariant.gep197 = getelementptr [4 x i8], ptr %i.bc, i64 %i.ay ; 8 uses
  %invariant.gep199 = getelementptr [4 x i8], ptr %i.bd, i64 %i.ay ; 8 uses
  br i1 %.not48, label %bb.dc, label %bb.db

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.bf = load ptr, ptr %i.ad, align 8, !tbaa !351, !nonnull !121, !align !330
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !279 ; 24 uses
  br i1 %.not48, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split.preheader

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph.split.us
  %scevgep84 = getelementptr i8, ptr %i.bc, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %i.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep84, i64 %i.au, i1 false), !tbaa !279
  %invariant.gep201 = getelementptr [4 x i8], ptr %i.bd, i64 %i.ay ; 8 uses
  br i1 %.not49, label %bb.d, label %bb.c

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  br i1 %.not49, label %.lr.ph.split.us.split.us.split.us.preheader, label %.lr.ph.split.us.split.us.split.preheader

.lr.ph.split.us.split.us.split.preheader:         ; preds = %.lr.ph.split.us.split.us
  %scevgep90 = getelementptr i8, ptr %i.bd, i64 %i.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %i.b, ptr noundef nonnull align 4 dereferenceable(1) %scevgep90, i64 %i.au, i1 false), !tbaa !279
  store float 1.000000e+00, ptr %i.a, align 32, !tbaa !279
  store float %i.bg, ptr %i.c, align 32, !tbaa !279
  %.not353 = icmp eq i64 %i.az, 1
  br i1 %.not353, label %.preheader61, label %.lr.ph.split.us.split.us.split.1

.lr.ph.split.us.split.us.split.us.preheader:      ; preds = %.lr.ph.split.us.split.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 32 dereferenceable(1) %i.b, i8 0, i64 %i.au, i1 false), !tbaa !279
  store float 1.000000e+00, ptr %i.a, align 32, !tbaa !279
  store float %i.bg, ptr %i.c, align 32, !tbaa !279
  %.not357 = icmp eq i64 %i.az, 1
  br i1 %.not357, label %.preheader61, label %.lr.ph.split.us.split.us.split.us.1

.lr.ph.split.us.split.us.split.us.1:              ; preds = %.lr.ph.split.us.split.us.split.us.preheader
  store float 1.000000e+00, ptr %.4..sroa_idx312, align 4, !tbaa !279
  store float %i.bg, ptr %.4..sroa_idx220, align 4, !tbaa !279
  %i.bh = icmp sgt i64 %i.az, 2
  br i1 %i.bh, label %.lr.ph.split.us.split.us.split.us.2, label %.preheader61

.lr.ph.split.us.split.us.split.us.2:              ; preds = %.lr.ph.split.us.split.us.split.us.1
  store float 1.000000e+00, ptr %.8..sroa_idx317, align 8, !tbaa !279
  store float %i.bg, ptr %.8..sroa_idx227, align 8, !tbaa !279
  %.not358 = icmp eq i64 %i.az, 3
  br i1 %.not358, label %.preheader61, label %.lr.ph.split.us.split.us.split.us.3

.lr.ph.split.us.split.us.split.us.3:              ; preds = %.lr.ph.split.us.split.us.split.us.2
  store float 1.000000e+00, ptr %.12..sroa_idx322, align 4, !tbaa !279
  store float %i.bg, ptr %.12..sroa_idx234, align 4, !tbaa !279
  %i.bi = icmp sgt i64 %i.az, 4
  br i1 %i.bi, label %.lr.ph.split.us.split.us.split.us.4, label %.preheader61

.lr.ph.split.us.split.us.split.us.4:              ; preds = %.lr.ph.split.us.split.us.split.us.3
  store float 1.000000e+00, ptr %.16..sroa_idx327, align 16, !tbaa !279
  store float %i.bg, ptr %.16..sroa_idx241, align 16, !tbaa !279
  %.not359 = icmp eq i64 %i.az, 5
  br i1 %.not359, label %.preheader61, label %.lr.ph.split.us.split.us.split.us.5

.lr.ph.split.us.split.us.split.us.5:              ; preds = %.lr.ph.split.us.split.us.split.us.4
  store float 1.000000e+00, ptr %.20..sroa_idx332, align 4, !tbaa !279
  store float %i.bg, ptr %.20..sroa_idx248, align 4, !tbaa !279
  %i.bj = icmp sgt i64 %i.az, 6
  br i1 %i.bj, label %.lr.ph.split.us.split.us.split.us.6, label %.preheader61

.lr.ph.split.us.split.us.split.us.6:              ; preds = %.lr.ph.split.us.split.us.split.us.5
  store float 1.000000e+00, ptr %.24..sroa_idx337, align 8, !tbaa !279
  store float %i.bg, ptr %.24..sroa_idx255, align 8, !tbaa !279
  %.not360 = icmp eq i64 %i.az, 7
  br i1 %.not360, label %.preheader61, label %.lr.ph.split.us.split.us.split.us.7

.lr.ph.split.us.split.us.split.us.7:              ; preds = %.lr.ph.split.us.split.us.split.us.6
  store float 1.000000e+00, ptr %.28..sroa_idx342, align 4, !tbaa !279
  store float %i.bg, ptr %.28..sroa_idx262, align 4, !tbaa !279
  br label %.preheader61

.lr.ph.split.us.split.us.split.1:                 ; preds = %.lr.ph.split.us.split.us.split.preheader
  store float 1.000000e+00, ptr %.4..sroa_idx311, align 4, !tbaa !279
  store float %i.bg, ptr %.4..sroa_idx219, align 4, !tbaa !279
  %i.bk = icmp sgt i64 %i.az, 2
  br i1 %i.bk, label %.lr.ph.split.us.split.us.split.2, label %.preheader61

.lr.ph.split.us.split.us.split.2:                 ; preds = %.lr.ph.split.us.split.us.split.1
  store float 1.000000e+00, ptr %.8..sroa_idx316, align 8, !tbaa !279
  store float %i.bg, ptr %.8..sroa_idx226, align 8, !tbaa !279
  %.not354 = icmp eq i64 %i.az, 3
  br i1 %.not354, label %.preheader61, label %.lr.ph.split.us.split.us.split.3

.lr.ph.split.us.split.us.split.3:                 ; preds = %.lr.ph.split.us.split.us.split.2
  store float 1.000000e+00, ptr %.12..sroa_idx321, align 4, !tbaa !279
  store float %i.bg, ptr %.12..sroa_idx233, align 4, !tbaa !279
  %i.bl = icmp sgt i64 %i.az, 4
  br i1 %i.bl, label %.lr.ph.split.us.split.us.split.4, label %.preheader61

.lr.ph.split.us.split.us.split.4:                 ; preds = %.lr.ph.split.us.split.us.split.3
  store float 1.000000e+00, ptr %.16..sroa_idx326, align 16, !tbaa !279
  store float %i.bg, ptr %.16..sroa_idx240, align 16, !tbaa !279
  %.not355 = icmp eq i64 %i.az, 5
  br i1 %.not355, label %.preheader61, label %.lr.ph.split.us.split.us.split.5

.lr.ph.split.us.split.us.split.5:                 ; preds = %.lr.ph.split.us.split.us.split.4
  store float 1.000000e+00, ptr %.20..sroa_idx331, align 4, !tbaa !279
  store float %i.bg, ptr %.20..sroa_idx247, align 4, !tbaa !279
  %i.bm = icmp sgt i64 %i.az, 6
  br i1 %i.bm, label %.lr.ph.split.us.split.us.split.6, label %.preheader61

.lr.ph.split.us.split.us.split.6:                 ; preds = %.lr.ph.split.us.split.us.split.5
  store float 1.000000e+00, ptr %.24..sroa_idx336, align 8, !tbaa !279
  store float %i.bg, ptr %.24..sroa_idx254, align 8, !tbaa !279
  %.not356 = icmp eq i64 %i.az, 7
  br i1 %.not356, label %.preheader61, label %.lr.ph.split.us.split.us.split.7

.lr.ph.split.us.split.us.split.7:                 ; preds = %.lr.ph.split.us.split.us.split.6
  store float 1.000000e+00, ptr %.28..sroa_idx341, align 4, !tbaa !279
  store float %i.bg, ptr %.28..sroa_idx261, align 4, !tbaa !279
  br label %.preheader61

bb.c:                                             ; preds = %.lr.ph.split.us.split.preheader
  %i.bn = load float, ptr %invariant.gep201, align 4, !tbaa !279
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.split.us.split.preheader
  %i.bo = phi float [ %i.bn, %bb.c ], [ 0.000000e+00, %.lr.ph.split.us.split.preheader ]
  store float %i.bo, ptr %i.b, align 32, !tbaa !279
  store float %i.bg, ptr %i.c, align 32, !tbaa !279
  %.not349 = icmp eq i64 %i.az, 1
  br i1 %.not349, label %.preheader61, label %.lr.ph.split.us.split.1

.lr.ph.split.us.split.1:                          ; preds = %bb.d
  br i1 %.not49, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.us.split.1
  %gep202.1 = getelementptr i8, ptr %invariant.gep201, i64 4
  %i.bp = load float, ptr %gep202.1, align 4, !tbaa !279
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.us.split.1
  %i.bq = phi float [ %i.bp, %bb.e ], [ 0.000000e+00, %.lr.ph.split.us.split.1 ]
  store float %i.bq, ptr %.4..sroa_idx270, align 4, !tbaa !279
  store float %i.bg, ptr %.4..sroa_idx218, align 4, !tbaa !279
  %i.br = icmp sgt i64 %i.az, 2
  br i1 %i.br, label %.lr.ph.split.us.split.2, label %.preheader61

.lr.ph.split.us.split.2:                          ; preds = %bb.f
  br i1 %.not49, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split.2
  %gep202.2 = getelementptr i8, ptr %invariant.gep201, i64 8
  %i.bs = load float, ptr %gep202.2, align 4, !tbaa !279
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.us.split.2
  %i.bt = phi float [ %i.bs, %bb.g ], [ 0.000000e+00, %.lr.ph.split.us.split.2 ]
  store float %i.bt, ptr %.8..sroa_idx276, align 8, !tbaa !279
  store float %i.bg, ptr %.8..sroa_idx225, align 8, !tbaa !279
  %.not350 = icmp eq i64 %i.az, 3
  br i1 %.not350, label %.preheader61, label %.lr.ph.split.us.split.3

.lr.ph.split.us.split.3:                          ; preds = %bb.h
  br i1 %.not49, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.split.us.split.3
  %gep202.3 = getelementptr i8, ptr %invariant.gep201, i64 12
  %i.bu = load float, ptr %gep202.3, align 4, !tbaa !279
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.split.us.split.3
  %i.bv = phi float [ %i.bu, %bb.i ], [ 0.000000e+00, %.lr.ph.split.us.split.3 ]
  store float %i.bv, ptr %.12..sroa_idx282, align 4, !tbaa !279
  store float %i.bg, ptr %.12..sroa_idx232, align 4, !tbaa !279
  %i.bw = icmp sgt i64 %i.az, 4
  br i1 %i.bw, label %.lr.ph.split.us.split.4, label %.preheader61

end_hunk_0
