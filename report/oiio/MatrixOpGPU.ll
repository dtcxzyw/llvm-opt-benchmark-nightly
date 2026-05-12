inline.NumInlined: 193
inline.NumDeleted: 88
begin_hunk_0_@_ZN16OpenColorIO_v2_525GetMatrixGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_12MatrixOpDataEE:bb.a
          to label %bb.k unwind label %bb.as

bb.k:                                             ; preds = %bb.j
  %i.h = load ptr, ptr %1, align 8, !tbaa !13     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 192 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 200 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_525GetMatrixGPUShaderProgramERSt10shared_ptrINS_16GpuShaderCreatorEERS0_IKNS_12MatrixOpDataEE:bb.a

_ZNSt6vectorIdSaIdEEC2ERKS1_.exit:                ; preds = %bb.o, %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %35 = load ptr, ptr %1, align 8, !tbaa !13
  %i.x = getelementptr inbounds nuw i8, ptr %35, i64 216
  invoke void @_ZN16OpenColorIO_v2_512MatrixOpData7OffsetsC1ERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
          to label %bb.p unwind label %bb.bg

end_hunk_1
