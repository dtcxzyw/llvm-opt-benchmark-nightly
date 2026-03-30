begin_hunk_0
  store i32 %2, ptr %i.l, align 8, !tbaa !121
  %i.m = call i32 @streamIteratorGetID(ptr noundef nonnull %4, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %bb.a, label %bb.b

bb.a:                                             ; preds = %streamIteratorStart.exit
  %. = select i1 %.not, <2 x i64> zeroinitializer, <2 x i64> splat (i64 -1)
  store <2 x i64> %., ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %streamIteratorStart.exit
  call void @raxStop(ptr noundef nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_0
begin_hunk_1
  br i1 %.not6.i, label %bb.bf, label %streamGetEdgeID.exit

bb.bf:                                            ; preds = %bb.be
  store <2 x i64> splat (i64 -1), ptr %i.gr, align 8
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.be, %bb.bf
end_hunk_1
begin_hunk_2
bb.a:
  %4 = alloca %struct.streamIterator, align 8     ; 12 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %5 = alloca %struct.streamID, align 16          ; 6 uses
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3
  br i1 %.not6.i, label %bb.d, label %streamGetEdgeID.exit

bb.d:                                             ; preds = %bb.c
  store <2 x i64> splat (i64 -1), ptr %5, align 16
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.c, %bb.d
end_hunk_3
begin_hunk_4
  br label %createObjectFromStreamID.exit

createObjectFromStreamID.exit:                    ; preds = %streamGetEdgeID.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.y = load i64, ptr %5, align 16, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ab = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.17, i64 noundef %i.y, i64 noundef %i.aa) #20
end_hunk_4
begin_hunk_5
  br i1 %.not6.i, label %bb.t, label %streamGetEdgeID.exit

bb.t:                                             ; preds = %bb.s
  store <2 x i64> splat (i64 -1), ptr %i.bw, align 8
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.s, %bb.t
end_hunk_5
