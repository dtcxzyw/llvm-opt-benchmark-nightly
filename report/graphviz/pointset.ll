Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/pointset?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0_@inPS:bb.a
  store double %1, ptr %i.a, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %2, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !13
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = call ptr %i.b(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 4) #10
  %.not = icmp ne ptr %i.c, null
  %i.d = zext i1 %.not to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @isInPS(ptr noundef %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.pair, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  store double %1, ptr %i.a, align 8, !tbaa !13
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  store double %2, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !13
  %i.b = load ptr, ptr %0, align 8, !tbaa !19
  %i.c = call ptr %i.b(ptr noundef nonnull %0, ptr noundef nonnull %3, i32 noundef 4) #10, !inline_history !24
  %.not.i = icmp ne ptr %i.c, null
  %i.d = zext i1 %.not.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define i32 @sizeOf(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dtsize(ptr noundef %0) #10
  ret i32 %i.a
}

declare i32 @dtsize(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define noundef ptr @pointsOf(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dtsize(ptr noundef %0) #10 ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  %i.c = tail call noalias ptr @calloc(i64 noundef 0, i64 noundef 16) #11
  br label %gv_calloc.exit

bb.b:                                             ; preds = %bb.a
  %mul.ov.i = icmp slt i32 %i.a, 0
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.e = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.d, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 16) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2147483648) %i.b, i64 noundef 16) #11 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %gv_calloc.exit

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.i = shl nuw nsw i64 %i.b, 4
  %i.j = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str.2, i64 noundef %i.i) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.d
  %i.k = phi ptr [ %i.c, %.thread.i ], [ %i.f, %bb.d ] ; 2 uses
  %i.l = tail call ptr @dtflatten(ptr noundef %0) #10 ; 2 uses
  %.not9 = icmp eq ptr %i.l, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %gv_calloc.exit, %.lr.ph
  %.011 = phi ptr [ %i.m, %.lr.ph ], [ %i.k, %gv_calloc.exit ] ; 2 uses
  %.0810 = phi ptr [ %i.o, %.lr.ph ], [ %i.l, %gv_calloc.exit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.011, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.0810, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !26
  %i.o = load ptr, ptr %.0810, align 8, !tbaa !27 ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %gv_calloc.exit
  ret ptr %i.k
}

declare ptr @dtflatten(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define ptr @newPM() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @Dtoset, align 8, !tbaa !9
  %i.b = tail call ptr @dtopen(ptr noundef nonnull @intMPairDisc, ptr noundef %i.a) #10
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define void @clearPM(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !19
  %i.b = tail call ptr %i.a(ptr noundef nonnull %0, ptr noundef null, i32 noundef 64) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @freePM(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dtclose(ptr noundef %0) #10 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @insertPM(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.mpair, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %1, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %2, ptr %i.b, align 4, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %3, ptr %i.c, align 8, !tbaa !23
  %i.d = load ptr, ptr %0, align 8, !tbaa !19
  %i.e = call ptr %i.d(ptr noundef nonnull %0, ptr noundef nonnull %4, i32 noundef 1) #10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  ret i32 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmppair(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !32  ; 2 uses
  %i.b = load double, ptr %1, align 8, !tbaa !32  ; 2 uses
  %i.c = fcmp ogt double %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = fcmp olt double %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load double, ptr %i.e, align 8, !tbaa !33 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load double, ptr %i.g, align 8, !tbaa !33 ; 2 uses
  %i.i = fcmp ogt double %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = fcmp olt double %i.f, %i.h
  %. = sext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #6 {
bb.a:
  tail call void @exit(i32 noundef 1) #14
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define internal nonnull ptr @mkMPair(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #11 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %gv_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !11
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.2, i64 noundef 32) #12 ; 0 uses
  tail call fastcc void @graphviz_exit() #13
  unreachable

gv_alloc.exit:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  store i64 %i.g, ptr %i.e, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.i, ptr %i.j, align 8, !tbaa !23
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @cmpmpair(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !34     ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !34     ; 2 uses
  %i.c = icmp sgt i32 %i.a, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %i.a, %i.b
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !35   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !35   ; 2 uses
  %i.i = icmp sgt i32 %i.f, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.f, %i.h
  %. = sext i1 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.c ], [ 1, %bb.a ], [ -1, %bb.b ], [ %., %bb.d ]
  ret i32 %.0
}

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { cold nounwind }
attributes #13 = { noreturn }
attributes #14 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !4, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 _ZTS9dtdisc_s_", !8, i64 0}
!15 = !{!"p1 _ZTS9dtlink_s_", !8, i64 0}
!16 = !{!"", !5, i64 0, !15, i64 8, !4, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!17 = !{!"p1 _ZTS5dt_s_", !8, i64 0}
!18 = !{!"dt_s_", !8, i64 0, !14, i64 8, !16, i64 16, !8, i64 56, !5, i64 64, !17, i64 72, !17, i64 80, !8, i64 88}
!19 = !{!18, !8, i64 0}
!20 = !{!"dtlink_s_", !15, i64 0, !4, i64 8}
!21 = !{!"", !5, i64 0, !5, i64 4}
!22 = !{!"", !20, i64 0, !21, i64 16, !5, i64 24}
!23 = !{!22, !5, i64 24}
!24 = !{ptr @inPS}
!25 = distinct !{!25, !28}
!26 = !{i64 0, i64 8, !13, i64 8, i64 8, !13}
!27 = !{!20, !15, i64 0}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!22, !5, i64 16}
!30 = !{!22, !5, i64 20}
!31 = !{!"pointf_s", !12, i64 0, !12, i64 8}
!32 = !{!31, !12, i64 0}
!33 = !{!31, !12, i64 8}
!34 = !{!21, !5, i64 0}
!35 = !{!21, !5, i64 4}
end_hunk_0
