inline.NumInlined: 302
inline.NumDeleted: 51
begin_hunk_0_@_addReplyPayloadToList:bb.a
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %5 = trunc nuw i8 %4 to i1
  br label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !160  ; 8 uses
  %6 = trunc nuw i8 %4 to i1                      ; 3 uses
  %.not62 = icmp eq ptr %i.e, null
  br i1 %.not62, label %bb.h, label %bb.c

end_hunk_0
begin_hunk_1_@_addReplyPayloadToList:bb.a
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  br i1 %6, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i64, ptr %i.e, align 8, !tbaa !20
end_hunk_1
begin_hunk_2_@_addReplyPayloadToList:bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %.thread, %bb.f, %bb.g, %bb.e, %bb.b
  %.not6875 = phi i1 [ %6, %bb.b ], [ false, %bb.f ], [ true, %bb.e ], [ %5, %.thread ], [ false, %bb.g ], [ %6, %bb.d ]
  %.158 = phi i64 [ %3, %bb.b ], [ %3, %bb.f ], [ %3, %bb.e ], [ %3, %.thread ], [ %i.aa, %bb.g ], [ %3, %bb.d ] ; 7 uses
  %.1 = phi ptr [ %2, %bb.b ], [ %2, %bb.f ], [ %2, %bb.e ], [ %2, %.thread ], [ %i.z, %bb.g ], [ %2, %bb.d ] ; 2 uses
  %.not67 = icmp eq i64 %.158, 0
end_hunk_2
begin_hunk_3_@_addReplyPayloadToList:bb.a
bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.ab = add i64 %.158, 9                        ; 3 uses
  %i.ac = select i1 %.not6875, i64 %i.ab, i64 %.158
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 16384)
  %i.ae = add i64 %i.ad, 24
  %i.af = call ptr @zmalloc_usable(i64 noundef %i.ae, ptr noundef nonnull %i.a) #30 ; 9 uses
end_hunk_3
begin_hunk_4_@_addReplyPayloadToList:bb.a
  store i64 0, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store i8 %4, ptr %i.aj, align 8, !tbaa !17
  %.not68 = icmp eq i8 %4, 0
  br i1 %.not68, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = icmp ugt i64 %i.ab, %i.ah
end_hunk_4
begin_hunk_5_@_addReplyPayloadToList:bb.a
tryAddPayload.exit72:                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  store i8 1, ptr %i.am, align 1, !tbaa !156
  store i64 %.158, ptr %i.al, align 1, !tbaa !158
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.an, ptr readonly align 1 %.1, i64 %.158, i1 false)
end_hunk_5
begin_hunk_6_@clientCommand:bb.a
  br label %.critedge

.loopexit.loopexit:                               ; preds = %getClientTypeByName.exit631.thread
  %3 = trunc nuw i32 %.1468 to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.ba
end_hunk_6
