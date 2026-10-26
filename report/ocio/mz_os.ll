Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/mz_os?download=true
inline.NumInlined: 2
begin_hunk_0_@mz_path_remove_extension:bb.a
  br i1 %i.c, label %.lr.ph, label %.loopexit

bb.c:                                             ; preds = %bb.d
  %.0 = getelementptr inbounds i8, ptr %.025, i64 -1 ; 3 uses
  %i.d = icmp ugt ptr %.0, %0
  br i1 %i.d, label %.lr.ph, label %.loopexit, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.025 = phi ptr [ %.0, %bb.c ], [ %.024, %bb.b ] ; 6 uses
  %i.e = load i8, ptr %.025, align 1, !tbaa !9
  %i.f = tail call i32 @mz_os_is_dir_separator(i8 noundef signext %i.e) #10
  %.not14 = icmp eq i32 %i.f, 0
  br i1 %.not14, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %i.g = load i8, ptr %.025, align 1, !tbaa !9
  %i.h = icmp eq i8 %i.g, 46
  br i1 %i.h, label %bb.e, label %bb.c, !llvm.loop !21

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %.025, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.b, %bb.e
  %.023 = phi ptr [ %.025, %bb.e ], [ %.024, %bb.b ], [ %.025, %.lr.ph ], [ %.0, %bb.c ]
  %i.i = icmp eq ptr %.023, %0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.loopexit
  store i8 0, ptr %0, align 1, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %bb.f, %bb.a
  %.012 = phi i32 [ -102, %bb.a ], [ 0, %bb.f ], [ 0, %.loopexit ]
  ret i32 %.012
}

; Function Attrs: nounwind uwtable
define range(i32 -107, 1) i32 @mz_path_get_filename(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !24
  %i.c = load i8, ptr %0, align 1, !tbaa !9       ; 2 uses
  %.not16 = icmp eq i8 %i.c, 0
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %i.d = phi i8 [ %i.h, %bb.d ], [ %i.c, %bb.b ]
  %.017 = phi ptr [ %i.g, %bb.d ], [ %0, %bb.b ]  ; 2 uses
  %i.e = tail call i32 @mz_os_is_dir_separator(i8 noundef signext %i.d) #10
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.017, i64 1
  store ptr %i.f, ptr %1, align 8, !tbaa !24
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.017, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9     ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !22

._crit_edge.loopexit:                             ; preds = %bb.d
  %.pre = load ptr, ptr %1, align 8, !tbaa !24
  %i.i = icmp eq ptr %.pre, null
  %i.j = select i1 %i.i, i32 -107, i32 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit, %bb.a
  %.011 = phi i32 [ -102, %bb.a ], [ %i.j, %._crit_edge.loopexit ], [ -107, %bb.b ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define i32 @mz_dir_make(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !9
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @strdup(ptr noundef nonnull %0) #10 ; 7 uses
  %.not26 = icmp eq ptr %i.b, null
  br i1 %.not26, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #9 ; 2 uses
  %i.d = trunc i64 %i.c to i32
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader.i, label %mz_path_remove_slash.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.f = and i64 %i.c, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.f, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !9
  %i.i = tail call i32 @mz_os_is_dir_separator(i8 noundef signext %i.h) #10
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %mz_path_remove_slash.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.g, align 1, !tbaa !9
  %i.j = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.j, label %.lr.ph.i, label %mz_path_remove_slash.exit, !llvm.loop !0

mz_path_remove_slash.exit:                        ; preds = %.lr.ph.i, %bb.d, %bb.c
  %i.k = tail call i32 @mz_os_make_dir(ptr noundef nonnull %i.b) #10
  %.not27 = icmp eq i32 %i.k, 0
  br i1 %.not27, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %mz_path_remove_slash.exit, %.preheader.backedge
  %.pn.pn = phi ptr [ %.1, %.preheader.backedge ], [ %i.b, %mz_path_remove_slash.exit ]
  %.1 = getelementptr inbounds nuw i8, ptr %.pn.pn, i64 1 ; 5 uses
  %i.l = load i8, ptr %.1, align 1, !tbaa !9      ; 2 uses
  %.not28 = icmp eq i8 %i.l, 0
  br i1 %.not28, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.m = tail call i32 @mz_os_is_dir_separator(i8 noundef signext %i.l) #10
  %.not29 = icmp eq i32 %i.m, 0
  br i1 %.not29, label %.preheader.backedge, label %..critedge_crit_edge

.preheader.backedge:                              ; preds = %bb.e, %bb.f
  br label %.preheader, !llvm.loop !25

..critedge_crit_edge:                             ; preds = %bb.e
  %.pre = load i8, ptr %.1, align 1, !tbaa !9
  br label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %.preheader, %..critedge_crit_edge
  %i.n = phi i8 [ %.pre, %..critedge_crit_edge ], [ 0, %.preheader ] ; 2 uses
  store i8 0, ptr %.1, align 1, !tbaa !9
  %i.o = tail call i32 @mz_os_make_dir(ptr noundef nonnull %i.b) #10 ; 2 uses
  %i.p = icmp ne i32 %i.o, 0
  %i.q = icmp eq i8 %i.n, 0
  %or.cond = select i1 %i.p, i1 true, i1 %i.q
  br i1 %or.cond, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %.critedge
  store i8 %i.n, ptr %.1, align 1, !tbaa !9
  br label %.preheader.backedge

.loopexit:                                        ; preds = %.critedge, %mz_path_remove_slash.exit
  %.022 = phi i32 [ 0, %mz_path_remove_slash.exit ], [ %i.o, %.critedge ]
  tail call void @free(ptr noundef nonnull %i.b) #10
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %.loopexit
  %.023 = phi i32 [ %.022, %.loopexit ], [ 0, %bb.a ], [ -4, %bb.b ]
  ret i32 %.023
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #7

declare i32 @mz_os_make_dir(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define i32 @mz_file_get_crc(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca [16384 x i8], align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.c = tail call ptr @mz_stream_os_create() #10 ; 5 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !27
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @mz_stream_os_open(ptr noundef nonnull %i.c, ptr noundef %0, i32 noundef 1) #10 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.b, %bb.c
  %.011 = phi i32 [ %i.h, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %i.f = call i32 @mz_stream_os_read(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, i32 noundef 16384) #10 ; 4 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.h = call i32 @mz_crypt_crc32_update(i32 noundef %.011, ptr noundef nonnull %i.b, i32 noundef %i.f) #10 ; 2 uses
  %.not18 = icmp eq i32 %i.f, 0
  br i1 %.not18, label %bb.d, label %.preheader, !llvm.loop !26

bb.d:                                             ; preds = %.preheader, %bb.c
  %.112 = phi i32 [ %i.h, %bb.c ], [ %.011, %.preheader ]
  %i.i = call i32 @mz_stream_os_close(ptr noundef nonnull %i.c) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.2 = phi i32 [ %.112, %bb.d ], [ 0, %bb.b ]
  %.1 = phi i32 [ %i.f, %bb.d ], [ %i.d, %bb.b ]
  store i32 %.2, ptr %1, align 4, !tbaa !12
  call void @mz_stream_os_delete(ptr noundef nonnull %i.a) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.013 = phi i32 [ %.1, %bb.e ], [ -4, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.013
}

declare ptr @mz_stream_os_create() local_unnamed_addr #4

declare i32 @mz_stream_os_open(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @mz_stream_os_read(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @mz_crypt_crc32_update(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @mz_stream_os_close(ptr noundef) local_unnamed_addr #4

declare void @mz_stream_os_delete(ptr noundef) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!5, !5, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!6, !6, i64 0}
!13 = distinct !{!13, !10}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !10}
!16 = !{!"p1 int", !11, i64 0}
!17 = !{!16, !16, i64 0}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = !{!"p1 omnipotent char", !11, i64 0}
!24 = !{!23, !23, i64 0}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = !{!11, !11, i64 0}
end_hunk_0
