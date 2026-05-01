inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0_@ReadCharMetrics:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = icmp ne i32 %1, 0
  %i.s = insertelement <2 x i32> poison, i32 %2, i64 0
  %9 = shufflevector <2 x i32> %i.s, <2 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph193, %._crit_edge.thread
end_hunk_0
begin_hunk_1_@ReadCharMetrics:bb.a
  br i1 %.not148, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.dw
  %10 = insertelement <4 x i32> %i.de, i32 %.2131, i64 3
  %11 = sub nsw <4 x i32> %i.de, %9
  %12 = shufflevector <4 x i32> %11, <4 x i32> %10, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %13 = trunc <4 x i32> %12 to <4 x i16>
  store <4 x i16> %13, ptr %i.eg, align 2, !tbaa !37
  %i.eh = extractelement <4 x i32> %i.de, i64 3   ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = icmp eq i32 %.2131, 0
end_hunk_1
