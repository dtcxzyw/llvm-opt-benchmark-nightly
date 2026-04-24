inline.NumInlined: 2688
inline.NumDeleted: 1028
begin_hunk_0_@_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2.i = phi i64 [ 4, %bb.bw ], [ 3, %bb.bv ]    ; 2 uses
  %.3.i = phi i64 [ 6, %bb.bw ], [ 5, %bb.bv ]    ; 2 uses
  %19 = phi i32 [ 6, %bb.bw ], [ 5, %bb.bv ]      ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.0395, i64 %.2.i
  br i1 %i.dr, label %bb.bz, label %bb.by, !prof !62

bb.by:                                            ; preds = %bb.bx
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  %.sink463 = phi i8 [ 48, %bb.bx ], [ %.465.a, %bb.by ]
  %.sink.i = phi i8 [ 48, %bb.bx ], [ %.466, %bb.by ]
  store i8 %.sink463, ptr %i.os, align 1, !tbaa !13
  %i.ot = getelementptr inbounds nuw i8, ptr %.0395, i64 %.2.i
  %20 = getelementptr inbounds nuw i8, ptr %i.ot, i64 1
  store i8 %.sink.i, ptr %20, align 1, !tbaa !13
  br i1 %.not.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_120appendTimezoneOffsetElPcb.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bz
  %i.ou = getelementptr inbounds nuw i8, ptr %.0395, i64 %.3.i ; 2 uses
  store i8 58, ptr %i.ou, align 1, !tbaa !13
  %i.ov = getelementptr inbounds nuw i8, ptr %.0395, i64 %.3.i
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1
  store i8 %.464, ptr %i.ow, align 1, !tbaa !13
  %i.ox = add nuw nsw i32 %19, 3
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i8 %i.gr, ptr %i.oy, align 1, !tbaa !13
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_120appendTimezoneOffsetElPcb.exit

_ZN8facebook5velox9functions12_GLOBAL__N_120appendTimezoneOffsetElPcb.exit: ; preds = %bb.bz, %.sink.split.i
  %.4.i = phi i32 [ %19, %bb.bz ], [ %i.ox, %.sink.split.i ]
  %i.oz = zext nneg i32 %.4.i to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %.0395, i64 %i.oz
  br label %bb.cf
end_hunk_1
