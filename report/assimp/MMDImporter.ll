inline.NumInlined: 1132
inline.NumDeleted: 755
begin_hunk_0_@_ZN6Assimp11MMDImporter20CreateDataFromImportEPKN3pmx8PmxModelEP7aiScene:bb.a
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 72
  %i.gz = load float, ptr %i.gy, align 8
  %i.ha = fsub float %i.gx, %i.gz
  %i.hb = load ptr, ptr %i.gh, align 8            ; 10 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 1028
  store float 1.000000e+00, ptr %i.hc, align 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1048
  store float 1.000000e+00, ptr %.sroa.5.0..sroa_idx.i, align 4
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1068
  store float 1.000000e+00, ptr %.sroa.7.0..sroa_idx.i, align 4
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1072
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hb, i64 1076
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.hd, i8 0, i64 12, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.hb, i64 1088
  store float 1.000000e+00, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 1040
  store float %i.gq, ptr %i.he, align 4
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 1056
  store float %i.gv, ptr %i.hf, align 4
  store float %i.ha, ptr %.sroa.8.0..sroa_idx.i, align 4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.ab
end_hunk_0
begin_hunk_1_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  %i.agv = phi i32 [ %i.cy, %.lr.ph659 ], [ %i.ajg, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 4 uses
  %indvars.iv712 = phi i64 [ 0, %.lr.ph659 ], [ %indvars.iv.next713, %_ZNSt3mapIiSt6vectorI14aiVertexWeightSaIS1_EESt4lessIiESaISt4pairIKiS3_EEE4findERS7_.exit.thread ] ; 5 uses
  %i.agw = invoke noalias noundef nonnull dereferenceable(1120) ptr @_Znwm(i64 noundef 1120) #25
          to label %bb.ct unwind label %bb.cy     ; 16 uses

bb.ct:                                            ; preds = %bb.cs
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agw, i64 1056 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.agw, i64 1096 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.agw, i64 1100 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.agw, i64 1116 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ahc, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahd, align 4
end_hunk_2
begin_hunk_3_@_ZN6Assimp11MMDImporter10CreateMeshEPKN3pmx8PmxModelEii:bb.a
  %i.ahu = fneg float %i.ahq
  %i.ahv = fneg float %i.ahs
  store float 1.000000e+00, ptr %i.agx, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.agy, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.agz, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aha, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.ahb, align 4
  %31 = getelementptr inbounds nuw i8, ptr %i.agw, i64 1104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %31, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.ahd, align 4
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agw, i64 1068
  store float %i.aht, ptr %i.ahw, align 4
end_hunk_3
