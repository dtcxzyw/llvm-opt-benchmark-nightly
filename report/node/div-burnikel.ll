inline.NumInlined: 165
inline.NumDeleted: 65
begin_hunk_0_@_ZN2v86bigint13ProcessorImpl21DivideBurnikelZieglerENS0_8RWDigitsES2_NS0_6DigitsES3_:bb.a

.lr.ph274:                                        ; preds = %_ZN2v86bigint13ScratchDigitsD2Ev.exit
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.r
  store ptr %i.az, ptr %9, align 8
  %.sroa.8.0..sroa_idx237 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %i.aw, ptr %.sroa.8.0..sroa_idx237, align 8
  %10 = zext nneg i32 %i.cq to i64
  br label %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit176

bb.b:                                             ; preds = %_ZN2v86bigint5PutAtENS0_8RWDigitsENS0_6DigitsEj.exit191
end_hunk_0
