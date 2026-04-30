inline.NumInlined: 1762
inline.NumDeleted: 1148
begin_hunk_0_@_ZN2v88internal4wasm22AsmJsOffsetInformationC2ENS_4base6VectorIKhEE:bb.a
  store i8 %i.e, ptr %i.b, align 1, !noalias !32
  br label %_ZN2v84base11OwnedVectorIhED2Ev.exit

_ZN2v84base11OwnedVectorIhED2Ev.exit:             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ %i.b, %bb.c ], [ %i.b, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0.0, ptr %i.f, align 8
  store i64 %2, ptr %3, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.g, align 8
end_hunk_0
