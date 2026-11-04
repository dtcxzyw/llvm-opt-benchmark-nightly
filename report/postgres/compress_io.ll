Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/compress_io?download=true
inline.NumInlined: 9
inline.NumDeleted: 2
begin_hunk_0

%struct.pg_compress_specification = type { i32, i32, i32, i32, i8, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"this build does not support compression with %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"gz\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"lz4\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"zst\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @supports_compression(ptr nofree noundef readonly byval(%struct.pg_compress_specification) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8                ; 2 uses
  %narrow = icmp ult i32 %i.a, 2
  br i1 %narrow, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @get_compress_algorithm_name(i32 noundef %i.a) #8
  %i.c = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str, ptr noundef %i.b) #8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @psprintf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @get_compress_algorithm_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @AllocateCompressor(ptr nofree noundef readonly byval(%struct.pg_compress_specification) align 8 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pg_malloc0(i64 noundef 80) #8 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %i.c, align 8
  %i.d = load i32, ptr %0, align 8
  switch i32 %i.d, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @InitCompressorNone(ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @InitCompressorGzip(ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @InitCompressorLZ4(ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @InitCompressorZstd(ptr noundef nonnull %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.b
  ret ptr %i.a
}

declare ptr @pg_malloc0(i64 noundef) local_unnamed_addr #2

declare void @InitCompressorNone(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

declare void @InitCompressorGzip(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

declare void @InitCompressorLZ4(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

declare void @InitCompressorZstd(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @EndCompressor(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef %0, ptr noundef %1) #8
  tail call void @pg_free(ptr noundef %1) #8
  ret void
}

declare void @pg_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @InitCompressFileHandle(ptr nofree noundef readonly byval(%struct.pg_compress_specification) align 8 captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @pg_malloc0(i64 noundef 112) #8 ; 5 uses
  %i.b = load i32, ptr %0, align 8
  switch i32 %i.b, label %bb.f [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @InitCompressFileHandleNone(ptr noundef %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @InitCompressFileHandleGzip(ptr noundef %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  tail call void @InitCompressFileHandleLZ4(ptr noundef %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @InitCompressFileHandleZstd(ptr noundef %i.a, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %0) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.c, %bb.e, %bb.d, %bb.b
  ret ptr %i.a
}

declare void @InitCompressFileHandleNone(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

declare void @InitCompressFileHandleGzip(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

declare void @InitCompressFileHandleLZ4(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

declare void @InitCompressFileHandleZstd(ptr noundef, ptr noundef byval(%struct.pg_compress_specification) align 8) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @InitDiscoverCompressFileHandle(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.pg_compress_specification, align 8 ; 16 uses
  %3 = alloca %struct.stat, align 8               ; 3 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = tail call ptr @pg_strdup(ptr noundef %0) #8 ; 6 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #9 ; 4 uses
  %i.d = trunc i64 %i.c to i32                    ; 2 uses
  %i.e = icmp slt i32 %i.d, 3
  br i1 %i.e, label %hasSuffix.exit21.thread, label %hasSuffix.exit

hasSuffix.exit:                                   ; preds = %bb.a
  %i.f = shl i64 %i.c, 32
  %sext.i = add nsw i64 %i.f, -12884901888
  %i.g = ashr exact i64 %sext.i, 32
  %i.h = getelementptr inbounds i8, ptr %i.b, i64 %i.g ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = xor i16 %i.i, 26414
  %i.k = getelementptr i8, ptr %i.h, i64 2
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i16
  %i.n = xor i16 %i.m, 122
  %i.o = or i16 %i.j, %i.n
  %i.p = icmp ne i16 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.f, label %hasSuffix.exit.thread

hasSuffix.exit.thread:                            ; preds = %hasSuffix.exit
  %i.r = icmp eq i32 %i.d, 3
  br i1 %i.r, label %hasSuffix.exit21.thread, label %hasSuffix.exit16

hasSuffix.exit16:                                 ; preds = %hasSuffix.exit.thread
  %i.s = shl i64 %i.c, 32
  %sext.i12 = add nsw i64 %i.s, -17179869184
  %i.t = ashr exact i64 %sext.i12, 32
  %i.u = getelementptr inbounds i8, ptr %i.b, i64 %i.t
  %i.v = load i32, ptr %i.u, align 1
  %i.w = icmp ne i32 %i.v, 880438318
  %i.x = zext i1 %i.w to i32
  %.not38 = icmp eq i32 %i.x, 0
  br i1 %.not38, label %bb.g, label %hasSuffix.exit21

hasSuffix.exit21:                                 ; preds = %hasSuffix.exit16
  %i.y = shl i64 %i.c, 32
  %sext.i17 = add nsw i64 %i.y, -17179869184
  %i.z = ashr exact i64 %sext.i17, 32
  %i.aa = getelementptr inbounds i8, ptr %i.b, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 1
  %i.ac = icmp ne i32 %i.ab, 1953724974
  %i.ad = zext i1 %i.ac to i32
  %.not39 = icmp eq i32 %i.ad, 0
  br i1 %.not39, label %bb.h, label %hasSuffix.exit21.thread

hasSuffix.exit21.thread:                          ; preds = %bb.a, %hasSuffix.exit.thread, %hasSuffix.exit21
  %i.ae = call i32 @stat(ptr noundef %0, ptr noundef nonnull %3) #8
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.b

bb.b:                                             ; preds = %hasSuffix.exit21.thread
  %i.ag = tail call ptr @__errno_location() #10   ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  tail call void @free(ptr noundef nonnull %i.b) #8
  store i32 %i.ah, ptr %i.ag, align 4
  %i.ai = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef nonnull @.str.4) #8 ; 2 uses
  store ptr %i.ai, ptr %i.a, align 8
  %i.aj = tail call i32 @access(ptr noundef %i.ai, i32 noundef 0) #8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = call fastcc zeroext i1 @check_compressed_file(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @.str.5)
  br i1 %4, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.al = call fastcc zeroext i1 @check_compressed_file(ptr noundef %0, ptr noundef %i.a, ptr noundef nonnull @.str.6)
  br i1 %i.al, label %bb.h, label %bb.e

bb.e:                                             ; preds = %hasSuffix.exit21.thread, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.am = tail call ptr @pg_malloc0(i64 noundef 112) #8 ; 2 uses
  tail call void @InitCompressFileHandleNone(ptr noundef %i.am, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %2) #8
  br label %InitCompressFileHandle.exit

bb.f:                                             ; preds = %hasSuffix.exit, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 1, ptr %2, align 8
  %.sroa.12.0..sroa_idx33 = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.0..sroa_idx33, i8 0, i64 28, i1 false)
  %i.an = tail call ptr @pg_malloc0(i64 noundef 112) #8 ; 2 uses
  tail call void @InitCompressFileHandleGzip(ptr noundef %i.an, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %2) #8
  br label %InitCompressFileHandle.exit

bb.g:                                             ; preds = %bb.c, %hasSuffix.exit16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 2, ptr %2, align 8
  %.sroa.12.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.0..sroa_idx37, i8 0, i64 28, i1 false)
  %i.ao = tail call ptr @pg_malloc0(i64 noundef 112) #8 ; 2 uses
  tail call void @InitCompressFileHandleLZ4(ptr noundef %i.ao, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %2) #8
  br label %InitCompressFileHandle.exit

bb.h:                                             ; preds = %bb.d, %hasSuffix.exit21
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i32 3, ptr %2, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.12.0..sroa_idx, i8 0, i64 28, i1 false)
  %i.ap = tail call ptr @pg_malloc0(i64 noundef 112) #8 ; 2 uses
  tail call void @InitCompressFileHandleZstd(ptr noundef %i.ap, ptr noundef nonnull byval(%struct.pg_compress_specification) align 8 %2) #8
  br label %InitCompressFileHandle.exit

InitCompressFileHandle.exit:                      ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ %i.am, %bb.e ], [ %i.an, %bb.f ], [ %i.ao, %bb.g ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ar = tail call ptr @__errno_location() #10   ; 4 uses
  store i32 0, ptr %i.ar, align 4
  %i.as = load ptr, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.au = tail call zeroext i1 %i.as(ptr noundef %i.at, i32 noundef -1, ptr noundef %1, ptr noundef nonnull %i.aq) #8
  %.pre = load i32, ptr %i.ar, align 4            ; 2 uses
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %InitCompressFileHandle.exit
  tail call void @free(ptr noundef nonnull %i.aq) #8
  store i32 %.pre, ptr %i.ar, align 4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %InitCompressFileHandle.exit
  %.0 = phi ptr [ %i.aq, %InitCompressFileHandle.exit ], [ null, %bb.i ]
  tail call void @free(ptr noundef %i.at) #8
  store i32 %.pre, ptr %i.ar, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare ptr @pg_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @check_compressed_file(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = tail call ptr @__errno_location() #10    ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  tail call void @free(ptr noundef %i.a) #8
  store i32 %i.c, ptr %i.b, align 4
  %i.d = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.7, ptr noundef %0, ptr noundef %2) #8 ; 2 uses
  store ptr %i.d, ptr %1, align 8
  %i.e = tail call i32 @access(ptr noundef %i.d, i32 noundef 0) #8
  %i.f = icmp eq i32 %i.e, 0
  ret i1 %i.f
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @EndCompressFileHandle(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @__errno_location() #10    ; 3 uses
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call zeroext i1 %i.e(ptr noundef nonnull %0) #8
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pre, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  tail call void @free(ptr noundef nonnull %0) #8
  store i32 %i.g, ptr %i.a, align 4
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
end_hunk_0
