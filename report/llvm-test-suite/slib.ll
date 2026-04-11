inline.NumInlined: 693
inline.NumDeleted: 1
begin_hunk_0_@gc_mark:bb.a
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.017 = phi ptr [ %i.f, %bb.d ], [ %0, %bb.a ]  ; 6 uses
  %i.b = load i16, ptr %.017, align 8, !tbaa !54
  %.not = icmp eq i16 %i.b, 0
  br i1 %.not, label %bb.b, label %.loopexit
end_hunk_0
begin_hunk_1_@gc_mark:bb.a
  switch i16 %i.d, label %bb.e [
    i16 2, label %.loopexit
    i16 1, label %bb.c
    i16 3, label %bb.d
    i16 11, label %.backedge.a
    i16 4, label %.loopexit
    i16 5, label %.loopexit
    i16 6, label %.loopexit
end_hunk_1
begin_hunk_2_@gc_mark:bb.a
  ]

bb.c:                                             ; preds = %bb.b
  br label %.backedge.a

.backedge.a:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i64 [ 8, %bb.c ], [ 16, %bb.b ]
  %.pn.ph = phi i64 [ 16, %bb.c ], [ 8, %bb.b ]
  %1 = getelementptr inbounds nuw i8, ptr %.017, i64 %.sink
  %.0.be.a = load ptr, ptr %1, align 8, !tbaa !11
  tail call void @gc_mark(ptr noundef %.0.be.a)
  br label %bb.d

bb.d:                                             ; preds = %.backedge.a, %bb.b
  %.pn = phi i64 [ 16, %bb.b ], [ %.pn.ph, %.backedge.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %.017, i64 %.pn
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11   ; 2 uses
  %2 = icmp eq ptr %i.f, null
  br i1 %2, label %.loopexit, label %.lr.ph

bb.e:                                             ; preds = %bb.b
  %i.g = sext i16 %i.d to i64
end_hunk_2
begin_hunk_3_@gc_mark:bb.a
  %i.p = tail call ptr %i.n(ptr noundef nonnull %.017) #33 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.lr.ph, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.a, %bb.i, %get_user_type_hooks.exit
  ret void
}

end_hunk_3
