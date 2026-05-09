inline.NumInlined: 4673
inline.NumDeleted: 1879
begin_hunk_0_@_ZN5folly11AsyncSocket21SendMsgParamsCallback15getDefaultFlagsENS_10WriteFlagsEb
define noundef range(i32 16448, 67174400) i32 @_ZN5folly11AsyncSocket21SendMsgParamsCallback15getDefaultFlagsENS_10WriteFlagsEb(ptr noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %spec.select = select i1 %.not, i32 16448, i32 49216
  %3 = and i32 %1, 2
  %.not11 = icmp eq i32 %3, 0
  %4 = select i1 %.not, i32 16576, i32 49344
  %spec.select9 = select i1 %.not11, i32 %spec.select, i32 %4
  %i.b = shl i32 %1, 23
  %i.c = and i32 %i.b, 67108864
  %spec.select10 = select i1 %2, i32 %i.c, i32 0
end_hunk_0
begin_hunk_1_@"_ZZN5folly11AsyncSocket17sendSocketMessageEPK5iovecmNS_10WriteFlagsENS0_15WriteRequestTagEENK3$_1clES3_mS4_":bb.a
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !14324, !range !13961, !noundef !149
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = and i32 %4, 1
  %.not.i.i = icmp eq i32 %i.ar, 0                ; 2 uses
  %spec.select.i.i = select i1 %.not.i.i, i32 16448, i32 49216
  %12 = and i32 %4, 2
  %.not11.i.i = icmp eq i32 %12, 0
  %13 = select i1 %.not.i.i, i32 16576, i32 49344
  %spec.select9.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %13 ; 2 uses
  %i.as = shl i32 %4, 23
  %i.at = and i32 %i.as, 67108864
  %spec.select10.i.i = select i1 %i.aq, i32 %i.at, i32 0
end_hunk_1
