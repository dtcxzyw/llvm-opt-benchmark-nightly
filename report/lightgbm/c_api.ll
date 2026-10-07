Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/c_api?download=true
inline.NumInlined: 9409
inline.NumDeleted: 3547
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIfESt8functionIS3_EPKviiiEUliE0_E9_M_invokeERKSt9_Any_dataOi:bb.a
  %i.q = load i32, ptr %i.p, align 8, !tbaa !1727, !noalias !1725 ; 2 uses
  %i.r = sext i32 %i.q to i64                     ; 5 uses
  %i.s = sext i32 %i.b to i64
  %invariant.gep.i.i.i = getelementptr [4 x i8], ptr %i.o, i64 %i.s ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %.pr.i.i.i, 3
  %ident.check.not = icmp eq i32 %i.q, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.ph, label %scalar.ph.preheader

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %wide.load = load <2 x float>, ptr %i.t, align 4, !tbaa !289, !noalias !1725
  %wide.load3 = load <2 x float>, ptr %i.u, align 4, !tbaa !289, !noalias !1725
  %i.v = fpext <2 x float> %wide.load to <2 x double>
  %i.w = fpext <2 x float> %wide.load3 to <2 x double>
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <2 x double> %i.v, ptr %i.x, align 8, !tbaa !127, !noalias !1725
  store <2 x double> %i.w, ptr %i.y, align 8, !tbaa !127, !noalias !1725
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !1716

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.aa = mul nsw i64 %indvars.iv.i.i.i.prol, %i.r
  %gep.i.i.i.prol = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.aa
  %i.ab = load float, ptr %gep.i.i.i.prol, align 4, !tbaa !289, !noalias !1725
  %i.ac = fpext float %i.ab to double
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i.prol
  store double %i.ac, ptr %i.ad, align 8, !tbaa !127, !noalias !1725
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1717

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = mul nsw i64 %indvars.iv.i.i.i, %i.r
  %gep.i.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ag
  %i.ah = load float, ptr %gep.i.i.i, align 4, !tbaa !289, !noalias !1725
  %i.ai = fpext float %i.ah to double
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.i.i.i
  store double %i.ai, ptr %i.aj, align 8, !tbaa !127, !noalias !1725
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ak = mul nsw i64 %indvars.iv.next.i.i.i, %i.r
  %gep.i.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ak
  %i.al = load float, ptr %gep.i.i.i.1, align 4, !tbaa !289, !noalias !1725
  %i.am = fpext float %i.al to double
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i
  store double %i.am, ptr %i.an, align 8, !tbaa !127, !noalias !1725
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = mul nsw i64 %indvars.iv.next.i.i.i.1, %i.r
  %gep.i.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.ao
  %i.ap = load float, ptr %gep.i.i.i.2, align 4, !tbaa !289, !noalias !1725
  %i.aq = fpext float %i.ap to double
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i.1
  store double %i.aq, ptr %i.ar, align 8, !tbaa !127, !noalias !1725
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.as = mul nsw i64 %indvars.iv.next.i.i.i.2, %i.r
  %gep.i.i.i.3 = getelementptr [4 x i8], ptr %invariant.gep.i.i.i, i64 %i.as
  %i.at = load float, ptr %gep.i.i.i.3, align 4, !tbaa !289, !noalias !1725
  %i.au = fpext float %i.at to double
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv.next.i.i.i.2
  store double %i.au, ptr %i.av, align 8, !tbaa !127, !noalias !1725
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %scalar.ph, !llvm.loop !1718

_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i21.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %middle.block ], [ %.0.i.i.i.i.i.ph.i.i.i, %scalar.ph ], [ %.0.i.i.i.i.i.ph.i.i.i, %scalar.ph.prol.loopexit ]
  %.sroa.08.020.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.g, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ], [ %i.g, %scalar.ph.prol.loopexit ]
  %.sroa.12.019.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.h, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.h, %middle.block ], [ %i.h, %scalar.ph ], [ %i.h, %scalar.ph.prol.loopexit ]
  store ptr %.sroa.08.020.i.i.i, ptr %0, align 8, !tbaa !187, !alias.scope !1725
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i21.i.i.i, ptr %i.aw, align 8, !tbaa !290, !alias.scope !1725
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.019.i.i.i, ptr %i.ax, align 8, !tbaa !188, !alias.scope !1725
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIfESt8functionIS3_EPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 3, label %bb.e
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_, ptr %0, align 8, !tbaa !325
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !69
  store ptr %i.a, ptr %0, align 8, !tbaa !69
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !69
  %i.c = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #43 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !1728
  store ptr %i.c, ptr %0, align 8, !tbaa !69
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.e:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !69     ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 24) #39
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIfESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE0_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE_E9_M_invokeERKSt9_Any_dataOi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1738)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  %i.a = load i32, ptr %2, align 4, !tbaa !104, !noalias !1740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.b = load i32, ptr %1, align 8, !tbaa !1743, !noalias !1744 ; 3 uses
  %i.c = sext i32 %i.b to i64                     ; 3 uses
  %i.d = icmp slt i32 %i.b, 0
  br i1 %i.d, label %.noexc.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #41, !noalias !1744
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.noexc8.i.i.i

.noexc8.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #43, !noalias !1744 ; 14 uses
  %i.g = ptrtoaddr ptr %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c ; 4 uses
  store double 0.000000e+00, ptr %i.f, align 8, !tbaa !127, !noalias !1744
  %i.i = getelementptr i8, ptr %i.f, i64 8        ; 3 uses
  %i.j = add nsw i64 %i.c, -1                     ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc8.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.i, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !127, !noalias !1744
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc8.i.i.i
  %.0.i.i.i.i.i.ph.i.i.i = phi ptr [ %i.i, %.noexc8.i.i.i ], [ %i.l, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.pr.i.i.i = load i32, ptr %1, align 8, !tbaa !1743, !noalias !1744 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1745, !noalias !1744 ; 2 uses
  %i.o = ptrtoaddr ptr %i.n to i64
  %i.p = sext i32 %.pr.i.i.i to i64               ; 2 uses
  %i.q = sext i32 %i.a to i64                     ; 2 uses
  %i.r = mul nsw i64 %i.p, %i.q
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.r ; 6 uses
  %i.t = icmp sgt i32 %.pr.i.i.i, 0
  br i1 %i.t, label %.lr.ph.preheader.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %.pr.i.i.i, 18
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i
  %i.u = mul nsw i64 %i.p, %i.q
  %i.v = shl i64 %i.u, 3
  %i.w = add i64 %i.v, %i.o
  %i.x = sub i64 %i.w, %i.g
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !127, !noalias !1744
  %wide.load3 = load <2 x double>, ptr %i.z, align 8, !tbaa !127, !noalias !1744
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !127, !noalias !1744
  store <2 x double> %wide.load3, ptr %i.ab, align 8, !tbaa !127, !noalias !1744
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1735

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i.prol
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !127, !noalias !1744
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i.prol
  store double %i.ae, ptr %i.af, align 8, !tbaa !127, !noalias !1744
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1736

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %.lr.ph.i.i.i ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.i.i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !127, !noalias !1744
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i.i.i
  store double %i.aj, ptr %i.ak, align 8, !tbaa !127, !noalias !1744
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i
  %i.am = load double, ptr %i.al, align 8, !tbaa !127, !noalias !1744
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i
  store double %i.am, ptr %i.an, align 8, !tbaa !127, !noalias !1744
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.1
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !127, !noalias !1744
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i.1
  store double %i.ap, ptr %i.aq, align 8, !tbaa !127, !noalias !1744
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next.i.i.i.2
  %i.as = load double, ptr %i.ar, align 8, !tbaa !127, !noalias !1744
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.i.i.i.2
  store double %i.as, ptr %i.at, align 8, !tbaa !127, !noalias !1744
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.lr.ph.i.i.i, !llvm.loop !1737

_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i22.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %middle.block ], [ %.0.i.i.i.i.i.ph.i.i.i, %.lr.ph.i.i.i ], [ %.0.i.i.i.i.i.ph.i.i.i, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.09.021.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.f, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.f, %middle.block ], [ %i.f, %.lr.ph.i.i.i ], [ %i.f, %.lr.ph.i.i.i.prol.loopexit ]
  %.sroa.12.020.i.i.i = phi ptr [ null, %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i ], [ %i.h, %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i ], [ %i.h, %middle.block ], [ %i.h, %.lr.ph.i.i.i ], [ %i.h, %.lr.ph.i.i.i.prol.loopexit ]
  store ptr %.sroa.09.021.i.i.i, ptr %0, align 8, !tbaa !187, !alias.scope !1744
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.i.i.i.i.i22.i.i.i, ptr %i.au, align 8, !tbaa !290, !alias.scope !1744
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.020.i.i.i, ptr %i.av, align 8, !tbaa !188, !alias.scope !1744
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @_ZTIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_, ptr %0, align 8, !tbaa !325
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !69
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1746
  br label %_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit

_ZNSt14_Function_base13_Base_managerIZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFSt6vectorIdSaIdEEiEEPKviiiEUliE_E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation.exit: ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt17_Function_handlerIFSt6vectorIdSaIdEEiEZ33RowFunctionFromDenseMatrix_helperIdESt8functionIS3_EPKviiiEUliE0_E9_M_invokeERKSt9_Any_dataOi(ptr dead_on_unwind noalias writable sret(%"class.std::vector.13") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !69     ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.b = load i32, ptr %2, align 4, !tbaa !104, !noalias !1758
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.c = load i32, ptr %i.a, align 8, !tbaa !1761, !noalias !1762 ; 3 uses
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = icmp slt i32 %i.c, 0
  br i1 %i.e, label %.noexc.i.i.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #41, !noalias !1762
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit, label %.noexc7.i.i.i

.noexc7.i.i.i:                                    ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i.i.i
  %i.f = shl nuw nsw i64 %i.d, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #43, !noalias !1762 ; 14 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.d ; 4 uses
  store double 0.000000e+00, ptr %i.g, align 8, !tbaa !127, !noalias !1762
  %i.j = getelementptr i8, ptr %i.g, i64 8        ; 3 uses
  %i.k = add nsw i64 %i.d, -1                     ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i, label %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i

_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc7.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.k, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !127, !noalias !1762
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx.i.i.i.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i

_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i:         ; preds = %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i, %.noexc7.i.i.i
  %.0.i.i.i.i.i.ph.i.i.i = phi ptr [ %i.j, %.noexc7.i.i.i ], [ %i.m, %_ZSt6fill_nIPdmdET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i.i.i ] ; 4 uses
  %.pr.i.i.i = load i32, ptr %i.a, align 8, !tbaa !1761, !noalias !1762 ; 3 uses
  %i.n = icmp sgt i32 %.pr.i.i.i, 0
  br i1 %i.n, label %.lr.ph.i.i.i, label %_ZSt10__invoke_rISt6vectorIdSaIdEERZ33RowFunctionFromDenseMatrix_helperIdESt8functionIFS2_iEEPKviiiEUliE0_JiEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1763, !noalias !1762 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load i32, ptr %i.q, align 8, !tbaa !1764, !noalias !1762 ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 5 uses
  %i.t = sext i32 %i.b to i64                     ; 2 uses
  %invariant.gep.i.i.i = getelementptr [8 x i8], ptr %i.p, i64 %i.t ; 6 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.pr.i.i.i to i64 ; 5 uses
  %min.iters.check = icmp ugt i32 %.pr.i.i.i, 15
  %ident.check.not = icmp eq i32 %i.r, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  br i1 %or.cond, label %vector.memcheck, label %scalar.ph.preheader

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i
  %i.u = ptrtoaddr ptr %i.p to i64
  %i.v = shl nsw i64 %i.t, 3
  %i.w = add i64 %i.v, %i.u
  %i.x = sub i64 %i.w, %i.h
  %diff.check = icmp ugt i64 %i.x, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr [8 x i8], ptr %invariant.gep.i.i.i, i64 %index ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 16
  %wide.load = load <2 x double>, ptr %i.y, align 8, !tbaa !127, !noalias !1762
  %wide.load3 = load <2 x double>, ptr %i.z, align 8, !tbaa !127, !noalias !1762
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !127, !noalias !1762
  store <2 x double> %wide.load3, ptr %i.ab, align 8, !tbaa !127, !noalias !1762
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1753

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
end_hunk_0
