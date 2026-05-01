inline.NumInlined: 305
inline.NumDeleted: 106
begin_hunk_0_@_ZN6icu_7817LikelySubtagsData4loadER10UErrorCode:bb.a
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ar, %bb.aq
  %i.el = phi ptr [ %i.ei, %bb.aq ], [ %i.eo, %bb.ar ] ; 4 uses
  store <2 x ptr> <ptr @.str.7, ptr @.str>, ptr %i.el, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  store ptr @.str, ptr %i.em, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 24
end_hunk_0
begin_hunk_1_@_ZN6icu_7817LikelySubtagsData4loadER10UErrorCode:bb.a
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %i.iu = phi ptr [ %i.ir, %bb.bg ], [ %i.ix, %bb.bh ] ; 4 uses
  store <2 x ptr> <ptr @.str.7, ptr @.str>, ptr %i.iu, align 8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  store ptr @.str, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
end_hunk_1
