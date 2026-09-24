Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/test-path-utils?download=true
inline.NumInlined: 26
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cmd__path_utils:bb.a

is_path_owned_by_current_uid.exit.thread342:      ; preds = %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.du

bb.dp:                                            ; preds = %bb.do
  %i.xd = call ptr @getenv(ptr noundef nonnull @.str.80) #15 ; 3 uses
  %.not.i.i = icmp eq ptr %i.xd, null
  br i1 %.not.i.i, label %.sink.split, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.xe = load i8, ptr %i.xd, align 1, !tbaa !16
  %.not5.i.i = icmp eq i8 %i.xe, 0
  br i1 %.not5.i.i, label %.sink.split, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8, !tbaa !43
  %i.xf = tail call ptr @__errno_location() #18   ; 2 uses
  store i32 0, ptr %i.xf, align 4, !tbaa !60
  %i.xg = call i64 @__isoc23_strtoul(ptr noundef nonnull %i.xd, ptr noundef nonnull %i.a, i32 noundef 10) #15
  %i.xh = load ptr, ptr %i.a, align 8, !tbaa !43
  %i.xi = load i8, ptr %i.xh, align 1, !tbaa !16
  %.not6.i.i = icmp eq i8 %i.xi, 0
  br i1 %.not6.i.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.xj = load i32, ptr %i.xf, align 4, !tbaa !60
  %.not7.i.i = icmp eq i32 %i.xj, 0
  %i.xk = trunc i64 %i.xg to i32
  %spec.select.i = select i1 %.not7.i.i, i32 %i.xk, i32 0
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %.01.i = phi i32 [ 0, %bb.dr ], [ %spec.select.i, %bb.ds ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %is_path_owned_by_current_uid.exit

is_path_owned_by_current_uid.exit:                ; preds = %bb.dn, %bb.dt
  %.2.i = phi i32 [ %.01.i, %bb.dt ], [ %i.wz, %bb.dn ]
  %.not349 = icmp eq i32 %i.xb, %.2.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br i1 %.not349, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %is_path_owned_by_current_uid.exit.thread342, %is_path_owned_by_current_uid.exit
  %i.xl = load ptr, ptr %i.ww, align 8, !tbaa !43
  %i.xm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.45, ptr noundef %i.xl) ; 0 uses
  br label %bb.dw

.sink.split:                                      ; preds = %bb.dq, %bb.dp, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split, %is_path_owned_by_current_uid.exit
  %i.xn = load ptr, ptr %i.ww, align 8, !tbaa !43
  %i.xo = load ptr, ptr %i.wv, align 8, !tbaa !46
  %i.xp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.46, ptr noundef %i.xn, ptr noundef %i.xo) ; 0 uses
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.du
  %.1 = phi i32 [ %.0170361, %bb.du ], [ 1, %bb.dv ] ; 2 uses
  call void @strbuf_release(ptr noundef nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %check_dotfile.exit, label %bb.dm, !llvm.loop !42

.critedge244:                                     ; preds = %bb.d, %.critedge243
  %i.xq = phi ptr [ %i.t, %.critedge243 ], [ %.pre, %bb.d ] ; 2 uses
  %i.xr = load ptr, ptr @stderr, align 8, !tbaa !52
  %i.xs = load ptr, ptr %1, align 8, !tbaa !43
  %.not233 = icmp eq ptr %i.xq, null
  %spec.select = select i1 %.not233, ptr @.str.48, ptr %i.xq
  %i.xt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xr, ptr noundef nonnull @.str.47, ptr noundef %i.xs, ptr noundef nonnull %spec.select) #17 ; 0 uses
  br label %check_dotfile.exit

check_dotfile.exit:                               ; preds = %bb.dw, %.lr.ph389, %.preheader353, %._crit_edge.loopexit, %.preheader354, %.preheader, %._crit_edge.loopexit.i299, %bb.bm, %._crit_edge.loopexit.i282, %bb.be, %._crit_edge.loopexit.i265, %bb.aw, %._crit_edge.loopexit.i, %bb.an, %.critedge244, %protect_ntfs_hfs_benchmark.exit, %._crit_edge375, %bb.ch, %._crit_edge380, %bb.am, %test_function.exit, %bb.ac, %bb.u, %bb.r, %._crit_edge386, %bb.o, %._crit_edge394, %._crit_edge399, %bb.c
  %.0184 = phi i32 [ 1, %.critedge244 ], [ %i.hn, %._crit_edge.loopexit.i299 ], [ 0, %.lr.ph389 ], [ 0, %protect_ntfs_hfs_benchmark.exit ], [ %i.kf, %._crit_edge375 ], [ 0, %bb.ch ], [ %i.hy, %._crit_edge380 ], [ %i.gq, %._crit_edge.loopexit.i282 ], [ %i.ft, %._crit_edge.loopexit.i265 ], [ %i.ew, %._crit_edge.loopexit.i ], [ 0, %.preheader ], [ %i.dz, %bb.am ], [ %.1.i, %test_function.exit ], [ 0, %bb.ac ], [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %._crit_edge386 ], [ 0, %bb.o ], [ 0, %bb.c ], [ 0, %._crit_edge394 ], [ 0, %._crit_edge399 ], [ 0, %bb.an ], [ 0, %bb.aw ], [ 0, %bb.be ], [ 0, %bb.bm ], [ %i.wr, %._crit_edge.loopexit ], [ 0, %.preheader354 ], [ 0, %.preheader353 ], [ %.1, %bb.dw ]
  ret i32 %.0184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @xmallocz(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare i32 @normalize_path_copy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @strbuf_realpath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

declare i32 @strbuf_readlink(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die_errno(ptr noundef, ...) local_unnamed_addr #6

declare ptr @absolute_path(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

declare ptr @xstrdup(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #6

declare i32 @string_list_split(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @filter_string_list(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @normalize_ceiling_entry(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23     ; 5 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  switch i8 %i.b, label %bb.c [
    i8 0, label %bb.b
    i8 47, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.49) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a) #16
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.c = tail call i32 @normalize_path_copy(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a) #15
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @die(ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  ret i32 1
}

declare i32 @longest_ancestor_length(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @string_list_clear(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare ptr @setup_git_directory_gently(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @prefix_path(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @strip_path_suffix(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @relative_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @test_function(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  %.not39 = icmp eq ptr %i.c, null
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %i.d = phi ptr [ %i.s, %bb.h ], [ %i.b, %bb.a ]
  %.03240 = phi i32 [ %.1, %bb.h ], [ 0, %bb.a ]  ; 2 uses
  %i.e = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = call i32 (ptr, i64, ptr, ...) @xsnprintf(ptr noundef nonnull %i.a, i64 noundef 1024, ptr noundef nonnull @.str.54, ptr noundef nonnull %i.f) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.sink = phi ptr [ %i.a, %bb.b ], [ null, %.lr.ph ]
  %i.h = call ptr %1(ptr noundef %.sink) #15, !callees !65 ; 4 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !19   ; 3 uses
  %i.j = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.i) #14
  %.not36 = icmp eq i32 %i.j, 0
  br i1 %.not36, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !20   ; 3 uses
  %.not37 = icmp eq ptr %i.l, null
  br i1 %.not37, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.n = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.55, ptr noundef %2, ptr noundef %i.m, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i) #15 ; 0 uses
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.o = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef nonnull dereferenceable(1) %i.l) #14
  %.not38 = icmp eq i32 %i.o, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !18
  %i.q = call i32 (ptr, ...) @error(ptr noundef nonnull @.str.56, ptr noundef %2, ptr noundef %i.p, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.l) #15 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g, %bb.f, %bb.c
  %.1 = phi i32 [ %.03240, %bb.c ], [ %.03240, %bb.f ], [ 1, %bb.g ], [ 1, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %indvars.iv.next
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.h, %bb.a
  %.032.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i32 %.032.lcssa
}

; Function Attrs: nounwind uwtable
define internal ptr @posix_dirname(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @dirname(ptr noundef %0) #15
  ret ptr %i.a
}

declare i32 @is_hfs_dotgitmodules(ptr noundef) local_unnamed_addr #3

declare i32 @is_ntfs_dotgitmodules(ptr noundef) local_unnamed_addr #3

declare i32 @is_hfs_dotgitignore(ptr noundef) local_unnamed_addr #3

declare i32 @is_ntfs_dotgitignore(ptr noundef) local_unnamed_addr #3

declare i32 @is_hfs_dotgitattributes(ptr noundef) local_unnamed_addr #3

declare i32 @is_ntfs_dotgitattributes(ptr noundef) local_unnamed_addr #3

declare i32 @is_hfs_dotmailmap(ptr noundef) local_unnamed_addr #3

declare i32 @is_ntfs_dotmailmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #8

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmp_by_st_size(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.e = icmp sgt ptr %i.b, %i.d
  %i.f = icmp slt ptr %i.b, %i.d
  %i.g = zext i1 %i.f to i32
  %i.h = select i1 %i.e, i32 -1, i32 %i.g
  ret i32 %i.h
}

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare i32 @xsnprintf(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @__xpg_basename(ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind
declare ptr @dirname(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

declare ptr @xmalloc(i64 noundef) local_unnamed_addr #3

declare i64 @getnanotime() local_unnamed_addr #3

declare i32 @verify_path(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: nofree nounwind
declare noundef i32 @lstat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #9

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !15}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!9, !9, i64 0}
!17 = !{!"test_data", !14, i64 0, !14, i64 8, !14, i64 16}
!18 = !{!17, !14, i64 0}
!19 = !{!17, !14, i64 8}
!20 = !{!17, !14, i64 16}
!21 = !{!"string_list_item", !14, i64 0, !13, i64 8}
!22 = !{!21, !13, i64 8}
!23 = !{!21, !14, i64 0}
!24 = distinct !{!24, !15}
!25 = distinct !{!25, !15}
!26 = distinct !{!26, !15}
!27 = distinct !{!27, !15}
!28 = distinct !{null}
!29 = distinct !{!29, !15}
!30 = distinct !{!30, !15}
!31 = distinct !{null}
!32 = distinct !{!32, !15}
!33 = distinct !{!33, !15}
!34 = distinct !{!34, !15}
!35 = distinct !{!35, !15}
!36 = distinct !{!36, !15}
!37 = distinct !{!37, !15}
!38 = distinct !{!38, !15}
!39 = distinct !{!39, !15}
!40 = distinct !{!40, !15}
!41 = distinct !{!41, !15}
!42 = distinct !{!42, !15}
!43 = !{!14, !14, i64 0}
!44 = !{!"long", !9, i64 0}
!45 = !{!"strbuf", !44, i64 0, !44, i64 8, !14, i64 16}
!46 = !{!45, !14, i64 16}
!47 = !{!"p1 _ZTS10repository", !13, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{ptr @is_hfs_dotgitattributes, ptr @is_hfs_dotgitignore, ptr @is_hfs_dotgitmodules, ptr @is_hfs_dotmailmap}
!50 = !{ptr @is_ntfs_dotgitattributes, ptr @is_ntfs_dotgitignore, ptr @is_ntfs_dotgitmodules, ptr @is_ntfs_dotmailmap}
!51 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!52 = !{!51, !51, i64 0}
!53 = !{!"timespec", !44, i64 0, !44, i64 8}
!54 = !{!"stat", !44, i64 0, !44, i64 8, !44, i64 16, !10, i64 24, !10, i64 28, !10, i64 32, !10, i64 36, !44, i64 40, !44, i64 48, !44, i64 56, !44, i64 64, !53, i64 72, !53, i64 88, !53, i64 104, !9, i64 120}
!55 = !{!54, !44, i64 48}
!56 = !{!"p1 _ZTS16string_list_item", !13, i64 0}
!57 = !{!"string_list", !56, i64 0, !44, i64 8, !44, i64 16, !10, i64 24, !13, i64 32}
!58 = !{!57, !44, i64 8}
!59 = !{!57, !56, i64 0}
!60 = !{!10, !10, i64 0}
!61 = !{!44, !44, i64 0}
!62 = !{!"double", !9, i64 0}
!63 = !{!62, !62, i64 0}
!64 = !{!54, !10, i64 28}
!65 = distinct !{null, ptr @posix_dirname}
end_hunk_0
