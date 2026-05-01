inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0_@ReadCharMetrics:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.r = icmp ne i32 %1, 0
  %i.s = insertelement <2 x i32> poison, i32 %2, i64 0
  %9 = shufflevector <2 x i32> %i.s, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph193, %._crit_edge.thread
end_hunk_0
begin_hunk_1_@ReadCharMetrics:bb.a
  br i1 %.not148, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %10 = bitcast <4 x i32> %i.de to <8 x i16>
  %11 = extractelement <8 x i16> %10, i64 4
  %i.eg = getelementptr inbounds nuw [10 x i8], ptr %6, i64 %i.dw ; 3 uses
  %12 = getelementptr inbounds nuw i8, ptr %i.eg, i64 4
  store i16 %11, ptr %12, align 2, !tbaa !90
  %13 = trunc i32 %.2131 to i16
  %14 = getelementptr inbounds nuw i8, ptr %i.eg, i64 6
  store i16 %13, ptr %14, align 2, !tbaa !61
  %15 = shufflevector <4 x i32> %i.de, <4 x i32> poison, <2 x i32> <i32 0, i32 1>
  %16 = sub nsw <2 x i32> %15, %9
  %17 = trunc <2 x i32> %16 to <2 x i16>
  store <2 x i16> %17, ptr %i.eg, align 2, !tbaa !37
  %i.eh = extractelement <4 x i32> %i.de, i64 3   ; 2 uses
  %i.ei = icmp eq i32 %i.eh, 0
  %i.ej = icmp eq i32 %.2131, 0
end_hunk_1
