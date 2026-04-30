inline.NumInlined: 489
inline.NumDeleted: 183
begin_hunk_0_@_ZN8facebook5velox4util31fromTimestampWithTimezoneStringEPKcmNS1_18TimestampParseModeE:bb.a

bb.i:                                             ; preds = %bb.h, %bb.h
  %i.ac = icmp eq i8 %i.ab, 43
  %.not106.i = icmp ugt i64 %i.v, 1
  br i1 %.not106.i, label %bb.j, label %_ZN8facebook5velox6StatusD2Ev.exit71

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 1
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox4util31fromTimestampWithTimezoneStringEPKcmNS1_18TimestampParseModeE:bb.a
bb.k:                                             ; preds = %bb.j
  %i.ah = zext nneg i8 %i.ae to i32
  %i.ai = add nsw i32 %i.ah, -48                  ; 3 uses
  %.not139 = icmp eq i64 %i.v, 2
  br i1 %.not139, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 2
end_hunk_1
