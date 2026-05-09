inline.NumInlined: 27
inline.NumDeleted: 9
begin_hunk_0_@utrie_serialize_78:bb.a
  br i1 %i.hu, label %bb.bc, label %.loopexit

bb.bc:                                            ; preds = %_ZL10utrie_foldP8UNewTriePFjS0_iiEP10UErrorCode.exit, %bb.f
  %.not87 = icmp eq i8 %4, 0                      ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 139412
  %i.hw = load i32, ptr %i.hv, align 4            ; 2 uses
  br i1 %.not87, label %bb.be, label %bb.bd
end_hunk_0
begin_hunk_1_@utrie_serialize_78:bb.a
  %i.ik = getelementptr i8, ptr %1, i64 16        ; 13 uses
  store i32 1416784229, ptr %1, align 4
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %spec.select = select i1 %.not87, i32 293, i32 37 ; 2 uses
  store i32 %spec.select, ptr %i.il, align 4
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 139418
  %i.in = load i8, ptr %i.im, align 2
end_hunk_1
begin_hunk_2_@utrie_serialize_78:bb.a
  br i1 %.not88, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %6 = or disjoint i32 %spec.select, 512
  store i32 %6, ptr %i.il, align 4
  br label %bb.bj

end_hunk_2
begin_hunk_3_@utrie_unserialize_78:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 -1, 5376) i32 @utrie_unserializeDummy_78(ptr noundef captures(none) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i8 noundef signext %5, ptr noundef captures(address_is_null) %6) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %6, null
  br i1 %i.a, label %bb.g, label %bb.b
end_hunk_3
begin_hunk_4_@utrie_unserializeDummy_78:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store i32 2080, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.not97.not = icmp eq i32 %4, %3                ; 5 uses
  %spec.select = select i1 %.not97.not, i32 256, i32 288 ; 3 uses
  store i32 %spec.select, ptr %i.e, align 4
  %.not98 = icmp eq i8 %5, 0
  br i1 %.not98, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %7 = shl nuw nsw i32 %spec.select, 2
  %8 = or disjoint i32 %7, 4160                   ; 4 uses
  %i.f = icmp slt i32 %2, %8
  br i1 %i.f, label %bb.e, label %bb.f

.thread:                                          ; preds = %bb.c
  %9 = shl nuw nsw i32 %spec.select, 1
  %10 = add nuw nsw i32 %9, 4160                  ; 4 uses
  %i.g = icmp slt i32 %2, %10
  br i1 %i.g, label %bb.e, label %vector.ph

bb.e:                                             ; preds = %.thread, %bb.d
  %.093101 = phi i32 [ %10, %.thread ], [ %8, %bb.d ]
  store i32 15, ptr %6, align 4
  br label %bb.g

end_hunk_4
begin_hunk_5_@utrie_unserializeDummy_78:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph119.preheader, %.loopexit107, %.loopexit111
  %.093100104 = phi i32 [ %8, %.loopexit107 ], [ %8, %.lr.ph119.preheader ], [ %10, %.loopexit111 ], [ %10, %.lr.ph ]
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr @utrie_defaultGetFoldingOffset_78, ptr %i.ey, align 8
  br label %bb.g
end_hunk_5
