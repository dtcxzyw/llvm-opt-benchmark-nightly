inline.NumInlined: 1001
inline.NumDeleted: 333
begin_hunk_0_@_ZN2v88internal9DateCache15LocalOffsetInMsElb:bb.a
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 15 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp sgt i32 %i.f, 2147483636
  br i1 %i.g, label %.loopexit76.loopexit, label %.loopexit76
end_hunk_0
begin_hunk_1_@_ZN2v88internal9DateCache15LocalOffsetInMsElb:bb.a
  br label %.loopexit

bb.y:                                             ; preds = %bb.j
  %i.fd = load i32, ptr %i.e, align 8             ; 2 uses
  %i.fe = add nsw i32 %i.fd, 1                    ; 2 uses
  store i32 %i.fe, ptr %i.e, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
end_hunk_1
begin_hunk_2_@_ZN2v88internal9DateCache15LocalOffsetInMsElb:bb.a
  br label %_ZN2v88internal9DateCache21ExtendTheAfterSegmentEli.exit71

bb.an:                                            ; preds = %bb.y
  %i.hi = add nsw i32 %i.fd, 2                    ; 2 uses
  store i32 %i.hi, ptr %i.e, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.fl, i64 20
  store i32 %i.hi, ptr %i.hj, align 4
end_hunk_2
