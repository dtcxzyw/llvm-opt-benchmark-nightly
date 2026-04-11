inline.NumInlined: 5240
inline.NumDeleted: 882
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser7MpFixedILb0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.sink = phi i64 [ 8, %bb.l ], [ 4, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 4 uses
  %i.af = load ptr, ptr %2, align 8, !tbaa !108
  %i.ag = icmp ult ptr %i.ae, %i.af
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8TcParser7MpFixedILb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sink = phi i64 [ 8, %bb.r ], [ 4, %bb.s ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 %.sink ; 4 uses
  %i.bl = load ptr, ptr %2, align 8, !tbaa !108
  %i.bm = icmp ult ptr %i.bk, %i.bl
end_hunk_1
