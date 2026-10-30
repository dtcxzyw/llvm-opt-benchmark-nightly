Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diagnose?download=true
inline.NumInlined: 34
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@error_errno
declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #3

declare i32 @xopen(ptr noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @init_zip_archiver() local_unnamed_addr #3

declare void @strvec_pushl(ptr noundef, ...) local_unnamed_addr #3

declare void @get_version_info(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @strbuf_addf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @write_or_die(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @strvec_pushf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noundef i32 @dir_file_stats(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %i.b) #12
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !24
  tail call void @for_each_file_in_pack_dir(ptr noundef %i.c, ptr noundef nonnull @dir_file_stats_objects, ptr noundef %1) #12
  ret i32 0
}

declare i32 @odb_for_each_alternate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @strvec_push(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @add_directory_to_archiver(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.strbuf, align 8             ; 11 uses
  %4 = alloca %struct.strbuf, align 8             ; 12 uses
  %i.a = load i8, ptr %1, align 1, !tbaa !19
  %.not = icmp eq i8 %i.a, 0                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.add_directory_to_archiver.abspath, i64 24, i1 false)
  %i.b = select i1 %.not, ptr @.str.28, ptr %1    ; 2 uses
  %i.c = tail call noalias ptr @opendir(ptr noundef nonnull %i.b) ; 4 uses
  %.not29 = icmp eq ptr %i.c, null
  br i1 %.not29, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__errno_location() #15
  %i.e = load i32, ptr %i.d, align 4, !tbaa !15
  %i.f = icmp eq i32 %i.e, 2
  %i.g = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i = icmp eq i32 %i.g, 0                  ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not4.i, label %_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #12
  br label %_.exit

_.exit:                                           ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.h, %bb.d ], [ @.str.39, %bb.c ]
  tail call void (ptr, ...) @warning(ptr noundef %.0.i, ptr noundef nonnull %1) #12
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  br i1 %.not4.i, label %_.exit36, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #12
  br label %_.exit36

_.exit36:                                         ; preds = %bb.e, %bb.f
  %.0.i35 = phi ptr [ %i.i, %bb.f ], [ @.str.40, %bb.e ]
  %i.j = tail call i32 (ptr, ...) @error_errno(ptr noundef %.0.i35, ptr noundef nonnull %1) #12 ; 0 uses
  br label %bb.r

bb.g:                                             ; preds = %bb.a
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.36, ptr noundef nonnull %1) #12
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !18
  %.phi.trans.insert43 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.pre44 = load ptr, ptr %.phi.trans.insert43, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = phi ptr [ %.pre44, %bb.h ], [ @strbuf_slopbuf, %bb.g ]
  %i.l = phi i64 [ %.pre, %bb.h ], [ 0, %bb.g ]   ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.o = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %0, ptr noundef nonnull @.str.41, ptr noundef %i.k) #12 ; 0 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %.not33 = icmp eq i32 %2, 0
  %i.r = call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not3151 = icmp eq ptr %i.r, null
  br i1 %.not3151, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.backedge
  %i.s = phi ptr [ %i.ar, %.backedge ], [ %i.r, %bb.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.add_directory_to_archiver.abspath, i64 24, i1 false)
  call void @strbuf_add_absolute_path(ptr noundef nonnull %4, ptr noundef nonnull %i.b) #12
  %i.t = load i64, ptr %4, align 8, !tbaa !25     ; 2 uses
  %.not.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i, label %strbuf_avail.exit.thread.i, label %strbuf_avail.exit.i

strbuf_avail.exit.i:                              ; preds = %.lr.ph
  %i.u = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %.neg.i = add i64 %i.u, 1                       ; 2 uses
  %.not.i = icmp eq i64 %i.t, %.neg.i
  br i1 %.not.i, label %strbuf_avail.exit.thread.i, label %strbuf_addch.exit

strbuf_avail.exit.thread.i:                       ; preds = %strbuf_avail.exit.i, %.lr.ph
  call void @strbuf_grow(ptr noundef nonnull %4, i64 noundef 1) #12
  %.pre.i = load i64, ptr %i.p, align 8, !tbaa !18 ; 2 uses
  %.pre7.i = add i64 %.pre.i, 1
  br label %strbuf_addch.exit

strbuf_addch.exit:                                ; preds = %strbuf_avail.exit.i, %strbuf_avail.exit.thread.i
  %.pre-phi.i = phi i64 [ %.pre7.i, %strbuf_avail.exit.thread.i ], [ %.neg.i, %strbuf_avail.exit.i ]
  %i.v = phi i64 [ %.pre.i, %strbuf_avail.exit.thread.i ], [ %i.u, %strbuf_avail.exit.i ]
  %i.w = load ptr, ptr %i.q, align 8, !tbaa !17
  store i64 %.pre-phi.i, ptr %i.p, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 47, ptr %i.x, align 1, !tbaa !19
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.z = load i64, ptr %i.p, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !19
  %i.ab = call zeroext i8 @get_dtype(ptr noundef nonnull %i.s, ptr noundef nonnull %4, i32 noundef 0) #12
  %i.ac = load i64, ptr %3, align 8, !tbaa !25
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.ac, i64 1)
  %i.ad = icmp ugt i64 %i.l, %spec.select.i
  br i1 %i.ad, label %bb.j, label %bb.k

bb.j:                                             ; preds = %strbuf_addch.exit
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.25, i32 noundef 167, ptr noundef nonnull @.str.26) #13
  unreachable

bb.k:                                             ; preds = %strbuf_addch.exit
  store i64 %i.l, ptr %i.m, align 8, !tbaa !18
  %i.ae = load ptr, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  %.not9.i = icmp eq ptr %i.ae, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.l
  store i8 0, ptr %i.af, align 1, !tbaa !19
  br label %strbuf_setlen.exit

bb.m:                                             ; preds = %bb.k
  %i.ag = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !19
  %.not10.i = icmp eq i8 %i.ag, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @__assert_fail(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.25, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #13
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.l, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 19 ; 2 uses
  %i.ai = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #11
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull %i.ah, i64 noundef %i.ai) #12
  switch i8 %i.ab, label %bb.o [
    i8 8, label %.split
    i8 4, label %bb.q
  ]

.split:                                           ; preds = %strbuf_setlen.exit
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.ak = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef %i.aj) #12 ; 0 uses
  br label %.backedge.sink.split

bb.o:                                             ; preds = %strbuf_setlen.exit
  %i.al = load i32, ptr @git_gettext_enabled, align 4, !tbaa !15
  %.not4.i37 = icmp eq i32 %i.al, 0
  br i1 %.not4.i37, label %_.exit39, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.am = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #12
  br label %_.exit39

_.exit39:                                         ; preds = %bb.o, %bb.p
  %.0.i38 = phi ptr [ %i.am, %bb.p ], [ @.str.43, %bb.o ]
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !17
  call void (ptr, ...) @warning(ptr noundef %.0.i38, ptr noundef %i.an) #12
  br label %.backedge.sink.split

bb.q:                                             ; preds = %strbuf_setlen.exit
  br i1 %.not33, label %.backedge.sink.split, label %.split50

.split50:                                         ; preds = %bb.q
  %i.ao = load ptr, ptr %i.n, align 8, !tbaa !17
  %i.ap = call fastcc i32 @add_directory_to_archiver(ptr noundef %0, ptr noundef %i.ao, i32 noundef %2)
  %i.aq = icmp sgt i32 %i.ap, -1
  call void @strbuf_release(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %i.aq, label %.backedge, label %.critedge

.backedge.sink.split:                             ; preds = %bb.q, %_.exit39, %.split
  call void @strbuf_release(ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.backedge

.backedge:                                        ; preds = %.backedge.sink.split, %.split50
  %i.ar = call ptr @readdir_skip_dot_and_dotdot(ptr noundef nonnull %i.c) #12 ; 2 uses
  %.not31 = icmp eq ptr %i.ar, null
  br i1 %.not31, label %.critedge, label %.lr.ph, !llvm.loop !79

.critedge:                                        ; preds = %.backedge, %.split50, %bb.i
  %.0.lcssa = phi i32 [ 0, %bb.i ], [ 0, %.backedge ], [ -1, %.split50 ]
  %i.as = call i32 @closedir(ptr noundef nonnull %i.c) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %3) #12
  br label %bb.r

bb.r:                                             ; preds = %.critedge, %_.exit36, %_.exit
  %.024 = phi i32 [ %.0.lcssa, %.critedge ], [ 0, %_.exit ], [ -1, %_.exit36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret i32 %.024
}

declare ptr @oid_to_hex(ptr noundef) local_unnamed_addr #3

declare ptr @xmemdupz(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @write_archive(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare void @strvec_clear(ptr noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @BUG_fl(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

declare void @strbuf_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @strbuf_realpath(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @statvfs64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare void @strbuf_humanise_bytes(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @for_each_file_in_pack_dir(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @dir_file_stats_objects(ptr nofree noundef readonly captures(none) %0, i64 %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.a = call i32 @stat64(ptr noundef %0, ptr noundef nonnull %4) #12
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !82
  tail call void (ptr, ptr, ...) @strbuf_addf(ptr noundef %3, ptr noundef nonnull @.str.33, ptr noundef %2, i64 noundef %i.c) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr noundef readonly captures(none)) local_unnamed_addr #5

declare void @strbuf_add_absolute_path(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @readdir_skip_dot_and_dotdot(ptr noundef) local_unnamed_addr #3

declare zeroext i8 @get_dtype(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @hex_to_bytes(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr noundef captures(none)) local_unnamed_addr #5

declare void @strbuf_grow(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

declare void @warning(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind willreturn memory(none) }

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
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"long", !8, i64 0}
!15 = !{!9, !9, i64 0}
!16 = !{!"strbuf", !14, i64 0, !14, i64 8, !13, i64 16}
!17 = !{!16, !13, i64 16}
!18 = !{!16, !14, i64 8}
!19 = !{!8, !8, i64 0}
!20 = !{!"p1 _ZTS15object_database", !12, i64 0}
!21 = !{!"_Bool", !8, i64 0}
!22 = !{!"p1 _ZTS10odb_source", !12, i64 0}
!23 = !{!"odb_source", !22, i64 0, !20, i64 8, !9, i64 16, !21, i64 20, !9, i64 24, !13, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144}
!24 = !{!23, !13, i64 32}
!25 = !{!16, !14, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
!27 = !{!"option", !9, i64 0, !9, i64 4, !13, i64 8, !12, i64 16, !14, i64 24, !13, i64 32, !13, i64 40, !9, i64 48, !12, i64 56, !14, i64 64, !12, i64 72, !14, i64 80, !12, i64 88}
!28 = !{!27, !12, i64 16}
!29 = !{!"diagnose_option", !9, i64 0, !13, i64 8}
!30 = !{!29, !9, i64 0}
!31 = !{!27, !13, i64 8}
!32 = distinct !{!32, !26}
!33 = distinct !{!33, !26}
!34 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!35 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!36 = !{!"any p2 pointer", !12, i64 0}
!37 = !{!"p2 _ZTS13hashmap_entry", !36, i64 0}
!38 = !{!"hashmap", !37, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!39 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!40 = !{!"strmap", !38, i64 0, !39, i64 48, !9, i64 56}
!41 = !{!"repo_path_cache", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!42 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!43 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !42, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !14, i64 96, !14, i64 104, !14, i64 112, !14, i64 120, !9, i64 128, !13, i64 136}
!44 = !{!"p1 _ZTS10config_set", !12, i64 0}
!45 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!46 = !{!"p1 _ZTS11index_state", !12, i64 0}
!47 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!48 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!49 = !{!"repo_config_values", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!50 = !{!"p1 _ZTS6strmap", !12, i64 0}
!51 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!52 = !{!"string_list", !51, i64 0, !14, i64 8, !14, i64 16, !9, i64 24, !12, i64 32}
!53 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!54 = !{!"repository", !13, i64 0, !13, i64 8, !20, i64 16, !34, i64 24, !35, i64 32, !21, i64 40, !40, i64 48, !40, i64 112, !41, i64 176, !13, i64 232, !13, i64 240, !13, i64 248, !21, i64 256, !21, i64 257, !13, i64 264, !43, i64 272, !44, i64 416, !45, i64 424, !46, i64 432, !47, i64 440, !48, i64 448, !48, i64 456, !49, i64 464, !9, i64 512, !13, i64 520, !9, i64 528, !9, i64 532, !50, i64 536, !9, i64 544, !40, i64 552, !52, i64 616, !13, i64 656, !53, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !21, i64 689, !21, i64 690}
!55 = !{!54, !13, i64 248}
!56 = !{!"statvfs", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !9, i64 88, !8, i64 92}
!57 = !{!56, !14, i64 0}
!58 = !{!56, !14, i64 32}
!59 = !{!56, !14, i64 72}
!60 = !{!54, !20, i64 16}
!61 = !{!"p1 _ZTS10repository", !12, i64 0}
!62 = !{!"p1 _ZTS15odb_transaction", !12, i64 0}
!63 = !{!"p2 _ZTS10odb_source", !36, i64 0}
!64 = !{!"p1 _ZTS15kh_odb_path_map", !12, i64 0}
!65 = !{!"oidmap", !38, i64 0}
!66 = !{!"p1 _ZTS12commit_graph", !12, i64 0}
!67 = !{!"object_database", !61, i64 0, !62, i64 8, !22, i64 16, !63, i64 24, !64, i64 32, !9, i64 40, !13, i64 48, !65, i64 56, !9, i64 104, !8, i64 112, !66, i64 152, !9, i64 160, !22, i64 168, !14, i64 176, !9, i64 184, !9, i64 188, !52, i64 192}
!68 = !{!67, !22, i64 16}
!69 = !{!54, !48, i64 448}
!70 = !{!"p1 _ZTS9object_id", !12, i64 0}
!71 = !{!"git_hash_algo", !13, i64 0, !9, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !70, i64 80, !70, i64 88, !70, i64 96, !48, i64 104}
!72 = !{!71, !70, i64 80}
!73 = !{!"p2 omnipotent char", !36, i64 0}
!74 = !{!"strvec", !73, i64 0, !14, i64 8, !14, i64 16}
!75 = !{!74, !73, i64 0}
!76 = !{!74, !14, i64 8}
!77 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!78 = !{!77, !77, i64 0}
!79 = distinct !{!79, !26}
!80 = !{!"timespec", !14, i64 0, !14, i64 8}
end_hunk_0
