inline.NumInlined: 526
inline.NumDeleted: 277
begin_hunk_0_@_ZNSt12__shared_ptrIN16OpenColorIO_v2_512_GLOBAL__N_114MatrixOffsetOpELN9__gnu_cxx12_Lock_policyE2EED2Ev:bb.a

; Function Attrs: mustprogress uwtable
define hidden void @_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = alloca [16 x double], align 16             ; 8 uses
  %6 = alloca [4 x double], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %8 = load <2 x double>, ptr %2, align 8, !tbaa !7
  %9 = load <2 x double>, ptr %1, align 8, !tbaa !7 ; 2 uses
  %10 = fsub <2 x double> %8, %9
  %11 = fdiv <2 x double> splat (double 1.000000e+00), %10 ; 4 uses
  %12 = fneg <2 x double> %9
  %13 = fmul <2 x double> %11, %12                ; 2 uses
  store <2 x double> %13, ptr %6, align 16, !tbaa !7
  %14 = extractelement <2 x double> %11, i64 1    ; 2 uses
  %15 = fcmp une double %14, 1.000000e+00
  br i1 %15, label %bb.a, label %16

16:                                               ; preds = %4
  %17 = extractelement <2 x double> %11, i64 0
  %18 = fcmp une double %17, 1.000000e+00
  %19 = fcmp une <2 x double> %13, zeroinitializer ; 2 uses
  %20 = extractelement <2 x i1> %19, i64 0
  %21 = select i1 %18, i1 true, i1 %20
  %22 = extractelement <2 x i1> %19, i64 1
  %23 = or i1 %21, %22
  br label %bb.a

bb.a:                                             ; preds = %16, %4
  %24 = phi i1 [ true, %4 ], [ %23, %16 ]
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load double, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !7 ; 2 uses
  %i.e = fsub double %i.b, %i.d
  %i.f = fdiv double 1.000000e+00, %i.e           ; 3 uses
  %i.g = fneg double %i.d
  %i.h = fmul double %i.f, %i.g                   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store double %i.h, ptr %i.i, align 16, !tbaa !7
  %i.j = fcmp une double %i.f, 1.000000e+00
  %i.k = fcmp une double %i.h, 0.000000e+00
  %op.rdx = or i1 %24, %i.k
  %op.rdx19 = select i1 %i.j, i1 true, i1 %op.rdx
  br i1 %op.rdx19, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %i.l = extractelement <2 x double> %11, i64 0
  store double %i.l, ptr %5, align 16, !tbaa !7
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double %14, ptr %i.m, align 8, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 80
  store double %i.f, ptr %i.n, align 16, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 120
  store double 1.000000e+00, ptr %i.o, align 8, !tbaa !7
  call void @_ZN16OpenColorIO_v2_520CreateMatrixOffsetOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull %5, ptr noundef nonnull %6, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEffNS_18TransformDirectionE:bb.a
  %i.h = fneg double %i.c
  %i.i = fmul double %i.g, %i.h                   ; 4 uses
  store double %i.i, ptr %i.b, align 16, !tbaa !7
  %4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %i.i, ptr %4, align 8, !tbaa !7
  %5 = fcmp une double %i.g, 1.000000e+00
  store double %i.i, ptr %i.e, align 16, !tbaa !7
  %6 = fcmp une double %i.i, 0.000000e+00
  %or.cond = or i1 %5, %6
  br i1 %or.cond, label %bb.b, label %_ZN16OpenColorIO_v2_514CreateMinMaxOpERNS_10OpRcPtrVecEPKdS3_NS_18TransformDirectionE.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
end_hunk_1
