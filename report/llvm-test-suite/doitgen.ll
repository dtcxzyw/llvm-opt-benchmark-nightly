inline.NumInlined: 15
inline.NumDeleted: 6
begin_hunk_0_@polybench_alloc_data:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.d = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef %i.c) #14
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !10   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp ne i32 %i.d, 0
  %or.cond.i = select i1 %i.f, i1 true, i1 %i.g
end_hunk_0
begin_hunk_1_@polybench_alloc_data:bb.a

xmalloc.exit:                                     ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  ret ptr %i.e
}

end_hunk_1
begin_hunk_2_@main:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  store ptr null, ptr %i.d, align 8, !tbaa !10
  %i.e = call i32 @posix_memalign(ptr noundef nonnull %i.d, i64 noundef 4096, i64 noundef 26880000) #14
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !10   ; 7 uses
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp ne i32 %i.e, 0
end_hunk_2
begin_hunk_3_@main:bb.a

polybench_alloc_data.exit:                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.f) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store ptr null, ptr %i.c, align 8, !tbaa !10
  %i.l = call i32 @posix_memalign(ptr noundef nonnull %i.c, i64 noundef 4096, i64 noundef 26880000) #14
  %i.m = load ptr, ptr %i.c, align 8, !tbaa !10   ; 8 uses
  %i.n = ptrtoaddr ptr %i.m to i64                ; 2 uses
  %i.o = icmp eq ptr %i.m, null
  %i.p = icmp ne i32 %i.l, 0
end_hunk_3
begin_hunk_4_@main:bb.a

polybench_alloc_data.exit32:                      ; preds = %polybench_alloc_data.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store ptr null, ptr %i.b, align 8, !tbaa !10
  %i.s = call i32 @posix_memalign(ptr noundef nonnull %i.b, i64 noundef 4096, i64 noundef 1280) #14
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !10   ; 176 uses
  %i.u = ptrtoaddr ptr %i.t to i64                ; 2 uses
  %i.v = icmp eq ptr %i.t, null
  %i.w = icmp ne i32 %i.s, 0
end_hunk_4
begin_hunk_5_@main:bb.a

polybench_alloc_data.exit34:                      ; preds = %polybench_alloc_data.exit32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store ptr null, ptr %i.a, align 8, !tbaa !10
  %i.z = call i32 @posix_memalign(ptr noundef nonnull %i.a, i64 noundef 4096, i64 noundef 204800) #14
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !10  ; 6 uses
  %i.ab = icmp eq ptr %i.aa, null
  %i.ac = icmp ne i32 %i.z, 0
  %or.cond.i.i35 = select i1 %i.ab, i1 true, i1 %i.ac
end_hunk_5
begin_hunk_6_@main:bb.a

polybench_alloc_data.exit36:                      ; preds = %polybench_alloc_data.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aa) ]
  %i.af = sub i64 %i.n, %i.g
  %diff.check = icmp ult i64 %i.af, 16
  br label %.preheader41.i
end_hunk_6
