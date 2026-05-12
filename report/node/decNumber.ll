inline.NumInlined: 181
inline.NumDeleted: 7
begin_hunk_0_@_ZL13decMultiplyOpP9decNumberPKS_S2_P10decContextPj:bb.a
  br i1 %conflict.rdx, label %.lr.ph352.preheader442, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %5 = getelementptr i8, ptr %i.ge, i64 %i.fy
  %i.gg = load i32, ptr %.1255357, align 4, !alias.scope !74
  %broadcast.splatinsert = insertelement <2 x i32> poison, i32 %i.gg, i64 0
  %broadcast.splat = shufflevector <2 x i32> %broadcast.splatinsert, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.gh = zext <2 x i32> %broadcast.splat to <2 x i64> ; 2 uses
  br label %vector.body

end_hunk_0
