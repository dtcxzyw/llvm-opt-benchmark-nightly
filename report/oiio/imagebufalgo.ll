inline.NumInlined: 7403
inline.NumDeleted: 2263
begin_hunk_0_@_ZN13kissfft_utils6traitsIfE7prepareERSt6vectorISt7complexIfESaIS4_EEibRS2_IiSaIiEESA_:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !1016
  %i.c = select i1 %3, float 2.000000e+00, float -2.000000e+00
  %i.d = tail call noundef float @llvm.acos.f32(float -1.000000e+00)
  %i.e = fmul nnan float %i.d, %i.c
  %i.f = sitofp i32 %2 to float
  %i.g = fdiv float %i.e, %i.f
  %i.h = icmp sgt i32 %2, 0
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.bu = fmul nnan float %i.bt, 0x3F70101020000000 ; 2 uses
  %i.bv = call noundef float @llvm.atan2.f32(float %i.bu, float %i.bq) ; 3 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %i.bx = fadd nnan float %i.bv, 0x401921FB60000000
  %.018.i.i.i = select i1 %i.bw, float %i.bx, float %i.bv
  %i.by = call float @hypotf(float noundef %i.bq, float noundef %i.bu) #40
  %i.bz = load ptr, ptr %3, align 8, !tbaa !287
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.m:                                             ; preds = %bb.l, %.noexc35.i.i.i
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = fmul nnan float %.018.i.i.i, 2.550000e+02 ; 2 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  %i.cq = select i1 %i.cp, float -5.000000e-01, float 5.000000e-01
  %i.cr = fadd float %i.co, %i.cq                 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.bu = fmul nnan float %i.bt, 0x3EF0001000000000 ; 2 uses
  %i.bv = call noundef float @llvm.atan2.f32(float %i.bu, float %i.bq) ; 3 uses
  %i.bw = fcmp olt float %i.bv, 0.000000e+00
  %i.bx = fadd nnan float %i.bv, 0x401921FB60000000
  %.018.i.i.i = select i1 %i.bw, float %i.bx, float %i.bv
  %i.by = call float @hypotf(float noundef %i.bq, float noundef %i.bu) #40
  %i.bz = load ptr, ptr %3, align 8, !tbaa !287
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21complex_to_polar_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.m:                                             ; preds = %bb.l, %.noexc35.i.i.i
  %i.cm = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.co = fmul nnan float %.018.i.i.i, 6.553500e+04 ; 2 uses
  %i.cp = fcmp olt float %i.co, 0.000000e+00
  %i.cq = select i1 %i.cp, float -5.000000e-01, float 5.000000e-01
  %i.cr = fadd float %i.co, %i.cq                 ; 2 uses
end_hunk_4
