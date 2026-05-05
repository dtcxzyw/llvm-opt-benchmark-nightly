inline.NumInlined: 116
inline.NumDeleted: 72
begin_hunk_0_@_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb:bb.a
  br i1 %.not.i.i, label %_ZL16format_to_bufferImLm128EEiT_RAT0__c.exit.i, label %bb.d, !llvm.loop !8

_ZL16format_to_bufferImLm128EEiT_RAT0__c.exit.i:  ; preds = %bb.d
  %lsr.iv.lcssa = phi i32 [ %lsr.iv, %bb.d ]
  %.lcssa = phi ptr [ %i.h, %bb.d ]
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %.lcssa to i64
end_hunk_0
begin_hunk_1_@_ZL14write_unsignedImEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb:bb.a
.lr.ph.i.i:                                       ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = sext i32 %lsr.iv.lcssa to i64
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = udiv i64 %i.ap, 3
  %i.ar = mul i64 %i.aq, -3
end_hunk_1
begin_hunk_2_@_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb:bb.a
  br i1 %.not.i.i, label %_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i, label %bb.d, !llvm.loop !18

_ZL16format_to_bufferIyLm128EEiT_RAT0__c.exit.i:  ; preds = %bb.d
  %lsr.iv.lcssa = phi i32 [ %lsr.iv, %bb.d ]
  %.lcssa = phi ptr [ %i.h, %bb.d ]
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %.lcssa to i64
end_hunk_2
begin_hunk_3_@_ZL14write_unsignedIyEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb:bb.a
.lr.ph.i.i:                                       ; preds = %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = sext i32 %lsr.iv.lcssa to i64
  %i.ap = add nsw i64 %i.ao, -1
  %i.aq = udiv i64 %i.ap, 3
  %i.ar = mul i64 %i.aq, -3
end_hunk_3
begin_hunk_4_@_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb:bb.a
  br i1 %.not.i, label %_ZL16format_to_bufferIjLm128EEiT_RAT0__c.exit, label %bb.b, !llvm.loop !31

_ZL16format_to_bufferIjLm128EEiT_RAT0__c.exit:    ; preds = %bb.b
  %lsr.iv.lcssa = phi i32 [ %lsr.iv, %bb.b ]
  %.lcssa = phi ptr [ %i.f, %bb.b ]
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %.lcssa to i64
end_hunk_4
begin_hunk_5_@_ZL19write_unsigned_implIjEvRN4llvh11raw_ostreamET_mNS0_12IntegerStyleEb:bb.a
.lr.ph.i:                                         ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = sext i32 %lsr.iv.lcssa to i64
  %i.an = add nsw i64 %i.am, -1
  %i.ao = udiv i64 %i.an, 3
  %i.ap = mul i64 %i.ao, -3
end_hunk_5
