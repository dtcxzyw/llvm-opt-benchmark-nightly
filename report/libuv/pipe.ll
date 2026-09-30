Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/pipe?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@uv_pipe_pending_instances:bb.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @uv_pipe_pending_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = add i32 %i.j, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.k, %bb.d ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_pipe_pending_type(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 236
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @uv_guess_handle(i32 noundef %i.d) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ 0, %bb.a ], [ %i.f, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

declare i32 @uv_guess_handle(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_pipe_chmod(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sockaddr_un, align 2        ; 7 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca [4097 x i8], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add i32 %1, -4
  %or.cond3 = icmp ult i32 %i.g, -3
  br i1 %or.cond3, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %1, 1
  %.not = icmp eq i32 %i.h, 0
  %spec.select = select i1 %.not, i32 0, i32 292  ; 2 uses
  %.not29 = icmp samesign ult i32 %1, 2
  %i.i = or disjoint i32 %spec.select, 146
  %.1 = select i1 %.not29, i32 %spec.select, i32 %i.i ; 2 uses
  %i.j = tail call i32 @fchmod(i32 noundef %i.e, i32 noundef %.1) #11
  %.not30 = icmp eq i32 %i.j, 0
  br i1 %.not30, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__errno_location() #13
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  switch i32 %i.l, label %bb.f [
    i32 22, label %bb.g
    i32 95, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.m = sub nsw i32 0, %i.l
  br label %bb.r

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 110, ptr %i.a, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(110) %2, i8 0, i64 110, i1 false)
  %i.n = call i32 @uv__getsockpeername(ptr noundef nonnull %0, ptr noundef nonnull @getsockname, ptr noundef nonnull %2, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %uv_pipe_getsockname.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 4 uses
  %i.q = load i8, ptr %i.p, align 2
  %i.r = icmp eq i8 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = load i32, ptr %i.a, align 4
  %i.t = zext i32 %i.s to i64
  %i.u = add nsw i64 %i.t, -2
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.v = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.p, i32 noundef 0, i64 noundef 108) #12 ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 110
  %spec.select.i.i = select i1 %i.w, ptr %i.x, ptr %i.v
  %i.y = ptrtoint ptr %spec.select.i.i to i64
  %i.z = ptrtoint ptr %i.p to i64
  %i.aa = sub i64 %i.y, %i.z
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge.in.i.i = phi i64 [ %i.aa, %bb.j ], [ %i.u, %bb.i ]
  %.019.i.i = phi i64 [ 1, %bb.j ], [ 0, %bb.i ]
  %i.ab = and i64 %storemerge.in.i.i, 4294967295  ; 4 uses
  %i.ac = add nuw nsw i64 %i.ab, %.019.i.i
  %i.ad = icmp samesign ugt i64 %i.ac, 4097
  br i1 %i.ad, label %uv_pipe_getsockname.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 2 %i.p, i64 %i.ab, i1 false)
  %i.ae = load i8, ptr %i.b, align 16
  %.not.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ab
  store i8 0, ptr %i.af, align 1
  br label %bb.n

uv_pipe_getsockname.exit:                         ; preds = %bb.k, %bb.g
  %.020.i.i = phi i32 [ %i.n, %bb.g ], [ -105, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.r

bb.n:                                             ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  %i.ag = icmp eq i64 %i.ab, 0
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not34 = icmp eq ptr %i.ai, null
  %spec.select36 = select i1 %.not34, ptr %i.b, ptr %i.ai
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0 = phi ptr [ %i.b, %bb.n ], [ %spec.select36, %bb.o ]
  %i.aj = call i32 @chmod(ptr noundef nonnull %.0, i32 noundef %.1) #11
  %.not35 = icmp eq i32 %i.aj, 0
  br i1 %.not35, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = tail call ptr @__errno_location() #13
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = sub nsw i32 0, %i.al
  br label %bb.r

bb.r:                                             ; preds = %uv_pipe_getsockname.exit, %bb.p, %bb.c, %bb.b, %bb.a, %bb.q, %bb.f
  %.023 = phi i32 [ %.020.i.i, %uv_pipe_getsockname.exit ], [ -9, %bb.a ], [ -9, %bb.b ], [ %i.m, %bb.f ], [ -22, %bb.c ], [ %i.am, %bb.q ], [ 0, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret i32 %.023
}

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @chmod(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i32 @uv_pipe(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = and i32 %1, 64                           ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = and i32 %2, 64
  %.not16 = icmp eq i32 %i.c, 0
  %i.d = and i32 %i.b, %2
  %or.cond.not.not = icmp eq i32 %i.d, 0
  %.0 = select i1 %or.cond.not.not, i32 524288, i32 526336 ; 2 uses
  %i.e = call i32 @pipe2(ptr noundef nonnull %i.a, i32 noundef %.0) #11
  %.not17 = icmp eq i32 %i.e, 0
  br i1 %.not17, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__errno_location() #13
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sub nsw i32 0, %i.g
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %3 = and i32 %.0, 2048
  %.not18 = icmp eq i32 %3, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.i, ptr %0, align 4
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load i32, ptr %i.a, align 8
  %i.k = call i32 @uv__nonblock_ioctl(i32 noundef %i.j, i32 noundef 1) #11 ; 2 uses
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %.not16, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.m = load i32, ptr %i.l, align 4
  %i.n = call i32 @uv__nonblock_ioctl(i32 noundef %i.m, i32 noundef 1) #11 ; 2 uses
  %.not21 = icmp eq i32 %i.n, 0
  br i1 %.not21, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = load <2 x i32>, ptr %i.a, align 8
  store <2 x i32> %i.o, ptr %0, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %bb.f
  %.012 = phi i32 [ %i.k, %bb.f ], [ %i.n, %bb.h ]
  %i.p = load i32, ptr %i.a, align 8
  %i.q = call i32 @uv__close(i32 noundef %i.p) #11 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %i.t = call i32 @uv__close(i32 noundef %i.s) #11 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.d, %bb.b
  %.013 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.d ], [ %.012, %bb.j ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.013
}

; Function Attrs: nounwind
declare i32 @pipe2(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @uv__make_pipe(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 64                           ; 2 uses
  %i.b = tail call i32 @uv_pipe(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.a)
  ret i32 %i.b
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @uv__getsockpeername(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
end_hunk_0
