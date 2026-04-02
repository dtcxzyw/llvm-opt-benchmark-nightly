begin_hunk_0
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  store i32 0, ptr %i.d, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !99
end_hunk_0
begin_hunk_1

t1_load_keyword.exit.thread:                      ; preds = %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %.thread263

.thread.sink.split.i:                             ; preds = %bb.ay, %bb.aw, %bb.at, %bb.ar
end_hunk_1
