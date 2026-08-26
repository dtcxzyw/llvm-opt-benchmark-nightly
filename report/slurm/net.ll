Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/net?download=true
inline.NumInlined: 7
inline.NumDeleted: 4
begin_hunk_0_@sockaddr_to_string:bb.a
bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.13, ptr noundef nonnull %i.j) #11
  br label %bb.u

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.n = load i8, ptr %i.m, align 1
  %.not20 = icmp eq i8 %i.n, 0
  br i1 %.not20, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.14, ptr noundef nonnull %i.m) #11
  br label %bb.u

bb.i:                                             ; preds = %bb.g
  %i.p = tail call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.15) #11
  br label %bb.u

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4
  switch i32 %i.r, label %_ip_reserved_to_str.exit [
    i32 2130706433, label %bb.o
    i32 0, label %bb.k
    i32 -1, label %bb.l
    i32 -1073741816, label %bb.m
  ]

bb.k:                                             ; preds = %bb.j
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <4 x i32>, ptr %i.s, align 8
  %i.u = icmp eq <4 x i32> %i.t, zeroinitializer  ; 4 uses
  %i.v = extractelement <4 x i1> %i.u, i64 0
  %i.w = extractelement <4 x i1> %i.u, i64 1
  %or.cond.i = select i1 %i.v, i1 %i.w, i1 false
  %i.x = extractelement <4 x i1> %i.u, i64 2
  %or.cond30.i = select i1 %or.cond.i, i1 %i.x, i1 false ; 2 uses
  %i.y = extractelement <4 x i1> %i.u, i64 3
  %or.cond33.i = select i1 %or.cond30.i, i1 %i.y, i1 false
  br i1 %or.cond33.i, label %bb.o, label %.critedge.i

.critedge.i:                                      ; preds = %bb.n
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.9.0.copyload.i = load i32, ptr %.sroa.9.0..sroa_idx.i, align 4
  %i.z = icmp eq i32 %.sroa.9.0.copyload.i, 16777216
  %or.cond43.not.i = select i1 %or.cond30.i, i1 %i.z, i1 false
  br i1 %or.cond43.not.i, label %bb.o, label %_ip_reserved_to_str.exit

bb.o:                                             ; preds = %bb.k, %.critedge.i, %bb.j, %bb.m, %bb.l, %bb.n
  %.2.i.ph = phi ptr [ @.str.24, %bb.n ], [ @.str.22, %bb.l ], [ @.str.23, %bb.m ], [ @.str.20, %bb.j ], [ @.str.25, %.critedge.i ], [ @.str.21, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.aa = tail call ptr @llvm.stacksave.p0()
  %i.ab = load i16, ptr %0, align 8
  switch i16 %i.ab, label %.thread52.i [
    i16 2, label %bb.p
    i16 10, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ad = load i16, ptr %i.ac, align 2            ; 2 uses
  %.not58.i = icmp eq i16 %i.ad, 0
  br i1 %.not58.i, label %.thread52.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %rev.i46.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.ad)
  %i.ae = zext i16 %rev.i46.i to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.28, ptr noundef nonnull %.2.i.ph, i32 noundef %i.ae) #11
  br label %_fmt_ip_host_port_str.exit

.thread52.i:                                      ; preds = %bb.o, %bb.p
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30, ptr noundef nonnull %.2.i.ph) #11
  br label %_fmt_ip_host_port_str.exit

_fmt_ip_host_port_str.exit:                       ; preds = %bb.q, %.thread52.i
  %i.af = load ptr, ptr %i.a, align 8
  call void @llvm.stackrestore.p0(ptr %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.t

_ip_reserved_to_str.exit:                         ; preds = %bb.a, %.critedge.i, %bb.j
  br i1 %2, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ip_reserved_to_str.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.ag = tail call ptr @xgetnameinfo(ptr noundef nonnull %0) #11 ; 2 uses
  store ptr %i.ag, ptr %i.b, align 8
  %i.ah = tail call fastcc ptr @_fmt_ip_host_port_str(ptr noundef nonnull %0, ptr noundef %i.ag)
  call void @slurm_xfree(ptr noundef nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.t

bb.s:                                             ; preds = %_ip_reserved_to_str.exit
  %i.ai = tail call fastcc ptr @_fmt_ip_host_port_str(ptr noundef nonnull %0, ptr noundef null)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %_fmt_ip_host_port_str.exit
  %.0 = phi ptr [ %i.af, %_fmt_ip_host_port_str.exit ], [ %i.ah, %bb.r ], [ %i.ai, %bb.s ]
  store i32 %i.d, ptr %i.c, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.f, %bb.h, %bb.i, %bb.b, %bb.d, %bb.c, %bb.t
  %.1 = phi ptr [ %.0, %bb.t ], [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.d ], [ %i.l, %bb.f ], [ %i.o, %bb.h ], [ %i.p, %bb.i ]
  ret ptr %.1
}

declare ptr @xstrdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_fmt_ip_host_port_str(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  %i.b = tail call ptr @llvm.stacksave.p0()
  %i.c = alloca [48 x i8], align 16               ; 6 uses
  %i.d = load i16, ptr %0, align 8
  switch i16 %i.d, label %.thread52 [
    i16 2, label %bb.b
    i16 10, label %bb.f
  ]

.thread52:                                        ; preds = %bb.a
  %.not59 = icmp eq ptr %1, null
  br i1 %.not59, label %bb.n, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.f = load i16, ptr %i.e, align 2
  %rev.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.f) ; 2 uses
  %.not40 = icmp eq ptr %1, null
  br i1 %.not40, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = call ptr @inet_ntop(i32 noundef 2, ptr noundef nonnull %i.g, ptr noundef nonnull %i.c, i32 noundef 48) #11
  %.not41 = icmp eq ptr %i.h, null
  br i1 %.not41, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.j = and i64 %i.i, 1024
  %.not42 = icmp eq i64 %i.j, 0
  br i1 %.not42, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__errno_location() #12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = call ptr @slurm_strerror(i32 noundef %i.l) #11
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %0, i64 noundef 128, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.26, ptr noundef %i.m) #11
  br label %.critedge

bb.f:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i16, ptr %i.n, align 2
  %rev.i46 = tail call noundef i16 @llvm.bswap.i16(i16 %i.o) ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.r = call ptr @inet_ntop(i32 noundef 10, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, i32 noundef 46) #11
  %.not38 = icmp eq ptr %i.r, null
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.q) #13
  store i8 91, ptr %i.c, align 16
  %i.t = getelementptr i8, ptr %i.c, i64 %i.s     ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 1
  store i8 93, ptr %i.u, align 1
  %i.v = getelementptr i8, ptr %i.t, i64 2
  store i8 0, ptr %i.v, align 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.w = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.x = and i64 %i.w, 1024
  %.not39 = icmp eq i64 %i.x, 0
  br i1 %.not39, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = tail call ptr @__errno_location() #12
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = call ptr @slurm_strerror(i32 noundef %i.z) #11
  call void (ptr, i64, i64, i64, ptr, ...) @_log_flag_hex(ptr noundef nonnull %0, i64 noundef 128, i64 noundef -1, i64 noundef -1, ptr noundef nonnull @.str.27, ptr noundef %i.aa) #11
  br label %.critedge

bb.k:                                             ; preds = %bb.h, %bb.f, %bb.c, %bb.b
  %.4 = phi ptr [ %i.c, %bb.h ], [ %i.c, %bb.c ], [ %1, %bb.b ], [ %1, %bb.f ] ; 2 uses
  %.030 = phi i16 [ %rev.i46, %bb.h ], [ %rev.i, %bb.c ], [ %rev.i, %bb.b ], [ %rev.i46, %bb.f ] ; 2 uses
  %.not58 = icmp eq i16 %.030, 0
  br i1 %.not58, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = zext i16 %.030 to i32
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.28, ptr noundef nonnull %.4, i32 noundef %i.ab) #11
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %.thread52
  %.4505657 = phi ptr [ %1, %.thread52 ], [ %.4, %bb.k ]
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.30, ptr noundef nonnull %.4505657) #11
  br label %bb.n

bb.n:                                             ; preds = %.thread52, %bb.m, %bb.l
  %i.ac = load ptr, ptr %i.a, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.j, %bb.d, %bb.e, %bb.n
  %.2 = phi ptr [ %i.ac, %bb.n ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.j ], [ null, %bb.i ]
  call void @llvm.stackrestore.p0(ptr %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.2
}

declare ptr @xgetnameinfo(ptr noundef) local_unnamed_addr #2

declare void @slurm_xfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @addrinfo_to_string(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call ptr @sockaddr_to_string(ptr noundef %i.b, i32 poison, i1 noundef zeroext %1)
  ret ptr %i.c
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @sockaddr_from_unix_path(ptr dead_on_unwind noalias writable sret(%struct.sockaddr_storage) align 8 initializes((0, 128)) %0, ptr noundef %1) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 128, i1 false)
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.b = tail call i64 @strlcpy(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) %1, i64 noundef 108) #11
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #13
  %.not4 = icmp eq i64 %i.b, %i.c
  br i1 %.not4, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i16 1, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  ret void
}

; Function Attrs: nofree nounwind
declare i64 @strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 6012) i32 @net_get_peer(i32 noundef %0, ptr nofree noundef captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ucred, align 4              ; 7 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  store i32 99, ptr %1, align 4
  store i32 99, ptr %2, align 4
  store i32 0, ptr %3, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) @__const.net_get_peer.cred, i64 12, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 12, ptr %i.a, align 4
  %i.b = call i32 @getsockopt(i32 noundef %0, i32 noundef 1, i32 noundef 17, ptr noundef nonnull %4, ptr noundef nonnull %i.a) #11
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 336), align 8
  %i.d = and i64 %i.c, 1024
  %.not10 = icmp eq i64 %i.d, 0
  br i1 %.not10, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @get_log_level() #11
  %i.f = icmp sgt i32 %i.e, 3
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @log_var(i32 noundef 4, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.net_get_peer, i32 noundef %0) #11
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i32, ptr %i.g, align 4
  store i32 %i.h, ptr %1, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %2, align 4
  %i.k = load i32, ptr %4, align 4
  store i32 %i.k, ptr %3, align 4
  %i.l = load i32, ptr %1, align 4
  %i.m = icmp eq i32 %i.l, 99
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %2, align 4
  %i.o = icmp eq i32 %i.n, 99
  %. = select i1 %i.o, i32 6010, i32 0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b, %bb.d, %bb.c
  %.0 = phi i32 [ 6010, %bb.e ], [ 6011, %bb.b ], [ %., %bb.f ], [ 6011, %bb.c ], [ 6011, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare i32 @getsockopt(i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #9

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_log_flag_hex(ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @_xstrfmtcat(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #10

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
end_hunk_0
