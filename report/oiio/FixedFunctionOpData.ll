inline.NumInlined: 581
inline.NumDeleted: 180
begin_hunk_0_@_ZN16OpenColorIO_v2_519FixedFunctionOpDataC2ENS0_5StyleERKSt6vectorIdSaIdEE:bb.a
bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.w = getelementptr inbounds i8, ptr %i.k, i64 %i.s
  store ptr %i.w, ptr %i.l, align 8, !tbaa !44
  %3 = load ptr, ptr %0, align 8, !tbaa !17
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  invoke void %5(ptr noundef nonnull align 8 dereferenceable(200) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
end_hunk_0
