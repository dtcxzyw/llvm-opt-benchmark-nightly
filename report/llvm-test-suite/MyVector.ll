begin_hunk_0_@_ZN17CBaseRecordVector12ClearAndFreeEv:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef %i.b), !inline_history !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 2 uses
  %i.h = icmp eq ptr %i.g, null
end_hunk_0
begin_hunk_1_@_ZN17CBaseRecordVectorD0Ev:bb.a
  br i1 %i.f, label %_ZN17CBaseRecordVectorD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN17CBaseRecordVector6DeleteEii.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #9, !inline_history !16
  br label %_ZN17CBaseRecordVectorD2Ev.exit

_ZN17CBaseRecordVectorD2Ev.exit:                  ; preds = %_ZN17CBaseRecordVector6DeleteEii.exit.i, %bb.c
end_hunk_1
begin_hunk_2_@_ZN17CBaseRecordVector5ClearEv:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef 0, i32 noundef %i.b), !inline_history !17
  ret void
}

end_hunk_2
begin_hunk_3_@_ZN17CBaseRecordVector18ReserveOnePositionEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

end_hunk_3
begin_hunk_4_@_ZN17CBaseRecordVector7ReserveEi
define dso_local void @_ZN17CBaseRecordVector7ReserveEi(ptr noundef nonnull align 8 captures(none) dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !18
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.k, label %bb.b

end_hunk_4
begin_hunk_5_@_ZN17CBaseRecordVector7ReserveEi:bb.a
bb.d:                                             ; preds = %bb.b
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !19   ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.h, i64 %i.f) ; 2 uses
  %mul.val = extractvalue { i64, i1 } %mul, 0     ; 2 uses
  %mul.ov = extractvalue { i64, i1 } %mul, 1
end_hunk_5
begin_hunk_6_@_ZN17CBaseRecordVector7ReserveEi:bb.a

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr %.0, ptr %i.s, align 8, !tbaa !14
  store i32 %1, ptr %i.a, align 8, !tbaa !18
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
end_hunk_6
begin_hunk_7_@_ZN17CBaseRecordVector9MoveItemsEii:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.f = mul i64 %i.e, %i.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.f
  %i.h = sext i32 %2 to i64
end_hunk_7
begin_hunk_8_@_ZN17CBaseRecordVector13InsertOneItemEi:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !10   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %.not.i = icmp eq i32 %i.b, %i.d
  br i1 %.not.i, label %bb.b, label %_ZN17CBaseRecordVector18ReserveOnePositionEv.exit

end_hunk_8
begin_hunk_9_@_ZN17CBaseRecordVector13InsertOneItemEi:bb.a
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14   ; 2 uses
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19   ; 3 uses
  %i.o = mul i64 %i.n, %i.l
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.o
  %i.q = sext i32 %1 to i64
end_hunk_9
begin_hunk_10_@_ZN17CBaseRecordVector6DeleteEii:_ZNK17CBaseRecordVector22TestIndexAndCorrectNumEiRi.exit
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !14   ; 2 uses
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i64, ptr %i.k, align 8, !tbaa !19   ; 3 uses
  %i.m = mul i64 %i.l, %i.j
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.m
  %i.o = sext i32 %i.g to i64
end_hunk_10
begin_hunk_11_@llvm.smin.i32
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!11, !12, i64 16}
!15 = !{ptr @_ZN17CBaseRecordVector5ClearEv, ptr @_ZN17CBaseRecordVector10DeleteFromEi}
!16 = !{ptr @_ZN17CBaseRecordVectorD2Ev}
!17 = !{ptr @_ZN17CBaseRecordVector10DeleteFromEi}
!18 = !{!11, !5, i64 8}
!19 = !{!11, !13, i64 24}
end_hunk_11
