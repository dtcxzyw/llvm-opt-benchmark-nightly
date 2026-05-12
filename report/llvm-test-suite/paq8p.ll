inline.NumInlined: 1537
inline.NumDeleted: 102
begin_hunk_0_@_ZN10ContextMap4mix1ER5Mixeriiii:bb.a
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.jj ; 5 uses
  store i16 %i.jh, ptr %i.jk, align 2, !tbaa !33
  %i.jl = lshr i32 %i.iw, 24                      ; 4 uses
  %6 = sub nuw nsw i32 255, %i.jl                 ; 3 uses
  %i.jm = sub nsw i32 %i.jl, %6
  %i.jn = trunc nsw i32 %i.jm to i16
  %i.jo = getelementptr i8, ptr %i.jk, i64 2
end_hunk_0
begin_hunk_1_@_ZN10ContextMap4mix1ER5Mixeriiii:bb.a
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds [2 x i8], ptr %i.hp, i64 %i.ll ; 2 uses
  store i16 %i.lj, ptr %i.lm, align 2, !tbaa !33
  %i.ln = lshr i32 %i.ld, 23
  %7 = trunc nuw nsw i32 %i.ln to i16
  %8 = and i16 %7, 510
  %i.lo = getelementptr i8, ptr %i.lm, i64 2
  %i.lp = add nsw i32 %i.lk, 5
  store i32 %i.lp, ptr %i.q, align 8, !tbaa !69
  %.scalar = add nsw i16 %8, -255
  %9 = insertelement <2 x i16> <i16 poison, i16 0>, i16 %.scalar, i64 0
  %i.lq = shufflevector <2 x i16> %9, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  store <4 x i16> %i.lq, ptr %i.lo, align 2, !tbaa !33
  br label %bb.ab

end_hunk_1
