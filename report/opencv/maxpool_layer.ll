inline.NumInlined: 761
inline.NumDeleted: 370
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10maxPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEE3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  %invariant.gep162.i.i.i = getelementptr [4 x i8], ptr %.242.us.us.i.i.i, i64 %i.km ; 4 uses
  %scevgep42 = getelementptr i8, ptr %scevgep39, i64 %i.kf
  br label %.lr.ph31.us.us.us.us.i.i.i

.lr.ph31.us.us.us.us.i.i.i:                       ; preds = %._crit_edge.us.us.us.us.i.i.i, %.lr.ph34.us.us.us.us.i.i.i
  %indvars.iv107.i.i.i = phi i64 [ %indvars.iv.next108.i.i.i, %._crit_edge.us.us.us.us.i.i.i ], [ 0, %.lr.ph34.us.us.us.us.i.i.i ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %indvars.iv107.i.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !111
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.kp ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph31.us.us.us.us.i.i.i
  %i.kr = shl nsw i64 %i.kp, 2
  %scevgep43 = getelementptr i8, ptr %scevgep42, i64 %i.kr
  %bound0 = icmp ult ptr %scevgep, %scevgep43
  %bound1 = icmp ult ptr %i.kq, %scevgep36
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ks = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %index ; 3 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %index ; 2 uses
  %i.ku = getelementptr i8, ptr %i.ks, i64 16     ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ks, align 4, !tbaa !290, !alias.scope !304, !noalias !307 ; 2 uses
  %wide.load44 = load <4 x float>, ptr %i.ku, align 4, !tbaa !290, !alias.scope !304, !noalias !307 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %wide.load45 = load <4 x float>, ptr %i.kt, align 4, !tbaa !290, !alias.scope !307 ; 2 uses
  %wide.load46 = load <4 x float>, ptr %i.kv, align 4, !tbaa !290, !alias.scope !307 ; 2 uses
  %i.kw = fcmp olt <4 x float> %wide.load, %wide.load45
  %i.kx = fcmp olt <4 x float> %wide.load44, %wide.load46
  %i.ky = select <4 x i1> %i.kw, <4 x float> %wide.load45, <4 x float> %wide.load
  %i.kz = select <4 x i1> %i.kx, <4 x float> %wide.load46, <4 x float> %wide.load44
  store <4 x float> %i.ky, ptr %i.ks, align 4, !tbaa !290, !alias.scope !304, !noalias !307
  store <4 x float> %i.kz, ptr %i.ku, align 4, !tbaa !290, !alias.scope !304, !noalias !307
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.la = icmp eq i64 %index.next, %n.vec
  br i1 %i.la, label %middle.block, label %vector.body, !llvm.loop !309

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.us.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph31.us.us.us.us.i.i.i, %middle.block
  %indvars.iv102.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph31.us.us.us.us.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod83.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep163.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %indvars.iv102.i.i.i.ph ; 2 uses
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv102.i.i.i.ph
  %i.lc = load float, ptr %gep163.i.i.i.prol, align 4, !tbaa !290 ; 2 uses
  %i.ld = load float, ptr %i.lb, align 4, !tbaa !290 ; 2 uses
  %i.le = fcmp olt float %i.lc, %i.ld
  %i.lf = select i1 %i.le, float %i.ld, float %i.lc
  store float %i.lf, ptr %gep163.i.i.i.prol, align 4, !tbaa !290
  %indvars.iv.next103.i.i.i.prol = or disjoint i64 %indvars.iv102.i.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv102.i.i.i.unr = phi i64 [ %indvars.iv102.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next103.i.i.i.prol, %scalar.ph.prol ]
  %i.lg = icmp eq i64 %indvars.iv102.i.i.i.ph, %i.gk
  br i1 %i.lg, label %._crit_edge.us.us.us.us.i.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv102.i.i.i = phi i64 [ %indvars.iv.next103.i.i.i.1, %scalar.ph ], [ %indvars.iv102.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %gep163.i.i.i = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %indvars.iv102.i.i.i ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv102.i.i.i
  %i.li = load float, ptr %gep163.i.i.i, align 4, !tbaa !290 ; 2 uses
  %i.lj = load float, ptr %i.lh, align 4, !tbaa !290 ; 2 uses
  %i.lk = fcmp olt float %i.li, %i.lj
  %i.ll = select i1 %i.lk, float %i.lj, float %i.li
  store float %i.ll, ptr %gep163.i.i.i, align 4, !tbaa !290
  %indvars.iv.next103.i.i.i = add nuw nsw i64 %indvars.iv102.i.i.i, 1 ; 2 uses
  %gep163.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep162.i.i.i, i64 %indvars.iv.next103.i.i.i ; 2 uses
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv.next103.i.i.i
  %i.ln = load float, ptr %gep163.i.i.i.1, align 4, !tbaa !290 ; 2 uses
  %i.lo = load float, ptr %i.lm, align 4, !tbaa !290 ; 2 uses
  %i.lp = fcmp olt float %i.ln, %i.lo
  %i.lq = select i1 %i.lp, float %i.lo, float %i.ln
  store float %i.lq, ptr %gep163.i.i.i.1, align 4, !tbaa !290
  %indvars.iv.next103.i.i.i.1 = add nuw nsw i64 %indvars.iv102.i.i.i, 2 ; 2 uses
  %exitcond106.not.i.i.i.1 = icmp eq i64 %indvars.iv.next103.i.i.i.1, %wide.trip.count90.i.i.i
  br i1 %exitcond106.not.i.i.i.1, label %._crit_edge.us.us.us.us.i.i.i, label %scalar.ph, !llvm.loop !310

._crit_edge.us.us.us.us.i.i.i:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next108.i.i.i = add nuw nsw i64 %indvars.iv107.i.i.i, 1 ; 2 uses
  %exitcond111.not.i.i.i = icmp eq i64 %indvars.iv.next108.i.i.i, %wide.trip.count95.i.i.i
  br i1 %exitcond111.not.i.i.i, label %._crit_edge35.us.us.us.us.i.i.i, label %.lr.ph31.us.us.us.us.i.i.i, !llvm.loop !311

._crit_edge35.us.us.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.us.us.i.i.i
  %indvars.iv.next113.i.i.i = add nuw nsw i64 %indvars.iv112.i.i.i, 1 ; 2 uses
  %exitcond116.not.i.i.i = icmp eq i64 %indvars.iv.next113.i.i.i, %wide.trip.count115.i.i.i
  %indvar.next35 = add i64 %indvar34, 1
  br i1 %exitcond116.not.i.i.i, label %.loopexit8.us.us.i.i.i, label %.lr.ph34.us.us.us.us.i.i.i, !llvm.loop !312

._crit_edge.us.us.i.i.i:                          ; preds = %bb.ah
  %i.lr = add nuw nsw i32 %.015044.us.us.i.i.i, 1 ; 2 uses
  %exitcond118.not.i.i.i = icmp eq i32 %i.lr, %i.ce
  %indvar.next41 = add i64 %indvar40, 1
  br i1 %exitcond118.not.i.i.i, label %._crit_edge47.split.us.us.i.i.i, label %.lr.ph43.us.us.i.i.i, !llvm.loop !313

._crit_edge47.split.us.us.i.i.i:                  ; preds = %._crit_edge.us.us.i.i.i
  %i.ls = add nsw i32 %.014968.us.i.i.i, 1        ; 2 uses
  %i.lt = getelementptr inbounds [4 x i8], ptr %.014670.us.i.i.i, i64 %i.fe
  %exitcond119.not.i.i.i = icmp eq i32 %i.ls, %.val3
  %indvar.next38 = add i64 %indvar37, 1
  br i1 %exitcond119.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL10maxPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit", label %.preheader10.us.i.i.i, !llvm.loop !314

"_ZSt10__invoke_rIvRZN2cv3dnnL10maxPool32fEPKvPvRKNS1_14dnn5_v202606059ConvStateEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESF_E4typeEOSG_DpOSH_.exit": ; preds = %._crit_edge47.split.us.us.i.i.i, %_ZNK2cv8MatShapeixEm.exit206.i.i.i, %.preheader10.lr.ph.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL10maxPool32fEPKvPvRKNS5_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL10maxPool32fEPKvPvRKNS0_14dnn5_v202606059ConvStateEE3$_0", ptr %0, align 8, !tbaa !315
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %.val, ptr %0, align 8, !tbaa !262
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %.val6, i64 24, i1 false), !tbaa.struct !317
  store ptr %i.a, ptr %0, align 8, !tbaa !262
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !262 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 24) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL10maxPool32fEPKvPvRKNS2_14dnn5_v202606059ConvStateEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK2cv8MatShape4backEv(ptr noundef nonnull align 4 dereferenceable(52)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #15 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !262   ; 18 uses
  %.val2 = load i32, ptr %1, align 4, !tbaa !266  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.val3 = load i32, ptr %i.a, align 4            ; 3 uses
  %i.b = icmp slt i32 %.val2, %.val3
  br i1 %i.b, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.c = load ptr, ptr %.val, align 8, !tbaa !318, !nonnull !87, !align !320
  %i.d = load i32, ptr %i.c, align 4, !tbaa !111  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !321, !nonnull !87, !align !286
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !276
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !322, !nonnull !87, !align !320
  %i.j = load i32, ptr %i.i, align 4, !tbaa !111
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !323, !nonnull !87, !align !286
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !276  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !324, !nonnull !87, !align !320
  %i.p = load i32, ptr %i.o, align 4, !tbaa !111  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !325, !nonnull !87, !align !286
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !277  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !326, !nonnull !87, !align !320
  %i.v = load i32, ptr %i.u, align 4, !tbaa !111  ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %.val, i64 64
  %i.y = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.z = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.aa = getelementptr inbounds nuw i8, ptr %.val, i64 88
  %i.ab = getelementptr inbounds nuw i8, ptr %.val, i64 96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 104
  %i.ad = getelementptr inbounds nuw i8, ptr %.val, i64 112
  %i.ae = getelementptr inbounds nuw i8, ptr %.val, i64 120
  %i.af = getelementptr inbounds nuw i8, ptr %.val, i64 128
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 136 ; 3 uses
  br i1 %i.w, label %.lr.ph.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !87, !align !320
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !111 ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph.split.split.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.split.split.i.i.i:                         ; preds = %.lr.ph.split.i.i.i
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !327, !nonnull !87, !align !320
  %i.am = load i32, ptr %i.al, align 4, !tbaa !111 ; 2 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph.split.split.split.us.i.i.i, label %.lr.ph.split.split.split.i.i.i

.lr.ph.split.split.split.us.i.i.i:                ; preds = %.lr.ph.split.split.i.i.i
  %i.ao = load ptr, ptr %i.y, align 8, !tbaa !328, !nonnull !87, !align !320
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !111
  %i.aq = load ptr, ptr %i.z, align 8, !tbaa !329, !nonnull !87, !align !320
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !111
  %i.as = load ptr, ptr %i.aa, align 8, !tbaa !330, !nonnull !87, !align !320
  %i.at = load i32, ptr %i.as, align 4, !tbaa !111
  %i.au = load ptr, ptr %i.ab, align 8, !tbaa !331, !nonnull !87, !align !320
  %i.av = load i32, ptr %i.au, align 4, !tbaa !111 ; 2 uses
  %i.aw = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.ax = sext i32 %.val2 to i64
  %i.ay = sext i32 %i.j to i64
  %i.az = sext i32 %i.p to i64
  %wide.trip.count62.i.i.i = sext i32 %.val3 to i64
  %wide.trip.count57.i.i.i = zext nneg i32 %i.v to i64
  %wide.trip.count47.i.i.i = zext nneg i32 %i.am to i64
  br label %.preheader2.lr.ph.us.i.i.i

.preheader2.lr.ph.us.i.i.i:                       ; preds = %._crit_edge.split18.us.us.i.i.i, %.lr.ph.split.split.split.us.i.i.i
  %indvars.iv59.i.i.i = phi i64 [ %indvars.iv.next60.i.i.i, %._crit_edge.split18.us.us.i.i.i ], [ %i.ax, %.lr.ph.split.split.split.us.i.i.i ] ; 4 uses
  %i.ba = trunc nsw i64 %indvars.iv59.i.i.i to i32
  %i.bb = srem i32 %i.ba, %i.d
  %i.bc = mul nsw i64 %indvars.iv59.i.i.i, %i.ay
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bc ; 3 uses
  %i.be = mul nsw i64 %indvars.iv59.i.i.i, %i.az  ; 2 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.be
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.be
  %i.bh = mul nsw i32 %i.bb, %i.av                ; 2 uses
  %i.bi = sext i32 %i.bh to i64
  br label %.preheader2.us.us.i.i.i

.preheader2.us.us.i.i.i:                          ; preds = %._crit_edge14.split.us.us.us.i.i.i, %.preheader2.lr.ph.us.i.i.i
  %indvars.iv54.i.i.i = phi i64 [ %indvars.iv.next55.i.i.i, %._crit_edge14.split.us.us.us.i.i.i ], [ 0, %.preheader2.lr.ph.us.i.i.i ] ; 3 uses
  %i.bj = mul nuw nsw i64 %indvars.iv54.i.i.i, %i.aw
  %i.bk = trunc i64 %indvars.iv54.i.i.i to i32
  %i.bl = mul i32 %i.ap, %i.bk
  %i.bm = sub i32 %i.bl, %i.ar
  br label %.preheader1.us.us.us.i.i.i

.preheader1.us.us.us.i.i.i:                       ; preds = %bb.m, %.preheader2.us.us.i.i.i
  %indvars.iv49.i.i.i = phi i64 [ %indvars.iv.next50.i.i.i, %bb.m ], [ 0, %.preheader2.us.us.i.i.i ] ; 3 uses
  %i.bn = trunc nuw nsw i64 %indvars.iv49.i.i.i to i32
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.us.us.i.i.i, %.preheader1.us.us.us.i.i.i
  %indvars.iv44.i.i.i = phi i64 [ %indvars.iv.next45.i.i.i, %.loopexit.us.us.us.i.i.i ], [ 0, %.preheader1.us.us.us.i.i.i ] ; 2 uses
  %.0448.us.us.us.i.i.i = phi i64 [ %.4.us.us.us.i.i.i, %.loopexit.us.us.us.i.i.i ], [ -1, %.preheader1.us.us.us.i.i.i ] ; 4 uses
  %.0457.us.us.us.i.i.i = phi float [ %.449.us.us.us.i.i.i, %.loopexit.us.us.us.i.i.i ], [ f0xFF7FFFFF, %.preheader1.us.us.us.i.i.i ] ; 4 uses
  %i.bo = trunc i64 %indvars.iv44.i.i.i to i32
  %i.bp = mul i32 %i.at, %i.bo
  %i.bq = add nsw i32 %i.bp, %i.bm                ; 3 uses
  %.not.us.us.us.i.i.i = icmp ult i32 %i.bq, %i.av
  br i1 %.not.us.us.us.i.i.i, label %.preheader.us.us.us.i.i.i, label %.loopexit.us.us.us.i.i.i

bb.c:                                             ; preds = %bb.i, %.lr.ph.us.us.us.i.i.i.new
  %indvars.iv39.i.i.i = phi i64 [ 0, %.lr.ph.us.us.us.i.i.i.new ], [ %indvars.iv.next40.i.i.i.1, %bb.i ] ; 3 uses
  %.14.us.us.us.i.i.i = phi i64 [ %.0448.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i.new ], [ %.3.us.us.us.i.i.i.1, %bb.i ] ; 2 uses
  %.1463.us.us.us.i.i.i = phi float [ %.0457.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i.new ], [ %.348.us.us.us.i.i.i.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.us.us.us.i.i.i.new ], [ %niter.next.1, %bb.i ]
  %i.br = trunc i64 %indvars.iv39.i.i.i to i32
  %i.bs = mul i32 %i.dn, %i.br
  %i.bt = add nsw i32 %i.bs, %i.dl                ; 3 uses
  %.not56.us.us.us.i.i.i = icmp ult i32 %i.bt, %i.dp
  br i1 %.not56.us.us.us.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bu = add nsw i32 %i.bt, %i.dq
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !290 ; 2 uses
  %i.by = fcmp ogt float %i.bx, %.1463.us.us.us.i.i.i
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = sext i32 %i.bt to i64
  %i.ca = add nsw i64 %i.du, %i.bz
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.348.us.us.us.i.i.i = phi float [ %.1463.us.us.us.i.i.i, %bb.c ], [ %i.bx, %bb.e ], [ %.1463.us.us.us.i.i.i, %bb.d ] ; 3 uses
  %.3.us.us.us.i.i.i = phi i64 [ %.14.us.us.us.i.i.i, %bb.c ], [ %i.ca, %bb.e ], [ %.14.us.us.us.i.i.i, %bb.d ] ; 2 uses
  %i.cb = trunc i64 %indvars.iv39.i.i.i to i32
  %i.cc = or disjoint i32 %i.cb, 1
  %i.cd = mul i32 %i.dn, %i.cc
  %i.ce = add nsw i32 %i.cd, %i.dl                ; 3 uses
  %.not56.us.us.us.i.i.i.1 = icmp ult i32 %i.ce, %i.dp
  br i1 %.not56.us.us.us.i.i.i.1, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.cf = add nsw i32 %i.ce, %i.dq
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.cg
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !290 ; 2 uses
  %i.cj = fcmp ogt float %i.ci, %.348.us.us.us.i.i.i
  br i1 %i.cj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ck = sext i32 %i.ce to i64
  %i.cl = add nsw i64 %i.du, %i.ck
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.348.us.us.us.i.i.i.1 = phi float [ %.348.us.us.us.i.i.i, %bb.f ], [ %i.ci, %bb.h ], [ %.348.us.us.us.i.i.i, %bb.g ] ; 3 uses
  %.3.us.us.us.i.i.i.1 = phi i64 [ %.3.us.us.us.i.i.i, %bb.f ], [ %i.cl, %bb.h ], [ %.3.us.us.us.i.i.i, %bb.g ] ; 3 uses
  %indvars.iv.next40.i.i.i.1 = add nuw nsw i64 %indvars.iv39.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa, label %bb.c, !llvm.loop !332

.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa:      ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.us.us.us.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa, %.lr.ph.us.us.us.i.i.i
  %indvars.iv39.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.us.i.i.i ], [ %indvars.iv.next40.i.i.i.1, %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa ]
  %.14.us.us.us.i.i.i.epil.init = phi i64 [ %.0448.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i ], [ %.3.us.us.us.i.i.i.1, %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.1463.us.us.us.i.i.i.epil.init = phi float [ %.0457.us.us.us.i.i.i, %.lr.ph.us.us.us.i.i.i ], [ %.348.us.us.us.i.i.i.1, %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod17 = trunc i32 %i.de to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.cm = trunc i64 %indvars.iv39.i.i.i.epil.init to i32
  %i.cn = mul i32 %i.dn, %i.cm
  %i.co = add nsw i32 %i.cn, %i.dl                ; 3 uses
  %.not56.us.us.us.i.i.i.epil = icmp ult i32 %i.co, %i.dp
  br i1 %.not56.us.us.us.i.i.i.epil, label %bb.j, label %.loopexit.us.us.us.i.i.i

bb.j:                                             ; preds = %.epil.preheader
  %i.cp = add nsw i32 %i.co, %i.dq
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !290 ; 2 uses
  %i.ct = fcmp ogt float %i.cs, %.1463.us.us.us.i.i.i.epil.init
  br i1 %i.ct, label %bb.k, label %.loopexit.us.us.us.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.cu = sext i32 %i.co to i64
  %i.cv = add nsw i64 %i.du, %i.cu
  br label %.loopexit.us.us.us.i.i.i

.loopexit.us.us.us.i.i.i:                         ; preds = %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa, %bb.k, %bb.j, %.epil.preheader, %.preheader.us.us.us.i.i.i, %bb.b
  %.449.us.us.us.i.i.i = phi float [ %.0457.us.us.us.i.i.i, %bb.b ], [ %.0457.us.us.us.i.i.i, %.preheader.us.us.us.i.i.i ], [ %.348.us.us.us.i.i.i.1, %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa ], [ %.1463.us.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.cs, %bb.k ], [ %.1463.us.us.us.i.i.i.epil.init, %bb.j ] ; 2 uses
  %.4.us.us.us.i.i.i = phi i64 [ %.0448.us.us.us.i.i.i, %bb.b ], [ %.0448.us.us.us.i.i.i, %.preheader.us.us.us.i.i.i ], [ %.3.us.us.us.i.i.i.1, %.loopexit.us.us.us.i.i.i.loopexit.unr-lcssa ], [ %.14.us.us.us.i.i.i.epil.init, %.epil.preheader ], [ %i.cv, %bb.k ], [ %.14.us.us.us.i.i.i.epil.init, %bb.j ] ; 3 uses
  %indvars.iv.next45.i.i.i = add nuw nsw i64 %indvars.iv44.i.i.i, 1 ; 2 uses
  %exitcond48.not.i.i.i = icmp eq i64 %indvars.iv.next45.i.i.i, %wide.trip.count47.i.i.i
  br i1 %exitcond48.not.i.i.i, label %._crit_edge.us.us.us.i.i.i, label %bb.b, !llvm.loop !333

bb.l:                                             ; preds = %._crit_edge.us.us.us.i.i.i
  %i.cw = load ptr, ptr %i.ag, align 8, !tbaa !334, !nonnull !87, !align !320
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !111
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul nsw i64 %i.cy, %i.bi
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.us.us.us.i.i.i, %bb.l
  %.550.us.us.us.i.i.i = phi float [ 0.000000e+00, %bb.l ], [ %.449.us.us.us.i.i.i, %._crit_edge.us.us.us.i.i.i ]
  %.5.us.us.us.i.i.i = phi i64 [ %i.cz, %bb.l ], [ %.4.us.us.us.i.i.i, %._crit_edge.us.us.us.i.i.i ]
  %i.da = add nuw nsw i64 %indvars.iv49.i.i.i, %i.bj ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.da
  store float %.550.us.us.us.i.i.i, ptr %i.db, align 4, !tbaa !290
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.da
  store i64 %.5.us.us.us.i.i.i, ptr %i.dc, align 8, !tbaa !78
  %indvars.iv.next50.i.i.i = add nuw nsw i64 %indvars.iv49.i.i.i, 1 ; 2 uses
  %exitcond53.not.i.i.i = icmp eq i64 %indvars.iv.next50.i.i.i, %i.aw
  br i1 %exitcond53.not.i.i.i, label %._crit_edge14.split.us.us.us.i.i.i, label %.preheader1.us.us.us.i.i.i, !llvm.loop !335

.preheader.us.us.us.i.i.i:                        ; preds = %bb.b
  %i.dd = load ptr, ptr %i.ac, align 8, !tbaa !336, !nonnull !87, !align !320
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !111 ; 4 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph.us.us.us.i.i.i, label %.loopexit.us.us.us.i.i.i

.lr.ph.us.us.us.i.i.i:                            ; preds = %.preheader.us.us.us.i.i.i
  %i.dg = load ptr, ptr %i.ad, align 8, !tbaa !337, !nonnull !87, !align !320
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !111
  %i.di = mul nsw i32 %i.dh, %i.bn
  %i.dj = load ptr, ptr %i.ae, align 8, !tbaa !338, !nonnull !87, !align !320
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !111
  %i.dl = sub nsw i32 %i.di, %i.dk                ; 3 uses
  %i.dm = load ptr, ptr %i.af, align 8, !tbaa !339, !nonnull !87, !align !320
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !111 ; 3 uses
  %i.do = load ptr, ptr %i.ag, align 8, !tbaa !334, !nonnull !87, !align !320
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !111 ; 5 uses
  %i.dq = mul nsw i32 %i.dp, %i.bq                ; 3 uses
  %i.dr = add nsw i32 %i.bq, %i.bh
  %i.ds = sext i32 %i.dr to i64
  %i.dt = sext i32 %i.dp to i64
  %i.du = mul nsw i64 %i.dt, %i.ds                ; 3 uses
  %wide.trip.count42.i.i.i = zext nneg i32 %i.de to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count42.i.i.i, 1
  %i.dv = icmp eq i32 %i.de, 1
  br i1 %i.dv, label %.epil.preheader, label %.lr.ph.us.us.us.i.i.i.new

.lr.ph.us.us.us.i.i.i.new:                        ; preds = %.lr.ph.us.us.us.i.i.i
  %unroll_iter = and i64 %wide.trip.count42.i.i.i, 2147483646
  br label %bb.c

._crit_edge.us.us.us.i.i.i:                       ; preds = %.loopexit.us.us.us.i.i.i
  %i.dw = icmp slt i64 %.4.us.us.us.i.i.i, 0
  br i1 %i.dw, label %bb.l, label %bb.m

._crit_edge14.split.us.us.us.i.i.i:               ; preds = %bb.m
  %indvars.iv.next55.i.i.i = add nuw nsw i64 %indvars.iv54.i.i.i, 1 ; 2 uses
  %exitcond58.not.i.i.i = icmp eq i64 %indvars.iv.next55.i.i.i, %wide.trip.count57.i.i.i
  br i1 %exitcond58.not.i.i.i, label %._crit_edge.split18.us.us.i.i.i, label %.preheader2.us.us.i.i.i, !llvm.loop !340

._crit_edge.split18.us.us.i.i.i:                  ; preds = %._crit_edge14.split.us.us.us.i.i.i
  %indvars.iv.next60.i.i.i = add nsw i64 %indvars.iv59.i.i.i, 1 ; 2 uses
  %exitcond63.not.i.i.i = icmp eq i64 %indvars.iv.next60.i.i.i, %wide.trip.count62.i.i.i
  br i1 %exitcond63.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.preheader2.lr.ph.us.i.i.i, !llvm.loop !341

.lr.ph.split.split.split.i.i.i:                   ; preds = %.lr.ph.split.split.i.i.i
  %i.dx = load ptr, ptr %i.ab, align 8, !tbaa !331, !nonnull !87, !align !320
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !111
  %i.dz = load ptr, ptr %i.ag, align 8, !tbaa !334, !nonnull !87, !align !320
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !111
  %i.eb = sext i32 %i.ea to i64
  %i.ec = zext nneg i32 %i.aj to i64
  %2 = zext nneg i32 %i.v to i64
  %i.ed = sext i32 %.val2 to i64
  %i.ee = sext i32 %i.p to i64
  %wide.trip.count37.i.i.i = sext i32 %.val3 to i64
  %flatten.tripcount.i.i = mul nuw nsw i64 %i.ec, %2 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %flatten.tripcount.i.i, 4
  %n.vec = and i64 %flatten.tripcount.i.i, 4611686018427387900 ; 3 uses
  %cmp.n = icmp eq i64 %flatten.tripcount.i.i, %n.vec
  br label %.preheader2.lr.ph.i.i.i

.preheader2.lr.ph.i.i.i:                          ; preds = %._crit_edge14.split.i.i.i, %.lr.ph.split.split.split.i.i.i
  %indvars.iv34.i.i.i = phi i64 [ %i.ed, %.lr.ph.split.split.split.i.i.i ], [ %indvars.iv.next30.i.i.i, %._crit_edge14.split.i.i.i ] ; 3 uses
  %i.ef = trunc nsw i64 %indvars.iv34.i.i.i to i32
  %i.eg = srem i32 %i.ef, %i.d
  %i.eh = mul nsw i64 %indvars.iv34.i.i.i, %i.ee  ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.eh ; 2 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.eh ; 2 uses
  %i.ek = mul nsw i32 %i.eg, %i.dy
  %i.el = sext i32 %i.ek to i64
  %i.em = mul nsw i64 %i.el, %i.eb                ; 2 uses
  br i1 %min.iters.check, label %.preheader1.i.i.i.preheader, label %.preheader2.i.i.i.a

.preheader2.i.i.i.a:                              ; preds = %.preheader2.lr.ph.i.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.em, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %.preheader2.i.i.i.a
  %index = phi i64 [ 0, %.preheader2.i.i.i.a ], [ %index.next, %vector.body ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store <2 x float> zeroinitializer, ptr %i.en, align 4, !tbaa !290
  store <2 x float> zeroinitializer, ptr %i.eo, align 4, !tbaa !290
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %index ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  store <2 x i64> %broadcast.splat, ptr %i.ep, align 8, !tbaa !78
  store <2 x i64> %broadcast.splat, ptr %i.eq, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.er = icmp eq i64 %index.next, %n.vec
  br i1 %i.er, label %middle.block, label %vector.body, !llvm.loop !342

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge14.split.i.i.i, label %.preheader1.i.i.i.preheader

.preheader1.i.i.i.preheader:                      ; preds = %.preheader2.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.preheader2.lr.ph.i.i.i ], [ %n.vec, %middle.block ]
  br label %.preheader1.i.i.i

.preheader1.i.i.i:                                ; preds = %.preheader1.i.i.i.preheader, %.preheader1.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.a, %.preheader1.i.i.i ], [ %indvars.iv.i.i.i.ph, %.preheader1.i.i.i.preheader ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv.i.i.i
  store float 0.000000e+00, ptr %i.es, align 4, !tbaa !290
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.i.i.i
  store i64 %i.em, ptr %i.et, align 8, !tbaa !78
  %indvars.iv.next.i.i.i.a = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i.a, %flatten.tripcount.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge14.split.i.i.i, label %.preheader1.i.i.i, !llvm.loop !343

._crit_edge14.split.i.i.i:                        ; preds = %.preheader1.i.i.i, %middle.block
  %indvars.iv.next30.i.i.i = add nsw i64 %indvars.iv34.i.i.i, 1 ; 2 uses
  %exitcond33.not.i.i.i = icmp eq i64 %indvars.iv.next30.i.i.i, %wide.trip.count37.i.i.i
  br i1 %exitcond33.not.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %.preheader2.lr.ph.i.i.i, !llvm.loop !341

"_ZSt10__invoke_rIvRZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %._crit_edge14.split.i.i.i, %._crit_edge.split18.us.us.i.i.i, %bb.a, %.lr.ph.i.i.i, %.lr.ph.split.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, i32 noundef %2) #0 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0", ptr %0, align 8, !tbaa !315
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !262
  store ptr %.val, ptr %0, align 8, !tbaa !262
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val6 = load ptr, ptr %1, align 8
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #18 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(144) %.val6, i64 144, i1 false), !tbaa.struct !344
  store ptr %i.a, ptr %0, align 8, !tbaa !262
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.e:                                             ; preds = %bb.a
  %.val7.i = load ptr, ptr %0, align 8, !tbaa !262 ; 2 uses
  %i.b = icmp eq ptr %.val7.i, null
  br i1 %i.b, label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %.val7.i, i64 noundef 144) #22
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv3dnnL28maxPool32f_nchw_with_indicesEPKfPfPliiiiiiiiiiiiiiE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN2cv4UMatESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !100    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 184                 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !345
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 184                 ; 2 uses
  %i.m = icmp ult i64 %i.g, 50127021939428130
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 50127021939428129, %i.g  ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not37 = icmp ult i64 %i.l, %1
  br i1 %.not37, label %bb.c, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.08.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %.057.i.i.i = phi i64 [ %i.p, %.lr.ph.i.i.i ], [ %1, %bb.b ]
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i, i32 noundef 0) #19
  %i.p = add i64 %.057.i.i.i, -1                  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit, label %.lr.ph.i.i.i, !llvm.loop !346

_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i
  store ptr %i.q, ptr %i.a, align 8, !tbaa !97
  br label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.n, %1
  br i1 %i.r, label %bb.d, label %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.23) #20
  unreachable

_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.s = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 50127021939428129) ; 2 uses
  %i.u = mul nuw nsw i64 %i.t, 184                ; 2 uses
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #18 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.f ; 4 uses
  br label %.lr.ph.i.i.i40

.lr.ph.i.i.i40:                                   ; preds = %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i40
  %.08.i.i.i41 = phi ptr [ %i.y, %.lr.ph.i.i.i40 ], [ %i.w, %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.057.i.i.i42 = phi i64 [ %i.x, %.lr.ph.i.i.i40 ], [ %1, %_ZNKSt6vectorIN2cv4UMatESaIS1_EE12_M_check_lenEmPKc.exit ]
  tail call void @_ZN2cv4UMatC1ENS_14UMatUsageFlagsE(ptr noundef nonnull align 8 dereferenceable(184) %.08.i.i.i41, i32 noundef 0) #19
  %i.x = add i64 %.057.i.i.i42, -1                ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.08.i.i.i41, i64 184
  %.not.i.i.i43 = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.i43, label %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45, label %.lr.ph.i.i.i40, !llvm.loop !346

_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45: ; preds = %.lr.ph.i.i.i40
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not14.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.aa, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.v, %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45 ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.z, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45 ] ; 2 uses
  invoke void @_ZN2cv4UMatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(184) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(184) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.e

_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 184 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 184
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %i.b
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i48, label %.lr.ph.i.i.i.i.i, !llvm.loop !347

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #19 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.v, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %bb.e ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i.i.i.i.i.i) #19
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 184 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ae, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !101

_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.e
  invoke void @__cxa_rethrow() #20
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #21
  unreachable

bb.h:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit.i.i.i.i.i
  unreachable

.body:                                            ; preds = %bb.f
  %i.ai = extractvalue { ptr, i32 } %i.af, 0
  %i.aj = tail call ptr @__cxa_begin_catch(ptr %i.ai) #19 ; 0 uses
  %.idx = mul nuw nsw i64 %1, 184
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.body, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.al, %.lr.ph.i.i ], [ %i.w, %.body ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i) #19
  %i.al = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 184 ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, %i.ak
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i, !llvm.loop !101

bb.i:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.m

_ZSt8_DestroyIPN2cv4UMatES1_EvT_S3_RSaIT0_E.exit: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.u) #22
  invoke void @__cxa_rethrow() #20
          to label %bb.n unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.am

.lr.ph.i.i48:                                     ; preds = %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i, %.lr.ph.i.i48
  %.05.i.i49 = phi ptr [ %i.an, %.lr.ph.i.i48 ], [ %i.c, %_ZSt10_ConstructIN2cv4UMatEJRKS1_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 2 uses
  tail call void @_ZN2cv4UMatD1Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %.05.i.i49) #19
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i49, i64 184 ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.an, %i.b
  br i1 %.not.i.i50, label %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51, label %.lr.ph.i.i48, !llvm.loop !101

_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51:          ; preds = %.lr.ph.i.i48, %_ZSt27__uninitialized_default_n_aIPN2cv4UMatEmS1_ET_S3_T0_RSaIT1_E.exit45
  %.not.i52 = icmp eq ptr %i.c, null
  br i1 %.not.i52, label %_ZNSt12_Vector_baseIN2cv4UMatESaIS1_EE13_M_deallocateEPS1_m.exit53, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN2cv4UMatEEvT_S3_.exit51
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !345
end_hunk_0
