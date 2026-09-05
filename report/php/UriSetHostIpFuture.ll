Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/UriSetHostIpFuture?download=true
inline.NumInlined: 4
begin_hunk_0

; Function Attrs: nounwind uwtable
define hidden i32 @uriIsWellFormedHostIpFutureMmA(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.UriUriStructA, align 8      ; 4 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #3
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %2, %bb.c ], [ @defaultMemoryManager, %bb.b ] ; 6 uses
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load i8, ptr %0, align 1, !tbaa !12
  switch i8 %i.f, label %bb.k [
    i8 118, label %bb.f
    i8 86, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.d
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %i.j = icmp ugt i64 %i.i, -6
  br i1 %i.j, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = add nuw i64 %i.i, 5
  %i.l = load ptr, ptr %.0, align 8, !tbaa !15
  %i.m = tail call ptr %i.l(ptr noundef nonnull %.0, i64 noundef %i.k) #3 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.m, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.o, ptr nonnull align 1 %0, i64 %i.i, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.i
  store i16 93, ptr %i.p, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.q = getelementptr i8, ptr %i.m, i64 %i.i
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = call i32 @uriParseSingleUriExMmA(ptr noundef nonnull %3, ptr noundef nonnull %i.m, ptr noundef %i.r, ptr noundef null, ptr noundef nonnull %.0) #3 ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %3, ptr noundef nonnull %.0) #3 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  call void %i.w(ptr noundef nonnull %.0, ptr noundef nonnull %i.m) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.g, %bb.e, %bb.c, %bb.a
  %.3 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ 1, %bb.e ], [ 3, %bb.f ], [ %i.s, %bb.j ], [ 3, %bb.g ]
  ret i32 %.3
}

declare i32 @uriMemoryManagerIsComplete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @uriParseSingleUriExMmA(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriFreeUriMembersMmA(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden i32 @uriIsWellFormedHostIpFutureA(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructA, align 8      ; 4 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriIsWellFormedHostIpFutureMmA.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %0, %1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  switch i8 %i.d, label %uriIsWellFormedHostIpFutureMmA.exit [
    i8 118, label %bb.d
    i8 86, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.b
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %i.h = icmp ugt i64 %i.g, -6
  br i1 %i.h, label %uriIsWellFormedHostIpFutureMmA.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = add nuw i64 %i.g, 5
  %i.j = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !15
  %i.k = tail call ptr %i.j(ptr noundef nonnull @defaultMemoryManager, i64 noundef %i.i) #3, !inline_history !18 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %uriIsWellFormedHostIpFutureMmA.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.k, ptr noundef nonnull align 1 dereferenceable(3) @.str, i64 3, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 3 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %0, i64 %i.g, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.g
  store i16 93, ptr %i.n, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.o = getelementptr i8, ptr %i.k, i64 %i.g
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %i.q = call i32 @uriParseSingleUriExMmA(ptr noundef nonnull %2, ptr noundef nonnull %i.k, ptr noundef %i.p, ptr noundef null, ptr noundef nonnull @defaultMemoryManager) #3 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @uriFreeUriMembersMmA(ptr noundef nonnull %2, ptr noundef nonnull @defaultMemoryManager) #3 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultMemoryManager, i64 32), align 8, !tbaa !16
  call void %i.t(ptr noundef nonnull @defaultMemoryManager, ptr noundef nonnull %i.k) #3, !inline_history !18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %uriIsWellFormedHostIpFutureMmA.exit

uriIsWellFormedHostIpFutureMmA.exit:              ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.h
  %.3.i = phi i32 [ 2, %bb.a ], [ 3, %bb.e ], [ 1, %bb.c ], [ 3, %bb.d ], [ %i.q, %bb.h ]
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriSetHostIpFutureMmA(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriInternalSetHostMmA(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret i32 %i.a
}

declare i32 @uriInternalSetHostMmA(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @uriSetHostIpFutureA(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriInternalSetHostMmA(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef null) #3
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriIsWellFormedHostIpFutureMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %2, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @uriMemoryManagerIsComplete(ptr noundef nonnull %2) #3
  %.not = icmp eq i32 %i.d, 1
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %2, %bb.c ], [ @defaultMemoryManager, %bb.b ] ; 6 uses
  %i.e = icmp ult ptr %0, %1
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = load i32, ptr %0, align 4, !tbaa !17
  switch i32 %i.f, label %bb.k [
    i32 118, label %bb.f
    i32 86, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.d
  %i.g = ptrtoint ptr %1 to i64
  %i.h = ptrtoint ptr %0 to i64
  %i.i = sub i64 %i.g, %i.h                       ; 5 uses
  %4 = icmp slt i64 %i.i, 0
  br i1 %4, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr %.0, align 8, !tbaa !15
  %5 = add nuw i64 %i.i, 20
  %i.k = tail call ptr %i.j(ptr noundef nonnull %.0, i64 noundef %5) #3 ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.k, ptr noundef nonnull align 4 dereferenceable(12) @.str.2, i64 12, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.m, ptr nonnull align 4 %0, i64 %i.i, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.i
  store i64 93, ptr %i.n, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  %i.o = getelementptr i8, ptr %i.k, i64 %i.i
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = call i32 @uriParseSingleUriExMmW(ptr noundef nonnull %3, ptr noundef nonnull %i.k, ptr noundef %i.p, ptr noundef null, ptr noundef nonnull %.0) #3 ; 2 uses
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.s = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %3, ptr noundef nonnull %.0) #3 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  call void %i.u(ptr noundef nonnull %.0, ptr noundef nonnull %i.k) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j, %bb.g, %bb.e, %bb.c, %bb.a
  %.3 = phi i32 [ 2, %bb.a ], [ 10, %bb.c ], [ 1, %bb.e ], [ 3, %bb.f ], [ 3, %bb.g ], [ %i.q, %bb.j ]
  ret i32 %.3
}

declare i32 @uriParseSingleUriExMmW(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @uriFreeUriMembersMmW(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @uriIsWellFormedHostIpFutureW(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.UriUriStructW, align 8      ; 4 uses
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %uriIsWellFormedHostIpFutureMmW.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %0, %1
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %0, align 4, !tbaa !17
  switch i32 %i.d, label %uriIsWellFormedHostIpFutureMmW.exit [
    i32 118, label %bb.d
    i32 86, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.b
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %0 to i64
  %i.g = sub i64 %i.e, %i.f                       ; 5 uses
  %3 = icmp slt i64 %i.g, 0
  br i1 %3, label %uriIsWellFormedHostIpFutureMmW.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @defaultMemoryManager, align 8, !tbaa !15
  %4 = add nuw i64 %i.g, 20
  %i.i = tail call ptr %i.h(ptr noundef nonnull @defaultMemoryManager, i64 noundef %4) #3, !inline_history !19 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %uriIsWellFormedHostIpFutureMmW.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.i, ptr noundef nonnull align 4 dereferenceable(12) @.str.2, i64 12, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.k, ptr nonnull align 4 %0, i64 %i.g, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  store i64 93, ptr %i.l, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.m = getelementptr i8, ptr %i.i, i64 %i.g
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = call i32 @uriParseSingleUriExMmW(ptr noundef nonnull %2, ptr noundef nonnull %i.i, ptr noundef %i.n, ptr noundef null, ptr noundef nonnull @defaultMemoryManager) #3 ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = call i32 @uriFreeUriMembersMmW(ptr noundef nonnull %2, ptr noundef nonnull @defaultMemoryManager) #3 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @defaultMemoryManager, i64 32), align 8, !tbaa !16
  call void %i.r(ptr noundef nonnull @defaultMemoryManager, ptr noundef nonnull %i.i) #3, !inline_history !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %uriIsWellFormedHostIpFutureMmW.exit

uriIsWellFormedHostIpFutureMmW.exit:              ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %bb.h
  %.3.i = phi i32 [ 2, %bb.a ], [ %i.o, %bb.h ], [ 1, %bb.c ], [ 3, %bb.d ], [ 3, %bb.e ]
  ret i32 %.3.i
}

; Function Attrs: nounwind uwtable
define hidden i32 @uriSetHostIpFutureMmW(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriInternalSetHostMmW(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef %3) #3
  ret i32 %i.a
}

declare i32 @uriInternalSetHostMmW(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden i32 @uriSetHostIpFutureW(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @uriInternalSetHostMmW(ptr noundef %0, i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef null) #3
  ret i32 %i.a
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"UriMemoryManagerStruct", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!15 = !{!14, !13, i64 0}
!16 = !{!14, !13, i64 32}
!17 = !{!9, !9, i64 0}
!18 = !{ptr @uriIsWellFormedHostIpFutureMmA}
!19 = !{ptr @uriIsWellFormedHostIpFutureMmW}
end_hunk_0
