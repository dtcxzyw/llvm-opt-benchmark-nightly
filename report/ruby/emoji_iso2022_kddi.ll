begin_hunk_0_@fun_so_iso2022jp_kddi_encoder:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !tbaa !10
  %i.c = icmp eq i8 %i.b, -112                    ; 2 uses
  %. = select i1 %i.c, i8 1, i8 2
  %..a = select i1 %i.c, i32 1, i32 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.a ], [ %., %bb.b ]
  %.0.a = phi i32 [ 0, %bb.a ], [ %..a, %bb.b ]   ; 2 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !10
  %i.e = zext i8 %i.d to i32
  %.not = icmp eq i32 %.0.a, %i.e
end_hunk_0
begin_hunk_1_@fun_so_iso2022jp_kddi_encoder:bb.a
  store i8 %.sink25, ptr %i.f, align 1, !tbaa !10
  store i8 %.sink, ptr %i.g, align 1, !tbaa !10
  %.024 = getelementptr inbounds nuw i8, ptr %3, i64 3
  store i8 %.0, ptr %0, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
end_hunk_1
