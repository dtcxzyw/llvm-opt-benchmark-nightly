inline.NumInlined: 329
inline.NumDeleted: 191
begin_hunk_0_@_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj:bb.a
bb.af:                                            ; preds = %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit
  %i.iz = zext i32 %2 to i64
  %i.ja = load ptr, ptr %i.iw, align 8
  %i.jb = getelementptr inbounds nuw [64 x i8], ptr %i.ja, i64 %i.iz ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 56
  %i.jd = load float, ptr %i.jc, align 8
  br label %bb.ai

.thread:                                          ; preds = %.noexc317, %_ZNK6Assimp21SharedPostProcessInfo11GetPropertyISt6vectorISt4pairINS_11SpatialSortEfESaIS5_EEEEbPKcRPT_.exit, %bb.ab
  %i.je = load ptr, ptr %i.an, align 8
  %i.jf = load i32, ptr %i.s, align 4
  invoke void @_ZN6Assimp11SpatialSort4FillEPK10aiVector3tIfEjjb(ptr noundef nonnull align 8 dereferenceable(49) %3, ptr noundef %i.je, i32 noundef %i.jf, i32 noundef 12, i1 noundef zeroext true)
end_hunk_0
begin_hunk_1_@_ZN6Assimp19CalcTangentsProcess11ProcessMeshEP6aiMeshj:bb.a
  %.sroa.33.1564 = phi ptr [ %.sroa.33.7, %.lr.ph566 ], [ %.sroa.33.3, %bb.bi ] ; 9 uses
  %.sroa.19.1563 = phi ptr [ %.sroa.19.6, %.lr.ph566 ], [ %.sroa.19.2, %bb.bi ] ; 7 uses
  %.sroa.0387.1562 = phi ptr [ %.sroa.0387.7, %.lr.ph566 ], [ %.sroa.0387.3, %bb.bi ] ; 11 uses
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.mu, i64 %i.mw
  %i.my = load i32, ptr %i.mx, align 4            ; 4 uses
  %i.mz = zext i32 %i.my to i64                   ; 4 uses
  %i.na = lshr i32 %i.my, 6
end_hunk_1
