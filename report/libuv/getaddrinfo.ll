Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/getaddrinfo?download=true
inline.NumInlined: 3
begin_hunk_0_@uv_getaddrinfo:bb.a
  store i32 %i.aq, ptr %i.ah, align 8
  %i.ar = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add i32 %i.at, -1
  store i32 %i.au, ptr %i.as, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.av = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not22.i = icmp eq ptr %i.av, null
  br i1 %.not22.i, label %bb.w, label %.sink.split.i

bb.w:                                             ; preds = %bb.v
  %i.aw = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not23.i = icmp eq ptr %i.aw, null
  br i1 %.not23.i, label %bb.x, label %.sink.split.i

bb.x:                                             ; preds = %bb.w
  %i.ax = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not24.i = icmp eq ptr %i.ax, null
  br i1 %.not24.i, label %bb.y, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.x, %bb.w, %bb.v
  %.sink.i = phi ptr [ %i.av, %bb.v ], [ %i.aw, %bb.w ], [ %i.ax, %bb.x ]
  call void @uv__free(ptr noundef nonnull %.sink.i) #11
  br label %bb.y

bb.y:                                             ; preds = %.sink.split.i, %bb.x
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  %i.ay = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not25.i = icmp eq ptr %i.ay, null
  %.pre80 = load i32, ptr %i.ah, align 8          ; 2 uses
  br i1 %.not25.i, label %uv__getaddrinfo_done.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.az = load ptr, ptr %i.ad, align 8
  call void %i.ay(ptr noundef nonnull %1, i32 noundef %.pre80, ptr noundef %i.az) #11, !inline_history !3
  %.pre = load i32, ptr %i.ah, align 8
  br label %uv__getaddrinfo_done.exit

uv__getaddrinfo_done.exit:                        ; preds = %bb.z, %bb.y, %bb.i, %bb.c, %bb.a, %bb.b, %bb.s, %bb.f
  %.061 = phi i32 [ -12, %bb.i ], [ -22, %bb.a ], [ %i.l, %bb.f ], [ -22, %bb.c ], [ 0, %bb.s ], [ -22, %bb.b ], [ %.pre80, %bb.y ], [ %.pre, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.061
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i64 @uv__idna_toascii(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @uv__malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @uv__work_submit(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal void @uv__getaddrinfo_work(ptr noundef %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = tail call i32 @getaddrinfo(ptr noundef %i.b, ptr noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %i.g) #11
  %i.i = tail call i32 @uv__getaddrinfo_translate_error(i32 noundef %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %i.i, ptr %i.j, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @uv__getaddrinfo_done(ptr noundef %0, i32 noundef %1) #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -72
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, -1
  store i32 %i.f, ptr %i.d, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.h, null
  br i1 %.not22, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not23 = icmp eq ptr %i.j, null
  br i1 %.not23, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not24 = icmp eq ptr %i.l, null
  br i1 %.not24, label %bb.f, label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c
  %.sink = phi ptr [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ]
  tail call void @uv__free(ptr noundef nonnull %.sink) #11
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.m = icmp eq i32 %1, -125
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -3003, ptr %i.n, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.p, null
  br i1 %.not25, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = load i32, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.p(ptr noundef nonnull %i.a, i32 noundef %i.r, ptr noundef %i.t) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define void @uv_freeaddrinfo(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @freeaddrinfo(ptr noundef nonnull %0) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_if_indextoname(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %2, null
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @if_indextoname(i32 noundef %0, ptr noundef nonnull %i.a) #11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #9
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sub nsw i32 0, %i.i
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 17) #12 ; 5 uses
  %i.l = load i64, ptr %2, align 8
  %.not = icmp ugt i64 %i.l, %i.k
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = add i64 %i.k, 1
  store i64 %3, ptr %2, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 16 %i.a, i64 %i.k, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 0, ptr %4, align 1
  store i64 %i.k, ptr %2, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.b, %bb.g, %bb.f, %bb.d
  %.0 = phi i32 [ 0, %bb.g ], [ %i.j, %bb.d ], [ -105, %bb.f ], [ -22, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0
}

; Function Attrs: nounwind
declare ptr @if_indextoname(i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strnlen(ptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define range(i32 -2147483647, -2147483648) i32 @uv_if_indextoiid(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [17 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %2, null
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %uv_if_indextoname.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %uv_if_indextoname.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = call ptr @if_indextoname(i32 noundef %0, ptr noundef nonnull %i.a) #11
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @__errno_location() #9
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sub nsw i32 0, %i.i
  br label %uv_if_indextoname.exit

bb.e:                                             ; preds = %bb.c
  %i.k = call i64 @strnlen(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 17) #12 ; 5 uses
  %i.l = load i64, ptr %2, align 8
  %.not.i = icmp ugt i64 %i.l, %i.k
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %3 = add i64 %i.k, 1
  store i64 %3, ptr %2, align 8
  br label %uv_if_indextoname.exit

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %1, ptr nonnull align 16 %i.a, i64 %i.k, i1 false)
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  store i8 0, ptr %4, align 1
  store i64 %i.k, ptr %2, align 8
  br label %uv_if_indextoname.exit

uv_if_indextoname.exit:                           ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ 0, %bb.g ], [ %i.j, %bb.d ], [ -105, %bb.f ], [ -22, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.0.i
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @uv__free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{ptr @uv__getaddrinfo_done}
end_hunk_0
