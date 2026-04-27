inline.NumInlined: 161
inline.NumDeleted: 96
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_:bb.a
  %i.g = add i32 %i.d, -1                         ; 2 uses
  %.03649.i.i = and i32 %i.f, %i.g                ; 2 uses
  %i.h = zext i32 %.03649.i.i to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.h ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %.sroa.05.0.copyload50.i.i = load i32, ptr %i.i, align 4, !tbaa !3 ; 2 uses
  %i.j = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.05.0.copyload50.i.i
  br i1 %i.j, label %.loopexit, label %.lr.ph.i.i, !prof !37
end_hunk_0
begin_hunk_1_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E11try_emplaceIJRS6_EEESt4pairINS_16DenseMapIteratorIS4_S6_S8_SA_Lb0EEEbEOS4_DpOT_:bb.a
  %i.q = add i32 %.03851.i.i, %.03653.i.i
  %.036.i.i = and i32 %i.q, %i.g                  ; 2 uses
  %i.r = zext i32 %.036.i.i to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.r ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %.sroa.05.0.copyload.i.i = load i32, ptr %i.s, align 4, !tbaa !3 ; 2 uses
  %i.t = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.05.0.copyload.i.i
  br i1 %i.t, label %.loopexit, label %.lr.ph.i.i, !prof !38, !llvm.loop !39
end_hunk_1
begin_hunk_2_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_:bb.a
  %i.f = add i32 %i.c, -1                         ; 2 uses
  %.03649.i = and i32 %i.e, %i.f                  ; 2 uses
  %i.g = zext i32 %.03649.i to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.g ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  %.sroa.05.0.copyload50.i = load i32, ptr %i.h, align 4, !tbaa !3 ; 2 uses
  %i.i = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload50.i
  br i1 %i.i, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !37
end_hunk_2
begin_hunk_3_@_ZN4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPSA_:bb.a
  %i.p = add i32 %.03851.i, %.03653.i
  %.036.i = and i32 %i.p, %i.f                    ; 2 uses
  %i.q = zext i32 %.036.i to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %.sroa.05.0.copyload.i = load i32, ptr %i.r, align 4, !tbaa !3 ; 2 uses
  %i.s = icmp eq i32 %.sroa.0.0.copyload.i.i, %.sroa.05.0.copyload.i
  br i1 %i.s, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN6hermes2vm8SymbolIDENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS4_EENS5_12DenseSetPairIS4_EEEES4_S6_S8_SA_E15LookupBucketForIS4_EEbRKT_RPKSA_.exit, label %.lr.ph.i, !prof !38, !llvm.loop !39
end_hunk_3
