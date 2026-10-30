Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-zlib?download=true
inline.NumInlined: 13
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [4 x i8] c"1.3\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_Z23hb_blob_decompress_gzipP9hb_blob_tj(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %struct.z_stream_s, align 8         ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !tbaa !8
  %i.b = call ptr @hb_blob_get_data(ptr noundef %0, ptr noundef nonnull %i.a) #5 ; 3 uses
  %i.c = icmp ne ptr %i.b, null
  %i.d = load i32, ptr %i.a, align 4              ; 2 uses
  %i.e = icmp ne i32 %i.d, 0
  %or.cond = select i1 %i.c, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i8 0, i64 104, i1 false)
  store ptr %i.b, ptr %2, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.d, ptr %i.g, align 8, !tbaa !15
  %i.h = call i32 @inflateInit2_(ptr noundef nonnull %2, i32 noundef 31, ptr noundef nonnull @.str, i32 noundef 112) #5
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 4, !tbaa !8    ; 2 uses
  %i.j = icmp ugt i32 %i.i, 3
  br i1 %i.j, label %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit, label %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit.thread

_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit:    ; preds = %bb.c
  %i.k = zext i32 %i.i to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.k
  %i.m = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.n = load i32, ptr %i.m, align 1
  %.fr = freeze i32 %i.n                          ; 2 uses
  %.not.i = icmp ult i32 %.fr, 4096
  br i1 %.not.i, label %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit.thread, label %bb.d

_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit.thread: ; preds = %bb.c, %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit
  br label %bb.d

bb.d:                                             ; preds = %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit, %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit.thread
  %i.o = phi i32 [ 4096, %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit.thread ], [ %.fr, %_ZL29hb_gzip_get_uncompressed_sizePKcjPj.exit ]
  %i.p = zext i32 %1 to i64                       ; 3 uses
  %i.q = call i32 @llvm.umin.i32(i32 %i.o, i32 %1)
  %.sroa.speculated59 = zext i32 %i.q to i64      ; 2 uses
  %i.r = call ptr @hb_malloc(i64 noundef %.sroa.speculated59) #5 ; 2 uses
  %.not44 = icmp eq ptr %i.r, null
  br i1 %.not44, label %"_ZN16hb_scope_guard_tIZ23hb_blob_decompress_gzipP9hb_blob_tjE3$_0ED2Ev.exit", label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.j
  %i.v = phi ptr [ %i.ab, %bb.j ], [ %i.r, %.preheader ] ; 5 uses
  %.0 = phi i64 [ %.3, %bb.j ], [ %.sroa.speculated59, %.preheader ] ; 4 uses
  %i.w = load i64, ptr %i.s, align 8, !tbaa !16   ; 3 uses
  %.not45 = icmp ult i64 %i.w, %i.p
  br i1 %.not45, label %bb.f, label %.thread80, !prof !17

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i64 %i.w, %.0
  br i1 %i.x, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.y = shl nuw nsw i64 %.0, 1
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.y, i64 %i.p) ; 3 uses
  %.not46 = icmp ugt i64 %.sroa.speculated, %.0
  br i1 %.not46, label %bb.h, label %.thread80, !prof !17

bb.h:                                             ; preds = %bb.g
  %i.z = call ptr @hb_realloc(ptr noundef %i.v, i64 noundef %.sroa.speculated) #5 ; 2 uses
  %.not47.not = icmp eq ptr %i.z, null
  br i1 %.not47.not, label %.thread80, label %._crit_edge, !prof !18

._crit_edge:                                      ; preds = %bb.h
  %.pre = load i64, ptr %i.s, align 8, !tbaa !16
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.f
  %i.aa = phi i64 [ %i.w, %bb.f ], [ %.pre, %._crit_edge ] ; 2 uses
  %i.ab = phi ptr [ %i.v, %bb.f ], [ %i.z, %._crit_edge ] ; 6 uses
  %.3 = phi i64 [ %.0, %bb.f ], [ %.sroa.speculated, %._crit_edge ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !19
  %i.ad = sub i64 %.3, %i.aa
  %i.ae = trunc i64 %i.ad to i32
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !20
  %i.af = call i32 @inflate(ptr noundef nonnull %2, i32 noundef 4) #5 ; 3 uses
  %i.ag = icmp eq i32 %i.af, 1
  br i1 %i.ag, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = icmp eq i32 %i.af, 0
  %i.ai = icmp eq i32 %i.af, -5
  %or.cond3 = or i1 %i.ah, %i.ai
  %i.aj = load i32, ptr %i.u, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  %or.cond6 = select i1 %or.cond3, i1 %i.ak, i1 false
  br i1 %or.cond6, label %bb.e, label %.thread80

bb.k:                                             ; preds = %bb.i
  %i.al = load i64, ptr %i.s, align 8, !tbaa !16  ; 2 uses
  %i.am = icmp ugt i64 %i.al, %i.p
  br i1 %i.am, label %.thread80, label %bb.l, !prof !18

bb.l:                                             ; preds = %bb.k
  %i.an = trunc nuw i64 %i.al to i32
  %i.ao = call ptr @hb_blob_create_or_fail(ptr noundef %i.ab, i32 noundef %i.an, i32 noundef 2, ptr noundef %i.ab, ptr noundef nonnull @hb_free) #5
  br label %"_ZN16hb_scope_guard_tIZ23hb_blob_decompress_gzipP9hb_blob_tjE3$_0ED2Ev.exit"

.thread80:                                        ; preds = %bb.h, %bb.g, %bb.j, %bb.e, %bb.k
  %.093 = phi ptr [ %i.ab, %bb.k ], [ %i.v, %bb.h ], [ %i.v, %bb.g ], [ %i.ab, %bb.j ], [ %i.v, %bb.e ]
  call void @hb_free(ptr noundef %.093) #5
  br label %"_ZN16hb_scope_guard_tIZ23hb_blob_decompress_gzipP9hb_blob_tjE3$_0ED2Ev.exit"

"_ZN16hb_scope_guard_tIZ23hb_blob_decompress_gzipP9hb_blob_tjE3$_0ED2Ev.exit": ; preds = %.thread80, %bb.l, %bb.d
  %.6 = phi ptr [ null, %bb.d ], [ %i.ao, %bb.l ], [ null, %.thread80 ]
  %i.ap = call i32 @inflateEnd(ptr noundef nonnull %2) #5 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %"_ZN16hb_scope_guard_tIZ23hb_blob_decompress_gzipP9hb_blob_tjE3$_0ED2Ev.exit"
  %.7 = phi ptr [ %.6, %"_ZN16hb_scope_guard_tIZ23hb_blob_decompress_gzipP9hb_blob_tjE3$_0ED2Ev.exit" ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m
  %.8 = phi ptr [ %.7, %bb.m ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %.8
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @hb_blob_get_data(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @inflateInit2_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @hb_malloc(i64 noundef) local_unnamed_addr #2

declare ptr @hb_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @hb_blob_create_or_fail(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @hb_free(ptr noundef) #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!5, !5, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"p1 omnipotent char", !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!"p1 _ZTS14internal_state", !9, i64 0}
!13 = !{!"_ZTS10z_stream_s", !10, i64 0, !5, i64 8, !11, i64 16, !10, i64 24, !5, i64 32, !11, i64 40, !10, i64 48, !12, i64 56, !9, i64 64, !9, i64 72, !9, i64 80, !5, i64 88, !11, i64 96, !11, i64 104}
!14 = !{!13, !10, i64 0}
!15 = !{!13, !5, i64 8}
!16 = !{!13, !11, i64 40}
!17 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!18 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!19 = !{!13, !10, i64 24}
!20 = !{!13, !5, i64 32}
end_hunk_0
