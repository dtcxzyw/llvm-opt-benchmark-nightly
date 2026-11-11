Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/compress_zlib?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.pmix_compress_base_module_1_0_0_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_compress_base_t = type { i64, i8, i8 }
%struct.pmix_mca_base_framework_t = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.pmix_list_t, %struct.pmix_list_t }
%struct.pmix_list_t = type { %struct.pmix_object_t, %struct.pmix_list_item_t, i64 }
%struct.pmix_object_t = type { %union.pthread_mutex_t, ptr, i32, %struct.pmix_tma }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.pmix_tma = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pmix_list_item_t = type { %struct.pmix_object_t, ptr, ptr, i32 }
%struct.pmix_output_desc_t = type { i8, i8, i32, i8, i32, ptr, ptr, i32, ptr, i32, i8, i8, i8, i8, ptr, i32, i32 }
%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@pmix_pcompress_zlib_module = local_unnamed_addr global %struct.pmix_compress_base_module_1_0_0_t { ptr null, ptr null, ptr @zlib_compress, ptr @zlib_decompress, ptr null, ptr @compress_string, ptr @decompress_string, ptr null }, align 8
@pmix_compress_base = external local_unnamed_addr global %struct.pmix_compress_base_t, align 8
@.str = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@pmix_pcompress_base_framework = external local_unnamed_addr global %struct.pmix_mca_base_framework_t, align 8
@pmix_output_info = external local_unnamed_addr global [0 x %struct.pmix_output_desc_t], align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"COMPRESS INPUT BLOCK OF LEN %lu OUTPUT SIZE %lu\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"DECOMPRESSING INPUT OF LEN %lu OUTPUT %u\00", align 1

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @zlib_compress(ptr noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) #0 {
bb.a:
  %4 = alloca %struct.z_stream_s, align 8         ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr null, ptr %2, align 8, !tbaa !10
  store i64 0, ptr %3, align 8, !tbaa !12
  %i.a = load i64, ptr @pmix_compress_base, align 8, !tbaa !33
  %i.b = icmp ult i64 %1, %i.a
  %i.c = icmp ugt i64 %1, 4294967294
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc nuw i64 %1 to i32                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %i.e = call i32 @deflateInit_(ptr noundef nonnull %4, i32 noundef 9, ptr noundef nonnull @.str, i32 noundef 112) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.f = call i64 @deflateBound(ptr noundef nonnull %4, i64 noundef %1) #8 ; 3 uses
  %i.g = call noalias ptr @malloc(i64 noundef %i.f) #9 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = call i32 @deflateEnd(ptr noundef nonnull %4) #8 ; 0 uses
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  store ptr %0, ptr %4, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.d, ptr %i.j, align 8, !tbaa !17
  %i.k = trunc i64 %i.f to i32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 %i.k, ptr %i.l, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.g, ptr %i.m, align 8, !tbaa !19
  %i.n = call i32 @deflate(ptr noundef nonnull %4, i32 noundef 4) #8
  %i.o = call i32 @deflateEnd(ptr noundef nonnull %4) #8 ; 0 uses
  %.not40 = icmp eq i32 %i.n, 1
  br i1 %.not40, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @free(ptr noundef nonnull %i.g) #8
  br label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.l, align 8, !tbaa !18
  %i.q = zext i32 %i.p to i64
  %i.r = sub i64 %i.f, %i.q                       ; 3 uses
  %i.s = add i64 %i.r, 4                          ; 3 uses
  %.not41 = icmp ult i64 %i.s, %1
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.g) #8
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.t = call noalias ptr @malloc(i64 noundef %i.s) #9 ; 4 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef nonnull %i.g) #8
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  store ptr %i.t, ptr %2, align 8, !tbaa !10
  store i64 %i.s, ptr %3, align 8, !tbaa !12
  store i32 %i.d, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.v, ptr nonnull align 1 %i.g, i64 %i.r, i1 false)
  call void @free(ptr noundef nonnull %i.g) #8
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pcompress_base_framework, i64 76), align 4, !tbaa !29 ; 3 uses
  %or.cond3 = icmp ult i32 %i.w, 64
  br i1 %or.cond3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !31
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (i32, ptr, ...) @pmix_output(i32 noundef %i.w, ptr noundef nonnull @.str.1, i64 noundef %1, i64 noundef %i.r) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m, %bb.b, %bb.a, %bb.j, %bb.h, %bb.f, %bb.d
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.h ], [ false, %bb.j ], [ true, %bb.m ], [ true, %bb.l ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @zlib_decompress(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr noundef %2, i64 noundef %3) #0 {
bb.a:
  %4 = alloca %struct.z_stream_s, align 8         ; 11 uses
  store i64 0, ptr %1, align 8, !tbaa !12
  %.0.copyload = load i32, ptr %2, align 1        ; 3 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @pmix_pcompress_base_framework, i64 76), align 4, !tbaa !29 ; 3 uses
  %or.cond = icmp ult i32 %i.a, 64
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  %i.c = getelementptr inbounds nuw [72 x i8], ptr @pmix_output_info, i64 %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %i.f = icmp sgt i32 %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, ...) @pmix_output(i32 noundef %i.a, ptr noundef nonnull @.str.2, i64 noundef %3, i32 noundef %.0.copyload) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 4
  %5 = zext i32 %.0.copyload to i64               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  store ptr null, ptr %0, align 8, !tbaa !10
  %calloc.i = tail call ptr @calloc(i64 1, i64 range(i64 0, 4294967296) %5) ; 4 uses
  %6 = icmp eq ptr %calloc.i, null
  br i1 %6, label %doit.exit.thread, label %7

7:                                                ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %4, i8 0, i64 112, i1 false)
  %8 = call i32 @inflateInit_(ptr noundef nonnull %4, ptr noundef nonnull @.str, i32 noundef 112) #8
  %.not.i = icmp eq i32 %8, 0
  br i1 %.not.i, label %9, label %doit.exit.thread.sink.split

9:                                                ; preds = %7
  %10 = trunc i64 %3 to i32
  %11 = add i32 %10, -4
  %12 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %11, ptr %12, align 8, !tbaa !17
  store ptr %i.g, ptr %4, align 8, !tbaa !16
  %13 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %.0.copyload, ptr %13, align 8, !tbaa !18
  %14 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %calloc.i, ptr %14, align 8, !tbaa !19
  %15 = call i32 @inflate(ptr noundef nonnull %4, i32 noundef 4) #8
  %16 = call i32 @inflateEnd(ptr noundef nonnull %4) #8 ; 0 uses
  %17 = icmp eq i32 %15, 1
  br i1 %17, label %bb.e, label %doit.exit.thread.sink.split

doit.exit.thread.sink.split:                      ; preds = %9, %7
  call void @free(ptr noundef nonnull %calloc.i) #8
  br label %doit.exit.thread

doit.exit.thread:                                 ; preds = %doit.exit.thread.sink.split, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %bb.f

bb.e:                                             ; preds = %9
  store ptr %calloc.i, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  store i64 %5, ptr %1, align 8, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %doit.exit.thread, %bb.e
  %.0.i16 = phi i1 [ false, %doit.exit.thread ], [ true, %bb.e ]
  ret i1 %.0.i16
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @compress_string(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) #0 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %i.b = and i64 %i.a, 4294967295
  %i.c = tail call zeroext i1 @zlib_compress(ptr noundef nonnull %0, i64 noundef %i.b, ptr noundef %1, ptr noundef %2)
  ret i1 %i.c
}

; Function Attrs: nounwind uwtable
define internal noundef zeroext i1 @decompress_string(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %3 = alloca %struct.z_stream_s, align 8         ; 11 uses
  %.0.copyload = load i32, ptr %1, align 1        ; 3 uses
  %i.a = icmp eq i32 %.0.copyload, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.b = add nuw i32 %.0.copyload, 1              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %4 = zext i32 %i.b to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store ptr null, ptr %0, align 8, !tbaa !10
  %calloc.i = tail call ptr @calloc(i64 1, i64 range(i64 0, 4294967296) %4) ; 5 uses
  %5 = icmp eq ptr %calloc.i, null
  br i1 %5, label %bb.e, label %6

6:                                                ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %3, i8 0, i64 112, i1 false)
  %7 = call i32 @inflateInit_(ptr noundef nonnull %3, ptr noundef nonnull @.str, i32 noundef 112) #8
  %.not.i = icmp eq i32 %7, 0
  br i1 %.not.i, label %8, label %.sink.split

8:                                                ; preds = %6
  %9 = trunc i64 %2 to i32
  %10 = add i32 %9, -4
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %10, ptr %11, align 8, !tbaa !17
  store ptr %i.c, ptr %3, align 8, !tbaa !16
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.b, ptr %12, align 8, !tbaa !18
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %calloc.i, ptr %13, align 8, !tbaa !19
  %14 = call i32 @inflate(ptr noundef nonnull %3, i32 noundef 4) #8
  %15 = call i32 @inflateEnd(ptr noundef nonnull %3) #8 ; 0 uses
  %16 = icmp eq i32 %14, 1
  br i1 %16, label %bb.d, label %.sink.split

bb.d:                                             ; preds = %8
  store ptr %calloc.i, ptr %0, align 8, !tbaa !10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.d = zext i32 %.0.copyload to i64
  %i.e = getelementptr inbounds nuw i8, ptr %calloc.i, i64 %i.d
  store i8 0, ptr %i.e, align 1, !tbaa !34
  br label %bb.f

.sink.split:                                      ; preds = %8, %6
  call void @free(ptr noundef nonnull %calloc.i) #8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  store ptr null, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ true, %bb.d ], [ false, %bb.e ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @deflateBound(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #3

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @pmix_output(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(read) }

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
!9 = !{!"p1 omnipotent char", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"long", !4, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_Bool", !4, i64 0}
!14 = !{!"p1 _ZTS14internal_state", !8, i64 0}
!15 = !{!"z_stream_s", !9, i64 0, !5, i64 8, !11, i64 16, !9, i64 24, !5, i64 32, !11, i64 40, !9, i64 48, !14, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !5, i64 88, !11, i64 96, !11, i64 104}
!16 = !{!15, !9, i64 0}
!17 = !{!15, !5, i64 8}
!18 = !{!15, !5, i64 32}
!19 = !{!15, !9, i64 24}
!20 = !{!"any p2 pointer", !8, i64 0}
!21 = !{!"p2 _ZTS31pmix_mca_base_component_2_1_0_t", !20, i64 0}
!22 = !{!"p1 _ZTS12pmix_class_t", !8, i64 0}
!23 = !{!"pmix_tma", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !20, i64 56}
!24 = !{!"pmix_object_t", !4, i64 0, !22, i64 40, !5, i64 48, !23, i64 56}
!25 = !{!"p1 _ZTS16pmix_list_item_t", !8, i64 0}
!26 = !{!"pmix_list_item_t", !24, i64 0, !25, i64 120, !25, i64 128, !5, i64 136}
!27 = !{!"pmix_list_t", !24, i64 0, !26, i64 120, !11, i64 264}
!28 = !{!"pmix_mca_base_framework_t", !9, i64 0, !9, i64 8, !9, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !5, i64 48, !5, i64 52, !21, i64 56, !9, i64 64, !5, i64 72, !5, i64 76, !27, i64 80, !27, i64 352}
!29 = !{!28, !5, i64 76}
!30 = !{!"", !13, i64 0, !13, i64 1, !5, i64 4, !13, i64 8, !5, i64 12, !9, i64 16, !9, i64 24, !5, i64 32, !9, i64 40, !5, i64 48, !13, i64 52, !13, i64 53, !13, i64 54, !13, i64 55, !9, i64 56, !5, i64 64, !5, i64 68}
!31 = !{!30, !5, i64 4}
!32 = !{!"", !11, i64 0, !13, i64 8, !13, i64 9}
!33 = !{!32, !11, i64 0}
!34 = !{!4, !4, i64 0}
end_hunk_0
