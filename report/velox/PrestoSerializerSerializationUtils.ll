inline.NumInlined: 33059
inline.NumDeleted: 6234
begin_hunk_0_@_ZN8facebook5velox19NonPODAlignedBufferISt10shared_ptrIvEE13fillNewMemoryIS3_EEvmmRKSt8optionalIT_E:bb.a

bb.q:                                             ; preds = %bb.m
  %i.ag = lshr exact i64 %2, 4                    ; 2 uses
  %12 = trunc i64 %i.ag to i32                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !734
  %i.aj = and i8 %i.ai, 2
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox19NonPODAlignedBufferISt10shared_ptrIvEE13fillNewMemoryIS3_EEvmmRKSt8optionalIT_E:bb.a
  unreachable

_ZNK8facebook5velox6Buffer9asMutableISt10shared_ptrIvEEEPT_v.exit: ; preds = %bb.q
  %i.ak = lshr exact i64 %1, 4                    ; 2 uses
  %i.al = trunc i64 %i.ak to i32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_1
begin_hunk_2_@_ZN8facebook5velox19NonPODAlignedBufferISt10shared_ptrIvEE13fillNewMemoryIS3_EEvmmRKSt8optionalIT_E:bb.a
.lr.ph57:                                         ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %sext79 = shl i64 %1, 28
  %wide.trip.count = ashr exact i64 %sext79, 32
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph57, %_ZNSt10shared_ptrIvEC2ERKS0_.exit
  %indvars.iv = phi i64 [ %wide.trip.count, %.lr.ph57 ], [ %indvars.iv.next, %_ZNSt10shared_ptrIvEC2ERKS0_.exit ] ; 2 uses
  %i.az = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv
  %i.ba = load ptr, ptr %i.ay, align 8, !tbaa !130 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %3, align 8, !tbaa !352
end_hunk_2
begin_hunk_3_@_ZN8facebook5velox19NonPODAlignedBufferISt10shared_ptrIvEE13fillNewMemoryIS3_EEvmmRKSt8optionalIT_E:bb.a

_ZNSt10shared_ptrIvEC2ERKS0_.exit:                ; preds = %bb.s, %bb.u, %bb.v
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %lftr.wideiv, %12
  br i1 %exitcond.not, label %.loopexit, label %bb.s, !llvm.loop !2486

.loopexit:                                        ; preds = %_ZNSt10shared_ptrIvEC2ERKS0_.exit, %.lr.ph.preheader, %.preheader53, %.preheader
end_hunk_3
