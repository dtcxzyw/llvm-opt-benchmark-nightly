inline.NumInlined: 4
inline.NumDeleted: 3
begin_hunk_0_@dyn_comp:bb.a
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !4
  %i.ap = tail call i32 @Swap32NtoB(i32 noundef %i.ao) #4
  %i.aq = and i32 %.087192, 7
  %6 = lshr exact i32 -8388608, %i.aq
  %i.ar = or i32 %i.ap, %6
  %i.as = tail call i32 @Swap32BtoN(i32 noundef %i.ar) #4
  store i32 %i.as, ptr %i.an, align 4, !tbaa !4
  %i.at = add i32 %.087192, 9                     ; 3 uses
end_hunk_0
