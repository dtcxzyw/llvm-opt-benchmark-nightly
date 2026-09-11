Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_disk_posix?download=true
inline.NumInlined: 80
inline.NumDeleted: 25
begin_hunk_0_@tree_dir_next_posix:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %i.az, i64 21
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !82
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %.backedge, label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !81
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !68
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.br
  store i8 0, ptr %i.bs, align 1, !tbaa !82
  %i.bt = load i64, ptr %i.bq, align 8, !tbaa !68 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !83
  %i.bv = icmp ugt i64 %i.bb, 1
  br i1 %i.bv, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.024.i = phi i64 [ %i.ca, %bb.o ], [ %i.bb, %bb.n ] ; 3 uses
  %i.bw = getelementptr i8, ptr %i.ba, i64 %.024.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !82
  %i.bz = icmp eq i8 %i.by, 47
  br i1 %i.bz, label %bb.o, label %.critedge.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ca = add i64 %.024.i, -1                     ; 2 uses
  %i.cb = icmp ugt i64 %i.ca, 1
  br i1 %i.cb, label %.lr.ph.i, label %.critedge.i, !llvm.loop !1

.critedge.i:                                      ; preds = %bb.o, %.lr.ph.i, %bb.n
  %.0.lcssa.i = phi i64 [ %i.bb, %bb.n ], [ %.024.i, %.lr.ph.i ], [ 1, %bb.o ] ; 2 uses
  %i.cc = add i64 %i.bt, 2
  %i.cd = add i64 %i.cc, %.0.lcssa.i
  %i.ce = tail call ptr @archive_string_ensure(ptr noundef nonnull %i.bo, i64 noundef %i.cd) #17 ; 0 uses
  %i.cf = load i64, ptr %i.bq, align 8, !tbaa !68
  %.not.i44 = icmp eq i64 %i.cf, 0
  %.pre27.i = load ptr, ptr %i.bo, align 8, !tbaa !81 ; 3 uses
  %.pre29.i = load i64, ptr %i.bu, align 8, !tbaa !83 ; 3 uses
  br i1 %.not.i44, label %tree_append.exit, label %bb.p

bb.p:                                             ; preds = %.critedge.i
  %i.cg = getelementptr i8, ptr %.pre27.i, i64 %.pre29.i
  %i.ch = getelementptr i8, ptr %i.cg, i64 -1
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !82
  %.not23.i = icmp eq i8 %i.ci, 47
  br i1 %.not23.i, label %tree_append.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cj = tail call ptr @archive_strappend_char(ptr noundef nonnull %i.bo, i8 noundef signext 47) #17 ; 0 uses
  %.pre.i = load ptr, ptr %i.bo, align 8, !tbaa !81
  %.pre28.i = load i64, ptr %i.bu, align 8, !tbaa !83
  br label %tree_append.exit

tree_append.exit:                                 ; preds = %.critedge.i, %bb.p, %bb.q
  %i.ck = phi i64 [ %.pre28.i, %bb.q ], [ %.pre29.i, %bb.p ], [ %.pre29.i, %.critedge.i ]
  %i.cl = phi ptr [ %.pre.i, %bb.q ], [ %.pre27.i, %bb.p ], [ %.pre27.i, %.critedge.i ]
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !57
  %i.co = tail call ptr @archive_strncat(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.ba, i64 noundef %.0.lcssa.i) #17 ; 0 uses
  %i.cp = load ptr, ptr %i.cn, align 8, !tbaa !57
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.cp, ptr %i.cq, align 8, !tbaa !91
  br label %.sink.split

.sink.split:                                      ; preds = %tree_pop.exit, %bb.j, %tree_append.exit
  %.sink = phi i32 [ 1, %tree_append.exit ], [ -1, %bb.j ], [ %i.ao, %tree_pop.exit ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.sink, ptr %i.cr, align 4, !tbaa !54
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ %.sink, %.sink.split ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 1) i32 @tree_ascend(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !41   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !62
  %i.f = and i32 %i.e, 2
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.h = load i32, ptr %i.g, align 8, !tbaa !64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = tail call i32 (i32, ptr, i32, ...) @openat(i32 noundef %i.c, ptr noundef nonnull @.str.29, i32 noundef 524288) #17 ; 2 uses
  tail call void @__archive_ensure_cloexec_flag(i32 noundef %i.i) #17
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.018 = phi i32 [ %i.h, %bb.b ], [ %i.i, %bb.c ] ; 2 uses
  %i.j = icmp slt i32 %.018, 0
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__errno_location() #21
  %i.l = load i32, ptr %i.k, align 4, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.l, ptr %i.m, align 8, !tbaa !94
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  store i32 %.018, ptr %i.b, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !43
  %i.p = and i32 %i.o, -65
  store i32 %i.p, ptr %i.n, align 8, !tbaa !43
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  tail call fastcc void @close_and_restore_time(i32 noundef %i.c, ptr noundef nonnull %0, ptr noundef nonnull %i.q)
  %i.r = load i32, ptr %i.d, align 8, !tbaa !62
  %i.s = and i32 %i.r, 2
  %.not19 = icmp eq i32 %i.s, 0
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !92
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !92
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i32 -1, ptr %i.w, align 8, !tbaa !64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !42
  %i.z = add nsw i32 %i.y, -1
  store i32 %i.z, ptr %i.x, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.0 = phi i32 [ -2, %bb.e ], [ 0, %bb.h ]
  ret i32 %.0
}

declare noalias ptr @fdopendir(i32 noundef) local_unnamed_addr #2

declare ptr @readdir(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @dup(i32 noundef) local_unnamed_addr #9

declare ptr @archive_string_ensure(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @archive_strappend_char(ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare ptr @archive_strncat(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #11

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fstatvfs(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @fstatfs(i32 noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i64 @fpathconf(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare i32 @fchdir(i32 noundef) local_unnamed_addr #9

declare i32 @archive_entry_sparse_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #12

declare i32 @archive_entry_sparse_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal fastcc noundef nonnull ptr @tree_reopen(ptr nofree noundef nonnull returned captures(ret: address, provenance) initializes((8, 24), (32, 44), (56, 64), (80, 92), (400, 404), (481, 482), (504, 508), (520, 536)) %0, ptr noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %3 = shl nuw nsw i32 %2, 7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %4 = or disjoint i32 %3, 256
  store i32 %4, ptr %i.a, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.b, align 4, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.c, align 8, !tbaa !94
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.e, align 8, !tbaa !42
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i32 0, ptr %i.f, align 8, !tbaa !55
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 480
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.i = load i8, ptr %i.h, align 8, !tbaa !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 481
  store i8 %i.i, ptr %i.j, align 1, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 0, ptr %i.k, align 8, !tbaa !83
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 520
  store i32 -1, ptr %i.l, align 8, !tbaa !79
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 524
  store i32 0, ptr %i.m, align 4, !tbaa !103
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 0, ptr %i.n, align 8, !tbaa !102
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 -1, ptr %i.o, align 8, !tbaa !99
  %i.p = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #18 ; 10 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__archive_errx(i32 noundef 1, ptr noundef nonnull @.str.41) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.r = load ptr, ptr %0, align 8, !tbaa !59
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.r, ptr %i.s, align 8, !tbaa !84
  store ptr %i.p, ptr %0, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  store i32 -1, ptr %i.u, align 8, !tbaa !64
  %i.v = icmp eq ptr %1, null
  br i1 %i.v, label %tree_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  br label %tree_push.exit

tree_push.exit:                                   ; preds = %bb.c, %bb.d
  %i.x = phi i64 [ %i.w, %bb.d ], [ 0, %bb.c ]
  %i.y = tail call ptr @archive_strncat(ptr noundef nonnull %i.t, ptr noundef %1, i64 noundef %i.x) #17 ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i32 56, ptr %i.z, align 8, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 76
  store i32 0, ptr %i.aa, align 4, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !68
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !69
  %i.ae = load ptr, ptr %i.t, align 8, !tbaa !70
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 88
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !71
  %i.ag = load ptr, ptr %0, align 8, !tbaa !59
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  store i32 4, ptr %i.ah, align 8, !tbaa !62
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.ai, align 4, !tbaa !92
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.aj, align 8, !tbaa !93
  %i.ak = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.40, i32 noundef 524288) #17 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !86
  %i.am = icmp slt i32 %i.ak, 0
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %tree_push.exit
  %i.an = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull @.str.40, i32 noundef 2621440) #17 ; 2 uses
  store i32 %i.an, ptr %i.al, align 4, !tbaa !86
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %tree_push.exit
  %i.ao = phi i32 [ %i.an, %bb.e ], [ %i.ak, %tree_push.exit ]
  tail call void @__archive_ensure_cloexec_flag(i32 noundef %i.ao) #17
  %i.ap = load i32, ptr %i.al, align 4, !tbaa !86 ; 2 uses
  %i.aq = load volatile i32, ptr @tree_dup.can_dupfd_cloexec, align 4, !tbaa !73
  %.not.i28 = icmp eq i32 %i.aq, 0
  br i1 %.not.i28, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %i.ap, i32 noundef 1030, i32 noundef 0) #17 ; 2 uses
  %.not8.i = icmp eq i32 %i.ar, -1
  br i1 %.not8.i, label %bb.h, label %tree_dup.exit

bb.h:                                             ; preds = %bb.g
  store volatile i32 0, ptr @tree_dup.can_dupfd_cloexec, align 4, !tbaa !73
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.as = tail call i32 @dup(i32 noundef %i.ap) #17 ; 2 uses
  tail call void @__archive_ensure_cloexec_flag(i32 noundef %i.as) #17
  br label %tree_dup.exit

tree_dup.exit:                                    ; preds = %bb.g, %bb.i
  %.0.i = phi i32 [ %i.as, %bb.i ], [ %i.ar, %bb.g ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 %.0.i, ptr %i.at, align 8, !tbaa !41
  ret ptr %0
}

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @__archive_errx(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { noreturn nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(1) }
attributes #23 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !85}
!1 = distinct !{!1, !85}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS14archive_vtable", !11, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!"long", !7, i64 0}
!15 = !{!"archive_string", !13, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"p1 _ZTS19archive_string_conv", !11, i64 0}
!17 = !{!"archive", !8, i64 0, !8, i64 4, !12, i64 8, !8, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !13, i64 40, !15, i64 48, !13, i64 72, !8, i64 80, !8, i64 84, !16, i64 88, !13, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !7, i64 128, !14, i64 136}
!18 = !{!"p1 _ZTS13archive_entry", !11, i64 0}
!19 = !{!"p1 _ZTS4tree", !11, i64 0}
!20 = !{!"p1 _ZTS7archive", !11, i64 0}
!21 = !{!"archive_read_disk", !17, i64 0, !18, i64 144, !7, i64 152, !7, i64 153, !19, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !8, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !20, i64 264, !11, i64 272, !11, i64 280}
!22 = !{!21, !11, i64 200}
!23 = !{!21, !11, i64 216}
!24 = !{!21, !11, i64 224}
!25 = !{!21, !11, i64 240}
!26 = !{!21, !11, i64 208}
!27 = !{!21, !11, i64 232}
!28 = !{!21, !8, i64 0}
!29 = !{!21, !8, i64 4}
!30 = !{!21, !18, i64 144}
!31 = !{!21, !8, i64 192}
!32 = !{!"p1 _ZTS10tree_entry", !11, i64 0}
!33 = !{!"p1 _ZTS11__dirstream", !11, i64 0}
!34 = !{!"p1 _ZTS6dirent", !11, i64 0}
!35 = !{!"timespec", !14, i64 0, !14, i64 8}
!36 = !{!"stat", !14, i64 0, !14, i64 8, !14, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !35, i64 72, !35, i64 88, !35, i64 104, !7, i64 120}
!37 = !{!"restore_time", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !8, i64 40, !8, i64 44}
!38 = !{!"p1 _ZTS12entry_sparse", !11, i64 0}
!39 = !{!"p1 _ZTS10filesystem", !11, i64 0}
!40 = !{!"tree", !32, i64 0, !32, i64 8, !33, i64 16, !34, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !15, i64 48, !13, i64 72, !14, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !36, i64 112, !36, i64 256, !8, i64 400, !8, i64 404, !37, i64 408, !38, i64 456, !38, i64 464, !8, i64 472, !8, i64 476, !7, i64 480, !7, i64 481, !39, i64 488, !39, i64 496, !8, i64 504, !8, i64 508, !8, i64 512, !8, i64 516, !8, i64 520, !8, i64 524, !14, i64 528, !14, i64 536, !13, i64 544, !14, i64 552}
!41 = !{!40, !8, i64 104}
!42 = !{!40, !8, i64 88}
!43 = !{!40, !8, i64 32}
!44 = !{!21, !7, i64 152}
!45 = !{!21, !7, i64 153}
!46 = !{!21, !19, i64 160}
!47 = !{!40, !7, i64 480}
end_hunk_0
