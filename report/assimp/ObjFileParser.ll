inline.NumInlined: 2069
inline.NumDeleted: 754
begin_hunk_0_@_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store float 0.000000e+00, ptr %i.a, align 4
  %i.eg = call noundef ptr @_ZN6Assimp17fast_atoreal_moveIf17DeadlyImportErrorEEPKcS3_RT_b(ptr noundef nonnull %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i1 noundef zeroext true) ; 0 uses
  %i.eh = load float, ptr %i.a, align 4           ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.ei = fcmp oeq float %i.eh, 0.000000e+00
  br i1 %i.ei, label %bb.n, label %bb.q
end_hunk_0
begin_hunk_1_@_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  resume { ptr, i32 } %i.ek

bb.q:                                             ; preds = %_ZN6Assimp13ObjFileParser12copyNextWordEPcm.exit80
  %2 = insertelement <2 x float> poison, float %i.am, i64 0
  %3 = insertelement <2 x float> %2, float %i.bt, i64 1
  %4 = insertelement <2 x float> poison, float %i.eh, i64 0
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <2 x i32> zeroinitializer
  %6 = fdiv <2 x float> %3, %5                    ; 2 uses
  %i.el = fdiv float %i.da, %i.eh                 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.en = load ptr, ptr %i.em, align 8            ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8
  %.not.i81 = icmp eq ptr %i.en, %i.ep
  br i1 %.not.i81, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store <2 x float> %6, ptr %i.en, align 4
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %i.el, ptr %i.eq, align 4
  %i.er = load ptr, ptr %i.em, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp13ObjFileParser21getHomogeneousVector3ERSt6vectorI10aiVector3tIfESaIS3_EE:bb.a
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.fd = mul nuw nsw i64 %i.fc, 12
  %i.fe = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fd) #31 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ew ; 2 uses
  store <2 x float> %6, ptr %i.ff, align 4
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  store float %i.el, ptr %i.fg, align 4
  %.not10.i.i.i.i.i = icmp eq ptr %i.et, %i.en
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI10aiVector3tIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i
end_hunk_2
