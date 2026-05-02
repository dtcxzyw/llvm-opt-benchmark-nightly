inline.NumInlined: 526
inline.NumDeleted: 277
begin_hunk_0_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca [16 x double], align 16             ; 8 uses
  %5 = alloca [4 x double], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %7 = load <2 x double>, ptr %2, align 8, !tbaa !7
  %8 = load <2 x double>, ptr %1, align 8, !tbaa !7 ; 2 uses
  %9 = fsub <2 x double> %7, %8
  %10 = fdiv <2 x double> splat (double 1.000000e+00), %9 ; 4 uses
  %11 = fneg <2 x double> %8
  %12 = fmul <2 x double> %10, %11                ; 2 uses
  store <2 x double> %12, ptr %5, align 16, !tbaa !7
  %13 = shufflevector <2 x double> %10, <2 x double> %12, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %.fr = freeze <4 x double> %13
  %14 = fcmp une <4 x double> %.fr, <double 1.000000e+00, double 0.000000e+00, double 1.000000e+00, double 0.000000e+00>
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !7 ; 2 uses
  %i.e = fsub double %i.b, %i.d
  %.fr22 = freeze double %i.e
  %i.f = fdiv double 1.000000e+00, %.fr22         ; 3 uses
  %i.g = fneg double %i.d
  %i.h = fmul double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store double %i.h, ptr %i.i, align 16, !tbaa !7
  %i.j = fcmp une double %i.f, 1.000000e+00
  %i.k = fcmp une double %i.h, 0.000000e+00
  %15 = bitcast <4 x i1> %14 to i4
  %16 = icmp ne i4 %15, 0
  %op.rdx = or i1 %16, %i.j
  %op.rdx19 = select i1 %op.rdx, i1 true, i1 %i.k
  br i1 %op.rdx19, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %4, i8 0, i64 128, i1 false)
  %i.l = extractelement <2 x double> %10, i64 0
  store double %i.l, ptr %4, align 16, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 40
  %17 = extractelement <2 x double> %10, i64 1
  store double %17, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 80
  store double %i.f, ptr %i.n, align 16, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 120
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !7
  call void @_ZN16OpenColorIO_v2_520CreateMatrixOffsetOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEffNS_18TransformDirectionE:bb.a
  %i.h = fneg double %i.c
  %i.i = fmul double %i.g, %i.h                   ; 4 uses
  store double %i.i, ptr %i.b, align 16, !tbaa !7
  %4 = fcmp une double %i.g, 1.000000e+00
  %5 = fcmp une double %i.i, 0.000000e+00
  %narrow.i = or i1 %4, %5
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.i, ptr %6, align 8, !tbaa !7
  store double %i.i, ptr %i.e, align 16, !tbaa !7
  br i1 %narrow.i, label %bb.b, label %_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
end_hunk_1
