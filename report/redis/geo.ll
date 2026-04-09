inline.NumInlined: 21
inline.NumDeleted: 2
begin_hunk_0_@geoaddCommand:bb.a

.lr.ph107:                                        ; preds = %.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ah = zext i32 %.066.lcssa133138 to i64       ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %2 = add nuw nsw i32 %.066.lcssa133138, 1
  %3 = zext i32 %2 to i64
  %wide.trip.count121 = zext nneg i32 %i.x to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ah
  %invariant.gep145 = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %3
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph105, %bb.g
end_hunk_0
begin_hunk_1_@geoaddCommand:bb.a
  %i.bn = call ptr @createStringObjectFromLongLongWithSds(i64 noundef %i.bm) #14
  %i.bo = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.aq
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.ah
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31 ; 2 uses
  %i.bt = shl nuw nsw i64 %indvars.iv118, 1       ; 2 uses
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %i.bt
  store ptr %i.bn, ptr %gep, align 8, !tbaa !31
  %gep146 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep145, i64 %i.bt
  store ptr %i.bs, ptr %gep146, align 8, !tbaa !31
  call void @incrRefCount(ptr noundef %i.bs) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
end_hunk_1
