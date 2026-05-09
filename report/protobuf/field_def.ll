inline.NumInlined: 306
inline.NumDeleted: 92
begin_hunk_0_@_upb_FieldDef_Modifiers:bb.a
  %spec.select = select i1 %i.t, i64 0, i64 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %upb_FieldDef_IsPacked.exit, %_upb_FieldDef_IsPackable.exit.i, %bb.b, %bb.b, %bb.d
  %.0 = phi i64 [ %spec.select, %bb.d ], [ 1, %bb.b ], [ 1, %_upb_FieldDef_IsPackable.exit.i ], [ %i.l, %upb_FieldDef_IsPacked.exit ], [ 1, %bb.b ], [ 16, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !20   ; 2 uses
  %.not.i12 = icmp eq i32 %i.v, 14
end_hunk_0
begin_hunk_1_@upb_FieldDef_MiniDescriptorEncode:bb.a
  br label %.thread.i

.thread.i:                                        ; preds = %bb.d, %bb.c, %upb_FieldDef_IsPacked.exit.i, %_upb_FieldDef_IsPackable.exit.i.i, %bb.b, %bb.b
  %.0.i = phi i64 [ %spec.select.i, %bb.d ], [ 1, %bb.b ], [ 1, %_upb_FieldDef_IsPackable.exit.i.i ], [ %i.p, %upb_FieldDef_IsPacked.exit.i ], [ 1, %bb.b ], [ 16, %bb.c ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !20   ; 2 uses
  %.not.i12.i = icmp eq i32 %i.z, 14
end_hunk_1
