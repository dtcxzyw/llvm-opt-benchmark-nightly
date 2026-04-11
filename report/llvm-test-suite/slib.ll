inline.NumInlined: 693
inline.NumDeleted: 1
begin_hunk_0_@gc_mark:bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.backedge.a
  %.017 = phi ptr [ %.0.be.a, %.backedge.a ], [ %0, %bb.a ] ; 9 uses
  %i.b = load i16, ptr %.017, align 8, !tbaa !54
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit
end_hunk_0
begin_hunk_1_@gc_mark:bb.a
  switch i16 %i.d, label %bb.e [
    i16 2, label %.loopexit
    i16 1, label %bb.c
    i16 3, label %5
    i16 11, label %bb.d
    i16 4, label %.loopexit
    i16 5, label %.loopexit
    i16 6, label %.loopexit
end_hunk_1
begin_hunk_2_@gc_mark:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  %1 = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %2 = load ptr, ptr %1, align 8, !tbaa !11
  tail call void @gc_mark(ptr noundef %2)
  %3 = getelementptr inbounds nuw i8, ptr %.017, i64 16
  br label %.backedge.a

.backedge.a:                                      ; preds = %bb.c, %5, %bb.d
  %.0.be.in = phi ptr [ %3, %bb.c ], [ %6, %5 ], [ %7, %bb.d ]
  %.0.be.a = load ptr, ptr %.0.be.in, align 8, !tbaa !11 ; 2 uses
  %4 = icmp eq ptr %.0.be.a, null
  br i1 %4, label %.loopexit, label %.lr.ph

5:                                                ; preds = %bb.b
  %6 = getelementptr inbounds nuw i8, ptr %.017, i64 16
  br label %.backedge.a

bb.d:                                             ; preds = %bb.b
  %7 = getelementptr inbounds nuw i8, ptr %.017, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.017, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  tail call void @gc_mark(ptr noundef %i.f)
  br label %.backedge.a

bb.e:                                             ; preds = %bb.b
  %i.g = sext i16 %i.d to i64
end_hunk_2
begin_hunk_3_@gc_mark:bb.a
  %i.p = tail call ptr %i.n(ptr noundef nonnull %.017) #33 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.backedge.a, %.lr.ph, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a, %bb.i, %get_user_type_hooks.exit
  ret void
}

end_hunk_3
