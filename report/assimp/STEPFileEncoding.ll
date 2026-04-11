inline.NumInlined: 172
inline.NumDeleted: 107
begin_hunk_0_@_ZN4utf86appendIPhEET_jS2_:bb.a

bb.d:                                             ; preds = %bb.c
  %i.h = trunc nuw nsw i32 %0 to i8
  store i8 %i.h, ptr %1, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

end_hunk_0
begin_hunk_1_@_ZN4utf86appendIPhEET_jS2_:bb.a
  %i.n = trunc i32 %0 to i8
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128
  store i8 %i.p, ptr %i.m, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

end_hunk_1
begin_hunk_2_@_ZN4utf86appendIPhEET_jS2_:bb.a
  %i.aa = trunc i32 %0 to i8
  %i.ab = and i8 %i.aa, 63
  %i.ac = or disjoint i8 %i.ab, -128
  store i8 %i.ac, ptr %i.r, align 1
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = lshr i32 %0, 6
  %i.ae = lshr i32 %0, 12
  %i.af = lshr i32 %0, 18
end_hunk_2
begin_hunk_3_@_ZN4utf86appendIPhEET_jS2_:bb.a
  br label %_ZN4utf88internal6appendIPhEET_jS3_.exit

_ZN4utf88internal6appendIPhEET_jS3_.exit:         ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %.pn.i.i = phi i64 [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ]
  %.0.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.pn.i.i
  ret ptr %.0.i.i
}

end_hunk_3
