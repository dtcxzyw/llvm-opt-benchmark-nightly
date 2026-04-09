inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@geoaddCommand:bb.a

.lr.ph107:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = zext nneg i32 %.066.lcssa133138 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = sext i32 %.066.lcssa133138 to i64          ; 2 uses
  %wide.trip.count121 = zext nneg i32 %i.x to i64
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph105, %bb.g
end_hunk_0
begin_hunk_1_@geoaddCommand:bb.a
  %i.bn = call ptr @createStringObjectFromLongLongWithSds(i64 noundef %i.bm) #14
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.aq
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %2
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %i.bt = shl nuw nsw i64 %indvars.iv118, 1
  %3 = add nuw nsw i64 %i.bt, %2                  ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %3
  store ptr %i.bn, ptr %gep, align 8, !tbaa !31
  %4 = shl i64 %3, 32
  %sext = add i64 %4, 4294967296
  %5 = ashr exact i64 %sext, 29
  %6 = getelementptr inbounds i8, ptr %i.ac, i64 %5
  store ptr %i.bs, ptr %6, align 8, !tbaa !31
  call void @incrRefCount(ptr noundef %i.bs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
end_hunk_1
