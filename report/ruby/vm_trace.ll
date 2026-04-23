inline.NumInlined: 332
inline.NumDeleted: 99
begin_hunk_0_@rb_postponed_job_flush:bb.a

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.050 = phi i32 [ %i.bb, %.lr.ph ], [ %i.z, %bb.d ] ; 3 uses
  %i.ay = call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %.050, i1 true) ; 2 uses
  %i.az = xor i32 %i.ay, 31
  %i.ba = zext nneg i32 %i.az to i64
  %3 = lshr exact i32 -2147483648, %i.ay          ; 2 uses
  %i.bb = xor i32 %3, %.050
  %i.bc = getelementptr [16 x i8], ptr %i.i, i64 %i.ba ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !200
end_hunk_0
