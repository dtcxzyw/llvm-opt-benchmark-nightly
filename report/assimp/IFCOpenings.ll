inline.NumInlined: 3958
inline.NumDeleted: 1464
begin_hunk_0_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a

bb.x:                                             ; preds = %bb.w
  %i.fo = add i64 %.1189, 1                       ; 8 uses
  %i.fp = load ptr, ptr %0, align 8               ; 7 uses
  %.idx180 = shl nsw i64 %i.fo, 4                 ; 2 uses
  %i.fq = getelementptr inbounds i8, ptr %i.fp, i64 %.idx180 ; 9 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.ft = load ptr, ptr %i.i, align 8             ; 9 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a
  br i1 %.not.i, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fp) ]
  %i.fv = icmp eq ptr %i.fq, %i.ft
  br i1 %i.fv, label %bb.z, label %bb.aa

end_hunk_1
begin_hunk_2_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a

bb.an:                                            ; preds = %_ZNSt6vectorIbSaIbEE6insertESt19_Bit_const_iteratorRKb.exit
  %i.iv = add i64 %.2, 1                          ; 8 uses
  %i.iw = load ptr, ptr %0, align 8               ; 7 uses
  %.idx182 = shl nsw i64 %i.iv, 4                 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %i.iw, i64 %.idx182 ; 9 uses
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iw to i64               ; 2 uses
  %i.ja = load ptr, ptr %i.i, align 8             ; 9 uses
end_hunk_2
begin_hunk_3_@_ZN6Assimp3IFC20FindAdjacentContoursEN9__gnu_cxx17__normal_iteratorIPNS0_22ProjectedWindowContourESt6vectorIS3_SaIS3_EEEERKS7_:bb.a
  br i1 %.not.i70, label %bb.av, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.iw) ]
  %i.jc = icmp eq ptr %i.ix, %i.ja
  br i1 %i.jc, label %bb.ap, label %bb.aq

end_hunk_3
