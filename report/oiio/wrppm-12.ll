begin_hunk_0_@put_cmyk:bb.a

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967292               ; 5 uses
  %3 = load i32, ptr %i.h, align 8, !tbaa !8, !alias.scope !69
  %i.p = mul nuw nsw i64 %n.vec, 6
  %i.q = getelementptr i8, ptr %i.d, i64 %i.p
  %i.r = shl nuw nsw i64 %n.vec, 3
  %i.s = getelementptr i8, ptr %i.g, i64 %i.r
  %i.t = trunc nuw i64 %n.vec to i32
  %i.u = sub i32 %i.c, %i.t
  %i.v = shl nsw i32 -1, %3
  %.scalar = xor i32 %i.v, -1
  %i.w = insertelement <4 x i32> poison, i32 %.scalar, i64 0
end_hunk_0
