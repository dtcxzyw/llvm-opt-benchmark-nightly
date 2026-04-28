inline.NumInlined: 7403
inline.NumDeleted: 2263
begin_hunk_0_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.bn = load ptr, ptr %i.k, align 8, !tbaa !289 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !254 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !254
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.bq) ; 2 uses
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.br = fmul float %i.bo, %cos.i.i.i.i
  %i.bs = load ptr, ptr %3, align 8, !tbaa !287
  %i.bt = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bs)
          to label %.noexc.i.i.i unwind label %bb.aj
end_hunk_0
begin_hunk_1_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bv = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.br, ptr %i.bv, align 4, !tbaa !254
  %i.bw = fmul float %i.bo, %sin.i.i.i.i
  %i.bx = load ptr, ptr %3, align 8, !tbaa !287
  %i.by = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx)
          to label %.noexc25.i.i.i unwind label %bb.ak
end_hunk_1
begin_hunk_2_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIffEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E10_M_managerERSt9_Any_dataRKSB_St18_Manager_operation:bb.a
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(32) %1) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_2
begin_hunk_3_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !96
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fmul nnan float %i.bt, 0x3F70101020000000
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.bu) ; 2 uses
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.bv = fmul float %i.bq, %cos.i.i.i.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj
end_hunk_3
begin_hunk_4_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.bv, ptr %i.bz, align 4, !tbaa !254
  %i.ca = fmul float %i.bq, %sin.i.i.i.i
  %i.cb = load ptr, ptr %3, align 8, !tbaa !287
  %i.cc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %.noexc25.i.i.i unwind label %bb.ak
end_hunk_4
begin_hunk_5_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i24.i.i.i = phi i32 [ %i.cp, %bb.q ], [ %i.cq, %bb.r ], [ %i.cx, %bb.t ], [ %i.cl, %bb.s ]
  %i.cy = bitcast i32 %.sroa.0.0.i.i.i.i.i24.i.i.i to float
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.cy) ; 2 uses
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.cz = fmul float %cos.i.i.i.i, %i.cf
  %i.da = load ptr, ptr %3, align 8, !tbaa !287
  %i.db = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc.i.i.i unwind label %bb.av
end_hunk_5
begin_hunk_6_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIfN9Imath_3_14halfEEEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.w:                                             ; preds = %bb.v, %.noexc.i.i.i
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.cz, ptr %i.dd, align 4, !tbaa !254
  %i.de = fmul float %sin.i.i.i.i, %i.cf
  %i.df = load ptr, ptr %3, align 8, !tbaa !287
  %i.dg = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.df)
          to label %.noexc29.i.i.i unwind label %bb.aw
end_hunk_6
begin_hunk_7_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !1176
  %i.bt = uitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, 0x3EF0001000000000
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.bu) ; 2 uses
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.bv = fmul float %i.bq, %cos.i.i.i.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj
end_hunk_7
begin_hunk_8_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIftEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  store float %i.bv, ptr %i.bz, align 4, !tbaa !254
  %i.ca = fmul float %i.bq, %sin.i.i.i.i
  %i.cb = load ptr, ptr %3, align 8, !tbaa !287
  %i.cc = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cb)
          to label %.noexc25.i.i.i unwind label %bb.ak
end_hunk_8
begin_hunk_9_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !96
  %i.bt = uitofp i8 %i.bs to float
  %i.bu = fmul nnan float %i.bt, 0x3F70101020000000
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.bu) ; 2 uses
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.bv = fmul float %i.bq, %cos.i.i.i.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj
end_hunk_9
begin_hunk_10_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.ca = fmul float %i.bv, 2.550000e+02          ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, float -5.000000e-01, float 5.000000e-01
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
end_hunk_10
begin_hunk_11_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ce, float 2.550000e+02, float %.0.i.i.i.i.i.i.i.i.i
  %i.cf = fptoui float %.1.i.i.i.i.i.i.i.i.i to i8
  store i8 %i.cf, ptr %i.bz, align 1, !tbaa !96
  %i.cg = fmul float %i.bq, %sin.i.i.i.i
  %i.ch = load ptr, ptr %3, align 8, !tbaa !287
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc28.i.i.i unwind label %bb.ak
end_hunk_11
begin_hunk_12_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIhhEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.m:                                             ; preds = %bb.l, %.noexc28.i.i.i
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  %i.cm = fmul float %i.cg, 2.550000e+02          ; 2 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float -5.000000e-01, float 5.000000e-01
  %i.cp = fadd float %i.cm, %i.co                 ; 2 uses
end_hunk_12
begin_hunk_13_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.0.0.i.i.i.i.i24.i.i.i = phi i32 [ %i.cp, %bb.q ], [ %i.cq, %bb.r ], [ %i.cx, %bb.t ], [ %i.cl, %bb.s ]
  %i.cy = bitcast i32 %.sroa.0.0.i.i.i.i.i24.i.i.i to float
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.cy) ; 2 uses
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.cz = fmul float %cos.i.i.i.i, %i.cf          ; 2 uses
  %i.da = load ptr, ptr %3, align 8, !tbaa !287
  %i.db = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.da)
          to label %.noexc23.i.i unwind label %bb.bo
end_hunk_13
begin_hunk_14_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIN9Imath_3_14halfES6_EEbRNS1_8ImageBufERKS7_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  %.0.i.i.i.i.i22.i.i = phi i16 [ %i.dj, %bb.ac ], [ %i.du, %bb.y ], [ %i.dw, %bb.aa ], [ %i.ee, %bb.ab ], [ %i.dm, %bb.x ], [ %i.et, %bb.af ], [ %i.ep, %bb.ae ]
  store i16 %.0.i.i.i.i.i22.i.i, ptr %i.dd, align 2, !tbaa !1176
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %i.eu = fmul float %sin.i.i.i.i, %i.cf          ; 2 uses
  %i.ev = load ptr, ptr %3, align 8, !tbaa !287
  %i.ew = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ev)
          to label %.noexc17.i.i unwind label %bb.bp
end_hunk_14
begin_hunk_15_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !1176
  %i.bt = uitofp i16 %i.bs to float
  %i.bu = fmul nnan float %i.bt, 0x3EF0001000000000
  %sincos.i.i.i.i = call { float, float } @llvm.sincos.f32(float %i.bu) ; 2 uses
  %sin.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 0
  %cos.i.i.i.i = extractvalue { float, float } %sincos.i.i.i.i, 1
  %i.bv = fmul float %i.bq, %cos.i.i.i.i
  %i.bw = load ptr, ptr %3, align 8, !tbaa !287
  %i.bx = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bw)
          to label %.noexc.i.i.i unwind label %bb.aj
end_hunk_15
begin_hunk_16_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a

bb.k:                                             ; preds = %bb.j, %.noexc.i.i.i
  %i.bz = load ptr, ptr %i.l, align 8, !tbaa !289
  %i.ca = fmul float %i.bv, 6.553500e+04          ; 2 uses
  %i.cb = fcmp olt float %i.ca, 0.000000e+00
  %i.cc = select i1 %i.cb, float -5.000000e-01, float 5.000000e-01
  %i.cd = fadd float %i.ca, %i.cc                 ; 2 uses
end_hunk_16
begin_hunk_17_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
  %.1.i.i.i.i.i.i.i.i.i = select i1 %i.ce, float 6.553500e+04, float %.0.i.i.i.i.i.i.i.i.i
  %i.cf = fptoui float %.1.i.i.i.i.i.i.i.i.i to i16
  store i16 %i.cf, ptr %i.bz, align 2, !tbaa !1176
  %i.cg = fmul float %i.bq, %sin.i.i.i.i
  %i.ch = load ptr, ptr %3, align 8, !tbaa !287
  %i.ci = invoke noundef i32 @_ZNK11OpenImageIO4v3_18ImageBuf7storageEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %.noexc28.i.i.i unwind label %bb.ak
end_hunk_17
begin_hunk_18_@_ZNSt17_Function_handlerIFvN11OpenImageIO4v3_13ROIEEZNS1_L21polar_to_complex_implIttEEbRNS1_8ImageBufERKS5_S2_iEUlS2_E_E9_M_invokeERKSt9_Any_dataOS2_:bb.a
bb.m:                                             ; preds = %bb.l, %.noexc28.i.i.i
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !289 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cm = fmul float %i.cg, 6.553500e+04          ; 2 uses
  %i.cn = fcmp olt float %i.cm, 0.000000e+00
  %i.co = select i1 %i.cn, float -5.000000e-01, float 5.000000e-01
  %i.cp = fadd float %i.cm, %i.co                 ; 2 uses
end_hunk_18
begin_hunk_19_@llvm.ctlz.i128
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

end_hunk_19
