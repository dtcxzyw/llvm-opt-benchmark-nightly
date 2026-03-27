begin_hunk_0
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i16, ptr %i.j, align 4, !tbaa !16   ; 2 uses
  %i.l = load i32, ptr %i.e, align 4, !tbaa !9
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.o = load i16, ptr %i.n, align 4, !tbaa !16   ; 2 uses
  %i.p = add nsw i64 %i.i, -11
  %i.q = add nsw i64 %i.p, %i.m                   ; 3 uses
  %i.r = icmp ult i64 %i.q, 4294967295
  br i1 %i.r, label %bb.f, label %bb.e, !prof !18

bb.e:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1
  %i.u = zext i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !9
  %i.x = tail call ptr @zrealloc(ptr noundef nonnull %., i64 noundef %i.q) #21 ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.i
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -1 ; 2 uses
  %i.aa = add nsw i64 %i.m, -10                   ; 2 uses
end_hunk_1
begin_hunk_2
.sink.split:                                      ; preds = %bb.h, %bb.g
  %.88 = phi ptr [ %1, %bb.h ], [ %0, %bb.g ]
  %.87 = phi ptr [ %0, %bb.h ], [ %1, %bb.g ]     ; 2 uses
  %i.ae = trunc nuw i64 %i.q to i32
  store i32 %i.ae, ptr %i.x, align 4, !tbaa !9
  %2 = tail call i16 @llvm.uadd.sat.i16(i16 %i.k, i16 %i.o)
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i16 %2, ptr %i.af, align 4, !tbaa !16
  %i.ag = add i32 %i.h, -11
  %i.ah = add i32 %i.ag, %i.w
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 4
end_hunk_2
begin_hunk_3
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.uadd.sat.i16(i16, i16) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16
end_hunk_3
