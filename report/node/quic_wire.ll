inline.NumInlined: 166
inline.NumDeleted: 33
begin_hunk_0_@ossl_quic_wire_decode_frame_new_token:bb.a
bb.d:                                             ; preds = %bb.c
  %i.v = tail call i64 @ossl_quic_vlint_decode_unchecked(ptr noundef nonnull %i.l) #11 ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.t ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !57
  %i.y = load i64, ptr %i.a, align 8, !tbaa !55
  %i.z = sub i64 %i.y, %i.t
end_hunk_0
begin_hunk_1_@ossl_quic_wire_decode_frame_new_token:bb.a
  br i1 %i.aa, label %expect_frame_header.exit.thread, label %PACKET_forward.exit

PACKET_forward.exit:                              ; preds = %bb.d
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  store ptr %i.ab, ptr %0, align 8, !tbaa !57
  %i.ac = sub nuw i64 %.val.i, %i.v
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !55
end_hunk_1
