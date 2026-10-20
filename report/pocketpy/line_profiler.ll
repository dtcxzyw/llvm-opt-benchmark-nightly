Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pocketpy/original/line_profiler?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
begin_hunk_0_@LineProfiler__tracefunc_internal:bb.a
  store i64 %i.a, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.q, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !60
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i8 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !61
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 25
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.0..sroa_idx, i8 0, i64 7, i1 false)
  %i.bl = load i32, ptr %i.bb, align 8, !tbaa !27
  %i.bm = add nsw i32 %i.bl, 1
  store i32 %i.bm, ptr %i.bb, align 8, !tbaa !27
  br label %bb.n

bb.l:                                             ; preds = %LineProfiler__get_record.exit
  %i.bn = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.bn, align 8, !tbaa !26
  %i.bo = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %.val29 = load i32, ptr %i.bo, align 8, !tbaa !27 ; 2 uses
  %i.bp = sext i32 %.val29 to i64
  %i.bq = getelementptr [32 x i8], ptr %.val, i64 %i.bp ; 4 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 -8
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !31, !range !32, !noundef !33
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %LineProfiler__increment_now.exit32, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = getelementptr i8, ptr %i.bq, i64 -16
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !34 ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bq, i64 -24    ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !35
  %i.by = sub i64 %i.a, %i.bx
  store i64 %i.a, ptr %i.bw, align 8, !tbaa !35
  %i.bz = load i64, ptr %i.bv, align 8, !tbaa !37
  %i.ca = add nsw i64 %i.bz, 1
  store i64 %i.ca, ptr %i.bv, align 8, !tbaa !37
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !38
  %i.cd = add nsw i64 %i.by, %i.cc
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !38
  br label %LineProfiler__increment_now.exit32

LineProfiler__increment_now.exit32:               ; preds = %bb.l, %bb.m
  %i.ce = getelementptr i8, ptr %i.bq, i64 -16
  store ptr null, ptr %i.ce, align 8, !tbaa !34
  %i.cf = add nsw i32 %.val29, -1
  store i32 %i.cf, ptr %i.bo, align 8, !tbaa !27
  br label %bb.n

bb.n:                                             ; preds = %LineProfiler__get_record.exit, %bb.k, %LineProfiler__increment_now.exit32, %LineProfiler__increment_now.exit
  ret void
}

; Function Attrs: nounwind
declare i64 @clock() local_unnamed_addr #6

declare { ptr, i32 } @Frame__source_location(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @py_istype(ptr noundef, i16 noundef signext) local_unnamed_addr #1

declare ptr @py_touserdata(ptr noundef) local_unnamed_addr #1

declare void @c11_vector__reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @c11_vector__nextcap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @LineProfiler__end(ptr nofree noundef captures(none) initializes((48, 49)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @clock() #8                ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.e, align 8, !tbaa !26
  %.val3 = load i32, ptr %i.a, align 8, !tbaa !27
  %i.f = sext i32 %.val3 to i64
  %i.g = getelementptr [32 x i8], ptr %.val, i64 %i.f ; 4 uses
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i8, ptr %i.h, align 8, !tbaa !31, !range !32, !noundef !33
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %LineProfiler__increment_now.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.g, i64 -16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !34   ; 3 uses
  %i.m = getelementptr i8, ptr %i.g, i64 -24      ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !35
  %i.o = sub i64 %i.d, %i.n
  store i64 %i.d, ptr %i.m, align 8, !tbaa !35
  %i.p = load i64, ptr %i.l, align 8, !tbaa !37
  %i.q = add nsw i64 %i.p, 1
  store i64 %i.q, ptr %i.l, align 8, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %i.t = add nsw i64 %i.o, %i.s
  store i64 %i.t, ptr %i.r, align 8, !tbaa !38
  br label %LineProfiler__increment_now.exit

LineProfiler__increment_now.exit:                 ; preds = %bb.b, %bb.c
  %i.u = getelementptr i8, ptr %i.g, i64 -16
  store ptr null, ptr %i.u, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %LineProfiler__increment_now.exit, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.v, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define void @LineProfiler__reset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %LineProfiler__dtor.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !16 ; 5 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !18
  %i.f = load i32, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !22
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !22
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !23
  tail call void %i.j(ptr noundef nonnull %.sroa.0.0.copyload.i) #8, !inline_history !62
  tail call void @free(ptr noundef nonnull %.sroa.0.0.copyload.i) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.k = inttoptr i64 %.sroa.4.0.copyload.i to ptr
  tail call void @free(ptr noundef %i.k) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8, !tbaa !14
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next.i, %i.m
  br i1 %i.n, label %.lr.ph.i, label %LineProfiler__dtor.exit, !llvm.loop !0

LineProfiler__dtor.exit:                          ; preds = %bb.c, %bb.a
  tail call void @c11_smallmap_p2i__dtor(ptr noundef nonnull %0) #8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @c11_vector__dtor(ptr noundef nonnull %i.o) #8
  tail call void @c11_smallmap_p2i__ctor(ptr noundef nonnull %0) #8
  tail call void @c11_vector__ctor(ptr noundef nonnull %i.o, i32 noundef 32) #8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 0, ptr %i.p, align 8, !tbaa !13
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @LineProfiler__get_report(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.c11_sbuf, align 8           ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  call void @c11_sbuf__ctor(ptr noundef nonnull %1) #8
  call void @c11_sbuf__write_char(ptr noundef nonnull %1, i8 noundef signext 123) #8
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str) #8
  call void @c11_sbuf__write_i64(ptr noundef nonnull %1, i64 noundef 1000000) #8
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #8
  call void @c11_sbuf__write_char(ptr noundef nonnull %1, i8 noundef signext 123) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !14
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph30, label %._crit_edge31

._crit_edge31:                                    ; preds = %bb.h, %bb.a
  call void @c11_sbuf__write_char(ptr noundef nonnull %1, i8 noundef signext 125) #8
  call void @c11_sbuf__write_char(ptr noundef nonnull %1, i8 noundef signext 125) #8
  %i.d = call ptr @c11_sbuf__submit(ptr noundef nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  ret ptr %i.d

.lr.ph30:                                         ; preds = %bb.a, %bb.h
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %indvars.iv32 ; 2 uses
  %.sroa.014.0.copyload = load ptr, ptr %i.f, align 8, !tbaa !16 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.415.0.copyload = load i64, ptr %.sroa.415.0..sroa_idx, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 48
  %i.h = load i32, ptr %i.g, align 8, !tbaa !25   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.014.0.copyload, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !65
  %i.k = call { ptr, i32 } @c11_string__sv(ptr noundef %i.j) #8 ; 2 uses
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = extractvalue { ptr, i32 } %i.k, 1
  call void @c11_sbuf__write_quoted(ptr noundef nonnull %1, ptr %i.l, i32 %i.m, i8 noundef signext 34) #8
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) #8
  %i.n = inttoptr i64 %.sroa.415.0.copyload to ptr
  %.not25 = icmp slt i32 %i.h, 1
  br i1 %.not25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph30
  %2 = add nuw i32 %i.h, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.lr.ph30
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.4) #8
  %i.o = load i32, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.p = add nsw i32 %i.o, -1
  %i.q = sext i32 %i.p to i64
  %i.r = icmp slt i64 %indvars.iv32, %i.q
  br i1 %i.r, label %bb.g, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %.02326 = phi i1 [ true, %.lr.ph.preheader ], [ %.1, %bb.f ] ; 2 uses
  %i.s = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %indvars.iv ; 4 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !37
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  br i1 %.02326, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @c11_sbuf__write_char(ptr noundef nonnull %1, i8 noundef signext 91) #8
  %i.y = trunc nuw nsw i64 %indvars.iv to i32
  call void @c11_sbuf__write_int(ptr noundef nonnull %1, i32 noundef %i.y) #8
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  %i.z = load i64, ptr %i.s, align 8, !tbaa !37
  call void @c11_sbuf__write_i64(ptr noundef nonnull %1, i64 noundef %i.z) #8
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  call void @c11_sbuf__write_i64(ptr noundef nonnull %1, i64 noundef %i.ab) #8
  call void @c11_sbuf__write_char(ptr noundef nonnull %1, i8 noundef signext 93) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e
  %.1 = phi i1 [ %.02326, %bb.b ], [ false, %bb.e ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !63

bb.g:                                             ; preds = %._crit_edge
  call void @c11_sbuf__write_cstr(ptr noundef nonnull %1, ptr noundef nonnull @.str.3) #8
  %.pre = load i32, ptr %i.a, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.ac = phi i32 [ %.pre, %bb.g ], [ %i.o, %._crit_edge ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next33, %i.ad
  br i1 %i.ae, label %.lr.ph30, label %._crit_edge31, !llvm.loop !64
}

declare void @c11_sbuf__ctor(ptr noundef) local_unnamed_addr #1

declare void @c11_sbuf__write_char(ptr noundef, i8 noundef signext) local_unnamed_addr #1

declare void @c11_sbuf__write_cstr(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @c11_sbuf__write_i64(ptr noundef, i64 noundef) local_unnamed_addr #1

declare { ptr, i32 } @c11_string__sv(ptr noundef) local_unnamed_addr #1

declare void @c11_sbuf__write_quoted(ptr noundef, ptr, i32, i8 noundef signext) local_unnamed_addr #1

declare void @c11_sbuf__write_int(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @c11_sbuf__submit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #8 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !24}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"c11_vector", !9, i64 0, !6, i64 8, !6, i64 12, !6, i64 16}
!11 = !{!"_Bool", !5, i64 0}
!12 = !{!"LineProfiler", !10, i64 0, !10, i64 24, !11, i64 48}
!13 = !{!12, !11, i64 48}
!14 = !{!12, !6, i64 8}
!15 = !{!12, !9, i64 0}
!16 = !{!9, !9, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"RefCounted", !6, i64 0, !9, i64 8}
!20 = !{!"p1 _ZTS10c11_string", !9, i64 0}
!21 = !{!"SourceData", !19, i64 0, !6, i64 16, !11, i64 20, !20, i64 24, !20, i64 32, !10, i64 40}
!22 = !{!21, !6, i64 0}
!23 = !{!21, !9, i64 8}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!21, !6, i64 48}
!26 = !{!12, !9, i64 24}
!27 = !{!12, !6, i64 32}
!28 = !{!"p1 _ZTS8py_Frame", !9, i64 0}
!29 = !{!"p1 _ZTS10LineRecord", !9, i64 0}
!30 = !{!"FrameRecord", !28, i64 0, !17, i64 8, !29, i64 16, !11, i64 24}
!31 = !{!30, !11, i64 24}
!32 = !{i8 0, i8 2}
!33 = !{}
!34 = !{!30, !29, i64 16}
!35 = !{!30, !17, i64 8}
!36 = !{!"LineRecord", !17, i64 0, !17, i64 8}
!37 = !{!36, !17, i64 0}
!38 = !{!36, !17, i64 8}
!39 = !{!"p1 _ZTS10CodeObject", !9, i64 0}
!40 = !{!"p1 _ZTS9py_TValue", !9, i64 0}
!41 = !{!"py_Frame", !28, i64 0, !39, i64 8, !40, i64 16, !40, i64 24, !40, i64 32, !40, i64 40, !11, i64 48, !6, i64 52, !10, i64 56}
!42 = !{!41, !11, i64 48}
!43 = !{!41, !40, i64 16}
!44 = !{!"p1 _ZTS8FuncDecl", !9, i64 0}
!45 = !{!"short", !5, i64 0}
!46 = !{!"py_TValue", !45, i64 0, !11, i64 2, !6, i64 4, !5, i64 8}
!47 = !{!"p1 _ZTS8NameDict", !9, i64 0}
!48 = !{!"p1 _ZTS8PyObject", !9, i64 0}
!49 = !{!"Function", !44, i64 0, !40, i64 8, !46, i64 16, !47, i64 40, !48, i64 48, !9, i64 56}
!50 = !{!49, !44, i64 0}
!51 = !{!"p1 _ZTS10SourceData", !9, i64 0}
!52 = !{!"CodeObject", !51, i64 0, !20, i64 8, !10, i64 16, !10, i64 40, !10, i64 64, !10, i64 88, !10, i64 112, !6, i64 136, !10, i64 144, !10, i64 168, !10, i64 192, !10, i64 216, !6, i64 240, !6, i64 244}
!53 = !{!"p1 omnipotent char", !9, i64 0}
!54 = !{!"FuncDecl", !19, i64 0, !52, i64 16, !10, i64 264, !10, i64 288, !6, i64 312, !6, i64 316, !11, i64 320, !53, i64 328, !6, i64 336, !10, i64 344}
!55 = !{!54, !20, i64 24}
!56 = !{!6, !6, i64 0}
!57 = !{!5, !5, i64 0}
!58 = !{!12, !6, i64 36}
!59 = !{!28, !28, i64 0}
!60 = !{!29, !29, i64 0}
!61 = !{!11, !11, i64 0}
!62 = !{ptr @LineProfiler__dtor}
!63 = distinct !{!63, !24}
!64 = distinct !{!64, !24}
!65 = !{!21, !20, i64 24}
end_hunk_0
