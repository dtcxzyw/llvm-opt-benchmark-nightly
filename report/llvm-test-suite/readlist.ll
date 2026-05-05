begin_hunk_0_@ReadList:bb.a
  br label %bb.d, !llvm.loop !18

bb.j:                                             ; preds = %bb.d
  %.023.lcssa69 = phi i32 [ %.023, %bb.d ]        ; 4 uses
  %i.p = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #6 ; 3 uses
  store i32 %.023.lcssa69, ptr %i.p, align 8, !tbaa !19
end_hunk_0
begin_hunk_1_@ReadList:bb.a

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %scevgep = getelementptr i8, ptr %i.s, i64 12   ; 4 uses
  %i.v = lshr i64 %lsr.iv, 2
  %i.w = trunc i64 %i.v to i29
  %i.x = zext i29 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
end_hunk_1
begin_hunk_2_@ReadList:bb.a
  call void @llvm.assume(i1 %lcmp.mod60)
  %i.al = shl i64 %indvars.iv.epil.init, 2
  %scevgep78 = getelementptr nuw i8, ptr %i.s, i64 %i.al
  %i.am = zext i2 %lsr.iv80 to i64
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
end_hunk_2
