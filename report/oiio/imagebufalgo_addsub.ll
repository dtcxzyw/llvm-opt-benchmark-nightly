begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8add_implIhhhEEbRNS1_8ImageBufERKS5_S8_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !47
  %i.ei = uitofp i8 %i.eh to float
  %i.ej = fmul nnan float %i.ei, 0x3F70101020000000
  %i.ek = fadd float %i.ee, %i.ej
  %i.el = load ptr, ptr %2, align 8, !tbaa !647
  %i.em = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %.noexc.i.i.i unwind label %bb.s
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8add_implIhhhEEbRNS1_8ImageBufERKS5_S8_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !652
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 %indvars.iv.i.i.i
  %i.eq = fmul float %i.ek, 2.550000e+02
  %i.er = fadd float %i.eq, 5.000000e-01          ; 2 uses
  %i.es = fcmp ogt float %i.er, 2.550000e+02
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.es, float 2.550000e+02, float %i.er
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8add_implItttEEbRNS1_8ImageBufERKS5_S8_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !696
  %i.ei = uitofp i16 %i.eh to float
  %i.ej = fmul nnan float %i.ei, 0x3EF0001000000000
  %i.ek = fadd float %i.ee, %i.ej
  %i.el = load ptr, ptr %2, align 8, !tbaa !647
  %i.em = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.el)
          to label %.noexc.i.i.i unwind label %bb.s
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L8add_implItttEEbRNS1_8ImageBufERKS5_S8_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.r:                                             ; preds = %bb.q, %.noexc.i.i.i
  %i.eo = load ptr, ptr %i.q, align 8, !tbaa !652
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.eo, i64 %indvars.iv.i.i.i
  %i.eq = fmul float %i.ek, 6.553500e+04
  %i.er = fadd float %i.eq, 5.000000e-01          ; 2 uses
  %i.es = fcmp ogt float %i.er, 6.553500e+04
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.es, float 6.553500e+04, float %i.er
end_hunk_3
