inline.NumInlined: 633
inline.NumDeleted: 278
begin_hunk_0_@_ZN2v88internal11LoadHandler15LoadNonExistentEPNS0_7IsolateENS0_12DirectHandleINS0_3MapEEE:bb.a
  br label %_ZN2v88internal28TorqueGeneratedPrototypeInfoINS0_13PrototypeInfoENS0_6StructEE18set_cached_handlerEiNS0_6TaggedINS0_5UnionIJNS0_11LoadHandlerENS0_3SmiEEEEEENS0_16WriteBarrierModeE.exit

bb.h:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_118GetHandlerDataSizeINS0_11LoadHandlerEEEiPNS0_7IsolateEPNS0_6TaggedINS0_3SmiEEENS0_12DirectHandleINS0_3MapEEENS0_23MaybeObjectDirectHandleESD_.exit
  %.not = icmp samesign ult i64 %.sroa.072.0, 68719476736 ; 2 uses
  %.not45 = icmp samesign ugt i64 %.sroa.072.0, 133143986176 ; 2 uses
  %.46 = select i1 %.not45, i32 1, i32 -1
  %i.ac = add nsw i64 %.sroa.072.0, -133143986177
  %i.ad = icmp ult i64 %i.ac, -64424509441
  %.0 = select i1 %.not, i32 0, i32 %.46          ; 2 uses
  br i1 %i.ad, label %bb.i, label %.critedge48

bb.i:                                             ; preds = %bb.h
  %.sroa.0.0.copyload.i49 = load ptr, ptr %2, align 8
  %i.ae = load i64, ptr %.sroa.0.0.copyload.i49, align 8
  %4 = select i1 %.not45, i64 63, i64 47
  %5 = select i1 %.not, i64 55, i64 %4
  %i.af = add i64 %i.ae, %5
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load i64, ptr %i.ag, align 8            ; 2 uses
end_hunk_0
