inline.NumInlined: 1159
inline.NumDeleted: 369
begin_hunk_0_@_ZN16OpenColorIO_v2_511ConfigUtils19isIdentityTransformERKSt10shared_ptrIKNS_9ProcessorEERSt6vectorIfSaIfEEf:bb.a

.noexc26:                                         ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #25 ; 3 uses
  %i.j = sub i64 %i.d, %i.e
  %i.k = and i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.k, i1 false), !tbaa !59
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.f
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit

end_hunk_0
begin_hunk_1_@_ZN16OpenColorIO_v2_511ConfigUtils18initializeTestValsERNS0_22ColorSpaceFingerprintsERKSt10shared_ptrIKNS_6ConfigEE:bb.a
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.hn ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !119
  %i.ht = sub i64 %i.hl, %i.hm
  %i.hu = and i64 %i.ht, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.hq, i8 0, i64 %i.hu, i1 false), !tbaa !59
  br label %.loopexit219

.loopexit219:                                     ; preds = %.noexc91, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
end_hunk_1
begin_hunk_2_@_ZN16OpenColorIO_v2_511ConfigUtils18initializeTestValsERNS0_22ColorSpaceFingerprintsERKSt10shared_ptrIKNS_6ConfigEE:bb.a
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 %i.rs ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.rw, ptr %i.rx, align 8, !tbaa !119
  %i.ry = sub i64 %i.rq, %i.rr
  %i.rz = and i64 %i.ry, -4
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.rv, i8 0, i64 %i.rz, i1 false), !tbaa !59
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc171, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i169
end_hunk_2
