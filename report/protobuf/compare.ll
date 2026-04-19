inline.NumInlined: 39
inline.NumDeleted: 25
begin_hunk_0_@upb_Message_IsEqual:bb.a
  %5 = alloca %union.upb_MessageValue, align 8    ; 7 uses
  %6 = alloca %union.upb_MessageValue, align 8    ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i64, align 8                      ; 9 uses
  %i.d = alloca ptr, align 8                      ; 16 uses
  %i.e = alloca ptr, align 8                      ; 16 uses
  %7 = alloca %union.upb_MessageValue, align 8    ; 19 uses
  %8 = alloca %union.upb_MessageValue, align 8    ; 19 uses
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %bb.b, !prof !9

end_hunk_0
begin_hunk_1_@upb_Message_IsEqual:bb.a
  store i64 -1, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 -1, ptr %i.c, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
end_hunk_1
begin_hunk_2_@upb_Message_IsEqual:bb.a
  %i.g = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %7, ptr noundef nonnull %i.b) #4, !inline_history !10 ; 2 uses
  %i.h = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %8, ptr noundef nonnull %i.c) #4, !inline_history !10 ; 2 uses
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph121, label %.thread

.lr.ph121:                                        ; preds = %bb.b
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %.lr.ph226

.lr.ph226:                                        ; preds = %.lr.ph121, %.backedge.a
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.j, %i.k
end_hunk_2
begin_hunk_3_@upb_Message_IsEqual:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.ae, label %.backedge.a, label %_upb_Message_BaseFieldsAreEqual.exit

.backedge.sink.split:                             ; preds = %bb.af, %bb.h, %upb_MiniTableField_CType.exit, %upb_MessageValue_IsEqual.exit.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
end_hunk_3
begin_hunk_4_@upb_Message_IsEqual:bb.a
bb.z:                                             ; preds = %bb.r
  unreachable

upb_MessageValue_IsEqual.exit.i.thread.thread:    ; preds = %bb.v, %bb.u, %bb.y, %bb.x, %bb.t, %bb.s, %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

upb_MessageValue_IsEqual.exit.i.thread:           ; preds = %upb_MessageValue_IsEqual.exit.i.backedge, %upb_MiniTableField_CType.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
end_hunk_4
begin_hunk_5_@upb_Message_IsEqual:bb.a
  %.not.i46229 = icmp eq i64 %i.cq, 0
  br i1 %.not.i46229, label %_upb_Message_ExtensionsAreEqual.exit, label %.preheader.i

_upb_Message_BaseFieldsAreEqual.exit.sink.split:  ; preds = %bb.ae, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

_upb_Message_BaseFieldsAreEqual.exit:             ; preds = %bb.ab, %bb.ac, %bb.ad, %bb.ah, %bb.ag, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_upb_Message_ExtensionsAreEqual.exit.thread
end_hunk_5
begin_hunk_6_@upb_Message_IsEqual:bb.a
  %i.es = call fastcc zeroext i1 @_upb_Array_IsEqual(ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i32 noundef %i.eq, ptr noundef %i.ej, i32 noundef %3), !inline_history !36
  br i1 %i.es, label %.preheader.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.preheader.backedge:                              ; preds = %upb_MiniTableField_CType.exit41, %bb.bb, %bb.av, %bb.bc, %bb.bd, %bb.az, %bb.ay, %bb.ax
  %.val30.i = load i64, ptr %0, align 8, !tbaa !19
  %i.et = and i64 %.val30.i, -2                   ; 2 uses
  %.not.i46 = icmp eq i64 %i.et, 0
end_hunk_6
begin_hunk_7_@upb_Message_IsEqual:bb.a
  %i.fi = icmp eq i32 %i.fh, 0
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

_upb_Message_ExtensionsAreEqual.exit.thread:      ; preds = %bb.ba, %.loopexit, %bb.ay, %bb.az, %bb.bd, %bb.bc, %bb.av, %bb.ax, %_upb_Message_BaseFieldsAreEqual.exit, %upb_MessageValue_IsEqual.exit.i.thread.thread, %.thread.thread, %.thread, %_upb_Message_BaseFieldsAreEqual.exit.sink.split, %bb.bf, %_upb_Message_ExtensionsAreEqual.exit, %bb.a, %bb.bg
  %.0 = phi i1 [ true, %bb.a ], [ %i.fi, %bb.bg ], [ false, %_upb_Message_ExtensionsAreEqual.exit ], [ false, %_upb_Message_BaseFieldsAreEqual.exit ], [ true, %bb.bf ], [ false, %_upb_Message_BaseFieldsAreEqual.exit.sink.split ], [ false, %.thread ], [ false, %upb_MessageValue_IsEqual.exit.i.thread.thread ], [ false, %.thread.thread ], [ false, %bb.ax ], [ false, %bb.av ], [ false, %bb.bc ], [ false, %bb.bd ], [ false, %bb.az ], [ false, %bb.ay ], [ false, %.loopexit ], [ false, %bb.ba ]
  ret i1 %.0
}

end_hunk_7
