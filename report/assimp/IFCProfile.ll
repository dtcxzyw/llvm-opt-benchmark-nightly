inline.NumInlined: 580
inline.NumDeleted: 204
begin_hunk_0_@_ZN6Assimp3IFC26ProcessParametrizedProfileERKNS0_10Schema_2x326IfcParameterizedProfileDefERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  store double %i.iy, ptr %i.c, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.is, i64 136 ; 4 uses
  %i.ja = load double, ptr %i.iz, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.is, i64 152 ; 10 uses
  %i.jc = load double, ptr %i.jb, align 8
  %i.jd = fneg double %i.jc
  %i.je = tail call double @llvm.fmuladd.f64(double %i.jd, double 2.000000e+00, double %i.ja) ; 4 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC26ProcessParametrizedProfileERKNS0_10Schema_2x326IfcParameterizedProfileDefERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #21
  %i.pd = load double, ptr %i.c, align 8
  %5 = load double, ptr %i.iv, align 8
  %6 = fadd double %i.pd, %5                      ; 2 uses
  %7 = load double, ptr %i.jb, align 8
  %8 = fadd double %i.je, %7                      ; 2 uses
  %i.pe = load ptr, ptr %i.jz, align 8            ; 7 uses
  %i.pf = load ptr, ptr %i.jf, align 8
  %.not.i185 = icmp eq ptr %i.pe, %i.pf
  br i1 %.not.i185, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorI10aiVector3tIdESaIS1_EE12emplace_backIJiRKdiEEERS1_DpOT_.exit184
  store double %6, ptr %i.pe, align 8
  %9 = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store double %8, ptr %9, align 8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store double 0.000000e+00, ptr %i.pg, align 8
  %i.ph = load ptr, ptr %i.jz, align 8
end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC26ProcessParametrizedProfileERKNS0_10Schema_2x326IfcParameterizedProfileDefERNS0_8TempMeshERNS0_14ConversionDataE:bb.a
  call void @llvm.assume(i1 %.not.i.i.i188)
  %i.pt = mul nuw nsw i64 %i.ps, 24
  %i.pu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pt) #23 ; 5 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pm ; 3 uses
  store double %6, ptr %10, align 8
  %i.pv = getelementptr inbounds nuw i8, ptr %10, i64 8
  store double %8, ptr %i.pv, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %10, i64 16
  store double 0.000000e+00, ptr %i.pw, align 8
  %.not10.i.i.i.i.i189 = icmp eq ptr %i.pj, %i.pe
  br i1 %.not10.i.i.i.i.i189, label %_ZNSt6vectorI10aiVector3tIdESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i194, label %.lr.ph.i.i.i.i.i190
end_hunk_2
