inline.NumInlined: 2688
inline.NumDeleted: 1028
begin_hunk_0_@_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2.i = phi i32 [ 4, %bb.bw ], [ 3, %bb.bv ]    ; 5 uses
  %19 = zext nneg i32 %.2.i to i64
  %i.os = getelementptr inbounds nuw i8, ptr %.0395, i64 %19 ; 2 uses
  br i1 %i.dr, label %bb.bz, label %bb.by, !prof !62

bb.by:                                            ; preds = %bb.bx
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions17DateTimeFormatter6formatERKNS0_9TimestampEPKNS0_2tz8TimeZoneEjPcbRKSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE:bb.a
  %.sink463 = phi i8 [ 48, %bb.bx ], [ %.465.a, %bb.by ]
  %.sink.i = phi i8 [ 48, %bb.bx ], [ %.466, %bb.by ]
  store i8 %.sink463, ptr %i.os, align 1, !tbaa !13
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 1
  store i8 %.sink.i, ptr %i.ot, align 1, !tbaa !13
  %.3.i = add nuw nsw i32 %.2.i, 2                ; 2 uses
  br i1 %.not.i, label %_ZN8facebook5velox9functions12_GLOBAL__N_120appendTimezoneOffsetElPcb.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bz
  %20 = zext nneg i32 %.3.i to i64
  %i.ou = getelementptr inbounds nuw i8, ptr %.0395, i64 %20
  store i8 58, ptr %i.ou, align 1, !tbaa !13
  %21 = zext nneg i32 %.2.i to i64
  %i.ov = getelementptr inbounds nuw i8, ptr %.0395, i64 %21
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 3
  store i8 %.464, ptr %i.ow, align 1, !tbaa !13
  %i.ox = add nuw nsw i32 %.2.i, 5
  %22 = zext nneg i32 %.2.i to i64
  %23 = getelementptr inbounds nuw i8, ptr %.0395, i64 %22
  %i.oy = getelementptr inbounds nuw i8, ptr %23, i64 4
  store i8 %i.gr, ptr %i.oy, align 1, !tbaa !13
  br label %_ZN8facebook5velox9functions12_GLOBAL__N_120appendTimezoneOffsetElPcb.exit

_ZN8facebook5velox9functions12_GLOBAL__N_120appendTimezoneOffsetElPcb.exit: ; preds = %bb.bz, %.sink.split.i
  %.4.i = phi i32 [ %.3.i, %bb.bz ], [ %i.ox, %.sink.split.i ]
  %i.oz = zext nneg i32 %.4.i to i64
  %i.pa = getelementptr inbounds nuw i8, ptr %.0395, i64 %i.oz
  br label %bb.cf
end_hunk_1
