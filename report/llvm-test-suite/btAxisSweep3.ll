inline.NumInlined: 230
inline.NumDeleted: 61
begin_hunk_0_@_ZN20btAxisSweep3InternalItE7rayTestERK9btVector3S3_R23btBroadphaseRayCallbackS3_S3_:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %6 = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %7 = load i16, ptr %6, align 4, !tbaa !41       ; 2 uses
  %.not1315 = icmp eq i16 %7, 0
  br i1 %.not1315, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.c
end_hunk_0
begin_hunk_1_@_ZN20btAxisSweep3InternalItE7rayTestERK9btVector3S3_R23btBroadphaseRayCallbackS3_S3_:bb.a
  br label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %8 = phi i16 [ %7, %.lr.ph ], [ %9, %bb.e ]
  %.016 = phi i16 [ 1, %.lr.ph ], [ %i.v, %bb.e ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !50
  %i.i = zext i16 %.016 to i64
end_hunk_1
begin_hunk_2_@_ZN20btAxisSweep3InternalItE7rayTestERK9btVector3S3_R23btBroadphaseRayCallbackS3_S3_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef %i.q) ; 0 uses
  %.pre = load i16, ptr %6, align 4, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %9 = phi i16 [ %8, %bb.c ], [ %.pre, %bb.d ]    ; 2 uses
  %i.v = add i16 %.016, 1                         ; 2 uses
  %i.w = zext i16 %i.v to i32
  %i.x = zext i16 %9 to i32
  %i.y = shl nuw nsw i32 %i.x, 1
  %.not13 = icmp samesign ult i32 %i.y, %i.w
  br i1 %.not13, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %bb.e, %.preheader, %bb.b
  ret void
}

end_hunk_2
