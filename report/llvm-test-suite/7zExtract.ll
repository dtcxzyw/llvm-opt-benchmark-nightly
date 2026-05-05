inline.NumInlined: 91
inline.NumDeleted: 49
begin_hunk_0_@_ZN8NArchive3N7z8CHandler7ExtractEPKjjiP23IArchiveExtractCallback:bb.a
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gl, %vector.body ]
  %vec.phi364 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.gm, %vector.body ]
  %i.gg = trunc nuw nsw i64 %index to i32
  %i.gh = add i32 %i.fv, %i.gg
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %i.fz, i64 %i.gi ; 2 uses
end_hunk_0
