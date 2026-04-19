inline.NumInlined: 314
inline.NumDeleted: 209
begin_hunk_0_@_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %.019 = phi ptr [ %i.be, %bb.f ], [ %1, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E9initEmptyEv.exit ] ; 6 uses
  %i.u = load i64, ptr %.019, align 8, !tbaa !108 ; 5 uses
  %switch = icmp ugt i64 %i.u, -3
  br i1 %switch, label %bb.f, label %3

3:                                                ; preds = %.lr.ph
  %4 = load ptr, ptr %0, align 8, !tbaa !107      ; 2 uses
  %5 = load i32, ptr %i.d, align 8, !tbaa !106    ; 2 uses
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %bb.b

bb.b:                                             ; preds = %3
  %i.v = trunc i64 %i.u to i32
  %i.w = mul i32 %i.v, 37
  %i.x = add i32 %5, -1                           ; 2 uses
  %.02744.i.i = and i32 %i.x, %i.w                ; 2 uses
  %i.y = zext i32 %.02744.i.i to i64
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.y ; 3 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !108 ; 2 uses
  %i.ab = icmp eq i64 %i.u, %i.aa
  br i1 %i.ab, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !114
end_hunk_0
begin_hunk_1_@_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E18moveFromOldBucketsEPSC_SF_:bb.a
  %i.aj = add i32 %.02546.i.i, %.02747.i.i
  %.027.i.i = and i32 %i.aj, %i.x                 ; 2 uses
  %i.ak = zext i32 %.027.i.i to i64
  %i.al = getelementptr inbounds nuw [40 x i8], ptr %4, i64 %i.ak ; 3 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !108 ; 2 uses
  %i.an = icmp eq i64 %i.u, %i.am
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit, label %.lr.ph.i.i, !prof !116, !llvm.loop !117

_ZN4llvh12DenseMapBaseINS_8DenseMapImNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_12DenseMapInfoImEENS_6detail12DenseMapPairImS7_EEEEmS7_S9_SC_E15LookupBucketForImEEbRKT_RPSC_.exit: ; preds = %bb.d, %3, %bb.b, %bb.c
  %.sink.i.i = phi ptr [ %i.af, %bb.c ], [ null, %3 ], [ %i.z, %bb.b ], [ %i.al, %bb.d ] ; 4 uses
  store i64 %i.u, ptr %.sink.i.i, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %.sink.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.019, i64 8 ; 2 uses
end_hunk_1
