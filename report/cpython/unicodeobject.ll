inline.NumInlined: 2798
inline.NumDeleted: 306
begin_hunk_0_@ucs2lib_fastsearch:bb.a
  %vec.phi168 = phi <2 x i64> [ %i.ev, %vector.ph155 ], [ %i.ff, %vector.body162 ]
  %vec.phi169 = phi <2 x i64> [ zeroinitializer, %vector.ph155 ], [ %i.fg, %vector.body162 ]
  %vec.ind170 = phi <2 x i64> [ %induction, %vector.ph155 ], [ %vec.ind.next175, %vector.body162 ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind170, splat (i64 -2)
  %offset.idx = sub i64 %i.ep, %index163
  %i.ew = getelementptr [2 x i8], ptr %2, i64 %offset.idx ; 2 uses
  %i.ex = getelementptr i8, ptr %i.ew, i64 -2
end_hunk_0
begin_hunk_1_@ucs2lib_fastsearch:bb.a
  %i.fl = or <2 x i1> %vec.phi166, %i.fh          ; 2 uses
  %i.fm = or <2 x i1> %vec.phi167, %i.fi          ; 2 uses
  %index.next174 = add nuw i64 %index163, 4       ; 2 uses
  %vec.ind.next175 = add <2 x i64> %vec.ind170, splat (i64 -4)
  %i.fn = icmp eq i64 %index.next174, %n.vec157
  br i1 %i.fn, label %middle.block176, label %vector.body162, !llvm.loop !828

end_hunk_1
begin_hunk_2_@ucs4lib_fastsearch:bb.a
  %vec.phi184 = phi <2 x i64> [ %i.fi, %vector.ph171 ], [ %i.fs, %vector.body178 ]
  %vec.phi185 = phi <2 x i64> [ zeroinitializer, %vector.ph171 ], [ %i.ft, %vector.body178 ]
  %vec.ind186 = phi <2 x i64> [ %induction, %vector.ph171 ], [ %vec.ind.next191, %vector.body178 ] ; 3 uses
  %step.add = add <2 x i64> %vec.ind186, splat (i64 -2)
  %offset.idx = sub i64 %i.fc, %index179
  %i.fj = getelementptr [4 x i8], ptr %2, i64 %offset.idx ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 -4
end_hunk_2
begin_hunk_3_@ucs4lib_fastsearch:bb.a
  %i.fy = or <2 x i1> %vec.phi182, %i.fu          ; 2 uses
  %i.fz = or <2 x i1> %vec.phi183, %i.fv          ; 2 uses
  %index.next190 = add nuw i64 %index179, 4       ; 2 uses
  %vec.ind.next191 = add <2 x i64> %vec.ind186, splat (i64 -4)
  %i.ga = icmp eq i64 %index.next190, %n.vec173
  br i1 %i.ga, label %middle.block192, label %vector.body178, !llvm.loop !858

end_hunk_3
