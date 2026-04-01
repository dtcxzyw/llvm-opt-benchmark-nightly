begin_hunk_0
  br i1 %i.b, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2432), align 8, !tbaa !277 ; 3 uses
  %0 = tail call i32 @llvm.smax.i32(i32 %i.c, i32 33)
  %spec.select = lshr i32 %0, 1                   ; 4 uses
  %i.d = icmp sgt i32 %i.c, %spec.select
  %.pre9 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2424), align 8, !tbaa !279 ; 2 uses
  br i1 %i.d, label %.lr.ph, label %._crit_edge

end_hunk_0
begin_hunk_1
bb.f:                                             ; preds = %freePendingCommand.exit, %.lr.ph
  %i.ab = phi i32 [ %i.y, %freePendingCommand.exit ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.ac = phi ptr [ %i.x, %freePendingCommand.exit ], [ %i.e, %.lr.ph ] ; 2 uses
  %i.ad = icmp sgt i32 %i.ab, %spec.select
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !368

._crit_edge.loopexit:                             ; preds = %bb.f
end_hunk_1
begin_hunk_2
._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ae = phi ptr [ %i.ac, %._crit_edge.loopexit ], [ %.pre9, %bb.b ]
  %i.af = phi i32 [ %.pre8, %._crit_edge.loopexit ], [ %i.a, %bb.b ]
  store i32 %spec.select, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2436), align 4, !tbaa !278
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = tail call ptr @zrealloc(ptr noundef %i.ae, i64 noundef %i.ah) #35
  store ptr %i.ai, ptr getelementptr inbounds nuw (i8, ptr @server, i64 2424), align 8, !tbaa !279
end_hunk_2
begin_hunk_3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_3
