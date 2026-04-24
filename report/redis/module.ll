inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@RM_ChannelAtPosWithFlags:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %i.o = shl i32 %2, 10
  %.1.a = and i32 %i.o, 12288
  %i.p = shl i32 %2, 13
  %i.q = and i32 %i.p, 16384
  %.2 = or disjoint i32 %.1.a, %i.q
  %i.r = shl i32 %2, 11
  %i.s = and i32 %i.r, 2048
  %.3 = or disjoint i32 %.2, %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !163
  %i.v = sext i32 %i.n to i64
end_hunk_0
