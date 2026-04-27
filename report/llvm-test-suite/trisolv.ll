inline.NumInlined: 12
inline.NumDeleted: 6
begin_hunk_0_@polybench_alloc_data:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #12
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
end_hunk_0
begin_hunk_1_@polybench_alloc_data:bb.a

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  ret ptr %i.e
}

end_hunk_1
begin_hunk_2_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 32000000) #12
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !10   ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i.i = select i1 %i.f, i1 true, i1 %i.g
end_hunk_2
begin_hunk_3_@main:bb.a

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.j = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 16000) #12
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10   ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  %i.m = icmp ne i32 %i.j, 0
  %or.cond.i.i12 = select i1 %i.l, i1 true, i1 %i.m
end_hunk_3
begin_hunk_4_@main:bb.a

polybench_alloc_data.exit13:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.p = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 16000) #12
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !10   ; 5 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = icmp ne i32 %i.p, 0
  %or.cond.i.i14 = select i1 %i.r, i1 true, i1 %i.s
end_hunk_4
begin_hunk_5_@main:bb.a

polybench_alloc_data.exit15:                      ; preds = %polybench_alloc_data.exit13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %polybench_alloc_data.exit15
end_hunk_5
