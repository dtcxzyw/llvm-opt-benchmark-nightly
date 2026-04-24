inline.NumInlined: 700
inline.NumDeleted: 31
begin_hunk_0_@RM_ChannelAtPosWithFlags:bb.a

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i32 [ %.pre, %bb.d ], [ %i.h, %bb.c ] ; 2 uses
  %3 = and i32 %2, 4                              ; 2 uses
  %.not29 = icmp eq i32 %3, 0
  %spec.select33 = select i1 %.not29, i32 8192, i32 12288
  %i.o = shl nuw nsw i32 %3, 10
  %.1.a = and i32 %2, 8
  %.not30 = icmp eq i32 %.1.a, 0
  %.1 = select i1 %.not30, i32 %i.o, i32 %spec.select33
  %i.p = shl i32 %2, 13
  %i.q = and i32 %i.p, 16384
  %i.r = shl i32 %2, 11
  %i.s = and i32 %i.r, 2048
  %.2 = or disjoint i32 %i.s, %i.q
  %.3 = or disjoint i32 %.2, %.1
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !163
  %i.v = sext i32 %i.n to i64
end_hunk_0
