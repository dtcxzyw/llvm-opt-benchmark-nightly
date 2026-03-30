begin_hunk_0
  store i32 %2, ptr %i.l, align 8, !tbaa !121
  %i.m = call i32 @streamIteratorGetID(ptr noundef nonnull %4, ptr noundef %3, ptr noundef nonnull %i.a)
  %.not6 = icmp eq i32 %i.m, 0
  br i1 %.not6, label %5, label %bb.b

5:                                                ; preds = %streamIteratorStart.exit
  br i1 %.not, label %bb.a, label %6

6:                                                ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  br label %bb.b

bb.a:                                             ; preds = %5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %6, %bb.a, %streamIteratorStart.exit
  call void @raxStop(ptr noundef nonnull %i.g) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
end_hunk_0
begin_hunk_1
  br i1 %.not6.i, label %bb.bf, label %streamGetEdgeID.exit

bb.bf:                                            ; preds = %bb.be
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, i8 -1, i64 16, i1 false)
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.be, %bb.bf
end_hunk_1
begin_hunk_2
bb.a:
  %4 = alloca %struct.streamIterator, align 8     ; 12 uses
  %i.a = alloca i64, align 8                      ; 3 uses
  %5 = alloca %struct.streamID, align 8           ; 6 uses
  %i.b = icmp eq i32 %2, 1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_2
begin_hunk_3
  br i1 %.not6.i, label %bb.d, label %streamGetEdgeID.exit

bb.d:                                             ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.c, %bb.d
end_hunk_3
begin_hunk_4
  br label %createObjectFromStreamID.exit

createObjectFromStreamID.exit:                    ; preds = %streamGetEdgeID.exit, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i
  %i.y = load i64, ptr %5, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !49
  %i.ab = call ptr (ptr, ptr, ...) @sdscatfmt(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.17, i64 noundef %i.y, i64 noundef %i.aa) #20
end_hunk_4
begin_hunk_5
  br i1 %.not6.i, label %bb.t, label %streamGetEdgeID.exit

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, i8 -1, i64 16, i1 false)
  br label %streamGetEdgeID.exit

streamGetEdgeID.exit:                             ; preds = %bb.s, %bb.t
end_hunk_5
